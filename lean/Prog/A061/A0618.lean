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
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B006.C002
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
# A061800: a(n) = n + (-1)^(n mod 3).

The programs for A061800, the canonical program `A061800.P13743700244837910247` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061800 has offset 0).

The definition of A061800 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061800.P13997299194919300976

`n+(-1)^(n%3)`
-/

namespace A061800.P13997299194919300976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (-1) ^ (n % 3)

end

end A061800.P13997299194919300976

namespace A061800

/-- `n+(-1)^(n%3)` -/
def P13997299194919300976.Spec : Prop :=
  ∀ n, P13997299194919300976.a n = A061800 n

end A061800

/-! ## A061800.P16682676046181615482

`n+2-gcd(n+2, 3)`
-/

namespace A061800.P16682676046181615482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.gcd (n + 2) 3 : ℤ)

end

end A061800.P16682676046181615482

namespace A061800

/-- `n+2-gcd(n+2, 3)` -/
def P16682676046181615482.Spec : Prop :=
  ∀ n, P16682676046181615482.a n = A061800 n

end A061800

/-! ## A061800.P13743700244837910247

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061800

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P13743700244837910247.Spec : Prop :=
  ∀ n, P13743700244837910247.a n = A061800 n

theorem P13743700244837910247.correct : P13743700244837910247.Spec := by
  intro n
  simp only [A061800]

end A061800

/-! ## A061800.P9099389455000915490

`(3*n+1-4*cos(2*(n+2)*π/3))/3`
-/

namespace A061800.P9099389455000915490
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 * n + 1 : ℝ) - 4 * Real.cos ((2 * (n + 2) : ℝ) * Real.pi / 3)) / 3

end

end A061800.P9099389455000915490

namespace A061800

/-- `(3*n+1-4*cos(2*(n+2)*π/3))/3` -/
def P9099389455000915490.Spec : Prop :=
  ∀ n, P9099389455000915490.a n = (A061800 n : ℝ)

end A061800

/-! ## A061800.P16559615459436031697

`(-1)^(n%3)+n`
-/

namespace A061800.P16559615459436031697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3) + (n : ℤ)

end

end A061800.P16559615459436031697

namespace A061800

/-- `(-1)^(n%3)+n` -/
def P16559615459436031697.Spec : Prop :=
  ∀ n, P16559615459436031697.a n = A061800 n

end A061800

/-! ## A061800.P9988205141432768060

`gcd(3, ∑[n])-2+n`
-/

namespace A061800.P9988205141432768060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 2 + (n : ℤ)

end

end A061800.P9988205141432768060

namespace A061800

/-- `gcd(3, ∑[n])-2+n` -/
def P9988205141432768060.Spec : Prop :=
  ∀ n, P9988205141432768060.a n = A061800 n

end A061800

/-! ## A061800.P11903733549468092552

`a(n-3)+3` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A061800.P11903733549468092552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  a (n - 3) + 3

end

end A061800.P11903733549468092552

namespace A061800

/-- `a(n-3)+3` -/
def P11903733549468092552.Spec : Prop :=
  ∀ n, (P11903733549468092552.a n : ℤ) = A061800 n

end A061800

/-! ## A061800.P17998652425525241199

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=-1, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A061800.P17998652425525241199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061800.P17998652425525241199

namespace A061800

/-- `∑[floor(a(n-3))]` -/
def P17998652425525241199.Spec : Prop :=
  ∀ n, P17998652425525241199.a n = A061800 n

end A061800

/-! ## A061800.P8195776623794801348

`∑[3-2*(n+1)%3]`
-/

namespace A061800.P8195776623794801348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((2 * ((n + 1) % 3) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061800.P8195776623794801348

namespace A061800

/-- `∑[3-2*(n+1)%3]` -/
def P8195776623794801348.Spec : Prop :=
  ∀ n, P8195776623794801348.a n = A061800 n

end A061800

/-! ## A061800.P6548049503963583291

`(∑[n]+2)%3-1+n`
-/

namespace A061800.P6548049503963583291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j + 2) % 3 : ℕ) : ℤ) - 1 + (n : ℤ)

end

end A061800.P6548049503963583291

namespace A061800

/-- `(∑[n]+2)%3-1+n` -/
def P6548049503963583291.Spec : Prop :=
  ∀ n, P6548049503963583291.a n = A061800 n

end A061800

/-! ## A061800.P10317455279179980756

`1-(∑[2*n]%3-n)`
-/

namespace A061800.P10317455279179980756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ) - (n : ℤ))

end

end A061800.P10317455279179980756

namespace A061800

/-- `1-(∑[2*n]%3-n)` -/
def P10317455279179980756.Spec : Prop :=
  ∀ n, P10317455279179980756.a n = A061800 n

end A061800

/-! ## A061800.P3223921046075057042

`1-(n²+n)%3+n`
-/

namespace A061800.P3223921046075057042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((n ^ 2 + n) % 3 : ℕ) : ℤ) + (n : ℤ)

end

end A061800.P3223921046075057042

namespace A061800

/-- `1-(n²+n)%3+n` -/
def P3223921046075057042.Spec : Prop :=
  ∀ n, P3223921046075057042.a n = A061800 n

end A061800

/-! ## A061800.P8838591453016111887

`(-1)^floor(4*n/3)+n`
-/

namespace A061800.P8838591453016111887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊4 * ((n : ℚ) / 3)⌋ : ℤ) + (n : ℚ)

end

end A061800.P8838591453016111887

namespace A061800

/-- `(-1)^floor(4*n/3)+n` -/
def P8838591453016111887.Spec : Prop :=
  ∀ n, P8838591453016111887.a n = (A061800 n : ℚ)

end A061800

/-! ## A061800.P11115712247820330362

`∑[∑[ogf((1-x+3x^2)/(1+x+x^2))]]`
-/

namespace A061800.P11115712247820330362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 3] [1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061800.P11115712247820330362

namespace A061800

/-- `∑[∑[ogf((1-x+3x^2)/(1+x+x^2))]]` -/
def P11115712247820330362.Spec : Prop :=
  ∀ n, P11115712247820330362.a n = A061800 n

end A061800

/-! ## A061800.P5466757270190905422

`ogf((1-x+3x^2)/(1-x-x^3+x^4))`
-/

namespace A061800.P5466757270190905422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 3] [1, -1, 0, -1, 1] n

end

end A061800.P5466757270190905422

namespace A061800

/-- `ogf((1-x+3x^2)/(1-x-x^3+x^4))` -/
def P5466757270190905422.Spec : Prop :=
  ∀ n, P5466757270190905422.a n = A061800 n

end A061800

/-! ## A061800.P5488592102839283520

`abs(n+1-(n*(n+1))%3)`
-/

namespace A061800.P5488592102839283520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - ((n * (n + 1) % 3 : ℕ) : ℤ)|

end

end A061800.P5488592102839283520

namespace A061800

/-- `abs(n+1-(n*(n+1))%3)` -/
def P5488592102839283520.Spec : Prop :=
  ∀ n, P5488592102839283520.a n = A061800 n

end A061800

/-! ## A061800.P9607665633778801403

`∑[(1/a(n-3))^(-1)]` with `a(0)=1, a(1)=-1, a(2)=3`
-/

namespace A061800.P9607665633778801403
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, -1, 3] fun n f1 =>
  (1 / f1 (n - 3)) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061800.P9607665633778801403

namespace A061800

/-- `∑[(1/a(n-3))^(-1)]` -/
def P9607665633778801403.Spec : Prop :=
  ∀ n, P9607665633778801403.a n = (A061800 n : ℚ)

end A061800

/-! ## A061800.P14829939846277730434

`∑[(a(n-3)^(-1))^(-1)]` with `a(0)=1, a(1)=-1, a(2)=3`
-/

namespace A061800.P14829939846277730434
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, -1, 3] fun n f1 =>
  (f1 (n - 3) ^ (-1 : ℤ)) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061800.P14829939846277730434

namespace A061800

/-- `∑[(a(n-3)^(-1))^(-1)]` -/
def P14829939846277730434.Spec : Prop :=
  ∀ n, P14829939846277730434.a n = (A061800 n : ℚ)

end A061800

/-! ## A061800.P15325526708550025512

`∑[ceil((a(n-1)-2)/a(n-1))]` with `a(0)=1`
-/

namespace A061800.P15325526708550025512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌈(f1 (n - 1) - 2 : ℚ) / (f1 (n - 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061800.P15325526708550025512

namespace A061800

/-- `∑[ceil((a(n-1)-2)/a(n-1))]` -/
def P15325526708550025512.Spec : Prop :=
  ∀ n, P15325526708550025512.a n = A061800 n

end A061800

/-!
# A061801: a(n) = (7*6^n - 2)/5.

The programs for A061801, the canonical program `A061801.P15507146405222681766` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061801 has offset 0).

The definition of A061801 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*6^n-2)/5` (program `A061801.P2879133286729520262`, by `A061801.P2879133286729520262.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061801.P15507146405222681766

`6*a(n-1)+2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061801

/-- `6*a(n-1)+2` -/
def P15507146405222681766.Spec : Prop :=
  ∀ n, (P15507146405222681766.a n : ℤ) = A061801 n

theorem P15507146405222681766.correct : P15507146405222681766.Spec := by
  intro n
  simp only [A061801]

end A061801

/-! ## A061801.P2879133286729520262

`(7*6^n-2)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A061801.P2879133286729520262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 6 ^ n : ℤ) - 2 : ℚ) / 5

end

end A061801.P2879133286729520262

namespace A061801

/-- `(7*6^n-2)/5` -/
def P2879133286729520262.Spec : Prop :=
  ∀ n, P2879133286729520262.a n = (A061801 n : ℚ)

theorem P2879133286729520262.correct : P2879133286729520262.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A061801, Nat.add_sub_cancel, A061801.P2879133286729520262.a, A061801.P15507146405222681766.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A061801, Nat.add_sub_cancel, A061801.P2879133286729520262.a, A061801.P15507146405222681766.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A061801

/-! ## A061801.P11116967194155049818

`ogf((1+x)/(1-7x+6x^2))`
-/

namespace A061801.P11116967194155049818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -7, 6] n

end

end A061801.P11116967194155049818

namespace A061801

/-- `ogf((1+x)/(1-7x+6x^2))` -/
def P11116967194155049818.Spec : Prop :=
  ∀ n, P11116967194155049818.a n = A061801 n

end A061801

/-! ## A061801.P16746477510586852012

`∑[6*a(n-1)]` with `a(0)=1, a(1)=7`
-/

namespace A061801.P16746477510586852012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061801.P16746477510586852012

namespace A061801

/-- `∑[6*a(n-1)]` -/
def P16746477510586852012.Spec : Prop :=
  ∀ n, (P16746477510586852012.a n : ℤ) = A061801 n

end A061801

/-! ## A061801.P17982365923643202979

`or(2, 6*a(n-1))` with `a(0)=1, a(1)=8`
-/

namespace A061801.P17982365923643202979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  Nat.lor 2 (6 * a (n - 1))

end

end A061801.P17982365923643202979

namespace A061801

/-- `or(2, 6*a(n-1))` -/
def P17982365923643202979.Spec : Prop :=
  ∀ n, (P17982365923643202979.a n : ℤ) = A061801 n

end A061801

/-! ## A061801.P18028251584127306371

`xor(2, 6*a(n-1))` with `a(0)=1, a(1)=8`
-/

namespace A061801.P18028251584127306371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  Nat.xor 2 (6 * a (n - 1))

end

end A061801.P18028251584127306371

namespace A061801

/-- `xor(2, 6*a(n-1))` -/
def P18028251584127306371.Spec : Prop :=
  ∀ n, (P18028251584127306371.a n : ℤ) = A061801 n

end A061801

/-! ## A061801.P16245506711553794770

`8-6*(1-a(n-1))` with `a(0)=1`
-/

namespace A061801.P16245506711553794770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 - 6 * (1 - a (n - 1))

end

end A061801.P16245506711553794770

namespace A061801

/-- `8-6*(1-a(n-1))` -/
def P16245506711553794770.Spec : Prop :=
  ∀ n, P16245506711553794770.a n = A061801 n

end A061801

/-! ## A061801.P11040257373196898427

`∑[A003949(n)]`
-/

namespace A061801.P11040257373196898427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061801.P11040257373196898427

namespace A061801

/-- `∑[A003949(n)]` -/
def P11040257373196898427.Spec : Prop :=
  ∀ n, P11040257373196898427.a n = A061801 n

end A061801

/-! ## A061801.P12705854966591228025

`2-A165758(n)`
-/

namespace A061801.P12705854966591228025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A165758 n

end

end A061801.P12705854966591228025

namespace A061801

/-- `2-A165758(n)` -/
def P12705854966591228025.Spec : Prop :=
  ∀ n, P12705854966591228025.a n = A061801 n

end A061801

/-! ## A061801.P6902099162145576835

`7*A003464(n)+1`
-/

namespace A061801.P6902099162145576835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A003464 n + 1

end

end A061801.P6902099162145576835

namespace A061801

/-- `7*A003464(n)+1` -/
def P6902099162145576835.Spec : Prop :=
  ∀ n, P6902099162145576835.a n = A061801 n

end A061801

/-! ## A061801.P5248638766655407261

`7*A329114(2*n+1)+1`
-/

namespace A061801.P5248638766655407261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A329114 (2 * n + 1) + 1

end

end A061801.P5248638766655407261

namespace A061801

/-- `7*A329114(2*n+1)+1` -/
def P5248638766655407261.Spec : Prop :=
  ∀ n, P5248638766655407261.a n = A061801 n

end A061801

/-! ## A061801.P16013637184625507318

`∑[round(6^(n-1))]+∑[A000400(n)]`
-/

namespace A061801.P16013637184625507318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((6 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A061801.P16013637184625507318

namespace A061801

/-- `∑[round(6^(n-1))]+∑[A000400(n)]` -/
def P16013637184625507318.Spec : Prop :=
  ∀ n, P16013637184625507318.a n = A061801 n

end A061801

/-! ## A061801.P10887368271324969573

`A003464(n+1)+A003464(n)`
-/

namespace A061801.P10887368271324969573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 (n + 1) + A003464 n

end

end A061801.P10887368271324969573

namespace A061801

/-- `A003464(n+1)+A003464(n)` -/
def P10887368271324969573.Spec : Prop :=
  ∀ n, P10887368271324969573.a n = A061801 n

end A061801

/-! ## A061801.P4274432285538842321

`∑[∑[A084215(n)*A141495(n)]]`
-/

namespace A061801.P4274432285538842321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 n * A141495 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061801.P4274432285538842321

namespace A061801

/-- `∑[∑[A084215(n)*A141495(n)]]` -/
def P4274432285538842321.Spec : Prop :=
  ∀ n, P4274432285538842321.a n = A061801 n

end A061801

/-! ## A061801.P1479519532617741881

`∑[2*A000400(n)]-A000400(n)`
-/

namespace A061801.P1479519532617741881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000400 n

end

end A061801.P1479519532617741881

namespace A061801

/-- `∑[2*A000400(n)]-A000400(n)` -/
def P1479519532617741881.Spec : Prop :=
  ∀ n, P1479519532617741881.a n = A061801 n

end A061801

/-! ## A061801.P14686399178852666691

`∑[A000400(n)]+A024062(n)/5`
-/

namespace A061801.P14686399178852666691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (A024062 n : ℚ) / 5

end

end A061801.P14686399178852666691

namespace A061801

/-- `∑[A000400(n)]+A024062(n)/5` -/
def P14686399178852666691.Spec : Prop :=
  ∀ n, P14686399178852666691.a n = (A061801 n : ℚ)

end A061801

/-! ## A061801.P13450082411385127618

`A047851(n+1)+A047851(n)-2`
-/

namespace A061801.P13450082411385127618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047851 (n + 1) + (A047851 n - 2)

end

end A061801.P13450082411385127618

namespace A061801

/-- `A047851(n+1)+A047851(n)-2` -/
def P13450082411385127618.Spec : Prop :=
  ∀ n, P13450082411385127618.a n = A061801 n

end A061801

/-! ## A061801.P7795270567075511252

`A026549(2*n+1)-∑[A081341(n)]`
-/

namespace A061801.P7795270567075511252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061801.P7795270567075511252

namespace A061801

/-- `A026549(2*n+1)-∑[A081341(n)]` -/
def P7795270567075511252.Spec : Prop :=
  ∀ n, P7795270567075511252.a n = A061801 n

end A061801

/-! ## A061801.P15608486779245709074

`A329115(2*(n+1))+A026549(2*n)`
-/

namespace A061801.P15608486779245709074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329115 (2 * (n + 1)) + A026549 (2 * n)

end

end A061801.P15608486779245709074

namespace A061801

/-- `A329115(2*(n+1))+A026549(2*n)` -/
def P15608486779245709074.Spec : Prop :=
  ∀ n, P15608486779245709074.a n = A061801 n

end A061801

/-!
# A061802: Sum of n-th row of triangle of primes: 2; 2 3 2; 2 3 5 3 2; 2 3 5 7 5 3 2; ...; where n-th row contains 2n+1 terms.

The programs for A061802, the canonical program `A061802.P6001650494483680040` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061802 has offset 0).

The definition of A061802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061802.P6001650494483680040

`∑[A011974(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A061802

/-- `∑[A011974(n+1)]` -/
def P6001650494483680040.Spec : Prop :=
  ∀ n, P6001650494483680040.a n = A061802 n

theorem P6001650494483680040.correct : P6001650494483680040.Spec := by
  intro n
  simp only [A061802]

end A061802

/-! ## A061802.P8996387282884515520

`A001043(n)+a(n-1)` with `a(0)=2`
-/

namespace A061802.P8996387282884515520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001043 n + a (n - 1)

end

end A061802.P8996387282884515520

namespace A061802

/-- `A001043(n)+a(n-1)` -/
def P8996387282884515520.Spec : Prop :=
  ∀ n, P8996387282884515520.a n = A061802 n

end A061802

/-! ## A061802.P8461062024749351715

`A007504(n+1)+A007504(n)`
-/

namespace A061802.P8461062024749351715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + A007504 n

end

end A061802.P8461062024749351715

namespace A061802

/-- `A007504(n+1)+A007504(n)` -/
def P8461062024749351715.Spec : Prop :=
  ∀ n, P8461062024749351715.a n = A061802 n

end A061802

/-! ## A061802.P1838897130072897660

`A110895(n+1)+A101301(n+1)`
-/

namespace A061802.P1838897130072897660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110895 (n + 1) + A101301 (n + 1)

end

end A061802.P1838897130072897660

namespace A061802

/-- `A110895(n+1)+A101301(n+1)` -/
def P1838897130072897660.Spec : Prop :=
  ∀ n, P1838897130072897660.a n = A061802 n

end A061802

/-! ## A061802.P6700570179662449190

`A237589(n+1)+A014284(n+1)`
-/

namespace A061802.P6700570179662449190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1) + A014284 (n + 1)

end

end A061802.P6700570179662449190

namespace A061802

/-- `A237589(n+1)+A014284(n+1)` -/
def P6700570179662449190.Spec : Prop :=
  ∀ n, P6700570179662449190.a n = A061802 n

end A061802

/-! ## A061802.P9787227586594177437

`A117495(n+1)-A240568(n+1)`
-/

namespace A061802.P9787227586594177437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117495 (n + 1) - A240568 (n + 1)

end

end A061802.P9787227586594177437

namespace A061802

/-- `A117495(n+1)-A240568(n+1)` -/
def P9787227586594177437.Spec : Prop :=
  ∀ n, P9787227586594177437.a n = A061802 n

end A061802

/-! ## A061802.P4293662632980027506

`A362419(n+1)-A000040(n+1)`
-/

namespace A061802.P4293662632980027506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362419 (n + 1) - A000040 (n + 1)

end

end A061802.P4293662632980027506

namespace A061802

/-- `A362419(n+1)-A000040(n+1)` -/
def P4293662632980027506.Spec : Prop :=
  ∀ n, P4293662632980027506.a n = A061802 n

end A061802

/-! ## A061802.P10114354301887171353

`A034960(n+1)/A000040(n+1)`
-/

namespace A061802.P10114354301887171353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034960 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A061802.P10114354301887171353

namespace A061802

/-- `A034960(n+1)/A000040(n+1)` -/
def P10114354301887171353.Spec : Prop :=
  ∀ n, P10114354301887171353.a n = (A061802 n : ℚ)

end A061802

/-! ## A061802.P7380981278648357255

`∑[A008578(n+1)+A006005(n+1)]`
-/

namespace A061802.P7380981278648357255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + A006005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061802.P7380981278648357255

namespace A061802

/-- `∑[A008578(n+1)+A006005(n+1)]` -/
def P7380981278648357255.Spec : Prop :=
  ∀ n, P7380981278648357255.a n = A061802 n

end A061802

/-! ## A061802.P16815797829214905920

`A040976(n+1)+∑[A001747(n+1)]`
-/

namespace A061802.P16815797829214905920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061802.P16815797829214905920

namespace A061802

/-- `A040976(n+1)+∑[A001747(n+1)]` -/
def P16815797829214905920.Spec : Prop :=
  ∀ n, P16815797829214905920.a n = A061802 n

end A061802

/-! ## A061802.P2283986171864297722

`∑[A182986(n+1)+A000040(n+1)]`
-/

namespace A061802.P2283986171864297722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061802.P2283986171864297722

namespace A061802

/-- `∑[A182986(n+1)+A000040(n+1)]` -/
def P2283986171864297722.Spec : Prop :=
  ∀ n, P2283986171864297722.a n = A061802 n

end A061802

/-! ## A061802.P4838593473782407417

`∑[A100484(n+1)]-A000040(n+1)`
-/

namespace A061802.P4838593473782407417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000040 (n + 1)

end

end A061802.P4838593473782407417

namespace A061802

/-- `∑[A100484(n+1)]-A000040(n+1)` -/
def P4838593473782407417.Spec : Prop :=
  ∀ n, P4838593473782407417.a n = A061802 n

end A061802

/-! ## A061802.P6448470167738997831

`A034959(n+1)/A000040(n+1)+1`
-/

namespace A061802.P6448470167738997831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034959 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ) + 1

end

end A061802.P6448470167738997831

namespace A061802

/-- `A034959(n+1)/A000040(n+1)+1` -/
def P6448470167738997831.Spec : Prop :=
  ∀ n, P6448470167738997831.a n = (A061802 n : ℚ)

end A061802

/-! ## A061802.P5704196907786422307

`n*A000040(n+1)-A240568(n+1)`
-/

namespace A061802.P5704196907786422307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000040 (n + 1) - A240568 (n + 1)

end

end A061802.P5704196907786422307

namespace A061802

/-- `n*A000040(n+1)-A240568(n+1)` -/
def P5704196907786422307.Spec : Prop :=
  ∀ n, P5704196907786422307.a n = A061802 n

end A061802

/-! ## A061802.P200952548997584318

`∑[A182986(n+1)+∑[A054541(n+1)]]`
-/

namespace A061802.P200952548997584318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061802.P200952548997584318

namespace A061802

/-- `∑[A182986(n+1)+∑[A054541(n+1)]]` -/
def P200952548997584318.Spec : Prop :=
  ∀ n, P200952548997584318.a n = A061802 n

end A061802

/-! ## A061802.P12399408011204246140

`∑[A008578(n+1)+A000040(n+1)]-1`
-/

namespace A061802.P12399408011204246140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A061802.P12399408011204246140

namespace A061802

/-- `∑[A008578(n+1)+A000040(n+1)]-1` -/
def P12399408011204246140.Spec : Prop :=
  ∀ n, P12399408011204246140.a n = A061802 n

end A061802

/-! ## A061802.P9193169871938648171

`∑[A000040(n+1)]+A014284(n+1)-1`
-/

namespace A061802.P9193169871938648171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A014284 (n + 1) - 1)

end

end A061802.P9193169871938648171

namespace A061802

/-- `∑[A000040(n+1)]+A014284(n+1)-1` -/
def P9193169871938648171.Spec : Prop :=
  ∀ n, P9193169871938648171.a n = A061802 n

end A061802

/-! ## A061802.P8536902614555227994

`A000040(n+1)+∑[A001747(n+1)]-2`
-/

namespace A061802.P8536902614555227994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A061802.P8536902614555227994

namespace A061802

/-- `A000040(n+1)+∑[A001747(n+1)]-2` -/
def P8536902614555227994.Spec : Prop :=
  ∀ n, P8536902614555227994.a n = A061802 n

end A061802

/-! ## A061802.P17479088898122051091

`A000040(n+1)+A000040(n)+a(n-1)` with `a(0)=2`
-/

namespace A061802.P17479088898122051091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (n + 1) + (A000040 n + a (n - 1))

end

end A061802.P17479088898122051091

namespace A061802

/-- `A000040(n+1)+A000040(n)+a(n-1)` -/
def P17479088898122051091.Spec : Prop :=
  ∀ n, P17479088898122051091.a n = A061802 n

end A061802

/-! ## A061802.P11268955870265429923

`A014284(n+1)+A163061(n+1)-A175967(n+1)`
-/

namespace A061802.P11268955870265429923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 1) + (A163061 (n + 1) - A175967 (n + 1))

end

end A061802.P11268955870265429923

namespace A061802

/-- `A014284(n+1)+A163061(n+1)-A175967(n+1)` -/
def P11268955870265429923.Spec : Prop :=
  ∀ n, P11268955870265429923.a n = A061802 n

end A061802

/-!
# A061803: Sum of n-th row of triangle of 4th powers: 1; 1 16 1; 1 16 81 16 1; 1 16 81 256 81 16 1; ... (cf. A133824).

The programs for A061803, the canonical program `A061803.P14423451095444228645` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061803 has offset 1).

The definition of A061803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061803.P14423451095444228645

`(n+1)*(6*(n+1)^4+10*(n+1)²-1)/15`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061803

/-- `(n+1)*(6*(n+1)^4+10*(n+1)²-1)/15` -/
def P14423451095444228645.Spec : Prop :=
  ∀ n, P14423451095444228645.a n = (A061803 (n + 1) : ℚ)

end A061803

/-! ## A061803.P4427908881862264609

`(n+1)^4+a(n-1)+n^4` with `a(0)=1`
-/

namespace A061803.P4427908881862264609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) ^ 4 + (a (n - 1) + n ^ 4)

end

end A061803.P4427908881862264609

namespace A061803

/-- `(n+1)^4+a(n-1)+n^4` -/
def P4427908881862264609.Spec : Prop :=
  ∀ n, (P4427908881862264609.a n : ℤ) = A061803 (n + 1)

end A061803

/-! ## A061803.P7892377155047344988

`a(n-1)+(n+1)²²+n²²` with `a(0)=1`
-/

namespace A061803.P7892377155047344988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (((n + 1) ^ 2) ^ 2 + (n ^ 2) ^ 2)

end

end A061803.P7892377155047344988

namespace A061803

/-- `a(n-1)+(n+1)²²+n²²` -/
def P7892377155047344988.Spec : Prop :=
  ∀ n, (P7892377155047344988.a n : ℤ) = A061803 (n + 1)

end A061803

/-! ## A061803.P7483493875461901024

`A008514(n)+a(n-1)` with `a(0)=1`
-/

namespace A061803.P7483493875461901024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008514 n + a (n - 1)

end

end A061803.P7483493875461901024

namespace A061803

/-- `A008514(n)+a(n-1)` -/
def P7483493875461901024.Spec : Prop :=
  ∀ n, P7483493875461901024.a n = A061803 (n + 1)

end A061803

/-! ## A061803.P9137647043932903038

`A259108(n)+(n+1)²²`
-/

namespace A061803.P9137647043932903038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259108 n + (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A061803.P9137647043932903038

namespace A061803

/-- `A259108(n)+(n+1)²²` -/
def P9137647043932903038.Spec : Prop :=
  ∀ n, P9137647043932903038.a n = A061803 (n + 1)

end A061803

/-! ## A061803.P9013467255798982330

`∑[2*∑[A004277(n)]²]-(n+1)`
-/

namespace A061803.P9013467255798982330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A061803.P9013467255798982330

namespace A061803

/-- `∑[2*∑[A004277(n)]²]-(n+1)` -/
def P9013467255798982330.Spec : Prop :=
  ∀ n, P9013467255798982330.a n = A061803 (n + 1)

end A061803

/-! ## A061803.P5620769475900806689

`A372751(n+1)-A164938(n+1)`
-/

namespace A061803.P5620769475900806689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372751 (n + 1) - A164938 (n + 1)

end

end A061803.P5620769475900806689

namespace A061803

/-- `A372751(n+1)-A164938(n+1)` -/
def P5620769475900806689.Spec : Prop :=
  ∀ n, P5620769475900806689.a n = A061803 (n + 1)

end A061803

/-! ## A061803.P16591288054994966463

`2*A385894(n+1)-(n+1)`
-/

namespace A061803.P16591288054994966463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A385894 (n + 1) - (n + 1 : ℤ)

end

end A061803.P16591288054994966463

namespace A061803

/-- `2*A385894(n+1)-(n+1)` -/
def P16591288054994966463.Spec : Prop :=
  ∀ n, P16591288054994966463.a n = A061803 (n + 1)

end A061803

/-! ## A061803.P11265333135101399547

`A000447(n+1)+∑[8*∑[n]²]`
-/

namespace A061803.P11265333135101399547
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A061803.P11265333135101399547

namespace A061803

/-- `A000447(n+1)+∑[8*∑[n]²]` -/
def P11265333135101399547.Spec : Prop :=
  ∀ n, P11265333135101399547.a n = A061803 (n + 1)

end A061803

/-! ## A061803.P13458215151881894585

`A000538(n+1)+A000538(n)`
-/

namespace A061803.P13458215151881894585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (n + 1) + A000538 n

end

end A061803.P13458215151881894585

namespace A061803

/-- `A000538(n+1)+A000538(n)` -/
def P13458215151881894585.Spec : Prop :=
  ∀ n, P13458215151881894585.a n = A061803 (n + 1)

end A061803

/-! ## A061803.P16335270928547023932

`A212742(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A061803.P16335270928547023932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A212742 (2 * n) + a (n - 1)

end

end A061803.P16335270928547023932

namespace A061803

/-- `A212742(2*n)+a(n-1)` -/
def P16335270928547023932.Spec : Prop :=
  ∀ n, P16335270928547023932.a n = A061803 (n + 1)

end A061803

/-! ## A061803.P3133110534172693718

`∑[A212742(2*n+1)]-(n+1)²²`
-/

namespace A061803.P3133110534172693718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212742 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A061803.P3133110534172693718

namespace A061803

/-- `∑[A212742(2*n+1)]-(n+1)²²` -/
def P3133110534172693718.Spec : Prop :=
  ∀ n, P3133110534172693718.a n = A061803 (n + 1)

end A061803

/-! ## A061803.P1791977195092002360

`∑[A212763(2*n+1)]-(n+1)²²`
-/

namespace A061803.P1791977195092002360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212763 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A061803.P1791977195092002360

namespace A061803

/-- `∑[A212763(2*n+1)]-(n+1)²²` -/
def P1791977195092002360.Spec : Prop :=
  ∀ n, P1791977195092002360.a n = A061803 (n + 1)

end A061803

/-! ## A061803.P2118333804910693225

`A000292(2*n+1)+∑[8*∑[n]²]`
-/

namespace A061803.P2118333804910693225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (2 * n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A061803.P2118333804910693225

namespace A061803

/-- `A000292(2*n+1)+∑[8*∑[n]²]` -/
def P2118333804910693225.Spec : Prop :=
  ∀ n, P2118333804910693225.a n = A061803 (n + 1)

end A061803

/-! ## A061803.P5180230799222538343

`2*∑[A005563(∑[2*n])]+1+n`
-/

namespace A061803.P5180230799222538343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1 + (n : ℤ)

end

end A061803.P5180230799222538343

namespace A061803

/-- `2*∑[A005563(∑[2*n])]+1+n` -/
def P5180230799222538343.Spec : Prop :=
  ∀ n, P5180230799222538343.a n = A061803 (n + 1)

end A061803

/-!
# A061804: a(n) = 2*n*(2*n^2 + 1).

The programs for A061804, the canonical program `A061804.P16305426185761710400` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061804 has offset 0).

The definition of A061804 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(2*n²+1)` (program `A061804.P16305426185761710400`, by `A061804.P16305426185761710400.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061804.P16305426185761710400

`2*n*(2*n²+1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061804

/-- `2*n*(2*n²+1)` -/
def P16305426185761710400.Spec : Prop :=
  ∀ n, (P16305426185761710400.a n : ℤ) = A061804 n

theorem P16305426185761710400.correct : P16305426185761710400.Spec := by
  intro n
  simp only [A061804]

end A061804

/-! ## A061804.P1121758237904939928

`A002061(A002061(n+1))-A002061(A002061(n))`
-/

namespace A061804.P1121758237904939928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A002061 (n + 1)).toNat - A002061 (A002061 n).toNat

end

end A061804.P1121758237904939928

namespace A061804

/-- `A002061(A002061(n+1))-A002061(A002061(n))` -/
def P1121758237904939928.Spec : Prop :=
  ∀ n, P1121758237904939928.a n = A061804 n

end A061804

/-! ## A061804.P6381559862182562037

`lcm(2*n, or(1, 2*n²))`
-/

namespace A061804.P6381559862182562037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n) (Nat.lor 1 (2 * n ^ 2))

end

end A061804.P6381559862182562037

namespace A061804

/-- `lcm(2*n, or(1, 2*n²))` -/
def P6381559862182562037.Spec : Prop :=
  ∀ n, (P6381559862182562037.a n : ℤ) = A061804 n

end A061804

/-! ## A061804.P14790652544956584542

`lcm(3, n*xor(2, (2*n)²))`
-/

namespace A061804.P14790652544956584542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n * Nat.xor 2 ((2 * n) ^ 2))

end

end A061804.P14790652544956584542

namespace A061804

/-- `lcm(3, n*xor(2, (2*n)²))` -/
def P14790652544956584542.Spec : Prop :=
  ∀ n, (P14790652544956584542.a n : ℤ) = A061804 n

end A061804

/-! ## A061804.P2754991517540993489

`n*or(3, (2*n)²)-n`
-/

namespace A061804.P2754991517540993489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * Nat.lor 3 ((2 * n) ^ 2) : ℤ) - (n : ℤ)

end

end A061804.P2754991517540993489

namespace A061804

/-- `n*or(3, (2*n)²)-n` -/
def P2754991517540993489.Spec : Prop :=
  ∀ n, P2754991517540993489.a n = A061804 n

end A061804

/-! ## A061804.P11424807058687777855

`n*xor(3, (2*n)²)-n`
-/

namespace A061804.P11424807058687777855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * Nat.xor 3 ((2 * n) ^ 2) : ℤ) - (n : ℤ)

end

end A061804.P11424807058687777855

namespace A061804

/-- `n*xor(3, (2*n)²)-n` -/
def P11424807058687777855.Spec : Prop :=
  ∀ n, P11424807058687777855.a n = A061804 n

end A061804

/-! ## A061804.P15256718701960609232

`abs(n*xor(-2, (2*n)²))`
-/

namespace A061804.P15256718701960609232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * Int.xor (-2) ((2 * n) ^ 2 : ℤ)|

end

end A061804.P15256718701960609232

namespace A061804

/-- `abs(n*xor(-2, (2*n)²))` -/
def P15256718701960609232.Spec : Prop :=
  ∀ n, P15256718701960609232.a n = A061804 n

end A061804

/-! ## A061804.P315973247554722734

`-(n*xor(-2, (2*n)²))`
-/

namespace A061804.P315973247554722734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * Int.xor (-2) ((2 * n) ^ 2 : ℤ))

end

end A061804.P315973247554722734

namespace A061804

/-- `-(n*xor(-2, (2*n)²))` -/
def P315973247554722734.Spec : Prop :=
  ∀ n, P315973247554722734.a n = A061804 n

end A061804

/-! ## A061804.P13234990584730590685

`Δ[(lcm(n, n-1)+1/2)²]`
-/

namespace A061804.P13234990584730590685
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℚ) + (1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061804.P13234990584730590685

namespace A061804

/-- `Δ[(lcm(n, n-1)+1/2)²]` -/
def P13234990584730590685.Spec : Prop :=
  ∀ n, P13234990584730590685.a n = (A061804 n : ℚ)

end A061804

/-! ## A061804.P15090413957204002959

`Δ[2*C(n²-(n-1), 2)]`
-/

namespace A061804.P15090413957204002959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose ((n ^ 2 : ℤ) - ((n : ℤ) - 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A061804.P15090413957204002959

namespace A061804

/-- `Δ[2*C(n²-(n-1), 2)]` -/
def P15090413957204002959.Spec : Prop :=
  ∀ n, P15090413957204002959.a n = A061804 n

end A061804

/-! ## A061804.P9253518006401618613

`floor(n*∑[a(n-1)+8])` with `a(0)=2, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A061804.P9253518006401618613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061804.P9253518006401618613

namespace A061804

/-- `floor(n*∑[a(n-1)+8])` -/
def P9253518006401618613.Spec : Prop :=
  ∀ n, (P9253518006401618613.a n : ℤ) = A061804 n

end A061804

/-! ## A061804.P889268376565113653

`2*n+n*Δ[C(2*n, 3)]`
-/

namespace A061804.P889268376565113653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A061804.P889268376565113653

namespace A061804

/-- `2*n+n*Δ[C(2*n, 3)]` -/
def P889268376565113653.Spec : Prop :=
  ∀ n, P889268376565113653.a n = A061804 n

end A061804

/-! ## A061804.P6272015630240756610

`Δ[lcm(n-(n²+1), n²-n)]`
-/

namespace A061804.P6272015630240756610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - (n ^ 2 + 1 : ℤ)) ((n ^ 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A061804.P6272015630240756610

namespace A061804

/-- `Δ[lcm(n-(n²+1), n²-n)]` -/
def P6272015630240756610.Spec : Prop :=
  ∀ n, P6272015630240756610.a n = A061804 n

end A061804

/-! ## A061804.P4977448313907065303

`lcm(2, (n*2*n+1)*2*n)`
-/

namespace A061804.P4977448313907065303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((n * (2 * n) + 1) * (2 * n))

end

end A061804.P4977448313907065303

namespace A061804

/-- `lcm(2, (n*2*n+1)*2*n)` -/
def P4977448313907065303.Spec : Prop :=
  ∀ n, (P4977448313907065303.a n : ℤ) = A061804 n

end A061804

/-! ## A061804.P13853160481644116128

`C((n+1)², 2)-C((1-n)², 2)`
-/

namespace A061804.P13853160481644116128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 1) ^ 2) 2 : ℤ) - (Nat.choose ((1 - (n : ℤ)) ^ 2).toNat 2 : ℤ)

