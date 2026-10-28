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
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B009.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A068601: a(n) = n^3 - 1.

The programs for A068601, the canonical program `A068601.P18163521696996894258` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068601 has offset 1).

The definition of A068601 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3-1` (program `A068601.P18163521696996894258`, by `A068601.P18163521696996894258.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A068601.P18163521696996894258

`(n+1)^3-1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A068601

/-- `(n+1)^3-1` -/
def P18163521696996894258.Spec : Prop :=
  ∀ n, P18163521696996894258.a n = A068601 (n + 1)

theorem P18163521696996894258.correct : P18163521696996894258.Spec := by
  intro n
  simp only [A068601, Nat.add_sub_cancel]

end A068601

/-! ## A068601.P3118673513526178428

`ogf((7x-2x^2+x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A068601.P3118673513526178428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, -2, 1] [1, -4, 6, -4, 1] n

end

end A068601.P3118673513526178428

namespace A068601

/-- `ogf((7x-2x^2+x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P3118673513526178428.Spec : Prop :=
  ∀ n, P3118673513526178428.a n = A068601 (n + 1)

end A068601

/-! ## A068601.P6533082214455679715

`floor(cot((n+1)^-3))`
-/

namespace A068601.P6533082214455679715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot ((n + 1 : ℚ) ^ (-3 : ℤ) : ℝ)⌋

end

end A068601.P6533082214455679715

namespace A068601

/-- `floor(cot((n+1)^-3))` -/
def P6533082214455679715.Spec : Prop :=
  ∀ n, P6533082214455679715.a n = A068601 (n + 1)

end A068601

/-! ## A068601.P5299208391111954438

`floor(n/Δ[atan(n+1)])`
-/

namespace A068601.P5299208391111954438
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / (f1 (n + 1) - f1 n)⌋

end

end A068601.P5299208391111954438

namespace A068601

/-- `floor(n/Δ[atan(n+1)])` -/
def P5299208391111954438.Spec : Prop :=
  ∀ n, P5299208391111954438.a n = A068601 (n + 1)

end A068601

/-! ## A068601.P15104223623276790351

`round(n/Δ[atan(n+1)])`
-/

namespace A068601.P15104223623276790351
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / (f1 (n + 1) - f1 n))

end

end A068601.P15104223623276790351

namespace A068601

/-- `round(n/Δ[atan(n+1)])` -/
def P15104223623276790351.Spec : Prop :=
  ∀ n, P15104223623276790351.a n = A068601 (n + 1)

end A068601

/-! ## A068601.P14749775255201632845

`xor(-1, -(n+1)^3)`
-/

namespace A068601.P14749775255201632845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-((n + 1) ^ 3 : ℤ))

end

end A068601.P14749775255201632845

namespace A068601

/-- `xor(-1, -(n+1)^3)` -/
def P14749775255201632845.Spec : Prop :=
  ∀ n, P14749775255201632845.a n = A068601 (n + 1)

end A068601

/-! ## A068601.P12513763522506237891

`record[abs((1-n)^3)-1]`
-/

namespace A068601.P12513763522506237891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (n : ℤ)) ^ 3| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068601.P12513763522506237891

namespace A068601

/-- `record[abs((1-n)^3)-1]` -/
def P12513763522506237891.Spec : Prop :=
  ∀ n, P12513763522506237891.a n = A068601 (n + 1)

end A068601

/-! ## A068601.P18216930778231158852

`Δ[C(n+1, 2)²-n]`
-/

namespace A068601.P18216930778231158852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068601.P18216930778231158852

namespace A068601

/-- `Δ[C(n+1, 2)²-n]` -/
def P18216930778231158852.Spec : Prop :=
  ∀ n, P18216930778231158852.a n = A068601 (n + 1)

theorem P18216930778231158852.correct : P18216930778231158852.Spec := by
  intro n
  simp only [A068601, Nat.add_sub_cancel, A068601.P18216930778231158852.f1, A068601.P18216930778231158852.a, A068601.P18163521696996894258.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068601

/-! ## A068601.P15994017728839129800

`lcm(n, (-(n+1))^3+1)`
-/

namespace A068601.P15994017728839129800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((-(n + 1 : ℤ)) ^ 3 + 1)

end

end A068601.P15994017728839129800

namespace A068601

/-- `lcm(n, (-(n+1))^3+1)` -/
def P15994017728839129800.Spec : Prop :=
  ∀ n, (P15994017728839129800.a n : ℤ) = A068601 (n + 1)

end A068601

/-! ## A068601.P14417529868846148377

`n*or(1, ∑[2*(n+1)])`
-/

namespace A068601.P14417529868846148377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A068601.P14417529868846148377

namespace A068601

/-- `n*or(1, ∑[2*(n+1)])` -/
def P14417529868846148377.Spec : Prop :=
  ∀ n, (P14417529868846148377.a n : ℤ) = A068601 (n + 1)

end A068601

/-! ## A068601.P11930947578339377308

`n*xor(1, ∑[2*(n+1)])`
-/

namespace A068601.P11930947578339377308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A068601.P11930947578339377308

namespace A068601

/-- `n*xor(1, ∑[2*(n+1)])` -/
def P11930947578339377308.Spec : Prop :=
  ∀ n, (P11930947578339377308.a n : ℤ) = A068601 (n + 1)

end A068601

/-! ## A068601.P3333220194477596844

`n*(or(2, (n+1)²)+n)`
-/

namespace A068601.P3333220194477596844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.lor 2 ((n + 1) ^ 2) + n)

end

end A068601.P3333220194477596844

namespace A068601

/-- `n*(or(2, (n+1)²)+n)` -/
def P3333220194477596844.Spec : Prop :=
  ∀ n, (P3333220194477596844.a n : ℤ) = A068601 (n + 1)

end A068601

/-! ## A068601.P9280466404908994247

`n*(xor(2, (n+1)²)+n)`
-/

namespace A068601.P9280466404908994247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.xor 2 ((n + 1) ^ 2) + n)

end

end A068601.P9280466404908994247

namespace A068601

/-- `n*(xor(2, (n+1)²)+n)` -/
def P9280466404908994247.Spec : Prop :=
  ∀ n, (P9280466404908994247.a n : ℤ) = A068601 (n + 1)

end A068601

/-! ## A068601.P2099401062592504300

`n*record[n*(n-3)+3]`
-/

namespace A068601.P2099401062592504300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 3) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068601.P2099401062592504300

namespace A068601

/-- `n*record[n*(n-3)+3]` -/
def P2099401062592504300.Spec : Prop :=
  ∀ n, P2099401062592504300.a n = A068601 (n + 1)

end A068601

/-! ## A068601.P4836570839565390354

`n*(∑[n+3]+C(n, 2))`
-/

namespace A068601.P4836570839565390354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 2)

end

end A068601.P4836570839565390354

namespace A068601

/-- `n*(∑[n+3]+C(n, 2))` -/
def P4836570839565390354.Spec : Prop :=
  ∀ n, (P4836570839565390354.a n : ℤ) = A068601 (n + 1)

end A068601

/-! ## A068601.P11842811787618388756

`n*ceil(2/acot(∑[n+1]))`
-/

namespace A068601.P11842811787618388756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈2 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A068601.P11842811787618388756

namespace A068601

/-- `n*ceil(2/acot(∑[n+1]))` -/
def P11842811787618388756.Spec : Prop :=
  ∀ n, P11842811787618388756.a n = A068601 (n + 1)

end A068601

/-! ## A068601.P12481882650648255968

`n*∑[round(2/acot(n+1))]`
-/

namespace A068601.P12481882650648255968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A068601.P12481882650648255968

namespace A068601

/-- `n*∑[round(2/acot(n+1))]` -/
def P12481882650648255968.Spec : Prop :=
  ∀ n, P12481882650648255968.a n = A068601 (n + 1)

end A068601

/-! ## A068601.P4509664398776845624

`n*(2*C(n+2, 2)+1)`
-/

namespace A068601.P4509664398776845624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * Nat.choose (n + 2) 2 + 1)

end

end A068601.P4509664398776845624

namespace A068601

/-- `n*(2*C(n+2, 2)+1)` -/
def P4509664398776845624.Spec : Prop :=
  ∀ n, (P4509664398776845624.a n : ℤ) = A068601 (n + 1)

theorem P4509664398776845624.correct : P4509664398776845624.Spec := by
  intro n
  simp only [A068601, Nat.add_sub_cancel, A068601.P4509664398776845624.a, A068601.P18163521696996894258.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068601

/-! ## A068601.P15546713140275618603

`n*∑[a(n-1)+2]` with `a(0)=3, a(1)=4`
-/

namespace A068601.P15546713140275618603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A068601.P15546713140275618603

namespace A068601

/-- `n*∑[a(n-1)+2]` -/
def P15546713140275618603.Spec : Prop :=
  ∀ n, (P15546713140275618603.a n : ℤ) = A068601 (n + 1)

end A068601

/-! ## A068601.P9333957272126387622

`n*(lcm(n+1, n+2)+1)`
-/

namespace A068601.P9333957272126387622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.lcm (n + 1) (n + 2) + 1)

end

end A068601.P9333957272126387622

namespace A068601

/-- `n*(lcm(n+1, n+2)+1)` -/
def P9333957272126387622.Spec : Prop :=
  ∀ n, (P9333957272126387622.a n : ℤ) = A068601 (n + 1)

end A068601

/-!
# A068602: Number of functions f:{0,1,2,...,n} -> {0,1,2,...,n} that satisfy f(0)=0 and f(n)=0, with f nowhere concave upward.

The programs for A068602, there is no canonical definition to state claims against.
-/

/-! ## A068602.P5793015834476542992

`A342658(n!)+gcd(∏{d}[2*n+1, #]+1, 2*n)-1`
-/

namespace A068602.P5793015834476542992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342658 (Nat.factorial n) + ((Nat.gcd (∏ d ∈ Nat.divisors (f1 n), d + 1) (2 * n) : ℤ) - 1)

end

end A068602.P5793015834476542992

/-! ## A068602.P409397837610421483

`A376635(A276225(n))`
-/

namespace A068602.P409397837610421483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376635 (A276225 n).toNat

end

end A068602.P409397837610421483

/-! ## A068602.P13056425520481097658

`A377898(A327736(n))`
-/

namespace A068602.P13056425520481097658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377898 (A327736 n).toNat

end

end A068602.P13056425520481097658

/-!
# A068604: Number of distinct coefficients in expansion related to enumeration of permutations of length n by length of longest subsequence.

The programs for A068604, there is no canonical definition to state claims against.
-/

/-! ## A068604.P2817431818035967283

`A092629(A275548(n))`
-/

namespace A068604.P2817431818035967283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092629 (A275548 n).toNat

end

end A068604.P2817431818035967283

/-! ## A068604.P12725171288465863902

`A083023(A017934(n))`
-/

namespace A068604.P12725171288465863902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083023 (A017934 n).toNat

end

end A068604.P12725171288465863902

/-! ## A068604.P1454684221803521192

`A083023(A017935(n))`
-/

namespace A068604.P1454684221803521192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083023 (A017935 n).toNat

end

end A068604.P1454684221803521192

/-! ## A068604.P14521934775427942217

`A225859(A005181(n))`
-/

namespace A068604.P14521934775427942217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225859 (A005181 n).toNat

end

end A068604.P14521934775427942217

/-!
# A068605: Number of functions from [1,2,...,n] to [1,2,...,n] such that the image contains exactly two elements.

The programs for A068605, the canonical program `A068605.P17851244163823024288` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068605 has offset 2).

The definition of A068605 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068605.P17851244163823024288

`C(n+2, 2)*(2^(n+2)-2)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A068605

/-- `C(n+2, 2)*(2^(n+2)-2)` -/
def P17851244163823024288.Spec : Prop :=
  ∀ n, P17851244163823024288.a n = A068605 (n + 2)

theorem P17851244163823024288.correct : P17851244163823024288.Spec := by
  intro n
  simp only [A068605, Nat.add_sub_cancel]

end A068605

/-! ## A068605.P818479124267011915

`ogf((2-12x^2+12x^3)/(1-9x+33x^2-63x^3+66x^4-36x^5+8x^6))`
-/

namespace A068605.P818479124267011915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -12, 12] [1, -9, 33, -63, 66, -36, 8] n

end

end A068605.P818479124267011915

namespace A068605

/-- `ogf((2-12x^2+12x^3)/(1-9x+33x^2-63x^3+66x^4-36x^5+8x^6))` -/
def P818479124267011915.Spec : Prop :=
  ∀ n, P818479124267011915.a n = A068605 (n + 2)

end A068605

/-! ## A068605.P2980888738020802047

`∑[2^(n+1)]*∑[n+1]`
-/

namespace A068605.P2980888738020802047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A068605.P2980888738020802047

namespace A068605

/-- `∑[2^(n+1)]*∑[n+1]` -/
def P2980888738020802047.Spec : Prop :=
  ∀ n, (P2980888738020802047.a n : ℤ) = A068605 (n + 2)

end A068605

/-! ## A068605.P10406086335358415098

`floor(∑[2*a(n-1)]*∑[n+1])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A068605.P10406086335358415098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A068605.P10406086335358415098

namespace A068605

/-- `floor(∑[2*a(n-1)]*∑[n+1])` -/
def P10406086335358415098.Spec : Prop :=
  ∀ n, (P10406086335358415098.a n : ℤ) = A068605 (n + 2)

end A068605

/-! ## A068605.P7769602152506416032

`A191821(n+2)-2^(n+2)`
-/

namespace A068605.P7769602152506416032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191821 (n + 2) - (2 ^ (n + 2) : ℤ)

end

end A068605.P7769602152506416032

namespace A068605

/-- `A191821(n+2)-2^(n+2)` -/
def P7769602152506416032.Spec : Prop :=
  ∀ n, P7769602152506416032.a n = A068605 (n + 2)

theorem P7769602152506416032.correct : P7769602152506416032.Spec := by
  intro n
  simp only [A068605, Nat.add_sub_cancel, A068605.P7769602152506416032.a, A068605.P17851244163823024288.a, A191821, A191821.P7659205827528356356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068605

/-! ## A068605.P14079863547371734190

`A213749(n+1)+A213583(n+1)`
-/

namespace A068605.P14079863547371734190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213749 (n + 1) + A213583 (n + 1)

end

end A068605.P14079863547371734190

namespace A068605

/-- `A213749(n+1)+A213583(n+1)` -/
def P14079863547371734190.Spec : Prop :=
  ∀ n, P14079863547371734190.a n = A068605 (n + 2)

end A068605

/-! ## A068605.P15732108601500602551

`A100381(n+2)-A002378(n+1)`
-/

namespace A068605.P15732108601500602551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100381 (n + 2) - A002378 (n + 1)

end

end A068605.P15732108601500602551

namespace A068605

/-- `A100381(n+2)-A002378(n+1)` -/
def P15732108601500602551.Spec : Prop :=
  ∀ n, P15732108601500602551.a n = A068605 (n + 2)

theorem P15732108601500602551.correct : P15732108601500602551.Spec := by
  intro n
  simp only [A068605, Nat.add_sub_cancel, A068605.P15732108601500602551.a, A068605.P17851244163823024288.a, A002378, A002378.P6342434596694243671.a, A100381, A100381.P11000662029855507408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068605

/-! ## A068605.P16766811901116578029

`A095121(n+1)+A000096(n)*A095121(n+1)`
-/

namespace A068605.P16766811901116578029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 (n + 1) + A000096 n * A095121 (n + 1)

end

end A068605.P16766811901116578029

namespace A068605

/-- `A095121(n+1)+A000096(n)*A095121(n+1)` -/
def P16766811901116578029.Spec : Prop :=
  ∀ n, P16766811901116578029.a n = A068605 (n + 2)

end A068605

/-! ## A068605.P6249755879297628141

`A002378(n+1)+A000918(n+1)*A002378(n+1)`
-/

namespace A068605.P6249755879297628141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) + A000918 (n + 1) * A002378 (n + 1)

end

end A068605.P6249755879297628141

namespace A068605

/-- `A002378(n+1)+A000918(n+1)*A002378(n+1)` -/
def P6249755879297628141.Spec : Prop :=
  ∀ n, P6249755879297628141.a n = A068605 (n + 2)

theorem P6249755879297628141.correct : P6249755879297628141.Spec := by
  intro n
  simp only [A068605, Nat.add_sub_cancel, A068605.P6249755879297628141.a, A068605.P17851244163823024288.a, A000918, A000918.P14329454465793069288.a, A002378, A002378.P6342434596694243671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068605

/-! ## A068605.P10886792068395606677

`A000079(n+1)*A002378(n+1)-A002378(n+1)`
-/

namespace A068605.P10886792068395606677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A002378 (n + 1) - A002378 (n + 1)

end

end A068605.P10886792068395606677

namespace A068605

/-- `A000079(n+1)*A002378(n+1)-A002378(n+1)` -/
def P10886792068395606677.Spec : Prop :=
  ∀ n, P10886792068395606677.a n = A068605 (n + 2)

theorem P10886792068395606677.correct : P10886792068395606677.Spec := by
  intro n
  simp only [A068605, Nat.add_sub_cancel, A068605.P10886792068395606677.a, A068605.P17851244163823024288.a, A000079, A000079.P10855139691139572931.a, A002378, A002378.P6342434596694243671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068605

/-! ## A068605.P15760157862685071383

`A000217(n+1)*A126646(n+1)-A000217(n+1)`
-/

namespace A068605.P15760157862685071383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A126646 (n + 1) - A000217 (n + 1)

end

end A068605.P15760157862685071383

namespace A068605

/-- `A000217(n+1)*A126646(n+1)-A000217(n+1)` -/
def P15760157862685071383.Spec : Prop :=
  ∀ n, P15760157862685071383.a n = A068605 (n + 2)

theorem P15760157862685071383.correct : P15760157862685071383.Spec := by
  intro n
  simp only [A068605, Nat.add_sub_cancel, A068605.P15760157862685071383.a, A068605.P17851244163823024288.a, A000217, A000217.P10269402890581615239.a, A126646, A126646.P3746310572697910447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068605

/-! ## A068605.P18018052871463902822

`∑[2*a(n-1)]*∑[n+1]/2` with `a(0)=4`
-/

namespace A068605.P18018052871463902822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  2 * f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℚ) / 2

end

end A068605.P18018052871463902822

namespace A068605

/-- `∑[2*a(n-1)]*∑[n+1]/2` -/
def P18018052871463902822.Spec : Prop :=
  ∀ n, P18018052871463902822.a n = (A068605 (n + 2) : ℚ)

end A068605

/-! ## A068605.P16609911408225115538

`(n+2)*A317404(n+1)/3`
-/

namespace A068605.P16609911408225115538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A317404 (n + 1) : ℚ) / 3

end

end A068605.P16609911408225115538

namespace A068605

/-- `(n+2)*A317404(n+1)/3` -/
def P16609911408225115538.Spec : Prop :=
  ∀ n, P16609911408225115538.a n = (A068605 (n + 2) : ℚ)

theorem P16609911408225115538.correct : P16609911408225115538.Spec := by
  intro n
  simp only [A068605, Nat.add_sub_cancel, A068605.P16609911408225115538.a, A068605.P17851244163823024288.a, A317404, A317404.P15895309766879522071.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068605

/-! ## A068605.P10132212292190285672

`Δ[n*A276659(n)]-A276659(n)`
-/

namespace A068605.P10132212292190285672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A276659 n

end

end A068605.P10132212292190285672

namespace A068605

/-- `Δ[n*A276659(n)]-A276659(n)` -/
def P10132212292190285672.Spec : Prop :=
  ∀ n, P10132212292190285672.a n = A068605 (n + 2)

end A068605

/-! ## A068605.P788142012047089259

`A000225(n+1)*A046092(n+1)/2`
-/

namespace A068605.P788142012047089259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (n + 1) * A046092 (n + 1) : ℚ) / 2

end

end A068605.P788142012047089259

namespace A068605

/-- `A000225(n+1)*A046092(n+1)/2` -/
def P788142012047089259.Spec : Prop :=
  ∀ n, P788142012047089259.a n = (A068605 (n + 2) : ℚ)

theorem P788142012047089259.correct : P788142012047089259.Spec := by
  intro n
  simp only [A068605, Nat.add_sub_cancel, A068605.P788142012047089259.a, A068605.P17851244163823024288.a, A000225, A000225.P6535533121115206393.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068605

/-! ## A068605.P13353157387154655668

`A002378(n+1)*A095121(n+1)/2`
-/

namespace A068605.P13353157387154655668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (n + 1) * A095121 (n + 1) : ℚ) / 2

end

end A068605.P13353157387154655668

namespace A068605

/-- `A002378(n+1)*A095121(n+1)/2` -/
def P13353157387154655668.Spec : Prop :=
  ∀ n, P13353157387154655668.a n = (A068605 (n + 2) : ℚ)

end A068605

/-! ## A068605.P18134274833889846987

`A095121(n+1)*A140144(2*(n+1))/2`
-/

namespace A068605.P18134274833889846987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095121 (n + 1) * A140144 (2 * (n + 1)) : ℚ) / 2

end

end A068605.P18134274833889846987

namespace A068605

/-- `A095121(n+1)*A140144(2*(n+1))/2` -/
def P18134274833889846987.Spec : Prop :=
  ∀ n, P18134274833889846987.a n = (A068605 (n + 2) : ℚ)

end A068605

/-! ## A068605.P9830467845348616611

`A075427(2*n)*A241496(2*n+1)/2`
-/

namespace A068605.P9830467845348616611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075427 (2 * n) * A241496 (2 * n + 1) : ℚ) / 2

end

end A068605.P9830467845348616611

namespace A068605

/-- `A075427(2*n)*A241496(2*n+1)/2` -/
def P9830467845348616611.Spec : Prop :=
  ∀ n, P9830467845348616611.a n = (A068605 (n + 2) : ℚ)

end A068605

/-! ## A068605.P5246618578700949969

`A196514(n+1)-(A196514(n)+A002378(n+1))`
-/

namespace A068605.P5246618578700949969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196514 (n + 1) - (A196514 n + A002378 (n + 1))

end

end A068605.P5246618578700949969

namespace A068605

/-- `A196514(n+1)-(A196514(n)+A002378(n+1))` -/
def P5246618578700949969.Spec : Prop :=
  ∀ n, P5246618578700949969.a n = A068605 (n + 2)

theorem P5246618578700949969.correct : P5246618578700949969.Spec := by
  intro n
  simp only [A068605, Nat.add_sub_cancel, A068605.P5246618578700949969.a, A068605.P17851244163823024288.a, A002378, A002378.P6342434596694243671.a, A196514, A196514.P10306210964865599694.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068605

/-! ## A068605.P11445131347336888100

`A000225(n+1)*A163102(n+1)/A000217(n+1)`
-/

namespace A068605.P11445131347336888100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (n + 1) * A163102 (n + 1) : ℚ) / (A000217 (n + 1) : ℚ)

end

end A068605.P11445131347336888100

namespace A068605

/-- `A000225(n+1)*A163102(n+1)/A000217(n+1)` -/
def P11445131347336888100.Spec : Prop :=
  ∀ n, P11445131347336888100.a n = (A068605 (n + 2) : ℚ)

end A068605

/-!
# A068606: Square table by antidiagonals of T(n,k)=n*k*(n+k+1).

The programs for A068606, the canonical program `A068606.P18248460777800522484` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068606 has offset 0).

The definition of A068606 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)*(row(n)-col(n))*(col(n)+row(n)-col(n)+1)` (program `A068606.P18248460777800522484`, by `A068606.P18248460777800522484.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A068606.P18248460777800522484

