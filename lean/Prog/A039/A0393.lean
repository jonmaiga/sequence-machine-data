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
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A039300: Number of distinct quadratic residues mod 3^n.

The programs for A039300, the canonical program `A039300.P12812337894662455855` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039300 has offset 0).

The definition of A039300 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039300.P7159259274461579799

`3*a(n-1)-2+n%2` with `a(0)=1`
-/

namespace A039300.P7159259274461579799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - 2 + ((n % 2 : ℕ) : ℤ)

end

end A039300.P7159259274461579799

namespace A039300

/-- `3*a(n-1)-2+n%2` -/
def P7159259274461579799.Spec : Prop :=
  ∀ n, P7159259274461579799.a n = A039300 n

end A039300

/-! ## A039300.P12812337894662455855

`2*a(n-1)+3*a(n-2)-3` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A039300

/-- `2*a(n-1)+3*a(n-2)-3` -/
def P12812337894662455855.Spec : Prop :=
  ∀ n, P12812337894662455855.a n = A039300 n

theorem P12812337894662455855.correct : P12812337894662455855.Spec := by
  intro n
  simp only [A039300]

end A039300

/-! ## A039300.P5862419775198189683

`floor(3*(3^n+3)/8)`
-/

namespace A039300.P5862419775198189683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * (3 ^ n + 3) : ℚ) / 8⌋

end

end A039300.P5862419775198189683

namespace A039300

/-- `floor(3*(3^n+3)/8)` -/
def P5862419775198189683.Spec : Prop :=
  ∀ n, P5862419775198189683.a n = A039300 n

end A039300

/-! ## A039300.P11303086123913915880

`A000224(3^n)`
-/

namespace A039300.P11303086123913915880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (3 ^ n)

end

end A039300.P11303086123913915880

namespace A039300

/-- `A000224(3^n)` -/
def P11303086123913915880.Spec : Prop :=
  ∀ n, P11303086123913915880.a n = A039300 n

end A039300

/-! ## A039300.P17748134575228387285

`∑[ogf((-1+x+3x^2)/(-1+2x+3x^2))]`
-/

namespace A039300.P17748134575228387285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -3] [1, -2, -3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039300.P17748134575228387285

namespace A039300

/-- `∑[ogf((-1+x+3x^2)/(-1+2x+3x^2))]` -/
def P17748134575228387285.Spec : Prop :=
  ∀ n, P17748134575228387285.a n = A039300 n

end A039300

/-! ## A039300.P16759393722597657176

`ogf((-1+x+3x^2)/(-1+3x+x^2-3x^3))`
-/

namespace A039300.P16759393722597657176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -3] [1, -3, -1, 3] n

end

end A039300.P16759393722597657176

namespace A039300

/-- `ogf((-1+x+3x^2)/(-1+3x+x^2-3x^3))` -/
def P16759393722597657176.Spec : Prop :=
  ∀ n, P16759393722597657176.a n = A039300 n

end A039300

/-! ## A039300.P13252576222081982957