end

end A061804.P13853160481644116128

namespace A061804

/-- `C((n+1)², 2)-C((1-n)², 2)` -/
def P13853160481644116128.Spec : Prop :=
  ∀ n, P13853160481644116128.a n = A061804 n

end A061804

/-! ## A061804.P8206248665085983319

`2*n+(C(2*n, 2)+n)*2*n`
-/

namespace A061804.P8206248665085983319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (Nat.choose (2 * n) 2 + n) * (2 * n)

end

end A061804.P8206248665085983319

namespace A061804

/-- `2*n+(C(2*n, 2)+n)*2*n` -/
def P8206248665085983319.Spec : Prop :=
  ∀ n, (P8206248665085983319.a n : ℤ) = A061804 n

end A061804

/-! ## A061804.P14118540163095152055

`2*n+2*n*2*n*gcd(n, 2*n)`
-/

namespace A061804.P14118540163095152055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 2 * n * (2 * n * Nat.gcd n (2 * n))

end

end A061804.P14118540163095152055

namespace A061804

/-- `2*n+2*n*2*n*gcd(n, 2*n)` -/
def P14118540163095152055.Spec : Prop :=
  ∀ n, (P14118540163095152055.a n : ℤ) = A061804 n

theorem P14118540163095152055.correct : P14118540163095152055.Spec := by
  intro n
  simp only [A061804, Nat.add_sub_cancel, A061804.P14118540163095152055.a, A061804.P16305426185761710400.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A061804

/-! ## A061804.P10253119509353782100

`and(2*n+1, 2*n)+2*n*n*2*n`
-/

namespace A061804.P10253119509353782100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) + 2 * n * (n * (2 * n))

end

end A061804.P10253119509353782100

namespace A061804

/-- `and(2*n+1, 2*n)+2*n*n*2*n` -/
def P10253119509353782100.Spec : Prop :=
  ∀ n, (P10253119509353782100.a n : ℤ) = A061804 n

end A061804

/-! ## A061804.P4936493005449632074

`floor(A007900(n)/4)`
-/

namespace A061804.P4936493005449632074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007900 n : ℚ) / 4⌋

end

end A061804.P4936493005449632074

namespace A061804

/-- `floor(A007900(n)/4)` -/
def P4936493005449632074.Spec : Prop :=
  ∀ n, P4936493005449632074.a n = A061804 n

end A061804

/-!
# A061805: Smallest number that has digits in order ...123...901... and is divisible by n. If no such number exists then a(n) = 0.

The programs for A061805, there is no canonical definition to state claims against.
-/

/-! ## A061805.P2754425868560533883

`lcm(3^C(a(n-1), 68)+n, val((n+1)^8, 10)+1+n)` with `a(0)=1`
-/

namespace A061805.P2754425868560533883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (3 ^ Nat.choose (a (n - 1)) 68 + n) (SequenceMachineLib.valuation ((n + 1) ^ 8) 10 + 1 + n)

end

end A061805.P2754425868560533883

/-! ## A061805.P1759437286790169087

`A198486(a(n-1)+1)` with `a(0)=1`
-/

namespace A061805.P1759437286790169087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A198486 (a (n - 1) + 1).toNat

end

end A061805.P1759437286790169087

/-! ## A061805.P4700082350805095499

`A239085(a(n-1)+1)` with `a(0)=1`
-/

namespace A061805.P4700082350805095499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A239085 (a (n - 1) + 1).toNat

end

end A061805.P4700082350805095499

/-! ## A061805.P18002032722041050738

`A345406(a(n-1)+2)` with `a(0)=1`
-/

namespace A061805.P18002032722041050738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A345406 (a (n - 1) + 2).toNat

end

end A061805.P18002032722041050738

/-! ## A061805.P12859127736272404733

`(n+1)*A267611(n²)²`
-/

namespace A061805.P12859127736272404733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A267611 (n ^ 2) ^ 2

end

end A061805.P12859127736272404733

/-!
# A061806: Numbers n such that the iterative cycle: n -> sum of digits of n^2 has only three distinct elements.

The programs for A061806, there is no canonical definition to state claims against.
-/

/-! ## A061806.P13194078614457630145

`eq[3, A061903(n)]`
-/

namespace A061806.P13194078614457630145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061903 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061806.P13194078614457630145

/-! ## A061806.P16440575204710141859

`lt[A061903(n)%3, A057427(n+1)]`
-/

namespace A061806.P16440575204710141859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061903 n) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061806.P16440575204710141859

/-! ## A061806.P2915339783437003571

`lt[A356319(n+1), A039515(A004159(n))]`
-/

namespace A061806.P2915339783437003571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039515 (A004159 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061806.P2915339783437003571

/-!
# A061807: Smallest positive multiple of n containing only even digits.

The programs for A061807, there is no canonical definition to state claims against.
-/

/-! ## A061807.P5066471919821491943

`(n+1)*A067044(n+1)`
-/

namespace A061807.P5066471919821491943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A067044 (n + 1)

end

end A061807.P5066471919821491943

/-! ## A061807.P7779793420199328287

`A028310(A067044(n+1)/(ratio[n+1]-1))`
-/

namespace A061807.P7779793420199328287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A067044 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) - 1))).toNat

end

end A061807.P7779793420199328287

/-! ## A061807.P17465041556591861880

`(n+1)*A006519(A322364(n)+n+1)`
-/

namespace A061807.P17465041556591861880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006519 (A322364 n + (n + 1 : ℤ)).toNat

end

end A061807.P17465041556591861880

/-! ## A061807.P7940821123337727923

`lcm(A001222(A120354(n)), A067044(n+1))`
-/

namespace A061807.P7940821123337727923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (A120354 n).toNat) (A067044 (n + 1))

end

end A061807.P7940821123337727923

/-! ## A061807.P1548407059514228194

`gcd(n², A000005(A042050(n)))*A291769(n)`
-/

namespace A061807.P1548407059514228194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n ^ 2 : ℤ) (A000005 (A042050 n).toNat) : ℤ) * A291769 n

end

end A061807.P1548407059514228194

/-!
# A061808: a(n) is the smallest number with all digits odd that is divisible by 2n-1.

The programs for A061808, there is no canonical definition to state claims against.
-/

/-! ## A061808.P6211510270362342683

`(2*(n+1)-1)*A296009(n+1)`
-/

namespace A061808.P6211510270362342683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1) * A296009 (n + 1)

end

end A061808.P6211510270362342683

/-! ## A061808.P3546741667385840408

`A296009(n+1)*Δ[n²]`
-/

namespace A061808.P3546741667385840408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296009 (n + 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A061808.P3546741667385840408

/-! ## A061808.P5898115340536644740

`A296009(n+1)*A350536(n)/A350537(n)`
-/

namespace A061808.P5898115340536644740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296009 (n + 1) * A350536 n : ℚ) / (A350537 n : ℚ)

end

end A061808.P5898115340536644740

/-! ## A061808.P4941138771348350183

`A327539((2*n+1)*A296009(n+1))`
-/

namespace A061808.P4941138771348350183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327539 ((2 * n + 1 : ℤ) * A296009 (n + 1)).toNat

end

end A061808.P4941138771348350183

/-!
# A061809: When cubed gives number composed just of the digits 1, 2, 3, 4.

The programs for A061809, there is no canonical definition to state claims against.
-/

/-! ## A061809.P10282789498401151705

`∩[A061813(n+1), A048792(n)]`
-/

namespace A061809.P10282789498401151705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048792 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061809.P10282789498401151705

/-!
# A061810: Multiples of 3 with all odd digits.

The programs for A061810, the canonical program `A061810.P419658108467470369` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061810 has offset 1).

The definition of A061810 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 884 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061810.P11640864236514588086

`∩[floor(3/acot(n)), A014261(n+2)]`
-/

namespace A061810.P11640864236514588086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061810.P11640864236514588086

namespace A061810

/-- `∩[floor(3/acot(n)), A014261(n+2)]` -/
def P11640864236514588086.Spec : Prop :=
  ∀ n, (P11640864236514588086.a n : ℤ) = A061810 (n + 1)

end A061810

/-! ## A061810.P12262291083151066862

`A350536(eq[3, A350537(n)])`
-/

namespace A061810.P12262291083151066862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350536 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061810.P12262291083151066862

namespace A061810

/-- `A350536(eq[3, A350537(n)])` -/
def P12262291083151066862.Spec : Prop :=
  ∀ n, P12262291083151066862.a n = A061810 (n + 1)

end A061810

/-! ## A061810.P6439852407487128124

`A350536(lt[A350537(n), 4])`
-/

namespace A061810.P6439852407487128124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350537 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350536 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A061810.P6439852407487128124

namespace A061810

/-- `A350536(lt[A350537(n), 4])` -/
def P6439852407487128124.Spec : Prop :=
  ∀ n, P6439852407487128124.a n = A061810 (n + 1)

end A061810

/-! ## A061810.P7676567350713970751

`∩[A014261(n+1), A016945(n)]`
-/

namespace A061810.P7676567350713970751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061810.P7676567350713970751

namespace A061810

/-- `∩[A014261(n+1), A016945(n)]` -/
def P7676567350713970751.Spec : Prop :=
  ∀ n, (P7676567350713970751.a n : ℤ) = A061810 (n + 1)

end A061810

/-! ## A061810.P419658108467470369

`∩[A059708(n+1), A016945(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A061810

/-- `∩[A059708(n+1), A016945(n)]` -/
def P419658108467470369.Spec : Prop :=
  ∀ n, (P419658108467470369.a n : ℤ) = A061810 (n + 1)

theorem P419658108467470369.correct : P419658108467470369.Spec := by
  intro n
  simp only [A061810, Nat.add_sub_cancel]

end A061810

/-! ## A061810.P9187567951293038012

`A350536(lt[A350536(n), A190432(n+1)])`
-/

namespace A061810.P9187567951293038012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350536 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350536 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A061810.P9187567951293038012

namespace A061810

/-- `A350536(lt[A350536(n), A190432(n+1)])` -/
def P9187567951293038012.Spec : Prop :=
  ∀ n, P9187567951293038012.a n = A061810 (n + 1)

end A061810

/-! ## A061810.P5154228573727288052

`∩[A014261(n+1), A259754(n+1)]`
-/

namespace A061810.P5154228573727288052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061810.P5154228573727288052

namespace A061810

/-- `∩[A014261(n+1), A259754(n+1)]` -/
def P5154228573727288052.Spec : Prop :=
  ∀ n, (P5154228573727288052.a n : ℤ) = A061810 (n + 1)

end A061810

/-! ## A061810.P7183750514910515523

`∩[A014261(n+1), A277569(n+1)]`
-/

namespace A061810.P7183750514910515523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061810.P7183750514910515523

namespace A061810

/-- `∩[A014261(n+1), A277569(n+1)]` -/
def P7183750514910515523.Spec : Prop :=
  ∀ n, (P7183750514910515523.a n : ℤ) = A061810 (n + 1)

end A061810

/-! ## A061810.P5688094550882904645

`∩[A014261(n+1), A008585(n)]`
-/

namespace A061810.P5688094550882904645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061810.P5688094550882904645

namespace A061810

/-- `∩[A014261(n+1), A008585(n)]` -/
def P5688094550882904645.Spec : Prop :=
  ∀ n, (P5688094550882904645.a n : ℤ) = A061810 (n + 1)

end A061810

/-! ## A061810.P12489368721618232686

`∩[A014261(n+1), A031193(n+1)]`
-/

namespace A061810.P12489368721618232686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061810.P12489368721618232686

namespace A061810

/-- `∩[A014261(n+1), A031193(n+1)]` -/
def P12489368721618232686.Spec : Prop :=
  ∀ n, (P12489368721618232686.a n : ℤ) = A061810 (n + 1)

end A061810

/-! ## A061810.P13091951150545118004

`∩[A014261(n+1), A047228(n+1)]`
-/

namespace A061810.P13091951150545118004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061810.P13091951150545118004

namespace A061810

/-- `∩[A014261(n+1), A047228(n+1)]` -/
def P13091951150545118004.Spec : Prop :=
  ∀ n, (P13091951150545118004.a n : ℤ) = A061810 (n + 1)

end A061810

/-! ## A061810.P8882177562194023928

`∩[A014261(n+1), A047230(n+1)]`
-/

namespace A061810.P8882177562194023928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061810.P8882177562194023928

namespace A061810

/-- `∩[A014261(n+1), A047230(n+1)]` -/
def P8882177562194023928.Spec : Prop :=
  ∀ n, (P8882177562194023928.a n : ℤ) = A061810 (n + 1)

end A061810

/-! ## A061810.P10783887547248069008

`∩[A014261(n+1), A047231(n+1)]`
-/

namespace A061810.P10783887547248069008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061810.P10783887547248069008

namespace A061810

/-- `∩[A014261(n+1), A047231(n+1)]` -/
def P10783887547248069008.Spec : Prop :=
  ∀ n, (P10783887547248069008.a n : ℤ) = A061810 (n + 1)

end A061810

/-! ## A061810.P13163625588499604924

`∩[A014261(n+1), A047243(n+1)]`
-/

namespace A061810.P13163625588499604924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061810.P13163625588499604924

namespace A061810

/-- `∩[A014261(n+1), A047243(n+1)]` -/
def P13163625588499604924.Spec : Prop :=
  ∀ n, (P13163625588499604924.a n : ℤ) = A061810 (n + 1)

end A061810

/-! ## A061810.P1857543988277402239

`∩[A014261(n+1), A047244(n+1)]`
-/

namespace A061810.P1857543988277402239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061810.P1857543988277402239

namespace A061810

/-- `∩[A014261(n+1), A047244(n+1)]` -/
def P1857543988277402239.Spec : Prop :=
  ∀ n, (P1857543988277402239.a n : ℤ) = A061810 (n + 1)

end A061810

/-! ## A061810.P15938989186690364152

`∩[A014261(n+1), A244151(n+1)]`
-/

namespace A061810.P15938989186690364152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061810.P15938989186690364152

namespace A061810

/-- `∩[A014261(n+1), A244151(n+1)]` -/
def P15938989186690364152.Spec : Prop :=
  ∀ n, (P15938989186690364152.a n : ℤ) = A061810 (n + 1)

end A061810

/-! ## A061810.P11379014914825362058

`∩[A014261(n+1), A285440(n+1)]`
-/

namespace A061810.P11379014914825362058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061810.P11379014914825362058

namespace A061810

/-- `∩[A014261(n+1), A285440(n+1)]` -/
def P11379014914825362058.Spec : Prop :=
  ∀ n, (P11379014914825362058.a n : ℤ) = A061810 (n + 1)

end A061810

/-! ## A061810.P17023293191474904749

`∩[A014261(n+1), A355200(n+1)]`
-/

namespace A061810.P17023293191474904749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061810.P17023293191474904749

namespace A061810

/-- `∩[A014261(n+1), A355200(n+1)]` -/
def P17023293191474904749.Spec : Prop :=
  ∀ n, (P17023293191474904749.a n : ℤ) = A061810 (n + 1)

end A061810

/-! ## A061810.P1473080427028816505

`∩[A014261(n+1), A359376(n+1)]`
-/

namespace A061810.P1473080427028816505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061810.P1473080427028816505

namespace A061810

/-- `∩[A014261(n+1), A359376(n+1)]` -/
def P1473080427028816505.Spec : Prop :=
  ∀ n, (P1473080427028816505.a n : ℤ) = A061810 (n + 1)

end A061810

/-! ## A061810.P6381564465416377446

`∩[A014261(n+1), A084090(n+1)]`
-/

namespace A061810.P6381564465416377446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061810.P6381564465416377446

namespace A061810

/-- `∩[A014261(n+1), A084090(n+1)]` -/
def P6381564465416377446.Spec : Prop :=
  ∀ n, (P6381564465416377446.a n : ℤ) = A061810 (n + 1)

end A061810

/-!
# A061811: Multiples of 3 with all even digits.

The programs for A061811, the canonical program `A061811.P2011713102555568055` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061811 has offset 1).

The definition of A061811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 750 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061811.P9187150758829304725

`record[A014263(n+1)*A049347(A037466(n))]`
-/

namespace A061811.P9187150758829304725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1) * A049347 (A037466 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061811.P9187150758829304725

namespace A061811

/-- `record[A014263(n+1)*A049347(A037466(n))]` -/
def P9187150758829304725.Spec : Prop :=
  ∀ n, P9187150758829304725.a n = A061811 (n + 1)

end A061811

/-! ## A061811.P2011713102555568055

`filter[A014263(n+1), A079979(#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A061811

/-- `filter[A014263(n+1), A079979(#)]` -/
def P2011713102555568055.Spec : Prop :=
  ∀ n, P2011713102555568055.a n = A061811 (n + 1)

theorem P2011713102555568055.correct : P2011713102555568055.Spec := by
  intro n
  simp only [A061811, Nat.add_sub_cancel]

end A061811

/-! ## A061811.P1143891684670966065

`filter[A014263(n+1), A093719(#)]`
-/

namespace A061811.P1143891684670966065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A061811.P1143891684670966065

namespace A061811

/-- `filter[A014263(n+1), A093719(#)]` -/
def P1143891684670966065.Spec : Prop :=
  ∀ n, P1143891684670966065.a n = A061811 (n + 1)

end A061811

/-! ## A061811.P124423803013999113

`filter[A024657(2*n), A079979(#)]`
-/

namespace A061811.P124423803013999113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A061811.P124423803013999113

namespace A061811

/-- `filter[A024657(2*n), A079979(#)]` -/
def P124423803013999113.Spec : Prop :=
  ∀ n, P124423803013999113.a n = A061811 (n + 1)

end A061811

/-! ## A061811.P15712932019060516439

`filter[A024657(2*n), A093719(#)]`
-/

namespace A061811.P15712932019060516439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A061811.P15712932019060516439

namespace A061811

/-- `filter[A024657(2*n), A093719(#)]` -/
def P15712932019060516439.Spec : Prop :=
  ∀ n, P15712932019060516439.a n = A061811 (n + 1)

end A061811

/-! ## A061811.P4523115783600769367

`∩[A014263(n+1), A385701(n+1)]`
-/

namespace A061811.P4523115783600769367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061811.P4523115783600769367

namespace A061811

/-- `∩[A014263(n+1), A385701(n+1)]` -/
def P4523115783600769367.Spec : Prop :=
  ∀ n, (P4523115783600769367.a n : ℤ) = A061811 (n + 1)

end A061811

/-! ## A061811.P1419193393177556562

`∩[A059708(n+1), A385701(n+1)]`
-/

namespace A061811.P1419193393177556562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061811.P1419193393177556562

namespace A061811

/-- `∩[A059708(n+1), A385701(n+1)]` -/
def P1419193393177556562.Spec : Prop :=
  ∀ n, (P1419193393177556562.a n : ℤ) = A061811 (n + 1)

end A061811

/-! ## A061811.P15389478470858165381

`∩[A169884(n+1), A385701(n+1)]`
-/

namespace A061811.P15389478470858165381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061811.P15389478470858165381

namespace A061811

/-- `∩[A169884(n+1), A385701(n+1)]` -/
def P15389478470858165381.Spec : Prop :=
  ∀ n, (P15389478470858165381.a n : ℤ) = A061811 (n + 1)

end A061811

/-! ## A061811.P474551144501801469

`∩[A008588(n), A024657(n)]`
-/

namespace A061811.P474551144501801469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061811.P474551144501801469

namespace A061811

/-- `∩[A008588(n), A024657(n)]` -/
def P474551144501801469.Spec : Prop :=
  ∀ n, (P474551144501801469.a n : ℤ) = A061811 (n + 1)

end A061811

/-! ## A061811.P16348724661978559707

`∩[A014263(n+1), A008588(n)]`
-/

namespace A061811.P16348724661978559707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061811.P16348724661978559707

namespace A061811

/-- `∩[A014263(n+1), A008588(n)]` -/
def P16348724661978559707.Spec : Prop :=
  ∀ n, (P16348724661978559707.a n : ℤ) = A061811 (n + 1)

end A061811

/-! ## A061811.P12633190899153852169

`∩[A059708(n+1), A008588(n)]`
-/

namespace A061811.P12633190899153852169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061811.P12633190899153852169

namespace A061811

/-- `∩[A059708(n+1), A008588(n)]` -/
def P12633190899153852169.Spec : Prop :=
  ∀ n, (P12633190899153852169.a n : ℤ) = A061811 (n + 1)

end A061811

/-! ## A061811.P6688693168921359108

`∩[A274319(n+1), A024657(n)]`
-/

namespace A061811.P6688693168921359108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061811.P6688693168921359108

namespace A061811

/-- `∩[A274319(n+1), A024657(n)]` -/
def P6688693168921359108.Spec : Prop :=
  ∀ n, (P6688693168921359108.a n : ℤ) = A061811 (n + 1)

end A061811

/-! ## A061811.P6573659019075692192

`∩[A014263(n+1), A256882(n+1)]`
-/

namespace A061811.P6573659019075692192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061811.P6573659019075692192

namespace A061811

/-- `∩[A014263(n+1), A256882(n+1)]` -/
def P6573659019075692192.Spec : Prop :=
  ∀ n, (P6573659019075692192.a n : ℤ) = A061811 (n + 1)

end A061811

/-! ## A061811.P13447853858887749318

`∩[A014263(n+1), A274319(n+1)]`
-/

namespace A061811.P13447853858887749318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061811.P13447853858887749318

namespace A061811

/-- `∩[A014263(n+1), A274319(n+1)]` -/
def P13447853858887749318.Spec : Prop :=
  ∀ n, (P13447853858887749318.a n : ℤ) = A061811 (n + 1)

end A061811

/-! ## A061811.P5314005720084778279

`∩[A169884(n+1), A274319(n+1)]`
-/

namespace A061811.P5314005720084778279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061811.P5314005720084778279

namespace A061811

/-- `∩[A169884(n+1), A274319(n+1)]` -/
def P5314005720084778279.Spec : Prop :=
  ∀ n, (P5314005720084778279.a n : ℤ) = A061811 (n + 1)

end A061811

/-! ## A061811.P11113402341022304647

`∩[A014263(n+1), A008589(n)-n]`
-/

namespace A061811.P11113402341022304647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061811.P11113402341022304647

namespace A061811

/-- `∩[A014263(n+1), A008589(n)-n]` -/
def P11113402341022304647.Spec : Prop :=
  ∀ n, (P11113402341022304647.a n : ℤ) = A061811 (n + 1)

end A061811

/-! ## A061811.P5471918867917071382

`∩[A014263(n+1), A008585(n)]`
-/

namespace A061811.P5471918867917071382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061811.P5471918867917071382

namespace A061811

/-- `∩[A014263(n+1), A008585(n)]` -/
def P5471918867917071382.Spec : Prop :=
  ∀ n, (P5471918867917071382.a n : ℤ) = A061811 (n + 1)

end A061811

/-! ## A061811.P3288878284052696331

`∩[A014263(n+1), A319451(n)]`
-/

namespace A061811.P3288878284052696331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319451 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061811.P3288878284052696331

namespace A061811

/-- `∩[A014263(n+1), A319451(n)]` -/
def P3288878284052696331.Spec : Prop :=
  ∀ n, (P3288878284052696331.a n : ℤ) = A061811 (n + 1)

end A061811

/-! ## A061811.P17437523167477559398

`∩[A014263(n+1), A047225(n+1)]`
-/

namespace A061811.P17437523167477559398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061811.P17437523167477559398

namespace A061811

/-- `∩[A014263(n+1), A047225(n+1)]` -/
def P17437523167477559398.Spec : Prop :=
  ∀ n, (P17437523167477559398.a n : ℤ) = A061811 (n + 1)

end A061811

/-! ## A061811.P16434069654567813648

`∩[A014263(n+1), A047264(n+1)]`
-/

namespace A061811.P16434069654567813648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061811.P16434069654567813648

namespace A061811

/-- `∩[A014263(n+1), A047264(n+1)]` -/
def P16434069654567813648.Spec : Prop :=
  ∀ n, (P16434069654567813648.a n : ℤ) = A061811 (n + 1)

end A061811

/-!
# A061812: Numbers k such that floor(Pi*k) is a square.

The programs for A061812, there is no canonical definition to state claims against.
-/

/-! ## A061812.P13960842950835497202

`eq[A002828(A022844(n)), A057427(n)]`
-/

namespace A061812.P13960842950835497202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A022844 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061812.P13960842950835497202

/-! ## A061812.P2619529948342452303

`eq[0, A053188(floor(π*n))]`
-/

namespace A061812.P2619529948342452303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 ⌊Real.pi * (n : ℝ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061812.P2619529948342452303

/-! ## A061812.P9202017749887187879

`eq[1, A010052(A022844(n))]`
-/

namespace A061812.P9202017749887187879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A022844 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061812.P9202017749887187879

/-! ## A061812.P7281992207698520922

`eq[1, A071797(A004084(n+1))]`
-/

namespace A061812.P7281992207698520922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A004084 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061812.P7281992207698520922

/-! ## A061812.P7325222345082235808

`lt[A272680(A022844(n)), A022844(n+1)]`
-/

namespace A061812.P7325222345082235808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272680 (A022844 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061812.P7325222345082235808

/-!
# A061814: Multiples of 4 containing only even digits.

The programs for A061814, the canonical program `A061814.P793041439011287995` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061814 has offset 0).

The definition of A061814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061814.P793041439011287995

`A014263(A047220(n+2))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A061814

/-- `A014263(A047220(n+2))` -/
def P793041439011287995.Spec : Prop :=
  ∀ n, P793041439011287995.a n = A061814 n

theorem P793041439011287995.correct : P793041439011287995.Spec := by
  intro n
  simp only [A061814]

end A061814

/-! ## A061814.P17687543703813334628

`A014263(A047212(n+1)+1)`
-/

namespace A061814.P17687543703813334628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (A047212 (n + 1) + 1).toNat

end

end A061814.P17687543703813334628

namespace A061814

/-- `A014263(A047212(n+1)+1)` -/
def P17687543703813334628.Spec : Prop :=
  ∀ n, P17687543703813334628.a n = A061814 n

end A061814

/-! ## A061814.P14093355827751369559

`record[and(A014263(n+1)+2, A014263(n+1))]`
-/

namespace A061814.P14093355827751369559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014263 (n + 1) + 2) (A014263 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061814.P14093355827751369559

namespace A061814

/-- `record[and(A014263(n+1)+2, A014263(n+1))]` -/
def P14093355827751369559.Spec : Prop :=
  ∀ n, P14093355827751369559.a n = A061814 n

end A061814

/-! ## A061814.P1852549820294519121

`A014263(A042965(2*(n+1))-n)`
-/

namespace A061814.P1852549820294519121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (A042965 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A061814.P1852549820294519121

namespace A061814

/-- `A014263(A042965(2*(n+1))-n)` -/
def P1852549820294519121.Spec : Prop :=
  ∀ n, P1852549820294519121.a n = A061814 n

end A061814

/-! ## A061814.P15941291484150413966

`A014263(∑[A088911(2*(n+2))+1])`
-/

namespace A061814.P15941291484150413966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 (2 * (n + 2)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061814.P15941291484150413966

namespace A061814

/-- `A014263(∑[A088911(2*(n+2))+1])` -/
def P15941291484150413966.Spec : Prop :=
  ∀ n, P15941291484150413966.a n = A061814 n

end A061814

/-! ## A061814.P14995027231602403663

`∩[2*A007092(2*n), A024657(2*n)]`
-/

namespace A061814.P14995027231602403663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007092 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061814.P14995027231602403663

namespace A061814

/-- `∩[2*A007092(2*n), A024657(2*n)]` -/
def P14995027231602403663.Spec : Prop :=
  ∀ n, (P14995027231602403663.a n : ℤ) = A061814 n

end A061814

/-! ## A061814.P11094149285481753544

`filter[A014263(n+1), A358680(#)]`
-/

namespace A061814.P11094149285481753544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A061814.P11094149285481753544

namespace A061814

/-- `filter[A014263(n+1), A358680(#)]` -/
def P11094149285481753544.Spec : Prop :=
  ∀ n, P11094149285481753544.a n = A061814 n

end A061814

/-! ## A061814.P1562807501044673512

`filter[A014263(n+1), A374036(#)]`
-/

namespace A061814.P1562807501044673512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A061814.P1562807501044673512

namespace A061814

/-- `filter[A014263(n+1), A374036(#)]` -/
def P1562807501044673512.Spec : Prop :=
  ∀ n, P1562807501044673512.a n = A061814 n

end A061814

/-! ## A061814.P176898724716435214

`filter[A014263(n+1), A374045(#)]`
-/

namespace A061814.P176898724716435214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374045 (f1 j).toNat = 1) n)

end

end A061814.P176898724716435214

namespace A061814

/-- `filter[A014263(n+1), A374045(#)]` -/
def P176898724716435214.Spec : Prop :=
  ∀ n, P176898724716435214.a n = A061814 n

end A061814

/-! ## A061814.P10739660679676095392

`filter[A024657(n), A121262(#)]`
-/

namespace A061814.P10739660679676095392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A061814.P10739660679676095392

namespace A061814

/-- `filter[A024657(n), A121262(#)]` -/
def P10739660679676095392.Spec : Prop :=
  ∀ n, P10739660679676095392.a n = A061814 n

end A061814

/-! ## A061814.P166604476434879716

`filter[A014263(n+1), A121262(#)]`
-/

namespace A061814.P166604476434879716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A061814.P166604476434879716

namespace A061814

/-- `filter[A014263(n+1), A121262(#)]` -/
def P166604476434879716.Spec : Prop :=
  ∀ n, P166604476434879716.a n = A061814 n

end A061814

/-! ## A061814.P15204475739773495646

`filter[A014263(n+1), A152822(#)]`
-/

namespace A061814.P15204475739773495646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A061814.P15204475739773495646

namespace A061814

/-- `filter[A014263(n+1), A152822(#)]` -/
def P15204475739773495646.Spec : Prop :=
  ∀ n, P15204475739773495646.a n = A061814 n

end A061814

/-! ## A061814.P17247855400614243163

`filter[A059708(n+1), A121262(#)]`
-/

namespace A061814.P17247855400614243163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A061814.P17247855400614243163

namespace A061814

/-- `filter[A059708(n+1), A121262(#)]` -/
def P17247855400614243163.Spec : Prop :=
  ∀ n, P17247855400614243163.a n = A061814 n

end A061814

/-! ## A061814.P7227605446777999129

`filter[A014263(n+1), A353494(#)]`
-/

namespace A061814.P7227605446777999129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353494 (f1 j).toNat = 1) n)

end

end A061814.P7227605446777999129

namespace A061814

/-- `filter[A014263(n+1), A353494(#)]` -/
def P7227605446777999129.Spec : Prop :=
  ∀ n, P7227605446777999129.a n = A061814 n

end A061814

/-! ## A061814.P6870513559042417067

`filter[A024657(2*n), A152822(#)]`
-/

namespace A061814.P6870513559042417067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A061814.P6870513559042417067

namespace A061814

/-- `filter[A024657(2*n), A152822(#)]` -/
def P6870513559042417067.Spec : Prop :=
  ∀ n, P6870513559042417067.a n = A061814 n

end A061814

/-! ## A061814.P12784300550382134266

`filter[A024657(2*n), A353494(#)]`
-/

namespace A061814.P12784300550382134266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353494 (f1 j).toNat = 1) n)

end

end A061814.P12784300550382134266

namespace A061814

/-- `filter[A024657(2*n), A353494(#)]` -/
def P12784300550382134266.Spec : Prop :=
  ∀ n, P12784300550382134266.a n = A061814 n

end A061814

/-! ## A061814.P5088807406756714304

`∩[A008586(n), A024657(n)]`
-/

namespace A061814.P5088807406756714304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061814.P5088807406756714304

namespace A061814

/-- `∩[A008586(n), A024657(n)]` -/
def P5088807406756714304.Spec : Prop :=
  ∀ n, (P5088807406756714304.a n : ℤ) = A061814 n

end A061814

/-! ## A061814.P13439303044238154088

`∩[A014263(n+1), A008586(n)]`
-/

namespace A061814.P13439303044238154088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061814.P13439303044238154088

namespace A061814

/-- `∩[A014263(n+1), A008586(n)]` -/
def P13439303044238154088.Spec : Prop :=
  ∀ n, (P13439303044238154088.a n : ℤ) = A061814 n

end A061814

/-! ## A061814.P11094889611132096068

`∩[A059708(n+1), A008586(n)]`
-/

namespace A061814.P11094889611132096068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061814.P11094889611132096068

namespace A061814

/-- `∩[A059708(n+1), A008586(n)]` -/
def P11094889611132096068.Spec : Prop :=
  ∀ n, (P11094889611132096068.a n : ℤ) = A061814 n

end A061814

/-! ## A061814.P2132772934387550632

`∩[2*A007091(n), A008586(n)]`
-/

namespace A061814.P2132772934387550632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061814.P2132772934387550632

namespace A061814

/-- `∩[2*A007091(n), A008586(n)]` -/
def P2132772934387550632.Spec : Prop :=
  ∀ n, (P2132772934387550632.a n : ℤ) = A061814 n

end A061814

/-!
# A061815: G.f. A(x) satisfies A(x) = 1+Sum_{j=0 to infinity} ((1 + x^(j+1)*A(x))^a_j-1).

The programs for A061815, there is no canonical definition to state claims against.
-/

/-! ## A061815.P11634986192372764350

`A058348(A190552(n+1))+A000108(n)`
-/

namespace A061815.P11634986192372764350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058348 (A190552 (n + 1)).toNat + A000108 n

end

end A061815.P11634986192372764350

/-! ## A061815.P15159942592743749774

`A249870(A001419(n+1))+A000108(n)`
-/

namespace A061815.P15159942592743749774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249870 (A001419 (n + 1)).toNat + A000108 n

end

end A061815.P15159942592743749774

/-! ## A061815.P17281093196177936005

`A058348(A287568(n+1))+A000108(n)`
-/

namespace A061815.P17281093196177936005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058348 (A287568 (n + 1)).toNat + A000108 n

end

end A061815.P17281093196177936005

/-! ## A061815.P16479807158170390482

`A076277(A054499(n))+A000108(n)`
-/

namespace A061815.P16479807158170390482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076277 (A054499 n).toNat + A000108 n

end

end A061815.P16479807158170390482

/-!
# A061816: Obtain m by omitting trailing zeros from n (cf. A004151); a(n) = smallest multiple k*m which is a palindrome.

The programs for A061816, there is no canonical definition to state claims against.
-/

/-! ## A061816.P12634057126724549428

`A020485(A004086(A004086(n)))`
-/

namespace A061816.P12634057126724549428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (A004086 (A004086 n).toNat).toNat

end

end A061816.P12634057126724549428

/-! ## A061816.P12786631726714982196

`A004086(A004086(n))*A061906(n)`
-/

namespace A061816.P12786631726714982196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004086 n).toNat * A061906 n

end

end A061816.P12786631726714982196

/-! ## A061816.P18022345399578230193

`(A050782(n)+A014029(n²))*A004086(A004086(n))`
-/

namespace A061816.P18022345399578230193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A050782 n + A014029 (n ^ 2)) * A004086 (A004086 n).toNat

end

end A061816.P18022345399578230193

/-! ## A061816.P17439717156785394079

`A004086(A004086(n))*A065033(2*A050782(n))`
-/

namespace A061816.P17439717156785394079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004086 n).toNat * A065033 (2 * A050782 n).toNat

end

end A061816.P17439717156785394079

/-! ## A061816.P12392387973137017086

`A004086(n*A061906(n))`
-/

namespace A061816.P12392387973137017086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ((n : ℤ) * A061906 n).toNat

end

end A061816.P12392387973137017086

/-! ## A061816.P3160214933318435209

`A004086(n*∏{d}[A050782(n), A014963(#)])`
-/