`col(n)*(row(n)-col(n))*(col(n)+row(n)-col(n)+1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A068606

/-- `col(n)*(row(n)-col(n))*(col(n)+row(n)-col(n)+1)` -/
def P18248460777800522484.Spec : Prop :=
  ∀ n, P18248460777800522484.a n = A068606 n

theorem P18248460777800522484.correct : P18248460777800522484.Spec := by
  intro n
  simp only [A068606]

end A068606

/-! ## A068606.P11026968291478071606

`(row(n)-col(n))*col(n)*(row(n)-col(n)+col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A068606.P11026968291478071606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ) + 1)

end

end A068606.P11026968291478071606

namespace A068606

/-- `(row(n)-col(n))*col(n)*(row(n)-col(n)+col(n)+1)` -/
def P11026968291478071606.Spec : Prop :=
  ∀ n, P11026968291478071606.a n = A068606 n

theorem P11026968291478071606.correct : P11026968291478071606.Spec := by
  intro n
  simp only [A068606, Nat.add_sub_cancel, A068606.P11026968291478071606.a, A068606.P18248460777800522484.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A068606

/-! ## A068606.P8503497913858325129

`col(n)*(row(n)-col(n))*(1+row(n))`
-/

namespace A068606.P8503497913858325129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (1 + SequenceMachineLib.triRow n : ℤ)

end

end A068606.P8503497913858325129

namespace A068606

/-- `col(n)*(row(n)-col(n))*(1+row(n))` -/
def P8503497913858325129.Spec : Prop :=
  ∀ n, P8503497913858325129.a n = A068606 n

theorem P8503497913858325129.correct : P8503497913858325129.Spec := by
  intro n
  simp only [A068606, Nat.add_sub_cancel, A068606.P8503497913858325129.a, A068606.P18248460777800522484.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A068606

/-! ## A068606.P15365126940606480775

`∑[char[∑[n]]]*A004247(n)`
-/

namespace A068606.P15365126940606480775
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A004247 n

end

end A068606.P15365126940606480775

namespace A068606

/-- `∑[char[∑[n]]]*A004247(n)` -/
def P15365126940606480775.Spec : Prop :=
  ∀ n, P15365126940606480775.a n = A068606 n

end A068606

/-! ## A068606.P3317682402397767897

`(A077028(n)-1)*∑[char[∑[n]]]`
-/

namespace A068606.P3317682402397767897
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077028 n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A068606.P3317682402397767897

namespace A068606

/-- `(A077028(n)-1)*∑[char[∑[n]]]` -/
def P3317682402397767897.Spec : Prop :=
  ∀ n, P3317682402397767897.a n = A068606 n

end A068606

/-! ## A068606.P8274385440000353156

`A004247(n)*A123578(n)`
-/

namespace A068606.P8274385440000353156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n * A123578 n

end

end A068606.P8274385440000353156

namespace A068606

/-- `A004247(n)*A123578(n)` -/
def P8274385440000353156.Spec : Prop :=
  ∀ n, P8274385440000353156.a n = A068606 n

end A068606

/-! ## A068606.P2137865218836819536

`A004247(n)*A130855(n)`
-/

namespace A068606.P2137865218836819536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n * A130855 n

end

end A068606.P2137865218836819536

namespace A068606

/-- `A004247(n)*A130855(n)` -/
def P2137865218836819536.Spec : Prop :=
  ∀ n, P2137865218836819536.a n = A068606 n

end A068606

/-! ## A068606.P9901046575349550319

`A002262(n)*A095834(n+1)`
-/

namespace A068606.P9901046575349550319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A095834 (n + 1)

end

end A068606.P9901046575349550319

namespace A068606

/-- `A002262(n)*A095834(n+1)` -/
def P9901046575349550319.Spec : Prop :=
  ∀ n, P9901046575349550319.a n = A068606 n

theorem P9901046575349550319.correct : P9901046575349550319.Spec := by
  intro n
  simp only [A068606, Nat.add_sub_cancel, A068606.P9901046575349550319.a, A068606.P18248460777800522484.a, A002262, A002262.P17823619022233514403.a, A095834, A095834.P817103610530576889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068606

/-! ## A068606.P1025069016590918451

`(1-A176270(n))*A002024(n+1)`
-/

namespace A068606.P1025069016590918451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A176270 n) * A002024 (n + 1)

end

end A068606.P1025069016590918451

namespace A068606

/-- `(1-A176270(n))*A002024(n+1)` -/
def P1025069016590918451.Spec : Prop :=
  ∀ n, P1025069016590918451.a n = A068606 n

end A068606

/-! ## A068606.P16055237698974117654

`(A128227(n)-1)*A095834(n+1)`
-/

namespace A068606.P16055237698974117654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A128227 n - 1) * A095834 (n + 1)

end

end A068606.P16055237698974117654

namespace A068606

/-- `(A128227(n)-1)*A095834(n+1)` -/
def P16055237698974117654.Spec : Prop :=
  ∀ n, P16055237698974117654.a n = A068606 n

end A068606

/-! ## A068606.P3057156005854211288

`(A323956(n+1)-1)*A002262(n)`
-/

namespace A068606.P3057156005854211288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A323956 (n + 1) - 1) * A002262 n

end

end A068606.P3057156005854211288

namespace A068606

/-- `(A323956(n+1)-1)*A002262(n)` -/
def P3057156005854211288.Spec : Prop :=
  ∀ n, P3057156005854211288.a n = A068606 n

theorem P3057156005854211288.correct : P3057156005854211288.Spec := by
  intro n
  simp only [A068606, Nat.add_sub_cancel, A068606.P3057156005854211288.a, A068606.P18248460777800522484.a, A002262, A002262.P17823619022233514403.a, A323956, A323956.P11197926771404492179.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068606

/-! ## A068606.P12276876853466645866

`(A002260(n+1)-1)*A095834(n+1)`
-/

namespace A068606.P12276876853466645866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) - 1) * A095834 (n + 1)

end

end A068606.P12276876853466645866

namespace A068606

/-- `(A002260(n+1)-1)*A095834(n+1)` -/
def P12276876853466645866.Spec : Prop :=
  ∀ n, P12276876853466645866.a n = A068606 n

theorem P12276876853466645866.correct : P12276876853466645866.Spec := by
  intro n
  simp only [A068606, Nat.add_sub_cancel, A068606.P12276876853466645866.a, A068606.P18248460777800522484.a, A002260, A002260.P9170571874073898642.a, A095834, A095834.P817103610530576889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068606

/-! ## A068606.P5825538352083223845

`A004247(n)+A003056(n)*A004247(n)`
-/

namespace A068606.P5825538352083223845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + A003056 n * A004247 n

end

end A068606.P5825538352083223845

namespace A068606

/-- `A004247(n)+A003056(n)*A004247(n)` -/
def P5825538352083223845.Spec : Prop :=
  ∀ n, P5825538352083223845.a n = A068606 n

end A068606

/-! ## A068606.P6712145422553940747

`(A079904(n)+A002262(n))*A025581(n)`
-/

namespace A068606.P6712145422553940747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079904 n + A002262 n) * A025581 n

end

end A068606.P6712145422553940747

namespace A068606

/-- `(A079904(n)+A002262(n))*A025581(n)` -/
def P6712145422553940747.Spec : Prop :=
  ∀ n, P6712145422553940747.a n = A068606 n

theorem P6712145422553940747.correct : P6712145422553940747.Spec := by
  intro n
  simp only [A068606, Nat.add_sub_cancel, A068606.P6712145422553940747.a, A068606.P18248460777800522484.a, A002262, A002262.P17823619022233514403.a, A025581, A025581.P16112744757063613497.a, A079904, A079904.P681072687927778273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068606

/-! ## A068606.P6150536091646205212

`(A079904(n+1)-A025581(n))*A025581(n)`
-/

namespace A068606.P6150536091646205212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079904 (n + 1) - A025581 n) * A025581 n

end

end A068606.P6150536091646205212

namespace A068606

/-- `(A079904(n+1)-A025581(n))*A025581(n)` -/
def P6150536091646205212.Spec : Prop :=
  ∀ n, P6150536091646205212.a n = A068606 n

end A068606

/-! ## A068606.P1076599566466371558

`A002024(n+1)*A002262(n)*A025581(n)`
-/

namespace A068606.P1076599566466371558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A002262 n * A025581 n

end

end A068606.P1076599566466371558

namespace A068606

/-- `A002024(n+1)*A002262(n)*A025581(n)` -/
def P1076599566466371558.Spec : Prop :=
  ∀ n, P1076599566466371558.a n = A068606 n

end A068606

/-! ## A068606.P7950144641551756697

`(A003991(n+1)-A002024(n+1))*A002024(n+1)`
-/

namespace A068606.P7950144641551756697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) - A002024 (n + 1)) * A002024 (n + 1)

end

end A068606.P7950144641551756697

namespace A068606

/-- `(A003991(n+1)-A002024(n+1))*A002024(n+1)` -/
def P7950144641551756697.Spec : Prop :=
  ∀ n, P7950144641551756697.a n = A068606 n

end A068606

/-! ## A068606.P16050173612213494784

`(A128140(n+1)-A002260(n+1))*A128138(n+1)`
-/

namespace A068606.P16050173612213494784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A128140 (n + 1) - A002260 (n + 1)) * A128138 (n + 1)

end

end A068606.P16050173612213494784

namespace A068606

/-- `(A128140(n+1)-A002260(n+1))*A128138(n+1)` -/
def P16050173612213494784.Spec : Prop :=
  ∀ n, P16050173612213494784.a n = A068606 n

end A068606

/-! ## A068606.P3670619326248099395

`A176282(n)-1`
-/

namespace A068606.P3670619326248099395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176282 n - 1

end

end A068606.P3670619326248099395

namespace A068606

/-- `A176282(n)-1` -/
def P3670619326248099395.Spec : Prop :=
  ∀ n, P3670619326248099395.a n = A068606 n

end A068606

/-! ## A068606.P4236889982618231001

`A004247(n)*A183110(n+1)`
-/

namespace A068606.P4236889982618231001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n * A183110 (n + 1)

end

end A068606.P4236889982618231001

namespace A068606

/-- `A004247(n)*A183110(n+1)` -/
def P4236889982618231001.Spec : Prop :=
  ∀ n, P4236889982618231001.a n = A068606 n

end A068606

/-!
# A068607: Triangle of T(n,k)=n*k*(n+k+1) with n>=k>=0.

The programs for A068607, the canonical program `A068607.P2379231893696485085` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068607 has offset 0).

The definition of A068607 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)*col(n)*(row(n)+col(n)+1)` (program `A068607.P2379231893696485085`, by `A068607.P2379231893696485085.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A068607.P2379231893696485085