`∑[xor(1, 3*a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A039300.P13252576222081982957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Nat.xor 1 (3 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039300.P13252576222081982957

namespace A039300

/-- `∑[xor(1, 3*a(n-1))]` -/
def P13252576222081982957.Spec : Prop :=
  ∀ n, (P13252576222081982957.a n : ℤ) = A039300 n

end A039300

/-! ## A039300.P5011498971195938605

`∑[xor(1, lcm(3, a(n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A039300.P5011498971195938605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Nat.xor 1 (Nat.lcm 3 (f1 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039300.P5011498971195938605

namespace A039300

/-- `∑[xor(1, lcm(3, a(n-1)))]` -/
def P5011498971195938605.Spec : Prop :=
  ∀ n, (P5011498971195938605.a n : ℤ) = A039300 n

end A039300

/-! ## A039300.P16918786884857743759

`3*a(n-1)-gcd(2, n)` with `a(0)=1`
-/

namespace A039300.P16918786884857743759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - (Nat.gcd 2 n : ℤ)

end

end A039300.P16918786884857743759

namespace A039300

/-- `3*a(n-1)-gcd(2, n)` -/
def P16918786884857743759.Spec : Prop :=
  ∀ n, P16918786884857743759.a n = A039300 n

end A039300

/-! ## A039300.P11289948802891112066

`a(n-2)+3^(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A039300.P11289948802891112066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A039300.P11289948802891112066

namespace A039300

/-- `a(n-2)+3^(n-1)` -/
def P11289948802891112066.Spec : Prop :=
  ∀ n, P11289948802891112066.a n = (A039300 n : ℚ)

end A039300

/-! ## A039300.P14935186890826269368

`∑[3^(n-1)-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A039300.P14935186890826269368
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039300.P14935186890826269368

namespace A039300

/-- `∑[3^(n-1)-a(n-1)]` -/
def P14935186890826269368.Spec : Prop :=
  ∀ n, P14935186890826269368.a n = (A039300 n : ℚ)

end A039300

/-! ## A039300.P9401707006439188598

`3*a(n-1)-a((n-1)%2)` with `a(0)=1`
-/

namespace A039300.P9401707006439188598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - a (Int.tmod ((n : ℤ) - 1) 2).toNat

end

end A039300.P9401707006439188598

namespace A039300

/-- `3*a(n-1)-a((n-1)%2)` -/
def P9401707006439188598.Spec : Prop :=
  ∀ n, P9401707006439188598.a n = A039300 n

end A039300

/-! ## A039300.P13803114130914977478

`2*a(n-1)-3*(1-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A039300.P13803114130914977478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) - 3 * (1 - a (n - 2))

end

end A039300.P13803114130914977478

namespace A039300

/-- `2*a(n-1)-3*(1-a(n-2))` -/
def P13803114130914977478.Spec : Prop :=
  ∀ n, P13803114130914977478.a n = A039300 n

theorem P13803114130914977478.correct : P13803114130914977478.Spec := by
  intro n
  simp only [A039300, Nat.add_sub_cancel, A039300.P13803114130914977478.a, A039300.P12812337894662455855.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A039300

/-! ## A039300.P11523853372003323942

`∑[A015518(n)]+1`
-/

namespace A039300.P11523853372003323942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A039300.P11523853372003323942

namespace A039300

/-- `∑[A015518(n)]+1` -/
def P11523853372003323942.Spec : Prop :=
  ∀ n, P11523853372003323942.a n = A039300 n

end A039300

/-! ## A039300.P8432291300053688143

`Δ[A097137(n)]+1`
-/

namespace A039300.P8432291300053688143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A039300.P8432291300053688143

namespace A039300

/-- `Δ[A097137(n)]+1` -/
def P8432291300053688143.Spec : Prop :=
  ∀ n, P8432291300053688143.a n = A039300 n

end A039300

/-! ## A039300.P12009438638794095177

`A115098(n)-a(n-1)` with `a(0)=1`
-/

namespace A039300.P12009438638794095177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A115098 n - a (n - 1)

end

end A039300.P12009438638794095177

namespace A039300

/-- `A115098(n)-a(n-1)` -/
def P12009438638794095177.Spec : Prop :=
  ∀ n, P12009438638794095177.a n = A039300 n

end A039300

/-! ## A039300.P1261378622879988369

`A006342(n)+A000035(n)`
-/

namespace A039300.P1261378622879988369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006342 n + A000035 n

end

end A039300.P1261378622879988369

namespace A039300

/-- `A006342(n)+A000035(n)` -/
def P1261378622879988369.Spec : Prop :=
  ∀ n, P1261378622879988369.a n = A039300 n

end A039300

/-! ## A039300.P5941837054467831279

`A007051(n)+A007051(n)-A153773(n+1)`
-/

namespace A039300.P5941837054467831279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + (A007051 n - A153773 (n + 1))

end

end A039300.P5941837054467831279

namespace A039300

/-- `A007051(n)+A007051(n)-A153773(n+1)` -/
def P5941837054467831279.Spec : Prop :=
  ∀ n, P5941837054467831279.a n = A039300 n

end A039300

/-! ## A039300.P16032676781075013136

`(or(1, ∑[3^n])+3)/4`
-/

namespace A039300.P16032676781075013136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 3 : ℚ) / 4

end

end A039300.P16032676781075013136

namespace A039300

/-- `(or(1, ∑[3^n])+3)/4` -/
def P16032676781075013136.Spec : Prop :=
  ∀ n, P16032676781075013136.a n = (A039300 n : ℚ)

end A039300

/-! ## A039300.P12849331650912113781

`ceil(A067771(n)/4)`
-/

namespace A039300.P12849331650912113781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A067771 n : ℚ) / 4⌉

end

end A039300.P12849331650912113781

namespace A039300

/-- `ceil(A067771(n)/4)` -/
def P12849331650912113781.Spec : Prop :=
  ∀ n, P12849331650912113781.a n = A039300 n

end A039300

/-!
# A039301: Number of distinct quadratic residues mod 4^n.

The programs for A039301, the canonical program `A039301.P3691708098096914838` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039301 has offset 0).

The definition of A039301 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039301.P3691708098096914838

`floor((4^n+10)/6)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A039301

/-- `floor((4^n+10)/6)` -/
def P3691708098096914838.Spec : Prop :=
  ∀ n, P3691708098096914838.a n = A039301 n

theorem P3691708098096914838.correct : P3691708098096914838.Spec := by
  intro n
  simp only [A039301]

end A039301

/-! ## A039301.P8573146349209063259

`∑[ogf((-1+3x+2x^2)/(-1+4x))]`
-/

namespace A039301.P8573146349209063259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, -2] [1, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039301.P8573146349209063259

namespace A039301

/-- `∑[ogf((-1+3x+2x^2)/(-1+4x))]` -/
def P8573146349209063259.Spec : Prop :=
  ∀ n, P8573146349209063259.a n = A039301 n

end A039301

/-! ## A039301.P2087149102427362262

`ogf((1-3x-2x^2)/(1-5x+4x^2))`
-/

namespace A039301.P2087149102427362262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, -2] [1, -5, 4] n

end

end A039301.P2087149102427362262

namespace A039301

/-- `ogf((1-3x-2x^2)/(1-5x+4x^2))` -/
def P2087149102427362262.Spec : Prop :=
  ∀ n, P2087149102427362262.a n = A039301 n

end A039301

/-! ## A039301.P14284390224165252113

`4*(a(n-1)-1)` with `a(0)=1, a(1)=2`
-/

namespace A039301.P14284390224165252113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * (a (n - 1) - 1)

end

end A039301.P14284390224165252113

namespace A039301

/-- `4*(a(n-1)-1)` -/
def P14284390224165252113.Spec : Prop :=
  ∀ n, P14284390224165252113.a n = A039301 n

end A039301

/-! ## A039301.P15002709767708183267

`lcm(4, 1-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A039301.P15002709767708183267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lcm 4 (1 - (a (n - 1) : ℤ))

end

end A039301.P15002709767708183267

namespace A039301

/-- `lcm(4, 1-a(n-1))` -/
def P15002709767708183267.Spec : Prop :=
  ∀ n, (P15002709767708183267.a n : ℤ) = A039301 n

end A039301

/-! ## A039301.P12422688757192040454

`(a(n-1)-1)/(1/2)²` with `a(0)=1, a(1)=2`
-/

namespace A039301.P12422688757192040454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) - 1) / ((1 : ℚ) / 2) ^ 2

end

end A039301.P12422688757192040454

namespace A039301

/-- `(a(n-1)-1)/(1/2)²` -/
def P12422688757192040454.Spec : Prop :=
  ∀ n, P12422688757192040454.a n = (A039301 n : ℚ)

end A039301

/-! ## A039301.P17914855364055060060

`record[a(n-1)+(-2)^(n-1)]` with `a(0)=1`
-/

namespace A039301.P17914855364055060060
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (-2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039301.P17914855364055060060

namespace A039301

/-- `record[a(n-1)+(-2)^(n-1)]` -/
def P17914855364055060060.Spec : Prop :=
  ∀ n, P17914855364055060060.a n = (A039301 n : ℚ)

end A039301

/-! ## A039301.P8506146686694157068

`record[4-a(n-1)-a(n-1)]` with `a(0)=1`
-/

namespace A039301.P8506146686694157068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  4 - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039301.P8506146686694157068

namespace A039301

/-- `record[4-a(n-1)-a(n-1)]` -/
def P8506146686694157068.Spec : Prop :=
  ∀ n, P8506146686694157068.a n = A039301 n

end A039301

/-! ## A039301.P11539350162940711372

`(1-a(n-1))/(3/4-1)` with `a(0)=1, a(1)=2`
-/

namespace A039301.P11539350162940711372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (1 - a (n - 1)) / ((3 : ℚ) / 4 - 1)

end

end A039301.P11539350162940711372

namespace A039301

/-- `(1-a(n-1))/(3/4-1)` -/
def P11539350162940711372.Spec : Prop :=
  ∀ n, P11539350162940711372.a n = (A039301 n : ℚ)

end A039301

/-! ## A039301.P7202146471094046709

`a(n-1)+a(n-1)+a(n-1)+a(n-1)-4` with `a(0)=1, a(1)=2`
-/

namespace A039301.P7202146471094046709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) - 4)))

end

end A039301.P7202146471094046709

namespace A039301

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)-4` -/
def P7202146471094046709.Spec : Prop :=
  ∀ n, P7202146471094046709.a n = A039301 n

end A039301

/-! ## A039301.P4548225772014259669

`a(n-1)-(4-a(n-1)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A039301.P4548225772014259669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (4 - a (n - 1) - a (n - 1) - a (n - 1))

end

end A039301.P4548225772014259669

namespace A039301

/-- `a(n-1)-(4-a(n-1)-a(n-1)-a(n-1))` -/
def P4548225772014259669.Spec : Prop :=
  ∀ n, P4548225772014259669.a n = A039301 n

end A039301

/-! ## A039301.P11986379745682563876

`record[A084247(n)]`
-/

namespace A039301.P11986379745682563876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039301.P11986379745682563876

namespace A039301

/-- `record[A084247(n)]` -/
def P11986379745682563876.Spec : Prop :=
  ∀ n, P11986379745682563876.a n = A039301 n

end A039301

/-! ## A039301.P7357584656063336591

`A023105(2*n)`
-/

namespace A039301.P7357584656063336591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023105 (2 * n)

end

end A039301.P7357584656063336591

namespace A039301

/-- `A023105(2*n)` -/
def P7357584656063336591.Spec : Prop :=
  ∀ n, P7357584656063336591.a n = A039301 n

end A039301

/-! ## A039301.P8589899910987736488

`A378105(2*n)`
-/

namespace A039301.P8589899910987736488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378105 (2 * n)

end

end A039301.P8589899910987736488

namespace A039301

/-- `A378105(2*n)` -/
def P8589899910987736488.Spec : Prop :=
  ∀ n, P8589899910987736488.a n = A039301 n

end A039301

/-! ## A039301.P964263607153462418

`record[∑[A123344(n)]]`
-/

namespace A039301.P964263607153462418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039301.P964263607153462418

namespace A039301

/-- `record[∑[A123344(n)]]` -/
def P964263607153462418.Spec : Prop :=
  ∀ n, P964263607153462418.a n = A039301 n

end A039301

/-! ## A039301.P11211688944277785638

`record[3-A140966(n)]`
-/

namespace A039301.P11211688944277785638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A140966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039301.P11211688944277785638

namespace A039301

/-- `record[3-A140966(n)]` -/
def P11211688944277785638.Spec : Prop :=
  ∀ n, P11211688944277785638.a n = A039301 n

end A039301

/-! ## A039301.P1329071973390575877

`A155980(Δ[n²])-1`
-/

namespace A039301.P1329071973390575877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155980 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A039301.P1329071973390575877

namespace A039301

/-- `A155980(Δ[n²])-1` -/
def P1329071973390575877.Spec : Prop :=
  ∀ n, P1329071973390575877.a n = A039301 n

end A039301

/-! ## A039301.P16548926194470570375

`abs(2-A173197(2*n))`
-/

namespace A039301.P16548926194470570375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A173197 (2 * n)|

end

end A039301.P16548926194470570375

namespace A039301

/-- `abs(2-A173197(2*n))` -/
def P16548926194470570375.Spec : Prop :=
  ∀ n, P16548926194470570375.a n = A039301 n

end A039301

/-! ## A039301.P10495093782764089455

`A001045(comp[2*(n+1)])+1`
-/

namespace A039301.P10495093782764089455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1

end

end A039301.P10495093782764089455

namespace A039301

/-- `A001045(comp[2*(n+1)])+1` -/
def P10495093782764089455.Spec : Prop :=
  ∀ n, P10495093782764089455.a n = A039301 n

end A039301

/-! ## A039301.P2147940929138841807

`A081294(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A039301.P2147940929138841807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081294 (n - 1) + a (n - 1)

end

end A039301.P2147940929138841807

namespace A039301

/-- `A081294(n-1)+a(n-1)` -/
def P2147940929138841807.Spec : Prop :=
  ∀ n, P2147940929138841807.a n = A039301 n

end A039301

/-!
# A039302: Number of distinct quadratic residues mod 5^n.

The programs for A039302, the canonical program `A039302.P18336168607247130194` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039302 has offset 0).

The definition of A039302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039302.P18336168607247130194

`5*a(n-1)+a(n-2)-5*a(n-3)` with `a(0)=1, a(1)=3, a(2)=11`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A039302

/-- `5*a(n-1)+a(n-2)-5*a(n-3)` -/
def P18336168607247130194.Spec : Prop :=
  ∀ n, P18336168607247130194.a n = A039302 n

theorem P18336168607247130194.correct : P18336168607247130194.Spec := by
  intro n
  simp only [A039302]

end A039302

/-! ## A039302.P4594816042051244258

`floor((5^n+3)*5/12)`
-/

namespace A039302.P4594816042051244258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((5 ^ n + 3) * 5 : ℚ) / 12⌋

end

end A039302.P4594816042051244258

namespace A039302

/-- `floor((5^n+3)*5/12)` -/
def P4594816042051244258.Spec : Prop :=
  ∀ n, P4594816042051244258.a n = A039302 n

end A039302

/-! ## A039302.P13593567301893507295

`∑[ogf((-1+2x+5x^2)/(-1+4x+5x^2))]`
-/

namespace A039302.P13593567301893507295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -5] [1, -4, -5] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039302.P13593567301893507295

namespace A039302

/-- `∑[ogf((-1+2x+5x^2)/(-1+4x+5x^2))]` -/
def P13593567301893507295.Spec : Prop :=
  ∀ n, P13593567301893507295.a n = A039302 n

end A039302

/-! ## A039302.P15841411792862156017

`ogf((-1+2x+5x^2)/(-1+5x+x^2-5x^3))`
-/

namespace A039302.P15841411792862156017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -5] [1, -5, -1, 5] n

end

end A039302.P15841411792862156017

namespace A039302

/-- `ogf((-1+2x+5x^2)/(-1+5x+x^2-5x^3))` -/
def P15841411792862156017.Spec : Prop :=
  ∀ n, P15841411792862156017.a n = A039302 n

end A039302

/-! ## A039302.P11007468397414969426

`5*a(n-1)-2*gcd(2, n)` with `a(0)=1`
-/

namespace A039302.P11007468397414969426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - (2 * Nat.gcd 2 n : ℤ)

end

end A039302.P11007468397414969426

namespace A039302

/-- `5*a(n-1)-2*gcd(2, n)` -/
def P11007468397414969426.Spec : Prop :=
  ∀ n, P11007468397414969426.a n = A039302 n

end A039302

/-! ## A039302.P1401952756390895175

`(A102239(n)+2)/3`
-/

namespace A039302.P1401952756390895175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102239 n + 2 : ℚ) / 3

end

end A039302.P1401952756390895175

namespace A039302

/-- `(A102239(n)+2)/3` -/
def P1401952756390895175.Spec : Prop :=
  ∀ n, P1401952756390895175.a n = (A039302 n : ℚ)

end A039302

/-! ## A039302.P11211616696532592676

`A000993(n)/A023105(n)`
-/

namespace A039302.P11211616696532592676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000993 n : ℚ) / (A023105 n : ℚ)

end

end A039302.P11211616696532592676

namespace A039302

/-- `A000993(n)/A023105(n)` -/
def P11211616696532592676.Spec : Prop :=
  ∀ n, P11211616696532592676.a n = (A039302 n : ℚ)

end A039302

/-!
# A039303: Number of distinct quadratic residues mod 6^n.

The programs for A039303, the canonical program `A039303.P15865620395375190144` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039303 has offset 0).

The definition of A039303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039303.P15865620395375190144

`A023105(n)*A039300(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A039303

/-- `A023105(n)*A039300(n)` -/
def P15865620395375190144.Spec : Prop :=
  ∀ n, P15865620395375190144.a n = A039303 n

theorem P15865620395375190144.correct : P15865620395375190144.Spec := by
  intro n
  simp only [A039303]

end A039303

/-! ## A039303.P4572901109356424820

`(∑[A015518(n)]+1)*A023105(n)`
-/

namespace A039303.P4572901109356424820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A023105 n

end

end A039303.P4572901109356424820

namespace A039303

/-- `(∑[A015518(n)]+1)*A023105(n)` -/
def P4572901109356424820.Spec : Prop :=
  ∀ n, P4572901109356424820.a n = A039303 n

end A039303

/-! ## A039303.P12282858099891887230

`∑[A015518(A028310(n))]*A023105(n)`
-/

namespace A039303.P12282858099891887230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A023105 n

end

end A039303.P12282858099891887230

namespace A039303

/-- `∑[A015518(A028310(n))]*A023105(n)` -/
def P12282858099891887230.Spec : Prop :=
  ∀ n, P12282858099891887230.a n = A039303 n

end A039303

/-! ## A039303.P16555191367044673873

`(A006342(n)+A000035(n))*A023105(n)`
-/

namespace A039303.P16555191367044673873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006342 n + A000035 n) * A023105 n

end

end A039303.P16555191367044673873

namespace A039303

/-- `(A006342(n)+A000035(n))*A023105(n)` -/
def P16555191367044673873.Spec : Prop :=
  ∀ n, P16555191367044673873.a n = A039303 n

end A039303

/-! ## A039303.P17574232336950249785

`(A122958(n)+A000975(n))*A039300(n)`
-/

namespace A039303.P17574232336950249785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122958 n + A000975 n) * A039300 n

end

end A039303.P17574232336950249785

namespace A039303

/-- `(A122958(n)+A000975(n))*A039300(n)` -/
def P17574232336950249785.Spec : Prop :=
  ∀ n, P17574232336950249785.a n = A039303 n

end A039303

/-! ## A039303.P905906068804575099

`A000993(n)/A039302(n)*A039300(n)`
-/

namespace A039303.P905906068804575099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000993 n : ℚ) / (A039302 n : ℚ) * (A039300 n : ℚ)

end

end A039303.P905906068804575099

namespace A039303

/-- `A000993(n)/A039302(n)*A039300(n)` -/
def P905906068804575099.Spec : Prop :=
  ∀ n, P905906068804575099.a n = (A039303 n : ℚ)

end A039303

/-!
# A039304: Number of distinct quadratic residues mod 7^n.

The programs for A039304, the canonical program `A039304.P14643341257742013273` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039304 has offset 0).

The definition of A039304 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039304.P14643341257742013273

`7*a(n-1)+a(n-2)-7*a(n-3)` with `a(0)=1, a(1)=4, a(2)=22`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A039304

/-- `7*a(n-1)+a(n-2)-7*a(n-3)` -/
def P14643341257742013273.Spec : Prop :=
  ∀ n, P14643341257742013273.a n = A039304 n

theorem P14643341257742013273.correct : P14643341257742013273.Spec := by
  intro n
  simp only [A039304]

end A039304

/-! ## A039304.P4721968063186133112

`floor((7^n+3)*7/16)`
-/

namespace A039304.P4721968063186133112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((7 ^ n + 3) * 7 : ℚ) / 16⌋

end

end A039304.P4721968063186133112

namespace A039304

/-- `floor((7^n+3)*7/16)` -/
def P4721968063186133112.Spec : Prop :=
  ∀ n, P4721968063186133112.a n = A039304 n

end A039304

/-! ## A039304.P9994912117227697787

`∑[ogf((-1+3x+7x^2)/(-1+6x+7x^2))]`
-/

namespace A039304.P9994912117227697787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, -7] [1, -6, -7] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039304.P9994912117227697787

namespace A039304

/-- `∑[ogf((-1+3x+7x^2)/(-1+6x+7x^2))]` -/
def P9994912117227697787.Spec : Prop :=
  ∀ n, P9994912117227697787.a n = A039304 n

end A039304

/-! ## A039304.P8015573244591111325

`ogf((-1+3x+7x^2)/(-1+7x+x^2-7x^3))`
-/

namespace A039304.P8015573244591111325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, -7] [1, -7, -1, 7] n

end

end A039304.P8015573244591111325

namespace A039304

/-- `ogf((-1+3x+7x^2)/(-1+7x+x^2-7x^3))` -/
def P8015573244591111325.Spec : Prop :=
  ∀ n, P8015573244591111325.a n = A039304 n

end A039304

/-!
# A039305: Number of distinct quadratic residues mod 8^n.

The programs for A039305, the canonical program `A039305.P765320621189067048` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039305 has offset 0).

The definition of A039305 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039305.P765320621189067048

`8*a(n-1)+a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=3, a(2)=12, a(3)=87`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A039305

/-- `8*a(n-1)+a(n-2)-8*a(n-3)` -/
def P765320621189067048.Spec : Prop :=
  ∀ n, P765320621189067048.a n = A039305 n

theorem P765320621189067048.correct : P765320621189067048.Spec := by
  intro n
  simp only [A039305]

end A039305

/-! ## A039305.P14330653858572598706

`floor((8^n+10)/6)`
-/

namespace A039305.P14330653858572598706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(8 ^ n + 10 : ℚ) / 6⌋

end

end A039305.P14330653858572598706

namespace A039305

/-- `floor((8^n+10)/6)` -/
def P14330653858572598706.Spec : Prop :=
  ∀ n, P14330653858572598706.a n = A039305 n

end A039305

/-! ## A039305.P14866399972075712419

`A023105(3*n)`
-/

namespace A039305.P14866399972075712419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023105 (3 * n)

end

end A039305.P14866399972075712419

namespace A039305

/-- `A023105(3*n)` -/
def P14866399972075712419.Spec : Prop :=
  ∀ n, P14866399972075712419.a n = A039305 n

end A039305

/-! ## A039305.P9285800464624431842

`ceil(A132805(n)/2)+1`
-/

namespace A039305.P9285800464624431842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132805 n : ℚ) / 2⌉ + 1

end

end A039305.P9285800464624431842

namespace A039305

/-- `ceil(A132805(n)/2)+1` -/
def P9285800464624431842.Spec : Prop :=
  ∀ n, P9285800464624431842.a n = A039305 n

end A039305

/-! ## A039305.P6911521453701151045

`(A167167(3*n)+3)/2`
-/

namespace A039305.P6911521453701151045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167167 (3 * n) + 3 : ℚ) / 2

end

end A039305.P6911521453701151045

namespace A039305

/-- `(A167167(3*n)+3)/2` -/
def P6911521453701151045.Spec : Prop :=
  ∀ n, P6911521453701151045.a n = (A039305 n : ℚ)

end A039305

/-! ## A039305.P3449976691948501125

`ceil(A001045(3*n)/2)+1`
-/

namespace A039305.P3449976691948501125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001045 (3 * n) : ℚ) / 2⌉ + 1

end

end A039305.P3449976691948501125

namespace A039305

/-- `ceil(A001045(3*n)/2)+1` -/
def P3449976691948501125.Spec : Prop :=
  ∀ n, P3449976691948501125.a n = A039305 n

end A039305

/-! ## A039305.P4079926963679030269

`record[A023105(n)^A049347(n)]`
-/

namespace A039305.P4079926963679030269
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023105 n : ℚ) ^ (A049347 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039305.P4079926963679030269

namespace A039305

/-- `record[A023105(n)^A049347(n)]` -/
def P4079926963679030269.Spec : Prop :=
  ∀ n, P4079926963679030269.a n = (A039305 n : ℚ)

end A039305

/-! ## A039305.P13779850867295764479

`record[A023105(A220660(A016777(n)))]`
-/

namespace A039305.P13779850867295764479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023105 (A220660 (A016777 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039305.P13779850867295764479

namespace A039305

/-- `record[A023105(A220660(A016777(n)))]` -/
def P13779850867295764479.Spec : Prop :=
  ∀ n, P13779850867295764479.a n = A039305 n

end A039305

/-! ## A039305.P7491750592627401360

`A023105(A008486(n))-A000007(n)`
-/

namespace A039305.P7491750592627401360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023105 (A008486 n).toNat - A000007 n

end

end A039305.P7491750592627401360

namespace A039305

/-- `A023105(A008486(n))-A000007(n)` -/
def P7491750592627401360.Spec : Prop :=
  ∀ n, P7491750592627401360.a n = A039305 n

end A039305

/-! ## A039305.P10084369606538850596

`A128209(A004273(n)+n)+A000035(n)`
-/

namespace A039305.P10084369606538850596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 (A004273 n + (n : ℤ)).toNat + A000035 n

end

end A039305.P10084369606538850596

namespace A039305

/-- `A128209(A004273(n)+n)+A000035(n)` -/
def P10084369606538850596.Spec : Prop :=
  ∀ n, P10084369606538850596.a n = A039305 n

end A039305

/-! ## A039305.P667116680101980121

`A023105(A008486(n))-A010051(A045388(n+1)+1)`
-/

namespace A039305.P667116680101980121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023105 (A008486 n).toNat - A010051 (A045388 (n + 1) + 1).toNat

end

end A039305.P667116680101980121

namespace A039305

/-- `A023105(A008486(n))-A010051(A045388(n+1)+1)` -/
def P667116680101980121.Spec : Prop :=
  ∀ n, P667116680101980121.a n = A039305 n

end A039305

/-! ## A039305.P2977629555940686218

`ceil(A000225(3*n)/6)+1`
-/

namespace A039305.P2977629555940686218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000225 (3 * n) : ℚ) / 6⌉ + 1

end

end A039305.P2977629555940686218

namespace A039305

/-- `ceil(A000225(3*n)/6)+1` -/
def P2977629555940686218.Spec : Prop :=
  ∀ n, P2977629555940686218.a n = A039305 n

end A039305

/-!
# A039306: Number of distinct quadratic residues mod 9^n.

The programs for A039306, the canonical program `A039306.P11443132609755346583` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039306 has offset 0).

The definition of A039306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A039306.P18080173225085236649

`a(n-1)+3^(2*n-1)` with `a(0)=1`
-/

namespace A039306.P18080173225085236649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (3 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ)

end

end A039306.P18080173225085236649

namespace A039306

/-- `a(n-1)+3^(2*n-1)` -/
def P18080173225085236649.Spec : Prop :=
  ∀ n, P18080173225085236649.a n = (A039306 n : ℚ)

end A039306

/-! ## A039306.P11443132609755346583

`9*a(n-1)+a(n-2)-9*a(n-3)` with `a(0)=1, a(1)=4, a(2)=31`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A039306

/-- `9*a(n-1)+a(n-2)-9*a(n-3)` -/
def P11443132609755346583.Spec : Prop :=
  ∀ n, P11443132609755346583.a n = A039306 n

theorem P11443132609755346583.correct : P11443132609755346583.Spec := by
  intro n
  simp only [A039306]

end A039306

/-! ## A039306.P12393102210608061331

`floor((9^n+3)*3/8)`
-/

namespace A039306.P12393102210608061331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((9 ^ n + 3) * 3 : ℚ) / 8⌋

end

end A039306.P12393102210608061331

namespace A039306

/-- `floor((9^n+3)*3/8)` -/
def P12393102210608061331.Spec : Prop :=
  ∀ n, P12393102210608061331.a n = A039306 n

end A039306

/-! ## A039306.P18127446766032621040

`∑[abs(record[-(-3)^n])]`
-/

namespace A039306.P18127446766032621040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-3) ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039306.P18127446766032621040

namespace A039306

/-- `∑[abs(record[-(-3)^n])]` -/
def P18127446766032621040.Spec : Prop :=
  ∀ n, P18127446766032621040.a n = A039306 n

end A039306

/-! ## A039306.P12261098446910201738

`ogf((1-6x)/(1-10x+9x^2))`
-/

namespace A039306.P12261098446910201738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6] [1, -10, 9] n

end

end A039306.P12261098446910201738

namespace A039306

/-- `ogf((1-6x)/(1-10x+9x^2))` -/
def P12261098446910201738.Spec : Prop :=
  ∀ n, P12261098446910201738.a n = A039306 n

end A039306

/-! ## A039306.P17024391846625942099

`∑[sqrt(3)^record[lcm(2, n)]]`
-/

namespace A039306.P17024391846625942099
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (3 : ℝ) ^ f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039306.P17024391846625942099

namespace A039306

/-- `∑[sqrt(3)^record[lcm(2, n)]]` -/
def P17024391846625942099.Spec : Prop :=
  ∀ n, P17024391846625942099.a n = (A039306 n : ℝ)

end A039306

/-! ## A039306.P2351809861353180176

`∑[record[3^gcd(n, ∑[n])]]`
-/

namespace A039306.P2351809861353180176
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.gcd n (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039306.P2351809861353180176

namespace A039306

/-- `∑[record[3^gcd(n, ∑[n])]]` -/
def P2351809861353180176.Spec : Prop :=
  ∀ n, (P2351809861353180176.a n : ℤ) = A039306 n

end A039306

/-! ## A039306.P16626127951810493737

`9*a(n-1)-5` with `a(0)=1`
-/

namespace A039306.P16626127951810493737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (n - 1) - 5

end

end A039306.P16626127951810493737

namespace A039306

/-- `9*a(n-1)-5` -/
def P16626127951810493737.Spec : Prop :=
  ∀ n, P16626127951810493737.a n = A039306 n

end A039306

/-! ## A039306.P2876683113719282773

`lcm(9, a(n-1))-5` with `a(0)=1`
-/

namespace A039306.P2876683113719282773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 9 (a (n - 1)) : ℤ) - 5

end

end A039306.P2876683113719282773

namespace A039306

/-- `lcm(9, a(n-1))-5` -/
def P2876683113719282773.Spec : Prop :=
  ∀ n, P2876683113719282773.a n = A039306 n

end A039306

/-! ## A039306.P8880127577977949650

`a(n-1)/(1/3)²-5` with `a(0)=1`
-/

namespace A039306.P8880127577977949650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 - 5

end

end A039306.P8880127577977949650

namespace A039306

/-- `a(n-1)/(1/3)²-5` -/
def P8880127577977949650.Spec : Prop :=
  ∀ n, P8880127577977949650.a n = (A039306 n : ℚ)

end A039306

/-! ## A039306.P3221793244153143684

`∑[A102518(n)]`
-/

namespace A039306.P3221793244153143684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039306.P3221793244153143684

namespace A039306

/-- `∑[A102518(n)]` -/
def P3221793244153143684.Spec : Prop :=
  ∀ n, P3221793244153143684.a n = A039306 n

end A039306

/-! ## A039306.P14419885463897904631

`A006342(2*n)`
-/

namespace A039306.P14419885463897904631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006342 (2 * n)

end

end A039306.P14419885463897904631

namespace A039306

/-- `A006342(2*n)` -/
def P14419885463897904631.Spec : Prop :=
  ∀ n, P14419885463897904631.a n = A039306 n

end A039306

/-! ## A039306.P9300876221760760100

`A039300(2*n)`
-/

namespace A039306.P9300876221760760100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039300 (2 * n)

end

end A039306.P9300876221760760100

namespace A039306

/-- `A039300(2*n)` -/
def P9300876221760760100.Spec : Prop :=
  ∀ n, P9300876221760760100.a n = A039306 n

end A039306

/-! ## A039306.P3211389591040447040

`∑[A133494(2*n)]`
-/

namespace A039306.P3211389591040447040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039306.P3211389591040447040

namespace A039306

/-- `∑[A133494(2*n)]` -/
def P3211389591040447040.Spec : Prop :=
  ∀ n, P3211389591040447040.a n = A039306 n

end A039306

/-! ## A039306.P18125510076241469244

`∑[3^A004273(n)]`
-/

namespace A039306.P18125510076241469244
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A004273 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039306.P18125510076241469244

namespace A039306

/-- `∑[3^A004273(n)]` -/
def P18125510076241469244.Spec : Prop :=
  ∀ n, P18125510076241469244.a n = (A039306 n : ℚ)

end A039306

/-! ## A039306.P1705789606987188716

`3*A002452(n)+1`
-/

namespace A039306.P1705789606987188716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002452 n + 1

end

end A039306.P1705789606987188716

namespace A039306

/-- `3*A002452(n)+1` -/
def P1705789606987188716.Spec : Prop :=
  ∀ n, P1705789606987188716.a n = A039306 n

end A039306

/-! ## A039306.P9789233961384248822

`3*A047854(n)-2`
-/

namespace A039306.P9789233961384248822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A047854 n - 2

end

end A039306.P9789233961384248822

namespace A039306

/-- `3*A047854(n)-2` -/
def P9789233961384248822.Spec : Prop :=
  ∀ n, P9789233961384248822.a n = A039306 n

end A039306

/-! ## A039306.P6318936909706285175

`A325153(n+1)-n`
-/

namespace A039306.P6318936909706285175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325153 (n + 1) - (n : ℤ)

end

end A039306.P6318936909706285175

namespace A039306

/-- `A325153(n+1)-n` -/
def P6318936909706285175.Spec : Prop :=
  ∀ n, P6318936909706285175.a n = A039306 n

end A039306

/-! ## A039306.P2428782207630617242

`record[∑[A076040(n)]+1]`
-/

namespace A039306.P2428782207630617242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076040 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039306.P2428782207630617242

namespace A039306

/-- `record[∑[A076040(n)]+1]` -/
def P2428782207630617242.Spec : Prop :=
  ∀ n, P2428782207630617242.a n = A039306 n

end A039306

/-! ## A039306.P14179212541500976828

`∑[A140429(2*n)]+1`
-/

namespace A039306.P14179212541500976828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A039306.P14179212541500976828

namespace A039306

/-- `∑[A140429(2*n)]+1` -/
def P14179212541500976828.Spec : Prop :=
  ∀ n, P14179212541500976828.a n = A039306 n

end A039306

/-!
# A039307: Numbers whose base-6 representation has the same nonzero number of 4's and 5's.

The programs for A039307, there is no canonical definition to state claims against.
-/

/-! ## A039307.P1706247937857272312

`∩[A039029(n+1), A333656(n+1)]`
-/

namespace A039307.P1706247937857272312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039307.P1706247937857272312

/-! ## A039307.P1678527547452839011

`A043130(A000005(5^n))`
-/

namespace A039307.P1678527547452839011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043130 (A000005 (5 ^ n)).toNat

end

end A039307.P1678527547452839011

/-! ## A039307.P16646379120958094547

`A043130(record[∑[A307044(n)]])`
-/

namespace A039307.P16646379120958094547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307044 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043130 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039307.P16646379120958094547

/-! ## A039307.P6890110961139160822

`A043910(record[∑[A307044(n)]])`
-/

namespace A039307.P6890110961139160822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307044 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043910 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039307.P6890110961139160822

/-!
# A039308: Numbers whose base-7 representation has the same nonzero number of 0's and 1's.

The programs for A039308, there is no canonical definition to state claims against.
-/

/-! ## A039308.P7207088257655619786

`∩[A037376(n+1), A039030(n+1)]`
-/

namespace A039308.P7207088257655619786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039308.P7207088257655619786

/-! ## A039308.P7921025131868088853

`∩[A039030(n+1), A382413(n+1)]`
-/

namespace A039308.P7921025131868088853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039308.P7921025131868088853

/-! ## A039308.P13697846536805504334

`∩[comp[A037341(n+1)], A039030(n+1)]`
-/

namespace A039308.P13697846536805504334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037341 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A039308.P13697846536805504334

/-! ## A039308.P15476126344918978906

`∩[A037376(n+1), A180241(n+1)]`
-/

namespace A039308.P15476126344918978906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039308.P15476126344918978906

/-!
# A039309: Numbers whose base-7 representation has the same nonzero number of 0's and 2's.

The programs for A039309, there is no canonical definition to state claims against.
-/

/-! ## A039309.P6418681540995505141

`∩[A039031(n+1), A382413(n+1)]`
-/

namespace A039309.P6418681540995505141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039309.P6418681540995505141

/-! ## A039309.P16645656551199168446

`xor(A043132(n+1), A053473(A206178(n)))`
-/

namespace A039309.P16645656551199168446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A043132 (n + 1)) (A053473 (A206178 n).toNat)

end

end A039309.P16645656551199168446

/-!
# A039310: Numbers whose base-7 representation has the same nonzero number of 0's and 3's.

The programs for A039310, there is no canonical definition to state claims against.
-/

/-! ## A039310.P989602065793727696

`∩[A039032(n+1), A382413(n+1)]`
-/

namespace A039310.P989602065793727696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039310.P989602065793727696

/-! ## A039310.P11115128685717205157

`A037466(A045192(n+1)*A290556(n))`
-/

namespace A039310.P11115128685717205157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (A045192 (n + 1) * A290556 n).toNat

end

end A039310.P11115128685717205157

/-! ## A039310.P15233976138636082861

`A037466(A045192(n+1)^A290556(n))`
-/

namespace A039310.P15233976138636082861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (SequenceMachineLib.roundAway ((A045192 (n + 1) : ℚ) ^ (A290556 n : ℤ))).toNat

end

end A039310.P15233976138636082861

/-!
# A039311: Numbers whose base-7 representation has the same nonzero number of 0's and 4's.

The programs for A039311, there is no canonical definition to state claims against.
-/

/-! ## A039311.P18129855235717113945

`∩[A039033(n+1), A382413(n+1)]`
-/

namespace A039311.P18129855235717113945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039311.P18129855235717113945

/-! ## A039311.P11158724172242212285

`A178798(A005993(n))+A043134(n+1)`
-/

namespace A039311.P11158724172242212285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A005993 n).toNat + A043134 (n + 1)

end

end A039311.P11158724172242212285

/-! ## A039311.P15538273487199054022

`A043134(n+1)+A037912(A270598(n))`
-/

namespace A039311.P15538273487199054022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043134 (n + 1) + A037912 (A270598 n).toNat

end

end A039311.P15538273487199054022

/-! ## A039311.P16295501382584042255

`A043914(n+1)-A034329(A034332(n))`
-/

namespace A039311.P16295501382584042255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043914 (n + 1) - A034329 (A034332 n).toNat

end

end A039311.P16295501382584042255

/-!
# A039312: Numbers whose base-7 representation has the same nonzero number of 0's and 5's.

The programs for A039312, there is no canonical definition to state claims against.
-/

/-! ## A039312.P5293734453117707053

`∩[A039034(n+1), A382413(n+1)]`
-/

namespace A039312.P5293734453117707053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039312.P5293734453117707053

/-! ## A039312.P13738418668152995700

`A107846(A014188(n))+A043135(n+1)`
-/

namespace A039312.P13738418668152995700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A014188 n).toNat + A043135 (n + 1)

end

end A039312.P13738418668152995700

/-! ## A039312.P14851793352635692152

`A043135(n+1)+A018789(A102388(n+1))`
-/

namespace A039312.P14851793352635692152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043135 (n + 1) + A018789 (A102388 (n + 1)).toNat

end

end A039312.P14851793352635692152

/-! ## A039312.P9499800309792544334

`A185284(A004139(n+1))+A043135(n+1)`
-/

namespace A039312.P9499800309792544334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A004139 (n + 1)).toNat + A043135 (n + 1)

end

end A039312.P9499800309792544334

/-! ## A039312.P588645655236139076

`A185284(A215848(n+1))+A043135(n+1)`
-/

namespace A039312.P588645655236139076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A215848 (n + 1)).toNat + A043135 (n + 1)

end

end A039312.P588645655236139076

/-!
# A039313: Numbers whose base-7 representation has the same nonzero number of 0's and 6's.

The programs for A039313, there is no canonical definition to state claims against.
-/

/-! ## A039313.P3233702174378373811

`∩[A031482(n+1), A382413(n+1)]`
-/

namespace A039313.P3233702174378373811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031482 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039313.P3233702174378373811

/-! ## A039313.P3996304070207327122

`∩[A031482(n+1), A337141(n+1)]`
-/

namespace A039313.P3996304070207327122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031482 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039313.P3996304070207327122

/-! ## A039313.P7415030619584171769

`A107846(A052912(n))+A043136(n+1)`
-/

namespace A039313.P7415030619584171769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A052912 n).toNat + A043136 (n + 1)

end

end A039313.P7415030619584171769

/-! ## A039313.P15193155413242680220

`A185274(A002865(n))+A043136(n+1)`
-/

namespace A039313.P15193155413242680220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185274 (A002865 n).toNat + A043136 (n + 1)

end

end A039313.P15193155413242680220

/-! ## A039313.P12714467953451551270

`A217096(A105476(n))+A043136(n+1)`
-/

namespace A039313.P12714467953451551270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 (A105476 n).toNat + A043136 (n + 1)

end

end A039313.P12714467953451551270

/-!
# A039318: Numbers whose base-7 representation has the same nonzero number of 1's and 6's.

The programs for A039318, there is no canonical definition to state claims against.
-/

/-! ## A039318.P11190700637673783105

`∩[A039039(n+1), A337141(n+1)]`
-/

namespace A039318.P11190700637673783105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039318.P11190700637673783105

/-!
# A039319: Numbers whose base-7 representation has the same nonzero number of 2's and 3's.

The programs for A039319, there is no canonical definition to state claims against.
-/

/-! ## A039319.P4323001340832247655

`A182973(A001211(2*n+3))-A034350(n+1)`
-/

namespace A039319.P4323001340832247655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182973 (A001211 (2 * n + 3)).toNat - A034350 (n + 1)

end

end A039319.P4323001340832247655

/-!
# A039320: Numbers whose base-7 representation has the same nonzero number of 2's and 4's.

The programs for A039320, there is no canonical definition to state claims against.
-/

/-! ## A039320.P4179565063089295956

`A037466(A039291(n+1))%A117489(3*n+5)`
-/

namespace A039320.P4179565063089295956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037466 (A039291 (n + 1)).toNat) (A117489 (3 * n + 5))

end

end A039320.P4179565063089295956

/-!
# A039321: Numbers whose base-7 representation has the same nonzero number of 2's and 5's.

The programs for A039321, there is no canonical definition to state claims against.
-/

/-! ## A039321.P17528411696808844868

`eq[A111150(A077065(n+1)), A338880(n)]`
-/

namespace A039321.P17528411696808844868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111150 (A077065 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039321.P17528411696808844868

/-!
# A039322: Numbers whose base-7 representation has the same nonzero number of 2's and 6's.

The programs for A039322, there is no canonical definition to state claims against.
-/

/-! ## A039322.P1370537002887883296

`∩[A039043(n+1), A337141(n+1)]`
-/

namespace A039322.P1370537002887883296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039322.P1370537002887883296

/-! ## A039322.P11228555599715238084

`A044479(n+1)-A285189(A322783(n))`
-/

namespace A039322.P11228555599715238084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044479 (n + 1) - A285189 (A322783 n).toNat

end

end A039322.P11228555599715238084

/-!
# A039323: Numbers whose base-7 representation has the same nonzero number of 3's and 4's.

The programs for A039323, there is no canonical definition to state claims against.
-/

/-! ## A039323.P7120923850225294668

`A043146(A292125(n+1))`
-/

namespace A039323.P7120923850225294668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043146 (A292125 (n + 1)).toNat

end

end A039323.P7120923850225294668

/-! ## A039323.P14924998022760827105

`A043146(A331561(n+1))`
-/

namespace A039323.P14924998022760827105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043146 (A331561 (n + 1)).toNat

end

end A039323.P14924998022760827105

/-!
# A039324: Numbers whose base-7 representation has the same nonzero number of 3's and 5's.

The programs for A039324, there is no canonical definition to state claims against.
-/

/-! ## A039324.P13308775539739224676

`A043147(A292125(n+1))`
-/

namespace A039324.P13308775539739224676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043147 (A292125 (n + 1)).toNat

end

end A039324.P13308775539739224676

/-! ## A039324.P13931060187242600124

`A043147(A331561(n+1))`
-/

namespace A039324.P13931060187242600124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043147 (A331561 (n + 1)).toNat

end

end A039324.P13931060187242600124

/-!
# A039325: Numbers whose base-7 representation has the same nonzero number of 3's and 6's.

The programs for A039325, there is no canonical definition to state claims against.
-/

/-! ## A039325.P8590648847620825234

`∩[A039046(n+1), A337141(n+1)]`
-/

namespace A039325.P8590648847620825234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039325.P8590648847620825234

/-! ## A039325.P5982460097312698718

`A043148(A292125(n+1))`
-/

namespace A039325.P5982460097312698718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043148 (A292125 (n + 1)).toNat

end

end A039325.P5982460097312698718

/-!
# A039326: Numbers whose base-7 representation has the same nonzero number of 4's and 5's.

The programs for A039326, there is no canonical definition to state claims against.
-/

/-! ## A039326.P1861631822750784816

`A043149(A000005(5^n))`
-/

namespace A039326.P1861631822750784816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043149 (A000005 (5 ^ n)).toNat

end

end A039326.P1861631822750784816

/-! ## A039326.P15717965989391887483

`A043929(∑[∑[A146953(n)]])`
-/

namespace A039326.P15717965989391887483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146953 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043929 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A039326.P15717965989391887483

/-! ## A039326.P6668129938562872461

`A043149(record[∑[A307044(n)]])`
-/

namespace A039326.P6668129938562872461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307044 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043149 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039326.P6668129938562872461

/-! ## A039326.P11445697914630313343

`A043929(record[∑[A307044(n)]])`
-/

namespace A039326.P11445697914630313343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307044 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043929 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039326.P11445697914630313343

/-!
# A039327: Numbers whose base-7 representation has the same nonzero number of 4's and 6's.

The programs for A039327, there is no canonical definition to state claims against.
-/

/-! ## A039327.P16447778844397445188

`∩[A039048(n+1), A337141(n+1)]`
-/

namespace A039327.P16447778844397445188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039327.P16447778844397445188

/-! ## A039327.P6478511384956134395

`A043150(∑[A290832(n)!])`
-/

namespace A039327.P6478511384956134395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A290832 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043150 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A039327.P6478511384956134395

/-! ## A039327.P1386002281677881139

`A043930(∑[A290832(n)!])`
-/

namespace A039327.P1386002281677881139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A290832 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043930 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A039327.P1386002281677881139

/-! ## A039327.P15742240308272395983

`A043150(∑[∑[A030639(n)]])`
-/

namespace A039327.P15742240308272395983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030639 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043150 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A039327.P15742240308272395983

/-!
# A039328: Numbers whose base-7 representation has the same nonzero number of 5's and 6's.

The programs for A039328, there is no canonical definition to state claims against.
-/

/-! ## A039328.P14874025067181279357

`∩[A039049(n+1), A337141(n+1)]`
-/

namespace A039328.P14874025067181279357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039328.P14874025067181279357

/-! ## A039328.P7336908248526695769

`A043151(∑[A061603(n)])`
-/

namespace A039328.P7336908248526695769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043151 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A039328.P7336908248526695769

/-! ## A039328.P6146411778874814770

`A043931(∑[A061603(n)])`
-/

namespace A039328.P6146411778874814770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043931 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A039328.P6146411778874814770

/-! ## A039328.P12973286564303614683

`A043151(A156136(∑[n]))`
-/

namespace A039328.P12973286564303614683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043151 (A156136 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A039328.P12973286564303614683

/-! ## A039328.P8024596037528909980

`A043151(A173588(∑[n]))`
-/

namespace A039328.P8024596037528909980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043151 (A173588 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A039328.P8024596037528909980

/-!
# A039329: Numbers whose base-8 representation has the same nonzero number of 0's and 1's.

The programs for A039329, there is no canonical definition to state claims against.
-/

/-! ## A039329.P2900913435053223056

`∩[A037377(n+1), A039050(n+1)]`
-/

namespace A039329.P2900913435053223056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039329.P2900913435053223056

/-! ## A039329.P4895459314797199440

`∩[A039050(n+1), A382417(n+1)]`
-/

namespace A039329.P4895459314797199440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039329.P4895459314797199440

/-!
# A039330: Numbers whose base-8 representation has the same nonzero number of 0's and 2's.

The programs for A039330, there is no canonical definition to state claims against.
-/

/-! ## A039330.P6720617520463162463

`∩[A039051(n+1), A382417(n+1)]`
-/

namespace A039330.P6720617520463162463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039330.P6720617520463162463

/-! ## A039330.P3001731349488749180

`A037474(A039309(n+1)^A065941(n))`
-/

namespace A039330.P3001731349488749180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (SequenceMachineLib.roundAway ((A039309 (n + 1) : ℚ) ^ (A065941 n : ℤ))).toNat

end

end A039330.P3001731349488749180

/-!
# A039331: Numbers whose base-8 representation has the same nonzero number of 0's and 3's.

The programs for A039331, there is no canonical definition to state claims against.
-/

/-! ## A039331.P12298963538503151830

`∩[A039052(n+1), A382417(n+1)]`
-/

namespace A039331.P12298963538503151830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039331.P12298963538503151830

/-! ## A039331.P2469267320543649805

`A037467(A045192(n+1)*A290556(n))`
-/

namespace A039331.P2469267320543649805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037467 (A045192 (n + 1) * A290556 n).toNat

end

end A039331.P2469267320543649805

/-! ## A039331.P17998334348920534342

`A037467(A045192(n+1)^A290556(n))`
-/

namespace A039331.P17998334348920534342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037467 (SequenceMachineLib.roundAway ((A045192 (n + 1) : ℚ) ^ (A290556 n : ℤ))).toNat

end

end A039331.P17998334348920534342

/-!
# A039332: Numbers whose base-8 representation has the same nonzero number of 0's and 4's.

The programs for A039332, there is no canonical definition to state claims against.
-/

/-! ## A039332.P8069729601449035015

`∩[A039053(n+1), A382417(n+1)]`
-/

namespace A039332.P8069729601449035015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039332.P8069729601449035015

/-! ## A039332.P13505466920442475762

`A043935(n+1)-A335460(A027423(n))`
-/

namespace A039332.P13505466920442475762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043935 (n + 1) - A335460 (A027423 n).toNat

end

end A039332.P13505466920442475762

/-! ## A039332.P9209739641294227499

`A043935(n+1)-A328499(A252041(n+1))`
-/

namespace A039332.P9209739641294227499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043935 (n + 1) - A328499 (A252041 (n + 1)).toNat

end

end A039332.P9209739641294227499

/-!
# A039333: Numbers whose base-8 representation has the same nonzero number of 0's and 5's.

The programs for A039333, there is no canonical definition to state claims against.
-/

/-! ## A039333.P8326398163200513104

`∩[A039054(n+1), A382417(n+1)]`
-/

namespace A039333.P8326398163200513104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039333.P8326398163200513104

/-! ## A039333.P15787935606136721496

`A037471(A039297(n+1)^A215561(n))`
-/

namespace A039333.P15787935606136721496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (SequenceMachineLib.roundAway ((A039297 (n + 1) : ℚ) ^ (A215561 n : ℤ))).toNat

end

end A039333.P15787935606136721496

/-! ## A039333.P14363709625079659968

`A037471(A039297(n+1)^A330461(n))`
-/

namespace A039333.P14363709625079659968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (SequenceMachineLib.roundAway ((A039297 (n + 1) : ℚ) ^ (A330461 n : ℤ))).toNat

end

end A039333.P14363709625079659968

/-! ## A039333.P199554143611400981

`A043156(n+1)+A011765(A041471(n))`
-/

namespace A039333.P199554143611400981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043156 (n + 1) + A011765 (A041471 n).toNat

end

end A039333.P199554143611400981

/-! ## A039333.P4283826104069726542

`A043156(n+1)+A014083(A056236(n))`
-/

namespace A039333.P4283826104069726542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043156 (n + 1) + A014083 (A056236 n).toNat

end

end A039333.P4283826104069726542

/-!
# A039334: Numbers whose base-8 representation has the same nonzero number of 0's and 6's.

The programs for A039334, there is no canonical definition to state claims against.
-/

/-! ## A039334.P15236174507052775260

`∩[A039055(n+1), A382417(n+1)]`
-/

namespace A039334.P15236174507052775260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039334.P15236174507052775260

/-! ## A039334.P6658489897282918274

`A008834(A006481(n+1))*A037474(A039313(n+1))`
-/

namespace A039334.P6658489897282918274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008834 (A006481 (n + 1)).toNat * A037474 (A039313 (n + 1)).toNat

end

end A039334.P6658489897282918274

/-! ## A039334.P7059556003150631002

`A037474(A039313(n+1))*A349236(A037019(n+1))`
-/

namespace A039334.P7059556003150631002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A039313 (n + 1)).toNat * A349236 (A037019 (n + 1)).toNat

end

end A039334.P7059556003150631002

/-! ## A039334.P18068906053505503963

`A037474(A039313(n+1))+A000007(A052968(n))`
-/

namespace A039334.P18068906053505503963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A039313 (n + 1)).toNat + A000007 (A052968 n).toNat

end

end A039334.P18068906053505503963

/-! ## A039334.P6276692156299177794

`A006519(A002426(n))*A043157(n+1)`
-/

namespace A039334.P6276692156299177794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A002426 n).toNat * A043157 (n + 1)

end

end A039334.P6276692156299177794

/-!
# A039335: Numbers whose base-8 representation has the same nonzero number of 0's and 7's.

The programs for A039335, there is no canonical definition to state claims against.
-/

/-! ## A039335.P17759216446641107435

`∩[A031487(n+1), A337239(n+1)]`
-/

namespace A039335.P17759216446641107435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039335.P17759216446641107435

/-! ## A039335.P9204319031172339102

`or(A043158(n+1), A266502(A281742(n)))`
-/

namespace A039335.P9204319031172339102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043158 (n + 1)) (A266502 (A281742 n).toNat)

end

end A039335.P9204319031172339102

/-! ## A039335.P10026217812051206788

`or(A043158(n+1), A102683(A265646(n+1)))`
-/

namespace A039335.P10026217812051206788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043158 (n + 1)) (A102683 (A265646 (n + 1)).toNat)

end

end A039335.P10026217812051206788

/-! ## A039335.P5534906504261524195

`A266502(A281742(n)+A043158(n+1))+A043158(n+1)`
-/

namespace A039335.P5534906504261524195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266502 (A281742 n + A043158 (n + 1)).toNat + A043158 (n + 1)

end

end A039335.P5534906504261524195

/-! ## A039335.P17689780992787822794

`record[A043158(A195097(n+1))]`
-/

namespace A039335.P17689780992787822794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043158 (A195097 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039335.P17689780992787822794

/-!
# A039341: Numbers whose base-8 representation has the same nonzero number of 1's and 7's.

The programs for A039341, there is no canonical definition to state claims against.
-/

/-! ## A039341.P14168981093069755200

`∩[A039061(n+1), A337239(n+1)]`
-/

namespace A039341.P14168981093069755200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039341.P14168981093069755200

/-! ## A039341.P9986904373721442589

`or(A039340(n+1), A040789(A005967(n+1)))`
-/

namespace A039341.P9986904373721442589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A039340 (n + 1)) (A040789 (A005967 (n + 1)).toNat)

end

end A039341.P9986904373721442589

/-!
# A039342: Numbers whose base-8 representation has the same nonzero number of 2's and 3's.

The programs for A039342, there is no canonical definition to state claims against.
-/

/-! ## A039342.P532170862855940906

`and(A039346(n+1), A043436(A331561(n+1)))`
-/

namespace A039342.P532170862855940906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039346 (n + 1)) (A043436 (A331561 (n + 1)).toNat)

end

end A039342.P532170862855940906

/-!
# A039343: Numbers whose base-8 representation has the same nonzero number of 2's and 4's.

The programs for A039343, there is no canonical definition to state claims against.
-/

/-! ## A039343.P14907594495245349443

`A037467(A039291(n+1)%A321492(3*n+4))`
-/

namespace A039343.P14907594495245349443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037467 (Int.tmod (A039291 (n + 1)) (A321492 (3 * n + 4))).toNat

end

end A039343.P14907594495245349443

/-! ## A039343.P156583297246482035

`A037467(A045282(n+1)%A321492(3*n+4))`
-/

namespace A039343.P156583297246482035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037467 (Int.tmod (A045282 (n + 1)) (A321492 (3 * n + 4))).toNat

end

end A039343.P156583297246482035

/-! ## A039343.P6683922310859644930

`A037474(A039320(n+1)%A000946(n+4))`
-/

namespace A039343.P6683922310859644930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (Int.tmod (A039320 (n + 1)) (A000946 (n + 4))).toNat

end

end A039343.P6683922310859644930

/-! ## A039343.P3141368784209773823

`A037467(A039291(n+1))%A142346(A337572(2*n+1))`
-/

namespace A039343.P3141368784209773823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037467 (A039291 (n + 1)).toNat) (A142346 (A337572 (2 * n + 1)).toNat)

end

end A039343.P3141368784209773823

/-! ## A039343.P3053052174553259985

`A037467(A045282(n+1))%A142346(A337572(2*n+1))`
-/

namespace A039343.P3053052174553259985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037467 (A045282 (n + 1)).toNat) (A142346 (A337572 (2 * n + 1)).toNat)

end

end A039343.P3053052174553259985

/-!
# A039344: Numbers whose base-8 representation has the same nonzero number of 2's and 5's.

The programs for A039344, there is no canonical definition to state claims against.
-/

/-! ## A039344.P14414588374008754921

`eq[6, A295073(A338881(n))]`
-/

namespace A039344.P14414588374008754921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295073 (A338881 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039344.P14414588374008754921

/-! ## A039344.P1190992162556017144

`eq[A003001(A008479(n+1)), A338881(n)]`
-/

namespace A039344.P1190992162556017144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003001 (A008479 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039344.P1190992162556017144

/-!
# A039345: Numbers whose base-8 representation has the same nonzero number of 2's and 6's.

The programs for A039345, there is no canonical definition to state claims against.
-/

/-! ## A039345.P17094527163666278181

`A037474(C(A039322(n+1), A202845(n)))`
-/

namespace A039345.P17094527163666278181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (Nat.choose (A039322 (n + 1)).toNat (A202845 n).toNat)

end

end A039345.P17094527163666278181

/-!
# A039346: Numbers whose base-8 representation has the same nonzero number of 2's and 7's.

The programs for A039346, there is no canonical definition to state claims against.
-/

/-! ## A039346.P3486803091338354017

`∩[A039066(n+1), A337239(n+1)]`
-/

namespace A039346.P3486803091338354017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039346.P3486803091338354017

/-! ## A039346.P11489345693984361659

`or(A039344(n+1)%A136385(n+1), A039345(n+1))`
-/

namespace A039346.P11489345693984361659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A039344 (n + 1)) (A136385 (n + 1))) (A039345 (n + 1))

end

end A039346.P11489345693984361659

/-!
# A039347: Numbers whose base-8 representation has the same nonzero number of 3's and 4's.

The programs for A039347, there is no canonical definition to state claims against.
-/

/-! ## A039347.P2272489626818631965

`A037467(A039292(n+1))+A000007(A041074(n))`
-/

namespace A039347.P2272489626818631965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037467 (A039292 (n + 1)).toNat + A000007 (A041074 n).toNat

end

end A039347.P2272489626818631965

/-! ## A039347.P15903188223747624927

`A037467(A039292(n+1))+A000007(A039292(n+1)²)`
-/

namespace A039347.P15903188223747624927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037467 (A039292 (n + 1)).toNat + A000007 (A039292 (n + 1) ^ 2).toNat

end

end A039347.P15903188223747624927

/-! ## A039347.P16119528016374560887

`A037467(A039292(n+1)%A035125(3*n+1))`
-/

namespace A039347.P16119528016374560887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037467 (Int.tmod (A039292 (n + 1)) (A035125 (3 * n + 1))).toNat

end

end A039347.P16119528016374560887

/-! ## A039347.P3070548461970183042

`A007318(A000217((n+1)²))*A037467(A039292(n+1))`
-/

namespace A039347.P3070548461970183042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 ((n + 1) ^ 2)).toNat * A037467 (A039292 (n + 1)).toNat

end

end A039347.P3070548461970183042

/-! ## A039347.P15807009265614351610

`A185284(A055120(n))+A037467(A039292(n+1))`
-/

namespace A039347.P15807009265614351610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A055120 n).toNat + A037467 (A039292 (n + 1)).toNat

end

end A039347.P15807009265614351610

/-!
# A039348: Numbers whose base-8 representation has the same nonzero number of 3's and 5's.

The programs for A039348, there is no canonical definition to state claims against.
-/

/-! ## A039348.P2134500274075588292

`A043171(A292125(n+1))`
-/

namespace A039348.P2134500274075588292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043171 (A292125 (n + 1)).toNat

end

end A039348.P2134500274075588292

/-! ## A039348.P1587328489010604712

`A043171(A331561(n+1))`
-/

namespace A039348.P1587328489010604712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043171 (A331561 (n + 1)).toNat

end

end A039348.P1587328489010604712

/-!
# A039349: Numbers whose base-8 representation has the same nonzero number of 3's and 6's.

The programs for A039349, there is no canonical definition to state claims against.
-/

/-! ## A039349.P3320771510792079604

`A043172(A292125(n+1))`
-/

namespace A039349.P3320771510792079604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043172 (A292125 (n + 1)).toNat

end

end A039349.P3320771510792079604

/-! ## A039349.P5097961804150130408

`A043172(A331561(n+1))`
-/

namespace A039349.P5097961804150130408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043172 (A331561 (n + 1)).toNat

end

end A039349.P5097961804150130408

/-!
# A039350: Numbers whose base-8 representation has the same nonzero number of 3's and 7's.

The programs for A039350, there is no canonical definition to state claims against.
-/

/-! ## A039350.P16163948453705882553

`∩[A039070(n+1), A337239(n+1)]`
-/

namespace A039350.P16163948453705882553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039350.P16163948453705882553

/-! ## A039350.P7325203323437915168

`∩[A039070(n+1), A103543(n+1)]`
-/

namespace A039350.P7325203323437915168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039350.P7325203323437915168

/-!
# A039351: Numbers whose base-8 representation has the same nonzero number of 4's and 5's.

The programs for A039351, there is no canonical definition to state claims against.
-/

/-! ## A039351.P18130266629557666897

`A037474(A039326(n+1)^A147454(n+1))`
-/

namespace A039351.P18130266629557666897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (SequenceMachineLib.roundAway ((A039326 (n + 1) : ℚ) ^ (A147454 (n + 1) : ℤ))).toNat

end

end A039351.P18130266629557666897

/-! ## A039351.P4185271262944491467

`A037474(C(A039326(n+1), A147454(n+1)))`
-/

namespace A039351.P4185271262944491467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (Nat.choose (A039326 (n + 1)).toNat (A147454 (n + 1)).toNat)

end

end A039351.P4185271262944491467

/-! ## A039351.P15505845002096396439

`A037474(A147454(n+1)²*A039326(n+1))`
-/

namespace A039351.P15505845002096396439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A147454 (n + 1) ^ 2 * A039326 (n + 1)).toNat

end

end A039351.P15505845002096396439

/-! ## A039351.P6767867202435402761

`A037474(A039326(n+1))/A147454(A147454(n+1)²)`
-/

namespace A039351.P6767867202435402761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037474 (A039326 (n + 1)).toNat : ℚ) / (A147454 (A147454 (n + 1) ^ 2).toNat : ℚ)

end

end A039351.P6767867202435402761

/-! ## A039351.P14032398100974126457

`A037474(A039326(n+1)*A147454(n+1)*A147454(n+1))`
-/

namespace A039351.P14032398100974126457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A039326 (n + 1) * A147454 (n + 1) * A147454 (n + 1)).toNat

end

end A039351.P14032398100974126457

/-!
# A039352: Numbers whose base-8 representation has the same nonzero number of 4's and 6's.

The programs for A039352, there is no canonical definition to state claims against.
-/

/-! ## A039352.P12496007770634615207

`A037474(C(A039327(n+1), A334184(n+1)))`
-/

namespace A039352.P12496007770634615207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (Nat.choose (A039327 (n + 1)).toNat (A334184 (n + 1)).toNat)

end

end A039352.P12496007770634615207

/-! ## A039352.P15490385481097056362

`A109680(A043175(n+1))`
-/

namespace A039352.P15490385481097056362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A043175 (n + 1)).toNat

end

end A039352.P15490385481097056362

/-! ## A039352.P12986757518278550939

`A109680(A043955(n+1))`
-/

namespace A039352.P12986757518278550939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A043955 (n + 1)).toNat

end

end A039352.P12986757518278550939

/-! ## A039352.P2271452836885454092

`A056926(A043175(n+1)²)`
-/

namespace A039352.P2271452836885454092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A043175 (n + 1) ^ 2).toNat

end

end A039352.P2271452836885454092

/-!
# A039353: Numbers whose base-8 representation has the same nonzero number of 4's and 7's.

The programs for A039353, there is no canonical definition to state claims against.
-/

/-! ## A039353.P15646889651392250835

`∩[A039073(n+1), A337239(n+1)]`
-/

namespace A039353.P15646889651392250835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039353.P15646889651392250835

/-! ## A039353.P13704115173046985613

`A043956(A000005(5^n))`
-/

namespace A039353.P13704115173046985613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043956 (A000005 (5 ^ n)).toNat

end

end A039353.P13704115173046985613

/-! ## A039353.P10166568210532639020

`A043176(∑[A269948(n)!])`
-/

namespace A039353.P10166568210532639020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A269948 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043176 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A039353.P10166568210532639020

/-! ## A039353.P11397184266988288506

`A056926(A043956(n+1)²)`
-/

namespace A039353.P11397184266988288506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A043956 (n + 1) ^ 2).toNat

end

end A039353.P11397184266988288506

/-!
# A039354: Numbers whose base-8 representation has the same nonzero number of 5's and 6's.

The programs for A039354, there is no canonical definition to state claims against.
-/

/-! ## A039354.P2284317278526806558

`A043177(∑[A061603(n)])`
-/

namespace A039354.P2284317278526806558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043177 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A039354.P2284317278526806558

/-! ## A039354.P11225645739312382263

`A043177(A062399(n+1))`
-/

namespace A039354.P11225645739312382263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043177 (A062399 (n + 1)).toNat

end

end A039354.P11225645739312382263

/-! ## A039354.P11774767804499794283

`A043177(A087051(n)+1)`
-/

namespace A039354.P11774767804499794283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043177 (A087051 n + 1).toNat

end

end A039354.P11774767804499794283

/-! ## A039354.P16760232828505307143

`A043957(A087051(n)+1)`
-/

namespace A039354.P16760232828505307143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043957 (A087051 n + 1).toNat

end

end A039354.P16760232828505307143

/-! ## A039354.P6033547990866183190

`A043177(A351870(n+1))`
-/

namespace A039354.P6033547990866183190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043177 (A351870 (n + 1)).toNat

end

end A039354.P6033547990866183190

/-!
# A039355: Numbers whose base-8 representation has the same nonzero number of 5's and 7's.

The programs for A039355, there is no canonical definition to state claims against.
-/

/-! ## A039355.P13279505840797558081

`∩[A039075(n+1), A337239(n+1)]`
-/

namespace A039355.P13279505840797558081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039355.P13279505840797558081

/-! ## A039355.P3530412426899356188

`A043178(∑[(n-∑{digits}[n, #])!])`
-/

namespace A039355.P3530412426899356188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043178 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A039355.P3530412426899356188

/-! ## A039355.P9031243827302098146

`A043178(n+1)^(n-∑{digits}[n, #])!`
-/

namespace A039355.P9031243827302098146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043178 (n + 1) ^ Nat.factorial ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)).toNat

end

end A039355.P9031243827302098146

/-! ## A039355.P5484342951746098119

`A043178(A143797(∑[n]))`
-/

namespace A039355.P5484342951746098119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043178 (A143797 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A039355.P5484342951746098119

/-! ## A039355.P12397606108869123357

`A043178(A062399(n+1))`
-/

namespace A039355.P12397606108869123357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043178 (A062399 (n + 1)).toNat

end

end A039355.P12397606108869123357

/-!
# A039356: Numbers whose base-8 representation has the same nonzero number of 6's and 7's.

The programs for A039356, there is no canonical definition to state claims against.
-/

/-! ## A039356.P15599157888423147999

`∩[A039076(n+1), A337239(n+1)]`
-/

namespace A039356.P15599157888423147999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039356.P15599157888423147999

/-! ## A039356.P8134686522128082433

`A043959(C(A043317(n+1), n))`
-/

namespace A039356.P8134686522128082433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (Nat.choose (A043317 (n + 1)).toNat n)

end

end A039356.P8134686522128082433

/-! ## A039356.P15878269519913012620

`A043959(C(A277861(n+1), n))`
-/

namespace A039356.P15878269519913012620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (Nat.choose (A277861 (n + 1)).toNat n)

end

end A039356.P15878269519913012620

/-! ## A039356.P1686081885673303186

`∑{e}[A000244(n+1), A043179(#)]`
-/

namespace A039356.P1686081885673303186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A043179 (Nat.factorization (f1 n).natAbs p)

end

end A039356.P1686081885673303186

/-! ## A039356.P16059512454537761096

`A043959(n+1)+A010815(A344614(n+4))`
-/

namespace A039356.P16059512454537761096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043959 (n + 1) + A010815 (A344614 (n + 4)).toNat

end

end A039356.P16059512454537761096

/-!
# A039357: Numbers whose base-9 representation has the same nonzero number of 0's and 1's.

The programs for A039357, there is no canonical definition to state claims against.
-/

/-! ## A039357.P17681672598950449440

`∩[A037378(n+1), A039077(n+1)]`
-/

namespace A039357.P17681672598950449440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039357.P17681672598950449440

/-! ## A039357.P2411402417384827347

`∩[A039077(n+1), A382418(n+1)]`
-/

namespace A039357.P2411402417384827347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039357.P2411402417384827347

/-! ## A039357.P5521679405099653046

`A043632(n+1)%A014754(A088211(n))`
-/

namespace A039357.P5521679405099653046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043632 (n + 1)) (A014754 (A088211 n).toNat)

end

end A039357.P5521679405099653046

/-! ## A039357.P12215363102343039006

`lt[A102487(n+1), A137564(A007095(n))]`
-/

namespace A039357.P12215363102343039006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039357.P12215363102343039006

/-! ## A039357.P4958150954953930554

`A043632(A032555(n+1))%A014754(n+1)`
-/

namespace A039357.P4958150954953930554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043632 (A032555 (n + 1)).toNat) (A014754 (n + 1))

end

end A039357.P4958150954953930554

/-!
# A039358: Numbers whose base-9 representation has the same nonzero number of 0's and 2's.

The programs for A039358, there is no canonical definition to state claims against.
-/

/-! ## A039358.P3546899279009151770

`∩[A039078(n+1), A382418(n+1)]`
-/

namespace A039358.P3546899279009151770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039358.P3546899279009151770

/-! ## A039358.P2991549984621536918

`A037477(A039330(n+1)^A136400(n+1))`
-/

namespace A039358.P2991549984621536918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A039330 (n + 1) : ℚ) ^ (A136400 (n + 1) : ℤ))).toNat