namespace A061816.P3160214933318435209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ((n : ℤ) * (∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d)).toNat

end

end A061816.P3160214933318435209

/-! ## A061816.P5818566231561733889

`A004086(n*(A050782(n)+A014029(n²)))`
-/

namespace A061816.P5818566231561733889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ((n : ℤ) * (A050782 n + A014029 (n ^ 2))).toNat

end

end A061816.P5818566231561733889

/-! ## A061816.P2411193723103682630

`A047813(n*A061906(n))`
-/

namespace A061816.P2411193723103682630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 ((n : ℤ) * A061906 n).toNat

end

end A061816.P2411193723103682630

/-! ## A061816.P1414812925382385418

`A261423(or(A020485(n), A047813(n)))`
-/

namespace A061816.P1414812925382385418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (Int.lor (A020485 n) (A047813 n)).toNat

end

end A061816.P1414812925382385418

/-! ## A061816.P9704583252849661376

`A261423(or(A020485(n), A064834(n)))`
-/

namespace A061816.P9704583252849661376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (Int.lor (A020485 n) (A064834 n)).toNat

end

end A061816.P9704583252849661376

/-!
# A061817: Multiples of 9 containing only odd digits.

The programs for A061817, the canonical program `A061817.P6788841023954008319` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061817 has offset 1).

The definition of A061817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061817.P6788841023954008319

`filter[A061810(n+1), A359430(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A061817

/-- `filter[A061810(n+1), A359430(#)]` -/
def P6788841023954008319.Spec : Prop :=
  ∀ n, P6788841023954008319.a n = A061817 (n + 1)

theorem P6788841023954008319.correct : P6788841023954008319.Spec := by
  intro n
  simp only [A061817, Nat.add_sub_cancel]

end A061817

/-! ## A061817.P12823061415263305398

`filter[A061810(n+1), A366289(#)]`
-/

namespace A061817.P12823061415263305398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A061817.P12823061415263305398

namespace A061817

/-- `filter[A061810(n+1), A366289(#)]` -/
def P12823061415263305398.Spec : Prop :=
  ∀ n, P12823061415263305398.a n = A061817 (n + 1)

end A061817

/-! ## A061817.P16461623069518315814

`filter[A061810(n+1), A373991(#)]`
-/

namespace A061817.P16461623069518315814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373991 (f1 j).toNat = 1) n)

end

end A061817.P16461623069518315814

namespace A061817

/-- `filter[A061810(n+1), A373991(#)]` -/
def P16461623069518315814.Spec : Prop :=
  ∀ n, P16461623069518315814.a n = A061817 (n + 1)

end A061817

/-! ## A061817.P4492246632144473102

`filter[A061810(n+1), A374039(#)]`
-/

namespace A061817.P4492246632144473102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374039 (f1 j).toNat = 1) n)

end

end A061817.P4492246632144473102

namespace A061817

/-- `filter[A061810(n+1), A374039(#)]` -/
def P4492246632144473102.Spec : Prop :=
  ∀ n, P4492246632144473102.a n = A061817 (n + 1)

end A061817

/-! ## A061817.P7958257828547438806

`filter[A061810(n+1), A374117(#)]`
-/

namespace A061817.P7958257828547438806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374117 (f1 j).toNat = 1) n)

end

end A061817.P7958257828547438806

namespace A061817

/-- `filter[A061810(n+1), A374117(#)]` -/
def P7958257828547438806.Spec : Prop :=
  ∀ n, P7958257828547438806.a n = A061817 (n + 1)

end A061817

/-! ## A061817.P9346073956229844382

`filter[A061810(n+1), A374121(#)]`
-/

namespace A061817.P9346073956229844382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374121 (f1 j).toNat = 1) n)

end

end A061817.P9346073956229844382

namespace A061817

/-- `filter[A061810(n+1), A374121(#)]` -/
def P9346073956229844382.Spec : Prop :=
  ∀ n, P9346073956229844382.a n = A061817 (n + 1)

end A061817

/-! ## A061817.P1616677115241040082

`filter[A320062(n+1), A366289(#)]`
-/

namespace A061817.P1616677115241040082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A061817.P1616677115241040082

namespace A061817

/-- `filter[A320062(n+1), A366289(#)]` -/
def P1616677115241040082.Spec : Prop :=
  ∀ n, P1616677115241040082.a n = A061817 (n + 1)

end A061817

/-! ## A061817.P1167831507441539096

`∩[A014261(n+1), A008591(n)]`
-/

namespace A061817.P1167831507441539096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061817.P1167831507441539096

namespace A061817

/-- `∩[A014261(n+1), A008591(n)]` -/
def P1167831507441539096.Spec : Prop :=
  ∀ n, (P1167831507441539096.a n : ℤ) = A061817 (n + 1)

end A061817

/-! ## A061817.P11301606683016460785

`∩[A061810(n+1), A008591(n)]`
-/

namespace A061817.P11301606683016460785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061817.P11301606683016460785

namespace A061817

/-- `∩[A061810(n+1), A008591(n)]` -/
def P11301606683016460785.Spec : Prop :=
  ∀ n, (P11301606683016460785.a n : ℤ) = A061817 (n + 1)

end A061817

/-! ## A061817.P6692523903526414491

`∩[A320062(n+1), A008591(n)]`
-/

namespace A061817.P6692523903526414491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061817.P6692523903526414491

namespace A061817

/-- `∩[A320062(n+1), A008591(n)]` -/
def P6692523903526414491.Spec : Prop :=
  ∀ n, (P6692523903526414491.a n : ℤ) = A061817 (n + 1)

end A061817

/-! ## A061817.P11578131540661272915

`filter[A228096(n+1), A366289(#)]`
-/

namespace A061817.P11578131540661272915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A061817.P11578131540661272915

namespace A061817

/-- `filter[A228096(n+1), A366289(#)]` -/
def P11578131540661272915.Spec : Prop :=
  ∀ n, P11578131540661272915.a n = A061817 (n + 1)

end A061817

/-! ## A061817.P12873864648546395737

`filter[A061810(n+1), A319710(#)]`
-/

namespace A061817.P12873864648546395737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A061817.P12873864648546395737

namespace A061817

/-- `filter[A061810(n+1), A319710(#)]` -/
def P12873864648546395737.Spec : Prop :=
  ∀ n, P12873864648546395737.a n = A061817 (n + 1)

end A061817

/-! ## A061817.P15732822362238650739

`∩[A061810(n+1), A301291(n)]`
-/

namespace A061817.P15732822362238650739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061817.P15732822362238650739

namespace A061817

/-- `∩[A061810(n+1), A301291(n)]` -/
def P15732822362238650739.Spec : Prop :=
  ∀ n, (P15732822362238650739.a n : ℤ) = A061817 (n + 1)

end A061817

/-! ## A061817.P15990474993162680147

`∩[A061810(n+1), A301293(n)]`
-/

namespace A061817.P15990474993162680147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061817.P15990474993162680147

namespace A061817

/-- `∩[A061810(n+1), A301293(n)]` -/
def P15990474993162680147.Spec : Prop :=
  ∀ n, (P15990474993162680147.a n : ℤ) = A061817 (n + 1)

end A061817

/-! ## A061817.P9822836457298035678

`∩[A061810(n+1), A312909(n)]`
-/

namespace A061817.P9822836457298035678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312909 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061817.P9822836457298035678

namespace A061817

/-- `∩[A061810(n+1), A312909(n)]` -/
def P9822836457298035678.Spec : Prop :=
  ∀ n, (P9822836457298035678.a n : ℤ) = A061817 (n + 1)

end A061817

/-! ## A061817.P7332252453993946049

`∩[A061810(n+1), A312933(n)]`
-/

namespace A061817.P7332252453993946049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061817.P7332252453993946049

namespace A061817

/-- `∩[A061810(n+1), A312933(n)]` -/
def P7332252453993946049.Spec : Prop :=
  ∀ n, (P7332252453993946049.a n : ℤ) = A061817 (n + 1)

end A061817

/-! ## A061817.P15058625459869106119

`∩[A061810(n+1), A312941(n)]`
-/

namespace A061817.P15058625459869106119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312941 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061817.P15058625459869106119

namespace A061817

/-- `∩[A061810(n+1), A312941(n)]` -/
def P15058625459869106119.Spec : Prop :=
  ∀ n, (P15058625459869106119.a n : ℤ) = A061817 (n + 1)

end A061817

/-! ## A061817.P9535188013187636075

`∩[A061810(n+1), A312943(n)]`
-/

namespace A061817.P9535188013187636075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061817.P9535188013187636075

namespace A061817

/-- `∩[A061810(n+1), A312943(n)]` -/
def P9535188013187636075.Spec : Prop :=
  ∀ n, (P9535188013187636075.a n : ℤ) = A061817 (n + 1)

end A061817

/-! ## A061817.P4132404679905256383

`∩[A061810(n+1), A312969(n)]`
-/

namespace A061817.P4132404679905256383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312969 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061817.P4132404679905256383

namespace A061817

/-- `∩[A061810(n+1), A312969(n)]` -/
def P4132404679905256383.Spec : Prop :=
  ∀ n, (P4132404679905256383.a n : ℤ) = A061817 (n + 1)

end A061817

/-! ## A061817.P16361568769310184699

`∩[A061810(n+1), A090570(n+1)]`
-/

namespace A061817.P16361568769310184699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061817.P16361568769310184699

namespace A061817

/-- `∩[A061810(n+1), A090570(n+1)]` -/
def P16361568769310184699.Spec : Prop :=
  ∀ n, (P16361568769310184699.a n : ℤ) = A061817 (n + 1)

end A061817

/-!
# A061818: Multiples of 2 containing only digits 0,1,2.

The programs for A061818, the canonical program `A061818.P6164946506137872965` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061818 has offset 0).

The definition of A061818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061818.P16548159159477065823

`A007089(ceil(3*n/2))`
-/

namespace A061818.P16548159159477065823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 ⌈3 * ((n : ℚ) / 2)⌉.toNat

end

end A061818.P16548159159477065823

namespace A061818

/-- `A007089(ceil(3*n/2))` -/
def P16548159159477065823.Spec : Prop :=
  ∀ n, P16548159159477065823.a n = A061818 n

end A061818

/-! ## A061818.P14313806250140550139

`record[A007089(n*A204418(n))]`
-/

namespace A061818.P14313806250140550139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 ((n : ℤ) * A204418 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061818.P14313806250140550139

namespace A061818

/-- `record[A007089(n*A204418(n))]` -/
def P14313806250140550139.Spec : Prop :=
  ∀ n, P14313806250140550139.a n = A061818 n

end A061818

/-! ## A061818.P16517230965798809366

`A007089(A032766(n))+n%2`
-/

namespace A061818.P16517230965798809366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A032766 n).toNat + ((n % 2 : ℕ) : ℤ)

end

end A061818.P16517230965798809366

namespace A061818

/-- `A007089(A032766(n))+n%2` -/
def P16517230965798809366.Spec : Prop :=
  ∀ n, P16517230965798809366.a n = A061818 n

end A061818

/-! ## A061818.P4113543602875434807

`record[A049347(n+2)+A007089(n)]`
-/

namespace A061818.P4113543602875434807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (n + 2) + A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061818.P4113543602875434807

namespace A061818

/-- `record[A049347(n+2)+A007089(n)]` -/
def P4113543602875434807.Spec : Prop :=
  ∀ n, P4113543602875434807.a n = A061818 n

end A061818

/-! ## A061818.P16643843590393913905

`record[A007089(n+1)*A011655(n)]`
-/

namespace A061818.P16643843590393913905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (n + 1) * A011655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061818.P16643843590393913905

namespace A061818

/-- `record[A007089(n+1)*A011655(n)]` -/
def P16643843590393913905.Spec : Prop :=
  ∀ n, P16643843590393913905.a n = A061818 n

end A061818

/-! ## A061818.P10608032820794225282

`record[A007089(n)*A061347(n+2)]`
-/

namespace A061818.P10608032820794225282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n * A061347 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061818.P10608032820794225282

namespace A061818

/-- `record[A007089(n)*A061347(n+2)]` -/
def P10608032820794225282.Spec : Prop :=
  ∀ n, P10608032820794225282.a n = A061818 n

end A061818

/-! ## A061818.P1511239676984437622

`∪[A007089(3*n+2), A007089(3*n)]`
-/

namespace A061818.P1511239676984437622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (3 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A061818.P1511239676984437622

namespace A061818

/-- `∪[A007089(3*n+2), A007089(3*n)]` -/
def P1511239676984437622.Spec : Prop :=
  ∀ n, (P1511239676984437622.a n : ℤ) = A061818 n

end A061818

/-! ## A061818.P7551854233857487464

`A007089(A001651(n+1))-A059841(n)`
-/

namespace A061818.P7551854233857487464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A001651 (n + 1)).toNat - A059841 n

end

end A061818.P7551854233857487464

namespace A061818

/-- `A007089(A001651(n+1))-A059841(n)` -/
def P7551854233857487464.Spec : Prop :=
  ∀ n, P7551854233857487464.a n = A061818 n

end A061818

/-! ## A061818.P17875111189535300792

`A007089(A007494(n))%A228888(n+1)`
-/

namespace A061818.P17875111189535300792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007089 (A007494 n).toNat) (A228888 (n + 1))

end

end A061818.P17875111189535300792

namespace A061818

/-- `A007089(A007494(n))%A228888(n+1)` -/
def P17875111189535300792.Spec : Prop :=
  ∀ n, P17875111189535300792.a n = A061818 n

end A061818

/-! ## A061818.P6164946506137872965

`ceil(A024635(3*n)/2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061818

/-- `ceil(A024635(3*n)/2)` -/
def P6164946506137872965.Spec : Prop :=
  ∀ n, P6164946506137872965.a n = A061818 n

theorem P6164946506137872965.correct : P6164946506137872965.Spec := by
  intro n
  simp only [A061818]

end A061818

/-! ## A061818.P11802384830720470172

`record[A024635(2*n)/2*A097325(2*(n+2))]`
-/

namespace A061818.P11802384830720470172
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024635 (2 * n) : ℚ) / 2 * (A097325 (2 * (n + 2)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061818.P11802384830720470172

namespace A061818

/-- `record[A024635(2*n)/2*A097325(2*(n+2))]` -/
def P11802384830720470172.Spec : Prop :=
  ∀ n, P11802384830720470172.a n = (A061818 n : ℚ)

end A061818

/-! ## A061818.P12257046209844434778

`record[A007089(A138670(n)-A032766(n))]`
-/

namespace A061818.P12257046209844434778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A138670 n - A032766 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061818.P12257046209844434778

namespace A061818

/-- `record[A007089(A138670(n)-A032766(n))]` -/
def P12257046209844434778.Spec : Prop :=
  ∀ n, P12257046209844434778.a n = A061818 n

end A061818

/-! ## A061818.P6264042358228390360

`record[A024651(3*n)/3*A097325(2*(n+2))]`
-/

namespace A061818.P6264042358228390360
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024651 (3 * n) : ℚ) / 3 * (A097325 (2 * (n + 2)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061818.P6264042358228390360

namespace A061818

/-- `record[A024651(3*n)/3*A097325(2*(n+2))]` -/
def P6264042358228390360.Spec : Prop :=
  ∀ n, P6264042358228390360.a n = (A061818 n : ℚ)

end A061818

/-! ## A061818.P143210973484402733

`record[gcd(A007090(2*n), A292373(2*n))]`
-/

namespace A061818.P143210973484402733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007090 (2 * n)) (A292373 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061818.P143210973484402733

namespace A061818

/-- `record[gcd(A007090(2*n), A292373(2*n))]` -/
def P143210973484402733.Spec : Prop :=
  ∀ n, (P143210973484402733.a n : ℤ) = A061818 n

end A061818

/-! ## A061818.P3736137462014729731

`2*eq[1, A181061(2*n)]`
-/

namespace A061818.P3736137462014729731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181061 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061818.P3736137462014729731

namespace A061818

/-- `2*eq[1, A181061(2*n)]` -/
def P3736137462014729731.Spec : Prop :=
  ∀ n, (P3736137462014729731.a n : ℤ) = A061818 n

end A061818

/-! ## A061818.P15103028627120967696

`∩[A007089(n), A047215(n)]`
-/

namespace A061818.P15103028627120967696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061818.P15103028627120967696

namespace A061818

/-- `∩[A007089(n), A047215(n)]` -/
def P15103028627120967696.Spec : Prop :=
  ∀ n, (P15103028627120967696.a n : ℤ) = A061818 n

end A061818

/-! ## A061818.P13137681030279850435

`∩[A007089(n), A100530(n)]`
-/

namespace A061818.P13137681030279850435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100530 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061818.P13137681030279850435

namespace A061818

/-- `∩[A007089(n), A100530(n)]` -/
def P13137681030279850435.Spec : Prop :=
  ∀ n, (P13137681030279850435.a n : ℤ) = A061818 n

end A061818

/-! ## A061818.P7971863125345994085

`∩[A005843(n), A007089(n)]`
-/

namespace A061818.P7971863125345994085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061818.P7971863125345994085

namespace A061818

/-- `∩[A005843(n), A007089(n)]` -/
def P7971863125345994085.Spec : Prop :=
  ∀ n, (P7971863125345994085.a n : ℤ) = A061818 n

end A061818

/-! ## A061818.P10813502500828759237

`∩[A047203(n+1), A007089(n)]`
-/

namespace A061818.P10813502500828759237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061818.P10813502500828759237

namespace A061818

/-- `∩[A047203(n+1), A007089(n)]` -/
def P10813502500828759237.Spec : Prop :=
  ∀ n, (P10813502500828759237.a n : ℤ) = A061818 n

end A061818

/-! ## A061818.P15244720747119152783

`∩[A047212(n+1), A007089(n)]`
-/

namespace A061818.P15244720747119152783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061818.P15244720747119152783

namespace A061818

/-- `∩[A047212(n+1), A007089(n)]` -/
def P15244720747119152783.Spec : Prop :=
  ∀ n, (P15244720747119152783.a n : ℤ) = A061818 n

end A061818

/-!
# A061819: Multiples of 3 containing only digits 0,1,2,3.

The programs for A061819, the canonical program `A061819.P9298517690584947382` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061819 has offset 1).

The definition of A061819 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007090, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A061819.P9298517690584947382

`A007090(3*n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061819

/-- `A007090(3*n)` -/
def P9298517690584947382.Spec : Prop :=
  ∀ n, P9298517690584947382.a n = A061819 (n + 1)

theorem P9298517690584947382.correct : P9298517690584947382.Spec := by
  intro n
  simp only [A061819, Nat.add_sub_cancel]

end A061819

/-! ## A061819.P2402494012661884774

`lcm(3, A007090(eq[n, lcm(3, n)]))`
-/

namespace A061819.P2402494012661884774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A007090 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n))

end

end A061819.P2402494012661884774

namespace A061819

/-- `lcm(3, A007090(eq[n, lcm(3, n)]))` -/
def P2402494012661884774.Spec : Prop :=
  ∀ n, (P2402494012661884774.a n : ℤ) = A061819 (n + 1)

end A061819

/-! ## A061819.P3723156190055140012

`lcm(3, A007090(A008585(n)))`
-/

namespace A061819.P3723156190055140012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A007090 (A008585 n).toNat)

end

end A061819.P3723156190055140012

namespace A061819

/-- `lcm(3, A007090(A008585(n)))` -/
def P3723156190055140012.Spec : Prop :=
  ∀ n, (P3723156190055140012.a n : ℤ) = A061819 (n + 1)

end A061819

/-! ## A061819.P17294259941196544659

`record[A007090(n-A001057(n))]`
-/

namespace A061819.P17294259941196544659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 ((n : ℤ) - A001057 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061819.P17294259941196544659

namespace A061819

/-- `record[A007090(n-A001057(n))]` -/
def P17294259941196544659.Spec : Prop :=
  ∀ n, P17294259941196544659.a n = A061819 (n + 1)

end A061819

/-! ## A061819.P8643398791988724256

`record[A007090(A053737(n)+n+n)]`
-/

namespace A061819.P8643398791988724256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A053737 n + (n : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061819.P8643398791988724256

namespace A061819

/-- `record[A007090(A053737(n)+n+n)]` -/
def P8643398791988724256.Spec : Prop :=
  ∀ n, P8643398791988724256.a n = A061819 (n + 1)

end A061819

/-! ## A061819.P10505639155485240961

`∩[A007090(n), A007090(A008585(n))]`
-/

namespace A061819.P10505639155485240961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A008585 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061819.P10505639155485240961

namespace A061819

/-- `∩[A007090(n), A007090(A008585(n))]` -/
def P10505639155485240961.Spec : Prop :=
  ∀ n, (P10505639155485240961.a n : ℤ) = A061819 (n + 1)

end A061819

/-! ## A061819.P6692827047542816940

`∩[A007090(A005843(n)+n), A007090(n)]`
-/

namespace A061819.P6692827047542816940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A005843 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061819.P6692827047542816940

namespace A061819

/-- `∩[A007090(A005843(n)+n), A007090(n)]` -/
def P6692827047542816940.Spec : Prop :=
  ∀ n, (P6692827047542816940.a n : ℤ) = A061819 (n + 1)

end A061819

/-! ## A061819.P15214870274480258668

`A007090(A008585(n))^(A047838(n+2)%2)`
-/

namespace A061819.P15214870274480258668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007090 (A008585 n).toNat : ℚ) ^ (Int.tmod (A047838 (n + 2)) 2 : ℤ)

end

end A061819.P15214870274480258668

namespace A061819

/-- `A007090(A008585(n))^(A047838(n+2)%2)` -/
def P15214870274480258668.Spec : Prop :=
  ∀ n, P15214870274480258668.a n = (A061819 (n + 1) : ℚ)

end A061819

/-! ## A061819.P14913415524213526071

`A007091(A020654(3*n+1))`
-/

namespace A061819.P14913415524213526071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A020654 (3 * n + 1)).toNat

end

end A061819.P14913415524213526071

namespace A061819

/-- `A007091(A020654(3*n+1))` -/
def P14913415524213526071.Spec : Prop :=
  ∀ n, P14913415524213526071.a n = A061819 (n + 1)

end A061819

/-! ## A061819.P14289184252937456038

`A007092(A037460(3*n))`
-/

namespace A061819.P14289184252937456038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A037460 (3 * n)).toNat

end

end A061819.P14289184252937456038

namespace A061819

/-- `A007092(A037460(3*n))` -/
def P14289184252937456038.Spec : Prop :=
  ∀ n, P14289184252937456038.a n = A061819 (n + 1)

end A061819

/-! ## A061819.P15255763629532589100

`∩[A005843(n)+n, A007090(n)]`
-/

namespace A061819.P15255763629532589100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061819.P15255763629532589100

namespace A061819

/-- `∩[A005843(n)+n, A007090(n)]` -/
def P15255763629532589100.Spec : Prop :=
  ∀ n, (P15255763629532589100.a n : ℤ) = A061819 (n + 1)

end A061819

/-! ## A061819.P7672475022205087240

`A007094(A037462(3*n))`
-/

namespace A061819.P7672475022205087240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A037462 (3 * n)).toNat

end

end A061819.P7672475022205087240

namespace A061819

/-- `A007094(A037462(3*n))` -/
def P7672475022205087240.Spec : Prop :=
  ∀ n, P7672475022205087240.a n = A061819 (n + 1)

end A061819

/-! ## A061819.P12347687262281848968

`∩[A007090(n), A008585(n)]`
-/

namespace A061819.P12347687262281848968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061819.P12347687262281848968

namespace A061819

/-- `∩[A007090(n), A008585(n)]` -/
def P12347687262281848968.Spec : Prop :=
  ∀ n, (P12347687262281848968.a n : ℤ) = A061819 (n + 1)

end A061819

/-! ## A061819.P2294574821399761236

`A007095(A037463(3*n))`
-/

namespace A061819.P2294574821399761236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A037463 (3 * n)).toNat

end

end A061819.P2294574821399761236

namespace A061819

/-- `A007095(A037463(3*n))` -/
def P2294574821399761236.Spec : Prop :=
  ∀ n, P2294574821399761236.a n = A061819 (n + 1)

end A061819

/-! ## A061819.P926458950412428392

`A007090(A008585(n))%A059270(∑[n+1])`
-/

namespace A061819.P926458950412428392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007090 (A008585 n).toNat) (A059270 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A061819.P926458950412428392

namespace A061819

/-- `A007090(A008585(n))%A059270(∑[n+1])` -/
def P926458950412428392.Spec : Prop :=
  ∀ n, P926458950412428392.a n = A061819 (n + 1)

end A061819

/-!
# A061820: Multiples of 4 containing only digits 0,...,4.

The programs for A061820, the canonical program `A061820.P11905399859182740360` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061820 has offset 0).

The definition of A061820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061820.P8206607807285267337

`A007092(∩[4*n, A037465(n)])`
-/

namespace A061820.P8206607807285267337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A061820.P8206607807285267337

namespace A061820

/-- `A007092(∩[4*n, A037465(n)])` -/
def P8206607807285267337.Spec : Prop :=
  ∀ n, P8206607807285267337.a n = A061820 n

end A061820

/-! ## A061820.P11905399859182740360

`filter[A007091(n), A121262(#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061820

/-- `filter[A007091(n), A121262(#)]` -/
def P11905399859182740360.Spec : Prop :=
  ∀ n, P11905399859182740360.a n = A061820 n

theorem P11905399859182740360.correct : P11905399859182740360.Spec := by
  intro n
  simp only [A061820]

end A061820

/-! ## A061820.P108177523319273664

`∩[A007091(n), A008586(n)]`
-/

namespace A061820.P108177523319273664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061820.P108177523319273664

namespace A061820

/-- `∩[A007091(n), A008586(n)]` -/
def P108177523319273664.Spec : Prop :=
  ∀ n, (P108177523319273664.a n : ℤ) = A061820 n

end A061820

/-! ## A061820.P12303965785080815240

`filter[A135210(n+1), A121262(#)]`
-/

namespace A061820.P12303965785080815240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A061820.P12303965785080815240

namespace A061820

/-- `filter[A135210(n+1), A121262(#)]` -/
def P12303965785080815240.Spec : Prop :=
  ∀ n, P12303965785080815240.a n = A061820 n

end A061820

/-! ## A061820.P4472623145147528212

`eq[A083220(n), A374736(n)]`
-/

namespace A061820.P4472623145147528212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083220 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374736 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061820.P4472623145147528212

namespace A061820

/-- `eq[A083220(n), A374736(n)]` -/
def P4472623145147528212.Spec : Prop :=
  ∀ n, (P4472623145147528212.a n : ℤ) = A061820 n

end A061820

/-! ## A061820.P7984388087231670053

`eq[A121262(n), A374735(n)]`
-/

namespace A061820.P7984388087231670053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061820.P7984388087231670053

namespace A061820

/-- `eq[A121262(n), A374735(n)]` -/
def P7984388087231670053.Spec : Prop :=
  ∀ n, (P7984388087231670053.a n : ℤ) = A061820 n

end A061820

/-! ## A061820.P2050043291505725324

`lt[A086066(n), 2*A010153(n)]`
-/

namespace A061820.P2050043291505725324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010153 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061820.P2050043291505725324

namespace A061820

/-- `lt[A086066(n), 2*A010153(n)]` -/
def P2050043291505725324.Spec : Prop :=
  ∀ n, (P2050043291505725324.a n : ℤ) = A061820 n

end A061820

/-! ## A061820.P3069441657976174594

`record[A106747(8*n)]`
-/

namespace A061820.P3069441657976174594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061820.P3069441657976174594

namespace A061820

/-- `record[A106747(8*n)]` -/
def P3069441657976174594.Spec : Prop :=
  ∀ n, P3069441657976174594.a n = A061820 n

end A061820

/-! ## A061820.P10512134713565790948

`record[A001613(8*n)/2]`
-/

namespace A061820.P10512134713565790948
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001613 (8 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061820.P10512134713565790948

namespace A061820

/-- `record[A001613(8*n)/2]` -/
def P10512134713565790948.Spec : Prop :=
  ∀ n, P10512134713565790948.a n = (A061820 n : ℚ)

end A061820

/-! ## A061820.P4169088651250705717

`record[A059707(8*n)/2]`
-/

namespace A061820.P4169088651250705717
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059707 (8 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061820.P4169088651250705717

namespace A061820

/-- `record[A059707(8*n)/2]` -/
def P4169088651250705717.Spec : Prop :=
  ∀ n, P4169088651250705717.a n = (A061820 n : ℚ)

end A061820

/-! ## A061820.P16753196969500277358

`record[A059717(8*n)/2]`
-/

namespace A061820.P16753196969500277358
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059717 (8 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061820.P16753196969500277358

namespace A061820

/-- `record[A059717(8*n)/2]` -/
def P16753196969500277358.Spec : Prop :=
  ∀ n, P16753196969500277358.a n = (A061820 n : ℚ)

end A061820

/-! ## A061820.P17498719867824935033

`eq[A003816(n), A102675(n)]`
-/

namespace A061820.P17498719867824935033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061820.P17498719867824935033

namespace A061820

/-- `eq[A003816(n), A102675(n)]` -/
def P17498719867824935033.Spec : Prop :=
  ∀ n, (P17498719867824935033.a n : ℤ) = A061820 n

end A061820

/-! ## A061820.P8302072484412918256

`eq[A029906(n), A102675(n)]`
-/

namespace A061820.P8302072484412918256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029906 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061820.P8302072484412918256

namespace A061820

/-- `eq[A029906(n), A102675(n)]` -/
def P8302072484412918256.Spec : Prop :=
  ∀ n, (P8302072484412918256.a n : ℤ) = A061820 n

end A061820

/-! ## A061820.P9597149254216023374

`eq[A004520(n), A138893(n)]`
-/

namespace A061820.P9597149254216023374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004520 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061820.P9597149254216023374

namespace A061820

/-- `eq[A004520(n), A138893(n)]` -/
def P9597149254216023374.Spec : Prop :=
  ∀ n, (P9597149254216023374.a n : ℤ) = A061820 n

end A061820

/-! ## A061820.P4466142397218037038

`eq[A004520(n), A227043(n)]`
-/

namespace A061820.P4466142397218037038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004520 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227043 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061820.P4466142397218037038

namespace A061820

/-- `eq[A004520(n), A227043(n)]` -/
def P4466142397218037038.Spec : Prop :=
  ∀ n, (P4466142397218037038.a n : ℤ) = A061820 n

end A061820

/-! ## A061820.P9215129952911570745

`eq[A083220(n), A167831(n)]`
-/

namespace A061820.P9215129952911570745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083220 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061820.P9215129952911570745

namespace A061820

/-- `eq[A083220(n), A167831(n)]` -/
def P9215129952911570745.Spec : Prop :=
  ∀ n, (P9215129952911570745.a n : ℤ) = A061820 n

end A061820

/-! ## A061820.P8873165447809213999

`eq[A004520(n), A247555(n)]`
-/

namespace A061820.P8873165447809213999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004520 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247555 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061820.P8873165447809213999

namespace A061820

/-- `eq[A004520(n), A247555(n)]` -/
def P8873165447809213999.Spec : Prop :=
  ∀ n, (P8873165447809213999.a n : ℤ) = A061820 n

end A061820

/-!
# A061821: Multiples of 5 containing only digits 0,...,5.

The programs for A061821, there is no canonical definition to state claims against.
-/

/-! ## A061821.P10503083595954865195

`xor(1, A007092(3*n+1))`
-/

namespace A061821.P10503083595954865195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A007092 (3 * n + 1))

end

end A061821.P10503083595954865195

/-! ## A061821.P16275950419449492786

`A007092(and(1, n)+3*n)+n%2`
-/

namespace A061821.P16275950419449492786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (Nat.land 1 n + 3 * n) + ((n % 2 : ℕ) : ℤ)

end

end A061821.P16275950419449492786

/-! ## A061821.P14822071870059079580

`A007092(3*n+1)-A033999(n)`
-/

namespace A061821.P14822071870059079580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (3 * n + 1) - A033999 n

end

end A061821.P14822071870059079580

/-! ## A061821.P14319594130287089209

`A010873(2*n)+A007092(3*n)`
-/

namespace A061821.P14319594130287089209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (2 * n) + A007092 (3 * n)

end

end A061821.P14319594130287089209

/-! ## A061821.P11064766176611966931

`A033999(n+1)+A007092(3*n+1)`
-/

namespace A061821.P11064766176611966931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + A007092 (3 * n + 1)

end

end A061821.P11064766176611966931

/-! ## A061821.P12616287705860414833

`∩[5*n, A007092(n)]`
-/

namespace A061821.P12616287705860414833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061821.P12616287705860414833

/-! ## A061821.P4835557353861597397

`A007092(Δ[or(1, n)]+3*n)`
-/

namespace A061821.P4835557353861597397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (3 * n : ℤ)).toNat

end

end A061821.P4835557353861597397

/-! ## A061821.P4797600594010048365

`A007092(or(1, 4*n)-xor(1, n))`
-/

namespace A061821.P4797600594010048365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (Nat.lor 1 (4 * n) - Nat.xor 1 n)

end

end A061821.P4797600594010048365

/-! ## A061821.P9481654395520000525

`A007092(lt[or(5, n-1), n]-n)`
-/

namespace A061821.P9481654395520000525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 5 ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - n)

end

end A061821.P9481654395520000525

/-! ## A061821.P7591135538895241214

`A007092(3*n+1-(-1)^n)`
-/

namespace A061821.P7591135538895241214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 ((3 * n + 1 : ℤ) - (-1) ^ n).toNat

end

end A061821.P7591135538895241214

/-! ## A061821.P11840439414403811617

`∩[A007092(n), A008587(n)]`
-/

namespace A061821.P11840439414403811617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061821.P11840439414403811617

/-! ## A061821.P10128805307129492872

`filter[A007092(n), A079998(#)]`
-/

namespace A061821.P10128805307129492872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A061821.P10128805307129492872

/-! ## A061821.P13636675484707791997

`eq[A091703(n), A102677(n)]`
-/

namespace A061821.P13636675484707791997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061821.P13636675484707791997

/-!
# A061822: Multiples of 6 containing only digits 0,...,6.

The programs for A061822, the canonical program `A061822.P14191674865630563291` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061822 has offset 0).

The definition of A061822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1905 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061822.P17117749656225786780

`∩[6*n, A007093(n)]`
-/

namespace A061822.P17117749656225786780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061822.P17117749656225786780

namespace A061822

/-- `∩[6*n, A007093(n)]` -/
def P17117749656225786780.Spec : Prop :=
  ∀ n, (P17117749656225786780.a n : ℤ) = A061822 n

end A061822

/-! ## A061822.P14191674865630563291

`filter[A007093(n), A079979(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A061822

/-- `filter[A007093(n), A079979(#)]` -/
def P14191674865630563291.Spec : Prop :=
  ∀ n, P14191674865630563291.a n = A061822 n

theorem P14191674865630563291.correct : P14191674865630563291.Spec := by
  intro n
  simp only [A061822]

end A061822

/-! ## A061822.P921600287683532597

`∩[A007093(n), A008588(n)]`
-/

namespace A061822.P921600287683532597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061822.P921600287683532597

namespace A061822

/-- `∩[A007093(n), A008588(n)]` -/
def P921600287683532597.Spec : Prop :=
  ∀ n, (P921600287683532597.a n : ℤ) = A061822 n

end A061822

/-! ## A061822.P13432416056863100169

`A007093(3*A047285(n+1))`
-/

namespace A061822.P13432416056863100169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (3 * A047285 (n + 1)).toNat

end

end A061822.P13432416056863100169

namespace A061822

/-- `A007093(3*A047285(n+1))` -/
def P13432416056863100169.Spec : Prop :=
  ∀ n, P13432416056863100169.a n = A061822 n

end A061822

/-! ## A061822.P17451138928436835950

`A007093(3*(A187321(n+1)+n))`
-/

namespace A061822.P17451138928436835950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (3 * (A187321 (n + 1) + (n : ℤ))).toNat

end

end A061822.P17451138928436835950

namespace A061822

/-- `A007093(3*(A187321(n+1)+n))` -/
def P17451138928436835950.Spec : Prop :=
  ∀ n, P17451138928436835950.a n = A061822 n

end A061822

/-! ## A061822.P6437595688289628704

`eq[A102679(n), A110666(n)]`
-/

namespace A061822.P6437595688289628704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110666 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061822.P6437595688289628704

namespace A061822

/-- `eq[A102679(n), A110666(n)]` -/
def P6437595688289628704.Spec : Prop :=
  ∀ n, (P6437595688289628704.a n : ℤ) = A061822 n

end A061822

/-! ## A061822.P1563115962062465463

`record[A038608(A007093(3*n))]`
-/

namespace A061822.P1563115962062465463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A007093 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061822.P1563115962062465463

namespace A061822

/-- `record[A038608(A007093(3*n))]` -/
def P1563115962062465463.Spec : Prop :=
  ∀ n, P1563115962062465463.a n = A061822 n

end A061822

/-! ## A061822.P14010135997016009550

`filter[A007093(3*n), A059841(#)]`
-/

namespace A061822.P14010135997016009550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A061822.P14010135997016009550

namespace A061822

/-- `filter[A007093(3*n), A059841(#)]` -/
def P14010135997016009550.Spec : Prop :=
  ∀ n, P14010135997016009550.a n = A061822 n

end A061822

/-! ## A061822.P10389623134035043835

`filter[A007093(3*n), A088911(#)]`
-/

namespace A061822.P10389623134035043835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088911 (f1 j).toNat = 1) n)

end

end A061822.P10389623134035043835

namespace A061822

/-- `filter[A007093(3*n), A088911(#)]` -/
def P10389623134035043835.Spec : Prop :=
  ∀ n, P10389623134035043835.a n = A061822 n

end A061822

/-! ## A061822.P15454785664677958712

`filter[A007093(3*n), A232991(#)]`
-/

namespace A061822.P15454785664677958712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232991 (f1 j).toNat = 1) n)