`row(n)*col(n)*(row(n)+col(n)+1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A068607

/-- `row(n)*col(n)*(row(n)+col(n)+1)` -/
def P2379231893696485085.Spec : Prop :=
  ∀ n, (P2379231893696485085.a n : ℤ) = A068607 n

theorem P2379231893696485085.correct : P2379231893696485085.Spec := by
  intro n
  simp only [A068607]

end A068607

/-! ## A068607.P5705599041675297036

`col(n)*row(n)*(row(n)+col(n)+1)`
-/

namespace A068607.P5705599041675297036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n * SequenceMachineLib.triRow n * (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n + 1)

end

end A068607.P5705599041675297036

namespace A068607

/-- `col(n)*row(n)*(row(n)+col(n)+1)` -/
def P5705599041675297036.Spec : Prop :=
  ∀ n, (P5705599041675297036.a n : ℤ) = A068607 n

theorem P5705599041675297036.correct : P5705599041675297036.Spec := by
  intro n
  simp only [A068607, Nat.add_sub_cancel, A068607.P5705599041675297036.a, A068607.P2379231893696485085.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A068607

/-! ## A068607.P12379495562101281784

`(A051162(n)+1)*A079904(n)`
-/

namespace A068607.P12379495562101281784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051162 n + 1) * A079904 n

end

end A068607.P12379495562101281784

namespace A068607

/-- `(A051162(n)+1)*A079904(n)` -/
def P12379495562101281784.Spec : Prop :=
  ∀ n, P12379495562101281784.a n = A068607 n

theorem P12379495562101281784.correct : P12379495562101281784.Spec := by
  intro n
  simp only [A068607, Nat.add_sub_cancel, A068607.P12379495562101281784.a, A068607.P2379231893696485085.a, A051162, A051162.P4484969187050632534.a, A079904, A079904.P681072687927778273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068607

/-! ## A068607.P828911438717508483

`A079904(n)*A094727(n+1)`
-/

namespace A068607.P828911438717508483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n * A094727 (n + 1)

end

end A068607.P828911438717508483

namespace A068607

/-- `A079904(n)*A094727(n+1)` -/
def P828911438717508483.Spec : Prop :=
  ∀ n, P828911438717508483.a n = A068607 n

theorem P828911438717508483.correct : P828911438717508483.Spec := by
  intro n
  simp only [A068607, Nat.add_sub_cancel, A068607.P828911438717508483.a, A068607.P2379231893696485085.a, A079904, A079904.P681072687927778273.a, A094727, A094727.P1041695477673985807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068607

/-! ## A068607.P16947421771090635622

`A079904(n)*A131896(n+1)`
-/

namespace A068607.P16947421771090635622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n * A131896 (n + 1)

end

end A068607.P16947421771090635622

namespace A068607

/-- `A079904(n)*A131896(n+1)` -/
def P16947421771090635622.Spec : Prop :=
  ∀ n, P16947421771090635622.a n = A068607 n

end A068607

/-! ## A068607.P3274638534915143990

`(A108872(n+1)-1)*A079904(n)`
-/

namespace A068607.P3274638534915143990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108872 (n + 1) - 1) * A079904 n

end

end A068607.P3274638534915143990

namespace A068607

/-- `(A108872(n+1)-1)*A079904(n)` -/
def P3274638534915143990.Spec : Prop :=
  ∀ n, P3274638534915143990.a n = A068607 n

end A068607

/-! ## A068607.P4380167722156486783

`floor(sqrt(A214604(n+1)))*A079904(n)`
-/

namespace A068607.P4380167722156486783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A214604 (n + 1)) * A079904 n

end

end A068607.P4380167722156486783

namespace A068607

/-- `floor(sqrt(A214604(n+1)))*A079904(n)` -/
def P4380167722156486783.Spec : Prop :=
  ∀ n, P4380167722156486783.a n = A068607 n

end A068607

/-! ## A068607.P7431217753459670331

`(A144204(n+1)+1)*A094727(n+1)`
-/

namespace A068607.P7431217753459670331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A144204 (n + 1) + 1) * A094727 (n + 1)

end

end A068607.P7431217753459670331

namespace A068607

/-- `(A144204(n+1)+1)*A094727(n+1)` -/
def P7431217753459670331.Spec : Prop :=
  ∀ n, P7431217753459670331.a n = A068607 n

theorem P7431217753459670331.correct : P7431217753459670331.Spec := by
  intro n
  simp only [A068607, Nat.add_sub_cancel, A068607.P7431217753459670331.a, A068607.P2379231893696485085.a, A094727, A094727.P1041695477673985807.a, A144204, A144204.P8638300400995235908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068607

/-! ## A068607.P16635624623841985616

`(A002262(n)+A002024(n+1))*A079904(n)`
-/

namespace A068607.P16635624623841985616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + A002024 (n + 1)) * A079904 n

end

end A068607.P16635624623841985616

namespace A068607

/-- `(A002262(n)+A002024(n+1))*A079904(n)` -/
def P16635624623841985616.Spec : Prop :=
  ∀ n, P16635624623841985616.a n = A068607 n

end A068607

/-! ## A068607.P11680642480861603416

`(A075362(n+1)-A079904(n))*A079904(n)`
-/

namespace A068607.P11680642480861603416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075362 (n + 1) - A079904 n) * A079904 n

end

end A068607.P11680642480861603416

namespace A068607

/-- `(A075362(n+1)-A079904(n))*A079904(n)` -/
def P11680642480861603416.Spec : Prop :=
  ∀ n, P11680642480861603416.a n = A068607 n

theorem P11680642480861603416.correct : P11680642480861603416.Spec := by
  intro n
  simp only [A068607, Nat.add_sub_cancel, A068607.P11680642480861603416.a, A068607.P2379231893696485085.a, A075362, A075362.P14519753816398962141.a, A079904, A079904.P681072687927778273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068607

/-! ## A068607.P15495189093574102071

`A002262(n)*A094727(n+1)*A003056(n)`
-/

namespace A068607.P15495189093574102071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A094727 (n + 1) * A003056 n

end

end A068607.P15495189093574102071

namespace A068607

/-- `A002262(n)*A094727(n+1)*A003056(n)` -/
def P15495189093574102071.Spec : Prop :=
  ∀ n, P15495189093574102071.a n = A068607 n

end A068607

/-! ## A068607.P12159631778250330904

`(A075362(n+1)-A094727(n+1))*A094727(n+1)`
-/

namespace A068607.P12159631778250330904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075362 (n + 1) - A094727 (n + 1)) * A094727 (n + 1)

end

end A068607.P12159631778250330904

namespace A068607

/-- `(A075362(n+1)-A094727(n+1))*A094727(n+1)` -/
def P12159631778250330904.Spec : Prop :=
  ∀ n, P12159631778250330904.a n = A068607 n

theorem P12159631778250330904.correct : P12159631778250330904.Spec := by
  intro n
  simp only [A068607, Nat.add_sub_cancel, A068607.P12159631778250330904.a, A068607.P2379231893696485085.a, A075362, A075362.P14519753816398962141.a, A094727, A094727.P1041695477673985807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068607

/-! ## A068607.P10620743043828883940

`(A079904(A014132(n+1))-A079904(n))*A079904(n)`
-/

namespace A068607.P10620743043828883940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079904 (A014132 (n + 1)).toNat - A079904 n) * A079904 n

end

end A068607.P10620743043828883940

namespace A068607

/-- `(A079904(A014132(n+1))-A079904(n))*A079904(n)` -/
def P10620743043828883940.Spec : Prop :=
  ∀ n, P10620743043828883940.a n = A068607 n

end A068607

/-! ## A068607.P13462741157839296671

`(A002262(n)+A002024(n+1))*A002262(n)*A003056(n)`
-/

namespace A068607.P13462741157839296671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + A002024 (n + 1)) * (A002262 n * A003056 n)

end

end A068607.P13462741157839296671

namespace A068607

/-- `(A002262(n)+A002024(n+1))*A002262(n)*A003056(n)` -/
def P13462741157839296671.Spec : Prop :=
  ∀ n, P13462741157839296671.a n = A068607 n

end A068607

/-! ## A068607.P14794193518721424315

`(A003056(n)+A002260(n+1))*A002262(n)*A003056(n)`
-/

namespace A068607.P14794193518721424315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + A002260 (n + 1)) * (A002262 n * A003056 n)

end

end A068607.P14794193518721424315

namespace A068607

/-- `(A003056(n)+A002260(n+1))*A002262(n)*A003056(n)` -/
def P14794193518721424315.Spec : Prop :=
  ∀ n, P14794193518721424315.a n = A068607 n

end A068607

/-! ## A068607.P11459184461151198986

`(A051162(n)+1)*A091435(A061579(n))`
-/

namespace A068607.P11459184461151198986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051162 n + 1) * A091435 (A061579 n).toNat

end

end A068607.P11459184461151198986

namespace A068607

/-- `(A051162(n)+1)*A091435(A061579(n))` -/
def P11459184461151198986.Spec : Prop :=
  ∀ n, P11459184461151198986.a n = A068607 n

end A068607

/-! ## A068607.P9940754135637257472

`A091435(A061579(n))*A094727(n+1)`
-/

namespace A068607.P9940754135637257472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 (A061579 n).toNat * A094727 (n + 1)

end

end A068607.P9940754135637257472

namespace A068607

/-- `A091435(A061579(n))*A094727(n+1)` -/
def P9940754135637257472.Spec : Prop :=
  ∀ n, P9940754135637257472.a n = A068607 n

end A068607

/-! ## A068607.P10793869373772604738

`(A095833(A038722(n+1))-A079904(n))*A079904(n)`
-/

namespace A068607.P10793869373772604738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A095833 (A038722 (n + 1)).toNat - A079904 n) * A079904 n

end

end A068607.P10793869373772604738

namespace A068607

/-- `(A095833(A038722(n+1))-A079904(n))*A079904(n)` -/
def P10793869373772604738.Spec : Prop :=
  ∀ n, P10793869373772604738.a n = A068607 n

end A068607

/-! ## A068607.P5166422939764657104

`A068606(A245300(n))`
-/

namespace A068607.P5166422939764657104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068606 (A245300 n).toNat

end

end A068607.P5166422939764657104

namespace A068607

/-- `A068606(A245300(n))` -/
def P5166422939764657104.Spec : Prop :=
  ∀ n, P5166422939764657104.a n = A068607 n

end A068607

/-!
# A068608: Path of a knight's tour on an infinite chessboard.

The programs for A068608, there is no canonical definition to state claims against.
-/

/-! ## A068608.P3559871907177407390

`A020703(A068615(n))`
-/

namespace A068608.P3559871907177407390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A068615 n).toNat

end

end A068608.P3559871907177407390

/-! ## A068608.P5015008035668945632

`A090930(A068614(n))`
-/

namespace A068608.P5015008035668945632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090930 (A068614 n).toNat

end

end A068608.P5015008035668945632

/-! ## A068608.P6105055283406302535

`A090929(A068609(n))`
-/

namespace A068608.P6105055283406302535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090929 (A068609 n).toNat

end

end A068608.P6105055283406302535

/-! ## A068608.P15321271139059873711

`A090861(A068612(n))`
-/

namespace A068608.P15321271139059873711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (A068612 n).toNat

end

end A068608.P15321271139059873711

/-! ## A068608.P1312867834476218564

`A090915(A068613(n))`
-/

namespace A068608.P1312867834476218564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A068613 n).toNat

end

end A068608.P1312867834476218564

/-! ## A068608.P3849936359932482964

`A090925(A068611(n))`
-/

namespace A068608.P3849936359932482964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090925 (A068611 n).toNat

end

end A068608.P3849936359932482964

/-! ## A068608.P15767620526428733521

`A090928(A068610(n))`
-/

namespace A068608.P15767620526428733521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090928 (A068610 n).toNat

end

end A068608.P15767620526428733521

/-!
# A068609: Path of a knight's tour on an infinite chessboard.

The programs for A068609, there is no canonical definition to state claims against.
-/

/-! ## A068609.P3887967126737807269

`A020703(A068614(n))`
-/

namespace A068609.P3887967126737807269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A068614 n).toNat

end

end A068609.P3887967126737807269

/-! ## A068609.P14453466161165570038

`A090925(A068608(n))`
-/

namespace A068609.P14453466161165570038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090925 (A068608 n).toNat

end

end A068609.P14453466161165570038

/-! ## A068609.P15916388195926906902

`A090861(A068615(n))`
-/

namespace A068609.P15916388195926906902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (A068615 n).toNat

end

end A068609.P15916388195926906902

/-! ## A068609.P16666596353020440217

`A090915(A068612(n))`
-/

namespace A068609.P16666596353020440217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A068612 n).toNat

end

end A068609.P16666596353020440217

/-! ## A068609.P10815457447545758441

`A090929(A068610(n))`
-/

namespace A068609.P10815457447545758441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090929 (A068610 n).toNat

end

end A068609.P10815457447545758441

/-! ## A068609.P11037213178265035871

`A090928(A068611(n))`
-/

namespace A068609.P11037213178265035871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090928 (A068611 n).toNat

end

end A068609.P11037213178265035871

/-! ## A068609.P13836818952960809414

`A090930(A068613(n))`
-/

namespace A068609.P13836818952960809414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090930 (A068613 n).toNat

end

end A068609.P13836818952960809414

/-!
# A068610: Path of a knight's tour on an infinite chessboard.

The programs for A068610, there is no canonical definition to state claims against.
-/

/-! ## A068610.P354881424117703931

`A020703(A068613(n))`
-/

namespace A068610.P354881424117703931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A068613 n).toNat

end

end A068610.P354881424117703931

/-! ## A068610.P2778067202542994952

`A090928(A068608(n))`
-/

namespace A068610.P2778067202542994952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090928 (A068608 n).toNat

end

end A068610.P2778067202542994952

/-! ## A068610.P5443740331202587370

`A090861(A068614(n))`
-/

namespace A068610.P5443740331202587370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (A068614 n).toNat

end

end A068610.P5443740331202587370

/-! ## A068610.P2010346494803153085

`A090925(A068609(n))`
-/

namespace A068610.P2010346494803153085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090925 (A068609 n).toNat

end

end A068610.P2010346494803153085

/-! ## A068610.P14273749563848262034

`A090915(A068615(n))`
-/

namespace A068610.P14273749563848262034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A068615 n).toNat

end

end A068610.P14273749563848262034

/-! ## A068610.P7120604692772565592

`A090929(A068611(n))`
-/

namespace A068610.P7120604692772565592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090929 (A068611 n).toNat

end

end A068610.P7120604692772565592

/-! ## A068610.P12448880870471078123

`A090930(A068612(n))`
-/

namespace A068610.P12448880870471078123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090930 (A068612 n).toNat

end

end A068610.P12448880870471078123

/-!
# A068611: Path of a knight's tour on an infinite chessboard.

The programs for A068611, there is no canonical definition to state claims against.
-/

/-! ## A068611.P8043129545056994163

`A020703(A068612(n))`
-/

namespace A068611.P8043129545056994163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A068612 n).toNat

end

end A068611.P8043129545056994163

/-! ## A068611.P8672407041953888955

`A090929(A068608(n))`
-/

namespace A068611.P8672407041953888955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090929 (A068608 n).toNat

end

end A068611.P8672407041953888955

/-! ## A068611.P18107949937774518069

`A090915(A068614(n))`
-/

namespace A068611.P18107949937774518069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A068614 n).toNat

end

end A068611.P18107949937774518069

/-! ## A068611.P6712465818837482696

`A090928(A068609(n))`
-/

namespace A068611.P6712465818837482696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090928 (A068609 n).toNat

end

end A068611.P6712465818837482696

/-! ## A068611.P15752300189828750132

`A090861(A068613(n))`
-/

namespace A068611.P15752300189828750132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (A068613 n).toNat

end

end A068611.P15752300189828750132

/-! ## A068611.P6363145780125949835

`A090925(A068610(n))`
-/

namespace A068611.P6363145780125949835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090925 (A068610 n).toNat

end

end A068611.P6363145780125949835

/-! ## A068611.P884331679957738384

`A090930(A068615(n))`
-/

namespace A068611.P884331679957738384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090930 (A068615 n).toNat

end

end A068611.P884331679957738384

/-!
# A068612: Path of a knight's tour on an infinite chessboard.

The programs for A068612, there is no canonical definition to state claims against.
-/

/-! ## A068612.P2206370343194923451

`A020703(A068611(n))`
-/

namespace A068612.P2206370343194923451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A068611 n).toNat

end

end A068612.P2206370343194923451

/-! ## A068612.P13719545072118310379

`A090861(A068608(n))`
-/

namespace A068612.P13719545072118310379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (A068608 n).toNat

end

end A068612.P13719545072118310379

/-! ## A068612.P573183222549720482

`A090928(A068614(n))`
-/

namespace A068612.P573183222549720482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090928 (A068614 n).toNat

end

end A068612.P573183222549720482

/-! ## A068612.P15998849259273325885

`A090915(A068609(n))`
-/

namespace A068612.P15998849259273325885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A068609 n).toNat

end

end A068612.P15998849259273325885

/-! ## A068612.P8653404898672963321

`A090930(A068610(n))`
-/

namespace A068612.P8653404898672963321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090930 (A068610 n).toNat

end

end A068612.P8653404898672963321

/-! ## A068612.P4629931528383408037

`A090925(A068615(n))`
-/

namespace A068612.P4629931528383408037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090925 (A068615 n).toNat

end

end A068612.P4629931528383408037

/-! ## A068612.P9504356729389810164

`A090929(A068613(n))`
-/

namespace A068612.P9504356729389810164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090929 (A068613 n).toNat

end

end A068612.P9504356729389810164

/-!
# A068613: Path of a knight's tour on an infinite chessboard.

The programs for A068613, there is no canonical definition to state claims against.
-/

/-! ## A068613.P16037480389031619981

`A020703(A068610(n))`
-/

namespace A068613.P16037480389031619981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A068610 n).toNat

end

end A068613.P16037480389031619981

/-! ## A068613.P18345217781709164429

`A090915(A068608(n))`
-/

namespace A068613.P18345217781709164429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A068608 n).toNat

end

end A068613.P18345217781709164429

/-! ## A068613.P6211214023306984121

`A090929(A068614(n))`
-/

namespace A068613.P6211214023306984121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090929 (A068614 n).toNat

end

end A068613.P6211214023306984121

/-! ## A068613.P6915072421378746010

`A090930(A068609(n))`
-/

namespace A068613.P6915072421378746010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090930 (A068609 n).toNat

end

end A068613.P6915072421378746010

/-! ## A068613.P5477303704770855337

`A090861(A068611(n))`
-/

namespace A068613.P5477303704770855337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (A068611 n).toNat

end

end A068613.P5477303704770855337

/-! ## A068613.P9397223976490798773

`A090925(A068612(n))`
-/

namespace A068613.P9397223976490798773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090925 (A068612 n).toNat

end

end A068613.P9397223976490798773

/-! ## A068613.P17533230404108225587

`A090928(A068615(n))`
-/

namespace A068613.P17533230404108225587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090928 (A068615 n).toNat

end

end A068613.P17533230404108225587

/-!
# A068614: Path of a knight's tour on an infinite chessboard.

The programs for A068614, there is no canonical definition to state claims against.
-/

/-! ## A068614.P15960736913699654418

`A020703(A068609(n))`
-/

namespace A068614.P15960736913699654418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A068609 n).toNat

end

end A068614.P15960736913699654418

/-! ## A068614.P6767376479430547640

`A090930(A068608(n))`
-/

namespace A068614.P6767376479430547640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090930 (A068608 n).toNat

end

end A068614.P6767376479430547640

/-! ## A068614.P8095745101151007271

`A090861(A068610(n))`
-/

namespace A068614.P8095745101151007271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (A068610 n).toNat

end

end A068614.P8095745101151007271

/-! ## A068614.P824781021364031289

`A090915(A068611(n))`
-/

namespace A068614.P824781021364031289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A068611 n).toNat

end

end A068614.P824781021364031289

/-! ## A068614.P17775355254988962302

`A090925(A068613(n))`
-/

namespace A068614.P17775355254988962302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090925 (A068613 n).toNat

end

end A068614.P17775355254988962302

/-! ## A068614.P15623843360421371895

`A090928(A068612(n))`
-/

namespace A068614.P15623843360421371895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090928 (A068612 n).toNat

end

end A068614.P15623843360421371895

/-! ## A068614.P3855736523789168286

`A090929(A068615(n))`
-/

namespace A068614.P3855736523789168286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090929 (A068615 n).toNat

end

end A068614.P3855736523789168286

/-!
# A068615: Path of a knight's tour on an infinite chessboard.

The programs for A068615, there is no canonical definition to state claims against.
-/

/-! ## A068615.P6569474672529473254

`A020703(A068608(n))`
-/

namespace A068615.P6569474672529473254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A068608 n).toNat

end

end A068615.P6569474672529473254

/-! ## A068615.P9867809108450957303

`A090925(A068614(n))`
-/

namespace A068615.P9867809108450957303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090925 (A068614 n).toNat

end

end A068615.P9867809108450957303

/-! ## A068615.P16075058055655118633

`A090861(A068609(n))`
-/

namespace A068615.P16075058055655118633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (A068609 n).toNat

end

end A068615.P16075058055655118633

/-! ## A068615.P15202905112043626739

`A090915(A068610(n))`
-/

namespace A068615.P15202905112043626739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A068610 n).toNat

end

end A068615.P15202905112043626739

/-! ## A068615.P4167951825251939661

`A090930(A068611(n))`
-/

namespace A068615.P4167951825251939661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090930 (A068611 n).toNat

end

end A068615.P4167951825251939661

/-! ## A068615.P11565146460258539966

`A090929(A068612(n))`
-/

namespace A068615.P11565146460258539966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090929 (A068612 n).toNat

end

end A068615.P11565146460258539966

/-! ## A068615.P10048530768630886356

`A090928(A068613(n))`
-/

namespace A068615.P10048530768630886356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090928 (A068613 n).toNat

end

end A068615.P10048530768630886356

/-!
# A068618: a(1) = 1; a(n+1) = smallest triangular number > a(n) formed by adding at least one digit to a(n).

The programs for A068618, there is no canonical definition to state claims against.
-/

/-! ## A068618.P18258660972811974145

`A068622(n+1)-A345403(A256691(3*n+1))`
-/

namespace A068618.P18258660972811974145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068622 (n + 1) - A345403 (A256691 (3 * n + 1)).toNat

end

end A068618.P18258660972811974145

/-!
# A068619: a(1) = 3; a(n+1) = smallest triangular number formed by inserting one or more digits into a(n).

The programs for A068619, there is no canonical definition to state claims against.
-/

/-! ## A068619.P10056929356587665627

`C(A100243(n+1)+1, 2)`
-/

namespace A068619.P10056929356587665627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A100243 (n + 1) + 1).toNat 2

end

end A068619.P10056929356587665627

/-! ## A068619.P8473404271643850043

`A000217(A100243(n+1))`
-/

namespace A068619.P8473404271643850043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A100243 (n + 1)).toNat

end

end A068619.P8473404271643850043

/-!
# A068620: Number of strings over Z_4 of length n with trace 0 and subtrace 0.

The programs for A068620, there is no canonical definition to state claims against.
-/

/-! ## A068620.P8869183037688060216

`A068790(n+1)+2^n`
-/

namespace A068620.P8869183037688060216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068790 (n + 1) + (2 ^ n : ℤ)

end

end A068620.P8869183037688060216

/-! ## A068620.P807826370713266561

`A000079(n)+A068790(n+1)`
-/

namespace A068620.P807826370713266561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A068790 (n + 1)

end

end A068620.P807826370713266561

/-! ## A068620.P2835320432671594736

`abs(A171449(n)+A068790(n+1))`
-/

namespace A068620.P2835320432671594736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171449 n + A068790 (n + 1)|

end

end A068620.P2835320432671594736

/-! ## A068620.P4220314280835760678

`A068790(n+1)+A000225(n)+1`
-/

namespace A068620.P4220314280835760678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068790 (n + 1) + A000225 n + 1

end

end A068620.P4220314280835760678

/-! ## A068620.P11199150846807753709

`A099884(∑[n])+A068790(n+1)`
-/

namespace A068620.P11199150846807753709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 (∑ j ∈ Finset.range (n + 1), f1 j) + A068790 (n + 1)

end

end A068620.P11199150846807753709

/-!
# A068622: a(1) = 5; a(n+1) = smallest triangular number > a(n) formed by adding at least one digit to a(n).

The programs for A068622, there is no canonical definition to state claims against.
-/

/-! ## A068622.P11527576212281220114

`or(A068618(n+1), A179613(A143567(n+2)))`
-/

namespace A068622.P11527576212281220114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A068618 (n + 1)) (A179613 (A143567 (n + 2)).toNat)

end

end A068622.P11527576212281220114

/-!
# A068625: Reduced root factorial of n: product of the smallest integer root of numbers from 1 to n.

The programs for A068625, there is no canonical definition to state claims against.
-/

/-! ## A068625.P1091198650475306866

`a(n-1)*A052410(n)` with `a(0)=1`
-/

namespace A068625.P1091198650475306866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A052410 n

end

end A068625.P1091198650475306866

/-! ## A068625.P10905738652356816600

`a(n-1)*A112537(n²)` with `a(0)=1`
-/

namespace A068625.P10905738652356816600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A112537 (n ^ 2)

end

end A068625.P10905738652356816600

/-! ## A068625.P8413129547468797693

`a(n-1)*A329814(n²)` with `a(0)=1`
-/

namespace A068625.P8413129547468797693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A329814 (n ^ 2)

end

end A068625.P8413129547468797693

/-! ## A068625.P2316716635618737931

`∏[A052410(A028310(n))]`
-/

namespace A068625.P2316716635618737931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A068625.P2316716635618737931

/-! ## A068625.P13865070479552789464

`∏[A052410(n+1)]/A052410(n+1)`
-/

namespace A068625.P13865070479552789464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A052410 (n + 1) : ℚ)

end

end A068625.P13865070479552789464

/-!
# A068626: a(3n) = a(3n-1) = 3*n^2, a(3n-2) = 3*n^2 - 3*n + 1.

The programs for A068626, the canonical program `A068626.P5228562958192297829` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068626 has offset 1).

The definition of A068626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068626.P13730717820348348002

`ogf((1+2x+2x^3+x^4)/(1-x-2x^3+2x^4+x^6-x^7))`
-/

namespace A068626.P13730717820348348002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, 2, 1] [1, -1, 0, -2, 2, 0, 1, -1] n

end

end A068626.P13730717820348348002

namespace A068626

/-- `ogf((1+2x+2x^3+x^4)/(1-x-2x^3+2x^4+x^6-x^7))` -/
def P13730717820348348002.Spec : Prop :=
  ∀ n, P13730717820348348002.a n = A068626 (n + 1)

end A068626

/-! ## A068626.P5228562958192297829

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=7, a(4)=12, a(5)=12, a(6)=19`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A068626

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P5228562958192297829.Spec : Prop :=
  ∀ n, P5228562958192297829.a n = A068626 (n + 1)