end

end A039358.P2991549984621536918

/-! ## A039358.P3910701236293370283

`A037477(C(A039330(n+1), A136400(n+1)))`
-/

namespace A039358.P3910701236293370283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Nat.choose (A039330 (n + 1)).toNat (A136400 (n + 1)).toNat)

end

end A039358.P3910701236293370283

/-! ## A039358.P17364004403378797757

`A037475(A039309(n+1)^A065941(n))`
-/

namespace A039358.P17364004403378797757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (SequenceMachineLib.roundAway ((A039309 (n + 1) : ℚ) ^ (A065941 n : ℤ))).toNat

end

end A039358.P17364004403378797757

/-!
# A039359: Numbers whose base-9 representation has the same nonzero number of 0's and 3's.

The programs for A039359, there is no canonical definition to state claims against.
-/

/-! ## A039359.P14787600042419848201

`∩[A039079(n+1), A382418(n+1)]`
-/

namespace A039359.P14787600042419848201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039359.P14787600042419848201

/-! ## A039359.P5507881360532914969

`A102683(A001095(n))+A037472(A039295(n+1))`
-/

namespace A039359.P5507881360532914969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A001095 n).toNat + A037472 (A039295 (n + 1)).toNat

end

end A039359.P5507881360532914969

/-! ## A039359.P9270947194846538454