end

end A061822.P15454785664677958712

namespace A061822

/-- `filter[A007093(3*n), A232991(#)]` -/
def P15454785664677958712.Spec : Prop :=
  ∀ n, P15454785664677958712.a n = A061822 n

end A061822

/-! ## A061822.P15661991190428713272

`filter[A007093(3*n), A266591(#)]`
-/

namespace A061822.P15661991190428713272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A061822.P15661991190428713272

namespace A061822

/-- `filter[A007093(3*n), A266591(#)]` -/
def P15661991190428713272.Spec : Prop :=
  ∀ n, P15661991190428713272.a n = A061822 n

end A061822

/-! ## A061822.P14763692968894299865

`filter[A007093(3*n), A267043(#)]`
-/

namespace A061822.P14763692968894299865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A061822.P14763692968894299865

namespace A061822

/-- `filter[A007093(3*n), A267043(#)]` -/
def P14763692968894299865.Spec : Prop :=
  ∀ n, P14763692968894299865.a n = A061822 n

end A061822

/-! ## A061822.P3524479039707840718

`record[A237420(A007093(3*(n+1)))]`
-/

namespace A061822.P3524479039707840718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 (A007093 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061822.P3524479039707840718

namespace A061822

/-- `record[A237420(A007093(3*(n+1)))]` -/
def P3524479039707840718.Spec : Prop :=
  ∀ n, P3524479039707840718.a n = A061822 n

end A061822

/-! ## A061822.P11859476468244439405

`record[A153733(A007093(A008486(n)))]`
-/

namespace A061822.P11859476468244439405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (A007093 (A008486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061822.P11859476468244439405

namespace A061822

/-- `record[A153733(A007093(A008486(n)))]` -/
def P11859476468244439405.Spec : Prop :=
  ∀ n, P11859476468244439405.a n = A061822 n

end A061822

/-!
# A061823: Multiples of 7 containing only digits 0,...,7.

The programs for A061823, the canonical program `A061823.P1878343261154301216` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061823 has offset 1).

The definition of A061823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061823.P1878343261154301216

`∩[A007094(n), A008589(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061823

/-- `∩[A007094(n), A008589(n)]` -/
def P1878343261154301216.Spec : Prop :=
  ∀ n, (P1878343261154301216.a n : ℤ) = A061823 (n + 1)

theorem P1878343261154301216.correct : P1878343261154301216.Spec := by
  intro n
  simp only [A061823, Nat.add_sub_cancel]

end A061823

/-! ## A061823.P10651928749972936042

`eq[lcm(7, n), A222254(n)]`
-/

namespace A061823.P10651928749972936042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 7 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061823.P10651928749972936042

namespace A061823

/-- `eq[lcm(7, n), A222254(n)]` -/
def P10651928749972936042.Spec : Prop :=
  ∀ n, (P10651928749972936042.a n : ℤ) = A061823 (n + 1)

end A061823

/-! ## A061823.P2531680729031542968

`eq[A109048(n), A222254(n)]`
-/

namespace A061823.P2531680729031542968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109048 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061823.P2531680729031542968

namespace A061823

/-- `eq[A109048(n), A222254(n)]` -/
def P2531680729031542968.Spec : Prop :=
  ∀ n, (P2531680729031542968.a n : ℤ) = A061823 (n + 1)

end A061823

/-! ## A061823.P346468133569529719

`record[A004184(A004183(7*n))]`
-/

namespace A061823.P346468133569529719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A004183 (7 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061823.P346468133569529719

namespace A061823

/-- `record[A004184(A004183(7*n))]` -/
def P346468133569529719.Spec : Prop :=
  ∀ n, P346468133569529719.a n = A061823 (n + 1)

end A061823

/-! ## A061823.P9365804024297842804

`A007094(eq[1, A014016(A007094(n))])`
-/

namespace A061823.P9365804024297842804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014016 (A007094 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061823.P9365804024297842804

namespace A061823

/-- `A007094(eq[1, A014016(A007094(n))])` -/
def P9365804024297842804.Spec : Prop :=
  ∀ n, P9365804024297842804.a n = A061823 (n + 1)

end A061823

/-! ## A061823.P5418927758937617009

`eq[A102681(n), A265525(A007093(n))]`
-/

namespace A061823.P5418927758937617009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061823.P5418927758937617009

namespace A061823

/-- `eq[A102681(n), A265525(A007093(n))]` -/
def P5418927758937617009.Spec : Prop :=
  ∀ n, (P5418927758937617009.a n : ℤ) = A061823 (n + 1)

end A061823

/-!
# A061824: Multiples of 8 containing only the digits 0, ..., 8.

The programs for A061824, the canonical program `A061824.P7099681490639419618` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061824 has offset 1).

The definition of A061824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1427 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061824.P7099681490639419618

`∩[8*n, A007095(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061824

/-- `∩[8*n, A007095(n)]` -/
def P7099681490639419618.Spec : Prop :=
  ∀ n, (P7099681490639419618.a n : ℤ) = A061824 (n + 1)

theorem P7099681490639419618.correct : P7099681490639419618.Spec := by
  intro n
  simp only [A061824, Nat.add_sub_cancel]

end A061824

/-! ## A061824.P2883482260238067120

`∩[A007095(n), A008590(n)]`
-/

namespace A061824.P2883482260238067120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061824.P2883482260238067120

namespace A061824

/-- `∩[A007095(n), A008590(n)]` -/
def P2883482260238067120.Spec : Prop :=
  ∀ n, (P2883482260238067120.a n : ℤ) = A061824 (n + 1)

end A061824

/-! ## A061824.P11723021807046819344

`record[A004184(8*n)]`
-/

namespace A061824.P11723021807046819344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061824.P11723021807046819344

namespace A061824

/-- `record[A004184(8*n)]` -/
def P11723021807046819344.Spec : Prop :=
  ∀ n, P11723021807046819344.a n = A061824 (n + 1)

end A061824

/-! ## A061824.P7407953339061187991

`eq[n, A109049(A004184(n))]`
-/

namespace A061824.P7407953339061187991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109049 (A004184 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061824.P7407953339061187991

namespace A061824

/-- `eq[n, A109049(A004184(n))]` -/
def P7407953339061187991.Spec : Prop :=
  ∀ n, (P7407953339061187991.a n : ℤ) = A061824 (n + 1)

end A061824

/-! ## A061824.P2336906263436429304

`A235049(record[A048379(8*n)])`
-/

namespace A061824.P2336906263436429304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A061824.P2336906263436429304

namespace A061824

/-- `A235049(record[A048379(8*n)])` -/
def P2336906263436429304.Spec : Prop :=
  ∀ n, P2336906263436429304.a n = A061824 (n + 1)

end A061824

/-! ## A061824.P5406885267180055087

`A222254(record[A222254(8*n)])`
-/

namespace A061824.P5406885267180055087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A061824.P5406885267180055087

namespace A061824

/-- `A222254(record[A222254(8*n)])` -/
def P5406885267180055087.Spec : Prop :=
  ∀ n, P5406885267180055087.a n = A061824 (n + 1)

end A061824

/-!
# A061825: Multiples of 7 containing only odd digits.

The programs for A061825, the canonical program `A061825.P11667199288861640491` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061825 has offset 1).

The definition of A061825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 736 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061825.P4626938819460109631

`∩[7*n, A014261(n+2)]`
-/

namespace A061825.P4626938819460109631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061825.P4626938819460109631

namespace A061825

/-- `∩[7*n, A014261(n+2)]` -/
def P4626938819460109631.Spec : Prop :=
  ∀ n, (P4626938819460109631.a n : ℤ) = A061825 (n + 1)

end A061825

/-! ## A061825.P1506454213471802684

`∩[A014261(n+1), A147587(n)]`
-/

namespace A061825.P1506454213471802684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061825.P1506454213471802684

namespace A061825

/-- `∩[A014261(n+1), A147587(n)]` -/
def P1506454213471802684.Spec : Prop :=
  ∀ n, (P1506454213471802684.a n : ℤ) = A061825 (n + 1)

end A061825

/-! ## A061825.P11667199288861640491

`∩[A059708(n+1), A147587(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A061825

/-- `∩[A059708(n+1), A147587(n)]` -/
def P11667199288861640491.Spec : Prop :=
  ∀ n, (P11667199288861640491.a n : ℤ) = A061825 (n + 1)

theorem P11667199288861640491.correct : P11667199288861640491.Spec := by
  intro n
  simp only [A061825, Nat.add_sub_cancel]

end A061825

/-! ## A061825.P2367065192338563555

`∩[A014261(n+1), A008589(n)]`
-/

namespace A061825.P2367065192338563555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061825.P2367065192338563555

namespace A061825

/-- `∩[A014261(n+1), A008589(n)]` -/
def P2367065192338563555.Spec : Prop :=
  ∀ n, (P2367065192338563555.a n : ℤ) = A061825 (n + 1)

end A061825

/-! ## A061825.P6755982676970148337

`record[A327539(7*(n+4))]`
-/

namespace A061825.P6755982676970148337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327539 (7 * (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061825.P6755982676970148337

namespace A061825

/-- `record[A327539(7*(n+4))]` -/
def P6755982676970148337.Spec : Prop :=
  ∀ n, P6755982676970148337.a n = A061825 (n + 1)

end A061825

/-! ## A061825.P15809909100180069572

`record[A059717(7*(2*n+1))]`
-/

namespace A061825.P15809909100180069572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059717 (7 * (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061825.P15809909100180069572

namespace A061825

/-- `record[A059717(7*(2*n+1))]` -/
def P15809909100180069572.Spec : Prop :=
  ∀ n, P15809909100180069572.a n = A061825 (n + 1)

end A061825

/-! ## A061825.P4417851365587844467

`eq[A045843(n), A390615(n)]`
-/

namespace A061825.P4417851365587844467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390615 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061825.P4417851365587844467

namespace A061825

/-- `eq[A045843(n), A390615(n)]` -/
def P4417851365587844467.Spec : Prop :=
  ∀ n, (P4417851365587844467.a n : ℤ) = A061825 (n + 1)

end A061825

/-! ## A061825.P1499181808708618205

`eq[A109048(n), A351744(n)]`
-/

namespace A061825.P1499181808708618205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109048 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351744 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061825.P1499181808708618205

namespace A061825

/-- `eq[A109048(n), A351744(n)]` -/
def P1499181808708618205.Spec : Prop :=
  ∀ n, (P1499181808708618205.a n : ℤ) = A061825 (n + 1)

end A061825

/-! ## A061825.P13683483502163590868

`filter[A014261(n+1), A082784(#)]`
-/

namespace A061825.P13683483502163590868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A082784 (f1 j).toNat = 1) n)

end

end A061825.P13683483502163590868

namespace A061825

/-- `filter[A014261(n+1), A082784(#)]` -/
def P13683483502163590868.Spec : Prop :=
  ∀ n, P13683483502163590868.a n = A061825 (n + 1)

end A061825

/-! ## A061825.P16645823300158418478

`eq[lcm(7, A257088(n)), A059707(n)]`
-/

namespace A061825.P16645823300158418478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 (A257088 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059707 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061825.P16645823300158418478

namespace A061825

/-- `eq[lcm(7, A257088(n)), A059707(n)]` -/
def P16645823300158418478.Spec : Prop :=
  ∀ n, (P16645823300158418478.a n : ℤ) = A061825 (n + 1)

end A061825

/-! ## A061825.P12462575770321711216

`filter[A275776(2*n+1), A082784(#)]`
-/

namespace A061825.P12462575770321711216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A082784 (f1 j).toNat = 1) n)

end

end A061825.P12462575770321711216

namespace A061825

/-- `filter[A275776(2*n+1), A082784(#)]` -/
def P12462575770321711216.Spec : Prop :=
  ∀ n, P12462575770321711216.a n = A061825 (n + 1)

end A061825

/-! ## A061825.P12356608026076917165

`eq[A109048(n), A257088(A059707(n))]`
-/

namespace A061825.P12356608026076917165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109048 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (A059707 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061825.P12356608026076917165

namespace A061825

/-- `eq[A109048(n), A257088(A059707(n))]` -/
def P12356608026076917165.Spec : Prop :=
  ∀ n, (P12356608026076917165.a n : ℤ) = A061825 (n + 1)

end A061825

/-! ## A061825.P8105926315742813937

`eq[A109048(n), A257088(A059717(n))]`
-/

namespace A061825.P8105926315742813937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109048 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (A059717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061825.P8105926315742813937

namespace A061825

/-- `eq[A109048(n), A257088(A059717(n))]` -/
def P8105926315742813937.Spec : Prop :=
  ∀ n, (P8105926315742813937.a n : ℤ) = A061825 (n + 1)

end A061825

/-!
# A061826: Multiples of 7 containing only even digits.

The programs for A061826, the canonical program `A061826.P15676596452042369277` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061826 has offset 1).

The definition of A061826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061826.P15676596452042369277

`∩[A008596(n), A024657(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061826

/-- `∩[A008596(n), A024657(n)]` -/
def P15676596452042369277.Spec : Prop :=
  ∀ n, (P15676596452042369277.a n : ℤ) = A061826 (n + 1)

theorem P15676596452042369277.correct : P15676596452042369277.Spec := by
  intro n
  simp only [A061826, Nat.add_sub_cancel]

end A061826

/-! ## A061826.P3463610879020511432

`∩[A014263(n+1), A008596(n)]`
-/

namespace A061826.P3463610879020511432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061826.P3463610879020511432

namespace A061826

/-- `∩[A014263(n+1), A008596(n)]` -/
def P3463610879020511432.Spec : Prop :=
  ∀ n, (P3463610879020511432.a n : ℤ) = A061826 (n + 1)

end A061826

/-! ## A061826.P8129740153785865044

`∩[A059708(n+1), A008596(n)]`
-/

namespace A061826.P8129740153785865044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061826.P8129740153785865044

namespace A061826

/-- `∩[A059708(n+1), A008596(n)]` -/
def P8129740153785865044.Spec : Prop :=
  ∀ n, (P8129740153785865044.a n : ℤ) = A061826 (n + 1)

end A061826

/-! ## A061826.P16224270637359249589

`∩[2*A008589(n), A014263(n+1)]`
-/

namespace A061826.P16224270637359249589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008589 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061826.P16224270637359249589

namespace A061826

/-- `∩[2*A008589(n), A014263(n+1)]` -/
def P16224270637359249589.Spec : Prop :=
  ∀ n, (P16224270637359249589.a n : ℤ) = A061826 (n + 1)

end A061826

/-! ## A061826.P15629272213128249528

`∩[A014263(n+1), A008589(n)]`
-/

namespace A061826.P15629272213128249528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061826.P15629272213128249528

namespace A061826

/-- `∩[A014263(n+1), A008589(n)]` -/
def P15629272213128249528.Spec : Prop :=
  ∀ n, (P15629272213128249528.a n : ℤ) = A061826 (n + 1)

end A061826

/-! ## A061826.P9995080225817471321

`∩[A014263(n+1), A008588(n)+n]`
-/

namespace A061826.P9995080225817471321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061826.P9995080225817471321

namespace A061826

/-- `∩[A014263(n+1), A008588(n)+n]` -/
def P9995080225817471321.Spec : Prop :=
  ∀ n, (P9995080225817471321.a n : ℤ) = A061826 (n + 1)

end A061826

/-! ## A061826.P18091346234605117977

`eq[lcm(7, n), A059629(n)]`
-/

namespace A061826.P18091346234605117977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 7 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059629 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061826.P18091346234605117977

namespace A061826

/-- `eq[lcm(7, n), A059629(n)]` -/
def P18091346234605117977.Spec : Prop :=
  ∀ n, (P18091346234605117977.a n : ℤ) = A061826 (n + 1)

end A061826

/-! ## A061826.P11084132326860956744

`filter[A014263(n+1), A082784(#)]`
-/

namespace A061826.P11084132326860956744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A082784 (f1 j).toNat = 1) n)

end

end A061826.P11084132326860956744

namespace A061826

/-- `filter[A014263(n+1), A082784(#)]` -/
def P11084132326860956744.Spec : Prop :=
  ∀ n, P11084132326860956744.a n = A061826 (n + 1)

end A061826

/-! ## A061826.P7255445361477786778

`filter[A024657(2*n), A082784(#)]`
-/

namespace A061826.P7255445361477786778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A082784 (f1 j).toNat = 1) n)

end

end A061826.P7255445361477786778

namespace A061826

/-- `filter[A024657(2*n), A082784(#)]` -/
def P7255445361477786778.Spec : Prop :=
  ∀ n, P7255445361477786778.a n = A061826 (n + 1)

end A061826

/-!
# A061827: Number of partitions of n into parts which are the digits of n.

The programs for A061827, there is no canonical definition to state claims against.
-/

/-! ## A061827.P9435587585751716209

`∏{e}[2^∑[A120002(n)], #]`
-/

namespace A061827.P9435587585751716209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120002 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A061827.P9435587585751716209

/-! ## A061827.P2252325598057545159

`A028310(∑[A120002(n)])`
-/

namespace A061827.P2252325598057545159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061827.P2252325598057545159

/-! ## A061827.P6202781560478474351

`A098925(∑[A120002(n)]²)`
-/

namespace A061827.P6202781560478474351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098925 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A061827.P6202781560478474351

/-! ## A061827.P14614646471689383676

`∏{e}[A000079(∑[A120002(n)]), #]`
-/

namespace A061827.P14614646471689383676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120002 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A061827.P14614646471689383676

/-! ## A061827.P11585782692364423001

`C(∑[A120002(n)], A004216(n+1))`
-/

namespace A061827.P11585782692364423001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120002 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (A004216 (n + 1)).toNat

end

end A061827.P11585782692364423001

/-! ## A061827.P4929715060810102926

`A008619(A004273(∑[A120002(n)]))`
-/

namespace A061827.P4929715060810102926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A061827.P4929715060810102926

/-! ## A061827.P14352634324036114493

`A004736(A133263(∑[A120002(n)]))`
-/

namespace A061827.P14352634324036114493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A133263 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A061827.P14352634324036114493

/-! ## A061827.P10100584471410714624

`A193739(A000124(∑[A120002(n)]))`
-/

namespace A061827.P10100584471410714624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A000124 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A061827.P10100584471410714624

/-! ## A061827.P15808031767649601409

`A193739(A000217(∑[A120002(n)]))`
-/

namespace A061827.P15808031767649601409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A061827.P15808031767649601409

/-!
# A061829: Multiples of 5 having only odd digits.

The programs for A061829, there is no canonical definition to state claims against.
-/

/-! ## A061829.P828435348301447481

`A014261(5*n+3)`
-/

namespace A061829.P828435348301447481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (5 * n + 3)

end

end A061829.P828435348301447481

/-! ## A061829.P14947422836871061215

`A014261(A016897(n))-2`
-/

namespace A061829.P14947422836871061215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (A016897 n).toNat - 2

end

end A061829.P14947422836871061215

/-! ## A061829.P681845182121204070

`lcm(5, A014261(A016885(n)))`
-/

namespace A061829.P681845182121204070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A014261 (A016885 n).toNat)

end

end A061829.P681845182121204070

/-! ## A061829.P11007320983721957772

`A014261(A008587(n)+2)+2`
-/

namespace A061829.P11007320983721957772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (A008587 n + 2).toNat + 2

end

end A061829.P11007320983721957772

/-! ## A061829.P3982959882907520668

`A014261(A016885(n)+1)-2`
-/

namespace A061829.P3982959882907520668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (A016885 n + 1).toNat - 2

end

end A061829.P3982959882907520668

/-! ## A061829.P7631416407042758789

`A014261(A008706(n+1))-4`
-/

namespace A061829.P7631416407042758789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (A008706 (n + 1)).toNat - 4

end

end A061829.P7631416407042758789

/-! ## A061829.P5524958648505711592

`A014261(A016825(n)+n)+2`
-/

namespace A061829.P5524958648505711592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (A016825 n + (n : ℤ)).toNat + 2

end

end A061829.P5524958648505711592

/-! ## A061829.P7140524059493875600

`A014261(A016885(n))%A061833(n+1)`
-/

namespace A061829.P7140524059493875600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014261 (A016885 n).toNat) (A061833 (n + 1))

end

end A061829.P7140524059493875600

/-! ## A061829.P13362732016174252378

`A275776(5*(2*n+1))`
-/

namespace A061829.P13362732016174252378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275776 (5 * (2 * n + 1))

end

end A061829.P13362732016174252378

/-! ## A061829.P4620631196365915801

`∩[A014261(n+1), A017329(n)]`
-/

namespace A061829.P4620631196365915801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061829.P4620631196365915801

/-! ## A061829.P10457284920109892644

`∩[A059708(n+1), A017329(n)]`
-/

namespace A061829.P10457284920109892644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061829.P10457284920109892644

/-! ## A061829.P7119263155715676195

`∩[A382402(n+1), A017329(n)]`
-/

namespace A061829.P7119263155715676195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061829.P7119263155715676195

/-! ## A061829.P13048106656332638431

`∩[A014261(n+1), A277592(n+1)]`
-/

namespace A061829.P13048106656332638431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061829.P13048106656332638431

/-! ## A061829.P12047819601420330578

`∩[A059708(n+1), A277592(n+1)]`
-/

namespace A061829.P12047819601420330578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061829.P12047819601420330578

/-! ## A061829.P1552548245376448947

`∩[A277592(n+1), A382402(n+1)]`
-/

namespace A061829.P1552548245376448947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061829.P1552548245376448947

/-! ## A061829.P2784255666648259120

`∩[A014261(n+1), A121025(n+1)]`
-/

namespace A061829.P2784255666648259120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061829.P2784255666648259120

/-! ## A061829.P1400493630720458009

`∩[A059708(n+1), A121025(n+1)]`
-/

namespace A061829.P1400493630720458009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061829.P1400493630720458009

/-! ## A061829.P688310238598342127

`∩[A121025(n+1), A382402(n+1)]`
-/

namespace A061829.P688310238598342127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061829.P688310238598342127

/-! ## A061829.P4067841324204869372

`∩[A382402(n+1), A008587(n)]`
-/

namespace A061829.P4067841324204869372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061829.P4067841324204869372

/-! ## A061829.P13038031075414628311

`∩[A382402(n+1), A092454(n)]`
-/

namespace A061829.P13038031075414628311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092454 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061829.P13038031075414628311

/-!
# A061830: Multiples of 5 having only even digits.

The programs for A061830, the canonical program `A061830.P4448825705646134847` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061830 has offset 0).

The definition of A061830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061830.P13668153614892238419

`record[A001613(10*n)]`
-/

namespace A061830.P13668153614892238419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (10 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061830.P13668153614892238419

namespace A061830

/-- `record[A001613(10*n)]` -/
def P13668153614892238419.Spec : Prop :=
  ∀ n, P13668153614892238419.a n = A061830 n

end A061830

/-! ## A061830.P12394031002994474726

`record[A059707(10*n)]`
-/

namespace A061830.P12394031002994474726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059707 (10 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061830.P12394031002994474726

namespace A061830

/-- `record[A059707(10*n)]` -/
def P12394031002994474726.Spec : Prop :=
  ∀ n, P12394031002994474726.a n = A061830 n

end A061830

/-! ## A061830.P13125565630939102008

`record[A059717(20*n)]`
-/

namespace A061830.P13125565630939102008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059717 (20 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061830.P13125565630939102008

namespace A061830

/-- `record[A059717(20*n)]` -/
def P13125565630939102008.Spec : Prop :=
  ∀ n, P13125565630939102008.a n = A061830 n

end A061830

/-! ## A061830.P5146576296493712720

`eq[n, A107130(n+1)]`
-/

namespace A061830.P5146576296493712720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107130 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061830.P5146576296493712720

namespace A061830

/-- `eq[n, A107130(n+1)]` -/
def P5146576296493712720.Spec : Prop :=
  ∀ n, (P5146576296493712720.a n : ℤ) = A061830 n

end A061830

/-! ## A061830.P5634134070115824834

`record[2*A106747(10*n)]`
-/

namespace A061830.P5634134070115824834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106747 (10 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061830.P5634134070115824834

namespace A061830

/-- `record[2*A106747(10*n)]` -/
def P5634134070115824834.Spec : Prop :=
  ∀ n, P5634134070115824834.a n = A061830 n

end A061830

/-! ## A061830.P5247207798594335780

`eq[n, A121758(n+1)+1]`
-/

namespace A061830.P5247207798594335780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121758 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061830.P5247207798594335780

namespace A061830

/-- `eq[n, A121758(n+1)+1]` -/
def P5247207798594335780.Spec : Prop :=
  ∀ n, (P5247207798594335780.a n : ℤ) = A061830 n

end A061830

/-! ## A061830.P11466605513377681034

`record[1-A121759(2*n+1)]`
-/

namespace A061830.P11466605513377681034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A121759 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061830.P11466605513377681034

namespace A061830

/-- `record[1-A121759(2*n+1)]` -/
def P11466605513377681034.Spec : Prop :=
  ∀ n, P11466605513377681034.a n = A061830 n

end A061830

/-! ## A061830.P8514748423690463457

`A167832(A007091(5*n))`
-/

namespace A061830.P8514748423690463457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167832 (A007091 (5 * n)).toNat

end

end A061830.P8514748423690463457

namespace A061830

/-- `A167832(A007091(5*n))` -/
def P8514748423690463457.Spec : Prop :=
  ∀ n, P8514748423690463457.a n = A061830 n

end A061830

/-! ## A061830.P4456843623462623129

`A059707(20*A007091(n))`
-/

namespace A061830.P4456843623462623129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059707 (20 * A007091 n).toNat

end

end A061830.P4456843623462623129

namespace A061830

/-- `A059707(20*A007091(n))` -/
def P4456843623462623129.Spec : Prop :=
  ∀ n, P4456843623462623129.a n = A061830 n

end A061830

/-! ## A061830.P4448825705646134847

`A159966(20*A007091(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061830

/-- `A159966(20*A007091(n))` -/
def P4448825705646134847.Spec : Prop :=
  ∀ n, P4448825705646134847.a n = A061830 n

theorem P4448825705646134847.correct : P4448825705646134847.Spec := by
  intro n
  simp only [A061830]

end A061830

/-! ## A061830.P5585375644037144478

`A038572(40*A007091(n))`
-/

namespace A061830.P5585375644037144478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (40 * A007091 n).toNat

end

end A061830.P5585375644037144478

namespace A061830

/-- `A038572(40*A007091(n))` -/
def P5585375644037144478.Spec : Prop :=
  ∀ n, P5585375644037144478.a n = A061830 n

end A061830

/-! ## A061830.P17672416542787785186

`filter[A061814(n), A079998(#)]`
-/

namespace A061830.P17672416542787785186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A061830.P17672416542787785186

namespace A061830

/-- `filter[A061814(n), A079998(#)]` -/
def P17672416542787785186.Spec : Prop :=
  ∀ n, P17672416542787785186.a n = A061830 n

end A061830

/-! ## A061830.P7549177218139320107

`filter[A061814(n), A198517(#)]`
-/

namespace A061830.P7549177218139320107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A198517 (f1 j).toNat = 1) n)

end

end A061830.P7549177218139320107

namespace A061830

/-- `filter[A061814(n), A198517(#)]` -/
def P7549177218139320107.Spec : Prop :=
  ∀ n, P7549177218139320107.a n = A061830 n

end A061830

/-! ## A061830.P16997624903936282276

`eq[n, A109046(A001613(n))]`
-/

namespace A061830.P16997624903936282276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109046 (A001613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061830.P16997624903936282276

namespace A061830

/-- `eq[n, A109046(A001613(n))]` -/
def P16997624903936282276.Spec : Prop :=
  ∀ n, (P16997624903936282276.a n : ℤ) = A061830 n

end A061830

/-! ## A061830.P13887193005255804595

`eq[A001613(n), A109051(n)]`
-/

namespace A061830.P13887193005255804595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061830.P13887193005255804595

namespace A061830

/-- `eq[A001613(n), A109051(n)]` -/
def P13887193005255804595.Spec : Prop :=
  ∀ n, (P13887193005255804595.a n : ℤ) = A061830 n

end A061830

/-! ## A061830.P10888787439990308769

`eq[n, A109051(A003100(n))]`
-/

namespace A061830.P10888787439990308769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109051 (A003100 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061830.P10888787439990308769

namespace A061830

/-- `eq[n, A109051(A003100(n))]` -/
def P10888787439990308769.Spec : Prop :=
  ∀ n, (P10888787439990308769.a n : ℤ) = A061830 n

end A061830

/-! ## A061830.P4781216700261773836

`eq[A059628(n), A063462(n)]`
-/

namespace A061830.P4781216700261773836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059628 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061830.P4781216700261773836

namespace A061830

/-- `eq[A059628(n), A063462(n)]` -/
def P4781216700261773836.Spec : Prop :=
  ∀ n, (P4781216700261773836.a n : ℤ) = A061830 n

end A061830

/-! ## A061830.P14110315119839108046

`eq[n, A001613(A133311(n))]`
-/

namespace A061830.P14110315119839108046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A133311 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061830.P14110315119839108046

namespace A061830

/-- `eq[n, A001613(A133311(n))]` -/
def P14110315119839108046.Spec : Prop :=
  ∀ n, (P14110315119839108046.a n : ℤ) = A061830 n

end A061830

/-!
# A061831: Multiples of 9 having only even digits.

The programs for A061831, the canonical program `A061831.P6021332759442418635` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061831 has offset 1).

The definition of A061831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 381 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061831.P6021332759442418635

`∩[A008600(n), A024657(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061831

/-- `∩[A008600(n), A024657(n)]` -/
def P6021332759442418635.Spec : Prop :=
  ∀ n, (P6021332759442418635.a n : ℤ) = A061831 (n + 1)

theorem P6021332759442418635.correct : P6021332759442418635.Spec := by
  intro n
  simp only [A061831, Nat.add_sub_cancel]

end A061831

/-! ## A061831.P14443415232013376778

`filter[A061811(n+1), A359430(#)]`
-/

namespace A061831.P14443415232013376778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359430 (f1 j).toNat = 1) n)

end

end A061831.P14443415232013376778

namespace A061831

/-- `filter[A061811(n+1), A359430(#)]` -/
def P14443415232013376778.Spec : Prop :=
  ∀ n, P14443415232013376778.a n = A061831 (n + 1)

end A061831

/-! ## A061831.P7689247950738632085

`filter[A061811(n+1), A373991(#)]`
-/

namespace A061831.P7689247950738632085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373991 (f1 j).toNat = 1) n)

end

end A061831.P7689247950738632085

namespace A061831

/-- `filter[A061811(n+1), A373991(#)]` -/
def P7689247950738632085.Spec : Prop :=
  ∀ n, P7689247950738632085.a n = A061831 (n + 1)

end A061831

/-! ## A061831.P5788242091867046540

`filter[A061811(n+1), A374117(#)]`
-/

namespace A061831.P5788242091867046540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374117 (f1 j).toNat = 1) n)

end

end A061831.P5788242091867046540

namespace A061831

/-- `filter[A061811(n+1), A374117(#)]` -/
def P5788242091867046540.Spec : Prop :=
  ∀ n, P5788242091867046540.a n = A061831 (n + 1)

end A061831

/-! ## A061831.P7294754424194450267

`filter[A061811(n+1), A374121(#)]`
-/

namespace A061831.P7294754424194450267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374121 (f1 j).toNat = 1) n)

end

end A061831.P7294754424194450267

namespace A061831

/-- `filter[A061811(n+1), A374121(#)]` -/
def P7294754424194450267.Spec : Prop :=
  ∀ n, P7294754424194450267.a n = A061831 (n + 1)

end A061831

/-! ## A061831.P7407219513960395290

`∩[A014263(n+1), A008591(n)]`
-/

namespace A061831.P7407219513960395290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061831.P7407219513960395290

namespace A061831

/-- `∩[A014263(n+1), A008591(n)]` -/
def P7407219513960395290.Spec : Prop :=
  ∀ n, (P7407219513960395290.a n : ℤ) = A061831 (n + 1)

end A061831

/-! ## A061831.P10666933742355398217

`∩[A014263(n+1), A008600(n)]`
-/

namespace A061831.P10666933742355398217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008600 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061831.P10666933742355398217

namespace A061831

/-- `∩[A014263(n+1), A008600(n)]` -/
def P10666933742355398217.Spec : Prop :=
  ∀ n, (P10666933742355398217.a n : ℤ) = A061831 (n + 1)

end A061831

/-! ## A061831.P4103043163720610136

`∩[A059708(n+1), A008600(n)]`
-/

namespace A061831.P4103043163720610136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008600 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061831.P4103043163720610136

namespace A061831

/-- `∩[A059708(n+1), A008600(n)]` -/
def P4103043163720610136.Spec : Prop :=
  ∀ n, (P4103043163720610136.a n : ℤ) = A061831 (n + 1)

end A061831

/-! ## A061831.P13419141056219270164

`∩[A061811(n+1), A008591(n)]`
-/

namespace A061831.P13419141056219270164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061831.P13419141056219270164

namespace A061831

/-- `∩[A061811(n+1), A008591(n)]` -/
def P13419141056219270164.Spec : Prop :=
  ∀ n, (P13419141056219270164.a n : ℤ) = A061831 (n + 1)

end A061831

/-! ## A061831.P13347539922196915488

`∩[A061811(n+1), A008600(n)]`
-/

namespace A061831.P13347539922196915488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008600 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061831.P13347539922196915488

namespace A061831

/-- `∩[A061811(n+1), A008600(n)]` -/
def P13347539922196915488.Spec : Prop :=
  ∀ n, (P13347539922196915488.a n : ℤ) = A061831 (n + 1)

end A061831

/-! ## A061831.P14833963579814068449

`∩[A169884(n+1), A008591(n)]`
-/

namespace A061831.P14833963579814068449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061831.P14833963579814068449

namespace A061831

/-- `∩[A169884(n+1), A008591(n)]` -/
def P14833963579814068449.Spec : Prop :=
  ∀ n, (P14833963579814068449.a n : ℤ) = A061831 (n + 1)

end A061831

/-! ## A061831.P13362799289500542708

`∩[A169884(n+1), A008600(n)]`
-/

namespace A061831.P13362799289500542708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008600 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061831.P13362799289500542708

namespace A061831

/-- `∩[A169884(n+1), A008600(n)]` -/
def P13362799289500542708.Spec : Prop :=
  ∀ n, (P13362799289500542708.a n : ℤ) = A061831 (n + 1)

end A061831

/-! ## A061831.P10354402865542881943

`∩[2*A090570(n+1), A061811(n+1)]`
-/

namespace A061831.P10354402865542881943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061831.P10354402865542881943

namespace A061831

/-- `∩[2*A090570(n+1), A061811(n+1)]` -/
def P10354402865542881943.Spec : Prop :=
  ∀ n, (P10354402865542881943.a n : ℤ) = A061831 (n + 1)

end A061831

/-! ## A061831.P14529383238824171375

`∩[2*A120740(n+1), A061811(n+1)]`
-/

namespace A061831.P14529383238824171375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061831.P14529383238824171375

namespace A061831

/-- `∩[2*A120740(n+1), A061811(n+1)]` -/
def P14529383238824171375.Spec : Prop :=
  ∀ n, (P14529383238824171375.a n : ℤ) = A061831 (n + 1)

end A061831

/-! ## A061831.P3678337616528290894

`∩[2*A130877(n+1), A061811(n+1)]`
-/

namespace A061831.P3678337616528290894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061831.P3678337616528290894

namespace A061831

/-- `∩[2*A130877(n+1), A061811(n+1)]` -/
def P3678337616528290894.Spec : Prop :=
  ∀ n, (P3678337616528290894.a n : ℤ) = A061831 (n + 1)

end A061831

/-! ## A061831.P17780790638513137052

`∩[2*A274406(n+1), A061811(n+1)]`
-/

namespace A061831.P17780790638513137052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A274406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061831.P17780790638513137052

namespace A061831

/-- `∩[2*A274406(n+1), A061811(n+1)]` -/
def P17780790638513137052.Spec : Prop :=
  ∀ n, (P17780790638513137052.a n : ℤ) = A061831 (n + 1)

end A061831

/-! ## A061831.P5736447406304696833

`∩[2*A327863(n+1), A061811(n+1)]`
-/

namespace A061831.P5736447406304696833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061831.P5736447406304696833

namespace A061831

/-- `∩[2*A327863(n+1), A061811(n+1)]` -/
def P5736447406304696833.Spec : Prop :=
  ∀ n, (P5736447406304696833.a n : ℤ) = A061831 (n + 1)

end A061831

/-! ## A061831.P18222314920104485918