theorem P5228562958192297829.correct : P5228562958192297829.Spec := by
  intro n
  simp only [A068626, Nat.add_sub_cancel]

end A068626

/-! ## A068626.P13702697542763167896

`∑[(n+1)%lcm(3, n+1)]`
-/

namespace A068626.P13702697542763167896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % Nat.lcm 3 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068626.P13702697542763167896

namespace A068626

/-- `∑[(n+1)%lcm(3, n+1)]` -/
def P13702697542763167896.Spec : Prop :=
  ∀ n, (P13702697542763167896.a n : ℤ) = A068626 (n + 1)

end A068626

/-! ## A068626.P1097403995503493249

`∑[C(n+1, n^(n%3))]`
-/

namespace A068626.P1097403995503493249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (n ^ (n % 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068626.P1097403995503493249

namespace A068626

/-- `∑[C(n+1, n^(n%3))]` -/
def P1097403995503493249.Spec : Prop :=
  ∀ n, (P1097403995503493249.a n : ℤ) = A068626 (n + 1)

end A068626

/-! ## A068626.P16904446222857401845

`∑[(n+1)*(n+1)²%3]`
-/

namespace A068626.P16904446222857401845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n + 1) ^ 2 % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068626.P16904446222857401845

namespace A068626

/-- `∑[(n+1)*(n+1)²%3]` -/
def P16904446222857401845.Spec : Prop :=
  ∀ n, (P16904446222857401845.a n : ℤ) = A068626 (n + 1)

end A068626

/-! ## A068626.P11004527355636352279

`∑[((n+1)^3)%(3*(n+1))]`
-/

namespace A068626.P11004527355636352279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3 % (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068626.P11004527355636352279

namespace A068626

/-- `∑[((n+1)^3)%(3*(n+1))]` -/
def P11004527355636352279.Spec : Prop :=
  ∀ n, (P11004527355636352279.a n : ℤ) = A068626 (n + 1)

end A068626

/-! ## A068626.P14096625373476833834

`∑[C(n+1, n*gcd(3, n+1))]`
-/

namespace A068626.P14096625373476833834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (n * Nat.gcd 3 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068626.P14096625373476833834

namespace A068626

/-- `∑[C(n+1, n*gcd(3, n+1))]` -/
def P14096625373476833834.Spec : Prop :=
  ∀ n, (P14096625373476833834.a n : ℤ) = A068626 (n + 1)

end A068626

/-! ## A068626.P6299930400981132368

`∑[abs((n+1)*((n+2)%3-1))]`
-/

namespace A068626.P6299930400981132368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * ((((n + 2) % 3 : ℕ) : ℤ) - 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068626.P6299930400981132368

namespace A068626

/-- `∑[abs((n+1)*((n+2)%3-1))]` -/
def P6299930400981132368.Spec : Prop :=
  ∀ n, P6299930400981132368.a n = A068626 (n + 1)

end A068626

/-! ## A068626.P17749858588307376084

`∑[C((n+1)/3^val(n+1, 3), n)]`
-/

namespace A068626.P17749858588307376084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068626.P17749858588307376084

namespace A068626

/-- `∑[C((n+1)/3^val(n+1, 3), n)]` -/
def P17749858588307376084.Spec : Prop :=
  ∀ n, (P17749858588307376084.a n : ℤ) = A068626 (n + 1)

end A068626

/-! ## A068626.P17769846932965023395

`∑[(n+1)*∑[floor(a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A068626.P17769846932965023395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068626.P17769846932965023395

namespace A068626

/-- `∑[(n+1)*∑[floor(a(n-3))]]` -/
def P17769846932965023395.Spec : Prop :=
  ∀ n, P17769846932965023395.a n = A068626 (n + 1)

end A068626

/-! ## A068626.P12552811751613148922

`∑[(n+1)*∑[a(n-3)^3]]` with `a(0)=1, a(1)=0, a(2)=-1`
-/

namespace A068626.P12552811751613148922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n f2 =>
  f2 (n - 3) ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068626.P12552811751613148922

namespace A068626

/-- `∑[(n+1)*∑[a(n-3)^3]]` -/
def P12552811751613148922.Spec : Prop :=
  ∀ n, P12552811751613148922.a n = A068626 (n + 1)

end A068626

/-! ## A068626.P7794164507812808639

`∑[(n+1)/(n-2)*a(n-3)]` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A068626.P7794164507812808639
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 0] fun n f1 =>
  (n + 1 : ℚ) / ((n : ℤ) - 2 : ℚ) * f1 (n - 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068626.P7794164507812808639

namespace A068626

/-- `∑[(n+1)/(n-2)*a(n-3)]` -/
def P7794164507812808639.Spec : Prop :=
  ∀ n, P7794164507812808639.a n = (A068626 (n + 1) : ℚ)

end A068626

/-! ## A068626.P9168565432355889918

`∑[(n+1)*C(a(n-3), n-2)]` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A068626.P9168565432355889918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n f1 =>
  (n + 1) * Nat.choose (f1 (n - 3)) ((n : ℤ) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068626.P9168565432355889918

namespace A068626

/-- `∑[(n+1)*C(a(n-3), n-2)]` -/
def P9168565432355889918.Spec : Prop :=
  ∀ n, (P9168565432355889918.a n : ℤ) = A068626 (n + 1)

end A068626

/-! ## A068626.P16255790562464284152

`∑[(n+1)*∑[a(n-1)-a(n-2)]²]` with `a(0)=1, a(1)=0`
-/

namespace A068626.P16255790562464284152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068626.P16255790562464284152

namespace A068626

/-- `∑[(n+1)*∑[a(n-1)-a(n-2)]²]` -/
def P16255790562464284152.Spec : Prop :=
  ∀ n, P16255790562464284152.a n = A068626 (n + 1)

end A068626

/-! ## A068626.P4151364833570920312

`∑[A091684(n+1)]`
-/

namespace A068626.P4151364833570920312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068626.P4151364833570920312

namespace A068626

/-- `∑[A091684(n+1)]` -/
def P4151364833570920312.Spec : Prop :=
  ∀ n, P4151364833570920312.a n = A068626 (n + 1)

end A068626

/-! ## A068626.P8355324631888132803

`∑[abs(A162397(n+1))]`
-/

namespace A068626.P8355324631888132803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A162397 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068626.P8355324631888132803

namespace A068626

/-- `∑[abs(A162397(n+1))]` -/
def P8355324631888132803.Spec : Prop :=
  ∀ n, P8355324631888132803.a n = A068626 (n + 1)

end A068626

/-! ## A068626.P7278499010524157663

`∑[lcm(n+1, A010892(n))]`
-/

namespace A068626.P7278499010524157663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A010892 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068626.P7278499010524157663

namespace A068626

/-- `∑[lcm(n+1, A010892(n))]` -/
def P7278499010524157663.Spec : Prop :=
  ∀ n, (P7278499010524157663.a n : ℤ) = A068626 (n + 1)

end A068626

/-! ## A068626.P12949809397867727286

`∑[C(A038502(n+1), n)]`
-/

namespace A068626.P12949809397867727286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A038502 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068626.P12949809397867727286

namespace A068626

/-- `∑[C(A038502(n+1), n)]` -/
def P12949809397867727286.Spec : Prop :=
  ∀ n, (P12949809397867727286.a n : ℤ) = A068626 (n + 1)

end A068626

/-! ## A068626.P1312071117264536999

`∑[(n+1)*A049347(n)²]`
-/

namespace A068626.P1312071117264536999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A049347 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068626.P1312071117264536999

namespace A068626

/-- `∑[(n+1)*A049347(n)²]` -/
def P1312071117264536999.Spec : Prop :=
  ∀ n, P1312071117264536999.a n = A068626 (n + 1)

end A068626

/-! ## A068626.P7635592338302646094

`∑[(n+1)*A117441(n)²]`
-/

namespace A068626.P7635592338302646094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A117441 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068626.P7635592338302646094

namespace A068626

/-- `∑[(n+1)*A117441(n)²]` -/
def P7635592338302646094.Spec : Prop :=
  ∀ n, P7635592338302646094.a n = A068626 (n + 1)

end A068626

/-!
# A068627: a(0) = 0, a(n) = a(n-1) + n if n does not divide a(n-1). a(n) = a(n-1) - n if n divides a(n-1). a(n) = n if a(n-1) = 0.

The programs for A068627, the canonical program `A068627.P8644752478277452911` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068627 has offset 0).

The definition of A068627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068627.P8644752478277452911

`∑[n*(2-gcd(n, xor(3, n)))]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A068627

/-- `∑[n*(2-gcd(n, xor(3, n)))]` -/
def P8644752478277452911.Spec : Prop :=
  ∀ n, P8644752478277452911.a n = A068627 n

theorem P8644752478277452911.correct : P8644752478277452911.Spec := by
  intro n
  simp only [A068627]

end A068627

/-! ## A068627.P12891784865806868302

`∑[n/Δ[A008611(n)]^A000124(n)]`
-/

namespace A068627.P12891784865806868302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (f2 (n + 1) - f2 n : ℚ) ^ (A000124 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068627.P12891784865806868302

namespace A068627

/-- `∑[n/Δ[A008611(n)]^A000124(n)]` -/
def P12891784865806868302.Spec : Prop :=
  ∀ n, P12891784865806868302.a n = (A068627 n : ℚ)

end A068627

/-! ## A068627.P10896557960098920469

`∑[n/Δ[A008611(n)]^A028242(n)]`
-/

namespace A068627.P10896557960098920469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (f2 (n + 1) - f2 n : ℚ) ^ (A028242 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068627.P10896557960098920469

namespace A068627

/-- `∑[n/Δ[A008611(n)]^A028242(n)]` -/
def P10896557960098920469.Spec : Prop :=
  ∀ n, P10896557960098920469.a n = (A068627 n : ℚ)

end A068627

/-! ## A068627.P8607235085047013071

`∑[n*A309873(A174562(n+1))]`
-/

namespace A068627.P8607235085047013071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A309873 (A174562 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068627.P8607235085047013071

namespace A068627

/-- `∑[n*A309873(A174562(n+1))]` -/
def P8607235085047013071.Spec : Prop :=
  ∀ n, P8607235085047013071.a n = A068627 n

end A068627

/-! ## A068627.P12032336255925238283

`∑[A055643(n)/A309873(A174562(n+1))]`
-/

namespace A068627.P12032336255925238283
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055643 n : ℚ) / (A309873 (A174562 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068627.P12032336255925238283

namespace A068627

/-- `∑[A055643(n)/A309873(A174562(n+1))]` -/
def P12032336255925238283.Spec : Prop :=
  ∀ n, P12032336255925238283.a n = (A068627 n : ℚ)

end A068627

/-!
# A068628: Numbers occurring twice in A068627.

The programs for A068628, the canonical program `A068628.P15942527218144271604` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068628 has offset 1).

The definition of A068628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068628.P10586753027837842378

`ogf((60x+36x^2)/(1-3x+3x^2-x^3))`
-/

namespace A068628.P10586753027837842378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 60, 36] [1, -3, 3, -1] n

end

end A068628.P10586753027837842378

namespace A068628

/-- `ogf((60x+36x^2)/(1-3x+3x^2-x^3))` -/
def P10586753027837842378.Spec : Prop :=
  ∀ n, P10586753027837842378.a n = A068628 (n + 1)

end A068628

/-! ## A068628.P15942527218144271604

`12*(4*(n+1)-3)*n`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A068628

/-- `12*(4*(n+1)-3)*n` -/
def P15942527218144271604.Spec : Prop :=
  ∀ n, P15942527218144271604.a n = A068628 (n + 1)

theorem P15942527218144271604.correct : P15942527218144271604.Spec := by
  intro n
  simp only [A068628, Nat.add_sub_cancel]

end A068628

/-! ## A068628.P5254663747874582733

`lcm(12*n, 12*n+3)`
-/

namespace A068628.P5254663747874582733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (12 * n) (12 * n + 3)

end

end A068628.P5254663747874582733

namespace A068628

/-- `lcm(12*n, 12*n+3)` -/
def P5254663747874582733.Spec : Prop :=
  ∀ n, (P5254663747874582733.a n : ℤ) = A068628 (n + 1)

end A068628

/-! ## A068628.P7528984461357136166

`record[3*n*(xor(3, n)-2)]`
-/

namespace A068628.P7528984461357136166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * ((Nat.xor 3 n : ℤ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068628.P7528984461357136166

namespace A068628

/-- `record[3*n*(xor(3, n)-2)]` -/
def P7528984461357136166.Spec : Prop :=
  ∀ n, P7528984461357136166.a n = A068628 (n + 1)

end A068628

/-! ## A068628.P14904686188849249937

`8*n*or(3, 12*n)/2`
-/

namespace A068628.P14904686188849249937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * n * Nat.lor 3 (12 * n) : ℚ) / 2

end

end A068628.P14904686188849249937

namespace A068628

/-- `8*n*or(3, 12*n)/2` -/
def P14904686188849249937.Spec : Prop :=
  ∀ n, P14904686188849249937.a n = (A068628 (n + 1) : ℚ)

end A068628

/-! ## A068628.P3356910296515582072

`A016994(n)-(n+1)²`
-/

namespace A068628.P3356910296515582072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016994 n - ((n + 1) ^ 2 : ℤ)

end

end A068628.P3356910296515582072

namespace A068628

/-- `A016994(n)-(n+1)²` -/
def P3356910296515582072.Spec : Prop :=
  ∀ n, P3356910296515582072.a n = A068628 (n + 1)

theorem P3356910296515582072.correct : P3356910296515582072.Spec := by
  intro n
  simp only [A068628, Nat.add_sub_cancel, A068628.P3356910296515582072.a, A068628.P15942527218144271604.a, A016994, A016994.P4148273372767867206.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068628

/-! ## A068628.P3324179620651909849

`A016993(n)²-(n+1)²`
-/

namespace A068628.P3324179620651909849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n ^ 2 - ((n + 1) ^ 2 : ℤ)

end

end A068628.P3324179620651909849

namespace A068628

/-- `A016993(n)²-(n+1)²` -/
def P3324179620651909849.Spec : Prop :=
  ∀ n, P3324179620651909849.a n = A068628 (n + 1)

theorem P3324179620651909849.correct : P3324179620651909849.Spec := by
  intro n
  simp only [A068628, Nat.add_sub_cancel, A068628.P3324179620651909849.a, A068628.P15942527218144271604.a, A016993, A016993.P16783903167149097063.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068628

/-! ## A068628.P5336916043757256808

`A065532(n)+A017533(n)`
-/

namespace A068628.P5336916043757256808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065532 n + A017533 n

end

end A068628.P5336916043757256808

namespace A068628

/-- `A065532(n)+A017533(n)` -/
def P5336916043757256808.Spec : Prop :=
  ∀ n, P5336916043757256808.a n = A068628 (n + 1)

theorem P5336916043757256808.correct : P5336916043757256808.Spec := by
  intro n
  simp only [A068628, Nat.add_sub_cancel, A068628.P5336916043757256808.a, A068628.P15942527218144271604.a, A017533, A017533.P146508076441825746.a, A065532, A065532.P11573010565156108803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068628

/-! ## A068628.P13959766508373959586

`A158463(n)+A016922(n)`
-/

namespace A068628.P13959766508373959586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158463 n + A016922 n

end

end A068628.P13959766508373959586

namespace A068628

/-- `A158463(n)+A016922(n)` -/
def P13959766508373959586.Spec : Prop :=
  ∀ n, P13959766508373959586.a n = A068628 (n + 1)

theorem P13959766508373959586.correct : P13959766508373959586.Spec := by
  intro n
  simp only [A068628, Nat.add_sub_cancel, A068628.P13959766508373959586.a, A068628.P15942527218144271604.a, A016922, A016922.P12735287873668454303.a, A158463, A158463.P7007655217700314725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068628

/-! ## A068628.P11182686569849548490

`A017078(n)-A082041(n)`
-/

namespace A068628.P11182686569849548490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017078 n - A082041 n

end

end A068628.P11182686569849548490

namespace A068628

/-- `A017078(n)-A082041(n)` -/
def P11182686569849548490.Spec : Prop :=
  ∀ n, P11182686569849548490.a n = A068628 (n + 1)

theorem P11182686569849548490.correct : P11182686569849548490.Spec := by
  intro n
  simp only [A068628, Nat.add_sub_cancel, A068628.P11182686569849548490.a, A068628.P15942527218144271604.a, A017078, A017078.P592742087923068107.a, A082041, A082041.P4769740866210431926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068628

/-! ## A068628.P17065485932544922746

`A174333(n)-A161935(n)`
-/

namespace A068628.P17065485932544922746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174333 n - A161935 n

end

end A068628.P17065485932544922746

namespace A068628

/-- `A174333(n)-A161935(n)` -/
def P17065485932544922746.Spec : Prop :=
  ∀ n, P17065485932544922746.a n = A068628 (n + 1)

theorem P17065485932544922746.correct : P17065485932544922746.Spec := by
  intro n
  simp only [A068628, Nat.add_sub_cancel, A068628.P17065485932544922746.a, A068628.P15942527218144271604.a, A161935, A161935.P14335868775891492350.a, A174333, A174333.P12370012609681175695.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068628

/-! ## A068628.P3773127712067555136

`A016838(n)+A016910(n)-A016754(n+1)`
-/

namespace A068628.P3773127712067555136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016838 n + (A016910 n - A016754 (n + 1))

end

end A068628.P3773127712067555136

namespace A068628

/-- `A016838(n)+A016910(n)-A016754(n+1)` -/
def P3773127712067555136.Spec : Prop :=
  ∀ n, P3773127712067555136.a n = A068628 (n + 1)

theorem P3773127712067555136.correct : P3773127712067555136.Spec := by
  intro n
  simp only [A068628, Nat.add_sub_cancel, A068628.P3773127712067555136.a, A068628.P15942527218144271604.a, A016754, A016754.P2987865549988322084.a, A016838, A016838.P1946869396513697861.a, A016910, A016910.P3732514033866141413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068628

/-! ## A068628.P9389018471456819027

`A396290(2*n)+2*n`
-/

namespace A068628.P9389018471456819027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396290 (2 * n) + (2 * n : ℤ)

end

end A068628.P9389018471456819027

namespace A068628

/-- `A396290(2*n)+2*n` -/
def P9389018471456819027.Spec : Prop :=
  ∀ n, P9389018471456819027.a n = A068628 (n + 1)

theorem P9389018471456819027.correct : P9389018471456819027.Spec := by
  intro n
  simp only [A068628, Nat.add_sub_cancel, A068628.P9389018471456819027.a, A068628.P15942527218144271604.a, A396290, A396290.P13947745858028629092.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068628

/-! ## A068628.P17850844753404060434

`A135453(2*n)+A008594(n)`
-/

namespace A068628.P17850844753404060434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135453 (2 * n) + A008594 n

end

end A068628.P17850844753404060434

namespace A068628

/-- `A135453(2*n)+A008594(n)` -/
def P17850844753404060434.Spec : Prop :=
  ∀ n, P17850844753404060434.a n = A068628 (n + 1)

theorem P17850844753404060434.correct : P17850844753404060434.Spec := by
  intro n
  simp only [A068628, Nat.add_sub_cancel, A068628.P17850844753404060434.a, A068628.P15942527218144271604.a, A008594, A008594.P9877215682521385096.a, A135453, A135453.P11012822800042862878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068628

/-! ## A068628.P16344283340226470335

`A033577(2*n)-(2*n+1)`
-/

namespace A068628.P16344283340226470335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033577 (2 * n) - (2 * n + 1 : ℤ)

end

end A068628.P16344283340226470335

namespace A068628

/-- `A033577(2*n)-(2*n+1)` -/
def P16344283340226470335.Spec : Prop :=
  ∀ n, P16344283340226470335.a n = A068628 (n + 1)

theorem P16344283340226470335.correct : P16344283340226470335.Spec := by
  intro n
  simp only [A068628, Nat.add_sub_cancel, A068628.P16344283340226470335.a, A068628.P15942527218144271604.a, A033577, A033577.P191086975953029494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068628

/-! ## A068628.P17506060412125076462

`8*n*A016945(2*n)/2`
-/

namespace A068628.P17506060412125076462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * n : ℤ) * A016945 (2 * n) : ℚ) / 2

end

end A068628.P17506060412125076462

namespace A068628

/-- `8*n*A016945(2*n)/2` -/
def P17506060412125076462.Spec : Prop :=
  ∀ n, P17506060412125076462.a n = (A068628 (n + 1) : ℚ)

theorem P17506060412125076462.correct : P17506060412125076462.Spec := by
  intro n
  simp only [A068628, Nat.add_sub_cancel, A068628.P17506060412125076462.a, A068628.P15942527218144271604.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068628

/-! ## A068628.P4944911516640544080

`A152746(2*n)+A008606(n)`
-/

namespace A068628.P4944911516640544080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152746 (2 * n) + A008606 n

end

end A068628.P4944911516640544080

namespace A068628

/-- `A152746(2*n)+A008606(n)` -/
def P4944911516640544080.Spec : Prop :=
  ∀ n, P4944911516640544080.a n = A068628 (n + 1)

theorem P4944911516640544080.correct : P4944911516640544080.Spec := by
  intro n
  simp only [A068628, Nat.add_sub_cancel, A068628.P4944911516640544080.a, A068628.P15942527218144271604.a, A008606, A008606.P331422733914118461.a, A152746, A152746.P17154373183025308854.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068628

/-! ## A068628.P4860883281469098035

`A195824(n)+A049598(2*n)`
-/

namespace A068628.P4860883281469098035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195824 n + A049598 (2 * n)

end

end A068628.P4860883281469098035

namespace A068628

/-- `A195824(n)+A049598(2*n)` -/
def P4860883281469098035.Spec : Prop :=
  ∀ n, P4860883281469098035.a n = A068628 (n + 1)

theorem P4860883281469098035.correct : P4860883281469098035.Spec := by
  intro n
  simp only [A068628, Nat.add_sub_cancel, A068628.P4860883281469098035.a, A068628.P15942527218144271604.a, A049598, A049598.P15670095646145140517.a, A195824, A195824.P11133924317718936141.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068628

/-!
# A068629: a(1) = 1. a(n) = n*a(n-1) if gcd(n,a(n-1)) = 1, a(n-1)/n if n divides a(n-1), otherwise a(n) = a(n-1).

The programs for A068629, there is no canonical definition to state claims against.
-/

/-! ## A068629.P16085171086448824768

`A008339(A077168(n+1))`
-/

namespace A068629.P16085171086448824768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008339 (A077168 (n + 1)).toNat

end

end A068629.P16085171086448824768

/-! ## A068629.P11456953903913069563

`A008339(A065673(n+2))`
-/

namespace A068629.P11456953903913069563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008339 (A065673 (n + 2)).toNat

end

end A068629.P11456953903913069563

/-! ## A068629.P17851913557886874892

`Δ[A028310(∑[A008339(n+1)])]`
-/

namespace A068629.P17851913557886874892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008339 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068629.P17851913557886874892

/-! ## A068629.P5120209781453866514

`A077139(A004896(n+2))`
-/

namespace A068629.P5120209781453866514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077139 (A004896 (n + 2)).toNat

end

end A068629.P5120209781453866514

/-! ## A068629.P6177804653324128863

`A077139(A004907(n+2))`
-/

namespace A068629.P6177804653324128863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077139 (A004907 (n + 2)).toNat

end

end A068629.P6177804653324128863

/-!
# A068631: a(1) = 4; a(n) = smallest composite number different from the previous ones such that the sum of all the terms is a composite number.

The programs for A068631, there is no canonical definition to state claims against.
-/

/-! ## A068631.P15275089266104331255

`A181095(p?[A066182(n+1)+4])`
-/

namespace A068631.P15275089266104331255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181095 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068631.P15275089266104331255

/-! ## A068631.P2490261469478755018

`A181095(p?[A020705(A066182(n+1))])`
-/

namespace A068631.P2490261469478755018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A066182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181095 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068631.P2490261469478755018

/-!
# A068633: a(1) = 11 by convention; for n > 1, if n = p^a*q^b... then a(n) = concatenate(p,a,q,b,...).

The programs for A068633, there is no canonical definition to state claims against.
-/

/-! ## A068633.P13146066707991519125

`A299400(floor(A064988(n+1)+acot(n)))`
-/

namespace A068633.P13146066707991519125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299400 ⌊(A064988 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A068633.P13146066707991519125

/-! ## A068633.P14865192835942530586

`A299400(A064988(n+1)+A000007(n))`
-/

namespace A068633.P14865192835942530586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299400 (A064988 (n + 1) + A000007 n).toNat

end

end A068633.P14865192835942530586

/-! ## A068633.P16506193786228188063

`A299400(A076710(n)+A064988(n+1))`
-/

namespace A068633.P16506193786228188063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299400 (A076710 n + A064988 (n + 1)).toNat

end

end A068633.P16506193786228188063

/-! ## A068633.P7289515621236244433

`A299400(A288549(n)+A064988(n+1))`
-/

namespace A068633.P7289515621236244433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299400 (A288549 (n + 10) + A064988 (n + 1)).toNat

end

end A068633.P7289515621236244433

/-! ## A068633.P6650552540891986846

`A299400(A271769(n+9)+A064988(n+1))`
-/

namespace A068633.P6650552540891986846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299400 (A271769 (n + 9) + A064988 (n + 1)).toNat

end

end A068633.P6650552540891986846

/-!
# A068634: a(n) = lcm(n, R(n)), where R(n) (A004086) = digit reversal of n.

The programs for A068634, there is no canonical definition to state claims against.
-/

/-! ## A068634.P16327083524476979931

`lcm(n+1, A004086(n+1))`
-/

namespace A068634.P16327083524476979931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A004086 (n + 1))

end

end A068634.P16327083524476979931

/-! ## A068634.P7052509066464360824

`A055483(n+1)*A070246(n+1)`
-/

namespace A068634.P7052509066464360824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (n + 1) * A070246 (n + 1)

end

end A068634.P7052509066464360824

/-! ## A068634.P16257085787534682993

`A004086(n+1)*A337927(n+1)`
-/

namespace A068634.P16257085787534682993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1) * A337927 (n + 1)

end

end A068634.P16257085787534682993

/-! ## A068634.P3189064153526526671

`A061205(n+1)/A055483(n+1)`
-/

namespace A068634.P3189064153526526671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061205 (n + 1) : ℚ) / (A055483 (n + 1) : ℚ)

end

end A068634.P3189064153526526671

/-! ## A068634.P14501245737482446267

`lcm(A068636(n+1), A068637(n+1))`
-/

namespace A068634.P14501245737482446267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A068636 (n + 1)) (A068637 (n + 1))

end

end A068634.P14501245737482446267

/-! ## A068634.P7318056783269153260

`(n+1)*A004086(n+1)/A055483(n+1)`
-/

namespace A068634.P7318056783269153260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A004086 (n + 1) : ℚ) / (A055483 (n + 1) : ℚ))

end

end A068634.P7318056783269153260

/-! ## A068634.P10743646113774107961

`A135020(2*(n+1))*A337927(n+1)`
-/

namespace A068634.P10743646113774107961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (2 * (n + 1)) * A337927 (n + 1)

end

end A068634.P10743646113774107961

/-! ## A068634.P5554795002489019189

`lcm(A135020(2*n+1), A135020(2*(n+1)))`
-/

namespace A068634.P5554795002489019189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A135020 (2 * n + 1)) (A135020 (2 * (n + 1)))

end

end A068634.P5554795002489019189

/-! ## A068634.P8758431397804386812

`(n+1)*A367824(∑[n+1])`
-/

namespace A068634.P8758431397804386812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A367824 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A068634.P8758431397804386812

/-! ## A068634.P6513049696342135302

`lcm(n+1, ratio[A062919(n)])`
-/

namespace A068634.P6513049696342135302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062919 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))

end

end A068634.P6513049696342135302

/-!
# A068635: Smaller of the first twin pair to yield a twin pair chain of length n.

The programs for A068635, there is no canonical definition to state claims against.
-/

/-! ## A068635.P6998547183444867935

`A069179(n+1)-1`
-/

namespace A068635.P6998547183444867935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069179 (n + 1) - 1

end

end A068635.P6998547183444867935

/-!
# A068636: a(n) = Min(n, R(n)), where R(n) (A004086) = digit reversal of n.

The programs for A068636, there is no canonical definition to state claims against.
-/

/-! ## A068636.P10421400033896197509

`A004086(A068637(n+1))`
-/

namespace A068636.P10421400033896197509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A068637 (n + 1)).toNat

end

end A068636.P10421400033896197509

/-! ## A068636.P3370893818103251062

`A056964(n+1)-A068637(n+1)`
-/

namespace A068636.P3370893818103251062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (n + 1) - A068637 (n + 1)

end

end A068636.P3370893818103251062

/-! ## A068636.P17866278841982257134

`A061205(n+1)/A068637(n+1)`
-/

namespace A068636.P17866278841982257134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061205 (n + 1) : ℚ) / (A068637 (n + 1) : ℚ)

end

end A068636.P17866278841982257134

/-! ## A068636.P11089334846364420703

`xor(A068637(n+1), A256756(n+1))`
-/

namespace A068636.P11089334846364420703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A068637 (n + 1)) (A256756 (n + 1))

end

end A068636.P11089334846364420703

/-! ## A068636.P17185747612975207310

`gcd(A068634(n+1), A103168(A068637(n+1)))`
-/

namespace A068636.P17185747612975207310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068634 (n + 1)) (A103168 (A068637 (n + 1)).toNat)

end

end A068636.P17185747612975207310

/-! ## A068636.P15448262085597685758

`A135020(2*A068637(n+1))`
-/

namespace A068636.P15448262085597685758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (2 * A068637 (n + 1)).toNat

end

end A068636.P15448262085597685758

/-! ## A068636.P15409194887315246631

`A135020(A068637(n+1)+A068637(n+1))`
-/

namespace A068636.P15409194887315246631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (A068637 (n + 1) + A068637 (n + 1)).toNat

end

end A068636.P15409194887315246631

/-! ## A068636.P10355624680122794243

`A004093(5*A068637(n+1))`
-/

namespace A068636.P10355624680122794243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (5 * A068637 (n + 1)).toNat

end

end A068636.P10355624680122794243

/-! ## A068636.P2407571844877856591

`A103168(10*A068637(n+1))`
-/

namespace A068636.P2407571844877856591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103168 (10 * A068637 (n + 1)).toNat

end

end A068636.P2407571844877856591

/-! ## A068636.P11024603756598674382

`n+1-A193581(n+1)%A256824(A227362(n)+1)`
-/

namespace A068636.P11024603756598674382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A193581 (n + 1)) (A256824 (A227362 n + 1).toNat)

end

end A068636.P11024603756598674382

/-! ## A068636.P10635862419185004702

`A004185(A051022(n+1))`
-/

namespace A068636.P10635862419185004702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A051022 (n + 1)).toNat

end

end A068636.P10635862419185004702

/-! ## A068636.P10669583515757949150

`A004185(A000188(∑[A005408(n)]))`
-/

namespace A068636.P10669583515757949150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A000188 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A068636.P10669583515757949150

/-! ## A068636.P3837772342104274517

`A004185(A000196(∑[A005408(n)]))`
-/

namespace A068636.P3837772342104274517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A068636.P3837772342104274517

/-! ## A068636.P514115556417708485

`A004185(A000196(Δ[A000330(n)]))`
-/

namespace A068636.P514115556417708485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A000196 (f1 (n + 1) - f1 n).toNat).toNat

end

end A068636.P514115556417708485

/-!
# A068637: a(n) = Max(n, R(n)), where R(n) (A004086) = digit reversal of n.

The programs for A068637, there is no canonical definition to state claims against.
-/

/-! ## A068637.P5363368220090864508

`A056964(n+1)-A068636(n+1)`
-/

namespace A068637.P5363368220090864508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (n + 1) - A068636 (n + 1)

end

end A068637.P5363368220090864508

/-! ## A068637.P1592080361272172375

`A061205(n+1)/A068636(n+1)`
-/

namespace A068637.P1592080361272172375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061205 (n + 1) : ℚ) / (A068636 (n + 1) : ℚ)

end

end A068637.P1592080361272172375

/-! ## A068637.P18417308851672308777

`xor(A068636(n+1), A256756(n+1))`
-/

namespace A068637.P18417308851672308777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A068636 (n + 1)) (A256756 (n + 1))

end

end A068637.P18417308851672308777

/-! ## A068637.P1461710381052712647

`A004086(n+1)+n+1-A068636(n+1)`
-/

namespace A068637.P1461710381052712647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1) + ((n + 1 : ℤ) - A068636 (n + 1))