`A037472(A039295(n+1)^Δ[A007095(n)])`
-/

namespace A039359.P9270947194846538454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (SequenceMachineLib.roundAway ((A039295 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A039359.P9270947194846538454

/-!
# A039360: Numbers whose base-9 representation has the same nonzero number of 0's and 4's.

The programs for A039360, there is no canonical definition to state claims against.
-/

/-! ## A039360.P2956990518670682765

`∩[A039080(n+1), A382418(n+1)]`
-/

namespace A039360.P2956990518670682765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039360.P2956990518670682765

/-! ## A039360.P14873534394292217606

`A043183(n+1)+A011731(A012134(n))`
-/

namespace A039360.P14873534394292217606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043183 (n + 1) + A011731 (A012134 n).toNat

end

end A039360.P14873534394292217606

/-! ## A039360.P7341953986840919981

`A055641(A000088(n))+A043183(n+1)`
-/

namespace A039360.P7341953986840919981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A000088 n).toNat + A043183 (n + 1)

end

end A039360.P7341953986840919981

/-! ## A039360.P419351991101663321

`A043183(n+1)+A011731(A161131(n))`
-/

namespace A039360.P419351991101663321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043183 (n + 1) + A011731 (A161131 n).toNat

end

end A039360.P419351991101663321

/-!
# A039361: Numbers whose base-9 representation has the same nonzero number of 0's and 5's.

The programs for A039361, there is no canonical definition to state claims against.
-/

/-! ## A039361.P10816636654860119905

`A037472(A039297(n+1)^A215561(n))`
-/

namespace A039361.P10816636654860119905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (SequenceMachineLib.roundAway ((A039297 (n + 1) : ℚ) ^ (A215561 n : ℤ))).toNat

end

end A039361.P10816636654860119905

/-! ## A039361.P17018595615493939389

`A037477(A039333(n+1)^A215561(n))`
-/

namespace A039361.P17018595615493939389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A039333 (n + 1) : ℚ) ^ (A215561 n : ℤ))).toNat