`∩[2*A140282(n), A061811(n+1)]`
-/

namespace A061831.P18222314920104485918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140282 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061831.P18222314920104485918

namespace A061831

/-- `∩[2*A140282(n), A061811(n+1)]` -/
def P18222314920104485918.Spec : Prop :=
  ∀ n, (P18222314920104485918.a n : ℤ) = A061831 (n + 1)

end A061831

/-! ## A061831.P1111575383291776764

`∩[2*A281899(n), A061811(n+1)]`
-/

namespace A061831.P1111575383291776764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281899 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061831.P1111575383291776764

namespace A061831

/-- `∩[2*A281899(n), A061811(n+1)]` -/
def P1111575383291776764.Spec : Prop :=
  ∀ n, (P1111575383291776764.a n : ℤ) = A061831 (n + 1)

end A061831

/-! ## A061831.P3182232057598486588

`∩[A014263(n+1), A008588(3*n)]`
-/

namespace A061831.P3182232057598486588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (3 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061831.P3182232057598486588

namespace A061831

/-- `∩[A014263(n+1), A008588(3*n)]` -/
def P3182232057598486588.Spec : Prop :=
  ∀ n, (P3182232057598486588.a n : ℤ) = A061831 (n + 1)

end A061831

/-!
# A061832: Multiples of 11 having only even digits.

The programs for A061832, the canonical program `A061832.P11543862401762568469` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061832 has offset 1).

The definition of A061832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061832.P14217137107590813434

`∩[2*A008593(n), A014263(n+1)]`
-/

namespace A061832.P14217137107590813434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061832.P14217137107590813434

namespace A061832

/-- `∩[2*A008593(n), A014263(n+1)]` -/
def P14217137107590813434.Spec : Prop :=
  ∀ n, (P14217137107590813434.a n : ℤ) = A061832 (n + 1)

end A061832

/-! ## A061832.P11543862401762568469

`∩[A008604(n), A024657(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061832

/-- `∩[A008604(n), A024657(n)]` -/
def P11543862401762568469.Spec : Prop :=
  ∀ n, (P11543862401762568469.a n : ℤ) = A061832 (n + 1)

theorem P11543862401762568469.correct : P11543862401762568469.Spec := by
  intro n
  simp only [A061832, Nat.add_sub_cancel]

end A061832

/-! ## A061832.P13876485845369102293

`∩[A014263(n+1), A008604(n)]`
-/

namespace A061832.P13876485845369102293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008604 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061832.P13876485845369102293

namespace A061832

/-- `∩[A014263(n+1), A008604(n)]` -/
def P13876485845369102293.Spec : Prop :=
  ∀ n, (P13876485845369102293.a n : ℤ) = A061832 (n + 1)

end A061832

/-! ## A061832.P15244379112834054529

`∩[A014263(n+1), A008593(n)]`
-/

namespace A061832.P15244379112834054529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061832.P15244379112834054529

namespace A061832

/-- `∩[A014263(n+1), A008593(n)]` -/
def P15244379112834054529.Spec : Prop :=
  ∀ n, (P15244379112834054529.a n : ℤ) = A061832 (n + 1)

end A061832

/-! ## A061832.P10031677099917607114

`∩[A059708(n+1), A008604(n)]`
-/

namespace A061832.P10031677099917607114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008604 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061832.P10031677099917607114

namespace A061832

/-- `∩[A059708(n+1), A008604(n)]` -/
def P10031677099917607114.Spec : Prop :=
  ∀ n, (P10031677099917607114.a n : ℤ) = A061832 (n + 1)

end A061832

/-! ## A061832.P16396145582901182143

`record[A001613(11*n)]`
-/

namespace A061832.P16396145582901182143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (11 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061832.P16396145582901182143

namespace A061832

/-- `record[A001613(11*n)]` -/
def P16396145582901182143.Spec : Prop :=
  ∀ n, P16396145582901182143.a n = A061832 (n + 1)

end A061832

/-! ## A061832.P1565267706891692049

`record[A059717(22*n)]`
-/

namespace A061832.P1565267706891692049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059717 (22 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061832.P1565267706891692049

namespace A061832

/-- `record[A059717(22*n)]` -/
def P1565267706891692049.Spec : Prop :=
  ∀ n, P1565267706891692049.a n = A061832 (n + 1)

end A061832

/-! ## A061832.P17705826628401319435

`eq[n, A109052(A001613(n))]`
-/

namespace A061832.P17705826628401319435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109052 (A001613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061832.P17705826628401319435

namespace A061832

/-- `eq[n, A109052(A001613(n))]` -/
def P17705826628401319435.Spec : Prop :=
  ∀ n, (P17705826628401319435.a n : ℤ) = A061832 (n + 1)

end A061832

/-! ## A061832.P5614224232855719995

`eq[A059629(n), A109052(n)]`
-/

namespace A061832.P5614224232855719995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059629 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061832.P5614224232855719995

namespace A061832

/-- `eq[A059629(n), A109052(n)]` -/
def P5614224232855719995.Spec : Prop :=
  ∀ n, (P5614224232855719995.a n : ℤ) = A061832 (n + 1)

end A061832

/-! ## A061832.P11289554563497294095

`eq[A107130(n), A109052(n)]`
-/

namespace A061832.P11289554563497294095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061832.P11289554563497294095

namespace A061832

/-- `eq[A107130(n), A109052(n)]` -/
def P11289554563497294095.Spec : Prop :=
  ∀ n, (P11289554563497294095.a n : ℤ) = A061832 (n + 1)

end A061832

/-!
# A061833: Multiples of 11 having only odd digits.

The programs for A061833, there is no canonical definition to state claims against.
-/

/-! ## A061833.P6162040023888026571

`∩[11*n, A014261(n+2)]`
-/

namespace A061833.P6162040023888026571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061833.P6162040023888026571

/-! ## A061833.P386347982849447596

`∩[A014261(n+1), A008593(n)]`
-/

namespace A061833.P386347982849447596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061833.P386347982849447596

/-! ## A061833.P1788862080364232489

`record[A059717(A008604(n)+11)]`
-/

namespace A061833.P1788862080364232489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059717 (A008604 n + 11).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061833.P1788862080364232489

/-! ## A061833.P2340274395126485840

`record[A059717(11*A005408(n))]`
-/

namespace A061833.P2340274395126485840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059717 (11 * A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061833.P2340274395126485840

/-! ## A061833.P801906689363539358

`record[A059717(11*A093178(n))]`
-/

namespace A061833.P801906689363539358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059717 (11 * A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061833.P801906689363539358

/-! ## A061833.P16185389057714932613

`record[A059717(A008593(2*n+1))]`
-/

namespace A061833.P16185389057714932613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059717 (A008593 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061833.P16185389057714932613

/-! ## A061833.P2596289356182199260

`record[A059717(A000265(11*(n+1)))]`
-/

namespace A061833.P2596289356182199260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059717 (A000265 (11 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061833.P2596289356182199260

/-! ## A061833.P4202579526167070042

`record[A059717(A005408(A017449(n)))]`
-/

namespace A061833.P4202579526167070042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059717 (A005408 (A017449 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061833.P4202579526167070042

/-!
# A061834: a(n) = binomial(n,2) * !n.

The programs for A061834, there is no canonical definition to state claims against.
-/

/-! ## A061834.P1123820471866199639

`(∑[abs(1-n)!]-1)*C(n, 2)`
-/

namespace A061834.P1123820471866199639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * (Nat.choose n 2 : ℤ)

end

end A061834.P1123820471866199639

/-! ## A061834.P5480146386783243605

`C(n, 2)*A003422(n)`
-/

namespace A061834.P5480146386783243605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A003422 n

end

end A061834.P5480146386783243605

/-! ## A061834.P17990750569422401175

`A003422(n)*A161680(n)`
-/

namespace A061834.P17990750569422401175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n * A161680 n

end

end A061834.P17990750569422401175

/-! ## A061834.P11757191362564060425

`lcm(A003422(n), A056847(n²))`
-/

namespace A061834.P11757191362564060425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003422 n) (A056847 (n ^ 2))

end

end A061834.P11757191362564060425

/-! ## A061834.P17803213610278182930

`∑[A104150(n)]*A161680(n)`
-/

namespace A061834.P17803213610278182930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A161680 n

end

end A061834.P17803213610278182930

/-! ## A061834.P2215774228649002193

`A003422(n)*A130519(2*n)`
-/

namespace A061834.P2215774228649002193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n * A130519 (2 * n)

end

end A061834.P2215774228649002193

/-! ## A061834.P10712357574154717728

`(A000217(n)-n)*A003422(n)`
-/

namespace A061834.P10712357574154717728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n - (n : ℤ)) * A003422 n

end

end A061834.P10712357574154717728

/-! ## A061834.P8679598278399360604

`A003422(n)*A083920(A000217(n))`
-/

namespace A061834.P8679598278399360604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n * A083920 (A000217 n).toNat

end

end A061834.P8679598278399360604

/-! ## A061834.P18011138434719399277

`∑[A084938(A000124(n))]*A161680(n)`
-/

namespace A061834.P18011138434719399277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A161680 n

end

end A061834.P18011138434719399277

/-! ## A061834.P11397871460661649006

`(A002522(n)-A000124(n))*A003422(n)`
-/

namespace A061834.P11397871460661649006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002522 n - A000124 n) * A003422 n

end

end A061834.P11397871460661649006

/-!
# A061835: a(1) = 5; a(n) = smallest power of 5 (larger than a(n-1)) with a(n-1) forming its final digits.

The programs for A061835, there is no canonical definition to state claims against.
-/

/-! ## A061835.P15208421254492379864

`5^∑[A016116(A024493(n))]`
-/

namespace A061835.P15208421254492379864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A024493 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A061835.P15208421254492379864

/-!
# A061836: a(n) = smallest k>0 such that k+n divides k!.

The programs for A061836, there is no canonical definition to state claims against.
-/

/-! ## A061836.P5952209288824384555

`A332558(n)+a(floor(n/(n+1)))` with `a(0)=1`
-/

namespace A061836.P5952209288824384555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A332558 n + a ⌊(n : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A061836.P5952209288824384555

/-! ## A061836.P5446547677576079702

`A332558(n)+A318651(2*a(n-1)+1)` with `a(0)=1`
-/

namespace A061836.P5446547677576079702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A332558 n + A318651 (2 * a (n - 1) + 1).toNat

end

end A061836.P5446547677576079702

/-! ## A061836.P6527697837687898528

`A332558(n)+A020985(lcm(n, a(n-1)))²` with `a(0)=1`
-/

namespace A061836.P6527697837687898528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A332558 n + A020985 (Int.lcm (n : ℤ) (a (n - 1))) ^ 2

end

end A061836.P6527697837687898528

/-!
# A061837: Numbers k such that (k+2)^2 | k!.

The programs for A061837, the canonical program `A061837.P5567670417075928045` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061837 has offset 1).

The definition of A061837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061837.P5349617472531823132

`A061743(n+1)-1`
-/

namespace A061837.P5349617472531823132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061743 (n + 1) - 1

end

end A061837.P5349617472531823132

namespace A061837

/-- `A061743(n+1)-1` -/
def P5349617472531823132.Spec : Prop :=
  ∀ n, P5349617472531823132.a n = A061837 (n + 1)

end A061837

/-! ## A061837.P11271785420074385642

`A264828(n+4)-2`
-/

namespace A061837.P11271785420074385642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 4) - 2

end

end A061837.P11271785420074385642

namespace A061837

/-- `A264828(n+4)-2` -/
def P11271785420074385642.Spec : Prop :=
  ∀ n, P11271785420074385642.a n = A061837 (n + 1)

end A061837

/-! ## A061837.P14324162534077045832

`lt[2, A319700(n+2)]`
-/

namespace A061837.P14324162534077045832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319700 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061837.P14324162534077045832

namespace A061837

/-- `lt[2, A319700(n+2)]` -/
def P14324162534077045832.Spec : Prop :=
  ∀ n, (P14324162534077045832.a n : ℤ) = A061837 (n + 1)

end A061837

/-! ## A061837.P3106260703114175361

`lt[3, A319699(n+2)]`
-/

namespace A061837.P3106260703114175361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319699 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061837.P3106260703114175361

namespace A061837

/-- `lt[3, A319699(n+2)]` -/
def P3106260703114175361.Spec : Prop :=
  ∀ n, (P3106260703114175361.a n : ℤ) = A061837 (n + 1)

end A061837

/-! ## A061837.P1258626691144156628

`lt[4, A319703(n+2)]`
-/

namespace A061837.P1258626691144156628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061837.P1258626691144156628

namespace A061837

/-- `lt[4, A319703(n+2)]` -/
def P1258626691144156628.Spec : Prop :=
  ∀ n, (P1258626691144156628.a n : ℤ) = A061837 (n + 1)

end A061837

/-! ## A061837.P5567670417075928045

`lt[2, A296955(n+2)-2]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061837

/-- `lt[2, A296955(n+2)-2]` -/
def P5567670417075928045.Spec : Prop :=
  ∀ n, (P5567670417075928045.a n : ℤ) = A061837 (n + 1)

theorem P5567670417075928045.correct : P5567670417075928045.Spec := by
  intro n
  simp only [A061837, Nat.add_sub_cancel]

end A061837

/-! ## A061837.P5772479615052859702

`eq[n+2, A056583(n+2)]`
-/

namespace A061837.P5772479615052859702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056583 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061837.P5772479615052859702

namespace A061837

/-- `eq[n+2, A056583(n+2)]` -/
def P5772479615052859702.Spec : Prop :=
  ∀ n, (P5772479615052859702.a n : ℤ) = A061837 (n + 1)

end A061837

/-! ## A061837.P1931322757562226748

`lt[2*(A006530(n+2)+1), n]`
-/

namespace A061837.P1931322757562226748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006530 (n + 2) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A061837.P1931322757562226748

namespace A061837

/-- `lt[2*(A006530(n+2)+1), n]` -/
def P1931322757562226748.Spec : Prop :=
  ∀ n, (P1931322757562226748.a n : ℤ) = A061837 (n + 1)

end A061837

/-! ## A061837.P9173127658324582351

`lt[2, (n-1)/A006530(n+3)]+1`
-/

namespace A061837.P9173127658324582351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) / (A006530 (n + 3) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A061837.P9173127658324582351

namespace A061837

/-- `lt[2, (n-1)/A006530(n+3)]+1` -/
def P9173127658324582351.Spec : Prop :=
  ∀ n, (P9173127658324582351.a n : ℤ) = A061837 (n + 1)

end A061837

/-! ## A061837.P12674424275075037086

`lt[2*A006530(2*n-(n-2)), n-2]`
-/

namespace A061837.P12674424275075037086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061837.P12674424275075037086

namespace A061837

/-- `lt[2*A006530(2*n-(n-2)), n-2]` -/
def P12674424275075037086.Spec : Prop :=
  ∀ n, (P12674424275075037086.a n : ℤ) = A061837 (n + 1)

end A061837

/-! ## A061837.P3406848166614826328

`lt[1, A072480(A072480(n))]-2`
-/

namespace A061837.P3406848166614826328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A072480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 2

end

end A061837.P3406848166614826328

namespace A061837

/-- `lt[1, A072480(A072480(n))]-2` -/
def P3406848166614826328.Spec : Prop :=
  ∀ n, P3406848166614826328.a n = A061837 (n + 1)

end A061837

/-! ## A061837.P16834125746061448726

`lt[19, A000045(A319347(n+2))]`
-/

namespace A061837.P16834125746061448726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A319347 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061837.P16834125746061448726

namespace A061837

/-- `lt[19, A000045(A319347(n+2))]` -/
def P16834125746061448726.Spec : Prop :=
  ∀ n, (P16834125746061448726.a n : ℤ) = A061837 (n + 1)

end A061837

/-! ## A061837.P1449713531232374192

`A254671(n+2)-1`
-/

namespace A061837.P1449713531232374192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254671 (n + 2) - 1

end

end A061837.P1449713531232374192

namespace A061837

/-- `A254671(n+2)-1` -/
def P1449713531232374192.Spec : Prop :=
  ∀ n, P1449713531232374192.a n = A061837 (n + 1)

end A061837

/-! ## A061837.P2940911761256709655

`A009188(n+2)-2`
-/

namespace A061837.P2940911761256709655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 2) - 2

end

end A061837.P2940911761256709655

namespace A061837

/-- `A009188(n+2)-2` -/
def P2940911761256709655.Spec : Prop :=
  ∀ n, P2940911761256709655.a n = A061837 (n + 1)

end A061837

/-! ## A061837.P4212326448827899789

`lt[2, A307828(n+2)]`
-/

namespace A061837.P4212326448827899789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307828 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061837.P4212326448827899789

namespace A061837

/-- `lt[2, A307828(n+2)]` -/
def P4212326448827899789.Spec : Prop :=
  ∀ n, (P4212326448827899789.a n : ℤ) = A061837 (n + 1)

end A061837

/-! ## A061837.P871045899903705296

`lt[A078371(A006530(n+2)), n²]`
-/

namespace A061837.P871045899903705296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078371 (A006530 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A061837.P871045899903705296

namespace A061837

/-- `lt[A078371(A006530(n+2)), n²]` -/
def P871045899903705296.Spec : Prop :=
  ∀ n, (P871045899903705296.a n : ℤ) = A061837 (n + 1)

end A061837

/-! ## A061837.P16519617390926952447

`lt[A347634(A006530(n+3)), n]+1`
-/

namespace A061837.P16519617390926952447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347634 (A006530 (n + 3)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A061837.P16519617390926952447

namespace A061837

/-- `lt[A347634(A006530(n+3)), n]+1` -/
def P16519617390926952447.Spec : Prop :=
  ∀ n, (P16519617390926952447.a n : ℤ) = A061837 (n + 1)

end A061837

/-! ## A061837.P7724857180854767659

`lt[4, A259124(n+1)]`
-/

namespace A061837.P7724857180854767659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259124 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061837.P7724857180854767659

namespace A061837

/-- `lt[4, A259124(n+1)]` -/
def P7724857180854767659.Spec : Prop :=
  ∀ n, (P7724857180854767659.a n : ℤ) = A061837 (n + 1)

end A061837

/-! ## A061837.P3172015219122193745

`eq[n+2, A056584(n+2)]`
-/

namespace A061837.P3172015219122193745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056584 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061837.P3172015219122193745

namespace A061837

/-- `eq[n+2, A056584(n+2)]` -/
def P3172015219122193745.Spec : Prop :=
  ∀ n, (P3172015219122193745.a n : ℤ) = A061837 (n + 1)

end A061837

/-! ## A061837.P711731560790587334

`eq[A056584(n+2), A057544(n)]`
-/

namespace A061837.P711731560790587334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056584 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057544 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061837.P711731560790587334

namespace A061837

/-- `eq[A056584(n+2), A057544(n)]` -/
def P711731560790587334.Spec : Prop :=
  ∀ n, (P711731560790587334.a n : ℤ) = A061837 (n + 1)

end A061837

/-!
# A061838: Numbers k such that (k+3)^3 | k!.

The programs for A061838, the canonical program `A061838.P10671917777384719382` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061838 has offset 1).

The definition of A061838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061838.P10671917777384719382

`A061751(n+1)-2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A061838

/-- `A061751(n+1)-2` -/
def P10671917777384719382.Spec : Prop :=
  ∀ n, P10671917777384719382.a n = A061838 (n + 1)

theorem P10671917777384719382.correct : P10671917777384719382.Spec := by
  intro n
  simp only [A061838, Nat.add_sub_cancel]

end A061838

/-! ## A061838.P1909306878149547567

`A271345(n+2)-3`
-/

namespace A061838.P1909306878149547567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271345 (n + 2) - 3

end

end A061838.P1909306878149547567

namespace A061838

/-- `A271345(n+2)-3` -/
def P1909306878149547567.Spec : Prop :=
  ∀ n, P1909306878149547567.a n = A061838 (n + 1)

end A061838

/-! ## A061838.P7253918853828581093

`∑[A146288(Δ[A271345(n+1)])]`
-/

namespace A061838.P7253918853828581093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271345 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146288 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061838.P7253918853828581093

namespace A061838

/-- `∑[A146288(Δ[A271345(n+1)])]` -/
def P7253918853828581093.Spec : Prop :=
  ∀ n, P7253918853828581093.a n = A061838 (n + 1)

end A061838

/-! ## A061838.P14550908891221740753

`∑[A333219(Δ[A271345(n+1)])]`
-/

namespace A061838.P14550908891221740753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271345 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061838.P14550908891221740753

namespace A061838

/-- `∑[A333219(Δ[A271345(n+1)])]` -/
def P14550908891221740753.Spec : Prop :=
  ∀ n, P14550908891221740753.a n = A061838 (n + 1)

end A061838

/-! ## A061838.P17921593272457565729

`eq[1, A301317(n+3)]`
-/

namespace A061838.P17921593272457565729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301317 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061838.P17921593272457565729

namespace A061838

/-- `eq[1, A301317(n+3)]` -/
def P17921593272457565729.Spec : Prop :=
  ∀ n, (P17921593272457565729.a n : ℤ) = A061838 (n + 1)

end A061838

/-! ## A061838.P13204378116137403155

`lt[A301317(n+2), 2]-1`
-/

namespace A061838.P13204378116137403155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301317 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A061838.P13204378116137403155

namespace A061838

/-- `lt[A301317(n+2), 2]-1` -/
def P13204378116137403155.Spec : Prop :=
  ∀ n, P13204378116137403155.a n = A061838 (n + 1)

end A061838

/-! ## A061838.P17596110059874720342

`A023444(A061751(n+1))`
-/

namespace A061838.P17596110059874720342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A061751 (n + 1)).toNat

end

end A061838.P17596110059874720342

namespace A061838

/-- `A023444(A061751(n+1))` -/
def P17596110059874720342.Spec : Prop :=
  ∀ n, P17596110059874720342.a n = A061838 (n + 1)

end A061838

/-! ## A061838.P11754794278538390768

`eq[1, A130543(A011776(n+1))]-2`
-/

namespace A061838.P11754794278538390768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130543 (A011776 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 2

end

end A061838.P11754794278538390768

namespace A061838

/-- `eq[1, A130543(A011776(n+1))]-2` -/
def P11754794278538390768.Spec : Prop :=
  ∀ n, P11754794278538390768.a n = A061838 (n + 1)

end A061838

/-! ## A061838.P6262258871183540368

`A023445(A271345(n+2))`
-/

namespace A061838.P6262258871183540368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A271345 (n + 2)).toNat

end

end A061838.P6262258871183540368

namespace A061838

/-- `A023445(A271345(n+2))` -/
def P6262258871183540368.Spec : Prop :=
  ∀ n, P6262258871183540368.a n = A061838 (n + 1)

end A061838

/-! ## A061838.P10146856579633295986

`lt[2, A261479(A011776(n+3))]`
-/

namespace A061838.P10146856579633295986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261479 (A011776 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061838.P10146856579633295986

namespace A061838

/-- `lt[2, A261479(A011776(n+3))]` -/
def P10146856579633295986.Spec : Prop :=
  ∀ n, (P10146856579633295986.a n : ℤ) = A061838 (n + 1)

end A061838

/-!
# A061840: Numbers k such that (k+4)^4 | k!.

The programs for A061840, there is no canonical definition to state claims against.
-/

/-! ## A061840.P3121639137748320289

`A061752(n+2)-3`
-/

namespace A061840.P3121639137748320289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061752 (n + 2) - 3

end

end A061840.P3121639137748320289

/-! ## A061840.P12100330812439706375

`∑[A101318(Δ[A061752(n+1)])]`
-/

namespace A061840.P12100330812439706375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061752 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101318 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061840.P12100330812439706375

/-! ## A061840.P10720979173576893084

`∑[A190220(Δ[A061752(n+1)])]`
-/

namespace A061840.P10720979173576893084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061752 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190220 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061840.P10720979173576893084

/-! ## A061840.P3083871112568191100

`A023445(A061752(n+2))`
-/

namespace A061840.P3083871112568191100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A061752 (n + 2)).toNat

end

end A061840.P3083871112568191100

/-! ## A061840.P9644119381340019862

`lt[9, A011776(2*(n+1))]-3`
-/

namespace A061840.P9644119381340019862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 3

end

end A061840.P9644119381340019862

/-!
# A061841: Numbers k such that (k+5)^5 | k!.

The programs for A061841, there is no canonical definition to state claims against.
-/

/-! ## A061841.P5537067433916808199

`lt[A053742(A090624(n+5)), A017293(n)]`
-/

namespace A061841.P5537067433916808199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 (A090624 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061841.P5537067433916808199

/-! ## A061841.P10733812662901514841

`lt[A053742(A090624(n+5)), A017329(n)]`
-/

namespace A061841.P10733812662901514841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 (A090624 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061841.P10733812662901514841

/-! ## A061841.P4995862287921552787

`lt[A290619(A002034(n+5)), A331933(n+1)]`
-/

namespace A061841.P4995862287921552787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290619 (A002034 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061841.P4995862287921552787

/-! ## A061841.P15531478684098495724

`lt[A304682(n+5), A354888(A338648(n+5))]`
-/

namespace A061841.P15531478684098495724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304682 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354888 (A338648 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061841.P15531478684098495724

/-! ## A061841.P16910273207054177294

`lt[6, A179254(A072499(n+5))]`
-/

namespace A061841.P16910273207054177294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179254 (A072499 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061841.P16910273207054177294

/-!
# A061842: Numbers k such that (k+6)^6 | k!.

The programs for A061842, there is no canonical definition to state claims against.
-/

/-! ## A061842.P14440336513431157140

`A061754(n+3)-5`
-/

namespace A061842.P14440336513431157140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061754 (n + 3) - 5

end

end A061842.P14440336513431157140

/-! ## A061842.P6141701475452844426

`A265738(n+4)-6`
-/

namespace A061842.P6141701475452844426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265738 (n + 4) - 6

end

end A061842.P6141701475452844426

/-! ## A061842.P9226583729350773827

`A061755(n+1)-A061835(A061827(n+1))`
-/

namespace A061842.P9226583729350773827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061755 (n + 1) - A061835 (A061827 (n + 1)).toNat

end

end A061842.P9226583729350773827

/-! ## A061842.P16309573705974611354

`A061755(n+1)-A071053(A007283(n+2))`
-/

namespace A061842.P16309573705974611354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061755 (n + 1) - A071053 (A007283 (n + 2)).toNat

end

end A061842.P16309573705974611354

/-! ## A061842.P10587759646891707820

`A061755(n+1)-5%A061745(n)`
-/

namespace A061842.P10587759646891707820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061755 (n + 1) - Int.tmod 5 (A061745 n)

end

end A061842.P10587759646891707820

/-!
# A061843: Squares which remain squares if you increment every digit by 1.

The programs for A061843, there is no canonical definition to state claims against.
-/

/-! ## A061843.P11130592494739907732

`A061844(n+1)-A002275(A255850(n+1))`
-/

namespace A061843.P11130592494739907732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061844 (n + 1) - A002275 (A255850 (n + 1)).toNat

end

end A061843.P11130592494739907732

/-! ## A061843.P12237561648462062045

`A117755(eq[A267525(n), A361082(n)])`
-/

namespace A061843.P12237561648462062045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267525 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361082 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117755 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A061843.P12237561648462062045

/-!
# A061844: Squares that remain squares if you decrease every digit by 1.

The programs for A061844, there is no canonical definition to state claims against.
-/

/-! ## A061844.P7512535390067464490

`A061843(n+1)+A002275(A255850(n+1))`
-/

namespace A061844.P7512535390067464490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061843 (n + 1) + A002275 (A255850 (n + 1)).toNat

end

end A061844.P7512535390067464490

/-!
# A061845: Numbers that have one of every digit in some base.

The programs for A061845, there is no canonical definition to state claims against.
-/

/-! ## A061845.P11955601700070682032

`A134640(A220656(n+1))`
-/

namespace A061845.P11955601700070682032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134640 (A220656 (n + 1)).toNat

end

end A061845.P11955601700070682032

/-! ## A061845.P6715709169629528300

`A134640(A220655(n+1)+1)`
-/

namespace A061845.P6715709169629528300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134640 (A220655 (n + 1) + 1).toNat

end

end A061845.P6715709169629528300

/-! ## A061845.P16978418482593466554

`A068505(A199168(n+2))`
-/

namespace A061845.P16978418482593466554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A199168 (n + 2)).toNat

end

end A061845.P16978418482593466554

/-!
# A061848: An intermediate sequence for nonisomorphic circulant self-complementary undirected p^2-graphs, indexed by odd primes p.

The programs for A061848, there is no canonical definition to state claims against.
-/

/-! ## A061848.P7107006083762696663

`A038787(n+1)-A038791(n+2)`
-/

namespace A061848.P7107006083762696663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038787 (n + 1) - A038791 (n + 2)

end

end A061848.P7107006083762696663

/-! ## A061848.P7677093787413699431

`A038783(n+1)%A038791(n+2)`
-/

namespace A061848.P7677093787413699431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038783 (n + 1)) (A038791 (n + 2))

end

end A061848.P7677093787413699431

/-! ## A061848.P15709627413106542976

`A001868(A005097(n+1))%A038791(n+2)`
-/

namespace A061848.P15709627413106542976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001868 (A005097 (n + 1)).toNat) (A038791 (n + 2))

end

end A061848.P15709627413106542976

/-! ## A061848.P15875831107129105903

`A038787(A000027(n+1))%A038791(n+2)`
-/

namespace A061848.P15875831107129105903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038787 (A000027 (n + 1)).toNat) (A038791 (n + 2))

end

end A061848.P15875831107129105903

/-! ## A061848.P10395196345592557976

`A001868(A139791(n+1))%A038791(n+2)`
-/

namespace A061848.P10395196345592557976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001868 (A139791 (n + 1)).toNat) (A038791 (n + 2))

end

end A061848.P10395196345592557976

/-!
# A061849: Non-Cayley-isomorphic circulant self-complementary undirected p^2-graphs, indexed by odd primes p.

The programs for A061849, there is no canonical definition to state claims against.
-/

/-! ## A061849.P14660170618292407200

`A038784(n+1)%sqrt(A038788(n+1))`
-/

namespace A061849.P14660170618292407200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038784 (n + 1)) (SequenceMachineLib.roundAway (Real.sqrt (A038788 (n + 1) : ℝ)))

end

end A061849.P14660170618292407200

/-! ## A061849.P13833413394962375253

`A038784(A000027(n+1))%A000013(A005097(n+1))`
-/

namespace A061849.P13833413394962375253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038784 (A000027 (n + 1)).toNat) (A000013 (A005097 (n + 1)).toNat)

end

end A061849.P13833413394962375253

/-! ## A061849.P4796412292925427992

`A054246(n+3)%sqrt(A038788(n+1))`
-/

namespace A061849.P4796412292925427992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054246 (n + 3)) (SequenceMachineLib.roundAway (Real.sqrt (A038788 (n + 1) : ℝ)))

end

end A061849.P4796412292925427992

/-! ## A061849.P14679777955091214856

`A054246(n+3)%A054929(p?[A005408(n)])`
-/

namespace A061849.P14679777955091214856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054246 (n + 3)) (A054929 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat)

end

end A061849.P14679777955091214856

/-! ## A061849.P12477703312747578447

`A319394(A321716(n+4)²)²`
-/

namespace A061849.P12477703312747578447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (A321716 (n + 4) ^ 2).toNat ^ 2

end

end A061849.P12477703312747578447

/-!
# A061850: Squares whose consecutive digits vary by at most 1.

The programs for A061850, there is no canonical definition to state claims against.
-/

/-! ## A061850.P17643525781022663235

`A087553(A029804(n+2))`
-/

namespace A061850.P17643525781022663235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087553 (A029804 (n + 2)).toNat

end

end A061850.P17643525781022663235

/-! ## A061850.P15295541375976221102

`lt[A037904(A233583(n+1)²), 2]²`
-/

namespace A061850.P15295541375976221102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A233583 (n + 1) ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A061850.P15295541375976221102

/-! ## A061850.P16435711035817925328

`A087553(∩[A325457(n+1), A330927(n+1)])`
-/

namespace A061850.P16435711035817925328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330927 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087553 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A061850.P16435711035817925328

/-!
# A061851: Digital representation of n contains only 1's and 0's, is palindromic and contains no singleton 1's or 0's.

The programs for A061851, there is no canonical definition to state claims against.
-/

/-! ## A061851.P11590003342322300798

`A001232(n+1)/99`
-/

namespace A061851.P11590003342322300798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001232 (n + 1) : ℚ) / 99

end

end A061851.P11590003342322300798

/-! ## A061851.P14145958485411151543

`A008918(n+1)/198`
-/

namespace A061851.P14145958485411151543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008918 (n + 1) : ℚ) / 198

end

end A061851.P14145958485411151543

/-! ## A061851.P12296097823434019671

`A007088(A222813(n+1))`
-/

namespace A061851.P12296097823434019671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A222813 (n + 1)).toNat

end

end A061851.P12296097823434019671

/-! ## A061851.P13616026055196117851

`∩[A057148(n+1), A061852(n+1)]`
-/

namespace A061851.P13616026055196117851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061851.P13616026055196117851

/-! ## A061851.P2768466830170983065

`∩[A057148(n+1), A355280(n+1)]`
-/

namespace A061851.P2768466830170983065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061851.P2768466830170983065

/-! ## A061851.P4295423916432106828

`∩[A061852(n+1), A355280(n+1)]`
-/

namespace A061851.P4295423916432106828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061851.P4295423916432106828

/-! ## A061851.P1471960938075037447

`A223077(n+1)/92`
-/

namespace A061851.P1471960938075037447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223077 (n + 1) : ℚ) / 92

end

end A061851.P1471960938075037447

/-! ## A061851.P18108890358497594316

`gcd(A001232(n+1), A223077(n+1))`
-/

namespace A061851.P18108890358497594316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001232 (n + 1)) (A223077 (n + 1))

end

end A061851.P18108890358497594316

/-! ## A061851.P307760544247997061

`A001232(n+1)%(A008918(n+1)%A223077(n+1))`
-/

namespace A061851.P307760544247997061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001232 (n + 1)) (Int.tmod (A008918 (n + 1)) (A223077 (n + 1)))

end

end A061851.P307760544247997061

/-! ## A061851.P9406605418106020448

`∩[A006072(n+1), A061852(n+1)]`
-/

namespace A061851.P9406605418106020448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061851.P9406605418106020448

/-!
# A061852: Digital representation of m contains only either 1's or 2's (but not both 1's and 2's) and 0's, is palindromic and contains no singleton 2's, 1's or 0's.

The programs for A061852, there is no canonical definition to state claims against.
-/

/-! ## A061852.P17479056838627409467

`A008919(n+1)/99`
-/

namespace A061852.P17479056838627409467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008919 (n + 1) : ℚ) / 99

end

end A061852.P17479056838627409467

/-! ## A061852.P15181821739502897346

`∪[2*A061851(n+1), A061851(n+1)]`
-/

namespace A061852.P15181821739502897346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A061852.P15181821739502897346

/-! ## A061852.P13631872692801462298

`∪[A001232(n+1), A008918(n+1)]/99`
-/

namespace A061852.P13631872692801462298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008918 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 99

end

end A061852.P13631872692801462298

/-!
# A061853: Difference between smallest prime not dividing n and smallest nondivisor of n.

The programs for A061853, there is no canonical definition to state claims against.
-/

/-! ## A061853.P15091019139152711061

`A053669(n+1)-A007978(n+1)`
-/

namespace A061853.P15091019139152711061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1) - A007978 (n + 1)

end

end A061853.P15091019139152711061

/-! ## A061853.P9023640560746987935

`A071222(n)-A055874(n+1)`
-/

namespace A061853.P9023640560746987935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 n - A055874 (n + 1)

end

end A061853.P9023640560746987935

/-! ## A061853.P12793724805022234937

`A071222(n)+1-A007978(n+1)`
-/

namespace A061853.P12793724805022234937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 n + (1 - A007978 (n + 1))

end

end A061853.P12793724805022234937

/-! ## A061853.P1370723313086368123

`A079578(n+1)-A346563(n+1)`
-/

namespace A061853.P1370723313086368123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079578 (n + 1) - A346563 (n + 1)

end

end A061853.P1370723313086368123

/-! ## A061853.P2669173437037854440

`sqrt(A089090(n+1))-A007978(n+1)`
-/

namespace A061853.P2669173437037854440
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A089090 (n + 1) : ℝ) - (A007978 (n + 1) : ℝ)

end

end A061853.P2669173437037854440

/-! ## A061853.P10015254441829428852

`A053669(n+1)-(A055874(n+1)+1)`
-/

namespace A061853.P10015254441829428852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1) - (A055874 (n + 1) + 1)

end

end A061853.P10015254441829428852

/-! ## A061853.P12329420415893381757

`(A007978(n+1)*A071222(n))%A053669(n+1)`
-/

namespace A061853.P12329420415893381757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007978 (n + 1) * A071222 n) (A053669 (n + 1))

end

end A061853.P12329420415893381757

/-! ## A061853.P1372782858755715162

`(A053669(n+1)-A199968(n+1))%A053669(n+1)`
-/

namespace A061853.P1372782858755715162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053669 (n + 1) - A199968 (n + 1)) (A053669 (n + 1))

end

end A061853.P1372782858755715162

/-! ## A061853.P8865461849376866961

`A102839(n)%A330749(n+1)`
-/

namespace A061853.P8865461849376866961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102839 n) (A330749 (n + 1))

end

end A061853.P8865461849376866961

/-! ## A061853.P14541079430328825303

`A000578(A000217(n))%A330749(n+1)`
-/

namespace A061853.P14541079430328825303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 (A000217 n).toNat) (A330749 (n + 1))

end

end A061853.P14541079430328825303

/-! ## A061853.P7890858725502877473

`A067898(A219664(n+1))`
-/

namespace A061853.P7890858725502877473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (A219664 (n + 1)).toNat

end

end A061853.P7890858725502877473

/-! ## A061853.P12725173226279603944

`A067898(A050278(n+2)-A050278(n+1))`
-/

namespace A061853.P12725173226279603944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (A050278 (n + 2) - A050278 (n + 1)).toNat

end

end A061853.P12725173226279603944

/-! ## A061853.P8292773837461692957

`A007978((n+1)²)-A007978(n+1)`
-/

namespace A061853.P8292773837461692957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 ((n + 1) ^ 2) - A007978 (n + 1)

end

end A061853.P8292773837461692957

/-! ## A061853.P6887997424392417094

`A055874((n+1)²)-A055874(n+1)`
-/

namespace A061853.P6887997424392417094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 ((n + 1) ^ 2) - A055874 (n + 1)

end

end A061853.P6887997424392417094

/-!
# A061854: Nondiving binary sequences: numbers which in base 2 have at least the same number of 1's as 0's and reading the binary expansion from left (msb) to right (least significant bit), the number of 0's never exceeds the number of 1's.

The programs for A061854, there is no canonical definition to state claims against.
-/

/-! ## A061854.P15506990338468669028

`lt[0, A036988(A036044(n))]`
-/

namespace A061854.P15506990338468669028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 (A036044 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061854.P15506990338468669028

/-! ## A061854.P13464580379200249235

`eq[1, A037861(n)+A036989(n)]`
-/

namespace A061854.P13464580379200249235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n + A036989 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061854.P13464580379200249235

/-! ## A061854.P6007045139384453723

`eq[1, A036988(A036044(n+1))]+1`
-/

namespace A061854.P6007045139384453723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 (A036044 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A061854.P6007045139384453723

/-! ## A061854.P18430772535040820944

`eq[A036988(A036044(n)), A054977(n)]`
-/

namespace A061854.P18430772535040820944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 (A036044 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061854.P18430772535040820944

/-! ## A061854.P9723744897172399930

`eq[A036989(A036044(n)), A057427(n)]`
-/

namespace A061854.P9723744897172399930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 (A036044 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061854.P9723744897172399930

/-! ## A061854.P14415095028690711097

`eq[A034947(n+1)², A036989(A036044(n))]`
-/

namespace A061854.P14415095028690711097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 (A036044 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061854.P14415095028690711097

/-! ## A061854.P14801411240628714988

`record[(A000038(n)+n)/A036989(A036044(n))]`
-/

namespace A061854.P14801411240628714988
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n + (n : ℤ) : ℚ) / (A036989 (A036044 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061854.P14801411240628714988

/-! ## A061854.P17932021218179261949

`eq[-A037861(A017101(n)), A036989(n)]`
-/

namespace A061854.P17932021218179261949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A037861 (A017101 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061854.P17932021218179261949

/-! ## A061854.P16538714306125962446

`A344259(A061855(n+1)/2)`
-/

namespace A061854.P16538714306125962446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344259 (SequenceMachineLib.roundAway ((A061855 (n + 1) : ℚ) / 2)).toNat

end

end A061854.P16538714306125962446

/-! ## A061854.P2088461087257905217

`eq[2, A036989(A290254(n+1))]`
-/

namespace A061854.P2088461087257905217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 (A290254 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061854.P2088461087257905217

/-!
# A061855: Symmetric totally balanced binary sequences: those terms of A014486 which are equal to their reversed complement.

The programs for A061855, there is no canonical definition to state claims against.
-/

/-! ## A061855.P6893407367776526491

`A014486(A061856(n))`
-/

namespace A061855.P6893407367776526491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A061856 n).toNat

end

end A061855.P6893407367776526491

/-! ## A061855.P4085255584775099272

`A014486(eq[n, A057164(n)])`
-/

namespace A061855.P4085255584775099272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061855.P4085255584775099272

/-! ## A061855.P15700451082341876473

`A014486(record[gcd(n, A057164(n))])`
-/

namespace A061855.P15700451082341876473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A057164 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A061855.P15700451082341876473

/-! ## A061855.P14634874627376698550

`A014486(eq[A057163(n), A057506(n)])`
-/

namespace A061855.P14634874627376698550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A061855.P14634874627376698550

/-! ## A061855.P4115923623089454633

`A020639(2*(n+1))*A057520(A061856(n))`
-/

namespace A061855.P4115923623089454633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) * A057520 (A061856 n).toNat

end

end A061855.P4115923623089454633

/-!
# A061856: The positions of the terms of A061855 in the sequence A014486, terms fixed by the permutation A057164.

The programs for A061856, there is no canonical definition to state claims against.
-/

/-! ## A061856.P15891464028552646848

`eq[n, A057164(n)]`
-/

namespace A061856.P15891464028552646848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061856.P15891464028552646848

/-! ## A061856.P8322640694684753821

`eq[A057163(n), A057506(n)]`
-/

namespace A061856.P8322640694684753821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061856.P8322640694684753821

/-! ## A061856.P8992287998196339706

`eq[A057501(n), A069888(n)]`
-/

namespace A061856.P8992287998196339706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061856.P8992287998196339706

/-! ## A061856.P385905664849056635

`eq[A057502(n), A069889(n)]`
-/

namespace A061856.P385905664849056635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069889 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061856.P385905664849056635

/-! ## A061856.P1845471711670252330

`eq[A064638(n), A064639(n)]`
-/

namespace A061856.P1845471711670252330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064638 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064639 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061856.P1845471711670252330

/-! ## A061856.P11105901695092177357

`eq[A069771(n), A069772(n)]`
-/

namespace A061856.P11105901695092177357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069771 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061856.P11105901695092177357

/-! ## A061856.P14104757255579513185

`eq[A069787(n), A071662(n)]`
-/

namespace A061856.P14104757255579513185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071662 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061856.P14104757255579513185

/-! ## A061856.P869244123961335185

`eq[A071155(n), A071156(n)]`
-/

namespace A061856.P869244123961335185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071156 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061856.P869244123961335185

/-! ## A061856.P2758721017068184963

`eq[A082313(n), A082315(n)]`
-/

namespace A061856.P2758721017068184963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061856.P2758721017068184963

/-! ## A061856.P10579452751006326094

`eq[A082314(n), A082316(n)]`
-/

namespace A061856.P10579452751006326094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082314 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061856.P10579452751006326094

/-! ## A061856.P6857804307205324261

`eq[A085161(n), A085171(n)]`
-/

namespace A061856.P6857804307205324261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085171 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061856.P6857804307205324261

/-! ## A061856.P3673171102021960831

`record[gcd(A005843(n), A057164(n))]`
-/

namespace A061856.P3673171102021960831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 n) (A057164 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061856.P3673171102021960831

/-! ## A061856.P5986115484050535818

`eq[A074684(n), A130921(n)]`
-/

namespace A061856.P5986115484050535818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130921 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061856.P5986115484050535818

/-! ## A061856.P15607541486540179767

`eq[A126313(n), A126315(n)]`
-/

namespace A061856.P15607541486540179767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126313 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061856.P15607541486540179767

/-! ## A061856.P6162369603229882163

`eq[n, A127292(A127289(n))]`
-/

namespace A061856.P6162369603229882163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127292 (A127289 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061856.P6162369603229882163

/-! ## A061856.P1894410375054561238

`eq[A127289(n), A127291(n)]`
-/

namespace A061856.P1894410375054561238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127289 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127291 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061856.P1894410375054561238

/-! ## A061856.P4096023503311755339

`eq[n, A130921(A125981(n))]`
-/

namespace A061856.P4096023503311755339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130921 (A125981 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061856.P4096023503311755339

/-! ## A061856.P807405700571023022

`eq[A125981(n), A130922(n)]`
-/

namespace A061856.P807405700571023022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125981 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130922 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061856.P807405700571023022

/-! ## A061856.P15624140975411226837

`eq[n, A057505(A125977(A125976(n)))]`
-/

namespace A061856.P15624140975411226837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A125977 (A125976 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061856.P15624140975411226837

/-!
# A061857: Triangle in which the k-th item in the n-th row (both starting from 1) is the number of ways in which we can add 2 distinct integers from 1 to n in such a way that the sum is divisible by k.

The programs for A061857, there is no canonical definition to state claims against.
-/

/-! ## A061857.P12013450636362926356

`A220693(A063656(n)+1)`
-/

namespace A061857.P12013450636362926356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220693 (A063656 n + 1).toNat

end

end A061857.P12013450636362926356

/-! ## A061857.P15294185621654498256

`A220693(A093995(n+1)-A294317(n))`
-/

namespace A061857.P15294185621654498256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220693 (A093995 (n + 1) - A294317 n).toNat

end

end A061857.P15294185621654498256

/-! ## A061857.P5714908321353725328

`A220693(Δ[A014206(n)]-A094727(n+1))`
-/

namespace A061857.P5714908321353725328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220693 (f1 (n + 1) - f1 n - A094727 (n + 1)).toNat

end

end A061857.P5714908321353725328

/-! ## A061857.P13701460780249887242

`A220693(record[A048760(n)+A004737(n+1)])`
-/

namespace A061857.P13701460780249887242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 n + A004737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220693 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A061857.P13701460780249887242

/-! ## A061857.P9381813707470501508

`A220691(A245300(n)+A004736(n+1))`
-/

namespace A061857.P9381813707470501508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220691 (A245300 n + A004736 (n + 1)).toNat

end

end A061857.P9381813707470501508

/-!
# A061858: Differences between the ordinary multiplication table A004247 and the carryless multiplication table for GF(2)[X] polynomials A048720, i.e., the effect of the carry bits in binary multiplication.

The programs for A061858, there is no canonical definition to state claims against.
-/

/-! ## A061858.P18038857337947163192

`A004247(n)-A048720(n)`
-/

namespace A061858.P18038857337947163192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n - A048720 n

end

end A061858.P18038857337947163192

/-! ## A061858.P4757423772460280772

`A077028(n)-(A048720(n)+1)`
-/

namespace A061858.P4757423772460280772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n - (A048720 n + 1)

end

end A061858.P4757423772460280772

/-! ## A061858.P9982063678416248913

`A004442(A077028(n)-A048720(n))`
-/

namespace A061858.P9982063678416248913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A077028 n - A048720 n).toNat

end

end A061858.P9982063678416248913

/-! ## A061858.P1529751795831070472

`A023443(A077028(n)-A048720(n))`
-/

namespace A061858.P1529751795831070472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A077028 n - A048720 n).toNat

end

end A061858.P1529751795831070472

/-! ## A061858.P5563582652061659972

`A201629(A077028(n)-A048720(n))`
-/

namespace A061858.P5563582652061659972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 (A077028 n - A048720 n).toNat

end

end A061858.P5563582652061659972

/-! ## A061858.P8554574382395240827

`A004526(A130154(n+1))-A048720(n)`
-/

namespace A061858.P8554574382395240827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A130154 (n + 1)).toNat - A048720 n

end

end A061858.P8554574382395240827

/-! ## A061858.P17657696451122228209

`A008612(A287326(n))-A048720(n)`
-/

namespace A061858.P17657696451122228209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A287326 n).toNat - A048720 n

end

end A061858.P17657696451122228209

/-! ## A061858.P16613829587329264900

`(A004247(n)-A067138(n))*A177002(A002061(n))`
-/

namespace A061858.P16613829587329264900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004247 n - A067138 n) * A177002 (A002061 n).toNat

end

end A061858.P16613829587329264900

/-! ## A061858.P1786975927758633943

`(A004247(n)-A067138(n))*A177002(A330691(n+1)²)`
-/

namespace A061858.P1786975927758633943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004247 n - A067138 n) * A177002 (A330691 (n + 1) ^ 2).toNat

end

end A061858.P1786975927758633943

/-! ## A061858.P17577296578916561007

`A005843((A004247(n)-A067138(n))%A264490(n+1))`
-/

namespace A061858.P17577296578916561007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A004247 n - A067138 n) (A264490 (n + 1))).toNat

end

end A061858.P17577296578916561007

/-!
# A061859: Differences between the ordinary multiplication table A004247 and Xmult table A048720, computed for {3..n} * {3..n}.

The programs for A061859, there is no canonical definition to state claims against.
-/

/-! ## A061859.P15148030172695895446

`A061858(lt[1, A119335(n)])`
-/

namespace A061859.P15148030172695895446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A061859.P15148030172695895446

/-! ## A061859.P15766194891231048009

`A061858(lt[2, A004197(n)])`
-/

namespace A061859.P15766194891231048009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A061859.P15766194891231048009

/-! ## A061859.P16904880562719591422

`A061858(lt[9, A152714(n)])`
-/

namespace A061859.P16904880562719591422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A061859.P16904880562719591422

/-! ## A061859.P14101953479439490842

`A061858(lt[3, A003983(n+1)])`
-/

namespace A061859.P14101953479439490842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A061859.P14101953479439490842

/-! ## A061859.P9248929756538971572

`A061858(lt[1, A174450(n)-A211634(n)])`
-/

namespace A061859.P9248929756538971572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174450 n - A211634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A061859.P9248929756538971572

/-! ## A061859.P14537438409404752689

`A061858(lt[A211634(n+1), A174450(n)])`
-/

namespace A061859.P14537438409404752689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061858 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A061859.P14537438409404752689

/-!
# A061860: Variant of A061417.

The programs for A061860, there is no canonical definition to state claims against.
-/

/-! ## A061860.P9649688122428563395

`A122179(A117421(n))+A061417(n+1)`
-/

namespace A061860.P9649688122428563395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122179 (A117421 n).toNat + A061417 (n + 1)

end

end A061860.P9649688122428563395

/-! ## A061860.P10070086131289306452

`A350972(A006924(n))+A061417(n+1)`
-/

namespace A061860.P10070086131289306452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350972 (A006924 n).toNat + A061417 (n + 1)

end

end A061860.P10070086131289306452

/-! ## A061860.P17831706522413354207

`A122179(A117421(n))+A064649(n+1)/(n+1)`
-/

namespace A061860.P17831706522413354207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122179 (A117421 n).toNat : ℚ) + (A064649 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A061860.P17831706522413354207

/-!
# A061862: Powerful numbers (2a): a sum of nonnegative powers of its digits.

The programs for A061862, there is no canonical definition to state claims against.
-/

/-! ## A061862.P3037239288431556737

`record[A134703(n+1)%A351318(A134745(n+1))]`
-/

namespace A061862.P3037239288431556737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134703 (n + 1)) (A351318 (A134745 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061862.P3037239288431556737

/-!
# A061863: Numbers that are the product of the squares of some subset of their digits.

The programs for A061863, there is no canonical definition to state claims against.
-/

/-! ## A061863.P17064007458093754862

`eq[A088569(n+1), A278688(2*n+1)]²`
-/

namespace A061863.P17064007458093754862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278688 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A061863.P17064007458093754862

/-!
# A061864: Odd numbers that are the sum of two numbers with the same digits.

The programs for A061864, there is no canonical definition to state claims against.
-/

/-! ## A061864.P5352347715794729702

`eq[A000007(A331218(n)), A027656(n)]`
-/

namespace A061864.P5352347715794729702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A331218 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061864.P5352347715794729702

/-! ## A061864.P432367657323657902

`eq[A000035(n), A054977(A331218(n))]`
-/

namespace A061864.P432367657323657902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A331218 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061864.P432367657323657902

/-! ## A061864.P4043148958797907113

`eq[A000007(A331218(n)), A056594(n)]`
-/

namespace A061864.P4043148958797907113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A331218 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061864.P4043148958797907113

/-! ## A061864.P9153634211397360974

`eq[A000007(A331218(n)), A059841(n)]`
-/

namespace A061864.P9153634211397360974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A331218 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061864.P9153634211397360974

/-! ## A061864.P2286914548429854692

`eq[A040041(2*n), A040041(A331218(n))]`
-/

namespace A061864.P2286914548429854692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040041 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040041 (A331218 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061864.P2286914548429854692

/-!
# A061865: Triangle in which the k-th item in the n-th row (both starting from 1) is the number of ways in which we can add k distinct integers from 1 to n, in such a way that the sum is divisible by k.

The programs for A061865, there is no canonical definition to state claims against.
-/

/-! ## A061865.P8394071960980184209

`A135278(n)-A212137(n+1)`
-/

namespace A061865.P8394071960980184209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n - A212137 (n + 1)

end

end A061865.P8394071960980184209

/-! ## A061865.P16422887729407155088

`A074909(n+1)-A212137(n+1)`
-/

namespace A061865.P16422887729407155088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) - A212137 (n + 1)

end

end A061865.P16422887729407155088

/-! ## A061865.P11952082456012366015

`A007318(comp[∑[n]])-A212137(n+1)`
-/

namespace A061865.P11952082456012366015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A212137 (n + 1)

end

end A061865.P11952082456012366015

/-! ## A061865.P12191435036062121106

`A132749(A014132(n+1))-A212137(n+1)`
-/

namespace A061865.P12191435036062121106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 (A014132 (n + 1)).toNat - A212137 (n + 1)

end

end A061865.P12191435036062121106

/-! ## A061865.P8497931101070558256

`A135278(n)+A001489(A212137(n+1)+1)+1`
-/

namespace A061865.P8497931101070558256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n + A001489 (A212137 (n + 1) + 1).toNat + 1

end

end A061865.P8497931101070558256

/-! ## A061865.P533090678823336481

`A212139(n+1)+A212148(n+1)-A212137(n+1)`
-/

namespace A061865.P533090678823336481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212139 (n + 1) + (A212148 (n + 1) - A212137 (n + 1))

end

end A061865.P533090678823336481

/-!
# A061866: a(n) is the number of solutions to x+y+z = 0 mod 3, where 1 <= x < y < z <= n.

The programs for A061866, the canonical program `A061866.P1397291579944302660` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061866 has offset 0).

The definition of A061866 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061866.P1397291579944302660

`(C(n, 3)+2*floor(n/3))/3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061866

/-- `(C(n, 3)+2*floor(n/3))/3` -/
def P1397291579944302660.Spec : Prop :=
  ∀ n, P1397291579944302660.a n = (A061866 n : ℚ)

end A061866

/-! ## A061866.P10723999870393228764

`n-∑[floor(∑[2-n]/3)]`
-/

namespace A061866.P10723999870393228764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061866.P10723999870393228764

namespace A061866

/-- `n-∑[floor(∑[2-n]/3)]` -/
def P10723999870393228764.Spec : Prop :=
  ∀ n, P10723999870393228764.a n = A061866 n

end A061866

/-! ## A061866.P12494907493191167492

`∑[∑[a(n-3)+1]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=0`
-/

namespace A061866.P12494907493191167492
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1, 0] fun n f2 =>
  f2 (n - 3) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061866.P12494907493191167492