end

end A068637.P1461710381052712647

/-! ## A068637.P3316764724384749447

`A056964(A000027(n+1))+A001489(A068636(n+1))`
-/

namespace A068637.P3316764724384749447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A000027 (n + 1)).toNat + A001489 (A068636 (n + 1)).toNat

end

end A068637.P3316764724384749447

/-! ## A068637.P9925340185953205704

`A000196(A004186(n+1)²)`
-/

namespace A068637.P9925340185953205704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A004186 (n + 1) ^ 2).toNat

end

end A068637.P9925340185953205704

/-! ## A068637.P10450993507811373676

`A137734(A004186(n+1)²)`
-/

namespace A068637.P10450993507811373676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A004186 (n + 1) ^ 2).toNat

end

end A068637.P10450993507811373676

/-! ## A068637.P14800242840204604392

`A021913(n²)+A004186(n+1)`
-/

namespace A068637.P14800242840204604392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (n ^ 2) + A004186 (n + 1)

end

end A068637.P14800242840204604392

/-! ## A068637.P5993177149439017077

`A004186(A000196(∑[A005408(n)]))`
-/

namespace A068637.P5993177149439017077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A068637.P5993177149439017077

/-! ## A068637.P14449769025358507050

`A004186(A000196(Δ[A000330(n)]))`
-/