end

end A039361.P17018595615493939389

/-! ## A039361.P7242284695098145969

`A043184(n+1)+A014083(A056236(n))`
-/

namespace A039361.P7242284695098145969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043184 (n + 1) + A014083 (A056236 n).toNat

end

end A039361.P7242284695098145969

/-! ## A039361.P15812308317997828581

`A170980(A267266(n+1))+A043184(n+1)`
-/

namespace A039361.P15812308317997828581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170980 (A267266 (n + 1)).toNat + A043184 (n + 1)

end

end A039361.P15812308317997828581

/-! ## A039361.P8026140568253523131

`A043184(A032555(n+1))`
-/

namespace A039361.P8026140568253523131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043184 (A032555 (n + 1)).toNat

end

end A039361.P8026140568253523131

/-!
# A039362: Numbers whose base-9 representation has the same nonzero number of 0's and 6's.

The programs for A039362, there is no canonical definition to state claims against.
-/

/-! ## A039362.P17827203002622044310

`∩[A382418(n+1), A039082(n+1)]`
-/

namespace A039362.P17827203002622044310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039362.P17827203002622044310

/-! ## A039362.P17677744628010808384

`or(A043185(n+1), A102683(A146541(n)))`
-/

namespace A039362.P17677744628010808384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043185 (n + 1)) (A102683 (A146541 n).toNat)