namespace A061866

/-- `∑[∑[a(n-3)+1]]` -/
def P12494907493191167492.Spec : Prop :=
  ∀ n, (P12494907493191167492.a n : ℤ) = A061866 n

end A061866

/-! ## A061866.P11143646757383307048

`∑[n-(3-a(n-3))]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A061866.P11143646757383307048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  (n : ℤ) - (3 - f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061866.P11143646757383307048

namespace A061866

/-- `∑[n-(3-a(n-3))]` -/
def P11143646757383307048.Spec : Prop :=
  ∀ n, P11143646757383307048.a n = A061866 n

end A061866

/-! ## A061866.P12376761166020135693

`∑[round((C(comp[2*(n+1)]-n, 2)+1)/3)]`
-/

namespace A061866.P12376761166020135693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + 1 : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061866.P12376761166020135693

namespace A061866

/-- `∑[round((C(comp[2*(n+1)]-n, 2)+1)/3)]` -/
def P12376761166020135693.Spec : Prop :=
  ∀ n, P12376761166020135693.a n = A061866 n

end A061866

/-! ## A061866.P16852777831560567060

`∑[A058212(n)%(n+1)²]`
-/

namespace A061866.P16852777831560567060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058212 n) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061866.P16852777831560567060

namespace A061866

/-- `∑[A058212(n)%(n+1)²]` -/
def P16852777831560567060.Spec : Prop :=
  ∀ n, P16852777831560567060.a n = A061866 n

end A061866

/-! ## A061866.P8015306680433729735

`∑[A053799(n)-(∑[n]+1)]`
-/

namespace A061866.P8015306680433729735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053799 n - ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061866.P8015306680433729735

namespace A061866

/-- `∑[A053799(n)-(∑[n]+1)]` -/
def P8015306680433729735.Spec : Prop :=
  ∀ n, P8015306680433729735.a n = A061866 n

end A061866

/-! ## A061866.P13739199839248844422

`∑[ceil(∑[(n+1)/3])-A028310(n)]`
-/

namespace A061866.P13739199839248844422
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉ - A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061866.P13739199839248844422

namespace A061866

/-- `∑[ceil(∑[(n+1)/3])-A028310(n)]` -/
def P13739199839248844422.Spec : Prop :=
  ∀ n, P13739199839248844422.a n = A061866 n

end A061866

/-! ## A061866.P4476382495514634600

`∑[A058212(A028310(n))]`
-/

namespace A061866.P4476382495514634600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058212 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061866.P4476382495514634600

namespace A061866

/-- `∑[A058212(A028310(n))]` -/
def P4476382495514634600.Spec : Prop :=
  ∀ n, P4476382495514634600.a n = A061866 n

end A061866

/-! ## A061866.P440236966038929501

`∑[∑[A008611(A254667(n))-1]]`
-/

namespace A061866.P440236966038929501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A254667 n).toNat - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061866.P440236966038929501

namespace A061866

/-- `∑[∑[A008611(A254667(n))-1]]` -/
def P440236966038929501.Spec : Prop :=
  ∀ n, P440236966038929501.a n = A061866 n

end A061866

/-! ## A061866.P8699840400020135853

`(A053798(n+1)-A053799(n+1))/2`
-/

namespace A061866.P8699840400020135853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053798 (n + 1) - A053799 (n + 1) : ℚ) / 2

end

end A061866.P8699840400020135853

namespace A061866

/-- `(A053798(n+1)-A053799(n+1))/2` -/
def P8699840400020135853.Spec : Prop :=
  ∀ n, P8699840400020135853.a n = (A061866 n : ℚ)

end A061866

/-! ## A061866.P17170859986661175689

`∑[∑[A250099(n+1)-A250100(n+1)]]`
-/

namespace A061866.P17170859986661175689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250099 (n + 1) - A250100 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061866.P17170859986661175689

namespace A061866

/-- `∑[∑[A250099(n+1)-A250100(n+1)]]` -/
def P17170859986661175689.Spec : Prop :=
  ∀ n, P17170859986661175689.a n = A061866 n

end A061866

/-! ## A061866.P9701873465868403849

`∑[A008752(n+3)-(n+3)]`
-/

namespace A061866.P9701873465868403849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008752 (n + 3) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061866.P9701873465868403849

namespace A061866

/-- `∑[A008752(n+3)-(n+3)]` -/
def P9701873465868403849.Spec : Prop :=
  ∀ n, P9701873465868403849.a n = A061866 n

end A061866

/-! ## A061866.P4682157146246862713

`A394827(2*n+9)`
-/

namespace A061866.P4682157146246862713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394827 (2 * n + 9)

end

end A061866.P4682157146246862713

namespace A061866

/-- `A394827(2*n+9)` -/
def P4682157146246862713.Spec : Prop :=
  ∀ n, P4682157146246862713.a n = A061866 n

end A061866

/-! ## A061866.P9647340728542479858

`∑[∑[val(A000792(n), 3)]]`
-/

namespace A061866.P9647340728542479858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000792 n).toNat 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061866.P9647340728542479858

namespace A061866

/-- `∑[∑[val(A000792(n), 3)]]` -/
def P9647340728542479858.Spec : Prop :=
  ∀ n, (P9647340728542479858.a n : ℤ) = A061866 n

end A061866

/-! ## A061866.P3192057881375259596

`∑[A058212(A002260(∑[n+3]))]`
-/

namespace A061866.P3192057881375259596
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058212 (A002260 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061866.P3192057881375259596

namespace A061866

/-- `∑[A058212(A002260(∑[n+3]))]` -/
def P3192057881375259596.Spec : Prop :=
  ∀ n, P3192057881375259596.a n = A061866 n

end A061866

/-! ## A061866.P9532985957709804837

`∑[A008615(A118403(n))]`
-/

namespace A061866.P9532985957709804837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A118403 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061866.P9532985957709804837

namespace A061866

/-- `∑[A008615(A118403(n))]` -/
def P9532985957709804837.Spec : Prop :=
  ∀ n, P9532985957709804837.a n = A061866 n

end A061866

/-! ## A061866.P169696495703226727

`∑[A008615(∑[2*A289207(n)])]`
-/

namespace A061866.P169696495703226727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A289207 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061866.P169696495703226727

namespace A061866

/-- `∑[A008615(∑[2*A289207(n)])]` -/
def P169696495703226727.Spec : Prop :=
  ∀ n, P169696495703226727.a n = A061866 n

end A061866

/-! ## A061866.P1499085981276254570

`∑[A008615(A289207(n)+A289207(n)²)]`
-/

namespace A061866.P1499085981276254570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A289207 n + A289207 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061866.P1499085981276254570

namespace A061866

/-- `∑[A008615(A289207(n)+A289207(n)²)]` -/
def P1499085981276254570.Spec : Prop :=
  ∀ n, P1499085981276254570.a n = A061866 n

end A061866

/-!
# A061867: Squares whose product of digits is also a square (allowing zeros).

The programs for A061867, the canonical program `A061867.P11555610868483655055` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061867 has offset 1).

The definition of A061867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061867.P11555610868483655055

`eq[1, A010052(A053667(n))]²`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A061867

/-- `eq[1, A010052(A053667(n))]²` -/
def P11555610868483655055.Spec : Prop :=
  ∀ n, (P11555610868483655055.a n : ℤ) = A061867 (n + 1)

theorem P11555610868483655055.correct : P11555610868483655055.Spec := by
  intro n
  simp only [A061867, Nat.add_sub_cancel]

end A061867

/-! ## A061867.P6732313571175614009

`record[A000290(n)*A010052(A053667(n))]`
-/

namespace A061867.P6732313571175614009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n * A010052 (A053667 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061867.P6732313571175614009

namespace A061867

/-- `record[A000290(n)*A010052(A053667(n))]` -/
def P6732313571175614009.Spec : Prop :=
  ∀ n, P6732313571175614009.a n = A061867 (n + 1)

end A061867

/-! ## A061867.P10329600261209696037

`eq[1, A010052(A053667(n))]^A036453(n+1)`
-/

namespace A061867.P10329600261209696037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A053667 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) ^ (A036453 (n + 1) : ℤ)

end

end A061867.P10329600261209696037

namespace A061867

/-- `eq[1, A010052(A053667(n))]^A036453(n+1)` -/
def P10329600261209696037.Spec : Prop :=
  ∀ n, P10329600261209696037.a n = (A061867 (n + 1) : ℚ)

end A061867

/-! ## A061867.P6457612184387943787

`eq[1, A010052(A053667(n))]^(2%A017377(n))`
-/

namespace A061867.P6457612184387943787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A053667 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) ^ (Int.tmod 2 (A017377 n) : ℤ)

end

end A061867.P6457612184387943787

namespace A061867

/-- `eq[1, A010052(A053667(n))]^(2%A017377(n))` -/
def P6457612184387943787.Spec : Prop :=
  ∀ n, P6457612184387943787.a n = (A061867 (n + 1) : ℚ)

end A061867

/-! ## A061867.P12433352735256478449

`eq[1, A010052(A053667(n))]^A083952(2*n+1)`
-/

namespace A061867.P12433352735256478449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A053667 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) ^ (A083952 (2 * n + 1) : ℤ)

end

end A061867.P12433352735256478449

namespace A061867

/-- `eq[1, A010052(A053667(n))]^A083952(2*n+1)` -/
def P12433352735256478449.Spec : Prop :=
  ∀ n, P12433352735256478449.a n = (A061867 (n + 1) : ℚ)

end A061867

/-!
# A061868: Numbers n such that n^2 has property that the sum of its digits and the product of its digits are squares (allowing zeros).

The programs for A061868, there is no canonical definition to state claims against.
-/

/-! ## A061868.P14986685900388659347

`sqrt(A061869(n+1))`
-/

namespace A061868.P14986685900388659347
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061869 (n + 1) : ℝ)

end

end A061868.P14986685900388659347

/-! ## A061868.P4982881765808097627

`A056926(A061869(n+1)+char[1])`
-/

namespace A061868.P4982881765808097627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A061869 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A061868.P4982881765808097627

/-! ## A061868.P913297053081219373

`A056926(∑{d}[A061869(n+1), A000010(#)])`
-/

namespace A061868.P913297053081219373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A061868.P913297053081219373

/-! ## A061868.P1739400614988346075

`A056926(A061869(n+1))/A007318(∑[n])`
-/

namespace A061868.P1739400614988346075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056926 (A061869 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A061868.P1739400614988346075

/-! ## A061868.P8663990543388101760

`A056926(A061869(n+1)%A053059(n+1))`
-/

namespace A061868.P8663990543388101760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (Int.tmod (A061869 (n + 1)) (A053059 (n + 1))).toNat

end

end A061868.P8663990543388101760

/-!
# A061869: Squares whose sum of digits as well as product of digits is a square (allowing zero).

The programs for A061869, there is no canonical definition to state claims against.
-/

/-! ## A061869.P7788344650965260401

`A061868(n+1)²`
-/

namespace A061869.P7788344650965260401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (n + 1) ^ 2

end

end A061869.P7788344650965260401

/-! ## A061869.P13676048937632496156

`record[A061868(A292266(n))²]`
-/

namespace A061869.P13676048937632496156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (A292266 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061869.P13676048937632496156

/-! ## A061869.P11409416600358683325

`record[A061868(A324347(n))²]`
-/

namespace A061869.P11409416600358683325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (A324347 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061869.P11409416600358683325

/-! ## A061869.P1362637869054003028

`A061868(n+1)^A020639(2*(n+1))`
-/

namespace A061869.P1362637869054003028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061868 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A061869.P1362637869054003028

/-! ## A061869.P11508170572744632765

`A061868(n+1)^A000032(C(2, n+2))`
-/

namespace A061869.P11508170572744632765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061868 (n + 1) : ℚ) ^ (A000032 (Nat.choose 2 (n + 2)) : ℤ)

end

end A061869.P11508170572744632765

/-! ## A061869.P3065834563748723254

`A061868(n+1)^A000040((-1)^(2*n))`
-/

namespace A061869.P3065834563748723254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061868 (n + 1) : ℚ) ^ (A000040 ((-1) ^ (2 * n)).toNat : ℤ)

end

end A061869.P3065834563748723254

/-! ## A061869.P13768749525329756131

`record[A061868(A292266(n))]*A061868(n+1)`
-/

namespace A061869.P13768749525329756131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (A292266 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A061868 (n + 1)

end

end A061869.P13768749525329756131

/-! ## A061869.P13084470216014642789

`record[A061868(A324347(n))]*A061868(n+1)`
-/

namespace A061869.P13084470216014642789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (A324347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A061868 (n + 1)

end

end A061869.P13084470216014642789

/-! ## A061869.P10181763569613540799

`record[A061868(A133310(n))²]`
-/

namespace A061869.P10181763569613540799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (A133310 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061869.P10181763569613540799

/-! ## A061869.P14414679794665005146

`record[A061868(A133310(n))]*A061868(n+1)`
-/

namespace A061869.P14414679794665005146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A061868 (n + 1)

end

end A061869.P14414679794665005146

/-! ## A061869.P16052178159695148672

`∩[A053057(n+1), A061867(n+1)]`
-/

namespace A061869.P16052178159695148672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061869.P16052178159695148672

/-!
# A061870: Numbers such that |first digit - second digit + third digit - fourth digit ...| = 1.

The programs for A061870, the canonical program `A061870.P8822362641979285632` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061870 has offset 1).

The definition of A061870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061870.P8822362641979285632

`∩[A054684(n+1), A175885(n+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061870

/-- `∩[A054684(n+1), A175885(n+1)]` -/
def P8822362641979285632.Spec : Prop :=
  ∀ n, (P8822362641979285632.a n : ℤ) = A061870 (n + 1)

theorem P8822362641979285632.correct : P8822362641979285632.Spec := by
  intro n
  simp only [A061870, Nat.add_sub_cancel]

end A061870

/-! ## A061870.P10859464564966768848

`eq[1, abs(A055017(n))]`
-/

namespace A061870.P10859464564966768848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061870.P10859464564966768848

namespace A061870

/-- `eq[1, abs(A055017(n))]` -/
def P10859464564966768848.Spec : Prop :=
  ∀ n, (P10859464564966768848.a n : ℤ) = A061870 (n + 1)

end A061870

/-! ## A061870.P5095076845501299822

`eq[1, abs(A225693(n))]`
-/

namespace A061870.P5095076845501299822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225693 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061870.P5095076845501299822

namespace A061870

/-- `eq[1, abs(A225693(n))]` -/
def P5095076845501299822.Spec : Prop :=
  ∀ n, (P5095076845501299822.a n : ℤ) = A061870 (n + 1)

end A061870

/-! ## A061870.P3580282133602141643

`record[(n+1)/(2-A225693(n+1)²)]`
-/

namespace A061870.P3580282133602141643
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 - A225693 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061870.P3580282133602141643

namespace A061870

/-- `record[(n+1)/(2-A225693(n+1)²)]` -/
def P3580282133602141643.Spec : Prop :=
  ∀ n, P3580282133602141643.a n = (A061870 (n + 1) : ℚ)

end A061870

/-! ## A061870.P9373014853132954817

`eq[1, A000217(A055017(n)²)]`
-/

namespace A061870.P9373014853132954817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A055017 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061870.P9373014853132954817

namespace A061870

/-- `eq[1, A000217(A055017(n)²)]` -/
def P9373014853132954817.Spec : Prop :=
  ∀ n, (P9373014853132954817.a n : ℤ) = A061870 (n + 1)

end A061870

/-! ## A061870.P9025812864746787332

`eq[1, A051885(A055017(n)²)]`
-/

namespace A061870.P9025812864746787332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A055017 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061870.P9025812864746787332

namespace A061870

/-- `eq[1, A051885(A055017(n)²)]` -/
def P9025812864746787332.Spec : Prop :=
  ∀ n, (P9025812864746787332.a n : ℤ) = A061870 (n + 1)

end A061870

/-! ## A061870.P6066217047165610916

`eq[1, A039723(A225693(n)²)]`
-/

namespace A061870.P6066217047165610916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039723 (A225693 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061870.P6066217047165610916

namespace A061870

/-- `eq[1, A039723(A225693(n)²)]` -/
def P6066217047165610916.Spec : Prop :=
  ∀ n, (P6066217047165610916.a n : ℤ) = A061870 (n + 1)

end A061870

/-! ## A061870.P6264373539302649351

`eq[2, A005843(A225693(n)²)]`
-/

namespace A061870.P6264373539302649351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A225693 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061870.P6264373539302649351

namespace A061870

/-- `eq[2, A005843(A225693(n)²)]` -/
def P6264373539302649351.Spec : Prop :=
  ∀ n, (P6264373539302649351.a n : ℤ) = A061870 (n + 1)

end A061870

/-! ## A061870.P18043525085814050095

`lt[A267870(A225693(n)²), 1]`
-/

namespace A061870.P18043525085814050095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267870 (A225693 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A061870.P18043525085814050095

namespace A061870

/-- `lt[A267870(A225693(n)²), 1]` -/
def P18043525085814050095.Spec : Prop :=
  ∀ n, (P18043525085814050095.a n : ℤ) = A061870 (n + 1)

end A061870

/-! ## A061870.P17836820525391440587

`filter[A175885(n+1), A179081(#)]`
-/

namespace A061870.P17836820525391440587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179081 (f1 j).toNat = 1) n)

end

end A061870.P17836820525391440587

namespace A061870

/-- `filter[A175885(n+1), A179081(#)]` -/
def P17836820525391440587.Spec : Prop :=
  ∀ n, P17836820525391440587.a n = A061870 (n + 1)

end A061870

/-! ## A061870.P16580635658589427038

`eq[1, gcd(A055017(n), A225693(n))]`
-/

namespace A061870.P16580635658589427038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055017 n) (A225693 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061870.P16580635658589427038

namespace A061870

/-- `eq[1, gcd(A055017(n), A225693(n))]` -/
def P16580635658589427038.Spec : Prop :=
  ∀ n, (P16580635658589427038.a n : ℤ) = A061870 (n + 1)

end A061870

/-! ## A061870.P12979439381628898115

`eq[1, A000217(A055017(n)*A055017(n))]`
-/

namespace A061870.P12979439381628898115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A055017 n * A055017 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061870.P12979439381628898115

namespace A061870

/-- `eq[1, A000217(A055017(n)*A055017(n))]` -/
def P12979439381628898115.Spec : Prop :=
  ∀ n, (P12979439381628898115.a n : ℤ) = A061870 (n + 1)

end A061870

/-! ## A061870.P13886248781643268082

`eq[1, A055017(A004086(n))*A225693(n)]`
-/

namespace A061870.P13886248781643268082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A004086 n).toNat * A225693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061870.P13886248781643268082

namespace A061870

/-- `eq[1, A055017(A004086(n))*A225693(n)]` -/
def P13886248781643268082.Spec : Prop :=
  ∀ n, (P13886248781643268082.a n : ℤ) = A061870 (n + 1)

end A061870

/-! ## A061870.P14168917354325131983

`eq[1, A039723(A225693(n)*A225693(n))]`
-/

namespace A061870.P14168917354325131983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039723 (A225693 n * A225693 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061870.P14168917354325131983

namespace A061870

/-- `eq[1, A039723(A225693(n)*A225693(n))]` -/
def P14168917354325131983.Spec : Prop :=
  ∀ n, (P14168917354325131983.a n : ℤ) = A061870 (n + 1)

end A061870

/-! ## A061870.P8783831541603847753

`eq[2, A005843(A225693(n)*A225693(n))]`
-/

namespace A061870.P8783831541603847753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A225693 n * A225693 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061870.P8783831541603847753

namespace A061870

/-- `eq[2, A005843(A225693(n)*A225693(n))]` -/
def P8783831541603847753.Spec : Prop :=
  ∀ n, (P8783831541603847753.a n : ℤ) = A061870 (n + 1)

end A061870

/-! ## A061870.P5476909240827060342

`eq[A055017(n)², A000041(A055017(n)²)]`
-/

namespace A061870.P5476909240827060342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A055017 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061870.P5476909240827060342

namespace A061870

/-- `eq[A055017(n)², A000041(A055017(n)²)]` -/
def P5476909240827060342.Spec : Prop :=
  ∀ n, (P5476909240827060342.a n : ℤ) = A061870 (n + 1)

end A061870

/-! ## A061870.P3187713842458515586

`eq[A055017(n)²*A033930(n), A033930(n)]`
-/

namespace A061870.P3187713842458515586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n ^ 2 * A033930 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061870.P3187713842458515586

namespace A061870

/-- `eq[A055017(n)²*A033930(n), A033930(n)]` -/
def P3187713842458515586.Spec : Prop :=
  ∀ n, (P3187713842458515586.a n : ℤ) = A061870 (n + 1)

end A061870

/-! ## A061870.P6878666671879496472

`eq[A225693(n)²*A269221(n), A269221(n)]`
-/

namespace A061870.P6878666671879496472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n ^ 2 * A269221 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269221 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061870.P6878666671879496472

namespace A061870

/-- `eq[A225693(n)²*A269221(n), A269221(n)]` -/
def P6878666671879496472.Spec : Prop :=
  ∀ n, (P6878666671879496472.a n : ℤ) = A061870 (n + 1)

end A061870

/-!
# A061871: |First digit - second digit + third digit - fourth digit ...| = 2.

The programs for A061871, the canonical program `A061871.P4211668016980417817` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061871 has offset 1).

The definition of A061871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1266 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061871.P4211668016980417817

`eq[2, abs(A055017(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061871

/-- `eq[2, abs(A055017(n))]` -/
def P4211668016980417817.Spec : Prop :=
  ∀ n, (P4211668016980417817.a n : ℤ) = A061871 (n + 1)

theorem P4211668016980417817.correct : P4211668016980417817.Spec := by
  intro n
  simp only [A061871, Nat.add_sub_cancel]

end A061871

/-! ## A061871.P940685759239027714

`eq[2, abs(A225693(n))]`
-/

namespace A061871.P940685759239027714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225693 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061871.P940685759239027714

namespace A061871

/-- `eq[2, abs(A225693(n))]` -/
def P940685759239027714.Spec : Prop :=
  ∀ n, (P940685759239027714.a n : ℤ) = A061871 (n + 1)

end A061871

/-! ## A061871.P17514000084204346997

`eq[1, A086520(A055017(n)²)]`
-/

namespace A061871.P17514000084204346997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A055017 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061871.P17514000084204346997

namespace A061871

/-- `eq[1, A086520(A055017(n)²)]` -/
def P17514000084204346997.Spec : Prop :=
  ∀ n, (P17514000084204346997.a n : ℤ) = A061871 (n + 1)

end A061871

/-! ## A061871.P15040572838718179488

`eq[1, A143645(A055017(n)²)]`
-/

namespace A061871.P15040572838718179488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143645 (A055017 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061871.P15040572838718179488

namespace A061871

/-- `eq[1, A143645(A055017(n)²)]` -/
def P15040572838718179488.Spec : Prop :=
  ∀ n, (P15040572838718179488.a n : ℤ) = A061871 (n + 1)

end A061871

/-! ## A061871.P3048230565737643255

`eq[1, A143737(A055017(n)²)]`
-/

namespace A061871.P3048230565737643255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143737 (A055017 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061871.P3048230565737643255

namespace A061871

/-- `eq[1, A143737(A055017(n)²)]` -/
def P3048230565737643255.Spec : Prop :=
  ∀ n, (P3048230565737643255.a n : ℤ) = A061871 (n + 1)

end A061871

/-! ## A061871.P5423428470602585120

`eq[1, A002265(A225693(n)²)]`
-/

namespace A061871.P5423428470602585120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A225693 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061871.P5423428470602585120

namespace A061871

/-- `eq[1, A002265(A225693(n)²)]` -/
def P5423428470602585120.Spec : Prop :=
  ∀ n, (P5423428470602585120.a n : ℤ) = A061871 (n + 1)

end A061871

/-! ## A061871.P10509802149674666527

`eq[2, A003056(A055017(n)²)]`
-/

namespace A061871.P10509802149674666527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A055017 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061871.P10509802149674666527

namespace A061871

/-- `eq[2, A003056(A055017(n)²)]` -/
def P10509802149674666527.Spec : Prop :=
  ∀ n, (P10509802149674666527.a n : ℤ) = A061871 (n + 1)

end A061871

/-! ## A061871.P10833330863247198388

`eq[2, A007318(A055017(n)²)]`
-/

namespace A061871.P10833330863247198388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A055017 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061871.P10833330863247198388

namespace A061871

/-- `eq[2, A007318(A055017(n)²)]` -/
def P10833330863247198388.Spec : Prop :=
  ∀ n, (P10833330863247198388.a n : ℤ) = A061871 (n + 1)

end A061871

/-! ## A061871.P5437095043255918059

`eq[2, A000194(A225693(n)²)]`
-/

namespace A061871.P5437095043255918059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A225693 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061871.P5437095043255918059

namespace A061871

/-- `eq[2, A000194(A225693(n)²)]` -/
def P5437095043255918059.Spec : Prop :=
  ∀ n, (P5437095043255918059.a n : ℤ) = A061871 (n + 1)

end A061871

/-! ## A061871.P11704834433139828821

`eq[2, A137735(A225693(n)²)]`
-/

namespace A061871.P11704834433139828821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A225693 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061871.P11704834433139828821

namespace A061871

/-- `eq[2, A137735(A225693(n)²)]` -/
def P11704834433139828821.Spec : Prop :=
  ∀ n, (P11704834433139828821.a n : ℤ) = A061871 (n + 1)

end A061871

/-! ## A061871.P10306846895827551702

`eq[4, A051885(A055017(n)²)]`
-/

namespace A061871.P10306846895827551702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A055017 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061871.P10306846895827551702

namespace A061871

/-- `eq[4, A051885(A055017(n)²)]` -/
def P10306846895827551702.Spec : Prop :=
  ∀ n, (P10306846895827551702.a n : ℤ) = A061871 (n + 1)

end A061871

/-! ## A061871.P365632051357773686

`eq[2, gcd(A055017(n), A225693(n))]`
-/

namespace A061871.P365632051357773686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055017 n) (A225693 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061871.P365632051357773686

namespace A061871

/-- `eq[2, gcd(A055017(n), A225693(n))]` -/
def P365632051357773686.Spec : Prop :=
  ∀ n, (P365632051357773686.a n : ℤ) = A061871 (n + 1)

end A061871

/-! ## A061871.P10217022397358903712

`eq[2, A007318(A055017(n)*A055017(n))]`
-/

namespace A061871.P10217022397358903712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A055017 n * A055017 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061871.P10217022397358903712

namespace A061871

/-- `eq[2, A007318(A055017(n)*A055017(n))]` -/
def P10217022397358903712.Spec : Prop :=
  ∀ n, (P10217022397358903712.a n : ℤ) = A061871 (n + 1)

end A061871

/-! ## A061871.P6131751928172479581

`eq[4, A051885(A055017(n)*A055017(n))]`
-/

namespace A061871.P6131751928172479581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A055017 n * A055017 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061871.P6131751928172479581

namespace A061871

/-- `eq[4, A051885(A055017(n)*A055017(n))]` -/
def P6131751928172479581.Spec : Prop :=
  ∀ n, (P6131751928172479581.a n : ℤ) = A061871 (n + 1)

end A061871

/-!
# A061872: |First digit - second digit + third digit - fourth digit ...| = 3.

The programs for A061872, the canonical program `A061872.P8936749673548333355` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061872 has offset 1).

The definition of A061872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061872.P8936749673548333355

`eq[3, abs(A055017(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061872

/-- `eq[3, abs(A055017(n))]` -/
def P8936749673548333355.Spec : Prop :=
  ∀ n, (P8936749673548333355.a n : ℤ) = A061872 (n + 1)

theorem P8936749673548333355.correct : P8936749673548333355.Spec := by
  intro n
  simp only [A061872, Nat.add_sub_cancel]

end A061872

/-! ## A061872.P5348770932670014445

`eq[3, abs(A225693(n))]`
-/

namespace A061872.P5348770932670014445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225693 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061872.P5348770932670014445

namespace A061872

/-- `eq[3, abs(A225693(n))]` -/
def P5348770932670014445.Spec : Prop :=
  ∀ n, (P5348770932670014445.a n : ℤ) = A061872 (n + 1)

end A061872

/-! ## A061872.P13552837683183959731

`eq[2, A008612(A055017(n)²)]`
-/

namespace A061872.P13552837683183959731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A055017 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061872.P13552837683183959731

namespace A061872

/-- `eq[2, A008612(A055017(n)²)]` -/
def P13552837683183959731.Spec : Prop :=
  ∀ n, (P13552837683183959731.a n : ℤ) = A061872 (n + 1)

end A061872

/-! ## A061872.P12814624911784959362

`eq[2, A063667(A055017(n)²)]`
-/

namespace A061872.P12814624911784959362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063667 (A055017 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061872.P12814624911784959362

namespace A061872

/-- `eq[2, A063667(A055017(n)²)]` -/
def P12814624911784959362.Spec : Prop :=
  ∀ n, (P12814624911784959362.a n : ℤ) = A061872 (n + 1)

end A061872

/-! ## A061872.P16212118375508962127

`eq[2, A086520(A055017(n)²)]`
-/

namespace A061872.P16212118375508962127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A055017 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061872.P16212118375508962127

namespace A061872

/-- `eq[2, A086520(A055017(n)²)]` -/
def P16212118375508962127.Spec : Prop :=
  ∀ n, (P16212118375508962127.a n : ℤ) = A061872 (n + 1)

end A061872

/-! ## A061872.P3582253308884616753

`eq[2, A002265(A225693(n)²)]`
-/

namespace A061872.P3582253308884616753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A225693 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061872.P3582253308884616753

namespace A061872

/-- `eq[2, A002265(A225693(n)²)]` -/
def P3582253308884616753.Spec : Prop :=
  ∀ n, (P3582253308884616753.a n : ℤ) = A061872 (n + 1)

end A061872

/-! ## A061872.P11429594143589606341

`eq[3, A000194(A225693(n)²)]`
-/

namespace A061872.P11429594143589606341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A225693 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061872.P11429594143589606341

namespace A061872

/-- `eq[3, A000194(A225693(n)²)]` -/
def P11429594143589606341.Spec : Prop :=
  ∀ n, (P11429594143589606341.a n : ℤ) = A061872 (n + 1)

end A061872

/-! ## A061872.P12614129948497088146

`eq[3, A137735(A225693(n)²)]`
-/

namespace A061872.P12614129948497088146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A225693 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061872.P12614129948497088146

namespace A061872

/-- `eq[3, A137735(A225693(n)²)]` -/
def P12614129948497088146.Spec : Prop :=
  ∀ n, (P12614129948497088146.a n : ℤ) = A061872 (n + 1)

end A061872

/-! ## A061872.P6708892837231656110

`filter[A299647(n+1), A179081(#)]`
-/

namespace A061872.P6708892837231656110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179081 (f1 j).toNat = 1) n)

end

end A061872.P6708892837231656110

namespace A061872

/-- `filter[A299647(n+1), A179081(#)]` -/
def P6708892837231656110.Spec : Prop :=
  ∀ n, P6708892837231656110.a n = A061872 (n + 1)

end A061872

/-!
# A061873: Numbers k such that |first digit - second digit + third digit - fourth digit ...| = 4.

The programs for A061873, the canonical program `A061873.P6247734028720904394` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061873 has offset 1).

The definition of A061873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1080 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061873.P6247734028720904394

`eq[4, abs(A055017(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061873

/-- `eq[4, abs(A055017(n))]` -/
def P6247734028720904394.Spec : Prop :=
  ∀ n, (P6247734028720904394.a n : ℤ) = A061873 (n + 1)

theorem P6247734028720904394.correct : P6247734028720904394.Spec := by
  intro n
  simp only [A061873, Nat.add_sub_cancel]

end A061873

/-! ## A061873.P11094533380219716438

`eq[4, abs(A225693(n))]`
-/

namespace A061873.P11094533380219716438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225693 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061873.P11094533380219716438

namespace A061873

/-- `eq[4, abs(A225693(n))]` -/
def P11094533380219716438.Spec : Prop :=
  ∀ n, (P11094533380219716438.a n : ℤ) = A061873 (n + 1)

end A061873

/-! ## A061873.P9659818476521427159

`eq[16, A055017(n+1)²]+1`
-/

namespace A061873.P9659818476521427159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A061873.P9659818476521427159

namespace A061873

/-- `eq[16, A055017(n+1)²]+1` -/
def P9659818476521427159.Spec : Prop :=
  ∀ n, (P9659818476521427159.a n : ℤ) = A061873 (n + 1)

end A061873

/-! ## A061873.P10119209163894868639

`eq[2, A002265(A225693(n)²)-2]`
-/

namespace A061873.P10119209163894868639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A225693 n ^ 2).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061873.P10119209163894868639

namespace A061873

/-- `eq[2, A002265(A225693(n)²)-2]` -/
def P10119209163894868639.Spec : Prop :=
  ∀ n, (P10119209163894868639.a n : ℤ) = A061873 (n + 1)

end A061873

/-! ## A061873.P11841371632623642805

`eq[1, (A055017(A004086(n))/4)²]`
-/

namespace A061873.P11841371632623642805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A055017 (A004086 n).toNat : ℚ) / 4) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A061873.P11841371632623642805

namespace A061873

/-- `eq[1, (A055017(A004086(n))/4)²]` -/
def P11841371632623642805.Spec : Prop :=
  ∀ n, (P11841371632623642805.a n : ℤ) = A061873 (n + 1)

end A061873

/-!
# A061874: |First digit - second digit + third digit - fourth digit ...| = 5.

The programs for A061874, the canonical program `A061874.P18279928376283005520` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061874 has offset 1).

The definition of A061874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 960 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061874.P18279928376283005520

`eq[5, abs(A055017(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061874

/-- `eq[5, abs(A055017(n))]` -/
def P18279928376283005520.Spec : Prop :=
  ∀ n, (P18279928376283005520.a n : ℤ) = A061874 (n + 1)

theorem P18279928376283005520.correct : P18279928376283005520.Spec := by
  intro n
  simp only [A061874, Nat.add_sub_cancel]

end A061874

/-! ## A061874.P3978637407905454657

`eq[5, abs(A225693(n))]`
-/

namespace A061874.P3978637407905454657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225693 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061874.P3978637407905454657

namespace A061874

/-- `eq[5, abs(A225693(n))]` -/
def P3978637407905454657.Spec : Prop :=
  ∀ n, (P3978637407905454657.a n : ℤ) = A061874 (n + 1)

end A061874

/-! ## A061874.P5042990363819439861

`eq[1, A004086((2*A055017(n))²)]`
-/

namespace A061874.P5042990363819439861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ((2 * A055017 n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061874.P5042990363819439861

namespace A061874

/-- `eq[1, A004086((2*A055017(n))²)]` -/
def P5042990363819439861.Spec : Prop :=
  ∀ n, (P5042990363819439861.a n : ℤ) = A061874 (n + 1)

end A061874

/-! ## A061874.P13409352167440489936

`eq[6, A208981(A225693(n)²+1)]`
-/

namespace A061874.P13409352167440489936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208981 (A225693 n ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061874.P13409352167440489936

namespace A061874

/-- `eq[6, A208981(A225693(n)²+1)]` -/
def P13409352167440489936.Spec : Prop :=
  ∀ n, (P13409352167440489936.a n : ℤ) = A061874 (n + 1)

end A061874

/-! ## A061874.P15182962470451861005

`eq[14, A000265(A055017(n)²+1)+1]`
-/

namespace A061874.P15182962470451861005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A055017 n ^ 2 + 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061874.P15182962470451861005

namespace A061874

/-- `eq[14, A000265(A055017(n)²+1)+1]` -/
def P15182962470451861005.Spec : Prop :=
  ∀ n, (P15182962470451861005.a n : ℤ) = A061874 (n + 1)

end A061874

/-!
# A061875: |First digit - second digit + third digit - fourth digit ...| = 6.

The programs for A061875, the canonical program `A061875.P9907277657578756427` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061875 has offset 1).

The definition of A061875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 830 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061875.P9907277657578756427

`eq[6, abs(A055017(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061875

/-- `eq[6, abs(A055017(n))]` -/
def P9907277657578756427.Spec : Prop :=
  ∀ n, (P9907277657578756427.a n : ℤ) = A061875 (n + 1)

theorem P9907277657578756427.correct : P9907277657578756427.Spec := by
  intro n
  simp only [A061875, Nat.add_sub_cancel]

end A061875

/-! ## A061875.P7855062692929080693

`eq[6, abs(A225693(n))]`
-/

namespace A061875.P7855062692929080693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225693 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061875.P7855062692929080693

namespace A061875

/-- `eq[6, abs(A225693(n))]` -/
def P7855062692929080693.Spec : Prop :=
  ∀ n, (P7855062692929080693.a n : ℤ) = A061875 (n + 1)

end A061875

/-! ## A061875.P16167005577352591418

`eq[6, A165331(A055017(n)²)]`
-/

namespace A061875.P16167005577352591418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165331 (A055017 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061875.P16167005577352591418

namespace A061875

/-- `eq[6, A165331(A055017(n)²)]` -/
def P16167005577352591418.Spec : Prop :=
  ∀ n, (P16167005577352591418.a n : ℤ) = A061875 (n + 1)

end A061875

/-! ## A061875.P2555331636054741399

`eq[8, A003056(A055017(n)²)]`
-/

namespace A061875.P2555331636054741399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A055017 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061875.P2555331636054741399

namespace A061875

/-- `eq[8, A003056(A055017(n)²)]` -/
def P2555331636054741399.Spec : Prop :=
  ∀ n, (P2555331636054741399.a n : ℤ) = A061875 (n + 1)

end A061875

/-! ## A061875.P13924272259331599435

`eq[9, A014085(A055017(n)²)]`
-/

namespace A061875.P13924272259331599435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A055017 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061875.P13924272259331599435

namespace A061875

/-- `eq[9, A014085(A055017(n)²)]` -/
def P13924272259331599435.Spec : Prop :=
  ∀ n, (P13924272259331599435.a n : ℤ) = A061875 (n + 1)

end A061875

/-!
# A061876: |First digit - second digit + third digit - fourth digit ...| = 7.

The programs for A061876, the canonical program `A061876.P5832762416077138613` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061876 has offset 1).

The definition of A061876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 696 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061876.P5832762416077138613

`eq[7, abs(A055017(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061876

/-- `eq[7, abs(A055017(n))]` -/
def P5832762416077138613.Spec : Prop :=
  ∀ n, (P5832762416077138613.a n : ℤ) = A061876 (n + 1)

theorem P5832762416077138613.correct : P5832762416077138613.Spec := by
  intro n
  simp only [A061876, Nat.add_sub_cancel]

end A061876

/-! ## A061876.P5102142522720528530

`eq[7, abs(A225693(n))]`
-/

namespace A061876.P5102142522720528530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225693 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061876.P5102142522720528530

namespace A061876

/-- `eq[7, abs(A225693(n))]` -/
def P5102142522720528530.Spec : Prop :=
  ∀ n, (P5102142522720528530.a n : ℤ) = A061876 (n + 1)

end A061876

/-! ## A061876.P1861970209602823368

`eq[8, A008612(A055017(n)²)]`
-/

namespace A061876.P1861970209602823368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A055017 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061876.P1861970209602823368

namespace A061876

/-- `eq[8, A008612(A055017(n)²)]` -/
def P1861970209602823368.Spec : Prop :=
  ∀ n, (P1861970209602823368.a n : ℤ) = A061876 (n + 1)

end A061876

/-! ## A061876.P10192984557824326008

`eq[9, A003056(A055017(n)²)]`
-/

namespace A061876.P10192984557824326008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A055017 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061876.P10192984557824326008

namespace A061876

/-- `eq[9, A003056(A055017(n)²)]` -/
def P10192984557824326008.Spec : Prop :=
  ∀ n, (P10192984557824326008.a n : ℤ) = A061876 (n + 1)

end A061876

/-! ## A061876.P5780537126511200309

`eq[10, A014085(A055017(n)²)]`
-/

namespace A061876.P5780537126511200309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A055017 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061876.P5780537126511200309

namespace A061876

/-- `eq[10, A014085(A055017(n)²)]` -/
def P5780537126511200309.Spec : Prop :=
  ∀ n, (P5780537126511200309.a n : ℤ) = A061876 (n + 1)

end A061876

/-! ## A061876.P11608476461322427162

`eq[7, gcd(A055017(n), A225693(n))]`
-/

namespace A061876.P11608476461322427162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055017 n) (A225693 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061876.P11608476461322427162

namespace A061876

/-- `eq[7, gcd(A055017(n), A225693(n))]` -/
def P11608476461322427162.Spec : Prop :=
  ∀ n, (P11608476461322427162.a n : ℤ) = A061876 (n + 1)

end A061876

/-!
# A061877: |First digit - second digit + third digit - fourth digit ...| = 8.

The programs for A061877, the canonical program `A061877.P2858329656975612530` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061877 has offset 1).

The definition of A061877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061877.P2858329656975612530

`eq[8, abs(A055017(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061877

/-- `eq[8, abs(A055017(n))]` -/
def P2858329656975612530.Spec : Prop :=
  ∀ n, (P2858329656975612530.a n : ℤ) = A061877 (n + 1)

theorem P2858329656975612530.correct : P2858329656975612530.Spec := by
  intro n
  simp only [A061877, Nat.add_sub_cancel]

end A061877

/-! ## A061877.P11047175695502984307

`eq[8, abs(A225693(n))]`
-/

namespace A061877.P11047175695502984307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225693 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061877.P11047175695502984307

namespace A061877

/-- `eq[8, abs(A225693(n))]` -/
def P11047175695502984307.Spec : Prop :=
  ∀ n, (P11047175695502984307.a n : ℤ) = A061877 (n + 1)

end A061877

/-! ## A061877.P14298184143813476201

`eq[2, A225693(A055017(n)²)]`
-/

namespace A061877.P14298184143813476201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 (A055017 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061877.P14298184143813476201

namespace A061877

/-- `eq[2, A225693(A055017(n)²)]` -/
def P14298184143813476201.Spec : Prop :=
  ∀ n, (P14298184143813476201.a n : ℤ) = A061877 (n + 1)

end A061877

/-! ## A061877.P16716437658083938782

`eq[2, A225693(A225693(n)²)]`
-/

namespace A061877.P16716437658083938782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 (A225693 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061877.P16716437658083938782

namespace A061877

/-- `eq[2, A225693(A225693(n)²)]` -/
def P16716437658083938782.Spec : Prop :=
  ∀ n, (P16716437658083938782.a n : ℤ) = A061877 (n + 1)

end A061877

/-! ## A061877.P11884232666143434479

`eq[8, A019567(A055017(n)²)]`
-/

namespace A061877.P11884232666143434479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019567 (A055017 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061877.P11884232666143434479

namespace A061877

/-- `eq[8, A019567(A055017(n)²)]` -/
def P11884232666143434479.Spec : Prop :=
  ∀ n, (P11884232666143434479.a n : ℤ) = A061877 (n + 1)

end A061877

/-! ## A061877.P1655236964536544889

`eq[10, A007318(A055017(n)²)]`
-/

namespace A061877.P1655236964536544889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A055017 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061877.P1655236964536544889

namespace A061877

/-- `eq[10, A007318(A055017(n)²)]` -/
def P1655236964536544889.Spec : Prop :=
  ∀ n, (P1655236964536544889.a n : ℤ) = A061877 (n + 1)

end A061877

/-! ## A061877.P15132633512500887772

`eq[64, A055017(A004086(n))²]`
-/

namespace A061877.P15132633512500887772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A004086 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061877.P15132633512500887772

namespace A061877

/-- `eq[64, A055017(A004086(n))²]` -/
def P15132633512500887772.Spec : Prop :=
  ∀ n, (P15132633512500887772.a n : ℤ) = A061877 (n + 1)

end A061877

/-!
# A061878: |First digit - second digit + third digit - fourth digit ...| = 9.

The programs for A061878, the canonical program `A061878.P8172059552371590788` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061878 has offset 1).

The definition of A061878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061878.P8172059552371590788

`eq[9, abs(A055017(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061878

/-- `eq[9, abs(A055017(n))]` -/
def P8172059552371590788.Spec : Prop :=
  ∀ n, (P8172059552371590788.a n : ℤ) = A061878 (n + 1)

theorem P8172059552371590788.correct : P8172059552371590788.Spec := by
  intro n
  simp only [A061878, Nat.add_sub_cancel]

end A061878

/-! ## A061878.P542430309215656004

`eq[9, abs(A225693(n))]`
-/

namespace A061878.P542430309215656004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225693 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061878.P542430309215656004

namespace A061878

/-- `eq[9, abs(A225693(n))]` -/
def P542430309215656004.Spec : Prop :=
  ∀ n, (P542430309215656004.a n : ℤ) = A061878 (n + 1)

end A061878

/-!
# A061879: First (leftmost) digit - second digit + third digit - fourth digit .... = 10.

The programs for A061879, there is no canonical definition to state claims against.
-/

/-! ## A061879.P14289396829864534753

`eq[10, A225693(n)]`
-/

namespace A061879.P14289396829864534753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061879.P14289396829864534753

/-! ## A061879.P6632186133743096037

`eq[10, A055017(A004086(n))]`
-/

namespace A061879.P6632186133743096037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061879.P6632186133743096037

/-!
# A061880: First (leftmost) digit - second digit + third digit - fourth digit .... = 11.

The programs for A061880, there is no canonical definition to state claims against.
-/

/-! ## A061880.P13490994848327816546

`eq[11, A225693(n)]`
-/

namespace A061880.P13490994848327816546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061880.P13490994848327816546

/-! ## A061880.P633440802990985788

`A008593(lt[0, A225693(11*n)])`
-/

namespace A061880.P633440802990985788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 (11 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A061880.P633440802990985788

/-! ## A061880.P645972840477700123

`record[A173639(n+1)*A225693(A060979(n+1))]`
-/

namespace A061880.P645972840477700123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173639 (n + 1) * A225693 (A060979 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061880.P645972840477700123

/-!
# A061881: First (leftmost) digit - second digit + third digit - fourth digit .... = 12.

The programs for A061881, there is no canonical definition to state claims against.
-/

/-! ## A061881.P3091594887672089957

`eq[12, A225693(n)]`
-/

namespace A061881.P3091594887672089957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061881.P3091594887672089957

/-!
# A061882: a(n) = Smallest nontrivial number k > 9 such that first (leftmost) digit - second digit + third digit - fourth digit ... of k = n.

The programs for A061882, there is no canonical definition to state claims against.
-/

/-! ## A061882.P11865207212032365804

`A229186(n)+A118759(record[A193581(n)])`
-/

namespace A061882.P11865207212032365804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229186 n + A118759 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A061882.P11865207212032365804

/-!
# A061883: Largest triangular number less than or equal to sum of previous terms with a(0)=1.

The programs for A061883, there is no canonical definition to state claims against.
-/

/-! ## A061883.P16668670389368752870

`A000007(n)+Δ[A060985(A028310(n))]`
-/

namespace A061883.P16668670389368752870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060985 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A061883.P16668670389368752870

/-! ## A061883.P16502607618616362146

`Δ[A060985(A028310(n))+A057427(n)]`
-/

namespace A061883.P16502607618616362146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060985 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061883.P16502607618616362146

/-! ## A061883.P13304496824948333153

`Δ[A060985(A028310(n))+A036453(n+1)]`
-/

namespace A061883.P13304496824948333153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060985 (A028310 n).toNat + A036453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061883.P13304496824948333153

/-! ## A061883.P17593976035608836134

`A060985(n+1)+A000007(n)-A060985(A028310(n))`
-/

namespace A061883.P17593976035608836134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060985 (n + 1) + (A000007 n - A060985 (A028310 n).toNat)

end

end A061883.P17593976035608836134

/-! ## A061883.P15841360012054060208

`A060985(n+1)-A057427(n)*A060985(A028310(n))`
-/

namespace A061883.P15841360012054060208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060985 (n + 1) - A057427 n * A060985 (A028310 n).toNat

end

end A061883.P15841360012054060208

/-! ## A061883.P10984133908218267372

`Δ[A060985(A028310(n))%A000079(n)]`
-/

namespace A061883.P10984133908218267372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060985 (A028310 n).toNat) (A000079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061883.P10984133908218267372

/-!
# A061884: a(n) = Sum_{ d | n } phi(lcm(d,n/d)), where phi(n) = Euler totient A000010.

The programs for A061884, the canonical program `A061884.P16971839620340354771` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061884 has offset 1).

The definition of A061884 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A061884.P16971839620340354771

`A057670(n+1)*A173557(n+1)/A007947(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A061884

/-- `A057670(n+1)*A173557(n+1)/A007947(n+1)` -/
def P16971839620340354771.Spec : Prop :=
  ∀ n, P16971839620340354771.a n = (A061884 (n + 1) : ℚ)

end A061884

/-! ## A061884.P14730742035248812639

`∑{d}[n+1, A000010(lcm(#, (n+1)/#))]`
-/

namespace A061884.P14730742035248812639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (Int.lcm (d : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))))

end

end A061884.P14730742035248812639

namespace A061884

/-- `∑{d}[n+1, A000010(lcm(#, (n+1)/#))]` -/
def P14730742035248812639.Spec : Prop :=
  ∀ n, P14730742035248812639.a n = A061884 (n + 1)

end A061884

/-! ## A061884.P1724268620490892232

`∑{d}[n+1, A000010((n+1)/A000188(#))]`
-/

namespace A061884.P1724268620490892232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 d : ℚ))).toNat

end

end A061884.P1724268620490892232

namespace A061884

/-- `∑{d}[n+1, A000010((n+1)/A000188(#))]` -/
def P1724268620490892232.Spec : Prop :=
  ∀ n, P1724268620490892232.a n = A061884 (n + 1)

end A061884

/-! ## A061884.P8213297701735474595

`A000010(n+1)/(n+1)*A057670(n+1)`
-/

namespace A061884.P8213297701735474595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (n + 1 : ℚ) * (A057670 (n + 1) : ℚ)

end

end A061884.P8213297701735474595

namespace A061884

/-- `A000010(n+1)/(n+1)*A057670(n+1)` -/
def P8213297701735474595.Spec : Prop :=
  ∀ n, P8213297701735474595.a n = (A061884 (n + 1) : ℚ)

end A061884

/-! ## A061884.P12136397127425067180

`∑{d}[n+1, A000010(A019554(#*(n+1)))]`
-/

namespace A061884.P12136397127425067180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (A019554 (d * (n + 1))).toNat

end

end A061884.P12136397127425067180

namespace A061884

/-- `∑{d}[n+1, A000010(A019554(#*(n+1)))]` -/
def P12136397127425067180.Spec : Prop :=
  ∀ n, P12136397127425067180.a n = A061884 (n + 1)

end A061884

/-!
# A061885: n + largest triangular number less than or equal to n.

The programs for A061885, the canonical program `A061885.P4567764245783084005` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061885 has offset 0).

The definition of A061885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061885.P4567764245783084005

`n+A057944(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061885

/-- `n+A057944(n)` -/
def P4567764245783084005.Spec : Prop :=
  ∀ n, P4567764245783084005.a n = A061885 n

theorem P4567764245783084005.correct : P4567764245783084005.Spec := by
  intro n
  simp only [A061885]

end A061885

/-! ## A061885.P9822687558837726543

`A004201(n+1)-1`
-/

namespace A061885.P9822687558837726543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (n + 1) - 1

end

end A061885.P9822687558837726543

namespace A061885

/-- `A004201(n+1)-1` -/
def P9822687558837726543.Spec : Prop :=
  ∀ n, P9822687558837726543.a n = A061885 n

end A061885

/-! ## A061885.P15564172518974724470

`2*n-A002262(n)`
-/

namespace A061885.P15564172518974724470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A002262 n

end

end A061885.P15564172518974724470

namespace A061885

/-- `2*n-A002262(n)` -/
def P15564172518974724470.Spec : Prop :=
  ∀ n, P15564172518974724470.a n = A061885 n

end A061885

/-! ## A061885.P1518965329186591536

`C(∑[char[∑[n]]], 2)+n`
-/

namespace A061885.P1518965329186591536
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + n

end

end A061885.P1518965329186591536

namespace A061885

/-- `C(∑[char[∑[n]]], 2)+n` -/
def P1518965329186591536.Spec : Prop :=
  ∀ n, (P1518965329186591536.a n : ℤ) = A061885 n

end A061885

/-! ## A061885.P1359974813942538409

`lt[0, round(sqrt(n+1))²-n]`
-/

namespace A061885.P1359974813942538409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061885.P1359974813942538409

namespace A061885

/-- `lt[0, round(sqrt(n+1))²-n]` -/
def P1359974813942538409.Spec : Prop :=
  ∀ n, (P1359974813942538409.a n : ℤ) = A061885 n

end A061885

/-! ## A061885.P1472442931614573315

`comp[C(comp[∑[n]]-n, 2)+n]`
-/

namespace A061885.P1472442931614573315
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A061885.P1472442931614573315

namespace A061885

/-- `comp[C(comp[∑[n]]-n, 2)+n]` -/
def P1472442931614573315.Spec : Prop :=
  ∀ n, (P1472442931614573315.a n : ℤ) = A061885 n

end A061885

/-! ## A061885.P9797009712227950945

`eq[0, ceil(2*sqrt(n+1))%2]`
-/

namespace A061885.P9797009712227950945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈2 * Real.sqrt (n + 1 : ℝ)⌉ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061885.P9797009712227950945

namespace A061885

/-- `eq[0, ceil(2*sqrt(n+1))%2]` -/
def P9797009712227950945.Spec : Prop :=
  ∀ n, (P9797009712227950945.a n : ℤ) = A061885 n

end A061885

/-! ## A061885.P14269751766426512579

`eq[0, and(1, ceil(2*sqrt(n+1)))]`
-/

namespace A061885.P14269751766426512579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈2 * Real.sqrt (n + 1 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061885.P14269751766426512579

namespace A061885

/-- `eq[0, and(1, ceil(2*sqrt(n+1)))]` -/
def P14269751766426512579.Spec : Prop :=
  ∀ n, (P14269751766426512579.a n : ℤ) = A061885 n

end A061885

/-! ## A061885.P17003285344304160368

`lt[(ceil(sqrt(n))²-n)², n]-1`
-/

namespace A061885.P17003285344304160368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A061885.P17003285344304160368

namespace A061885

/-- `lt[(ceil(sqrt(n))²-n)², n]-1` -/
def P17003285344304160368.Spec : Prop :=
  ∀ n, P17003285344304160368.a n = A061885 n

end A061885

/-! ## A061885.P7569047557022851967

`2*n-(n-C(∑[char[∑[n]]], 2))`
-/

namespace A061885.P7569047557022851967
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ))

end

end A061885.P7569047557022851967

namespace A061885

/-- `2*n-(n-C(∑[char[∑[n]]], 2))` -/
def P7569047557022851967.Spec : Prop :=
  ∀ n, P7569047557022851967.a n = A061885 n

end A061885

/-! ## A061885.P6093773589464413610

`comp[A064801(n+1)]`
-/

namespace A061885.P6093773589464413610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A061885.P6093773589464413610

namespace A061885

/-- `comp[A064801(n+1)]` -/
def P6093773589464413610.Spec : Prop :=
  ∀ n, (P6093773589464413610.a n : ℤ) = A061885 n

end A061885

/-! ## A061885.P6144038152178806640

`∑[A130296(n+1)]-1`
-/

namespace A061885.P6144038152178806640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A061885.P6144038152178806640

namespace A061885

/-- `∑[A130296(n+1)]-1` -/
def P6144038152178806640.Spec : Prop :=
  ∀ n, P6144038152178806640.a n = A061885 n

end A061885

/-! ## A061885.P2086044884490820337

`comp[A004202(n+1)-1]`
-/

namespace A061885.P2086044884490820337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A061885.P2086044884490820337

namespace A061885

/-- `comp[A004202(n+1)-1]` -/
def P2086044884490820337.Spec : Prop :=
  ∀ n, (P2086044884490820337.a n : ℤ) = A061885 n

end A061885

/-! ## A061885.P7735211625136062573

`2*n-sqrt(A143844(n))`
-/

namespace A061885.P7735211625136062573
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n : ℝ) - Real.sqrt (A143844 n : ℝ)

end

end A061885.P7735211625136062573

namespace A061885

/-- `2*n-sqrt(A143844(n))` -/
def P7735211625136062573.Spec : Prop :=
  ∀ n, P7735211625136062573.a n = (A061885 n : ℝ)

end A061885

/-! ## A061885.P11174742518515796312

`2*n-log2(A059268(n))`
-/

namespace A061885.P11174742518515796312
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n : ℝ) - Real.logb 2 (A059268 n : ℝ)

end

end A061885.P11174742518515796312

namespace A061885

/-- `2*n-log2(A059268(n))` -/
def P11174742518515796312.Spec : Prop :=
  ∀ n, P11174742518515796312.a n = (A061885 n : ℝ)

end A061885

/-! ## A061885.P3920106594905393282

`comp[A127739(n+1)+n]`
-/

namespace A061885.P3920106594905393282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A061885.P3920106594905393282

namespace A061885

/-- `comp[A127739(n+1)+n]` -/
def P3920106594905393282.Spec : Prop :=
  ∀ n, (P3920106594905393282.a n : ℤ) = A061885 n

end A061885

/-! ## A061885.P10762341272902010152

`Δ[n²]-A002260(n+1)`
-/

namespace A061885.P10762341272902010152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A002260 (n + 1)

end

end A061885.P10762341272902010152

namespace A061885

/-- `Δ[n²]-A002260(n+1)` -/
def P10762341272902010152.Spec : Prop :=
  ∀ n, P10762341272902010152.a n = A061885 n

end A061885

/-! ## A061885.P13781129441702989711

`comp[A004736(n+1)+2*n]`
-/

namespace A061885.P13781129441702989711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A061885.P13781129441702989711

namespace A061885

/-- `comp[A004736(n+1)+2*n]` -/
def P13781129441702989711.Spec : Prop :=
  ∀ n, (P13781129441702989711.a n : ℤ) = A061885 n

end A061885

/-! ## A061885.P4368256914581584963

`A000217(∑[char[∑[n+1]]])+n`
-/

namespace A061885.P4368256914581584963
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A061885.P4368256914581584963

namespace A061885

/-- `A000217(∑[char[∑[n+1]]])+n` -/
def P4368256914581584963.Spec : Prop :=
  ∀ n, P4368256914581584963.a n = A061885 n

end A061885

/-! ## A061885.P3007747527319281014

`2*n-A057554(2*n+1)`
-/

namespace A061885.P3007747527319281014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A057554 (2 * n + 1)

end

end A061885.P3007747527319281014

namespace A061885

/-- `2*n-A057554(2*n+1)` -/
def P3007747527319281014.Spec : Prop :=
  ∀ n, P3007747527319281014.a n = A061885 n

end A061885

/-!
# A061886: Largest square less than or equal to sum of previous terms.

The programs for A061886, the canonical program `A061886.P11094911804711347942` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061886 has offset 0).

The definition of A061886 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061886.P10725080989303103281

`A067859(n+1)²`
-/

namespace A061886.P10725080989303103281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067859 (n + 1) ^ 2

end

end A061886.P10725080989303103281

namespace A061886

/-- `A067859(n+1)²` -/
def P10725080989303103281.Spec : Prop :=
  ∀ n, P10725080989303103281.a n = A061886 n

end A061886

/-! ## A061886.P10894825254657066280

`round(sqrt(A060984(n+1)/2))²`
-/

namespace A061886.P10894825254657066280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A060984 (n + 1) : ℚ) / 2 : ℝ)) ^ 2

end

end A061886.P10894825254657066280

namespace A061886

/-- `round(sqrt(A060984(n+1)/2))²` -/
def P10894825254657066280.Spec : Prop :=
  ∀ n, P10894825254657066280.a n = A061886 n

end A061886

/-! ## A061886.P11094911804711347942

`A000007(n)+Δ[A060984(A028310(n))]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061886

/-- `A000007(n)+Δ[A060984(A028310(n))]` -/
def P11094911804711347942.Spec : Prop :=
  ∀ n, P11094911804711347942.a n = A061886 n

theorem P11094911804711347942.correct : P11094911804711347942.Spec := by
  intro n
  simp only [A061886]

end A061886

/-! ## A061886.P18188141110978360864

`Δ[A060984(A028310(n))-A057428(n)]`
-/

namespace A061886.P18188141110978360864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060984 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061886.P18188141110978360864

namespace A061886

/-- `Δ[A060984(A028310(n))-A057428(n)]` -/
def P18188141110978360864.Spec : Prop :=
  ∀ n, P18188141110978360864.a n = A061886 n

end A061886

/-! ## A061886.P8495944529202859260

`Δ[A060984(A028310(n))+A036453(n+1)]`
-/

namespace A061886.P8495944529202859260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060984 (A028310 n).toNat + A036453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061886.P8495944529202859260

namespace A061886

/-- `Δ[A060984(A028310(n))+A036453(n+1)]` -/
def P8495944529202859260.Spec : Prop :=
  ∀ n, P8495944529202859260.a n = A061886 n

end A061886

/-! ## A061886.P5224691197772816161

`A060984(n+1)+A000007(n)-A060984(A028310(n))`
-/

namespace A061886.P5224691197772816161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060984 (n + 1) + (A000007 n - A060984 (A028310 n).toNat)

end

end A061886.P5224691197772816161

namespace A061886

/-- `A060984(n+1)+A000007(n)-A060984(A028310(n))` -/
def P5224691197772816161.Spec : Prop :=
  ∀ n, P5224691197772816161.a n = A061886 n

end A061886

/-! ## A061886.P2069333591464081112

`A060984(n+1)+A057428(n)*A060984(A028310(n))`
-/

namespace A061886.P2069333591464081112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060984 (n + 1) + A057428 n * A060984 (A028310 n).toNat

end

end A061886.P2069333591464081112

namespace A061886

/-- `A060984(n+1)+A057428(n)*A060984(A028310(n))` -/
def P2069333591464081112.Spec : Prop :=
  ∀ n, P2069333591464081112.a n = A061886 n

end A061886

/-! ## A061886.P12075308804115807480

`Δ[A060984(A028310(n))%A060984(n+1)]`
-/

namespace A061886.P12075308804115807480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060984 (A028310 n).toNat) (A060984 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061886.P12075308804115807480

namespace A061886

/-- `Δ[A060984(A028310(n))%A060984(n+1)]` -/
def P12075308804115807480.Spec : Prop :=
  ∀ n, P12075308804115807480.a n = A061886 n

end A061886

/-! ## A061886.P18261046591537764329

`Δ[A060984(A028310(n))+2-A209229(n²+2)]`
-/

namespace A061886.P18261046591537764329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060984 (A028310 n).toNat + (2 - A209229 (n ^ 2 + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061886.P18261046591537764329

namespace A061886

/-- `Δ[A060984(A028310(n))+2-A209229(n²+2)]` -/
def P18261046591537764329.Spec : Prop :=
  ∀ n, P18261046591537764329.a n = A061886 n

end A061886

/-!
# A061887: n + largest square less than or equal to n; numbers in the range [2k^2,2k^2+2k] for some k.

The programs for A061887, the canonical program `A061887.P1620719186281782758` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061887 has offset 0).

The definition of A061887 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061887.P1620719186281782758

`n+floor(sqrt(n))²`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061887

/-- `n+floor(sqrt(n))²` -/
def P1620719186281782758.Spec : Prop :=
  ∀ n, (P1620719186281782758.a n : ℤ) = A061887 n

theorem P1620719186281782758.correct : P1620719186281782758.Spec := by
  intro n
  simp only [A061887]

end A061887

/-! ## A061887.P8575875350751661159

`eq[0, floor(sqrt(2*n))%2]`
-/

namespace A061887.P8575875350751661159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (2 * n) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061887.P8575875350751661159

namespace A061887

/-- `eq[0, floor(sqrt(2*n))%2]` -/
def P8575875350751661159.Spec : Prop :=
  ∀ n, (P8575875350751661159.a n : ℤ) = A061887 n

end A061887

/-! ## A061887.P1693937768163051354

`lt[1, gcd(2, floor(sqrt(2*n)))]`
-/

namespace A061887.P1693937768163051354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Nat.sqrt (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061887.P1693937768163051354

namespace A061887

/-- `lt[1, gcd(2, floor(sqrt(2*n)))]` -/
def P1693937768163051354.Spec : Prop :=
  ∀ n, (P1693937768163051354.a n : ℤ) = A061887 n

end A061887

/-! ## A061887.P9554017763721313593

`eq[0, and(1, floor(sqrt(2*n)))]`
-/

namespace A061887.P9554017763721313593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.sqrt (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061887.P9554017763721313593

namespace A061887

/-- `eq[0, and(1, floor(sqrt(2*n)))]` -/
def P9554017763721313593.Spec : Prop :=
  ∀ n, (P9554017763721313593.a n : ℤ) = A061887 n

end A061887

/-! ## A061887.P15139723984887685398

`lt[and(1, floor(sqrt(2*n))), 1]`
-/

namespace A061887.P15139723984887685398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.sqrt (2 * n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061887.P15139723984887685398

namespace A061887

/-- `lt[and(1, floor(sqrt(2*n))), 1]` -/
def P15139723984887685398.Spec : Prop :=
  ∀ n, (P15139723984887685398.a n : ℤ) = A061887 n

end A061887

/-! ## A061887.P12195041003195940982

`lt[val(ceil(sqrt(2*n+1)), 2), 1]`
-/

namespace A061887.P12195041003195940982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ⌈Real.sqrt (2 * n + 1 : ℝ)⌉.toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061887.P12195041003195940982

namespace A061887

/-- `lt[val(ceil(sqrt(2*n+1)), 2), 1]` -/
def P12195041003195940982.Spec : Prop :=
  ∀ n, (P12195041003195940982.a n : ℤ) = A061887 n

end A061887

/-! ## A061887.P2980962055091382866

`comp[A165776(n)]`
-/

namespace A061887.P2980962055091382866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165776 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A061887.P2980962055091382866

namespace A061887

/-- `comp[A165776(n)]` -/
def P2980962055091382866.Spec : Prop :=
  ∀ n, (P2980962055091382866.a n : ℤ) = A061887 n

end A061887

/-! ## A061887.P3489817699380641782

`∑[A056926(4*n)]`
-/

namespace A061887.P3489817699380641782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061887.P3489817699380641782

namespace A061887

/-- `∑[A056926(4*n)]` -/
def P3489817699380641782.Spec : Prop :=
  ∀ n, P3489817699380641782.a n = A061887 n

end A061887

/-! ## A061887.P5921529568880499381

`comp[A048761(n+1)+n]`
-/

namespace A061887.P5921529568880499381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A061887.P5921529568880499381

namespace A061887

/-- `comp[A048761(n+1)+n]` -/
def P5921529568880499381.Spec : Prop :=
  ∀ n, (P5921529568880499381.a n : ℤ) = A061887 n

end A061887

/-! ## A061887.P14298560855850729457

`comp[A003059(n+1)²+n]`
-/

namespace A061887.P14298560855850729457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (n + 1) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A061887.P14298560855850729457

namespace A061887

/-- `comp[A003059(n+1)²+n]` -/
def P14298560855850729457.Spec : Prop :=
  ∀ n, (P14298560855850729457.a n : ℤ) = A061887 n

end A061887

/-! ## A061887.P17143632820138350886

`eq[2, A020639(floor(sqrt(2*n))+2)]`
-/

namespace A061887.P17143632820138350886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.sqrt (2 * n) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061887.P17143632820138350886

namespace A061887

/-- `eq[2, A020639(floor(sqrt(2*n))+2)]` -/
def P17143632820138350886.Spec : Prop :=
  ∀ n, (P17143632820138350886.a n : ℤ) = A061887 n

end A061887

/-! ## A061887.P13866601774868278294

`eq[2, A010693(A172471(n))]`
-/

namespace A061887.P13866601774868278294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 (A172471 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061887.P13866601774868278294

namespace A061887

/-- `eq[2, A010693(A172471(n))]` -/
def P13866601774868278294.Spec : Prop :=
  ∀ n, (P13866601774868278294.a n : ℤ) = A061887 n

end A061887

/-! ## A061887.P10186905491032329228

`lt[A010751(n), 1]`
-/

namespace A061887.P10186905491032329228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A061887.P10186905491032329228

namespace A061887

/-- `lt[A010751(n), 1]` -/
def P10186905491032329228.Spec : Prop :=
  ∀ n, (P10186905491032329228.a n : ℤ) = A061887 n

end A061887

/-! ## A061887.P818279093209658693

`eq[A057211(n+1), A079409(n)]`
-/

namespace A061887.P818279093209658693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079409 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061887.P818279093209658693

namespace A061887

/-- `eq[A057211(n+1), A079409(n)]` -/
def P818279093209658693.Spec : Prop :=
  ∀ n, (P818279093209658693.a n : ℤ) = A061887 n

end A061887

/-! ## A061887.P15120392362336975091

`eq[A082233(n), A204004(n+1)]`
-/

namespace A061887.P15120392362336975091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082233 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204004 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061887.P15120392362336975091

namespace A061887

/-- `eq[A082233(n), A204004(n+1)]` -/
def P15120392362336975091.Spec : Prop :=
  ∀ n, (P15120392362336975091.a n : ℤ) = A061887 n

end A061887

/-! ## A061887.P17239951904218464420

`eq[A057212(n+1), A340507(n)]`
-/

namespace A061887.P17239951904218464420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061887.P17239951904218464420

namespace A061887

/-- `eq[A057212(n+1), A340507(n)]` -/
def P17239951904218464420.Spec : Prop :=
  ∀ n, (P17239951904218464420.a n : ℤ) = A061887 n

end A061887

/-! ## A061887.P1606997541881782395

`eq[A351846(n), A389648(n+1)]`
-/

namespace A061887.P1606997541881782395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389648 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061887.P1606997541881782395

namespace A061887

/-- `eq[A351846(n), A389648(n+1)]` -/
def P1606997541881782395.Spec : Prop :=
  ∀ n, (P1606997541881782395.a n : ℤ) = A061887 n

end A061887

/-! ## A061887.P10639738946349018247

`eq[A003983(n+1), A092543(n+1)]`
-/

namespace A061887.P10639738946349018247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061887.P10639738946349018247

namespace A061887

/-- `eq[A003983(n+1), A092543(n+1)]` -/
def P10639738946349018247.Spec : Prop :=
  ∀ n, (P10639738946349018247.a n : ℤ) = A061887 n

end A061887

/-!
# A061888: Numbers k such that k^2 is the sum of the first m primes for some m.

The programs for A061888, there is no canonical definition to state claims against.
-/

/-! ## A061888.P11267462824464558037

`sqrt(A061890(n+1))`
-/

namespace A061888.P11267462824464558037
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061890 (n + 1) : ℝ)

end

end A061888.P11267462824464558037

/-!
# A061889: a(n) = number of solutions to x_1 + x_2 + ... + x_n = x_{n+1} where each x_i is a factorial.

The programs for A061889, there is no canonical definition to state claims against.
-/

/-! ## A061889.P8371690190426444031

`A099384(A280867(n+1))`
-/

namespace A061889.P8371690190426444031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099384 (A280867 (n + 1)).toNat

end

end A061889.P8371690190426444031

/-! ## A061889.P15725745709346202001

`A000607(n+1)+A000035(A005043(n))`
-/

namespace A061889.P15725745709346202001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (n + 1) + A000035 (A005043 n).toNat

end

end A061889.P15725745709346202001

/-! ## A061889.P13563990852089234987

`A082892(A117367(n+1)+A000041(n))`
-/

namespace A061889.P13563990852089234987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082892 (A117367 (n + 1) + A000041 n).toNat

end

end A061889.P13563990852089234987

/-! ## A061889.P14798111884685064317

`A133872(A288367(n))+A000607(n+1)`
-/

namespace A061889.P14798111884685064317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A288367 n).toNat + A000607 (n + 1)

end

end A061889.P14798111884685064317

/-!
# A061890: Squares that are the sum of initial primes.

The programs for A061890, there is no canonical definition to state claims against.
-/

/-! ## A061890.P7570360754210836864

`A061888(n+1)²`
-/

namespace A061890.P7570360754210836864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061888 (n + 1) ^ 2

end

end A061890.P7570360754210836864

/-!
# A061891: a(0) = 1; for n>0, a(n) = a(n-1) if n is already in the sequence, a(n) = a(n-1) + 3 otherwise.

The programs for A061891, the canonical program `A061891.P10292484509371449653` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061891 has offset 0).

The definition of A061891 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061891.P10292484509371449653

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061891

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P10292484509371449653.Spec : Prop :=
  ∀ n, P10292484509371449653.a n = A061891 n

theorem P10292484509371449653.correct : P10292484509371449653.Spec := by
  intro n
  simp only [A061891]

end A061891

/-! ## A061891.P9582259161942314399

`2*n+1-A080425(n)`
-/

namespace A061891.P9582259161942314399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A080425 n

end

end A061891.P9582259161942314399

namespace A061891

/-- `2*n+1-A080425(n)` -/
def P9582259161942314399.Spec : Prop :=
  ∀ n, P9582259161942314399.a n = A061891 n

end A061891

/-! ## A061891.P10457162223015972511

`∑[3%(dr(∑[n])+2)]`
-/

namespace A061891.P10457162223015972511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 % (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061891.P10457162223015972511

namespace A061891

/-- `∑[3%(dr(∑[n])+2)]` -/
def P10457162223015972511.Spec : Prop :=
  ∀ n, (P10457162223015972511.a n : ℤ) = A061891 n

end A061891

/-! ## A061891.P16026900632216676600

`a(n-3)+6` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A061891.P16026900632216676600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  a (n - 3) + 6

end

end A061891.P16026900632216676600

namespace A061891

/-- `a(n-3)+6` -/
def P16026900632216676600.Spec : Prop :=
  ∀ n, (P16026900632216676600.a n : ℤ) = A061891 n

end A061891

/-! ## A061891.P2513532930840376529

`∑[C(gcd(3, ∑[n]), 2)]-2`
-/

namespace A061891.P2513532930840376529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.gcd 3 (∑ j ∈ Finset.range (n + 1), f2 j)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A061891.P2513532930840376529

namespace A061891

/-- `∑[C(gcd(3, ∑[n]), 2)]-2` -/
def P2513532930840376529.Spec : Prop :=
  ∀ n, P2513532930840376529.a n = A061891 n

end A061891

/-! ## A061891.P10698174527446470153

`Δ[n²]-(2*n)%3`
-/

namespace A061891.P10698174527446470153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((2 * n % 3 : ℕ) : ℤ)

end

end A061891.P10698174527446470153

namespace A061891

/-- `Δ[n²]-(2*n)%3` -/
def P10698174527446470153.Spec : Prop :=
  ∀ n, P10698174527446470153.a n = A061891 n

end A061891

/-! ## A061891.P5532039771904634757

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=0, a(2)=3, a(3)=3`
-/

namespace A061891.P5532039771904634757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061891.P5532039771904634757

namespace A061891

/-- `∑[abs(a(n-3))]` -/
def P5532039771904634757.Spec : Prop :=
  ∀ n, (P5532039771904634757.a n : ℤ) = A061891 n

end A061891

/-! ## A061891.P9951247603508514525

`∑[lcm(3, a(n-3))]` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A061891.P9951247603508514525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3] fun n f1 =>
  Nat.lcm 3 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061891.P9951247603508514525

namespace A061891

/-- `∑[lcm(3, a(n-3))]` -/
def P9951247603508514525.Spec : Prop :=
  ∀ n, (P9951247603508514525.a n : ℤ) = A061891 n

end A061891

/-! ## A061891.P15315439985613779336

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=0, a(2)=3, a(3)=3`
-/

namespace A061891.P15315439985613779336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061891.P15315439985613779336

namespace A061891

/-- `∑[dr(a(n-3))]` -/
def P15315439985613779336.Spec : Prop :=
  ∀ n, (P15315439985613779336.a n : ℤ) = A061891 n

end A061891

/-! ## A061891.P1475678833180939481

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=0, a(2)=3, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A061891.P1475678833180939481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061891.P1475678833180939481

namespace A061891

/-- `∑[floor(a(n-3))]` -/
def P1475678833180939481.Spec : Prop :=
  ∀ n, (P1475678833180939481.a n : ℤ) = A061891 n

end A061891

/-! ## A061891.P12172902735373785694

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=0, a(2)=3, a(3)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A061891.P12172902735373785694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061891.P12172902735373785694

namespace A061891

/-- `∑[ceil(a(n-3))]` -/
def P12172902735373785694.Spec : Prop :=
  ∀ n, (P12172902735373785694.a n : ℤ) = A061891 n

end A061891

/-! ## A061891.P5002794099022928050

`∑[round(a(n-3))]` with `a(0)=1, a(1)=0, a(2)=3, a(3)=3`

`round` is left out, it is the identity on integers.
-/

namespace A061891.P5002794099022928050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061891.P5002794099022928050

namespace A061891

/-- `∑[round(a(n-3))]` -/
def P5002794099022928050.Spec : Prop :=
  ∀ n, (P5002794099022928050.a n : ℤ) = A061891 n

end A061891

/-! ## A061891.P11107231991213976258

`3*floor(2*n/3)+1`
-/

namespace A061891.P11107231991213976258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊2 * ((n : ℚ) / 3)⌋ + 1

end

end A061891.P11107231991213976258

namespace A061891

/-- `3*floor(2*n/3)+1` -/
def P11107231991213976258.Spec : Prop :=
  ∀ n, P11107231991213976258.a n = A061891 n

end A061891

/-! ## A061891.P15966580621117585955

`∑[C(a(n-3), 2)]` with `a(0)=1, a(1)=0, a(2)=3, a(3)=3`
-/

namespace A061891.P15966580621117585955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3, 3] fun n f1 =>
  Nat.choose (f1 (n - 3)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061891.P15966580621117585955

namespace A061891

/-- `∑[C(a(n-3), 2)]` -/
def P15966580621117585955.Spec : Prop :=
  ∀ n, (P15966580621117585955.a n : ℤ) = A061891 n

end A061891

/-! ## A061891.P4975516448936616690

`∑[and(3, a(n-3))]` with `a(0)=1, a(1)=0, a(2)=3, a(3)=3`
-/

namespace A061891.P4975516448936616690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3, 3] fun n f1 =>
  Nat.land 3 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061891.P4975516448936616690

namespace A061891

/-- `∑[and(3, a(n-3))]` -/
def P4975516448936616690.Spec : Prop :=
  ∀ n, (P4975516448936616690.a n : ℤ) = A061891 n

end A061891

/-! ## A061891.P2181691008669219053

`∑[a(n-3)%n]` with `a(0)=1, a(1)=0, a(2)=3, a(3)=3`
-/

namespace A061891.P2181691008669219053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3, 3] fun n f1 =>
  f1 (n - 3) % n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061891.P2181691008669219053

namespace A061891

/-- `∑[a(n-3)%n]` -/
def P2181691008669219053.Spec : Prop :=
  ∀ n, (P2181691008669219053.a n : ℤ) = A061891 n

end A061891

/-! ## A061891.P14739008295961805127

`∑[∑[ogf((1+3x^2+2x^3)/(1+x+x^2))]]`
-/

namespace A061891.P14739008295961805127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 3, 2] [1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061891.P14739008295961805127

namespace A061891

/-- `∑[∑[ogf((1+3x^2+2x^3)/(1+x+x^2))]]` -/
def P14739008295961805127.Spec : Prop :=
  ∀ n, P14739008295961805127.a n = A061891 n

end A061891

/-! ## A061891.P859924089398853431

`ogf((1+3x^2+2x^3)/(1-x-x^3+x^4))`
-/

namespace A061891.P859924089398853431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 3, 2] [1, -1, 0, -1, 1] n

end

end A061891.P859924089398853431

namespace A061891

/-- `ogf((1+3x^2+2x^3)/(1-x-x^3+x^4))` -/
def P859924089398853431.Spec : Prop :=
  ∀ n, P859924089398853431.a n = A061891 n

end A061891

/-! ## A061891.P9735700111192421718

`∑[a(n-3)²/3]` with `a(0)=1, a(1)=0, a(2)=3, a(3)=3`
-/

namespace A061891.P9735700111192421718
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 3, 3] fun n f1 =>
  f1 (n - 3) ^ 2 / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061891.P9735700111192421718

namespace A061891

/-- `∑[a(n-3)²/3]` -/
def P9735700111192421718.Spec : Prop :=
  ∀ n, P9735700111192421718.a n = (A061891 n : ℚ)

end A061891

/-! ## A061891.P15426814192368074610

`abs(1-n-(n+2)%3-n)`
-/

namespace A061891.P15426814192368074610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ) - (((n + 2) % 3 : ℕ) : ℤ) - (n : ℤ)|

end

end A061891.P15426814192368074610

namespace A061891

/-- `abs(1-n-(n+2)%3-n)` -/
def P15426814192368074610.Spec : Prop :=
  ∀ n, P15426814192368074610.a n = A061891 n

end A061891

/-!
# A061894: Lionel-Levine-sequence generated by (2,0).

The programs for A061894, there is no canonical definition to state claims against.
-/

/-! ## A061894.P17777850323716564054

`A008676(A051293(n+4)-A354083(n))`
-/

namespace A061894.P17777850323716564054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A051293 (n + 4) - A354083 n).toNat

end

end A061894.P17777850323716564054

/-!
# A061895: Table of Lionel-Levine-sequence generated by (2,0).

The programs for A061895, there is no canonical definition to state claims against.
-/

/-! ## A061895.P16411927807990802252

`A154955(n+1)+A126307(∑[A036044(n)])`
-/

namespace A061895.P16411927807990802252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1) + A126307 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061895.P16411927807990802252

/-!
# A061896: Triangle of coefficients of Lucas polynomials.

The programs for A061896, the canonical program `A061896.P13759146978715815526` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061896 has offset 0).

The definition of A061896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9935 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061896.P10495920532002558842

`abs(A244422(n))`
-/

namespace A061896.P10495920532002558842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A244422 n|

end

end A061896.P10495920532002558842

namespace A061896

/-- `abs(A244422(n))` -/
def P10495920532002558842.Spec : Prop :=
  ∀ n, P10495920532002558842.a n = A061896 n

end A061896

/-! ## A061896.P16299091696649652378

`gcd(A000038(n), A244422(n))`
-/

namespace A061896.P16299091696649652378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A244422 n)

end

end A061896.P16299091696649652378

namespace A061896

/-- `gcd(A000038(n), A244422(n))` -/
def P16299091696649652378.Spec : Prop :=
  ∀ n, (P16299091696649652378.a n : ℤ) = A061896 n

end A061896

/-! ## A061896.P9529583919750315675

`lcm(A020985(n), A244422(n))`
-/

namespace A061896.P9529583919750315675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A244422 n)

end

end A061896.P9529583919750315675

namespace A061896

/-- `lcm(A020985(n), A244422(n))` -/
def P9529583919750315675.Spec : Prop :=
  ∀ n, (P9529583919750315675.a n : ℤ) = A061896 n

end A061896

/-! ## A061896.P13759146978715815526

`A162514(A127739(n+1)-A130517(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A061896

/-- `A162514(A127739(n+1)-A130517(n+1))` -/
def P13759146978715815526.Spec : Prop :=
  ∀ n, P13759146978715815526.a n = A061896 n

theorem P13759146978715815526.correct : P13759146978715815526.Spec := by
  intro n
  simp only [A061896]

end A061896

/-! ## A061896.P7103168566498539046

`abs(A100218(A061579(n))+A073424(n+1))`
-/

namespace A061896.P7103168566498539046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100218 (A061579 n).toNat + A073424 (n + 1)|

end

end A061896.P7103168566498539046

namespace A061896

/-- `abs(A100218(A061579(n))+A073424(n+1))` -/
def P7103168566498539046.Spec : Prop :=
  ∀ n, P7103168566498539046.a n = A061896 n

end A061896

/-! ## A061896.P17018018368192662639

`∑{d}[A244422(n), A000010(#)]`
-/

namespace A061896.P17018018368192662639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A061896.P17018018368192662639

namespace A061896

/-- `∑{d}[A244422(n), A000010(#)]` -/
def P17018018368192662639.Spec : Prop :=
  ∀ n, P17018018368192662639.a n = A061896 n

end A061896

/-! ## A061896.P2487695254320471260

`A056926(A244422(n)²)`
-/

namespace A061896.P2487695254320471260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A244422 n ^ 2).toNat

end

end A061896.P2487695254320471260

namespace A061896

/-- `A056926(A244422(n)²)` -/
def P2487695254320471260.Spec : Prop :=
  ∀ n, P2487695254320471260.a n = A061896 n

end A061896

/-! ## A061896.P6904770982233624650

`A114525(A181940(n)+A057944(n))`
-/

namespace A061896.P6904770982233624650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114525 (A181940 n + A057944 n).toNat

end

end A061896.P6904770982233624650

namespace A061896

/-- `A114525(A181940(n)+A057944(n))` -/
def P6904770982233624650.Spec : Prop :=
  ∀ n, P6904770982233624650.a n = A061896 n

end A061896

/-! ## A061896.P16094005155099717401

`A018851(A244422(n)²)`
-/

namespace A061896.P16094005155099717401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A244422 n ^ 2).toNat

end

end A061896.P16094005155099717401

namespace A061896

/-- `A018851(A244422(n)²)` -/
def P16094005155099717401.Spec : Prop :=
  ∀ n, P16094005155099717401.a n = A061896 n

end A061896

/-! ## A061896.P6296933583938945283

`A155040(n)*A244422(n)`
-/

namespace A061896.P6296933583938945283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155040 n * A244422 n

end

end A061896.P6296933583938945283

namespace A061896

/-- `A155040(n)*A244422(n)` -/
def P6296933583938945283.Spec : Prop :=
  ∀ n, P6296933583938945283.a n = A061896 n

end A061896

/-!
# A061897: Square table by antidiagonals of number of routes of length 2k+n on the sides of a 2n-gon from a point to its opposite point.

The programs for A061897, there is no canonical definition to state claims against.
-/

/-! ## A061897.P17191792414628989111

`A089975(n)*A107279(A205388(n+1))`
-/

namespace A061897.P17191792414628989111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089975 n * A107279 (A205388 (n + 1)).toNat

end

end A061897.P17191792414628989111

/-! ## A061897.P7646370537503581930

`A005811(A048994(n)*A157982(n))`
-/

namespace A061897.P7646370537503581930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A048994 n * A157982 n).toNat

end

end A061897.P7646370537503581930

/-! ## A061897.P11688743538746976131

`A035172(A005449(A200756(n+1)))*A049716(n+1)`
-/

namespace A061897.P11688743538746976131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035172 (A005449 (A200756 (n + 1)).toNat).toNat * A049716 (n + 1)

end

end A061897.P11688743538746976131

/-! ## A061897.P2647741407901391511

`A281452(A324037(n)^3)`
-/

namespace A061897.P2647741407901391511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281452 (A324037 n ^ 3).toNat

end

end A061897.P2647741407901391511

/-! ## A061897.P4165639477724031708

`A329860(n^A265373(n+1))`
-/

namespace A061897.P4165639477724031708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329860 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A265373 (n + 1) : ℤ))).toNat

end

end A061897.P4165639477724031708

/-!
# A061898: Swap each prime in factorization of n with "neighbor" prime.

The programs for A061898, there is no canonical definition to state claims against.
-/

/-! ## A061898.P2581292030859858228

`∏{d}[A131738(n), A118306(A014963(#))]`
-/

namespace A061898.P2581292030859858228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A118306 (A014963 d).toNat

end

end A061898.P2581292030859858228

/-! ## A061898.P448334719544261899

`A003961(A247503(n+1))*A247503(A064989(n+1))`
-/

namespace A061898.P448334719544261899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A247503 (n + 1)).toNat * A247503 (A064989 (n + 1)).toNat

end

end A061898.P448334719544261899

/-! ## A061898.P13327964383124819168

`A118306(A247503(n+1))*A118306(A248101(n+1))`
-/

namespace A061898.P13327964383124819168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118306 (A247503 (n + 1)).toNat * A118306 (A248101 (n + 1)).toNat

end

end A061898.P13327964383124819168

/-! ## A061898.P4757222130741215274

`A297002(A319521(n+1))*A319525(A319522(n+1))`
-/

namespace A061898.P4757222130741215274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297002 (A319521 (n + 1)).toNat * A319525 (A319522 (n + 1)).toNat

end

end A061898.P4757222130741215274

/-! ## A061898.P6120018758732255812

`A064989(A248101(n+1))*A248101(A003961(n+1))`
-/

namespace A061898.P6120018758732255812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A248101 (n + 1)).toNat * A248101 (A003961 (n + 1)).toNat

end

end A061898.P6120018758732255812

/-! ## A061898.P12823577114557862118

`A064989(A248101(n+1))*A248101(A045965(n+1))`
-/

namespace A061898.P12823577114557862118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A248101 (n + 1)).toNat * A248101 (A045965 (n + 1)).toNat