namespace A068637.P14449769025358507050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A000196 (f1 (n + 1) - f1 n).toNat).toNat

end

end A068637.P14449769025358507050

/-!
# A068638: a(1) = 1, a(n) = smallest distinct composite number such that a(n) + a(k) is a composite number for all k = 1 to n.

The programs for A068638, there is no canonical definition to state claims against.
-/

/-! ## A068638.P2980126300732335223

`A025044(n+2)`
-/

namespace A068638.P2980126300732335223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025044 (n + 2)

end

end A068638.P2980126300732335223

/-! ## A068638.P5885437567882064637

`record[A025044(A080513(A029579(n)))]`
-/

namespace A068638.P5885437567882064637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025044 (A080513 (A029579 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068638.P5885437567882064637

/-! ## A068638.P13289206143037480584

`record[A025044(A133310(A133310(n)))]`
-/

namespace A068638.P13289206143037480584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025044 (A133310 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068638.P13289206143037480584

/-! ## A068638.P4748492466493271778

`record[A025044(A008620(A092486(n)))]`
-/

namespace A068638.P4748492466493271778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025044 (A008620 (A092486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068638.P4748492466493271778

/-! ## A068638.P12880778357167523819

`record[A025044(A286543(A008619(n)))]`
-/

namespace A068638.P12880778357167523819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025044 (A286543 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068638.P12880778357167523819

/-! ## A068638.P1790934326964263807

`record[A025044(A286543(A008620(n)))]`
-/

namespace A068638.P1790934326964263807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025044 (A286543 (A008620 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068638.P1790934326964263807

/-! ## A068638.P13405993476304309302

`record[A025044(A181440(A020986(n)))]`
-/

namespace A068638.P13405993476304309302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025044 (A181440 (A020986 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068638.P13405993476304309302

/-!
# A068639: a(0) = 0, a(n) = a(n-1) + (-1)^p(n) for n >= 1, where p(n) = highest power of 2 dividing n.

The programs for A068639, the canonical program `A068639.P2559799445806666263` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068639 has offset 0).

The definition of A068639 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068639.P2559799445806666263

`ceil(n/2)-a(n-ceil(n/2))` with `a(0)=0, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A068639

/-- `ceil(n/2)-a(n-ceil(n/2))` -/
def P2559799445806666263.Spec : Prop :=
  ∀ n, P2559799445806666263.a n = A068639 n

theorem P2559799445806666263.correct : P2559799445806666263.Spec := by
  intro n
  simp only [A068639]

end A068639

/-! ## A068639.P12717333284761374874

`1/2*(A050292(n)+A065359(n))`
-/

namespace A068639.P12717333284761374874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A050292 n + A065359 n : ℚ)

end

end A068639.P12717333284761374874

namespace A068639

/-- `1/2*(A050292(n)+A065359(n))` -/
def P12717333284761374874.Spec : Prop :=
  ∀ n, P12717333284761374874.a n = (A068639 n : ℚ)

end A068639

/-! ## A068639.P9697433955653890918

`1-∑[-a(∑[n]%n)]` with `a(0)=1`
-/

namespace A068639.P9697433955653890918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068639.P9697433955653890918

namespace A068639

/-- `1-∑[-a(∑[n]%n)]` -/
def P9697433955653890918.Spec : Prop :=
  ∀ n, P9697433955653890918.a n = A068639 n

end A068639

/-! ## A068639.P11314044312975086104

`∑[(and(n, -n)+1)%3-1]`
-/

namespace A068639.P11314044312975086104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ)) + 1) 3 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068639.P11314044312975086104

namespace A068639

/-- `∑[(and(n, -n)+1)%3-1]` -/
def P11314044312975086104.Spec : Prop :=
  ∀ n, P11314044312975086104.a n = A068639 n

end A068639

/-! ## A068639.P9855694988954341531

`∑[(xor(n, -n)-1)%3+1]`
-/

namespace A068639.P9855694988954341531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) (-(n : ℤ)) - 1) 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068639.P9855694988954341531

namespace A068639

/-- `∑[(xor(n, -n)-1)%3+1]` -/
def P9855694988954341531.Spec : Prop :=
  ∀ n, P9855694988954341531.a n = A068639 n

end A068639

/-! ## A068639.P14525862377285269324

`ceil(n/2-a(floor(n/2)))` with `a(0)=0`
-/

namespace A068639.P14525862377285269324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(n : ℚ) / 2 - (a ⌊(n : ℚ) / 2⌋.toNat : ℚ)⌉

end

end A068639.P14525862377285269324

namespace A068639

/-- `ceil(n/2-a(floor(n/2)))` -/
def P14525862377285269324.Spec : Prop :=
  ∀ n, P14525862377285269324.a n = A068639 n

end A068639

/-! ## A068639.P12614180107399936354

`round(n/2-a(floor(n/2)))` with `a(0)=0`
-/

namespace A068639.P12614180107399936354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((n : ℚ) / 2 - (a ⌊(n : ℚ) / 2⌋.toNat : ℚ))

end

end A068639.P12614180107399936354

namespace A068639

/-- `round(n/2-a(floor(n/2)))` -/
def P12614180107399936354.Spec : Prop :=
  ∀ n, P12614180107399936354.a n = A068639 n

end A068639

/-! ## A068639.P16681430082904801071

`∑[(-a(n-1))^val(n, 2)]` with `a(0)=0`
-/

namespace A068639.P16681430082904801071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (-f1 (n - 1)) ^ SequenceMachineLib.valuation n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068639.P16681430082904801071

namespace A068639

/-- `∑[(-a(n-1))^val(n, 2)]` -/
def P16681430082904801071.Spec : Prop :=
  ∀ n, P16681430082904801071.a n = A068639 n

end A068639

/-! ## A068639.P12271010605061862077

`∑[(-a(floor(n/2)))^(n-1)]` with `a(0)=0`
-/

namespace A068639.P12271010605061862077
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (-f1 ⌊(n : ℚ) / 2⌋.toNat) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068639.P12271010605061862077

namespace A068639

/-- `∑[(-a(floor(n/2)))^(n-1)]` -/
def P12271010605061862077.Spec : Prop :=
  ∀ n, P12271010605061862077.a n = (A068639 n : ℚ)

end A068639

/-! ## A068639.P7013550373197251911

`abs(∑[and(2, and(n, -n)%3)]-n)`
-/

namespace A068639.P7013550373197251911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A068639.P7013550373197251911

namespace A068639

/-- `abs(∑[and(2, and(n, -n)%3)]-n)` -/
def P7013550373197251911.Spec : Prop :=
  ∀ n, P7013550373197251911.a n = A068639 n

end A068639

/-! ## A068639.P4318912395661669761

`n-a(floor(n/2))-floor(n/2)` with `a(0)=0`
-/

namespace A068639.P4318912395661669761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a ⌊(n : ℚ) / 2⌋.toNat - ⌊(n : ℚ) / 2⌋

end

end A068639.P4318912395661669761

namespace A068639

/-- `n-a(floor(n/2))-floor(n/2)` -/
def P4318912395661669761.Spec : Prop :=
  ∀ n, P4318912395661669761.a n = A068639 n

end A068639

/-! ## A068639.P8418170321244421468

`∑[(-1)^val(n+1, 2)]-(-1)^val(n+1, 2)`
-/

namespace A068639.P8418170321244421468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (-1) ^ SequenceMachineLib.valuation (n + 1) 2

end

end A068639.P8418170321244421468

namespace A068639

/-- `∑[(-1)^val(n+1, 2)]-(-1)^val(n+1, 2)` -/
def P8418170321244421468.Spec : Prop :=
  ∀ n, P8418170321244421468.a n = A068639 n

end A068639

/-! ## A068639.P16935087349328899839

`2*A050292(n)-n`
-/

namespace A068639.P16935087349328899839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050292 n - (n : ℤ)

end

end A068639.P16935087349328899839

namespace A068639

/-- `2*A050292(n)-n` -/
def P16935087349328899839.Spec : Prop :=
  ∀ n, P16935087349328899839.a n = A068639 n

end A068639

/-! ## A068639.P2906985629548384551

`n-2*A123087(n)`
-/

namespace A068639.P2906985629548384551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A123087 n

end

end A068639.P2906985629548384551

namespace A068639

/-- `n-2*A123087(n)` -/
def P2906985629548384551.Spec : Prop :=
  ∀ n, P2906985629548384551.a n = A068639 n

end A068639

/-! ## A068639.P18093708854649511424

`∑[abs(A292118(n))-1]`
-/

namespace A068639.P18093708854649511424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292118 n| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068639.P18093708854649511424

namespace A068639

/-- `∑[abs(A292118(n))-1]` -/
def P18093708854649511424.Spec : Prop :=
  ∀ n, P18093708854649511424.a n = A068639 n

end A068639

/-! ## A068639.P15378679813056045995

`∑[and(2, A061393(n))]-n`
-/

namespace A068639.P15378679813056045995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A061393 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A068639.P15378679813056045995

namespace A068639

/-- `∑[and(2, A061393(n))]-n` -/
def P15378679813056045995.Spec : Prop :=
  ∀ n, P15378679813056045995.a n = A068639 n

end A068639

/-! ## A068639.P8691532128356474337

`(n+2*A065359(n))/3`
-/

namespace A068639.P8691532128356474337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) + 2 * A065359 n : ℚ) / 3

end

end A068639.P8691532128356474337

namespace A068639

/-- `(n+2*A065359(n))/3` -/
def P8691532128356474337.Spec : Prop :=
  ∀ n, P8691532128356474337.a n = (A068639 n : ℚ)

end A068639

/-! ## A068639.P12605959394661859120

`∑[2*A285383(n+1)]-n`
-/

namespace A068639.P12605959394661859120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A068639.P12605959394661859120

namespace A068639

/-- `∑[2*A285383(n+1)]-n` -/
def P12605959394661859120.Spec : Prop :=
  ∀ n, P12605959394661859120.a n = A068639 n

end A068639

/-! ## A068639.P14144975723399465924

`A123087(n)+A065359(n)`
-/

namespace A068639.P14144975723399465924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 n + A065359 n

end

end A068639.P14144975723399465924

namespace A068639

/-- `A123087(n)+A065359(n)` -/
def P14144975723399465924.Spec : Prop :=
  ∀ n, P14144975723399465924.a n = A068639 n

end A068639

/-!
# A068640: Define f(n) = 2n+1, a(n) = largest prime of the form f(f(f(...(n))). If no such prime exists then a(n) = 0.

The programs for A068640, there is no canonical definition to state claims against.
-/

/-! ## A068640.P17738836514335107930

`lcm(A089725(n+1), A156707(n+1))`
-/

namespace A068640.P17738836514335107930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A089725 (n + 1)) (A156707 (n + 1))

end

end A068640.P17738836514335107930

/-! ## A068640.P12287354065729945497

`A002471((n+2)²)*A089725(n+1)`
-/

namespace A068640.P12287354065729945497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002471 ((n + 2) ^ 2) * A089725 (n + 1)

end

end A068640.P12287354065729945497

/-! ## A068640.P2505243157189528072

`A089367(n+1)/2*A089725(n+1)`
-/

namespace A068640.P2505243157189528072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089367 (n + 1) : ℚ) / 2 * (A089725 (n + 1) : ℚ)

end

end A068640.P2505243157189528072

/-! ## A068640.P8087316470653775867

`C(A089725(n+1), A001065(2*n+3)²)`
-/

namespace A068640.P8087316470653775867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A089725 (n + 1)).toNat (A001065 (2 * n + 3) ^ 2).toNat

end

end A068640.P8087316470653775867

/-! ## A068640.P5891671807749004169

`A000045(A089367(n+1))*A089725(n+1)`
-/

namespace A068640.P5891671807749004169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A089367 (n + 1)).toNat * A089725 (n + 1)

end

end A068640.P5891671807749004169

/-! ## A068640.P2520556612684926660

`A089725(n+1)*A316864(A089367(n+1)+1)`
-/

namespace A068640.P2520556612684926660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089725 (n + 1) * A316864 (A089367 (n + 1) + 1).toNat

end

end A068640.P2520556612684926660

/-! ## A068640.P11277814004440955584

`A001222(A089026(2*n+3))*A089725(n+1)`
-/

namespace A068640.P11277814004440955584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A089026 (2 * n + 3)).toNat * A089725 (n + 1)

end

end A068640.P11277814004440955584

/-! ## A068640.P14734461771773649339

`A002262(A089367(n+1))*A089725(n+1)*A156707(n+1)²`
-/

namespace A068640.P14734461771773649339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A089367 (n + 1)).toNat * A089725 (n + 1) * A156707 (n + 1) ^ 2

end

end A068640.P14734461771773649339

/-! ## A068640.P4351265460384756387

`A010054(A096892(n+1))*A089725(n+1)`
-/

namespace A068640.P4351265460384756387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A096892 (n + 1)).toNat * A089725 (n + 1)

end

end A068640.P4351265460384756387

/-! ## A068640.P8768911927777599533

`(A002262(A089367(n+1))*A089725(n+1))%A096892(n+1)²`
-/

namespace A068640.P8768911927777599533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002262 (A089367 (n + 1)).toNat * A089725 (n + 1)) (A096892 (n + 1) ^ 2)

end

end A068640.P8768911927777599533

/-!
# A068641: Smallest n-digit palindromic triangular number, or 0 if no such number exists.

The programs for A068641, there is no canonical definition to state claims against.
-/

/-! ## A068641.P9271907234679809318

`C(A068642(n+1)+1, 2)`
-/

namespace A068641.P9271907234679809318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A068642 (n + 1) + 1).toNat 2

end

end A068641.P9271907234679809318

/-! ## A068641.P3058294358848359421

`A000217(A068642(n+1))`
-/

namespace A068641.P3058294358848359421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A068642 (n + 1)).toNat

end

end A068641.P3058294358848359421

/-! ## A068641.P8811960570251097246

`A000217(record[A068642(comp[10*n])])`
-/

namespace A068641.P8811960570251097246
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068642 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A068641.P8811960570251097246

/-! ## A068641.P14166377855014163204

`A004158(record[A068642(n+1)])`
-/

namespace A068641.P14166377855014163204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004158 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A068641.P14166377855014163204

/-!
# A068642: Index of the smallest n-digit palindromic triangular number, or 0 if no such number exists.

The programs for A068642, there is no canonical definition to state claims against.
-/

/-! ## A068642.P17119684325270910563

`floor(sqrt(2*A068641(n+1)))`
-/

namespace A068642.P17119684325270910563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A068641 (n + 1))

end

end A068642.P17119684325270910563

/-!
# A068643: Largest n-digit palindromic triangular number, or 0 if no such number exists.

The programs for A068643, there is no canonical definition to state claims against.
-/

/-! ## A068643.P175608582832493330

`A000217(A068644(n+1))`
-/

namespace A068643.P175608582832493330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A068644 (n + 1)).toNat

end

end A068643.P175608582832493330

/-! ## A068643.P4230089398622872753

`A000217(record[A068644(comp[10*n])])`
-/

namespace A068643.P4230089398622872753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068644 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A068643.P4230089398622872753

/-! ## A068643.P11343633232406220766

`A000217(A008509(∑[A054263(n+1)]))`
-/

namespace A068643.P11343633232406220766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008509 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A068643.P11343633232406220766

/-!
# A068644: Index of the largest n-digit palindromic triangular number, or 0 if no such number exists.

The programs for A068644, there is no canonical definition to state claims against.
-/

/-! ## A068644.P4425876546091108652

`A008509(∑[A054263(n+1)]%A068643(2*n+5))`
-/

namespace A068644.P4425876546091108652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008509 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A068643 (2 * n + 5))).toNat

end

end A068644.P4425876546091108652

/-!
# A068652: Numbers such that every cyclic permutation is a prime.

The programs for A068652, there is no canonical definition to state claims against.
-/

/-! ## A068652.P5654759777131132715

`∪[A022011(n+1), A293663(n+1)]`
-/

namespace A068652.P5654759777131132715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068652.P5654759777131132715

/-! ## A068652.P5884882252032763148

`∪[A022545(n+1), A293663(n+1)]`
-/

namespace A068652.P5884882252032763148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068652.P5884882252032763148

/-! ## A068652.P10425544980930346459

`∪[A027569(n+1), A293663(n+1)]`
-/

namespace A068652.P10425544980930346459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068652.P10425544980930346459

/-! ## A068652.P7482186881565110738

`∪[A213647(n+1), A293663(n+1)]`
-/

namespace A068652.P7482186881565110738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068652.P7482186881565110738

/-! ## A068652.P16016697205031272076

`∪[A257127(n+1), A293663(n+1)]`
-/

namespace A068652.P16016697205031272076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068652.P16016697205031272076

/-! ## A068652.P8263772856667380836

`∪[A257129(n+1), A293663(n+1)]`
-/

namespace A068652.P8263772856667380836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068652.P8263772856667380836

/-! ## A068652.P10853724270875420273

`∪[A257131(n+1), A293663(n+1)]`
-/

namespace A068652.P10853724270875420273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068652.P10853724270875420273

/-! ## A068652.P14764698690404647122

`∪[A293663(n+1), A347849(n+1)]`
-/

namespace A068652.P14764698690404647122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068652.P14764698690404647122

/-! ## A068652.P4554175047156855102

`∪[A293663(n+1), A358155(n+1)]`
-/

namespace A068652.P4554175047156855102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068652.P4554175047156855102

/-! ## A068652.P3928836877845322106

`∪[A293663(n+1), A374238(n+1)]`
-/

namespace A068652.P3928836877845322106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068652.P3928836877845322106

/-!
# A068653: Composite numbers such that every cyclic shift (other than the number itself) gives a prime.

The programs for A068653, there is no canonical definition to state claims against.
-/

/-! ## A068653.P2074666878141692489

`A225193(A256577(n)+1)`
-/

namespace A068653.P2074666878141692489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225193 (A256577 n + 1).toNat

end

end A068653.P2074666878141692489

/-! ## A068653.P11202054806551405000

`A225193(A352464(n+1))`
-/

namespace A068653.P11202054806551405000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225193 (A352464 (n + 1)).toNat

end

end A068653.P11202054806551405000

/-! ## A068653.P10392103194045091769

`A225193(A375759(n+1))`
-/

namespace A068653.P10392103194045091769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225193 (A375759 (n + 1)).toNat

end

end A068653.P10392103194045091769

/-! ## A068653.P6113099486666395600

`A225193(A274846(n+2))`
-/

namespace A068653.P6113099486666395600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225193 (A274846 (n + 2)).toNat

end

end A068653.P6113099486666395600

/-!
# A068654: Prime numbers such that every cyclic permutation (other than the number itself) is composite.

The programs for A068654, there is no canonical definition to state claims against.
-/

/-! ## A068654.P14104767145413312577

`p?[A063660(eq[1, A061264(n+1)])]`
-/

namespace A068654.P14104767145413312577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061264 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068654.P14104767145413312577

/-! ## A068654.P15227421211572161027

`p?[A061264(n+1)*A063660(n)]`
-/

namespace A068654.P15227421211572161027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061264 (n + 1) * A063660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068654.P15227421211572161027

/-! ## A068654.P8249663079167662657

`or(and(9, A045978(n)), A270083(n+1))`
-/

namespace A068654.P8249663079167662657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.land 9 (A045978 n)) (A270083 (n + 1))

end

end A068654.P8249663079167662657

/-! ## A068654.P13472714151255268481

`∩[A076056(n+1), A130734(n+1)]`
-/

namespace A068654.P13472714151255268481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068654.P13472714151255268481

/-! ## A068654.P17007830516919116793

`∩[A091898(n+1), A231588(n+1)]`
-/

namespace A068654.P17007830516919116793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068654.P17007830516919116793

/-!
# A068657: Successive left concatenation of floor(k/2) beginning with n until we reach 1.

The programs for A068657, there is no canonical definition to state claims against.
-/

/-! ## A068657.P7651787592882827983

`A227362(∑[A038713(2*(n+1))])`
-/

namespace A068657.P7651787592882827983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038713 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A068657.P7651787592882827983

/-!
# A068658: Primes in A068657.

The programs for A068658, there is no canonical definition to state claims against.
-/

/-! ## A068658.P348163677223883115

`p?[A068657(n+1)]`
-/

namespace A068658.P348163677223883115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068658.P348163677223883115

/-! ## A068658.P15648103780008941595

`p?[record[A068657(A000174(n))]]`
-/

namespace A068658.P15648103780008941595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068657 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068658.P15648103780008941595

/-! ## A068658.P12119569603430579289

`p?[record[A068657(A020986(n))]]`
-/

namespace A068658.P12119569603430579289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068657 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068658.P12119569603430579289

/-!
# A068660: Primes formed from the concatenation of k, k+1 and k for some k.

The programs for A068660, there is no canonical definition to state claims against.
-/

/-! ## A068660.P12722471389911337589

`A261618(A264814(n+1))`
-/

namespace A068660.P12722471389911337589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261618 (A264814 (n + 1)).toNat

end

end A068660.P12722471389911337589

/-! ## A068660.P15257432213166230060

`p?[A261618(n+1)]`
-/

namespace A068660.P15257432213166230060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068660.P15257432213166230060

/-! ## A068660.P5352634332912248758

`p?[record[A261618(n^(n%2))]]`
-/

namespace A068660.P5352634332912248758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261618 (n ^ (n % 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068660.P5352634332912248758

/-! ## A068660.P3967953173369053484

`p?[record[A261618(A029579(n))]]`
-/

namespace A068660.P3967953173369053484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261618 (A029579 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068660.P3967953173369053484

/-! ## A068660.P9619527135861677679

`p?[record[A261618(A052938(n))]]`
-/

namespace A068660.P9619527135861677679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261618 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068660.P9619527135861677679

/-!
# A068661: Let N = 123456789101112131415... the concatenation of natural numbers; partition this number into minimal strings of noncomposite numbers, i.e., a(1) = 1 and a(2) onwards are primes.

The programs for A068661, there is no canonical definition to state claims against.
-/

/-! ## A068661.P6171615845661039818

`A006530(A085944(n+1)*A308305(n+1))`
-/

namespace A068661.P6171615845661039818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A085944 (n + 1) * A308305 (n + 1)).toNat

end

end A068661.P6171615845661039818

/-! ## A068661.P14579584488191178962

`A006530(A000940(n+3)*A085944(n+1))`
-/

namespace A068661.P14579584488191178962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000940 (n + 3) * A085944 (n + 1)).toNat

end

end A068661.P14579584488191178962

/-!
# A068664: a(1) = 1, a(n) = smallest palindromic multiple of a(n-1).

The programs for A068664, there is no canonical definition to state claims against.
-/

/-! ## A068664.P4960541020185545909

`a(n-1)*A068971(n)` with `a(0)=1`
-/

namespace A068664.P4960541020185545909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A068971 n

end

end A068664.P4960541020185545909

/-! ## A068664.P14277159346734846051

`∏[A068971(n+1)]/A068971(n+1)`
-/

namespace A068664.P14277159346734846051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068971 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A068971 (n + 1) : ℚ)

end

end A068664.P14277159346734846051

/-! ## A068664.P3315150111420129648

`A070069(n+1)/A317311(A068971(n+1))`
-/

namespace A068664.P3315150111420129648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070069 (n + 1) : ℚ) / (A317311 (A068971 (n + 1)).toNat : ℚ)

end

end A068664.P3315150111420129648

/-!
# A068665: a(1) = 3; a(n) = smallest palindromic multiple of a(n-1).

The programs for A068665, there is no canonical definition to state claims against.
-/

/-! ## A068665.P5025890095143547027

`a(n-1)*A068972(n)` with `a(0)=3`
-/

namespace A068665.P5025890095143547027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) * A068972 n

end

end A068665.P5025890095143547027

/-!
# A068666: a(1) = 5; a(n) = smallest palindromic multiple of a(n-1).

The programs for A068666, there is no canonical definition to state claims against.
-/

/-! ## A068666.P10453204965669023014

`a(n-1)*A068973(n)` with `a(0)=5`
-/

namespace A068666.P10453204965669023014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) * A068973 n

end

end A068666.P10453204965669023014

/-!
# A068667: a(1) = 7; a(n) = smallest palindromic multiple of a(n-1).

The programs for A068667, there is no canonical definition to state claims against.
-/

/-! ## A068667.P5826691404691437767

`a(n-1)*A068974(n)` with `a(0)=7`
-/

namespace A068667.P5826691404691437767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) * A068974 n

end

end A068667.P5826691404691437767

/-! ## A068667.P16345051769840076800

`∏[A093813(A093799(n+1)+A003151(n+1))]`
-/

namespace A068667.P16345051769840076800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093813 (A093799 (n + 1) + A003151 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A068667.P16345051769840076800

/-!
# A068669: Noncomposite numbers in which every substring is noncomposite.

The programs for A068669, there is no canonical definition to state claims against.
-/

/-! ## A068669.P41869996328158768

`∩[A007094(n), A012884(n+1)]`
-/

namespace A068669.P41869996328158768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068669.P41869996328158768

/-! ## A068669.P11873110372504785040

`∩[A007095(n), A012884(n+1)]`
-/

namespace A068669.P11873110372504785040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068669.P11873110372504785040

/-! ## A068669.P18239304365714135007

`∩[A001729(n+1), A012884(n+1)]`
-/

namespace A068669.P18239304365714135007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068669.P18239304365714135007

/-! ## A068669.P13899588317291223505

`∩[A001742(n+1), A012884(n+1)]`
-/

namespace A068669.P13899588317291223505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068669.P13899588317291223505

/-! ## A068669.P1010320491754364992

`∩[A012884(n+1), A037479(n+1)]`
-/

namespace A068669.P1010320491754364992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068669.P1010320491754364992

/-!
# A068670: Number of digits in the concatenation of first n primes.

The programs for A068670, the canonical program `A068670.P3265398196871764790` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068670 has offset 0).

The definition of A068670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068670.P4207518445729714185

`∑[∑[char[A090226(n+1)]]]`
-/

namespace A068670.P4207518445729714185
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090226 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068670.P4207518445729714185

namespace A068670

/-- `∑[∑[char[A090226(n+1)]]]` -/
def P4207518445729714185.Spec : Prop :=
  ∀ n, (P4207518445729714185.a n : ℤ) = A068670 n

end A068670

/-! ## A068670.P3265398196871764790

`∑[A097944(n+1)]-A097944(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A068670

/-- `∑[A097944(n+1)]-A097944(n+1)` -/
def P3265398196871764790.Spec : Prop :=
  ∀ n, P3265398196871764790.a n = A068670 n

theorem P3265398196871764790.correct : P3265398196871764790.Spec := by
  intro n
  simp only [A068670]

end A068670

/-! ## A068670.P11554926044331306226

`A278959(A028815(n))`
-/

namespace A068670.P11554926044331306226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278959 (A028815 n).toNat

end

end A068670.P11554926044331306226

namespace A068670

/-- `A278959(A028815(n))` -/
def P11554926044331306226.Spec : Prop :=
  ∀ n, P11554926044331306226.a n = A068670 n

end A068670

/-! ## A068670.P17080394047925190337

`A278959(A157419(n))`
-/

namespace A068670.P17080394047925190337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278959 (A157419 n).toNat

end

end A068670.P17080394047925190337

namespace A068670

/-- `A278959(A157419(n))` -/
def P17080394047925190337.Spec : Prop :=
  ∀ n, P17080394047925190337.a n = A068670 n

end A068670

/-! ## A068670.P2308985200687020964

`A278959(A299763(n+1))`
-/

namespace A068670.P2308985200687020964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278959 (A299763 (n + 1)).toNat

end

end A068670.P2308985200687020964

namespace A068670

/-- `A278959(A299763(n+1))` -/
def P2308985200687020964.Spec : Prop :=
  ∀ n, P2308985200687020964.a n = A068670 n

end A068670

/-! ## A068670.P8498612463915690928

`A278959(A008578(n+1)+1)`
-/

namespace A068670.P8498612463915690928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278959 (A008578 (n + 1) + 1).toNat

end

end A068670.P8498612463915690928

namespace A068670

/-- `A278959(A008578(n+1)+1)` -/
def P8498612463915690928.Spec : Prop :=
  ∀ n, P8498612463915690928.a n = A068670 n

end A068670

/-! ## A068670.P6409217949784007488

`A278959(A000203(A008578(n+1)))`
-/

namespace A068670.P6409217949784007488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278959 (A000203 (A008578 (n + 1)).toNat).toNat

end

end A068670.P6409217949784007488

namespace A068670

/-- `A278959(A000203(A008578(n+1)))` -/
def P6409217949784007488.Spec : Prop :=
  ∀ n, P6409217949784007488.a n = A068670 n

end A068670

/-! ## A068670.P3081925682823023661

`A278959(A000040(n+1))`
-/

namespace A068670.P3081925682823023661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278959 (A000040 (n + 1)).toNat

end

end A068670.P3081925682823023661

namespace A068670

/-- `A278959(A000040(n+1))` -/
def P3081925682823023661.Spec : Prop :=
  ∀ n, P3081925682823023661.a n = A068670 n

end A068670

/-! ## A068670.P9833054974968774174

`A278959(A006005(n+1))`
-/

namespace A068670.P9833054974968774174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278959 (A006005 (n + 1)).toNat

end

end A068670.P9833054974968774174

namespace A068670

/-- `A278959(A006005(n+1))` -/
def P9833054974968774174.Spec : Prop :=
  ∀ n, P9833054974968774174.a n = A068670 n

end A068670

/-! ## A068670.P2491245673363867243

`A278959(A318871(n+1))`
-/

namespace A068670.P2491245673363867243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278959 (A318871 (n + 1)).toNat

end

end A068670.P2491245673363867243

namespace A068670

/-- `A278959(A318871(n+1))` -/
def P2491245673363867243.Spec : Prop :=
  ∀ n, P2491245673363867243.a n = A068670 n

end A068670

/-! ## A068670.P7374738166579021037

`A278959(A008578(n+2))`
-/

namespace A068670.P7374738166579021037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278959 (A008578 (n + 2)).toNat

end

end A068670.P7374738166579021037

namespace A068670

/-- `A278959(A008578(n+2))` -/
def P7374738166579021037.Spec : Prop :=
  ∀ n, P7374738166579021037.a n = A068670 n

end A068670

/-! ## A068670.P1137342130367787086

`A278959(A068499(n+2))`
-/

namespace A068670.P1137342130367787086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278959 (A068499 (n + 2)).toNat

end

end A068670.P1137342130367787086

namespace A068670

/-- `A278959(A068499(n+2))` -/
def P1137342130367787086.Spec : Prop :=
  ∀ n, P1137342130367787086.a n = A068670 n

end A068670

/-! ## A068670.P15373150194818280074

`record[A278959(A006530(n+1))]`
-/

namespace A068670.P15373150194818280074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278959 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068670.P15373150194818280074

namespace A068670

/-- `record[A278959(A006530(n+1))]` -/
def P15373150194818280074.Spec : Prop :=
  ∀ n, P15373150194818280074.a n = A068670 n

end A068670

/-! ## A068670.P18074261337178175584

`record[A278959(A020639(n+1))]`
-/

namespace A068670.P18074261337178175584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278959 (A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068670.P18074261337178175584

namespace A068670

/-- `record[A278959(A020639(n+1))]` -/
def P18074261337178175584.Spec : Prop :=
  ∀ n, P18074261337178175584.a n = A068670 n

end A068670

/-! ## A068670.P5097434041703960507

`record[A278959(n-A278959(n))]`
-/

namespace A068670.P5097434041703960507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278959 ((n : ℤ) - A278959 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068670.P5097434041703960507

namespace A068670

/-- `record[A278959(n-A278959(n))]` -/
def P5097434041703960507.Spec : Prop :=
  ∀ n, P5097434041703960507.a n = A068670 n

end A068670

/-! ## A068670.P7940288549734159197

`lt[0, char[A278959(n)]]`
-/

namespace A068670.P7940288549734159197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278959 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068670.P7940288549734159197

namespace A068670

/-- `lt[0, char[A278959(n)]]` -/
def P7940288549734159197.Spec : Prop :=
  ∀ n, (P7940288549734159197.a n : ℤ) = A068670 n

end A068670

/-! ## A068670.P18008615406888938309

`record[A278959(A014963(n+1))]`
-/

namespace A068670.P18008615406888938309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278959 (A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068670.P18008615406888938309

namespace A068670

/-- `record[A278959(A014963(n+1))]` -/
def P18008615406888938309.Spec : Prop :=
  ∀ n, P18008615406888938309.a n = A068670 n

end A068670

/-! ## A068670.P5902684584724081018

`record[A278959(n*A278907(n))]`
-/

namespace A068670.P5902684584724081018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278959 ((n : ℤ) * A278907 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068670.P5902684584724081018

namespace A068670

/-- `record[A278959(n*A278907(n))]` -/
def P5902684584724081018.Spec : Prop :=
  ∀ n, P5902684584724081018.a n = A068670 n

end A068670

/-! ## A068670.P3722317620431039969

`∑[A000523(A000523(A266001(n+2)))]`
-/

namespace A068670.P3722317620431039969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A000523 (A266001 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068670.P3722317620431039969

namespace A068670

/-- `∑[A000523(A000523(A266001(n+2)))]` -/
def P3722317620431039969.Spec : Prop :=
  ∀ n, P3722317620431039969.a n = A068670 n

end A068670

/-!
# A068671: Define f(n,k) = floor[n/k] and a(n) = right concatenation of f(n,k) for k = 1 to int[(n+1)/2] or until one arrives at a 1.

The programs for A068671, there is no canonical definition to state claims against.
-/

/-! ## A068671.P2051875187263348660

`A004086(∑[A278952(n)])`
-/

namespace A068671.P2051875187263348660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A068671.P2051875187263348660

/-! ## A068671.P15165205220914626595

`A004186(∑[A278952(n)])`
-/

namespace A068671.P15165205220914626595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A068671.P15165205220914626595

/-!
# A068672: Primes in A068671.

The programs for A068672, there is no canonical definition to state claims against.
-/

/-! ## A068672.P5110910280222253649

`p?[A068671(n+1)]`
-/

namespace A068672.P5110910280222253649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068672.P5110910280222253649

/-! ## A068672.P656122229122807503

`filter[A068671(n+1), A010051(#)]`
-/

namespace A068672.P656122229122807503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A068672.P656122229122807503

/-!
# A068673: Numbers which yield primes when a 1 is prefixed or appended.

The programs for A068673, there is no canonical definition to state claims against.
-/

/-! ## A068673.P2773906371824175938

`∩[A024912(n+1), A032664(n+1)]`
-/

namespace A068673.P2773906371824175938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068673.P2773906371824175938

/-! ## A068673.P17099798623378053421

`∩[A032664(n+1), A166458(n+1)]`
-/

namespace A068673.P17099798623378053421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068673.P17099798623378053421

/-! ## A068673.P556755727126707016

`eq[1, A243374(n+1)]+1`
-/

namespace A068673.P556755727126707016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243374 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A068673.P556755727126707016

/-! ## A068673.P7021458355232325198

`filter[2*n+1, A243374(#)]`
-/

namespace A068673.P7021458355232325198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A243374 (f1 j) = 1) n)

end

end A068673.P7021458355232325198

/-! ## A068673.P8892785241317366513

`A004442(eq[1, A243374(n+1)])`
-/

namespace A068673.P8892785241317366513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068673.P8892785241317366513

/-! ## A068673.P3434486233363694901

`A109613(eq[1, A243374(n+1)])`
-/

namespace A068673.P3434486233363694901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068673.P3434486233363694901

/-! ## A068673.P12120508812981432178

`A141310(eq[1, A243374(n+1)])`
-/

namespace A068673.P12120508812981432178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068673.P12120508812981432178

/-! ## A068673.P7843178298059016822

`A294178(eq[1, A243374(n+1)])`
-/

namespace A068673.P7843178298059016822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068673.P7843178298059016822

/-! ## A068673.P13059308563361165454

`record[A004442(n)/(2-A243374(n+1))]`
-/

namespace A068673.P13059308563361165454
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004442 n : ℚ) / (2 - A243374 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068673.P13059308563361165454

/-! ## A068673.P55535307419161262

`A005408(eq[1, A243374(A005408(n))])`
-/

namespace A068673.P55535307419161262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243374 (A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068673.P55535307419161262

/-!
# A068674: Numbers which yield primes when a 3 is prefixed or appended.

The programs for A068674, there is no canonical definition to state claims against.
-/

/-! ## A068674.P6564066802850500459

`∩[A032666(n+1), A102338(n+1)]`
-/

namespace A068674.P6564066802850500459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068674.P6564066802850500459

/-!
# A068675: Numbers k such that a prime can be obtained by inserting a 1 before, somewhere inside, or after the digits of k.

The programs for A068675, there is no canonical definition to state claims against.
-/

/-! ## A068675.P9083767624649341433

`lt[0, A069842(n+1)]+1`
-/

namespace A068675.P9083767624649341433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069842 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A068675.P9083767624649341433

/-! ## A068675.P4452051557996442820

`lt[0, n*A069842(A028310(n))]`
-/

namespace A068675.P4452051557996442820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A069842 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A068675.P4452051557996442820

/-! ## A068675.P9950228273467930915

`lt[A000007(n), A069842(A028310(n))]`
-/

namespace A068675.P9950228273467930915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069842 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068675.P9950228273467930915

/-! ## A068675.P16472120033602720332

`lt[A000038(n), A069842(A028310(n))]`
-/

namespace A068675.P16472120033602720332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069842 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068675.P16472120033602720332

/-! ## A068675.P10795359274755040143

`lt[A084192(2*(n+1)), A020639(A017281(n))]`
-/

namespace A068675.P10795359274755040143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084192 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068675.P10795359274755040143

/-!
# A068677: Numbers that yield primes when a 7 is prefixed or suffixed to them.

The programs for A068677, there is no canonical definition to state claims against.
-/

/-! ## A068677.P15594730561079781464

`∩[A032670(n+1), A102342(n+1)]`
-/

namespace A068677.P15594730561079781464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068677.P15594730561079781464

/-! ## A068677.P12624095021670079298

`A032670(lt[A002723(n+1), A090243(n+1)])`
-/

namespace A068677.P12624095021670079298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032670 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A068677.P12624095021670079298

/-!
# A068678: Numbers that yield a prime when a 9 is prefixed or suffixed to them.

The programs for A068678, there is no canonical definition to state claims against.
-/

/-! ## A068678.P6962513500130432348

`∩[A032672(n+1), A102700(n+1)]`
-/

namespace A068678.P6962513500130432348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068678.P6962513500130432348

/-!
# A068679: Numbers which yield a prime whenever a 1 is inserted anywhere in them (including at the beginning or end).

The programs for A068679, there is no canonical definition to state claims against.
-/

/-! ## A068679.P10488974352255672130

`∪[A069246(n+1), A216165(n+1)]`
-/

namespace A068679.P10488974352255672130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068679.P10488974352255672130

/-! ## A068679.P15920098822890894625

`∩[A068673(n+1), A304246(n+1)]`
-/

namespace A068679.P15920098822890894625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068679.P15920098822890894625

/-! ## A068679.P8708523714436838586

`∩[eq[1, A243374(n+1)]+1, A304246(n+1)]`
-/

namespace A068679.P8708523714436838586
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243374 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A068679.P8708523714436838586

/-! ## A068679.P2400725081357812734

`A068673(lt[A248324(2*(n+2)), A106100(n+1)])`
-/

namespace A068679.P2400725081357812734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248324 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068673 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A068679.P2400725081357812734

/-!
# A068680: Primes formed by the concatenation n, n+2, n.

The programs for A068680, there is no canonical definition to state claims against.
-/

/-! ## A068680.P12773865007664569632

`p?[A261618(n+1)+A068822(A172503(n+1))]`
-/

namespace A068680.P12773865007664569632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261618 (n + 1) + A068822 (A172503 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068680.P12773865007664569632

/-!
# A068684: Primes obtained as a concatenation p,q,p where p and q are successive primes and p<q.

The programs for A068684, there is no canonical definition to state claims against.
-/

/-! ## A068684.P15639248041039640427

`p?[A097446(n+2)-A001223(n+1)]`
-/

namespace A068684.P15639248041039640427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097446 (n + 2) - A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068684.P15639248041039640427

/-! ## A068684.P9970104090619724125

`p?[A247474(n+1)-A065091(n+1)]`
-/

namespace A068684.P9970104090619724125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247474 (n + 1) - A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068684.P9970104090619724125

/-! ## A068684.P3673474055189496363

`p?[A247474(n+1)-A000040(n+2)]`
-/

namespace A068684.P3673474055189496363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247474 (n + 1) - A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068684.P3673474055189496363

/-!
# A068685: Primes which are a sandwich of numbers using at most one digit between two 1's.

The programs for A068685, there is no canonical definition to state claims against.
-/

/-! ## A068685.P14332122789611794743

`p?[A043036(∑[A146852(n+1)])]`
-/

namespace A068685.P14332122789611794743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146852 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043036 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068685.P14332122789611794743

/-! ## A068685.P7195913460687819684

`p?[A043036(∑[A147206(n+1)])]`
-/

namespace A068685.P7195913460687819684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147206 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043036 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068685.P7195913460687819684

/-! ## A068685.P13083552092709819983

`A208362(∑[A052507(n+1)+1])`
-/

namespace A068685.P13083552092709819983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052507 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208362 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A068685.P13083552092709819983

/-!
# A068686: Let p = abc..k be a prime in base 10. Define mirror(p) = abc...k...cba. Sequence gives primes of the form mirror(p) for some p.

The programs for A068686, there is no canonical definition to state claims against.
-/

/-! ## A068686.P2869980273894897639

`A056525(A342943(n+1))`
-/

namespace A068686.P2869980273894897639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A342943 (n + 1)).toNat

end

end A068686.P2869980273894897639

/-! ## A068686.P12616731238161008183

`A056525(p?[A258084(n+5)])`
-/

namespace A068686.P12616731238161008183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258084 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068686.P12616731238161008183

/-! ## A068686.P8816083048668690166

`∩[A002385(n+1), A056525(A071621(n+1))]`
-/

namespace A068686.P8816083048668690166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A071621 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068686.P8816083048668690166

/-! ## A068686.P11502667811745596324

`∩[A002385(n+1), A056525(A065091(n+4))]`
-/

namespace A068686.P11502667811745596324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A065091 (n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068686.P11502667811745596324

/-! ## A068686.P7449247603183818431

`p?[A056525(A065091(n+4))]`
-/

namespace A068686.P7449247603183818431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A065091 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068686.P7449247603183818431

/-!
# A068687: Primes which are a sandwich of numbers made of only one digit between two 3's.

The programs for A068687, there is no canonical definition to state claims against.
-/

/-! ## A068687.P16250077962484238684

`∩[A056728(n+1), A222725(n+1)]`
-/

namespace A068687.P16250077962484238684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068687.P16250077962484238684

/-!
# A068688: Primes which are a sandwich of numbers made of only one digit between two 7's.

The programs for A068688, there is no canonical definition to state claims against.
-/

/-! ## A068688.P5550419595288044654

`∩[A043042(n+1), A056728(n+1)]`
-/

namespace A068688.P5550419595288044654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068688.P5550419595288044654

/-! ## A068688.P16117850022748282622

`∩[A056728(n+1), A222727(n+1)]`
-/

namespace A068688.P16117850022748282622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068688.P16117850022748282622

/-! ## A068688.P15006595537063114307

`∩[A056728(n+1), A062334(n+1)]`
-/

namespace A068688.P15006595537063114307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068688.P15006595537063114307

/-!
# A068690: Primes such that all digits (except perhaps the least significant digit) are even.

The programs for A068690, there is no canonical definition to state claims against.
-/

/-! ## A068690.P16995740657547582573

`∪[A007352(n+1), A154764(n+1)]`
-/

namespace A068690.P16995740657547582573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A068690.P16995740657547582573

/-! ## A068690.P11284951232946412415

`p?[ceil(2/acot(A007091(n)))]`
-/

namespace A068690.P11284951232946412415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (A007091 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068690.P11284951232946412415

/-! ## A068690.P13976717704271070573

`p?[A014263(n+1)+gcd(2, A000040(n+1))]`
-/

namespace A068690.P13976717704271070573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1) + (Int.gcd 2 (A000040 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068690.P13976717704271070573

/-! ## A068690.P3438178112430946865

`p?[A024657(n)]`
-/

namespace A068690.P3438178112430946865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068690.P3438178112430946865

/-! ## A068690.P9042374694076298870

`∩[A030475(n+1), A024657(n)]`
-/

namespace A068690.P9042374694076298870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068690.P9042374694076298870

/-! ## A068690.P12522767094723883884

`∩[A156756(n+1), A024657(n)]`
-/

namespace A068690.P12522767094723883884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068690.P12522767094723883884

/-! ## A068690.P10708132250678345094

`∩[A240920(n+1), A024657(n)]`
-/

namespace A068690.P10708132250678345094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068690.P10708132250678345094

/-! ## A068690.P3932482387921015569

`∩[A030475(n+1), A240920(n+1)]`
-/

namespace A068690.P3932482387921015569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068690.P3932482387921015569

/-! ## A068690.P8862750349658499755

`∩[A030475(n+1), A091727(n+1)]`
-/

namespace A068690.P8862750349658499755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068690.P8862750349658499755

/-! ## A068690.P999851984046477815

`p?[A242367(n+1)]`
-/

namespace A068690.P999851984046477815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068690.P999851984046477815

/-! ## A068690.P16269497871139541807

`p?[A059708(n+1)+1]`
-/

namespace A068690.P16269497871139541807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068690.P16269497871139541807

/-! ## A068690.P7791785949756161872

`record[A020639(A024657(n+2))]`
-/

namespace A068690.P7791785949756161872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A024657 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068690.P7791785949756161872

/-! ## A068690.P9652903250793591991

`filter[A024657(n+1), A010051(#)]`
-/

namespace A068690.P9652903250793591991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A068690.P9652903250793591991

/-! ## A068690.P658185112193358531

`filter[A242367(n+1), A010051(#)]`
-/

namespace A068690.P658185112193358531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A068690.P658185112193358531

/-! ## A068690.P3388032008343540215

`∩[A000040(n+1), A024657(n)]`
-/

namespace A068690.P3388032008343540215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068690.P3388032008343540215

/-! ## A068690.P6199528096682060045

`∩[A076805(n+1), A024657(n)]`
-/

namespace A068690.P6199528096682060045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068690.P6199528096682060045

/-! ## A068690.P17234127414684847536

`∩[A106118(n+1), A024657(n)]`
-/

namespace A068690.P17234127414684847536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068690.P17234127414684847536

/-! ## A068690.P10337943518528706786

`∩[A143260(n+1), A024657(n)]`
-/

namespace A068690.P10337943518528706786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068690.P10337943518528706786

/-! ## A068690.P16486208273242523973

`∩[A182140(n+1), A024657(n)]`
-/

namespace A068690.P16486208273242523973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068690.P16486208273242523973

/-! ## A068690.P12074862661261215369

`∩[A000040(n+1), A242367(n+1)]`
-/

namespace A068690.P12074862661261215369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068690.P12074862661261215369

/-!
# A068691: Smallest n-digit prime with all even digits except the least significant digit.

The programs for A068691, there is no canonical definition to state claims against.
-/

/-! ## A068691.P12869064354333813684

`p?[A169965(n+1)+A028310(A164089(n+1))]`
-/

namespace A068691.P12869064354333813684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169965 (n + 1) + A028310 (A164089 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068691.P12869064354333813684

/-!
# A068692: Largest n-digit prime with all even digits except for the least significant digit.

The programs for A068692, there is no canonical definition to state claims against.
-/

/-! ## A068692.P14212098207312051536

`A099668(n+1)+A049084(A072474(n+1))`
-/

namespace A068692.P14212098207312051536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099668 (n + 1) + A049084 (A072474 (n + 1)).toNat

end

end A068692.P14212098207312051536

/-! ## A068692.P4295280961478216676

`A068690(A359813(n+1)+1)`
-/

namespace A068692.P4295280961478216676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068690 (A359813 (n + 1) + 1).toNat

end

end A068692.P4295280961478216676

/-!
# A068693: Smallest n-digit prime with all odd digits.

The programs for A068693, there is no canonical definition to state claims against.
-/

/-! ## A068693.P6567841384514107974

`A096497(n+1)+A002448(A006190(n))`
-/

namespace A068693.P6567841384514107974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096497 (n + 1) + A002448 (A006190 n).toNat

end

end A068693.P6567841384514107974

/-! ## A068693.P10377475839517140363

`xor(A096497(n+1), A127446(A065960(n+1)))`
-/

namespace A068693.P10377475839517140363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A096497 (n + 1)) (A127446 (A065960 (n + 1)).toNat)

end

end A068693.P10377475839517140363

/-! ## A068693.P13691816147306915339

`A096497(n+1)+A002448(A008549(n))`
-/

namespace A068693.P13691816147306915339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096497 (n + 1) + A002448 (A008549 n).toNat

end

end A068693.P13691816147306915339

/-! ## A068693.P7986086082043924053

`A115978(A020874(n))+A096497(n+1)`
-/

namespace A068693.P7986086082043924053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115978 (A020874 n).toNat + A096497 (n + 1)

end

end A068693.P7986086082043924053

/-!
# A068694: Largest n-digit prime with all odd digits.

The programs for A068694, there is no canonical definition to state claims against.
-/

/-! ## A068694.P15970996011730010798

`A138270(A001692(n))+A003618(n+1)`
-/

namespace A068694.P15970996011730010798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138270 (A001692 n).toNat + A003618 (n + 1)

end

end A068694.P15970996011730010798

/-! ## A068694.P15258361265791832345

`A003618(n+1)-A082858(A001654(n))`
-/

namespace A068694.P15258361265791832345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (n + 1) - A082858 (A001654 n).toNat

end

end A068694.P15258361265791832345

/-! ## A068694.P931413297603572201

`A003618(n+1)-A028953(A137635(n))`
-/

namespace A068694.P931413297603572201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (n + 1) - A028953 (A137635 n).toNat

end

end A068694.P931413297603572201

/-!
# A068695: Smallest number (not beginning with 0) that yields a prime when placed on the right of n.

The programs for A068695, there is no canonical definition to state claims against.
-/

/-! ## A068695.P3626777666434857268

`A091088(n+1)`
-/

namespace A068695.P3626777666434857268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (n + 1)

end

end A068695.P3626777666434857268

/-! ## A068695.P4973231979619890314

`ratio[A091088(n)]*A091088(n)`
-/

namespace A068695.P4973231979619890314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A091088 n : ℚ)

end

end A068695.P4973231979619890314

/-! ## A068695.P8340620844715997618

`A186813(A091088(record[xor(1, n)]-n))`
-/

namespace A068695.P8340620844715997618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186813 (A091088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - n)).toNat

end

end A068695.P8340620844715997618

/-! ## A068695.P506506765121103727

`or(1, A091088(A029579(2*n)))`
-/

namespace A068695.P506506765121103727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A091088 (A029579 (2 * n)).toNat)

end

end A068695.P506506765121103727

/-! ## A068695.P16152434493858698918

`A091088(A029579(2*n))-A000035(2*n)`
-/

namespace A068695.P16152434493858698918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (A029579 (2 * n)).toNat - A000035 (2 * n)

end

end A068695.P16152434493858698918

/-! ## A068695.P9370846582267663124

`or(1, A091088(A143182(∑[n])))`
-/

namespace A068695.P9370846582267663124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A091088 (A143182 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat)

end

end A068695.P9370846582267663124

/-!
# A068696: Number of primes that are a concatenation nk of n and k for values of k from 1 to n.

The programs for A068696, there is no canonical definition to state claims against.
-/

/-! ## A068696.P1191682792256360147

`1-A074765(n+1)+n`
-/

namespace A068696.P1191682792256360147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A074765 (n + 1) + (n : ℤ)

end

end A068696.P1191682792256360147

/-! ## A068696.P3823500522717837724

`1-(A074765(Δ[n²]-n)-n)`
-/

namespace A068696.P3823500522717837724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A074765 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - (n : ℤ))

end

end A068696.P3823500522717837724

/-! ## A068696.P10455979291238322268

`n-log2(1/2)-A074765(n-log2(1/2))`
-/

namespace A068696.P10455979291238322268
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ) - (A074765 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℝ)

end

end A068696.P10455979291238322268

/-! ## A068696.P16635328837203745546

`A024000(A074765(n+1))+n`
-/

namespace A068696.P16635328837203745546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A074765 (n + 1)).toNat + (n : ℤ)

end

end A068696.P16635328837203745546

/-! ## A068696.P2257419852984791397

`abs(A074765(n+1)+A001478(n+1))`
-/

namespace A068696.P2257419852984791397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074765 (n + 1) + A001478 (n + 1)|

end

end A068696.P2257419852984791397

/-! ## A068696.P761492375489361647

`A001489(A074765(n+1))+A000027(n+1)`
-/

namespace A068696.P761492375489361647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A074765 (n + 1)).toNat + A000027 (n + 1)

end

end A068696.P761492375489361647