end

end A039362.P17677744628010808384

/-! ## A039362.P11696370223518810473

`or(A043185(n+1), A210715(A049872(n)))`
-/

namespace A039362.P11696370223518810473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043185 (n + 1)) (A210715 (A049872 n).toNat)

end

end A039362.P11696370223518810473

/-! ## A039362.P3180797376346252130

`or(A043185(n+1), A188472(A188460(n)))`
-/

namespace A039362.P3180797376346252130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043185 (n + 1)) (A188472 (A188460 n).toNat)

end

end A039362.P3180797376346252130

/-! ## A039362.P11744089505823981521

`A185284(∑[A064770(n)])+A043185(n+1)`
-/

namespace A039362.P11744089505823981521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A043185 (n + 1)

end

end A039362.P11744089505823981521

/-!
# A039363: Numbers whose base-9 representation has the same nonzero number of 0's and 7's.

The programs for A039363, there is no canonical definition to state claims against.
-/

/-! ## A039363.P9701048428928418224

`∩[A382418(n+1), A039083(n+1)]`
-/

namespace A039363.P9701048428928418224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039363.P9701048428928418224

/-! ## A039363.P4361660280837809080

`A037477(A039335(n+1))%A152181(n+9)`
-/

namespace A039363.P4361660280837809080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037477 (A039335 (n + 1)).toNat) (A152181 (n + 9))

end

end A039363.P4361660280837809080

/-! ## A039363.P2233105566505895515

`A037477(A039335(n+1))+A000007(A087814(n))`
-/

namespace A039363.P2233105566505895515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A039335 (n + 1)).toNat + A000007 (A087814 n).toNat

end

end A039363.P2233105566505895515

/-! ## A039363.P14149031984784217347

`A037477(A039335(n+1))+A000038(A164844(n))`
-/

namespace A039363.P14149031984784217347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A039335 (n + 1)).toNat + A000038 (A164844 n).toNat

end

end A039363.P14149031984784217347

/-! ## A039363.P9912624571932150992

`A037477(A039335(n+1))%A146360(A003410(n))`
-/

namespace A039363.P9912624571932150992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037477 (A039335 (n + 1)).toNat) (A146360 (A003410 n).toNat)

end

end A039363.P9912624571932150992

/-!
# A039364: Numbers whose base-9 representation has the same nonzero number of 0's and 8's.

The programs for A039364, there is no canonical definition to state claims against.
-/

/-! ## A039364.P16497444811894778351

`A185284(A022819(n))+A043187(n+1)`
-/

namespace A039364.P16497444811894778351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A022819 n).toNat + A043187 (n + 1)

end

end A039364.P16497444811894778351

/-! ## A039364.P7008890412449041272

`A185284(A060637(n))+A043187(n+1)`
-/

namespace A039364.P7008890412449041272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A060637 n).toNat + A043187 (n + 1)

end

end A039364.P7008890412449041272

/-! ## A039364.P4683952122085718599

`A043187(n+1)+A025469(A293025(n))`
-/

namespace A039364.P4683952122085718599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043187 (n + 1) + A025469 (A293025 n).toNat

end

end A039364.P4683952122085718599

/-! ## A039364.P7098231262028526563

`A072401(A089098(n+1))+A043187(n+1)`
-/

namespace A039364.P7098231262028526563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 (A089098 (n + 1)).toNat + A043187 (n + 1)

end

end A039364.P7098231262028526563

/-! ## A039364.P16282725468995064957

`A185274(A225005(n+1))+A043187(n+1)`
-/

namespace A039364.P16282725468995064957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185274 (A225005 (n + 1)).toNat + A043187 (n + 1)

end

end A039364.P16282725468995064957

/-!
# A039365: Numbers whose base-9 representation has the same nonzero number of 1's and 2's.

The programs for A039365, there is no canonical definition to state claims against.
-/

/-! ## A039365.P6226651944191929319

`A037472(A039298(n+1)^A229345(n))`
-/

namespace A039365.P6226651944191929319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (SequenceMachineLib.roundAway ((A039298 (n + 1) : ℚ) ^ (A229345 n : ℤ))).toNat

end

end A039365.P6226651944191929319

/-!
# A039366: Numbers whose base-9 representation has the same nonzero number of 1's and 3's.

The programs for A039366, there is no canonical definition to state claims against.
-/

/-! ## A039366.P18046698692534818824

`A037472(A039299(n+1)%A236820(n+1))`
-/

namespace A039366.P18046698692534818824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (Int.tmod (A039299 (n + 1)) (A236820 (n + 1))).toNat

end

end A039366.P18046698692534818824

/-!
# A039367: Numbers whose base-9 representation has the same nonzero number of 1's and 4's.

The programs for A039367, there is no canonical definition to state claims against.
-/

/-! ## A039367.P3209038818245482265

`A037475(A039316(n+1)^A147411(n+1))`
-/

namespace A039367.P3209038818245482265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (SequenceMachineLib.roundAway ((A039316 (n + 1) : ℚ) ^ (A147411 (n + 1) : ℤ))).toNat

end

end A039367.P3209038818245482265

/-! ## A039367.P7399800286290757204

`A037475(A147411(n+1)²²*A039316(n+1))`
-/

namespace A039367.P7399800286290757204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 ((A147411 (n + 1) ^ 2) ^ 2 * A039316 (n + 1)).toNat

end

end A039367.P7399800286290757204

/-!
# A039369: Numbers whose base-9 representation has the same nonzero number of 1's and 6's.

The programs for A039369, there is no canonical definition to state claims against.
-/

/-! ## A039369.P16188080270977070360

`A037477(A039340(n+1)^A261494(n))`
-/

namespace A039369.P16188080270977070360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A039340 (n + 1) : ℚ) ^ (A261494 n : ℤ))).toNat

end

end A039369.P16188080270977070360

/-! ## A039369.P11894805139203078872

`A037477(A039340(n+1)^A130580(n))`
-/

namespace A039369.P11894805139203078872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A039340 (n + 1) : ℚ) ^ (A130580 n : ℤ))).toNat

end

end A039369.P11894805139203078872

/-!
# A039370: Numbers whose base-9 representation has the same nonzero number of 1's and 7's.

The programs for A039370, there is no canonical definition to state claims against.
-/

/-! ## A039370.P5976894856064823629

`A054402(n+1)-A325328(A326360(n))`
-/

namespace A039370.P5976894856064823629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054402 (n + 1) - A325328 (A326360 n).toNat

end

end A039370.P5976894856064823629

/-!
# A039371: Numbers whose base-9 representation has the same nonzero number of 1's and 8's.

The programs for A039371, there is no canonical definition to state claims against.
-/

/-! ## A039371.P5564617526220960315

`∩[A039090(n+1), A338090(n+1)]`
-/

namespace A039371.P5564617526220960315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039371.P5564617526220960315

/-!
# A039372: Numbers whose base-9 representation has the same nonzero number of 2's and 3's.

The programs for A039372, there is no canonical definition to state claims against.
-/

/-! ## A039372.P5987609314828951324

`A037477(A039342(n+1)^A245501(n))`
-/

namespace A039372.P5987609314828951324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A039342 (n + 1) : ℚ) ^ (A245501 n : ℤ))).toNat

end

end A039372.P5987609314828951324

/-! ## A039372.P17203149074506715365

`A037477(A039342(n+1)^A295679(n))`
-/

namespace A039372.P17203149074506715365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A039342 (n + 1) : ℚ) ^ (A295679 n : ℤ))).toNat

end

end A039372.P17203149074506715365

/-! ## A039372.P6022419587616945709

`A037477(C(A039342(n+1), A245501(n)))`
-/

namespace A039372.P6022419587616945709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Nat.choose (A039342 (n + 1)).toNat (A245501 n).toNat)

end

end A039372.P6022419587616945709

/-! ## A039372.P14442241706398588185

`A037477(C(A039342(n+1), A295679(n)))`
-/

namespace A039372.P14442241706398588185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Nat.choose (A039342 (n + 1)).toNat (A295679 n).toNat)

end

end A039372.P14442241706398588185

/-!
# A039373: Numbers whose base-9 representation has the same nonzero number of 2's and 4's.

The programs for A039373, there is no canonical definition to state claims against.
-/

/-! ## A039373.P13778099840534305886

`A037475(A039320(n+1)%A166607(3*n+4))`
-/

namespace A039373.P13778099840534305886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (Int.tmod (A039320 (n + 1)) (A166607 (3 * n + 4))).toNat

end

end A039373.P13778099840534305886

/-! ## A039373.P907111737834214438

`A037475(A039320(n+1)%A000946(n+4))`
-/

namespace A039373.P907111737834214438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (Int.tmod (A039320 (n + 1)) (A000946 (n + 4))).toNat

end

end A039373.P907111737834214438

/-! ## A039373.P15835714084714198129

`A037468(A039291(n+1))%A142346(A337572(2*n+1))`
-/

namespace A039373.P15835714084714198129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037468 (A039291 (n + 1)).toNat) (A142346 (A337572 (2 * n + 1)).toNat)

end

end A039373.P15835714084714198129

/-! ## A039373.P11535873410174232470

`A037468(A045282(n+1))%A142346(A337572(2*n+1))`
-/

namespace A039373.P11535873410174232470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037468 (A045282 (n + 1)).toNat) (A142346 (A337572 (2 * n + 1)).toNat)

end

end A039373.P11535873410174232470

/-!
# A039374: Numbers whose base-9 representation has the same nonzero number of 2's and 5's.

The programs for A039374, there is no canonical definition to state claims against.
-/

/-! ## A039374.P8733847389489040945

`A037475(A039321(n+1)%A298428(n+1))`
-/

namespace A039374.P8733847389489040945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (Int.tmod (A039321 (n + 1)) (A298428 (n + 1))).toNat

end

end A039374.P8733847389489040945

/-! ## A039374.P3535994436199360542

`A037477(A039344(n+1)^A136400(n+2))`
-/

namespace A039374.P3535994436199360542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A039344 (n + 1) : ℚ) ^ (A136400 (n + 2) : ℤ))).toNat

end

end A039374.P3535994436199360542

/-! ## A039374.P9989393370463113594

`A037475(A039321(n+1))%A099711(n+4)`
-/

namespace A039374.P9989393370463113594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037475 (A039321 (n + 1)).toNat) (A099711 (n + 4))

end

end A039374.P9989393370463113594

/-!
# A039375: Numbers whose base-9 representation has the same nonzero number of 2's and 6's.

The programs for A039375, there is no canonical definition to state claims against.
-/

/-! ## A039375.P10872570204817436436

`A037477(A039345(n+1)^A227655(n))`
-/

namespace A039375.P10872570204817436436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A039345 (n + 1) : ℚ) ^ (A227655 n : ℤ))).toNat

end

end A039375.P10872570204817436436

/-! ## A039375.P7629261661409091357

`A037477(C(A039345(n+1), A227655(n)))`
-/

namespace A039375.P7629261661409091357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Nat.choose (A039345 (n + 1)).toNat (A227655 n).toNat)

end

end A039375.P7629261661409091357

/-!
# A039376: Numbers whose base-9 representation has the same nonzero number of 2's and 7's.

The programs for A039376, there is no canonical definition to state claims against.
-/

/-! ## A039376.P5834348896004368819

`eq[2, A349812(A338882(n))]`
-/

namespace A039376.P5834348896004368819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349812 (A338882 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039376.P5834348896004368819

/-! ## A039376.P16361181099486272117

`A037474(C(A039345(n+1), A202845(n)))`
-/

namespace A039376.P16361181099486272117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (Nat.choose (A039345 (n + 1)).toNat (A202845 n).toNat)

end

end A039376.P16361181099486272117

/-!
# A039377: Numbers whose base-9 representation has the same nonzero number of 2's and 8's.

The programs for A039377, there is no canonical definition to state claims against.
-/

/-! ## A039377.P13723842182970704885

`∩[A039096(n+1), A338090(n+1)]`
-/

namespace A039377.P13723842182970704885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039377.P13723842182970704885

/-! ## A039377.P17665069570631012045

`A028903(A039464(n+1)^A185341(n+1))`
-/

namespace A039377.P17665069570631012045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (SequenceMachineLib.roundAway ((A039464 (n + 1) : ℚ) ^ (A185341 (n + 1) : ℤ))).toNat

end

end A039377.P17665069570631012045

/-! ## A039377.P1236737933993094032

`A028903(A185341(n+1)²²*A039464(n+1))`
-/

namespace A039377.P1236737933993094032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 ((A185341 (n + 1) ^ 2) ^ 2 * A039464 (n + 1)).toNat

end

end A039377.P1236737933993094032

/-!
# A039378: Numbers whose base-9 representation has the same nonzero number of 3's and 4's.

The programs for A039378, there is no canonical definition to state claims against.
-/

/-! ## A039378.P12785095424357737633

`A037477(or(A039347(n+1), A172543(n+1)))`
-/

namespace A039378.P12785095424357737633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Int.lor (A039347 (n + 1)) (A172543 (n + 1))).toNat

end

end A039378.P12785095424357737633

/-! ## A039378.P10042532369312182683

`A037477(Δ[A004874(n+1)]*A039347(n+1))`
-/

namespace A039378.P10042532369312182683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 ((f1 (n + 1) - f1 n) * A039347 (n + 1)).toNat

end

end A039378.P10042532369312182683

/-! ## A039378.P15430267231152655821

`A037477(or(A039347(n+1), A185284(3*n+2)))`
-/

namespace A039378.P15430267231152655821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Int.lor (A039347 (n + 1)) (A185284 (3 * n + 2))).toNat

end

end A039378.P15430267231152655821

/-! ## A039378.P12098166539258736311

`A037477(A039347(n+1))+A000007(A041074(n))`
-/

namespace A039378.P12098166539258736311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A039347 (n + 1)).toNat + A000007 (A041074 n).toNat

end

end A039378.P12098166539258736311

/-! ## A039378.P16073744210110283065

`A037468(A039292(n+1)%A035125(3*n+1))`
-/

namespace A039378.P16073744210110283065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 (Int.tmod (A039292 (n + 1)) (A035125 (3 * n + 1))).toNat

end

end A039378.P16073744210110283065

/-!
# A039379: Numbers whose base-9 representation has the same nonzero number of 3's and 5's.

The programs for A039379, there is no canonical definition to state claims against.
-/

/-! ## A039379.P6876173487631623318

`A037477(A039348(n+1)%A086521(2*(n+3)))`
-/

namespace A039379.P6876173487631623318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Int.tmod (A039348 (n + 1)) (A086521 (2 * (n + 3)))).toNat

end

end A039379.P6876173487631623318

/-! ## A039379.P1755502236711299437

`A037477(A039348(n+1)^A034851(n))`
-/

namespace A039379.P1755502236711299437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A039348 (n + 1) : ℚ) ^ (A034851 n : ℤ))).toNat

end

end A039379.P1755502236711299437

/-!
# A039380: Numbers whose base-9 representation has the same nonzero number of 3's and 6's.

The programs for A039380, there is no canonical definition to state claims against.
-/

/-! ## A039380.P10748568741889698599

`A037477(A039349(n+1)%A179170(n+1))`
-/

namespace A039380.P10748568741889698599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Int.tmod (A039349 (n + 1)) (A179170 (n + 1))).toNat

end

end A039380.P10748568741889698599

/-! ## A039380.P8976567405309728950

`A037477(A039349(n+1))%A126094(n+4)`
-/

namespace A039380.P8976567405309728950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037477 (A039349 (n + 1)).toNat) (A126094 (n + 4))