end

end A061898.P12823577114557862118

/-! ## A061898.P16932624769971676636

`A227324(A011262(n+1))`
-/

namespace A061898.P16932624769971676636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227324 (A011262 (n + 1)).toNat

end

end A061898.P16932624769971676636

/-! ## A061898.P4948637691299085160

`A227324(A003557(n+1)*A055491(n+1))`
-/

namespace A061898.P4948637691299085160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227324 (A003557 (n + 1) * A055491 (n + 1)).toNat

end

end A061898.P4948637691299085160

/-! ## A061898.P9441080799961276661

`A227324(A007913(n+1)*A350390(n+1))`
-/

namespace A061898.P9441080799961276661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227324 (A007913 (n + 1) * A350390 (n + 1)).toNat

end

end A061898.P9441080799961276661

/-! ## A061898.P17235629791352994744

`A227324(A350390(n+1))/A227324(A007913(n+1)²)`
-/

namespace A061898.P17235629791352994744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227324 (A350390 (n + 1)).toNat : ℚ) / (A227324 (A007913 (n + 1) ^ 2).toNat : ℚ)

end

end A061898.P17235629791352994744

/-!
# A061899: Fibonacci numbers that are not squarefree.

The programs for A061899, there is no canonical definition to state claims against.
-/

/-! ## A061899.P4802817186065251095

`A000045(A037917(n+1))`
-/

namespace A061899.P4802817186065251095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A037917 (n + 1)).toNat

end

end A061899.P4802817186065251095

/-! ## A061899.P4935939136826716009

`A212804(A037917(n+1)+1)`
-/

namespace A061899.P4935939136826716009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A037917 (n + 1) + 1).toNat

end

end A061899.P4935939136826716009

/-! ## A061899.P2685997493197761386

`A103609(2*A037917(n+1))`
-/

namespace A061899.P2685997493197761386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A037917 (n + 1)).toNat

end

end A061899.P2685997493197761386

/-! ## A061899.P13380010295788542181

`∑{d}[A037917(n+1), A007436(#)]`
-/

namespace A061899.P13380010295788542181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007436 d

end

end A061899.P13380010295788542181

/-! ## A061899.P6279631306921174641

`A000045(eq[0, A174340(n+1)]+1)`
-/

namespace A061899.P6279631306921174641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A061899.P6279631306921174641

/-! ## A061899.P17670881126026993806

`A000071(A037917(n+1))+A007318(∑[n+1])`
-/

namespace A061899.P17670881126026993806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A037917 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061899.P17670881126026993806

/-! ## A061899.P16327367221053439211

`A119326(∑[n+1])+A000071(A037917(n+1))`
-/

namespace A061899.P16327367221053439211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119326 (∑ j ∈ Finset.range (n + 1), f1 j) + A000071 (A037917 (n + 1)).toNat

end

end A061899.P16327367221053439211

/-! ## A061899.P13487619750129636328

`A103609(A037917(n+1)+A037917(n+1)+1)`
-/

namespace A061899.P13487619750129636328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A037917 (n + 1) + (A037917 (n + 1) + 1)).toNat

end

end A061899.P13487619750129636328

/-! ## A061899.P10934801091948063034

`A053602(2*A037917(n+1))`
-/

namespace A061899.P10934801091948063034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A037917 (n + 1)).toNat

end

end A061899.P10934801091948063034