end

end A039380.P8976567405309728950

/-! ## A039380.P9166773255033967638

`A037477(A039349(n+1)^A288638(n))`
-/

namespace A039380.P9166773255033967638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A039349 (n + 1) : ℚ) ^ (A288638 n : ℤ))).toNat

end

end A039380.P9166773255033967638

/-! ## A039380.P12539002174824638117

`A037477(A039349(n+1)^Δ[A004728(n)])`
-/

namespace A039380.P12539002174824638117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A039349 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A039380.P12539002174824638117

/-!
# A039381: Numbers whose base-9 representation has the same nonzero number of 3's and 7's.

The programs for A039381, there is no canonical definition to state claims against.
-/

/-! ## A039381.P9003710473611129429

`A037477(A039350(n+1)^A054576(2*n+1))`
-/

namespace A039381.P9003710473611129429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A039350 (n + 1) : ℚ) ^ (A054576 (2 * n + 1) : ℤ))).toNat

end

end A039381.P9003710473611129429

/-! ## A039381.P7531812836414667569

`A037477(A039350(n+1)^A080868(n))`
-/

namespace A039381.P7531812836414667569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A039350 (n + 1) : ℚ) ^ (A080868 n : ℤ))).toNat

end

end A039381.P7531812836414667569

/-! ## A039381.P14542313301526471553

`A037477(A039350(n+1)^A054576(n+1))-A102683(n)`
-/

namespace A039381.P14542313301526471553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A039350 (n + 1) : ℚ) ^ (A054576 (n + 1) : ℤ))).toNat - A102683 n

end

end A039381.P14542313301526471553

/-!
# A039382: Numbers whose base-9 representation has the same nonzero number of 3's and 8's.

The programs for A039382, there is no canonical definition to state claims against.
-/

/-! ## A039382.P13100308964200286894

`∩[A039101(n+1), A338090(n+1)]`
-/

namespace A039382.P13100308964200286894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039382.P13100308964200286894

/-! ## A039382.P7053163161868677006

`A043205(A292125(n+1))`
-/

namespace A039382.P7053163161868677006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043205 (A292125 (n + 1)).toNat

end

end A039382.P7053163161868677006

/-!
# A039383: Numbers whose base-9 representation has the same nonzero number of 4's and 5's.

The programs for A039383, there is no canonical definition to state claims against.
-/

/-! ## A039383.P18137157999076142980

`A037477(A039351(n+1))^A146683(A250207(n+1))`
-/

namespace A039383.P18137157999076142980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037477 (A039351 (n + 1)).toNat : ℚ) ^ (A146683 (A250207 (n + 1)).toNat : ℤ)

end

end A039383.P18137157999076142980

/-! ## A039383.P3268136605798774785

`A037475(A039326(n+1)^A275076(n))`
-/

namespace A039383.P3268136605798774785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (SequenceMachineLib.roundAway ((A039326 (n + 1) : ℚ) ^ (A275076 n : ℤ))).toNat

end

end A039383.P3268136605798774785

/-! ## A039383.P2203708766945184647

`A037477(A039351(n+1)^A275076(n))`
-/

namespace A039383.P2203708766945184647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A039351 (n + 1) : ℚ) ^ (A275076 n : ℤ))).toNat

end

end A039383.P2203708766945184647

/-! ## A039383.P4462482588030932611

`A037477(A136400(n)!*A039351(n+1))`
-/

namespace A039383.P4462482588030932611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 ((Nat.factorial (A136400 n).toNat : ℤ) * A039351 (n + 1)).toNat

end

end A039383.P4462482588030932611

/-! ## A039383.P8082660058752102361

`A037477(A039351(n+1)^A136400(n)!)`
-/

namespace A039383.P8082660058752102361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A039351 (n + 1) ^ Nat.factorial (A136400 n).toNat).toNat

end

end A039383.P8082660058752102361

/-!
# A039384: Numbers whose base-9 representation has the same nonzero number of 4's and 6's.

The programs for A039384, there is no canonical definition to state claims against.
-/

/-! ## A039384.P14596631830746793186

`A037475(C(A039327(n+1), A334184(n+1)))`
-/

namespace A039384.P14596631830746793186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (Nat.choose (A039327 (n + 1)).toNat (A334184 (n + 1)).toNat)

end

end A039384.P14596631830746793186

/-! ## A039384.P9899274041109131096

`A043987(n+1)%p?[(n+1)^4-n]`
-/

namespace A039384.P9899274041109131096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043987 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A039384.P9899274041109131096

/-! ## A039384.P16421401411335357066

`A043987(∑[A037957(n)!])`
-/

namespace A039384.P16421401411335357066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A037957 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043987 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A039384.P16421401411335357066

/-! ## A039384.P15549033248165272359

`A043207(∑[A186754(n)²!])`
-/

namespace A039384.P15549033248165272359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A186754 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043207 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A039384.P15549033248165272359

/-!
# A039385: Numbers whose base-9 representation has the same nonzero number of 4's and 7's.

The programs for A039385, there is no canonical definition to state claims against.
-/

/-! ## A039385.P5615674423247240437

`A085701(A043208(n+1))`
-/

namespace A039385.P5615674423247240437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085701 (A043208 (n + 1)).toNat

end

end A039385.P5615674423247240437

/-! ## A039385.P9645652391040086782

`A085701(A043988(n+1))`
-/

namespace A039385.P9645652391040086782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085701 (A043988 (n + 1)).toNat

end

end A039385.P9645652391040086782

/-! ## A039385.P12828536156145023892

`A043208(A000005(5^n))`
-/

namespace A039385.P12828536156145023892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043208 (A000005 (5 ^ n)).toNat

end

end A039385.P12828536156145023892

/-! ## A039385.P3425035853296688366

`A043208(∑[A269948(n)!])`
-/

namespace A039385.P3425035853296688366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A269948 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043208 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A039385.P3425035853296688366

/-!
# A039386: Numbers whose base-9 representation has the same nonzero number of 4's and 8's.

The programs for A039386, there is no canonical definition to state claims against.
-/

/-! ## A039386.P444221511547566671

`∩[A039105(n+1), A338090(n+1)]`
-/

namespace A039386.P444221511547566671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039386.P444221511547566671

/-! ## A039386.P9195135665649809446

`A043209(n+1)^C(n, 7)!`
-/

namespace A039386.P9195135665649809446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043209 (n + 1) ^ Nat.factorial (Nat.choose n 7)

end

end A039386.P9195135665649809446

/-! ## A039386.P4637295167167096684

`A043209(∑{e}[6^n, #]-n+1)`
-/

namespace A039386.P4637295167167096684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043209 (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - (n : ℤ) + 1).toNat

end

end A039386.P4637295167167096684

/-! ## A039386.P17177255747745146307

`A043209(A000005(5^n))`
-/

namespace A039386.P17177255747745146307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043209 (A000005 (5 ^ n)).toNat

end

end A039386.P17177255747745146307

/-!
# A039387: Numbers whose base-9 representation has the same nonzero number of 5's and 6's.

The programs for A039387, there is no canonical definition to state claims against.
-/

/-! ## A039387.P4699328007285514483

`A043210(n+1)^(n-∏{digits}[n, #])!`
-/

namespace A039387.P4699328007285514483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043210 (n + 1) ^ Nat.factorial ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)).toNat

end

end A039387.P4699328007285514483

/-! ## A039387.P4070376405827291968

`A043210(∑[A061603(n)])`
-/

namespace A039387.P4070376405827291968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043210 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A039387.P4070376405827291968

/-! ## A039387.P12883866718828098837

`A043990(∑[A061603(n)])`
-/

namespace A039387.P12883866718828098837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043990 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A039387.P12883866718828098837

/-! ## A039387.P9120031113835713094

`A043210(A120257(∑[n]))`
-/

namespace A039387.P9120031113835713094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043210 (A120257 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A039387.P9120031113835713094

/-! ## A039387.P9400370934101711285

`A043210(A062399(n+1))`
-/

namespace A039387.P9400370934101711285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043210 (A062399 (n + 1)).toNat

end

end A039387.P9400370934101711285

/-!
# A039388: Numbers whose base-9 representation has the same nonzero number of 5's and 7's.

The programs for A039388, there is no canonical definition to state claims against.
-/

/-! ## A039388.P16790422213572498445

`A037477(A039355(n+1)^A193518(n+1))`
-/

namespace A039388.P16790422213572498445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A039355 (n + 1) : ℚ) ^ (A193518 (n + 1) : ℤ))).toNat

end

end A039388.P16790422213572498445

/-! ## A039388.P8786412233637574121

`A037477(A039355(n+1)%A098188(n+1))`
-/

namespace A039388.P8786412233637574121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (Int.tmod (A039355 (n + 1)) (A098188 (n + 1))).toNat

end

end A039388.P8786412233637574121

/-! ## A039388.P8970579027647672945

`A037477(A039355(n+1)^A212177(n+1))`
-/

namespace A039388.P8970579027647672945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (SequenceMachineLib.roundAway ((A039355 (n + 1) : ℚ) ^ (A212177 (n + 1) : ℤ))).toNat

end

end A039388.P8970579027647672945

/-! ## A039388.P10248400227578010442

`A043211(A143797(∑[n]))`
-/

namespace A039388.P10248400227578010442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043211 (A143797 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A039388.P10248400227578010442

/-! ## A039388.P10313899967859609021

`A043211(A062399(n+1))`
-/

namespace A039388.P10313899967859609021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043211 (A062399 (n + 1)).toNat

end

end A039388.P10313899967859609021

/-!
# A039389: Numbers whose base-9 representation has the same nonzero number of 5's and 8's.

The programs for A039389, there is no canonical definition to state claims against.
-/

/-! ## A039389.P16180695312388372696

`A043212(A120257(∑[n]))`
-/

namespace A039389.P16180695312388372696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043212 (A120257 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A039389.P16180695312388372696

/-! ## A039389.P10550684217494391827

`A043212(A062399(n+1))`
-/

namespace A039389.P10550684217494391827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043212 (A062399 (n + 1)).toNat

end

end A039389.P10550684217494391827

/-! ## A039389.P17443499526394966709

`A043212(A087051(n)+1)`
-/

namespace A039389.P17443499526394966709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043212 (A087051 n + 1).toNat

end

end A039389.P17443499526394966709

/-! ## A039389.P16838220812214258900

`A043992(A087051(n)+1)`
-/

namespace A039389.P16838220812214258900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043992 (A087051 n + 1).toNat

end

end A039389.P16838220812214258900

/-! ## A039389.P18137370185504230579

`A043212(A351870(n+1))`
-/

namespace A039389.P18137370185504230579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043212 (A351870 (n + 1)).toNat

end

end A039389.P18137370185504230579

/-!
# A039390: Numbers whose base-9 representation has the same nonzero number of 6's and 7's.

The programs for A039390, there is no canonical definition to state claims against.
-/

/-! ## A039390.P6626406283955401844

`A043213(∑[A141588(n)²])`
-/

namespace A039390.P6626406283955401844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141588 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043213 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A039390.P6626406283955401844

/-! ## A039390.P14382254760737530915

`A043993(∑[A141588(n)²])`
-/

namespace A039390.P14382254760737530915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141588 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043993 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A039390.P14382254760737530915

/-! ## A039390.P431775271797554496

`record[A043213(A176816(n+1))]`
-/

namespace A039390.P431775271797554496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043213 (A176816 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039390.P431775271797554496

/-! ## A039390.P7037632054723670065

`A043213(A141588(n)²+n)`
-/

namespace A039390.P7037632054723670065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043213 (A141588 n ^ 2 + (n : ℤ)).toNat

end

end A039390.P7037632054723670065

/-! ## A039390.P10236548911517915564

`A043993(A141588(n)²+n)`
-/

namespace A039390.P10236548911517915564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043993 (A141588 n ^ 2 + (n : ℤ)).toNat

end

end A039390.P10236548911517915564

/-!
# A039391: Numbers whose base-9 representation has the same nonzero number of 6's and 8's.

The programs for A039391, there is no canonical definition to state claims against.
-/

/-! ## A039391.P12119065740454449994

`∩[A039110(n+1), A338090(n+1)]`
-/

namespace A039391.P12119065740454449994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039391.P12119065740454449994

/-! ## A039391.P9047988000915465507

`A043214(∑[A141588(n)²])`
-/

namespace A039391.P9047988000915465507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141588 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043214 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A039391.P9047988000915465507

/-! ## A039391.P7825367123121270104

`record[A043994(A307226(n)+1)]`
-/

namespace A039391.P7825367123121270104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043994 (A307226 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039391.P7825367123121270104

/-! ## A039391.P10806797361631607926

`A043214(A141588(n)²+n)`
-/

namespace A039391.P10806797361631607926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043214 (A141588 n ^ 2 + (n : ℤ)).toNat

end

end A039391.P10806797361631607926

/-! ## A039391.P10610657109567507984

`A043214(n+1)%Δ[A270339(3*n+1)²]`
-/

namespace A039391.P10610657109567507984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270339 (3 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043214 (n + 1)) (f1 (n + 1) - f1 n)

end

end A039391.P10610657109567507984

/-!
# A039392: Numbers whose base-9 representation has the same nonzero number of 7's and 8's.

The programs for A039392, there is no canonical definition to state claims against.
-/

/-! ## A039392.P337198445884726701

`A043215(A077168(n))`
-/

namespace A039392.P337198445884726701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043215 (A077168 n).toNat

end

end A039392.P337198445884726701

/-! ## A039392.P7513254291119074361

`A043995(record[A077168(n)])`
-/

namespace A039392.P7513254291119074361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043995 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039392.P7513254291119074361

/-! ## A039392.P16299911632454834110

`A043995(C(A077168(n), n))`
-/

namespace A039392.P16299911632454834110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043995 (Nat.choose (A077168 n).toNat n)

end

end A039392.P16299911632454834110

/-! ## A039392.P6895608733301974479

`A043215(log2(A005843(2^n)))`
-/

namespace A039392.P6895608733301974479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043215 (SequenceMachineLib.roundAway (Real.logb 2 (A005843 (2 ^ n) : ℝ))).toNat

end

end A039392.P6895608733301974479

/-! ## A039392.P8211763913337509147

`A043995(A122201(∑[n])+1)`
-/

namespace A039392.P8211763913337509147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043995 (A122201 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A039392.P8211763913337509147

/-!
# A039393: Numbers whose base-10 representation has the same nonzero number of 0's and 1's.

The programs for A039393, the canonical program `A039393.P4198254221456296311` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039393 has offset 1).

The definition of A039393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039393.P8175122001633189163

`∩[A011540(n+1), A039112(n+1)]`
-/

namespace A039393.P8175122001633189163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039393.P8175122001633189163

namespace A039393

/-- `∩[A011540(n+1), A039112(n+1)]` -/
def P8175122001633189163.Spec : Prop :=
  ∀ n, (P8175122001633189163.a n : ℤ) = A039393 (n + 1)

end A039393

/-! ## A039393.P17858739359785001022

`∩[A037379(n+1), A039112(n+1)]`
-/

namespace A039393.P17858739359785001022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039393.P17858739359785001022

namespace A039393

/-- `∩[A037379(n+1), A039112(n+1)]` -/
def P17858739359785001022.Spec : Prop :=
  ∀ n, (P17858739359785001022.a n : ℤ) = A039393 (n + 1)

end A039393

/-! ## A039393.P4198254221456296311

`∩[A039112(n+1), A062997(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A039393

/-- `∩[A039112(n+1), A062997(n+1)]` -/
def P4198254221456296311.Spec : Prop :=
  ∀ n, (P4198254221456296311.a n : ℤ) = A039393 (n + 1)

theorem P4198254221456296311.correct : P4198254221456296311.Spec := by
  intro n
  simp only [A039393, Nat.add_sub_cancel]

end A039393

/-! ## A039393.P11834763665215336343

`∩[A039112(n+1), A098394(n+1)]`
-/

namespace A039393.P11834763665215336343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039393.P11834763665215336343

namespace A039393

/-- `∩[A039112(n+1), A098394(n+1)]` -/
def P11834763665215336343.Spec : Prop :=
  ∀ n, (P11834763665215336343.a n : ℤ) = A039393 (n + 1)

end A039393

/-! ## A039393.P14624221797548282917

`∩[A011531(n+1), A039112(n+1)]`
-/

namespace A039393.P14624221797548282917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039393.P14624221797548282917

namespace A039393

/-- `∩[A011531(n+1), A039112(n+1)]` -/
def P14624221797548282917.Spec : Prop :=
  ∀ n, (P14624221797548282917.a n : ℤ) = A039393 (n + 1)

end A039393

/-! ## A039393.P10862189607979845483

`eq[A007953(A222210(n)), A061762(n)]`
-/

namespace A039393.P10862189607979845483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222210 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039393.P10862189607979845483

namespace A039393

/-- `eq[A007953(A222210(n)), A061762(n)]` -/
def P10862189607979845483.Spec : Prop :=
  ∀ n, (P10862189607979845483.a n : ℤ) = A039393 (n + 1)

end A039393

/-! ## A039393.P3566355911400142857

`eq[(A102669(n)+1)*A055641(n), A055640(n)]`
-/

namespace A039393.P3566355911400142857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A102669 n + 1) * A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039393.P3566355911400142857

namespace A039393

/-- `eq[(A102669(n)+1)*A055641(n), A055640(n)]` -/
def P3566355911400142857.Spec : Prop :=
  ∀ n, (P3566355911400142857.a n : ℤ) = A039393 (n + 1)

end A039393

/-!
# A039394: Numbers whose base-10 representation has the same nonzero number of 0's and 2's.

The programs for A039394, the canonical program `A039394.P18372244674431872866` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039394 has offset 1).

The definition of A039394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1382 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039394.P6632963178584717077

`∩[A011532(n+1), A039113(n+1)]`
-/

namespace A039394.P6632963178584717077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039394.P6632963178584717077

namespace A039394

/-- `∩[A011532(n+1), A039113(n+1)]` -/
def P6632963178584717077.Spec : Prop :=
  ∀ n, (P6632963178584717077.a n : ℤ) = A039394 (n + 1)

end A039394

/-! ## A039394.P18372244674431872866

`∩[A011540(n+1), A039113(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039394

/-- `∩[A011540(n+1), A039113(n+1)]` -/
def P18372244674431872866.Spec : Prop :=
  ∀ n, (P18372244674431872866.a n : ℤ) = A039394 (n + 1)

theorem P18372244674431872866.correct : P18372244674431872866.Spec := by
  intro n
  simp only [A039394, Nat.add_sub_cancel]

end A039394

/-! ## A039394.P9756370966110575649

`eq[A007953(A222211(n)), A061762(n)]`
-/

namespace A039394.P9756370966110575649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A222211 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039394.P9756370966110575649

namespace A039394

/-- `eq[A007953(A222211(n)), A061762(n)]` -/
def P9756370966110575649.Spec : Prop :=
  ∀ n, (P9756370966110575649.a n : ℤ) = A039394 (n + 1)

end A039394

/-! ## A039394.P12892925472908905697

`A007095(A039358(n+1))%A222911(n+1)`
-/

namespace A039394.P12892925472908905697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A039358 (n + 1)).toNat) (A222911 (n + 1))

end

end A039394.P12892925472908905697

namespace A039394

/-- `A007095(A039358(n+1))%A222911(n+1)` -/
def P12892925472908905697.Spec : Prop :=
  ∀ n, P12892925472908905697.a n = A039394 (n + 1)

end A039394

/-! ## A039394.P997649554091701590

`A007094(A039330(n+1)^A127193(n+1))`
-/

namespace A039394.P997649554091701590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway ((A039330 (n + 1) : ℚ) ^ (A127193 (n + 1) : ℤ))).toNat

end

end A039394.P997649554091701590

namespace A039394

/-- `A007094(A039330(n+1)^A127193(n+1))` -/
def P997649554091701590.Spec : Prop :=
  ∀ n, P997649554091701590.a n = A039394 (n + 1)

end A039394

/-!
# A039395: Numbers whose base-10 representation has the same nonzero number of 0's and 3's.

The programs for A039395, the canonical program `A039395.P16570160368346491329` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039395 has offset 1).

The definition of A039395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1382 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039395.P16570160368346491329

`∩[A011533(n+1), A039114(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039395

/-- `∩[A011533(n+1), A039114(n+1)]` -/
def P16570160368346491329.Spec : Prop :=
  ∀ n, (P16570160368346491329.a n : ℤ) = A039395 (n + 1)

theorem P16570160368346491329.correct : P16570160368346491329.Spec := by
  intro n
  simp only [A039395, Nat.add_sub_cancel]

end A039395

/-! ## A039395.P13592365360076569637

`∩[A011540(n+1), A039114(n+1)]`
-/

namespace A039395.P13592365360076569637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039395.P13592365360076569637

namespace A039395

/-- `∩[A011540(n+1), A039114(n+1)]` -/
def P13592365360076569637.Spec : Prop :=
  ∀ n, (P13592365360076569637.a n : ℤ) = A039395 (n + 1)

end A039395

/-! ## A039395.P7596183328799329203

`A007094(A039331(n+1)^(∑{digits}[n, 10^#]%9))`
-/

namespace A039395.P7596183328799329203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A039331 (n + 1) ^ (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9)).toNat

end

end A039395.P7596183328799329203

namespace A039395

/-- `A007094(A039331(n+1)^(∑{digits}[n, 10^#]%9))` -/
def P7596183328799329203.Spec : Prop :=
  ∀ n, P7596183328799329203.a n = A039395 (n + 1)

end A039395

/-! ## A039395.P6383404783454914217

`A007094(A039331(n+1)^(1-(∑{digits}[n, #]-n)))`
-/

namespace A039395.P6383404783454914217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway ((A039331 (n + 1) : ℚ) ^ (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)) : ℤ))).toNat

end

end A039395.P6383404783454914217

namespace A039395

/-- `A007094(A039331(n+1)^(1-(∑{digits}[n, #]-n)))` -/
def P6383404783454914217.Spec : Prop :=
  ∀ n, P6383404783454914217.a n = A039395 (n + 1)

end A039395

/-! ## A039395.P12305280245950984494

`A007094(C(A039331(n+1), 1-(∑{digits}[n, #]-n)))`
-/

namespace A039395.P12305280245950984494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Nat.choose (A039331 (n + 1)).toNat (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ))).toNat)

end

end A039395.P12305280245950984494

namespace A039395

/-- `A007094(C(A039331(n+1), 1-(∑{digits}[n, #]-n)))` -/
def P12305280245950984494.Spec : Prop :=
  ∀ n, P12305280245950984494.a n = A039395 (n + 1)

end A039395

/-!
# A039396: Numbers whose base-10 representation has the same nonzero number of 0's and 4's.

The programs for A039396, the canonical program `A039396.P9347899248425865174` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039396 has offset 1).

The definition of A039396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1382 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039396.P9347899248425865174

`∩[A011534(n+1), A039115(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A039396

/-- `∩[A011534(n+1), A039115(n+1)]` -/
def P9347899248425865174.Spec : Prop :=
  ∀ n, (P9347899248425865174.a n : ℤ) = A039396 (n + 1)

theorem P9347899248425865174.correct : P9347899248425865174.Spec := by
  intro n
  simp only [A039396, Nat.add_sub_cancel]

end A039396

/-! ## A039396.P16672892851023280281

`A007094(A039332(n+1)^A294775(n))`
-/

namespace A039396.P16672892851023280281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway ((A039332 (n + 1) : ℚ) ^ (A294775 n : ℤ))).toNat

end

end A039396.P16672892851023280281

namespace A039396

/-- `A007094(A039332(n+1)^A294775(n))` -/
def P16672892851023280281.Spec : Prop :=
  ∀ n, P16672892851023280281.a n = A039396 (n + 1)

end A039396

/-! ## A039396.P12360620457191189771

`A007095(A039360(n+1)^A294775(n))`
-/

namespace A039396.P12360620457191189771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A039360 (n + 1) : ℚ) ^ (A294775 n : ℤ))).toNat

end

end A039396.P12360620457191189771

namespace A039396

/-- `A007095(A039360(n+1)^A294775(n))` -/
def P12360620457191189771.Spec : Prop :=
  ∀ n, P12360620457191189771.a n = A039396 (n + 1)

end A039396

/-! ## A039396.P3312065721294653747

`A007094(C(A039332(n+1), A294775(n)))`
-/

namespace A039396.P3312065721294653747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Nat.choose (A039332 (n + 1)).toNat (A294775 n).toNat)

end

end A039396.P3312065721294653747

namespace A039396

/-- `A007094(C(A039332(n+1), A294775(n)))` -/
def P3312065721294653747.Spec : Prop :=
  ∀ n, P3312065721294653747.a n = A039396 (n + 1)

end A039396

/-! ## A039396.P6568354030757602220

`A007093(A039311(n+1)%A031629(3*(n+1)))`
-/

namespace A039396.P6568354030757602220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (Int.tmod (A039311 (n + 1)) (A031629 (3 * (n + 1)))).toNat

end

end A039396.P6568354030757602220

namespace A039396

/-- `A007093(A039311(n+1)%A031629(3*(n+1)))` -/
def P6568354030757602220.Spec : Prop :=
  ∀ n, P6568354030757602220.a n = A039396 (n + 1)

end A039396

/-!
# A039397: Numbers whose base-10 representation has the same nonzero number of 0's and 5's.

The programs for A039397, the canonical program `A039397.P9739263432564952466` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039397 has offset 1).

The definition of A039397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1382 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039397.P5048140313008625586

`∩[A039116(n+1), A092454(n)]`
-/

namespace A039397.P5048140313008625586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092454 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039397.P5048140313008625586

namespace A039397

/-- `∩[A039116(n+1), A092454(n)]` -/
def P5048140313008625586.Spec : Prop :=
  ∀ n, (P5048140313008625586.a n : ℤ) = A039397 (n + 1)

end A039397

/-! ## A039397.P9739263432564952466

`∩[A011535(n+1), A039116(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039397

/-- `∩[A011535(n+1), A039116(n+1)]` -/
def P9739263432564952466.Spec : Prop :=
  ∀ n, (P9739263432564952466.a n : ℤ) = A039397 (n + 1)

theorem P9739263432564952466.correct : P9739263432564952466.Spec := by
  intro n
  simp only [A039397, Nat.add_sub_cancel]

end A039397

/-! ## A039397.P3972298877683751747

`∩[A011540(n+1), A039116(n+1)]`
-/

namespace A039397.P3972298877683751747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039397.P3972298877683751747

namespace A039397

/-- `∩[A011540(n+1), A039116(n+1)]` -/
def P3972298877683751747.Spec : Prop :=
  ∀ n, (P3972298877683751747.a n : ℤ) = A039397 (n + 1)

end A039397

/-! ## A039397.P10621302343166911608

`A007095(A185036(n)!*A039361(n+1))`
-/

namespace A039397.P10621302343166911608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 ((Nat.factorial (A185036 n).toNat : ℤ) * A039361 (n + 1)).toNat

end

end A039397.P10621302343166911608

namespace A039397

/-- `A007095(A185036(n)!*A039361(n+1))` -/
def P10621302343166911608.Spec : Prop :=
  ∀ n, P10621302343166911608.a n = A039397 (n + 1)

end A039397

/-! ## A039397.P8448804506307246972

`A007095(A039361(n+1)^A185036(n)!)`
-/

namespace A039397.P8448804506307246972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A039361 (n + 1) ^ Nat.factorial (A185036 n).toNat).toNat

end

end A039397.P8448804506307246972

namespace A039397

/-- `A007095(A039361(n+1)^A185036(n)!)` -/
def P8448804506307246972.Spec : Prop :=
  ∀ n, P8448804506307246972.a n = A039397 (n + 1)

end A039397

/-!
# A039398: Numbers whose base-10 representation has the same nonzero number of 0's and 6's.

The programs for A039398, the canonical program `A039398.P1446720734037677552` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039398 has offset 1).

The definition of A039398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1381 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039398.P1446720734037677552

`∩[A011536(n+1), A039117(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A039398

/-- `∩[A011536(n+1), A039117(n+1)]` -/
def P1446720734037677552.Spec : Prop :=
  ∀ n, (P1446720734037677552.a n : ℤ) = A039398 (n + 1)

theorem P1446720734037677552.correct : P1446720734037677552.Spec := by
  intro n
  simp only [A039398, Nat.add_sub_cancel]

end A039398

/-! ## A039398.P4712540226016048708

`∩[A011540(n+1), A039117(n+1)]`
-/

namespace A039398.P4712540226016048708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039398.P4712540226016048708

namespace A039398

/-- `∩[A011540(n+1), A039117(n+1)]` -/
def P4712540226016048708.Spec : Prop :=
  ∀ n, (P4712540226016048708.a n : ℤ) = A039398 (n + 1)

end A039398

/-! ## A039398.P17444664362364782705

`A007093(A039313(n+1))^A007318(A113081(n))`
-/

namespace A039398.P17444664362364782705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007093 (A039313 (n + 1)).toNat : ℚ) ^ (A007318 (A113081 n).toNat : ℤ)

end

end A039398.P17444664362364782705

namespace A039398

/-- `A007093(A039313(n+1))^A007318(A113081(n))` -/
def P17444664362364782705.Spec : Prop :=
  ∀ n, P17444664362364782705.a n = (A039398 (n + 1) : ℚ)

end A039398

/-! ## A039398.P8915792568020639777

`A007093(A039313(n+1)%A153680(n+3))`
-/

namespace A039398.P8915792568020639777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (Int.tmod (A039313 (n + 1)) (A153680 (n + 3))).toNat

end

end A039398.P8915792568020639777

namespace A039398

/-- `A007093(A039313(n+1)%A153680(n+3))` -/
def P8915792568020639777.Spec : Prop :=
  ∀ n, P8915792568020639777.a n = A039398 (n + 1)

end A039398

/-! ## A039398.P9208836866872643901

`A007095(gcd(37, A043461(n+1))*A039362(n+1))`
-/

namespace A039398.P9208836866872643901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 ((Int.gcd 37 (A043461 (n + 1)) : ℤ) * A039362 (n + 1)).toNat

end

end A039398.P9208836866872643901

namespace A039398

/-- `A007095(gcd(37, A043461(n+1))*A039362(n+1))` -/
def P9208836866872643901.Spec : Prop :=
  ∀ n, P9208836866872643901.a n = A039398 (n + 1)

end A039398

/-!
# A039399: Numbers whose base-10 representation has the same nonzero number of 0's and 7's.

The programs for A039399, there is no canonical definition to state claims against.
-/

/-! ## A039399.P273928077192745688

`A007095(A039363(n+1)%A319902(n+1))`
-/

namespace A039399.P273928077192745688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (Int.tmod (A039363 (n + 1)) (A319902 (n + 1))).toNat

end

end A039399.P273928077192745688

/-! ## A039399.P2224917298870540249

`A007095(A039363(n+1))%A031968(A043033(n+1))`
-/

namespace A039399.P2224917298870540249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007095 (A039363 (n + 1)).toNat) (A031968 (A043033 (n + 1)).toNat)

end

end A039399.P2224917298870540249

/-! ## A039399.P9406649112964459293

`A007094(A039335(n+1))+A000038(A000204(n+1))`
-/

namespace A039399.P9406649112964459293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A039335 (n + 1)).toNat + A000038 (A000204 (n + 1)).toNat

end

end A039399.P9406649112964459293

/-! ## A039399.P3997402052905296895

`A007094(A039335(n+1)%A233031(3*(n+1)))`
-/

namespace A039399.P3997402052905296895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Int.tmod (A039335 (n + 1)) (A233031 (3 * (n + 1)))).toNat

end

end A039399.P3997402052905296895

/-! ## A039399.P9351065006524855499

`A043222(A062399(n+1))`
-/

namespace A039399.P9351065006524855499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043222 (A062399 (n + 1)).toNat

end

end A039399.P9351065006524855499

