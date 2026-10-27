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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A174000: Successive positions of even digits after comma in decimal expansion of Pi.

The programs for A174000, there is no canonical definition to state claims against.
-/

/-! ## A174000.P4972477041781354930

`comp[A173999(n)]`
-/

namespace A174000.P4972477041781354930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173999 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A174000.P4972477041781354930

/-! ## A174000.P1866361605573360660

`eq[2, A089281(n)]`
-/

namespace A174000.P1866361605573360660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174000.P1866361605573360660

/-! ## A174000.P9145946887077474256

`lt[4, A180434(n)]`
-/

namespace A174000.P9145946887077474256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180434 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A174000.P9145946887077474256

/-! ## A174000.P9321572190279800079

`A153030(n+1)-1`
-/

namespace A174000.P9321572190279800079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153030 (n + 1) - 1

end

end A174000.P9321572190279800079

/-! ## A174000.P16525962422771245928

`eq[0, A030657(n+1)]`
-/

namespace A174000.P16525962422771245928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030657 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174000.P16525962422771245928

/-! ## A174000.P510567007179993078

`eq[2, A371224(n+1)]`
-/

namespace A174000.P510567007179993078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371224 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174000.P510567007179993078

/-! ## A174000.P15927380719563368513

`lt[A019669(n+1), 5]`
-/

namespace A174000.P15927380719563368513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019669 (n + 1 + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A174000.P15927380719563368513

/-! ## A174000.P16460754041056172052

`eq[0, A000796(n)%2]`
-/

namespace A174000.P16460754041056172052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000796 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174000.P16460754041056172052

/-! ## A174000.P8945271374458849938

`eq[0, A086994(n)%2]`
-/

namespace A174000.P8945271374458849938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086994 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174000.P8945271374458849938

/-! ## A174000.P3361202899024492807

`eq[1, A030644(n)%2]`
-/

namespace A174000.P3361202899024492807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030644 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174000.P3361202899024492807

/-!
# A174002: a(n) = n*binomial(n+4, 4).

The programs for A174002, the canonical program `A174002.P7699814237944664298` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174002 has offset 0).

The definition of A174002 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*C(n+4, 4)` (program `A174002.P7699814237944664298`, by `A174002.P7699814237944664298.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174002.P7699814237944664298

`n*C(n+4, 4)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A174002

/-- `n*C(n+4, 4)` -/
def P7699814237944664298.Spec : Prop :=
  ∀ n, (P7699814237944664298.a n : ℤ) = A174002 n

theorem P7699814237944664298.correct : P7699814237944664298.Spec := by
  intro n
  simp only [A174002]

end A174002

/-! ## A174002.P13115044218579324310

`(n^5+10*n^4+35*n^3+50*n²+24*n)/24`
-/

namespace A174002.P13115044218579324310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 5 + 10 * n ^ 4 + 35 * n ^ 3 + 50 * n ^ 2 + 24 * n : ℚ) / 24

end

end A174002.P13115044218579324310

namespace A174002

/-- `(n^5+10*n^4+35*n^3+50*n²+24*n)/24` -/
def P13115044218579324310.Spec : Prop :=
  ∀ n, P13115044218579324310.a n = (A174002 n : ℚ)

theorem P13115044218579324310.correct : P13115044218579324310.Spec := by
  intro n
  simp only [A174002, Nat.add_sub_cancel, A174002.P13115044218579324310.a, A174002.P7699814237944664298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174002

/-! ## A174002.P10051833809343176067

`floor(n/acot(C(n+4, 4)))`
-/

namespace A174002.P10051833809343176067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot (Nat.choose (n + 4) 4 : ℝ)⌋

end

end A174002.P10051833809343176067

namespace A174002

/-- `floor(n/acot(C(n+4, 4)))` -/
def P10051833809343176067.Spec : Prop :=
  ∀ n, P10051833809343176067.a n = A174002 n

end A174002

/-! ## A174002.P1962210506111413921

`floor(n/acot(∑[∑[∑[n+1]]]))`
-/

namespace A174002.P1962210506111413921
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A174002.P1962210506111413921

namespace A174002

/-- `floor(n/acot(∑[∑[∑[n+1]]]))` -/
def P1962210506111413921.Spec : Prop :=
  ∀ n, P1962210506111413921.a n = A174002 n

end A174002

/-! ## A174002.P12774880413819553761

`round(n/acot(∑[∑[∑[n+1]]]))`
-/

namespace A174002.P12774880413819553761
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A174002.P12774880413819553761

namespace A174002

/-- `round(n/acot(∑[∑[∑[n+1]]]))` -/
def P12774880413819553761.Spec : Prop :=
  ∀ n, P12774880413819553761.a n = A174002 n

end A174002

/-! ## A174002.P1626913250075591167

`∑[∑[∑[∑[a(n-1)+5]]]]` with `a(0)=0`
-/

namespace A174002.P1626913250075591167
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f4 =>
  f4 (n - 1) + 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174002.P1626913250075591167

namespace A174002

/-- `∑[∑[∑[∑[a(n-1)+5]]]]` -/
def P1626913250075591167.Spec : Prop :=
  ∀ n, (P1626913250075591167.a n : ℤ) = A174002 n

end A174002

/-! ## A174002.P8274563241883953969

`a(n-1)-∑[∑[∑[a(n-1)-5]]]` with `a(0)=0`
-/

namespace A174002.P8274563241883953969
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f3 =>
  f3 (n - 1) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174002.P8274563241883953969

namespace A174002

/-- `a(n-1)-∑[∑[∑[a(n-1)-5]]]` -/
def P8274563241883953969.Spec : Prop :=
  ∀ n, P8274563241883953969.a n = A174002 n

end A174002

/-! ## A174002.P13437951415465816693

`∑[∑[A134481(n)]]`
-/

namespace A174002.P13437951415465816693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134481 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174002.P13437951415465816693

namespace A174002

/-- `∑[∑[A134481(n)]]` -/
def P13437951415465816693.Spec : Prop :=
  ∀ n, P13437951415465816693.a n = A174002 n

end A174002

/-! ## A174002.P934764773077935364

`n*sqrt(A288876(n))`
-/

namespace A174002.P934764773077935364
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A288876 n : ℝ)

end

end A174002.P934764773077935364

namespace A174002

/-- `n*sqrt(A288876(n))` -/
def P934764773077935364.Spec : Prop :=
  ∀ n, P934764773077935364.a n = (A174002 n : ℝ)

end A174002

/-! ## A174002.P3362958151612520209

`5*(A323228(n)-1)`
-/

namespace A174002.P3362958151612520209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A323228 n - 1)

end

end A174002.P3362958151612520209

namespace A174002

/-- `5*(A323228(n)-1)` -/
def P3362958151612520209.Spec : Prop :=
  ∀ n, P3362958151612520209.a n = A174002 n

theorem P3362958151612520209.correct : P3362958151612520209.Spec := by
  intro n
  simp only [A174002, Nat.add_sub_cancel, A174002.P3362958151612520209.a, A174002.P7699814237944664298.a, A323228, A323228.P5825280664412522790.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174002

/-! ## A174002.P12043601852446859150

`n/5*A154286(n)`
-/

namespace A174002.P12043601852446859150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 5 * (A154286 n : ℚ)

end

end A174002.P12043601852446859150

namespace A174002

/-- `n/5*A154286(n)` -/
def P12043601852446859150.Spec : Prop :=
  ∀ n, P12043601852446859150.a n = (A174002 n : ℚ)

theorem P12043601852446859150.correct : P12043601852446859150.Spec := by
  intro n
  simp only [A174002, Nat.add_sub_cancel, A174002.P12043601852446859150.a, A174002.P7699814237944664298.a, A154286, A154286.P11538623933304528328.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174002

/-! ## A174002.P2046268983761701878

`5*∑[∑[A000292(n)]]`
-/

namespace A174002.P2046268983761701878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A174002.P2046268983761701878

namespace A174002

/-- `5*∑[∑[A000292(n)]]` -/
def P2046268983761701878.Spec : Prop :=
  ∀ n, P2046268983761701878.a n = A174002 n

end A174002

/-! ## A174002.P4600308203332082963

`n*(A363256(n)+n)`
-/

namespace A174002.P4600308203332082963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A363256 n + (n : ℤ))

end

end A174002.P4600308203332082963

namespace A174002

/-- `n*(A363256(n)+n)` -/
def P4600308203332082963.Spec : Prop :=
  ∀ n, P4600308203332082963.a n = A174002 n

end A174002

/-! ## A174002.P4204719439109540727

`n*∑[sqrt(A001249(n))]`
-/

namespace A174002.P4204719439109540727
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001249 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A174002.P4204719439109540727

namespace A174002

/-- `n*∑[sqrt(A001249(n))]` -/
def P4204719439109540727.Spec : Prop :=
  ∀ n, P4204719439109540727.a n = (A174002 n : ℝ)

end A174002

/-! ## A174002.P5265481709532369164

`5/2*A277935(n+1)`
-/

namespace A174002.P5265481709532369164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 2 * (A277935 (n + 1) : ℚ)

end

end A174002.P5265481709532369164

namespace A174002

/-- `5/2*A277935(n+1)` -/
def P5265481709532369164.Spec : Prop :=
  ∀ n, P5265481709532369164.a n = (A174002 n : ℚ)

theorem P5265481709532369164.correct : P5265481709532369164.Spec := by
  intro n
  simp only [A174002, Nat.add_sub_cancel, A174002.P5265481709532369164.a, A174002.P7699814237944664298.a, A277935, A277935.P11391963306517879859.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174002

/-! ## A174002.P651327884422929480

`n/(n+1)*A027800(n)`
-/

namespace A174002.P651327884422929480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ) * (A027800 n : ℚ)

end

end A174002.P651327884422929480

namespace A174002

/-- `n/(n+1)*A027800(n)` -/
def P651327884422929480.Spec : Prop :=
  ∀ n, P651327884422929480.a n = (A174002 n : ℚ)

end A174002

/-! ## A174002.P14165058324967580062

`n*(A051743(n+1)-(n+1))`
-/

namespace A174002.P14165058324967580062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A051743 (n + 1) - (n + 1 : ℤ))

end

end A174002.P14165058324967580062

namespace A174002

/-- `n*(A051743(n+1)-(n+1))` -/
def P14165058324967580062.Spec : Prop :=
  ∀ n, P14165058324967580062.a n = A174002 n

end A174002

/-! ## A174002.P13308435897842858458

`A051880(n)-A027800(n)`
-/

namespace A174002.P13308435897842858458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051880 n - A027800 n

end

end A174002.P13308435897842858458

namespace A174002

/-- `A051880(n)-A027800(n)` -/
def P13308435897842858458.Spec : Prop :=
  ∀ n, P13308435897842858458.a n = A174002 n

theorem P13308435897842858458.correct : P13308435897842858458.Spec := by
  intro n
  simp only [A174002, Nat.add_sub_cancel, A174002.P13308435897842858458.a, A174002.P7699814237944664298.a, A027800, A027800.P6346572312768476247.a, A051880, A051880.P18339695450162809644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174002

/-! ## A174002.P315523143451522040

`A051879(n)-A034263(n)`
-/

namespace A174002.P315523143451522040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051879 n - A034263 n

end

end A174002.P315523143451522040

namespace A174002

/-- `A051879(n)-A034263(n)` -/
def P315523143451522040.Spec : Prop :=
  ∀ n, P315523143451522040.a n = A174002 n

end A174002

/-! ## A174002.P3143337995119882436

`A271663(n)-A027660(n)`
-/

namespace A174002.P3143337995119882436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271663 n - A027660 n

end

end A174002.P3143337995119882436

namespace A174002

/-- `A271663(n)-A027660(n)` -/
def P3143337995119882436.Spec : Prop :=
  ∀ n, P3143337995119882436.a n = A174002 n

end A174002

/-!
# A174003: Primes q with q^3 = 2+3*p for a prime p.

The programs for A174003, there is no canonical definition to state claims against.
-/

/-! ## A174003.P6136008275905236574

`∩[A003627(n+1), A241716(n+1)]`
-/

namespace A174003.P6136008275905236574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174003.P6136008275905236574

/-! ## A174003.P7054345207024674408

`∩[A082406(n+1), A241716(n+1)]`
-/

namespace A174003.P7054345207024674408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174003.P7054345207024674408

/-! ## A174003.P503828796665664383

`∩[A167409(n+1), A241716(n+1)]`
-/

namespace A174003.P503828796665664383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174003.P503828796665664383

/-! ## A174003.P3147753298677655866

`∩[A004612(n+1), A241716(n+1)]`
-/

namespace A174003.P3147753298677655866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174003.P3147753298677655866

/-! ## A174003.P5582056853705328335

`∩[A179871(n+1), A241716(n+1)]`
-/

namespace A174003.P5582056853705328335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174003.P5582056853705328335

/-! ## A174003.P5380872963727170738

`∩[A241716(n+1), A347838(n+1)]`
-/

namespace A174003.P5380872963727170738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174003.P5380872963727170738

/-! ## A174003.P7441398222558279716

`∩[A241716(n+1), A016789(n)]`
-/

namespace A174003.P7441398222558279716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174003.P7441398222558279716

/-! ## A174003.P15880519881628407191

`∩[A241716(n+1), A022429(n)]`
-/

namespace A174003.P15880519881628407191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022429 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174003.P15880519881628407191

/-! ## A174003.P7600610657369807890

`∩[A055048(n+1), A241716(n+1)]`
-/

namespace A174003.P7600610657369807890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174003.P7600610657369807890

/-! ## A174003.P440829351946752322

`∩[A241716(n+1), A277574(n+1)]`
-/

namespace A174003.P440829351946752322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174003.P440829351946752322

/-! ## A174003.P9297609586159446004

`∩[A174438(n+1), A241716(n+1)]`
-/

namespace A174003.P9297609586159446004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174003.P9297609586159446004

/-! ## A174003.P4199012123000894879

`∩[A026179(n+1), A241716(n+1)]`
-/

namespace A174003.P4199012123000894879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174003.P4199012123000894879

/-! ## A174003.P3455031823451656121

`∩[A047261(n+1), A241716(n+1)]`
-/

namespace A174003.P3455031823451656121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174003.P3455031823451656121

/-! ## A174003.P10633321636053773290

`∩[A047267(n+1), A241716(n+1)]`
-/

namespace A174003.P10633321636053773290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174003.P10633321636053773290

/-! ## A174003.P2275978825809036960

`∩[A241716(n+1), A274436(n+1)]`
-/

namespace A174003.P2275978825809036960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174003.P2275978825809036960

/-! ## A174003.P2735893637569388921

`∩[A241716(n+1), A049636(n)]`
-/

namespace A174003.P2735893637569388921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049636 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174003.P2735893637569388921

/-! ## A174003.P1418305654924169697

`∩[A047262(n+1), A241716(n+1)]`
-/

namespace A174003.P1418305654924169697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174003.P1418305654924169697

/-! ## A174003.P11222864103587506210

`∩[A034020(n+1), A241716(n+1)]`
-/

namespace A174003.P11222864103587506210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174003.P11222864103587506210

/-! ## A174003.P15942246749789897785

`∩[A087943(n+1), A241716(n+1)]`
-/

namespace A174003.P15942246749789897785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174003.P15942246749789897785

/-! ## A174003.P7325814650609120915

`∩[A226946(n+1), A241716(n+1)]`
-/

namespace A174003.P7325814650609120915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174003.P7325814650609120915

/-!
# A174004: A triangle based on:a(n,q)=a(n-1,q)+q*a(n-2,q);t(n,q)=If[n == 0, 1, Sum[Binomial[n, k]*a(k, q), {k, 1, n, 2}]].

The programs for A174004, there is no canonical definition to state claims against.
-/

/-! ## A174004.P16065599338313171614

`A343234(n)+A181838(A054238(∑[n]))`
-/

namespace A174004.P16065599338313171614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343234 n + A181838 (A054238 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A174004.P16065599338313171614

/-! ## A174004.P7126981093231782970

`A244218(A239144(n)%p?[A017841(n)])`
-/

namespace A174004.P7126981093231782970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244218 (Int.tmod (A239144 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A174004.P7126981093231782970

/-! ## A174004.P9034277435797339536

`A290726(A171243(n))`
-/

namespace A174004.P9034277435797339536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290726 (A171243 n).toNat

end

end A174004.P9034277435797339536

/-! ## A174004.P9252813209930612405

`A375499(A121412(n))`
-/

namespace A174004.P9252813209930612405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375499 (A121412 n).toNat

end

end A174004.P9252813209930612405

/-! ## A174004.P10488054186443913229

`A205786(A106238(n+1))`
-/

namespace A174004.P10488054186443913229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205786 (A106238 (n + 1)).toNat

end

end A174004.P10488054186443913229

/-!
# A174007: a(2n+1)=2. a(2n)= 1-n.

The programs for A174007, the canonical program `A174007.P14868332325957741755` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174007 has offset 1).

The definition of A174007 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174007.P14868332325957741755

`2*a(n-2)-a(n-4)` with `a(0)=2, a(1)=0, a(2)=2, a(3)=-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A174007

/-- `2*a(n-2)-a(n-4)` -/
def P14868332325957741755.Spec : Prop :=
  ∀ n, P14868332325957741755.a n = A174007 (n + 1)

theorem P14868332325957741755.correct : P14868332325957741755.Spec := by
  intro n
  simp only [A174007, Nat.add_sub_cancel]

end A174007

/-! ## A174007.P12233118042925194353

`A064680(n+1)-A022998(n)`
-/

namespace A174007.P12233118042925194353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (n + 1) - A022998 n

end

end A174007.P12233118042925194353

namespace A174007

/-- `A064680(n+1)-A022998(n)` -/
def P12233118042925194353.Spec : Prop :=
  ∀ n, P12233118042925194353.a n = A174007 (n + 1)

end A174007

/-! ## A174007.P16145214905488577904

`a(n-2)-n%2` with `a(0)=2, a(1)=0`
-/

namespace A174007.P16145214905488577904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n a =>
  a (n - 2) - ((n % 2 : ℕ) : ℤ)

end

end A174007.P16145214905488577904

namespace A174007

/-- `a(n-2)-n%2` -/
def P16145214905488577904.Spec : Prop :=
  ∀ n, P16145214905488577904.a n = A174007 (n + 1)

end A174007

/-! ## A174007.P16774318638172457443

`a(n-2)-and(1, n)` with `a(0)=2, a(1)=0`
-/

namespace A174007.P16774318638172457443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n a =>
  a (n - 2) - (Nat.land 1 n : ℤ)

end

end A174007.P16774318638172457443

namespace A174007

/-- `a(n-2)-and(1, n)` -/
def P16774318638172457443.Spec : Prop :=
  ∀ n, P16774318638172457443.a n = A174007 (n + 1)

end A174007

/-! ## A174007.P1365834575681427656

`3-∑[n+1]%(n+3)`
-/

namespace A174007.P1365834575681427656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 3) : ℕ) : ℤ)

end

end A174007.P1365834575681427656

namespace A174007

/-- `3-∑[n+1]%(n+3)` -/
def P1365834575681427656.Spec : Prop :=
  ∀ n, P1365834575681427656.a n = A174007 (n + 1)

end A174007

/-! ## A174007.P10666166328479647576

`round(a(n-2)-1/2)` with `a(0)=2, a(1)=0`
-/

namespace A174007.P10666166328479647576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℚ) - (1 : ℚ) / 2)

end

end A174007.P10666166328479647576

namespace A174007

/-- `round(a(n-2)-1/2)` -/
def P10666166328479647576.Spec : Prop :=
  ∀ n, P10666166328479647576.a n = A174007 (n + 1)

end A174007

/-! ## A174007.P7612999329217214339

`lcm(2, n+3)/2-(n+1)`
-/

namespace A174007.P7612999329217214339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 3) : ℚ) / 2 - (n + 1 : ℚ)

end

end A174007.P7612999329217214339

namespace A174007

/-- `lcm(2, n+3)/2-(n+1)` -/
def P7612999329217214339.Spec : Prop :=
  ∀ n, P7612999329217214339.a n = (A174007 (n + 1) : ℚ)

end A174007

/-! ## A174007.P16639849300102036047

`2-(n+3)*and(1, n)/2`
-/

namespace A174007.P16639849300102036047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (n + 3 : ℚ) * ((Nat.land 1 n : ℚ) / 2)

end

end A174007.P16639849300102036047

namespace A174007

/-- `2-(n+3)*and(1, n)/2` -/
def P16639849300102036047.Spec : Prop :=
  ∀ n, P16639849300102036047.a n = (A174007 (n + 1) : ℚ)

end A174007

/-! ## A174007.P10409479079696467744

`2-Δ[C(floor(n/2)+2, 2)]`
-/

namespace A174007.P10409479079696467744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(n : ℚ) / 2⌋ + 2).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A174007.P10409479079696467744

namespace A174007

/-- `2-Δ[C(floor(n/2)+2, 2)]` -/
def P10409479079696467744.Spec : Prop :=
  ∀ n, P10409479079696467744.a n = A174007 (n + 1)

end A174007

/-! ## A174007.P7696604466681891430

`∑[-(n+1)]%(n+3)+3`
-/

namespace A174007.P7696604466681891430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 3 : ℤ) + 3

end

end A174007.P7696604466681891430

namespace A174007

/-- `∑[-(n+1)]%(n+3)+3` -/
def P7696604466681891430.Spec : Prop :=
  ∀ n, P7696604466681891430.a n = A174007 (n + 1)

end A174007

/-! ## A174007.P17804942434863035861

`a(n-2)-val(∑[n], n)` with `a(0)=2, a(1)=0`
-/

namespace A174007.P17804942434863035861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n a =>
  a (n - 2) - (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) n : ℤ)

end

end A174007.P17804942434863035861

namespace A174007

/-- `a(n-2)-val(∑[n], n)` -/
def P17804942434863035861.Spec : Prop :=
  ∀ n, P17804942434863035861.a n = A174007 (n + 1)

end A174007

/-! ## A174007.P6671230334266883737

`∑[∑[(n+2)*(-1)^n]]-n`
-/

namespace A174007.P6671230334266883737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A174007.P6671230334266883737

namespace A174007

/-- `∑[∑[(n+2)*(-1)^n]]-n` -/
def P6671230334266883737.Spec : Prop :=
  ∀ n, P6671230334266883737.a n = A174007 (n + 1)

end A174007

/-! ## A174007.P8114972566776073414

`ogf((2-2x^2-x^3)/(1-2x^2+x^4))`
-/

namespace A174007.P8114972566776073414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -2, -1] [1, 0, -2, 0, 1] n

end

end A174007.P8114972566776073414

namespace A174007

/-- `ogf((2-2x^2-x^3)/(1-2x^2+x^4))` -/
def P8114972566776073414.Spec : Prop :=
  ∀ n, P8114972566776073414.a n = A174007 (n + 1)

end A174007

/-! ## A174007.P4530205350664483089

`floor((2-n)/a(n-1))` with `a(0)=2, a(1)=0, a(2)=2`
-/

namespace A174007.P4530205350664483089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 2] fun n a =>
  ⌊(2 - (n : ℤ) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A174007.P4530205350664483089

namespace A174007

/-- `floor((2-n)/a(n-1))` -/
def P4530205350664483089.Spec : Prop :=
  ∀ n, P4530205350664483089.a n = A174007 (n + 1)

end A174007

/-! ## A174007.P11312334178606719653

`∑[a(n-2)+(-1)^n]` with `a(0)=2, a(1)=-2, a(2)=2`
-/

namespace A174007.P11312334178606719653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -2, 2] fun n f1 =>
  f1 (n - 2) + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174007.P11312334178606719653

namespace A174007

/-- `∑[a(n-2)+(-1)^n]` -/
def P11312334178606719653.Spec : Prop :=
  ∀ n, P11312334178606719653.a n = A174007 (n + 1)

end A174007

/-! ## A174007.P3684792701044282143

`-ceil((n-2)/a(n-1))` with `a(0)=2, a(1)=0, a(2)=2`
-/

namespace A174007.P3684792701044282143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 2] fun n a =>
  -⌈((n : ℤ) - 2 : ℚ) / (a (n - 1) : ℚ)⌉

end

end A174007.P3684792701044282143

namespace A174007

/-- `-ceil((n-2)/a(n-1))` -/
def P3684792701044282143.Spec : Prop :=
  ∀ n, P3684792701044282143.a n = A174007 (n + 1)

end A174007

/-! ## A174007.P13727094814200712996

`floor((n+2)/gcd(n+1, n-1)-n)`
-/

namespace A174007.P13727094814200712996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) : ℚ) - (n : ℚ)⌋

end

end A174007.P13727094814200712996

namespace A174007

/-- `floor((n+2)/gcd(n+1, n-1)-n)` -/
def P13727094814200712996.Spec : Prop :=
  ∀ n, P13727094814200712996.a n = A174007 (n + 1)

end A174007

/-! ## A174007.P7495159273654951342

`n/(1/(a(n-2)-1)-a(n-1))` with `a(0)=2, a(1)=0`
-/

namespace A174007.P7495159273654951342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 0] fun n a =>
  (n : ℚ) / (1 / (a (n - 2) - 1) - a (n - 1))

end

end A174007.P7495159273654951342

namespace A174007

/-- `n/(1/(a(n-2)-1)-a(n-1))` -/
def P7495159273654951342.Spec : Prop :=
  ∀ n, P7495159273654951342.a n = (A174007 (n + 1) : ℚ)

end A174007

/-! ## A174007.P3481765774850434060

`Δ[A052938(n)]*A057979(n)`
-/

namespace A174007.P3481765774850434060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A057979 n

end

end A174007.P3481765774850434060

namespace A174007

/-- `Δ[A052938(n)]*A057979(n)` -/
def P3481765774850434060.Spec : Prop :=
  ∀ n, P3481765774850434060.a n = A174007 (n + 1)

end A174007

/-! ## A174007.P8033317023408986597

`A057979(n)*A168361(n+1)`
-/

namespace A174007.P8033317023408986597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n * A168361 (n + 1)

end

end A174007.P8033317023408986597

namespace A174007

/-- `A057979(n)*A168361(n+1)` -/
def P8033317023408986597.Spec : Prop :=
  ∀ n, P8033317023408986597.a n = A174007 (n + 1)

end A174007

/-!
# A174008: a(n) = n-th prime plus n-th even nonnegative nonprime.

The programs for A174008, the canonical program `A174008.P6709864670116437209` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174008 has offset 1).

The definition of A174008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174008.P6709864670116437209

`A000040(n+1)+A163300(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A174008

/-- `A000040(n+1)+A163300(n+1)` -/
def P6709864670116437209.Spec : Prop :=
  ∀ n, P6709864670116437209.a n = A174008 (n + 1)

theorem P6709864670116437209.correct : P6709864670116437209.Spec := by
  intro n
  simp only [A174008, Nat.add_sub_cancel]

end A174008

/-! ## A174008.P5886021994034756157

`A176628(n+1)+1+n`
-/

namespace A174008.P5886021994034756157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176628 (n + 1) + 1 + (n : ℤ)

end

end A174008.P5886021994034756157

namespace A174008

/-- `A176628(n+1)+1+n` -/
def P5886021994034756157.Spec : Prop :=
  ∀ n, P5886021994034756157.a n = A174008 (n + 1)

end A174008

/-! ## A174008.P7583412099790951646

`xor(1, A014688(n+1)+n)`
-/

namespace A174008.P7583412099790951646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A014688 (n + 1) + (n : ℤ))

end

end A174008.P7583412099790951646

namespace A174008

/-- `xor(1, A014688(n+1)+n)` -/
def P7583412099790951646.Spec : Prop :=
  ∀ n, P7583412099790951646.a n = A174008 (n + 1)

end A174008

/-! ## A174008.P100682291868799276

`A055670(n+1)+Δ[n²]`
-/

namespace A174008.P100682291868799276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A174008.P100682291868799276

namespace A174008

/-- `A055670(n+1)+Δ[n²]` -/
def P100682291868799276.Spec : Prop :=
  ∀ n, P100682291868799276.a n = A174008 (n + 1)

end A174008

/-! ## A174008.P8907924658091003843

`∑{p}[A001749(n+1), #+n]`
-/

namespace A174008.P8907924658091003843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p + n)

end

end A174008.P8907924658091003843

namespace A174008

/-- `∑{p}[A001749(n+1), #+n]` -/
def P8907924658091003843.Spec : Prop :=
  ∀ n, (P8907924658091003843.a n : ℤ) = A174008 (n + 1)

end A174008

/-! ## A174008.P12599069788771138920

`∑{p}[A100484(n+1), #+n]`
-/

namespace A174008.P12599069788771138920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p + n)

end

end A174008.P12599069788771138920

namespace A174008

/-- `∑{p}[A100484(n+1), #+n]` -/
def P12599069788771138920.Spec : Prop :=
  ∀ n, (P12599069788771138920.a n : ℤ) = A174008 (n + 1)

end A174008

/-! ## A174008.P18268561254747057109

`A008864(n+1)+3*n-abs(1-n)`
-/

namespace A174008.P18268561254747057109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (3 * n : ℤ) - |1 - (n : ℤ)|

end

end A174008.P18268561254747057109

namespace A174008

/-- `A008864(n+1)+3*n-abs(1-n)` -/
def P18268561254747057109.Spec : Prop :=
  ∀ n, P18268561254747057109.a n = A174008 (n + 1)

end A174008

/-! ## A174008.P11674550379879865845

`Δ[2*n+A000040(n)+a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A174008.P11674550379879865845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  (2 * n : ℤ) + (A000040 n + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174008.P11674550379879865845

namespace A174008

/-- `Δ[2*n+A000040(n)+a(n-1)]` -/
def P11674550379879865845.Spec : Prop :=
  ∀ n, P11674550379879865845.a n = A174008 (n + 1)

end A174008

/-! ## A174008.P12543118283044404344

`xor(1, A000040(2*n+1-n)+2*n+1)`
-/

namespace A174008.P12543118283044404344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000040 (2 * n + 1 - n) + (2 * n + 1 : ℤ))

end

end A174008.P12543118283044404344

namespace A174008

/-- `xor(1, A000040(2*n+1-n)+2*n+1)` -/
def P12543118283044404344.Spec : Prop :=
  ∀ n, P12543118283044404344.a n = A174008 (n + 1)

end A174008

/-! ## A174008.P15364449324556054507

`A103517(n)+A006005(n+1)`
-/

namespace A174008.P15364449324556054507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + A006005 (n + 1)

end

end A174008.P15364449324556054507

namespace A174008

/-- `A103517(n)+A006005(n+1)` -/
def P15364449324556054507.Spec : Prop :=
  ∀ n, P15364449324556054507.a n = A174008 (n + 1)

end A174008

/-! ## A174008.P7622274684491056566

`A171575(n+1)+A075526(n)`
-/

namespace A174008.P7622274684491056566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171575 (n + 1) + A075526 n

end

end A174008.P7622274684491056566

namespace A174008

/-- `A171575(n+1)+A075526(n)` -/
def P7622274684491056566.Spec : Prop :=
  ∀ n, P7622274684491056566.a n = A174008 (n + 1)

end A174008

/-! ## A174008.P11533909012690212341

`A078916(n+1)-A000038(n)`
-/

namespace A174008.P11533909012690212341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078916 (n + 1) - A000038 n

end

end A174008.P11533909012690212341

namespace A174008

/-- `A078916(n+1)-A000038(n)` -/
def P11533909012690212341.Spec : Prop :=
  ∀ n, P11533909012690212341.a n = A174008 (n + 1)

end A174008

/-! ## A174008.P17402563317257970594

`A078916(n+1)/A054977(n)`
-/

namespace A174008.P17402563317257970594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078916 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A174008.P17402563317257970594

namespace A174008

/-- `A078916(n+1)/A054977(n)` -/
def P17402563317257970594.Spec : Prop :=
  ∀ n, P17402563317257970594.a n = (A174008 (n + 1) : ℚ)

end A174008

/-! ## A174008.P2006378316792545729

`A086801(n+1)+A005818(n+1)`
-/

namespace A174008.P2006378316792545729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + A005818 (n + 1)

end

end A174008.P2006378316792545729

namespace A174008

/-- `A086801(n+1)+A005818(n+1)` -/
def P2006378316792545729.Spec : Prop :=
  ∀ n, P2006378316792545729.a n = A174008 (n + 1)

end A174008

/-! ## A174008.P6192266318563535340

`A114637(n+1)+A095116(n+1)`
-/

namespace A174008.P6192266318563535340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (n + 1) + A095116 (n + 1)

end

end A174008.P6192266318563535340

namespace A174008

/-- `A114637(n+1)+A095116(n+1)` -/
def P6192266318563535340.Spec : Prop :=
  ∀ n, P6192266318563535340.a n = A174008 (n + 1)

end A174008

/-! ## A174008.P10869924575243969909

`A134451(2*n)+A129726(n+1)`
-/

namespace A174008.P10869924575243969909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (2 * n) + A129726 (n + 1)

end

end A174008.P10869924575243969909

namespace A174008

/-- `A134451(2*n)+A129726(n+1)` -/
def P10869924575243969909.Spec : Prop :=
  ∀ n, P10869924575243969909.a n = A174008 (n + 1)

end A174008

/-! ## A174008.P4230868971756782878

`A000040(n+1)+2*A087156(n+1)`
-/

namespace A174008.P4230868971756782878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A087156 (n + 1)

end

end A174008.P4230868971756782878

namespace A174008

/-- `A000040(n+1)+2*A087156(n+1)` -/
def P4230868971756782878.Spec : Prop :=
  ∀ n, P4230868971756782878.a n = A174008 (n + 1)

end A174008

/-! ## A174008.P18180075723285571814

`A014688(n+1)-A153881(n+1)+n`
-/

namespace A174008.P18180075723285571814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - A153881 (n + 1) + (n : ℤ)

end

end A174008.P18180075723285571814

namespace A174008

/-- `A014688(n+1)-A153881(n+1)+n` -/
def P18180075723285571814.Spec : Prop :=
  ∀ n, P18180075723285571814.a n = A174008 (n + 1)

end A174008

/-! ## A174008.P14589117384681847767

`A000040(n+1)%A294016(n+1)+2*(n+1)`
-/

namespace A174008.P14589117384681847767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A294016 (n + 1)) + (2 * (n + 1) : ℤ)

end

end A174008.P14589117384681847767

namespace A174008

/-- `A000040(n+1)%A294016(n+1)+2*(n+1)` -/
def P14589117384681847767.Spec : Prop :=
  ∀ n, P14589117384681847767.a n = A174008 (n + 1)

end A174008

/-! ## A174008.P15162374789496155872

`A078916(n+1)+A163300(n+1)-A005843(n+1)`
-/

namespace A174008.P15162374789496155872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078916 (n + 1) + (A163300 (n + 1) - A005843 (n + 1))

end

end A174008.P15162374789496155872

namespace A174008

/-- `A078916(n+1)+A163300(n+1)-A005843(n+1)` -/
def P15162374789496155872.Spec : Prop :=
  ∀ n, P15162374789496155872.a n = A174008 (n + 1)

theorem P15162374789496155872.correct : P15162374789496155872.Spec := by
  intro n
  simp only [A174008, Nat.add_sub_cancel, A174008.P15162374789496155872.a, A174008.P6709864670116437209.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005843, A005843.P3167286115683555970.a, A078916, A078916.P17748288243755169363.a, A163300, A163300.P6939037721526909123.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A174008

/-!
# A174009: Indices of the primes appearing in A174008.

The programs for A174009, the canonical program `A174009.P5463232597024446893` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174009 has offset 1).

The definition of A174009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1610 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174009.P4605170165680059185

`A000720(p?[A174008(n+1)])`
-/

namespace A174009.P4605170165680059185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A174009.P4605170165680059185

namespace A174009

/-- `A000720(p?[A174008(n+1)])` -/
def P4605170165680059185.Spec : Prop :=
  ∀ n, P4605170165680059185.a n = A174009 (n + 1)

end A174009

/-! ## A174009.P5463232597024446893

`record[A061395(xor(1, A174008(n+1))+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A174009

/-- `record[A061395(xor(1, A174008(n+1))+1)]` -/
def P5463232597024446893.Spec : Prop :=
  ∀ n, P5463232597024446893.a n = A174009 (n + 1)

theorem P5463232597024446893.correct : P5463232597024446893.Spec := by
  intro n
  simp only [A174009, Nat.add_sub_cancel]

end A174009

/-! ## A174009.P3619254416314614122

`record[A061395(A052147(n+1)+2*n)]`
-/

namespace A174009.P3619254416314614122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A052147 (n + 1) + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174009.P3619254416314614122

namespace A174009

/-- `record[A061395(A052147(n+1)+2*n)]` -/
def P3619254416314614122.Spec : Prop :=
  ∀ n, P3619254416314614122.a n = A174009 (n + 1)

end A174009

/-! ## A174009.P14288197757795224994

`record[A061395(A000040(n+1)+2*(n+1))]`
-/

namespace A174009.P14288197757795224994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A000040 (n + 1) + (2 * (n + 1) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174009.P14288197757795224994

namespace A174009

/-- `record[A061395(A000040(n+1)+2*(n+1))]` -/
def P14288197757795224994.Spec : Prop :=
  ∀ n, P14288197757795224994.a n = A174009 (n + 1)

end A174009

/-! ## A174009.P16145503680536496487

`record[A297109(A000040(n+1)+2*(n+1))]`
-/

namespace A174009.P16145503680536496487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (A000040 (n + 1) + (2 * (n + 1) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174009.P16145503680536496487

namespace A174009

/-- `record[A297109(A000040(n+1)+2*(n+1))]` -/
def P16145503680536496487.Spec : Prop :=
  ∀ n, P16145503680536496487.a n = A174009 (n + 1)

end A174009

/-! ## A174009.P12016635242163112092

`record[A055396(A078916(n+1))]`
-/

namespace A174009.P12016635242163112092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A078916 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174009.P12016635242163112092

namespace A174009

/-- `record[A055396(A078916(n+1))]` -/
def P12016635242163112092.Spec : Prop :=
  ∀ n, P12016635242163112092.a n = A174009 (n + 1)

end A174009

/-! ## A174009.P883631603297658592

`record[A055396(A014688(n+1)+1+n)]`
-/

namespace A174009.P883631603297658592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A014688 (n + 1) + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174009.P883631603297658592

namespace A174009

/-- `record[A055396(A014688(n+1)+1+n)]` -/
def P883631603297658592.Spec : Prop :=
  ∀ n, P883631603297658592.a n = A174009 (n + 1)

end A174009

/-! ## A174009.P2600092961570186292

`record[A055396(A052147(n+1)+2*n)]`
-/

namespace A174009.P2600092961570186292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A052147 (n + 1) + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174009.P2600092961570186292

namespace A174009

/-- `record[A055396(A052147(n+1)+2*n)]` -/
def P2600092961570186292.Spec : Prop :=
  ∀ n, P2600092961570186292.a n = A174009 (n + 1)

end A174009

/-! ## A174009.P12949239429317121946

`record[A055396(A000040(n+1)+2*(n+1))]`
-/

namespace A174009.P12949239429317121946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A000040 (n + 1) + (2 * (n + 1) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174009.P12949239429317121946

namespace A174009

/-- `record[A055396(A000040(n+1)+2*(n+1))]` -/
def P12949239429317121946.Spec : Prop :=
  ∀ n, P12949239429317121946.a n = A174009 (n + 1)

end A174009

/-!
# A174010: Primes p of the form p = A000040(k) - A163300(k) for some k (includes duplicates).

The programs for A174010, there is no canonical definition to state claims against.
-/

/-! ## A174010.P9667969626680722744

`p?[A175787(n+1)-2*n]`
-/

namespace A174010.P9667969626680722744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174010.P9667969626680722744

/-! ## A174010.P14300519286236130936

`p?[A238526(n+3)-2*n]`
-/

namespace A174010.P14300519286236130936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 3) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174010.P14300519286236130936

/-! ## A174010.P742656156254648458

`p?[A000040(floor(acot(n)+n))-2*n]`
-/

namespace A174010.P742656156254648458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174010.P742656156254648458

/-! ## A174010.P3658580127586868590

`p?[A000040(n^floor(atan(n)))-2*n]`
-/

namespace A174010.P3658580127586868590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174010.P3658580127586868590

/-! ## A174010.P15459124288084897122

`p?[A000040(floor(sqrt(n²+1)))-2*n]`
-/

namespace A174010.P15459124288084897122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.sqrt (n ^ 2 + 1)) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174010.P15459124288084897122

/-! ## A174010.P3521496493689886972

`p?[xor(1, A000040(n+1))-(2*n+1)]`
-/

namespace A174010.P3521496493689886972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000040 (n + 1)) - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174010.P3521496493689886972

/-! ## A174010.P7484406143475103528

`p?[p?[A083920(n)]-A005843(n)]`
-/

namespace A174010.P7484406143475103528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174010.P7484406143475103528

/-! ## A174010.P9277960883625874415

`p?[A000040(A028310(n))-n-n]`
-/

namespace A174010.P9277960883625874415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A028310 n).toNat - (n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174010.P9277960883625874415

/-! ## A174010.P8010064467041231872

`p?[A000040(A000007(n)+n)-n-n]`
-/

namespace A174010.P8010064467041231872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000007 n + (n : ℤ)).toNat - (n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174010.P8010064467041231872

/-!
# A174011: 4*prime(n)-+3 are both prime.

The programs for A174011, there is no canonical definition to state claims against.
-/

/-! ## A174011.P9628046018010095000

`A000720(A106015(n+1))`
-/

namespace A174011.P9628046018010095000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A106015 (n + 1)).toNat

end

end A174011.P9628046018010095000

/-! ## A174011.P12735122060336628678

`∑{d}[A106015(n+1), A061395(#)]`
-/

namespace A174011.P12735122060336628678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A174011.P12735122060336628678

/-! ## A174011.P13002739266577196292

`A061395(A106015(n+1))%A038463(n+1)`
-/

namespace A174011.P13002739266577196292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A106015 (n + 1)).toNat) (A038463 (n + 1))

end

end A174011.P13002739266577196292

/-! ## A174011.P17372194346387587264

`A061395(A106015(n+1)%A255091(n+1))`
-/

namespace A174011.P17372194346387587264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A106015 (n + 1)) (A255091 (n + 1))).toNat

end

end A174011.P17372194346387587264

/-! ## A174011.P6717294879923039708

`A061395(2*A106015(n+1))`
-/

namespace A174011.P6717294879923039708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A106015 (n + 1)).toNat

end

end A174011.P6717294879923039708

/-! ## A174011.P11001017188796038249

`∑{d}[A106015(n+1), A258851(#)]`
-/

namespace A174011.P11001017188796038249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A258851 d

end

end A174011.P11001017188796038249

/-!
# A174012: a(n) = 3 * A064680(n).

The programs for A174012, the canonical program `A174012.P2403212887453053805` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174012 has offset 0).

The definition of A174012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174012.P2403212887453053805

`3*A064680(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A174012

/-- `3*A064680(n)` -/
def P2403212887453053805.Spec : Prop :=
  ∀ n, P2403212887453053805.a n = A174012 n

theorem P2403212887453053805.correct : P2403212887453053805.Spec := by
  intro n
  simp only [A174012]

end A174012

/-! ## A174012.P6663346628975167352

`6*n/gcd(2, n)²`
-/

namespace A174012.P6663346628975167352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((n : ℚ) / (Nat.gcd 2 n ^ 2 : ℚ))

end

end A174012.P6663346628975167352

namespace A174012

/-- `6*n/gcd(2, n)²` -/
def P6663346628975167352.Spec : Prop :=
  ∀ n, P6663346628975167352.a n = (A174012 n : ℚ)

end A174012

/-! ## A174012.P1454313764980529027

`6*n/gcd(4, n^2)`
-/

namespace A174012.P1454313764980529027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((n : ℚ) / (Nat.gcd 4 (n ^ 2) : ℚ))

end

end A174012.P1454313764980529027

namespace A174012

/-- `6*n/gcd(4, n^2)` -/
def P1454313764980529027.Spec : Prop :=
  ∀ n, P1454313764980529027.a n = (A174012 n : ℚ)

end A174012

/-! ## A174012.P2979134578936780768

`6*n/or(n, -2)²`
-/

namespace A174012.P2979134578936780768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((n : ℚ) / (Int.lor (n : ℤ) (-2) ^ 2 : ℚ))

end

end A174012.P2979134578936780768

namespace A174012

/-- `6*n/or(n, -2)²` -/
def P2979134578936780768.Spec : Prop :=
  ∀ n, P2979134578936780768.a n = (A174012 n : ℚ)

end A174012

/-! ## A174012.P11173339578506298129

`3*n*ratio[or(n, -2)]`
-/

namespace A174012.P11173339578506298129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))

end

end A174012.P11173339578506298129

namespace A174012

/-- `3*n*ratio[or(n, -2)]` -/
def P11173339578506298129.Spec : Prop :=
  ∀ n, P11173339578506298129.a n = (A174012 n : ℚ)

end A174012

/-! ## A174012.P17097232269662351502

`3*n*ratio[acot(n%2)]`
-/

namespace A174012.P17097232269662351502
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot ((n % 2 : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℝ) * (f1 (n + 1) / f1 n))

end

end A174012.P17097232269662351502

namespace A174012

/-- `3*n*ratio[acot(n%2)]` -/
def P17097232269662351502.Spec : Prop :=
  ∀ n, P17097232269662351502.a n = (A174012 n : ℝ)

end A174012

/-! ## A174012.P9032360405604641047

`3*n/2^(-1)^n`
-/

namespace A174012.P9032360405604641047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) / (2 : ℚ) ^ ((-1) ^ n : ℤ))

end

end A174012.P9032360405604641047

namespace A174012

/-- `3*n/2^(-1)^n` -/
def P9032360405604641047.Spec : Prop :=
  ∀ n, P9032360405604641047.a n = (A174012 n : ℚ)

end A174012

/-! ## A174012.P5131188357563667688

`6*n/(and(1, n)-2)²`
-/

namespace A174012.P5131188357563667688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * n : ℚ) / (((Nat.land 1 n : ℤ) - 2) ^ 2 : ℚ)

end

end A174012.P5131188357563667688

namespace A174012

/-- `6*n/(and(1, n)-2)²` -/
def P5131188357563667688.Spec : Prop :=
  ∀ n, P5131188357563667688.a n = (A174012 n : ℚ)

end A174012

/-! ## A174012.P18349943203796878654

`a(n-2)/(1-2/n)` with `a(0)=0, a(1)=6, a(2)=3`
-/

namespace A174012.P18349943203796878654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 6, 3] fun n a =>
  a (n - 2) / (1 - 2 / (n : ℚ))

end

end A174012.P18349943203796878654

namespace A174012

/-- `a(n-2)/(1-2/n)` -/
def P18349943203796878654.Spec : Prop :=
  ∀ n, P18349943203796878654.a n = (A174012 n : ℚ)

end A174012

/-! ## A174012.P9284921314554520877

`(((3*n)%6)²+1)*n/2+n`
-/

namespace A174012.P9284921314554520877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 * n % 6) ^ 2 + 1 : ℕ) : ℚ) * ((n : ℚ) / 2) + (n : ℚ)

end

end A174012.P9284921314554520877

namespace A174012

/-- `(((3*n)%6)²+1)*n/2+n` -/
def P9284921314554520877.Spec : Prop :=
  ∀ n, P9284921314554520877.a n = (A174012 n : ℚ)

end A174012

/-! ## A174012.P17151625538084582103

`n*A040033(n+1)/2`
-/

namespace A174012.P17151625538084582103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A040033 (n + 1) : ℚ) / 2

end

end A174012.P17151625538084582103

namespace A174012

/-- `n*A040033(n+1)/2` -/
def P17151625538084582103.Spec : Prop :=
  ∀ n, P17151625538084582103.a n = (A174012 n : ℚ)

end A174012

/-! ## A174012.P7142419266365846977

`3*n*A000034(n)²/2`
-/

namespace A174012.P7142419266365846977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) * A000034 n ^ 2 : ℚ) / 2

end

end A174012.P7142419266365846977

namespace A174012

/-- `3*n*A000034(n)²/2` -/
def P7142419266365846977.Spec : Prop :=
  ∀ n, P7142419266365846977.a n = (A174012 n : ℚ)

end A174012

/-! ## A174012.P16093059966869122767

`A008589(n)-A317311(n)`
-/

namespace A174012.P16093059966869122767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n - A317311 n

end

end A174012.P16093059966869122767

namespace A174012

/-- `A008589(n)-A317311(n)` -/
def P16093059966869122767.Spec : Prop :=
  ∀ n, P16093059966869122767.a n = A174012 n

end A174012

/-! ## A174012.P226926018965147387

`A008588(n)/A040005(n)`
-/

namespace A174012.P226926018965147387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008588 n : ℚ) / (A040005 n : ℚ)

end

end A174012.P226926018965147387

namespace A174012

/-- `A008588(n)/A040005(n)` -/
def P226926018965147387.Spec : Prop :=
  ∀ n, P226926018965147387.a n = (A174012 n : ℚ)

end A174012

/-! ## A174012.P14721558902761136048

`A008594(n)/A040015(n)`
-/

namespace A174012.P14721558902761136048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008594 n : ℚ) / (A040015 n : ℚ)

end

end A174012.P14721558902761136048

namespace A174012

/-- `A008594(n)/A040015(n)` -/
def P14721558902761136048.Spec : Prop :=
  ∀ n, P14721558902761136048.a n = (A174012 n : ℚ)

end A174012

/-! ## A174012.P2476460813400935418

`A008600(n)/A040033(n)`
-/

namespace A174012.P2476460813400935418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008600 n : ℚ) / (A040033 n : ℚ)

end

end A174012.P2476460813400935418

namespace A174012

/-- `A008600(n)/A040033(n)` -/
def P2476460813400935418.Spec : Prop :=
  ∀ n, P2476460813400935418.a n = (A174012 n : ℚ)

end A174012

/-! ## A174012.P16819156997279492728

`A008606(n)/A040059(n)`
-/

namespace A174012.P16819156997279492728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008606 n : ℚ) / (A040059 n : ℚ)

end

end A174012.P16819156997279492728

namespace A174012

/-- `A008606(n)/A040059(n)` -/
def P16819156997279492728.Spec : Prop :=
  ∀ n, P16819156997279492728.a n = (A174012 n : ℚ)

end A174012

/-! ## A174012.P6241219019426313875

`A044102(n)/A040135(n)`
-/

namespace A174012.P6241219019426313875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044102 n : ℚ) / (A040135 n : ℚ)

end

end A174012.P6241219019426313875

namespace A174012

/-- `A044102(n)/A040135(n)` -/
def P6241219019426313875.Spec : Prop :=
  ∀ n, P6241219019426313875.a n = (A174012 n : ℚ)

end A174012

/-! ## A174012.P113864415848004104

`A169823(n)/A040383(n)`
-/

namespace A174012.P113864415848004104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169823 n : ℚ) / (A040383 n : ℚ)

end

end A174012.P113864415848004104

namespace A174012

/-- `A169823(n)/A040383(n)` -/
def P113864415848004104.Spec : Prop :=
  ∀ n, P113864415848004104.a n = (A174012 n : ℚ)

end A174012

/-!
# A174014: Deleham triangle [1,1,-1,1,1,-1,1,...] DELTA [1,0,0,1,0,0,1,0,...], DELTA defined in A084938.

The programs for A174014, there is no canonical definition to state claims against.
-/

/-! ## A174014.P11422615937491718583

`A087845(A116647(n+1))`
-/

namespace A174014.P11422615937491718583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087845 (A116647 (n + 1)).toNat

end

end A174014.P11422615937491718583

/-! ## A174014.P11427912701953001353

`A087845(A110813(n)*A302998(n))`
-/

namespace A174014.P11427912701953001353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087845 (A110813 n * A302998 n).toNat

end

end A174014.P11427912701953001353

/-! ## A174014.P1794708375707704773

`A087845(A110813(n)*A303484(n))`
-/

namespace A174014.P1794708375707704773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087845 (A110813 n * A303484 n).toNat

end

end A174014.P1794708375707704773

/-! ## A174014.P632367639640785150

`A093375(n+1)-A097805(A187829(n+1))`
-/

namespace A174014.P632367639640785150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093375 (n + 1) - A097805 (A187829 (n + 1)).toNat

end

end A174014.P632367639640785150

/-!
# A174015: A generalized Catalan number sequence.

The programs for A174015, there is no canonical definition to state claims against.
-/

/-! ## A174015.P4606055868668143248

`A349047(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A174015.P4606055868668143248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A349047 (n - 2) + a (n - 1)

end

end A174015.P4606055868668143248

/-! ## A174015.P7618362232259329928

`2-A168505(n)`
-/

namespace A174015.P7618362232259329928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A168505 n

end

end A174015.P7618362232259329928

/-! ## A174015.P2969215832800068752

`or(-A168505(n), A000007(n))+2`
-/

namespace A174015.P2969215832800068752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A168505 n) (A000007 n) + 2

end

end A174015.P2969215832800068752

/-! ## A174015.P12163693882194200364

`-A168505(n)%(A077995(n)+1)+2`
-/

namespace A174015.P12163693882194200364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A168505 n) (A077995 n + 1) + 2

end

end A174015.P12163693882194200364

/-! ## A174015.P11550595992796304648

`-A168505(n)%A004171(n)+2`
-/

namespace A174015.P11550595992796304648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A168505 n) (A004171 n) + 2

end

end A174015.P11550595992796304648

/-! ## A174015.P17374071378990590981

`A174014(∑[n])`
-/

namespace A174015.P17374071378990590981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174014 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A174015.P17374071378990590981

/-!
# A174016: Row sums of number triangle A174014.

The programs for A174016, there is no canonical definition to state claims against.
-/

/-! ## A174016.P7996230344782494486

`2*(A090329(a(n-1))+a(n-1))` with `a(0)=1`
-/

namespace A174016.P7996230344782494486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A090329 (a (n - 1)).toNat + a (n - 1))

end

end A174016.P7996230344782494486

/-! ## A174016.P4356017062223561708

`A328596(A008936(n))`
-/

namespace A174016.P4356017062223561708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (A008936 n).toNat

end

end A174016.P4356017062223561708

/-! ## A174016.P10151009200116485059

`A328596(A320452(n))`
-/

namespace A174016.P10151009200116485059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (A320452 n).toNat

end

end A174016.P10151009200116485059

/-!
# A174017: A (1,1) Somos-4 sequence.

The programs for A174017, the canonical program `A174017.P12803584634036894672` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174017 has offset 0).

The definition of A174017 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174017.P12803584634036894672

`(a(n-1)*a(n-3)+a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=2, a(2)=-3, a(3)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A174017

/-- `(a(n-1)*a(n-3)+a(n-2)²)/a(n-4)` -/
def P12803584634036894672.Spec : Prop :=
  ∀ n, P12803584634036894672.a n = (A174017 n : ℚ)

end A174017

/-! ## A174017.P12882414511320319721

`A178081(A020639(3*(n+1)))*A178081(n+3)`
-/

namespace A174017.P12882414511320319721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178081 (A020639 (3 * (n + 1))).toNat * A178081 (n + 3)

end

end A174017.P12882414511320319721

namespace A174017

/-- `A178081(A020639(3*(n+1)))*A178081(n+3)` -/
def P12882414511320319721.Spec : Prop :=
  ∀ n, P12882414511320319721.a n = A174017 n

end A174017

/-!
# A174018: Number of reduced 3 X 3 magilatin squares with largest entry n.

The programs for A174018, there is no canonical definition to state claims against.
-/

/-! ## A174018.P684776196122944131

`A008594(n+1)*A111944(A268600(n))`
-/

namespace A174018.P684776196122944131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (n + 1) * A111944 (A268600 n).toNat

end

end A174018.P684776196122944131

/-! ## A174018.P18052529095973428936

`A224301(n+1)*A339361(A035052(n))`
-/

namespace A174018.P18052529095973428936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224301 (n + 1) * A339361 (A035052 n).toNat

end

end A174018.P18052529095973428936

/-!
# A174020: Number of reduced 3 X 3 magilatin squares with magic sum n.

The programs for A174020, there is no canonical definition to state claims against.
-/

/-! ## A174020.P8953618717857298390

`4*A345915(A068524(n+1))`
-/

namespace A174020.P8953618717857298390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A345915 (A068524 (n + 1)).toNat

end

end A174020.P8953618717857298390

/-! ## A174020.P18108000294587130524

`6*A094752(A094717(n))`
-/

namespace A174020.P18108000294587130524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A094752 (A094717 n).toNat

end

end A174020.P18108000294587130524

/-!
# A174024: List of primes of the form x^2+y^2 such that tau(x^2+y^2) = bigomega(x*y).

The programs for A174024, there is no canonical definition to state claims against.
-/

/-! ## A174024.P8889419558268467157

`p?[xor(5-A001222(n+1)², (n+1)²)]`
-/

namespace A174024.P8889419558268467157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (5 - A001222 (n + 1) ^ 2) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174024.P8889419558268467157

/-! ## A174024.P871213038873524978

`∪[A045637(n+1), A052292(n+1)]`
-/

namespace A174024.P871213038873524978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174024.P871213038873524978

/-! ## A174024.P4514049802934674756

`p?[A001222(A070151(n+1))*A002144(n+1)]`
-/

namespace A174024.P4514049802934674756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A070151 (n + 1)).toNat * A002144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174024.P4514049802934674756

/-! ## A174024.P13190786867943734388

`p?[A208883(n+2)]`
-/

namespace A174024.P13190786867943734388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208883 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174024.P13190786867943734388

/-! ## A174024.P11985439312278433703

`A208883(A003056(n+1)+n+1)`
-/

namespace A174024.P11985439312278433703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208883 (A003056 (n + 1) + (n + 1 : ℤ)).toNat

end

end A174024.P11985439312278433703

/-!
# A174026: Convolved with its aerated variant = (1, 2, 3, ...).

The programs for A174026, there is no canonical definition to state claims against.
-/

/-! ## A174026.P6725121820463537714

`a(floor(n/4))*∑[1-and(2, n)]` with `a(0)=1`
-/

namespace A174026.P6725121820463537714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 4⌋.toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A174026.P6725121820463537714

/-! ## A174026.P9755920748323960754

`a(floor(n/4))*∑[(-1)^(∑[n]+n)]` with `a(0)=1`
-/

namespace A174026.P9755920748323960754
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 4⌋.toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A174026.P9755920748323960754

/-! ## A174026.P9178319945249769186

`∏{digits}[A007090(n), C(2, #)]`
-/

namespace A174026.P9178319945249769186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.choose 2 x).prod

end

end A174026.P9178319945249769186

/-! ## A174026.P9804383564785554682

`C(2, n%4)*a(A002265(n))` with `a(0)=1`
-/

namespace A174026.P9804383564785554682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose 2 (n % 4) * a (A002265 n).toNat

end

end A174026.P9804383564785554682

/-! ## A174026.P11749473488407238381

`A166453(A054239(n))`
-/

namespace A174026.P11749473488407238381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166453 (A054239 n).toNat

end

end A174026.P11749473488407238381

/-! ## A174026.P16968869556782125650

`A151669(and(n, A004468(n)))`
-/

namespace A174026.P16968869556782125650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151669 (Int.land (n : ℤ) (A004468 n)).toNat

end

end A174026.P16968869556782125650

/-! ## A174026.P4042407660636950682

`∏{digits}[A007090(n), A000925(#)]`
-/

namespace A174026.P4042407660636950682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000925 x).prod

end

end A174026.P4042407660636950682

/-! ## A174026.P2944922671526220556

`∏{digits}[A007284(n), A105348(#)]`
-/

namespace A174026.P2944922671526220556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A105348 x).prod

end

end A174026.P2944922671526220556

/-! ## A174026.P16469377058658444058

`∏{digits}[A007090(n), A109167(#)]`
-/

namespace A174026.P16469377058658444058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A109167 x).prod

end

end A174026.P16469377058658444058

/-! ## A174026.P12696279454110204337

`∏{digits}[A007284(n), A117939(#)]`
-/

namespace A174026.P12696279454110204337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A117939 x).prod

end

end A174026.P12696279454110204337

/-!
# A174027: Alternating triangle (version 2) read by rows: composites k such that k=6*m-+1=r*j r>=j and n>=q>0 where r=6*n-1 or r=6*n+1 and j=6*q-1 or j=6*q+1.

The programs for A174027, there is no canonical definition to state claims against.
-/

/-! ## A174027.P3557034760800650092

`A173865(comp[∑[n]]+1)`
-/

namespace A174027.P3557034760800650092
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173865 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A174027.P3557034760800650092

/-!
# A174028: Triangle T(n,k) = 2+4k read by rows.

The programs for A174028, the canonical program `A174028.P741410419926483539` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174028 has offset 0).

The definition of A174028 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2+4*col(n)` (program `A174028.P741410419926483539`, by `A174028.P741410419926483539.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174028.P741410419926483539

`2+4*col(n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A174028

/-- `2+4*col(n)` -/
def P741410419926483539.Spec : Prop :=
  ∀ n, (P741410419926483539.a n : ℤ) = A174028 n

theorem P741410419926483539.correct : P741410419926483539.Spec := by
  intro n
  simp only [A174028]

end A174028

/-! ## A174028.P2402577666653460620

`A016825(col(n))`
-/

namespace A174028.P2402577666653460620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (SequenceMachineLib.triCol n)

end

end A174028.P2402577666653460620

namespace A174028

/-- `A016825(col(n))` -/
def P2402577666653460620.Spec : Prop :=
  ∀ n, P2402577666653460620.a n = A174028 n

theorem P2402577666653460620.correct : P2402577666653460620.Spec := by
  intro n
  simp only [A174028, Nat.add_sub_cancel, A174028.P2402577666653460620.a, A174028.P741410419926483539.a, A016825, A016825.P4712696052905976233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A174028

/-! ## A174028.P16821711735342796914

`2*A158405(n+1)`
-/

namespace A174028.P16821711735342796914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158405 (n + 1)

end

end A174028.P16821711735342796914

namespace A174028

/-- `2*A158405(n+1)` -/
def P16821711735342796914.Spec : Prop :=
  ∀ n, P16821711735342796914.a n = A174028 n

theorem P16821711735342796914.correct : P16821711735342796914.Spec := by
  intro n
  simp only [A174028, Nat.add_sub_cancel, A174028.P16821711735342796914.a, A174028.P741410419926483539.a, A158405, A158405.P5173674940907569791.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A174028

/-! ## A174028.P2365630523300872469

`4*(n-C(∑[char[∑[n]]], 2))+2`
-/

namespace A174028.P2365630523300872469
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) + 2

end

end A174028.P2365630523300872469

namespace A174028

/-- `4*(n-C(∑[char[∑[n]]], 2))+2` -/
def P2365630523300872469.Spec : Prop :=
  ∀ n, P2365630523300872469.a n = A174028 n

end A174028

/-! ## A174028.P7786491282378994044

`2-4*(C(∑[char[∑[n]]], 2)-n)`
-/

namespace A174028.P7786491282378994044
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - 4 * ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - (n : ℤ))

end

end A174028.P7786491282378994044

namespace A174028

/-- `2-4*(C(∑[char[∑[n]]], 2)-n)` -/
def P7786491282378994044.Spec : Prop :=
  ∀ n, P7786491282378994044.a n = A174028 n

end A174028

/-! ## A174028.P8291195665465766876

`gcd(a(n-1)+4, 2*char[∑[n]])` with `a(0)=2`
-/

namespace A174028.P8291195665465766876
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd (a (n - 1) + 4) (2 * (if ∃ j, f1 j = n then 1 else 0))

end

end A174028.P8291195665465766876

namespace A174028

/-- `gcd(a(n-1)+4, 2*char[∑[n]])` -/
def P8291195665465766876.Spec : Prop :=
  ∀ n, (P8291195665465766876.a n : ℤ) = A174028 n

end A174028

/-! ## A174028.P3134372113934994481

`(n-C(round(sqrt(Δ[n²])), 2))*4+2`
-/

namespace A174028.P3134372113934994481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ))).toNat 2 : ℤ)) * 4 + 2

end

end A174028.P3134372113934994481

namespace A174028

/-- `(n-C(round(sqrt(Δ[n²])), 2))*4+2` -/
def P3134372113934994481.Spec : Prop :=
  ∀ n, P3134372113934994481.a n = A174028 n

end A174028

/-! ## A174028.P17242869772313577332

`(a(n-1)+2)*(1-char[∑[n]])+2` with `a(0)=2`
-/

namespace A174028.P17242869772313577332
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (a (n - 1) + 2) * (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) + 2

end

end A174028.P17242869772313577332

namespace A174028

/-- `(a(n-1)+2)*(1-char[∑[n]])+2` -/
def P17242869772313577332.Spec : Prop :=
  ∀ n, P17242869772313577332.a n = A174028 n

end A174028

/-! ## A174028.P3802090119771834472

`(n-C(∑[char[∑[n]]], 2))/(1/2)²+2`
-/

namespace A174028.P3802090119771834472
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℚ) / ((1 : ℚ) / 2) ^ 2 + 2

end

end A174028.P3802090119771834472

namespace A174028

/-- `(n-C(∑[char[∑[n]]], 2))/(1/2)²+2` -/
def P3802090119771834472.Spec : Prop :=
  ∀ n, P3802090119771834472.a n = (A174028 n : ℚ)

end A174028

/-! ## A174028.P4035594300442467387

`4*A002262(n)+2`
-/

namespace A174028.P4035594300442467387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002262 n + 2

end

end A174028.P4035594300442467387

namespace A174028

/-- `4*A002262(n)+2` -/
def P4035594300442467387.Spec : Prop :=
  ∀ n, P4035594300442467387.a n = A174028 n

theorem P4035594300442467387.correct : P4035594300442467387.Spec := by
  intro n
  simp only [A174028, Nat.add_sub_cancel, A174028.P4035594300442467387.a, A174028.P741410419926483539.a, A002262, A002262.P17823619022233514403.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A174028

/-! ## A174028.P8819256930095674874

`4*A002260(n+1)-2`
-/

namespace A174028.P8819256930095674874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002260 (n + 1) - 2

end

end A174028.P8819256930095674874

namespace A174028

/-- `4*A002260(n+1)-2` -/
def P8819256930095674874.Spec : Prop :=
  ∀ n, P8819256930095674874.a n = A174028 n

theorem P8819256930095674874.correct : P8819256930095674874.Spec := by
  intro n
  simp only [A174028, Nat.add_sub_cancel, A174028.P8819256930095674874.a, A174028.P741410419926483539.a, A002260, A002260.P9170571874073898642.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A174028

/-! ## A174028.P1883341029717018140

`A016825(A002262(n))`
-/

namespace A174028.P1883341029717018140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A002262 n).toNat

end

end A174028.P1883341029717018140

namespace A174028

/-- `A016825(A002262(n))` -/
def P1883341029717018140.Spec : Prop :=
  ∀ n, P1883341029717018140.a n = A174028 n

end A174028

/-! ## A174028.P11774362927763527848

`A004277(A158405(n+1))`
-/

namespace A174028.P11774362927763527848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A158405 (n + 1)).toNat

end

end A174028.P11774362927763527848

namespace A174028

/-- `A004277(A158405(n+1))` -/
def P11774362927763527848.Spec : Prop :=
  ∀ n, P11774362927763527848.a n = A174028 n

end A174028

/-! ## A174028.P16826072788424810602

`A168276(A131225(n+1))`
-/

namespace A174028.P16826072788424810602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168276 (A131225 (n + 1)).toNat

end

end A174028.P16826072788424810602

namespace A174028

/-- `A168276(A131225(n+1))` -/
def P16826072788424810602.Spec : Prop :=
  ∀ n, P16826072788424810602.a n = A174028 n

end A174028

/-! ## A174028.P2865402871880675176

`A168276(A211197(n+1))`
-/

namespace A174028.P2865402871880675176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168276 (A211197 (n + 1)).toNat

end

end A174028.P2865402871880675176

namespace A174028

/-- `A168276(A211197(n+1))` -/
def P2865402871880675176.Spec : Prop :=
  ∀ n, P2865402871880675176.a n = A174028 n

end A174028

/-! ## A174028.P2125620299709022724

`2*A027170(A112367(n))`
-/

namespace A174028.P2125620299709022724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027170 (A112367 n).toNat

end

end A174028.P2125620299709022724

namespace A174028

/-- `2*A027170(A112367(n))` -/
def P2125620299709022724.Spec : Prop :=
  ∀ n, P2125620299709022724.a n = A174028 n

end A174028

/-! ## A174028.P10396688543160184586

`2*A099375(A061579(n))`
-/

namespace A174028.P10396688543160184586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099375 (A061579 n).toNat

end

end A174028.P10396688543160184586

namespace A174028

/-- `2*A099375(A061579(n))` -/
def P10396688543160184586.Spec : Prop :=
  ∀ n, P10396688543160184586.a n = A174028 n

end A174028

/-! ## A174028.P17863148464793236783

`A016825(n-A057944(n))`
-/

namespace A174028.P17863148464793236783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 ((n : ℤ) - A057944 n).toNat

end

end A174028.P17863148464793236783

namespace A174028

/-- `A016825(n-A057944(n))` -/
def P17863148464793236783.Spec : Prop :=
  ∀ n, P17863148464793236783.a n = A174028 n

end A174028

/-! ## A174028.P2353057809002100474

`A016825(A002260(n+1)-1)`
-/

namespace A174028.P2353057809002100474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A002260 (n + 1) - 1).toNat

end

end A174028.P2353057809002100474

namespace A174028

/-- `A016825(A002260(n+1)-1)` -/
def P2353057809002100474.Spec : Prop :=
  ∀ n, P2353057809002100474.a n = A174028 n

end A174028

/-! ## A174028.P9582466296845245292

`A004275(2*A002260(n+1))`
-/

namespace A174028.P9582466296845245292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (2 * A002260 (n + 1)).toNat

end

end A174028.P9582466296845245292

namespace A174028

/-- `A004275(2*A002260(n+1))` -/
def P9582466296845245292.Spec : Prop :=
  ∀ n, P9582466296845245292.a n = A174028 n

end A174028

/-!
# A174029: a(n) = 3*(3*n+1)*(5 - (-1)^n)/4.

The programs for A174029, the canonical program `A174029.P2205266365198065811` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174029 has offset 0).

The definition of A174029 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(3*n+1)*(5-(-1)^n)/4` (program `A174029.P7936968962115653916`, by `A174029.P7936968962115653916.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174029.P2205266365198065811

`2*a(n-2)-a(n-4)` with `a(0)=3, a(1)=18, a(2)=21, a(3)=45`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A174029

/-- `2*a(n-2)-a(n-4)` -/
def P2205266365198065811.Spec : Prop :=
  ∀ n, P2205266365198065811.a n = A174029 n

theorem P2205266365198065811.correct : P2205266365198065811.Spec := by
  intro n
  simp only [A174029]

end A174029

/-! ## A174029.P7936968962115653916

`3*(3*n+1)*(5-(-1)^n)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174029.P7936968962115653916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (3 * n + 1) : ℤ) * (5 - (-1) ^ n) : ℚ) / 4

end

end A174029.P7936968962115653916

namespace A174029

/-- `3*(3*n+1)*(5-(-1)^n)/4` -/
def P7936968962115653916.Spec : Prop :=
  ∀ n, P7936968962115653916.a n = (A174029 n : ℚ)

theorem P7936968962115653916.correct : P7936968962115653916.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A174029, Nat.add_sub_cancel, A174029.P7936968962115653916.a, A174029.P2205266365198065811.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A174029, Nat.add_sub_cancel, A174029.P7936968962115653916.a, A174029.P2205266365198065811.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A174029

/-! ## A174029.P7448174125553471362

`A064680(3*n)+A064680(3*n+1)+A064680(3*n+2)`
-/

namespace A174029.P7448174125553471362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (3 * n) + A064680 (3 * n + 1) + A064680 (3 * n + 2)

end

end A174029.P7448174125553471362

namespace A174029

/-- `A064680(3*n)+A064680(3*n+1)+A064680(3*n+2)` -/
def P7448174125553471362.Spec : Prop :=
  ∀ n, P7448174125553471362.a n = A174029 n

end A174029

/-! ## A174029.P10902347837204247132

`A010707(n)*A165355(n)`
-/

namespace A174029.P10902347837204247132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010707 n * A165355 n

end

end A174029.P10902347837204247132

namespace A174029

/-- `A010707(n)*A165355(n)` -/
def P10902347837204247132.Spec : Prop :=
  ∀ n, P10902347837204247132.a n = A174029 n

end A174029

/-! ## A174029.P8065865589139997037

`A165355(n)+2*A166138(n)`
-/

namespace A174029.P8065865589139997037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 n + 2 * A166138 n

end

end A174029.P8065865589139997037

namespace A174029

/-- `A165355(n)+2*A166138(n)` -/
def P8065865589139997037.Spec : Prop :=
  ∀ n, P8065865589139997037.a n = A174029 n

end A174029

/-! ## A174029.P2870555251796277368

`A008486(A047209(n+1))+6*n/A280193(n)²`
-/

namespace A174029.P2870555251796277368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 (A047209 (n + 1)).toNat : ℚ) + (6 * n : ℚ) / (A280193 n ^ 2 : ℚ)

end

end A174029.P2870555251796277368

namespace A174029

/-- `A008486(A047209(n+1))+6*n/A280193(n)²` -/
def P2870555251796277368.Spec : Prop :=
  ∀ n, P2870555251796277368.a n = (A174029 n : ℚ)

end A174029

/-! ## A174029.P10909746156080069078

`A008486(A047209(n+1))+A016777(A064680(n))-1`
-/

namespace A174029.P10909746156080069078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A047209 (n + 1)).toNat + (A016777 (A064680 n).toNat - 1)

end

end A174029.P10909746156080069078

namespace A174029

/-- `A008486(A047209(n+1))+A016777(A064680(n))-1` -/
def P10909746156080069078.Spec : Prop :=
  ∀ n, P10909746156080069078.a n = A174029 n

end A174029

/-! ## A174029.P17199660413660632492

`A129902(3*n+1)+A129902(3*n+1)/2`
-/

namespace A174029.P17199660413660632492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129902 (3 * n + 1) : ℚ) + (A129902 (3 * n + 1) : ℚ) / 2

end

end A174029.P17199660413660632492

namespace A174029

/-- `A129902(3*n+1)+A129902(3*n+1)/2` -/
def P17199660413660632492.Spec : Prop :=
  ∀ n, P17199660413660632492.a n = (A174029 n : ℚ)

end A174029

/-! ## A174029.P8937378904516361426

`A208570(3*n+1)+A208570(3*n+1)/2`
-/

namespace A174029.P8937378904516361426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208570 (3 * n + 1) : ℚ) + (A208570 (3 * n + 1) : ℚ) / 2

end

end A174029.P8937378904516361426

namespace A174029

/-- `A208570(3*n+1)+A208570(3*n+1)/2` -/
def P8937378904516361426.Spec : Prop :=
  ∀ n, P8937378904516361426.a n = (A174029 n : ℚ)

end A174029

/-! ## A174029.P18302449713622164855

`A271669(3*n+1)+A271669(3*n+1)/2`
-/

namespace A174029.P18302449713622164855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271669 (3 * n + 1) : ℚ) + (A271669 (3 * n + 1) : ℚ) / 2

end

end A174029.P18302449713622164855

namespace A174029

/-- `A271669(3*n+1)+A271669(3*n+1)/2` -/
def P18302449713622164855.Spec : Prop :=
  ∀ n, P18302449713622164855.a n = (A174029 n : ℚ)

end A174029

/-! ## A174029.P7428562548338763614

`A008486(A047209(n+1))+A064680(3*n)`
-/

namespace A174029.P7428562548338763614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A047209 (n + 1)).toNat + A064680 (3 * n)

end

end A174029.P7428562548338763614

namespace A174029

/-- `A008486(A047209(n+1))+A064680(3*n)` -/
def P7428562548338763614.Spec : Prop :=
  ∀ n, P7428562548338763614.a n = A174029 n

end A174029

/-! ## A174029.P8696943366929335597

`A008486(A080512(3*n+1))`
-/

namespace A174029.P8696943366929335597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A080512 (3 * n + 1)).toNat

end

end A174029.P8696943366929335597

namespace A174029

/-- `A008486(A080512(3*n+1))` -/
def P8696943366929335597.Spec : Prop :=
  ∀ n, P8696943366929335597.a n = A174029 n

end A174029

/-! ## A174029.P1655096823380342319

`A008486(A257143(2*n+1+n))`
-/

namespace A174029.P1655096823380342319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A257143 (2 * n + 1 + n)).toNat

end

end A174029.P1655096823380342319

namespace A174029

/-- `A008486(A257143(2*n+1+n))` -/
def P1655096823380342319.Spec : Prop :=
  ∀ n, P1655096823380342319.a n = A174029 n

end A174029

/-! ## A174029.P3973081705999170812

`A008585(A080512(A123684(2*n+1)))`
-/

namespace A174029.P3973081705999170812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A080512 (A123684 (2 * n + 1)).toNat).toNat

end

end A174029.P3973081705999170812

namespace A174029

/-- `A008585(A080512(A123684(2*n+1)))` -/
def P3973081705999170812.Spec : Prop :=
  ∀ n, P3973081705999170812.a n = A174029 n

end A174029

/-! ## A174029.P5320295812849247017

`A008486(A064680(n)+A047209(n+1))`
-/

namespace A174029.P5320295812849247017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A064680 n + A047209 (n + 1)).toNat

end

end A174029.P5320295812849247017

namespace A174029

/-- `A008486(A064680(n)+A047209(n+1))` -/
def P5320295812849247017.Spec : Prop :=
  ∀ n, P5320295812849247017.a n = A174029 n

end A174029

/-! ## A174029.P13327046667276705751

`A016777(A064680(n)+A047209(n+1))-1`
-/

namespace A174029.P13327046667276705751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A064680 n + A047209 (n + 1)).toNat - 1

end

end A174029.P13327046667276705751

namespace A174029

/-- `A016777(A064680(n)+A047209(n+1))-1` -/
def P13327046667276705751.Spec : Prop :=
  ∀ n, P13327046667276705751.a n = A174029 n

end A174029

/-! ## A174029.P9828592709896311185

`A008585(A080512(A016777(A004526(2*n))))`
-/

namespace A174029.P9828592709896311185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A080512 (A016777 (A004526 (2 * n)).toNat).toNat).toNat

end

end A174029.P9828592709896311185

namespace A174029

/-- `A008585(A080512(A016777(A004526(2*n))))` -/
def P9828592709896311185.Spec : Prop :=
  ∀ n, P9828592709896311185.a n = A174029 n

end A174029

/-! ## A174029.P6405838764356119505

`A008585(A080512(A008619(6*n)))`
-/

namespace A174029.P6405838764356119505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A080512 (A008619 (6 * n)).toNat).toNat

end

end A174029.P6405838764356119505

namespace A174029

/-- `A008585(A080512(A008619(6*n)))` -/
def P6405838764356119505.Spec : Prop :=
  ∀ n, P6405838764356119505.a n = A174029 n

end A174029

/-! ## A174029.P9431973346671772787

`A166138(A166138(n))-A165367(3*n+1)`
-/

namespace A174029.P9431973346671772787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166138 (A166138 n).toNat - A165367 (3 * n + 1)

end

end A174029.P9431973346671772787

namespace A174029

/-- `A166138(A166138(n))-A165367(3*n+1)` -/
def P9431973346671772787.Spec : Prop :=
  ∀ n, P9431973346671772787.a n = A174029 n

end A174029

/-! ## A174029.P6302906142203613405

`A080512(A017197(n))`
-/

namespace A174029.P6302906142203613405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (A017197 n).toNat

end

end A174029.P6302906142203613405

namespace A174029

/-- `A080512(A017197(n))` -/
def P6302906142203613405.Spec : Prop :=
  ∀ n, P6302906142203613405.a n = A174029 n

end A174029

/-!
# A174030: Partial sums of A007694.

The programs for A174030, there is no canonical definition to state claims against.
-/

/-! ## A174030.P13554644319667124555

`2*A259823(n)+1`
-/

namespace A174030.P13554644319667124555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259823 n + 1

end

end A174030.P13554644319667124555

/-! ## A174030.P16262672926858003545

`∑[A007694(n+1)]`
-/

namespace A174030.P16262672926858003545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174030.P16262672926858003545

/-! ## A174030.P16072504774256860100

`∑[sqrt(A063755(n+1))]`
-/

namespace A174030.P16072504774256860100
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063755 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174030.P16072504774256860100

/-! ## A174030.P9334686155068938412

`∑[A000423(n+2)/3]`
-/

namespace A174030.P9334686155068938412
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000423 (n + 2) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174030.P9334686155068938412

/-! ## A174030.P6600147429297078412

`∑[ceil(A187778(n+1)/3)]`
-/

namespace A174030.P6600147429297078412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A187778 (n + 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174030.P6600147429297078412

/-! ## A174030.P7885941600780214006

`a(n-1)+A190812(n)+1` with `a(0)=1`
-/

namespace A174030.P7885941600780214006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A190812 n + 1)

end

end A174030.P7885941600780214006

/-! ## A174030.P1101856343503185467

`a(n-1)+2*A003586(n)` with `a(0)=1`
-/

namespace A174030.P1101856343503185467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A003586 n

end

end A174030.P1101856343503185467

/-! ## A174030.P11854905359739652492

`or(1, ∑[A007694(ϕ²-(ϕ-n))])`
-/

namespace A174030.P11854905359739652492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A174030.P11854905359739652492

/-! ## A174030.P12752053147609388977

`A291876(n+1)-A190812(n+1)`
-/

namespace A174030.P12752053147609388977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291876 (n + 1) - A190812 (n + 1)

end

end A174030.P12752053147609388977

/-! ## A174030.P12559700039717154114

`∑[record[A007694(A134478(n))]]`
-/

namespace A174030.P12559700039717154114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174030.P12559700039717154114

/-!
# A174031: The smallest integer k>0 such that the double-concatenation prime(n) // prime(n+1) // k is a prime number.

The programs for A174031, there is no canonical definition to state claims against.
-/

/-! ## A174031.P8172624480151302853

`A068695(A045533(n+1))`
-/

namespace A174031.P8172624480151302853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A045533 (n + 1)).toNat

end

end A174031.P8172624480151302853

/-! ## A174031.P15345521238117840088

`A068695(A049851(p?[Δ[n²]]))`
-/

namespace A174031.P15345521238117840088
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A049851 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A174031.P15345521238117840088

/-! ## A174031.P13055163813667365445

`A091088(or(1, A045533(n+1)))`
-/

namespace A174031.P13055163813667365445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (Int.lor 1 (A045533 (n + 1))).toNat

end

end A174031.P13055163813667365445

/-! ## A174031.P16363027906616517158

`A091088(A049851(p?[2*n+1]))`
-/

namespace A174031.P16363027906616517158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (A049851 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A174031.P16363027906616517158

/-! ## A174031.P632921512420481087

`A091088(A045533(n+1)%A032656(n+1))`
-/

namespace A174031.P632921512420481087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (Int.tmod (A045533 (n + 1)) (A032656 (n + 1))).toNat

end

end A174031.P632921512420481087

/-!
# A174032: Triangle T(n, k) = Sum_{j>=0} floor(binomial(n, k)/2^j), read by rows.

The programs for A174032, the canonical program `A174032.P17895363886377361052` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174032 has offset 0).

The definition of A174032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174032.P7319987248699176126

`A028326(n)-A001222(A060632(A028326(n)))`
-/

namespace A174032.P7319987248699176126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A001222 (A060632 (A028326 n).toNat).toNat

end

end A174032.P7319987248699176126

namespace A174032

/-- `A028326(n)-A001222(A060632(A028326(n)))` -/
def P7319987248699176126.Spec : Prop :=
  ∀ n, P7319987248699176126.a n = A174032 n

end A174032

/-! ## A174032.P18165416415497950131

`A005187(C(∑[char[∑[n+1]]], n-C(∑[char[∑[n]]], 2)))`
-/

namespace A174032.P18165416415497950131
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat)

end

end A174032.P18165416415497950131

namespace A174032

/-- `A005187(C(∑[char[∑[n+1]]], n-C(∑[char[∑[n]]], 2)))` -/
def P18165416415497950131.Spec : Prop :=
  ∀ n, P18165416415497950131.a n = A174032 n

end A174032

/-! ## A174032.P17895363886377361052

`A005187(A007318(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A174032

/-- `A005187(A007318(n))` -/
def P17895363886377361052.Spec : Prop :=
  ∀ n, P17895363886377361052.a n = A174032 n

theorem P17895363886377361052.correct : P17895363886377361052.Spec := by
  intro n
  simp only [A174032]

end A174032

/-! ## A174032.P12400511120891609181

`A005187(abs(A108086(n)))`
-/

namespace A174032.P12400511120891609181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 |A108086 n|.toNat

end

end A174032.P12400511120891609181

namespace A174032

/-- `A005187(abs(A108086(n)))` -/
def P12400511120891609181.Spec : Prop :=
  ∀ n, P12400511120891609181.a n = A174032 n

end A174032

/-! ## A174032.P10956577398436779018

`A005187(abs(A117440(n)))`
-/

namespace A174032.P10956577398436779018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 |A117440 n|.toNat

end

end A174032.P10956577398436779018

namespace A174032

/-- `A005187(abs(A117440(n)))` -/
def P10956577398436779018.Spec : Prop :=
  ∀ n, P10956577398436779018.a n = A174032 n

end A174032

/-! ## A174032.P6265848679252479278

`A005187(abs(A130595(n)))`
-/

namespace A174032.P6265848679252479278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 |A130595 n|.toNat

end

end A174032.P6265848679252479278

namespace A174032

/-- `A005187(abs(A130595(n)))` -/
def P6265848679252479278.Spec : Prop :=
  ∀ n, P6265848679252479278.a n = A174032 n

end A174032

/-! ## A174032.P9247847042858789516

`A005187(sqrt(A008459(n)))`
-/

namespace A174032.P9247847042858789516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))).toNat

end

end A174032.P9247847042858789516

namespace A174032

/-- `A005187(sqrt(A008459(n)))` -/
def P9247847042858789516.Spec : Prop :=
  ∀ n, P9247847042858789516.a n = A174032 n

end A174032

/-! ## A174032.P5677541917744818163

`A005187(Δ[A102363(n)])`
-/

namespace A174032.P5677541917744818163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (f1 (n + 1) - f1 n).toNat

end

end A174032.P5677541917744818163

namespace A174032

/-- `A005187(Δ[A102363(n)])` -/
def P5677541917744818163.Spec : Prop :=
  ∀ n, P5677541917744818163.a n = A174032 n

end A174032

/-! ## A174032.P5048749972631725200

`A005187(A014473(n)+1)`
-/

namespace A174032.P5048749972631725200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A014473 n + 1).toNat

end

end A174032.P5048749972631725200

namespace A174032

/-- `A005187(A014473(n)+1)` -/
def P5048749972631725200.Spec : Prop :=
  ∀ n, P5048749972631725200.a n = A174032 n

theorem P5048749972631725200.correct : P5048749972631725200.Spec := by
  intro n
  simp only [A174032, Nat.add_sub_cancel, A174032.P5048749972631725200.a, A174032.P17895363886377361052.a, A005187, A005187.P3874015513960485494.a, A007318, A007318.P11755526479805562006.a, A014473, A014473.P9301799580602651200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174032

/-! ## A174032.P3202379658009184043

`A005187(A028326(n)/2)`
-/

namespace A174032.P3202379658009184043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2)).toNat

end

end A174032.P3202379658009184043

namespace A174032

/-- `A005187(A028326(n)/2)` -/
def P3202379658009184043.Spec : Prop :=
  ∀ n, P3202379658009184043.a n = A174032 n

end A174032

/-! ## A174032.P4982404644257637674

`A005187(root(A008459(n), 2))`
-/

namespace A174032.P4982404644257637674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (SequenceMachineLib.roundAway ((A008459 n : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A174032.P4982404644257637674

namespace A174032

/-- `A005187(root(A008459(n), 2))` -/
def P4982404644257637674.Spec : Prop :=
  ∀ n, P4982404644257637674.a n = A174032 n

end A174032

/-! ## A174032.P16013939524834940920

`A005187(ceil(A134059(n)/3))`
-/

namespace A174032.P16013939524834940920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 ⌈(A134059 n : ℚ) / 3⌉.toNat

end

end A174032.P16013939524834940920

namespace A174032

/-- `A005187(ceil(A134059(n)/3))` -/
def P16013939524834940920.Spec : Prop :=
  ∀ n, P16013939524834940920.a n = A174032 n

end A174032

/-! ## A174032.P2718032968695159038

`A005187(A008459(n)^(1/2))`
-/

namespace A174032.P2718032968695159038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (SequenceMachineLib.roundAway ((A008459 n : ℝ) ^ ((1 : ℚ) / 2 : ℝ))).toNat

end

end A174032.P2718032968695159038

namespace A174032

/-- `A005187(A008459(n)^(1/2))` -/
def P2718032968695159038.Spec : Prop :=
  ∀ n, P2718032968695159038.a n = A174032 n

end A174032

/-! ## A174032.P602388173250572339

`A005187(A028276(n)-A028263(n))`
-/

namespace A174032.P602388173250572339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A028276 n - A028263 n).toNat

end

end A174032.P602388173250572339

namespace A174032

/-- `A005187(A028276(n)-A028263(n))` -/
def P602388173250572339.Spec : Prop :=
  ∀ n, P602388173250572339.a n = A174032 n

theorem P602388173250572339.correct : P602388173250572339.Spec := by
  intro n
  simp only [A174032, Nat.add_sub_cancel, A174032.P602388173250572339.a, A174032.P17895363886377361052.a, A005187, A005187.P3874015513960485494.a, A007318, A007318.P11755526479805562006.a, A028263, A028263.P3177418721069471964.a, A028276, A028276.P15109551320821074576.a, A014430, A014430.P2601729842851247134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174032

/-! ## A174032.P9412816899376500002

`A005187(A028276(n)%A028263(n))`
-/

namespace A174032.P9412816899376500002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (Int.tmod (A028276 n) (A028263 n)).toNat

end

end A174032.P9412816899376500002

namespace A174032

/-- `A005187(A028276(n)%A028263(n))` -/
def P9412816899376500002.Spec : Prop :=
  ∀ n, P9412816899376500002.a n = A174032 n

end A174032

/-! ## A174032.P16527154384607291942

`A005187(A097805(n+1)+A097805(n))`
-/

namespace A174032.P16527154384607291942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A097805 (n + 1) + A097805 n).toNat

end

end A174032.P16527154384607291942

namespace A174032

/-- `A005187(A097805(n+1)+A097805(n))` -/
def P16527154384607291942.Spec : Prop :=
  ∀ n, P16527154384607291942.a n = A174032 n

end A174032

/-! ## A174032.P7686247664586853964

`A005187(A102363(n+1)-A102363(n))`
-/

namespace A174032.P7686247664586853964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A102363 (n + 1) - A102363 n).toNat

end

end A174032.P7686247664586853964

namespace A174032

/-- `A005187(A102363(n+1)-A102363(n))` -/
def P7686247664586853964.Spec : Prop :=
  ∀ n, P7686247664586853964.a n = A174032 n

end A174032

/-! ## A174032.P8446384645834864822

`A005187(A103406(n)/A002260(n+1))`
-/

namespace A174032.P8446384645834864822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (SequenceMachineLib.roundAway ((A103406 n : ℚ) / (A002260 (n + 1) : ℚ))).toNat

end

end A174032.P8446384645834864822

namespace A174032

/-- `A005187(A103406(n)/A002260(n+1))` -/
def P8446384645834864822.Spec : Prop :=
  ∀ n, P8446384645834864822.a n = A174032 n

end A174032

/-! ## A174032.P10448309394985393808

`∑{d}[A007318(n), A297114(#)+#]`
-/

namespace A174032.P10448309394985393808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A297114 d + (d : ℤ))

end

end A174032.P10448309394985393808

namespace A174032

/-- `∑{d}[A007318(n), A297114(#)+#]` -/
def P10448309394985393808.Spec : Prop :=
  ∀ n, P10448309394985393808.a n = A174032 n

end A174032

/-! ## A174032.P11318936757033955367

`A078896(A124927(n))`
-/

namespace A174032.P11318936757033955367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078896 (A124927 n).toNat

end

end A174032.P11318936757033955367

namespace A174032

/-- `A078896(A124927(n))` -/
def P11318936757033955367.Spec : Prop :=
  ∀ n, P11318936757033955367.a n = A174032 n

end A174032

/-!
# A174033: T(n, m) = Sum_{i=0..10} floor(Eulerian(n+1, m)/2^i).

The programs for A174033, there is no canonical definition to state claims against.
-/

/-! ## A174033.P1031499665492141695

`A005187(A008292(n+1))-A092220(A185037(n))`
-/

namespace A174033.P1031499665492141695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A008292 (n + 1)).toNat - A092220 (A185037 n).toNat

end

end A174033.P1031499665492141695

/-! ## A174033.P10927779195910483831

`A002264(3*A005187(A008292(n+1)))`
-/

namespace A174033.P10927779195910483831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (3 * A005187 (A008292 (n + 1)).toNat).toNat

end

end A174033.P10927779195910483831

/-! ## A174033.P5073798781404109215

`A005187(A008292(n+1)^A319099(n+1))`
-/

namespace A174033.P5073798781404109215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (SequenceMachineLib.roundAway ((A008292 (n + 1) : ℚ) ^ (A319099 (n + 1) : ℤ))).toNat

end

end A174033.P5073798781404109215

/-! ## A174033.P18163631429631044659

`A005187(A008292(n+1)%A136356(n+1))`
-/

namespace A174033.P18163631429631044659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (Int.tmod (A008292 (n + 1)) (A136356 (n + 1))).toNat

end

end A174033.P18163631429631044659

/-! ## A174033.P4549712711114995398

`A005187(A008292(n+1))%A263545(n+1)`
-/

namespace A174033.P4549712711114995398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005187 (A008292 (n + 1)).toNat) (A263545 (n + 1))

end

end A174033.P4549712711114995398

/-!
# A174034: The smallest prime p such that the double-concatenation prime(n) // prime(n+1) // p is a prime number.

The programs for A174034, there is no canonical definition to state claims against.
-/

/-! ## A174034.P14588132039028252000

`A096915(A045533(n+1))`
-/

namespace A174034.P14588132039028252000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (A045533 (n + 1)).toNat

end

end A174034.P14588132039028252000

/-! ## A174034.P3236134651919331392

`A096915(A049851(p?[2*n+1]))`
-/

namespace A174034.P3236134651919331392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (A049851 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A174034.P3236134651919331392

/-! ## A174034.P7739940424750624391

`A096915(∩[A049852(n+1), A049851(n+3)])`
-/

namespace A174034.P7739940424750624391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A174034.P7739940424750624391

/-!
# A174035: Triangle read by rows: T(n,m) = binomial(n, m) + floor(Eulerian(n + 1, m)/2).

The programs for A174035, the canonical program `A174035.P9243138014454562383` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174035 has offset 0).

The definition of A174035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174035.P9243138014454562383

`floor(A141689(n+1)+A007318(n)/2)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A174035

/-- `floor(A141689(n+1)+A007318(n)/2)` -/
def P9243138014454562383.Spec : Prop :=
  ∀ n, P9243138014454562383.a n = A174035 n

theorem P9243138014454562383.correct : P9243138014454562383.Spec := by
  intro n
  simp only [A174035]

end A174035

/-! ## A174035.P13661214885945275

`floor(A141689(n+1)+A206735(n)/2)`
-/

namespace A174035.P13661214885945275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141689 (n + 1) : ℚ) + (A206735 n : ℚ) / 2⌋

end

end A174035.P13661214885945275

namespace A174035

/-- `floor(A141689(n+1)+A206735(n)/2)` -/
def P13661214885945275.Spec : Prop :=
  ∀ n, P13661214885945275.a n = A174035 n

end A174035

/-! ## A174035.P4698971350682892822

`floor(A008292(n+1)/2)+A007318(n)`
-/

namespace A174035.P4698971350682892822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008292 (n + 1) : ℚ) / 2⌋ + A007318 n

end

end A174035.P4698971350682892822

namespace A174035

/-- `floor(A008292(n+1)/2)+A007318(n)` -/
def P4698971350682892822.Spec : Prop :=
  ∀ n, P4698971350682892822.a n = A174035 n

end A174035

/-! ## A174035.P16857536531220334574

`floor((A028326(n)+A008292(n+1))/2)`
-/

namespace A174035.P16857536531220334574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028326 n + A008292 (n + 1) : ℚ) / 2⌋

end

end A174035.P16857536531220334574

namespace A174035

/-- `floor((A028326(n)+A008292(n+1))/2)` -/
def P16857536531220334574.Spec : Prop :=
  ∀ n, P16857536531220334574.a n = A174035 n

end A174035

/-! ## A174035.P11679551329975262949

`floor((A134058(n)+A008292(n+1))/2)`
-/

namespace A174035.P11679551329975262949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134058 n + A008292 (n + 1) : ℚ) / 2⌋

end

end A174035.P11679551329975262949

namespace A174035

/-- `floor((A134058(n)+A008292(n+1))/2)` -/
def P11679551329975262949.Spec : Prop :=
  ∀ n, P11679551329975262949.a n = A174035 n

end A174035

/-! ## A174035.P4925601180098506220

`floor(A008292(n+1)/2)+abs(A117440(n))`
-/

namespace A174035.P4925601180098506220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008292 (n + 1) : ℚ) / 2⌋ + |A117440 n|

end

end A174035.P4925601180098506220

namespace A174035

/-- `floor(A008292(n+1)/2)+abs(A117440(n))` -/
def P4925601180098506220.Spec : Prop :=
  ∀ n, P4925601180098506220.a n = A174035 n

end A174035

/-! ## A174035.P14560850038681717328

`floor(A008292(n+1)/2)+root(A008459(n), 2)`
-/

namespace A174035.P14560850038681717328
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (⌊(A008292 (n + 1) : ℚ) / 2⌋ : ℝ) + (A008459 n : ℝ) ^ (1 / (2 : ℝ))

end

end A174035.P14560850038681717328

namespace A174035

/-- `floor(A008292(n+1)/2)+root(A008459(n), 2)` -/
def P14560850038681717328.Spec : Prop :=
  ∀ n, P14560850038681717328.a n = (A174035 n : ℝ)

end A174035

/-! ## A174035.P9463817929900680758

`floor(A141686(n+1)/A028326(n))+A007318(n)`
-/

namespace A174035.P9463817929900680758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141686 (n + 1) : ℚ) / (A028326 n : ℚ)⌋ + A007318 n

end

end A174035.P9463817929900680758

namespace A174035

/-- `floor(A141686(n+1)/A028326(n))+A007318(n)` -/
def P9463817929900680758.Spec : Prop :=
  ∀ n, P9463817929900680758.a n = A174035 n

end A174035

/-! ## A174035.P239400318969605797

`A141689(n+1)+A004526(A007318(n))`
-/

namespace A174035.P239400318969605797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141689 (n + 1) + A004526 (A007318 n).toNat

end

end A174035.P239400318969605797

namespace A174035

/-- `A141689(n+1)+A004526(A007318(n))` -/
def P239400318969605797.Spec : Prop :=
  ∀ n, P239400318969605797.a n = A174035 n

end A174035

/-! ## A174035.P12510980212161478914

`A141689(n+1)+A002265(A028326(n))`
-/

namespace A174035.P12510980212161478914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141689 (n + 1) + A002265 (A028326 n).toNat

end

end A174035.P12510980212161478914

namespace A174035

/-- `A141689(n+1)+A002265(A028326(n))` -/
def P12510980212161478914.Spec : Prop :=
  ∀ n, P12510980212161478914.a n = A174035 n

end A174035

/-!
# A174036: Triangle read by rows: T(n,k) = 1 if k=0 or k=n, otherwise T(n,k) = binomial(Eulerian(n+1, k), min(n-k,k)).

The programs for A174036, the canonical program `A174036.P15707099634806956760` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174036 has offset 0).

The definition of A174036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174036.P15707099634806956760

`C(A008292(n+1), A004197(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A174036

/-- `C(A008292(n+1), A004197(n))` -/
def P15707099634806956760.Spec : Prop :=
  ∀ n, (P15707099634806956760.a n : ℤ) = A174036 n

theorem P15707099634806956760.correct : P15707099634806956760.Spec := by
  intro n
  simp only [A174036]

end A174036

/-! ## A174036.P12412925746646411811

`C(A008292(n+1), log2(A144464(n)))`
-/

namespace A174036.P12412925746646411811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008292 (n + 1)).toNat (SequenceMachineLib.roundAway (Real.logb 2 (A144464 n : ℝ))).toNat

end

end A174036.P12412925746646411811

namespace A174036

/-- `C(A008292(n+1), log2(A144464(n)))` -/
def P12412925746646411811.Spec : Prop :=
  ∀ n, (P12412925746646411811.a n : ℤ) = A174036 n

end A174036

/-! ## A174036.P3817031982860000972

`C(A008292(n+1), A001222(A152714(n)))`
-/

namespace A174036.P3817031982860000972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008292 (n + 1)).toNat (A001222 (A152714 n).toNat).toNat

end

end A174036.P3817031982860000972

namespace A174036

/-- `C(A008292(n+1), A001222(A152714(n)))` -/
def P3817031982860000972.Spec : Prop :=
  ∀ n, (P3817031982860000972.a n : ℤ) = A174036 n

end A174036

/-! ## A174036.P16145340375251061495

`C(A008292(n+1), A270890(A003983(n+1)))`
-/

namespace A174036.P16145340375251061495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008292 (n + 1)).toNat (A270890 (A003983 (n + 1)).toNat).toNat

end

end A174036.P16145340375251061495

namespace A174036

/-- `C(A008292(n+1), A270890(A003983(n+1)))` -/
def P16145340375251061495.Spec : Prop :=
  ∀ n, (P16145340375251061495.a n : ℤ) = A174036 n

end A174036

/-! ## A174036.P1266708185122719915

`A000027(C(A008292(n+1), A077042(n)))`
-/

namespace A174036.P1266708185122719915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.choose (A008292 (n + 1)).toNat (A077042 n).toNat)

end

end A174036.P1266708185122719915

namespace A174036

/-- `A000027(C(A008292(n+1), A077042(n)))` -/
def P1266708185122719915.Spec : Prop :=
  ∀ n, P1266708185122719915.a n = A174036 n

end A174036

/-!
# A174037: Triangle T(n, k, q) = Sum_{j>=0} q^j * floor(binomial(n, k)/2^j) with q = 2, read by rows.

The programs for A174037, the canonical program `A174037.P9722223957527867773` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174037 has offset 0).

The definition of A174037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174037.P9722223957527867773

`A080277(A007318(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A174037

/-- `A080277(A007318(n))` -/
def P9722223957527867773.Spec : Prop :=
  ∀ n, P9722223957527867773.a n = A174037 n

theorem P9722223957527867773.correct : P9722223957527867773.Spec := by
  intro n
  simp only [A174037]

end A174037

/-! ## A174037.P5509453742271292773

`A080277(abs(A108086(n)))`
-/

namespace A174037.P5509453742271292773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080277 |A108086 n|.toNat

end

end A174037.P5509453742271292773

namespace A174037

/-- `A080277(abs(A108086(n)))` -/
def P5509453742271292773.Spec : Prop :=
  ∀ n, P5509453742271292773.a n = A174037 n

end A174037

/-! ## A174037.P2256088670404879422

`A080277(abs(A117440(n)))`
-/

namespace A174037.P2256088670404879422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080277 |A117440 n|.toNat

end

end A174037.P2256088670404879422

namespace A174037

/-- `A080277(abs(A117440(n)))` -/
def P2256088670404879422.Spec : Prop :=
  ∀ n, P2256088670404879422.a n = A174037 n

end A174037

/-! ## A174037.P3930462511501331511

`A080277(abs(A130595(n)))`
-/

namespace A174037.P3930462511501331511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080277 |A130595 n|.toNat

end

end A174037.P3930462511501331511

namespace A174037

/-- `A080277(abs(A130595(n)))` -/
def P3930462511501331511.Spec : Prop :=
  ∀ n, P3930462511501331511.a n = A174037 n

end A174037

/-! ## A174037.P8182010325231030149

`A080277(sqrt(A008459(n)))`
-/

namespace A174037.P8182010325231030149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080277 (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))).toNat

end

end A174037.P8182010325231030149

namespace A174037

/-- `A080277(sqrt(A008459(n)))` -/
def P8182010325231030149.Spec : Prop :=
  ∀ n, P8182010325231030149.a n = A174037 n

end A174037

/-! ## A174037.P792041397122783044

`A080277(Δ[A102363(n)])`
-/

namespace A174037.P792041397122783044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080277 (f1 (n + 1) - f1 n).toNat

end

end A174037.P792041397122783044

namespace A174037

/-- `A080277(Δ[A102363(n)])` -/
def P792041397122783044.Spec : Prop :=
  ∀ n, P792041397122783044.a n = A174037 n

end A174037

/-! ## A174037.P1373079726684492191

`A080277(A014473(n)+1)`
-/

namespace A174037.P1373079726684492191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080277 (A014473 n + 1).toNat

end

end A174037.P1373079726684492191

namespace A174037

/-- `A080277(A014473(n)+1)` -/
def P1373079726684492191.Spec : Prop :=
  ∀ n, P1373079726684492191.a n = A174037 n

theorem P1373079726684492191.correct : P1373079726684492191.Spec := by
  intro n
  simp only [A174037, Nat.add_sub_cancel, A174037.P1373079726684492191.a, A174037.P9722223957527867773.a, A007318, A007318.P11755526479805562006.a, A014473, A014473.P9301799580602651200.a, A080277, A080277.P16328719892052367531.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174037

/-! ## A174037.P12573015451823099137

`A080277(A028326(n)/2)`
-/

namespace A174037.P12573015451823099137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080277 (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2)).toNat

end

end A174037.P12573015451823099137

namespace A174037

/-- `A080277(A028326(n)/2)` -/
def P12573015451823099137.Spec : Prop :=
  ∀ n, P12573015451823099137.a n = A174037 n

end A174037

/-! ## A174037.P7129386501431365730

`A080277(A102363(n+1)-A102363(n))`
-/

namespace A174037.P7129386501431365730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080277 (A102363 (n + 1) - A102363 n).toNat

end

end A174037.P7129386501431365730

namespace A174037

/-- `A080277(A102363(n+1)-A102363(n))` -/
def P7129386501431365730.Spec : Prop :=
  ∀ n, P7129386501431365730.a n = A174037 n

end A174037

/-! ## A174037.P17593378641230056162

`A136013(A028326(n))`
-/

namespace A174037.P17593378641230056162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136013 (A028326 n).toNat

end

end A174037.P17593378641230056162

namespace A174037

/-- `A136013(A028326(n))` -/
def P17593378641230056162.Spec : Prop :=
  ∀ n, P17593378641230056162.a n = A174037 n

end A174037

/-!
# A174038: Triangle T(n, k, q) = Sum_{j>=0} q^j * floor(binomial(n, k)/2^j) with q = 3, read by rows.

The programs for A174038, there is no canonical definition to state claims against.
-/

/-! ## A174038.P10844827712449371963

`A240400(A007318(n)+1)`
-/

namespace A174038.P10844827712449371963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240400 (A007318 n + 1).toNat

end

end A174038.P10844827712449371963

/-! ## A174038.P6993176212350261387

`A240400(A014473(n)+2)`
-/

namespace A174038.P6993176212350261387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240400 (A014473 n + 2).toNat

end

end A174038.P6993176212350261387

/-! ## A174038.P10205115736682240465

`A240400(abs(A108086(n))+1)`
-/

namespace A174038.P10205115736682240465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240400 (|A108086 n| + 1).toNat

end

end A174038.P10205115736682240465

/-! ## A174038.P3683213648051715769

`A240400(abs(A117440(n))+1)`
-/

namespace A174038.P3683213648051715769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240400 (|A117440 n| + 1).toNat

end

end A174038.P3683213648051715769

/-! ## A174038.P15299614963863119200

`A240400(abs(A130595(n))+1)`
-/

namespace A174038.P15299614963863119200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240400 (|A130595 n| + 1).toNat

end

end A174038.P15299614963863119200

/-! ## A174038.P654915558325202392

`A240400(sqrt(A008459(n))+1)`
-/

namespace A174038.P654915558325202392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240400 (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ) + 1)).toNat

end

end A174038.P654915558325202392

/-! ## A174038.P103836128574410351

`A240400(Δ[A102363(n)]+1)`
-/

namespace A174038.P103836128574410351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240400 (f1 (n + 1) - f1 n + 1).toNat

end

end A174038.P103836128574410351

/-! ## A174038.P4844224886856491332

`A240400(A028326(n)/2+1)`
-/

namespace A174038.P4844224886856491332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240400 (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2 + 1)).toNat

end

end A174038.P4844224886856491332

/-! ## A174038.P15040162000742065532

`A240400(A028326(n)-A014473(n))`
-/

namespace A174038.P15040162000742065532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240400 (A028326 n - A014473 n).toNat

end

end A174038.P15040162000742065532

/-!
# A174039: A triangle sequence of the form:q=2:t(n,m,q)=Sum[q^i*Floor[Eulerian[n + 1, m]/2^i], {i, 0, 10}].

The programs for A174039, there is no canonical definition to state claims against.
-/

/-! ## A174039.P9115485722457569258

`A080277(A008292(n+1)%A058959(n+1))`
-/

namespace A174039.P9115485722457569258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080277 (Int.tmod (A008292 (n + 1)) (A058959 (n + 1))).toNat

end

end A174039.P9115485722457569258

/-! ## A174039.P15724974688239179252

`A080277(A008292(n+1))%A263545(n+1)`
-/

namespace A174039.P15724974688239179252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080277 (A008292 (n + 1)).toNat) (A263545 (n + 1))

end

end A174039.P15724974688239179252

/-! ## A174039.P5629379968474048797

`A080277(A008292(n+1))+A000007(A080277(n+1)²)`
-/

namespace A174039.P5629379968474048797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080277 (A008292 (n + 1)).toNat + A000007 (A080277 (n + 1) ^ 2).toNat

end

end A174039.P5629379968474048797

/-! ## A174039.P2048605483020975555

`A080277(A008292(n+1))+A000007(A000045(n)+1)`
-/

namespace A174039.P2048605483020975555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080277 (A008292 (n + 1)).toNat + A000007 (A000045 n + 1).toNat

end

end A174039.P2048605483020975555

/-! ## A174039.P18233972235879603573

`A046889(A081582(n))+1`
-/

namespace A174039.P18233972235879603573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046889 (A081582 n).toNat + 1

end

end A174039.P18233972235879603573

/-!
# A174040: A triangle sequence of the form:q=3:t(n,m,q)=Sum[q^i*Floor[Eulerian[n + 1, m]/2^i], {i, 0, 10}].

The programs for A174040, there is no canonical definition to state claims against.
-/

/-! ## A174040.P70251035179988702

`A240400(A008292(n+1)+1)`
-/

namespace A174040.P70251035179988702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240400 (A008292 (n + 1) + 1).toNat

end

end A174040.P70251035179988702

/-! ## A174040.P16319436843179792717

`A089167(A174303(n))`
-/

namespace A174040.P16319436843179792717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089167 (A174303 n).toNat

end

end A174040.P16319436843179792717

/-! ## A174040.P905359953222856853

`A240400(A157221(n)+1)`
-/

namespace A174040.P905359953222856853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240400 (A157221 n + 1).toNat

end

end A174040.P905359953222856853

/-! ## A174040.P2600139412399280078

`filter[A336480(2*(n+1)), A241759(#)]`
-/

namespace A174040.P2600139412399280078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336480 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A241759 (f1 j).toNat = 1) n)

end

end A174040.P2600139412399280078

/-! ## A174040.P12751383994034221347

`and(A007522(A061396(n)), A022182(n))`
-/

namespace A174040.P12751383994034221347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007522 (A061396 n).toNat) (A022182 n)

end

end A174040.P12751383994034221347

/-!
# A174041: Composites of the form 6n+2 or 6n+3.

The programs for A174041, the canonical program `A174041.P16296558426401425262` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174041 has offset 1).

The definition of A174041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174041.P16296558426401425262

`A047243(n+3)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A174041

/-- `A047243(n+3)` -/
def P16296558426401425262.Spec : Prop :=
  ∀ n, P16296558426401425262.a n = A174041 (n + 1)

theorem P16296558426401425262.correct : P16296558426401425262.Spec := by
  intro n
  simp only [A174041, Nat.add_sub_cancel]

end A174041

/-! ## A174041.P5136931584263604977

`xor(1, 3*n)+7`
-/

namespace A174041.P5136931584263604977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n) + 7

end

end A174041.P5136931584263604977

namespace A174041

/-- `xor(1, 3*n)+7` -/
def P5136931584263604977.Spec : Prop :=
  ∀ n, (P5136931584263604977.a n : ℤ) = A174041 (n + 1)

end A174041

/-! ## A174041.P2912937569905847009

`a(n-2)+6` with `a(0)=8, a(1)=9`
-/

namespace A174041.P2912937569905847009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8, 9] fun n a =>
  a (n - 2) + 6

end

end A174041.P2912937569905847009

namespace A174041

/-- `a(n-2)+6` -/
def P2912937569905847009.Spec : Prop :=
  ∀ n, (P2912937569905847009.a n : ℤ) = A174041 (n + 1)

end A174041

/-! ## A174041.P101096690226946762

`6-xor(3*n, -2)`
-/

namespace A174041.P101096690226946762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - Int.xor (3 * n : ℤ) (-2)

end

end A174041.P101096690226946762

namespace A174041

/-- `6-xor(3*n, -2)` -/
def P101096690226946762.Spec : Prop :=
  ∀ n, P101096690226946762.a n = A174041 (n + 1)

end A174041

/-! ## A174041.P17382020838299678562

`∑[gcd(5, n%2)]+3`
-/

namespace A174041.P17382020838299678562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A174041.P17382020838299678562

namespace A174041

/-- `∑[gcd(5, n%2)]+3` -/
def P17382020838299678562.Spec : Prop :=
  ∀ n, (P17382020838299678562.a n : ℤ) = A174041 (n + 1)

end A174041

/-! ## A174041.P10860789332181821579

`record[or(5, n)+3]-n`
-/

namespace A174041.P10860789332181821579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n : ℤ)

end

end A174041.P10860789332181821579

namespace A174041

/-- `record[or(5, n)+3]-n` -/
def P10860789332181821579.Spec : Prop :=
  ∀ n, P10860789332181821579.a n = A174041 (n + 1)

end A174041

/-! ## A174041.P10156234204477988043

`3-(n-record[or(5, n)])`
-/

namespace A174041.P10156234204477988043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((n : ℤ) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ))

end

end A174041.P10156234204477988043

namespace A174041

/-- `3-(n-record[or(5, n)])` -/
def P10156234204477988043.Spec : Prop :=
  ∀ n, P10156234204477988043.a n = A174041 (n + 1)

end A174041

/-! ## A174041.P4387123580793887324

`record[xor(5, n)+3]-n`
-/

namespace A174041.P4387123580793887324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n : ℤ)

end

end A174041.P4387123580793887324

namespace A174041

/-- `record[xor(5, n)+3]-n` -/
def P4387123580793887324.Spec : Prop :=
  ∀ n, P4387123580793887324.a n = A174041 (n + 1)

end A174041

/-! ## A174041.P14587612772446726185

`3-(n-record[xor(5, n)])`
-/

namespace A174041.P14587612772446726185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((n : ℤ) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ))

end

end A174041.P14587612772446726185

namespace A174041

/-- `3-(n-record[xor(5, n)])` -/
def P14587612772446726185.Spec : Prop :=
  ∀ n, P14587612772446726185.a n = A174041 (n + 1)

end A174041

/-! ## A174041.P7995936063293770959

`∑[6-a(n-1)]` with `a(0)=8, a(1)=1`
-/

namespace A174041.P7995936063293770959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 1] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174041.P7995936063293770959

namespace A174041

/-- `∑[6-a(n-1)]` -/
def P7995936063293770959.Spec : Prop :=
  ∀ n, P7995936063293770959.a n = A174041 (n + 1)

end A174041

/-! ## A174041.P14257971724830571967

`2*or(1, n)+6+n`
-/

namespace A174041.P14257971724830571967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 1 n + 6 + n

end

end A174041.P14257971724830571967

namespace A174041

/-- `2*or(1, n)+6+n` -/
def P14257971724830571967.Spec : Prop :=
  ∀ n, (P14257971724830571967.a n : ℤ) = A174041 (n + 1)

end A174041

/-! ## A174041.P15676035309194551742

`Δ[or(1, (n+3)²)]+n`
-/

namespace A174041.P15676035309194551742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((n + 3) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)

end

end A174041.P15676035309194551742

namespace A174041

/-- `Δ[or(1, (n+3)²)]+n` -/
def P15676035309194551742.Spec : Prop :=
  ∀ n, P15676035309194551742.a n = A174041 (n + 1)

end A174041

/-! ## A174041.P10457181796297318877

`eq[n, or(5, n)]-(n-3)`
-/

namespace A174041.P10457181796297318877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - ((n : ℤ) - 3)

end

end A174041.P10457181796297318877

namespace A174041

/-- `eq[n, or(5, n)]-(n-3)` -/
def P10457181796297318877.Spec : Prop :=
  ∀ n, P10457181796297318877.a n = A174041 (n + 1)

end A174041

/-! ## A174041.P3340398139591003475

`3*n+(-1)^n+7`
-/

namespace A174041.P3340398139591003475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + ((-1) ^ n + 7)

end

end A174041.P3340398139591003475

namespace A174041

/-- `3*n+(-1)^n+7` -/
def P3340398139591003475.Spec : Prop :=
  ∀ n, P3340398139591003475.a n = A174041 (n + 1)

end A174041

/-! ## A174041.P17565726626333092458

`∑[∑[ogf((8+x-3x^2)/(1+x))]]`
-/

namespace A174041.P17565726626333092458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 1, -3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174041.P17565726626333092458

namespace A174041

/-- `∑[∑[ogf((8+x-3x^2)/(1+x))]]` -/
def P17565726626333092458.Spec : Prop :=
  ∀ n, P17565726626333092458.a n = A174041 (n + 1)

end A174041

/-! ## A174041.P11254009341558727044

`ogf((8+x-3x^2)/(1-x-x^2+x^3))`
-/

namespace A174041.P11254009341558727044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 1, -3] [1, -1, -1, 1] n

end

end A174041.P11254009341558727044

namespace A174041

/-- `ogf((8+x-3x^2)/(1-x-x^2+x^3))` -/
def P11254009341558727044.Spec : Prop :=
  ∀ n, P11254009341558727044.a n = A174041 (n + 1)

end A174041

/-! ## A174041.P218653037771247149

`record[2*n-a(n-3)]` with `a(0)=8, a(1)=0, a(2)=1`
-/

namespace A174041.P218653037771247149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 0, 1] fun n f1 =>
  (2 * n : ℤ) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174041.P218653037771247149

namespace A174041

/-- `record[2*n-a(n-3)]` -/
def P218653037771247149.Spec : Prop :=
  ∀ n, P218653037771247149.a n = A174041 (n + 1)

end A174041

/-! ## A174041.P11005431832103706221

`eq[C(2*n, a(n-2))², (2*n)²]` with `a(0)=2, a(1)=2`
-/

namespace A174041.P11005431832103706221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  Nat.choose (2 * n) (f1 (n - 2)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174041.P11005431832103706221

namespace A174041

/-- `eq[C(2*n, a(n-2))², (2*n)²]` -/
def P11005431832103706221.Spec : Prop :=
  ∀ n, (P11005431832103706221.a n : ℤ) = A174041 (n + 1)

end A174041

/-! ## A174041.P5462234433564689366

`∑[A010261(a(n-1))]` with `a(0)=8`
-/

namespace A174041.P5462234433564689366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  A010261 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174041.P5462234433564689366

namespace A174041

/-- `∑[A010261(a(n-1))]` -/
def P5462234433564689366.Spec : Prop :=
  ∀ n, P5462234433564689366.a n = A174041 (n + 1)

end A174041

/-! ## A174041.P9288201740034113501

`∑[A040765(a(n-1))]` with `a(0)=8`
-/

namespace A174041.P9288201740034113501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  A040765 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174041.P9288201740034113501

namespace A174041

/-- `∑[A040765(a(n-1))]` -/
def P9288201740034113501.Spec : Prop :=
  ∀ n, P9288201740034113501.a n = A174041 (n + 1)

end A174041

/-!
# A174043: Triangle T(n, k, q) = Sum_{j=0..10} q^j * floor( binomial(n+1,k)*binomial(n-1,k-1)/(2^j*(n+1)) ) for q = 1, read by rows.

The programs for A174043, there is no canonical definition to state claims against.
-/

/-! ## A174043.P173859752472807900

`A011371(A110654(4*A001263(n+1)))`
-/

namespace A174043.P173859752472807900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A110654 (4 * A001263 (n + 1)).toNat).toNat

end

end A174043.P173859752472807900

/-! ## A174043.P2949689907893634383

`A005187(A001263(n+1)%A116571(n))`
-/

namespace A174043.P2949689907893634383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (Int.tmod (A001263 (n + 1)) (A116571 n)).toNat

end

end A174043.P2949689907893634383

/-! ## A174043.P16840291627200851575

`A005187(A001263(n+1))%A059608(n+1)`
-/

namespace A174043.P16840291627200851575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005187 (A001263 (n + 1)).toNat) (A059608 (n + 1))

end

end A174043.P16840291627200851575

/-! ## A174043.P2255089934144419977

`A005187(A123271(n+2)²*A001263(n+1))`
-/

namespace A174043.P2255089934144419977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A123271 (n + 2) ^ 2 * A001263 (n + 1)).toNat

end

end A174043.P2255089934144419977

/-! ## A174043.P13476390742671995912

`A005187(A001263(n+1)/A123271(n+2)²)`
-/

namespace A174043.P13476390742671995912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (SequenceMachineLib.roundAway ((A001263 (n + 1) : ℚ) / (A123271 (n + 2) ^ 2 : ℚ))).toNat

end

end A174043.P13476390742671995912

/-!
# A174044: Triangle T(n, k, q) = Sum_{j=0..10} q^j * floor( binomial(n+1,k)*binomial(n-1,k-1)/(2^j*(n+1)) ) for q = 2, read by rows.

The programs for A174044, there is no canonical definition to state claims against.
-/

/-! ## A174044.P10068446605129849970

`A080277(A001263(n+1)%A116571(n))`
-/

namespace A174044.P10068446605129849970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080277 (Int.tmod (A001263 (n + 1)) (A116571 n)).toNat

end

end A174044.P10068446605129849970

/-! ## A174044.P2065797458869002098

`A080277(A123271(n+2)²*A001263(n+1))`
-/

namespace A174044.P2065797458869002098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080277 (A123271 (n + 2) ^ 2 * A001263 (n + 1)).toNat

end

end A174044.P2065797458869002098

/-! ## A174044.P13738044359397346937

`A080277(A001263(n+1)/A123271(n+2)²)`
-/

namespace A174044.P13738044359397346937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080277 (SequenceMachineLib.roundAway ((A001263 (n + 1) : ℚ) / (A123271 (n + 2) ^ 2 : ℚ))).toNat

end

end A174044.P13738044359397346937

/-! ## A174044.P11089390296643115687

`A080277(A001263(n+1)^A123271(n+2)²)`
-/

namespace A174044.P11089390296643115687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080277 (SequenceMachineLib.roundAway ((A001263 (n + 1) : ℚ) ^ (A123271 (n + 2) ^ 2 : ℤ))).toNat

end

end A174044.P11089390296643115687

/-! ## A174044.P10317879787894873324

`A080277(A001263(n+1)*A123271(n+2)*A123271(n+2))`
-/

namespace A174044.P10317879787894873324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080277 (A001263 (n + 1) * A123271 (n + 2) * A123271 (n + 2)).toNat

end

end A174044.P10317879787894873324

/-!
# A174045: Triangle T(n, k, q) = Sum_{j=0..10} q^j * floor( binomial(n+1,k)*binomial(n-1,k-1)/(2^j*(n+1)) ) for q = 3, read by rows.

The programs for A174045, there is no canonical definition to state claims against.
-/

/-! ## A174045.P9412537469750841142

`A240400(A001263(n+1)+1)`
-/

namespace A174045.P9412537469750841142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240400 (A001263 (n + 1) + 1).toNat

end

end A174045.P9412537469750841142

/-! ## A174045.P740623132132694201

`A174038(A000124(A001263(n+1)))`
-/

namespace A174045.P740623132132694201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174038 (A000124 (A001263 (n + 1)).toNat).toNat

end

end A174045.P740623132132694201

/-! ## A174045.P302278303787018985

`A034298(A056941(n))`
-/

namespace A174045.P302278303787018985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034298 (A056941 n).toNat

end

end A174045.P302278303787018985

/-! ## A174045.P9616054044508899017

`A114585(A081580(n))`
-/

namespace A174045.P9616054044508899017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114585 (A081580 n).toNat

end

end A174045.P9616054044508899017

/-! ## A174045.P16562500050910812032

`A058825(A157221(n))`
-/

namespace A174045.P16562500050910812032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058825 (A157221 n).toNat

end

end A174045.P16562500050910812032

/-!
# A174047: Numbers k such that exactly one of 2*k-1 and 2*k+1 is prime.

The programs for A174047, the canonical program `A174047.P2449345490950928052` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174047 has offset 1).

The definition of A174047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174047.P15237632289862959675

`∪[A104279(n+1), A104280(n+1)]`
-/

namespace A174047.P15237632289862959675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174047.P15237632289862959675

namespace A174047

/-- `∪[A104279(n+1), A104280(n+1)]` -/
def P15237632289862959675.Spec : Prop :=
  ∀ n, (P15237632289862959675.a n : ℤ) = A174047 (n + 1)

end A174047

/-! ## A174047.P2449345490950928052

`record[(n+1)*xor(A101264(n+1), A101264(n))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A174047

/-- `record[(n+1)*xor(A101264(n+1), A101264(n))]` -/
def P2449345490950928052.Spec : Prop :=
  ∀ n, P2449345490950928052.a n = A174047 (n + 1)

theorem P2449345490950928052.correct : P2449345490950928052.Spec := by
  intro n
  simp only [A174047, Nat.add_sub_cancel]

end A174047

/-! ## A174047.P15319924808517161167

`ceil((A100317(n+3)+1)/2)-1`
-/

namespace A174047.P15319924808517161167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100317 (n + 3) + 1 : ℚ) / 2⌉ - 1

end

end A174047.P15319924808517161167

namespace A174047

/-- `ceil((A100317(n+3)+1)/2)-1` -/
def P15319924808517161167.Spec : Prop :=
  ∀ n, P15319924808517161167.a n = A174047 (n + 1)

end A174047

/-! ## A174047.P12848197266641215558

`eq[2, A002126(2*n+1)]`
-/

namespace A174047.P12848197266641215558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174047.P12848197266641215558

namespace A174047

/-- `eq[2, A002126(2*n+1)]` -/
def P12848197266641215558.Spec : Prop :=
  ∀ n, (P12848197266641215558.a n : ℤ) = A174047 (n + 1)

end A174047

/-!
# A174048: Prime(A173919(n)).

The programs for A174048, the canonical program `A174048.P4629497372076491791` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174048 has offset 1).

The definition of A174048 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173919, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A174048.P4629497372076491791

`A000040(A173919(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A174048

/-- `A000040(A173919(n+1))` -/
def P4629497372076491791.Spec : Prop :=
  ∀ n, P4629497372076491791.a n = A174048 (n + 1)

theorem P4629497372076491791.correct : P4629497372076491791.Spec := by
  intro n
  simp only [A174048, Nat.add_sub_cancel]

end A174048

/-! ## A174048.P4914874480129909614

`A008578(A093515(n+1))`
-/

namespace A174048.P4914874480129909614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A093515 (n + 1)).toNat

end

end A174048.P4914874480129909614

namespace A174048

/-- `A008578(A093515(n+1))` -/
def P4914874480129909614.Spec : Prop :=
  ∀ n, P4914874480129909614.a n = A174048 (n + 1)

end A174048

/-! ## A174048.P13452940257584990445

`A005145(A147846(n+1))`
-/

namespace A174048.P13452940257584990445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A147846 (n + 1)).toNat

end

end A174048.P13452940257584990445

namespace A174048

/-- `A005145(A147846(n+1))` -/
def P13452940257584990445.Spec : Prop :=
  ∀ n, P13452940257584990445.a n = A174048 (n + 1)

end A174048

/-! ## A174048.P7866414862249303476

`A000040(lt[A007920(n), 2])`
-/

namespace A174048.P7866414862249303476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A174048.P7866414862249303476

namespace A174048

/-- `A000040(lt[A007920(n), 2])` -/
def P7866414862249303476.Spec : Prop :=
  ∀ n, P7866414862249303476.a n = A174048 (n + 1)

end A174048

/-! ## A174048.P8667856595483977939

`A000040(lt[A361902(n), 2])`
-/

namespace A174048.P8667856595483977939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361902 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A174048.P8667856595483977939

namespace A174048

/-- `A000040(lt[A361902(n), 2])` -/
def P8667856595483977939.Spec : Prop :=
  ∀ n, P8667856595483977939.a n = A174048 (n + 1)

end A174048

/-! ## A174048.P17599828755054396367

`A008578(A173919(n+1)+1)`
-/

namespace A174048.P17599828755054396367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A173919 (n + 1) + 1).toNat

end

end A174048.P17599828755054396367

namespace A174048

/-- `A008578(A173919(n+1)+1)` -/
def P17599828755054396367.Spec : Prop :=
  ∀ n, P17599828755054396367.a n = A174048 (n + 1)

end A174048

/-! ## A174048.P10147570750364822734

`A000040(A093515(n+1)-1)`
-/

namespace A174048.P10147570750364822734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A093515 (n + 1) - 1).toNat

end

end A174048.P10147570750364822734

namespace A174048

/-- `A000040(A093515(n+1)-1)` -/
def P10147570750364822734.Spec : Prop :=
  ∀ n, P10147570750364822734.a n = A174048 (n + 1)

end A174048

/-! ## A174048.P15791110871582516705

`∪[A006450(n+1), A055003(n+1)]`
-/

namespace A174048.P15791110871582516705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174048.P15791110871582516705

namespace A174048

/-- `∪[A006450(n+1), A055003(n+1)]` -/
def P15791110871582516705.Spec : Prop :=
  ∀ n, (P15791110871582516705.a n : ℤ) = A174048 (n + 1)

end A174048

/-! ## A174048.P635520058564078085

`∪[A055003(n+1), A175247(n+1)]`
-/

namespace A174048.P635520058564078085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174048.P635520058564078085

namespace A174048

/-- `∪[A055003(n+1), A175247(n+1)]` -/
def P635520058564078085.Spec : Prop :=
  ∀ n, (P635520058564078085.a n : ℤ) = A174048 (n + 1)

end A174048

/-! ## A174048.P9524795534396088980

`A000040(∪[A000040(n+1), A006093(n+1)])`
-/

namespace A174048.P9524795534396088980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A174048.P9524795534396088980

namespace A174048

/-- `A000040(∪[A000040(n+1), A006093(n+1)])` -/
def P9524795534396088980.Spec : Prop :=
  ∀ n, P9524795534396088980.a n = A174048 (n + 1)

end A174048

/-!
# A174049: Prime numbers of the form x^2+y^2 such that Mobius(x) * Mobius(y) = 1.

The programs for A174049, there is no canonical definition to state claims against.
-/

/-! ## A174049.P17188316072362529063

`record[A002313(n+1)*A008683(A145019(n))]`
-/

namespace A174049.P17188316072362529063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1) * A008683 (A145019 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174049.P17188316072362529063

/-! ## A174049.P15123579498612275830

`∩[A231383(n+1), A264120(n+1)]`
-/

namespace A174049.P15123579498612275830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174049.P15123579498612275830

/-!
# A174050: Primes of the form x^2 + y^2 such that L(x)* L(y) = 1, where L is the Liouville lambda-function A008836.

The programs for A174050, there is no canonical definition to state claims against.
-/

/-! ## A174050.P9725476410038453500

`p?[record[A130517(A045356(n+1))]]`
-/

namespace A174050.P9725476410038453500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (A045356 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174050.P9725476410038453500

/-! ## A174050.P11437906403880693838

`p?[record[A130517(A045378(n+1))]]`
-/

namespace A174050.P11437906403880693838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (A045378 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174050.P11437906403880693838

/-! ## A174050.P107278776600418809

`p?[eq[val(n+1, 2)+1, A356300(n+1)]]`
-/

namespace A174050.P107278776600418809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356300 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A174050.P107278776600418809

/-! ## A174050.P4804601437574801956

`p?[2*(n+1)-A000034(A122641(n+1))]`
-/

namespace A174050.P4804601437574801956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A000034 (A122641 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174050.P4804601437574801956

/-!
# A174051: Composite numbers of the form x^2+y^2, gcd(x,y) = 1.

The programs for A174051, the canonical program `A174051.P16173755171828309437` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174051 has offset 1).

The definition of A174051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174051.P9774141628834044558

`∪[A120961(n+1), A157075(n+1)]`
-/

namespace A174051.P9774141628834044558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174051.P9774141628834044558

namespace A174051

/-- `∪[A120961(n+1), A157075(n+1)]` -/
def P9774141628834044558.Spec : Prop :=
  ∀ n, (P9774141628834044558.a n : ℤ) = A174051 (n + 1)

end A174051

/-! ## A174051.P16173755171828309437

`filter[A008784(n+1), A066247(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A174051

/-- `filter[A008784(n+1), A066247(#)]` -/
def P16173755171828309437.Spec : Prop :=
  ∀ n, P16173755171828309437.a n = A174051 (n + 1)

theorem P16173755171828309437.correct : P16173755171828309437.Spec := by
  intro n
  simp only [A174051, Nat.add_sub_cancel]

end A174051

/-! ## A174051.P13666101814474225295

`filter[A008784(n+1), A202238(#)]`
-/

namespace A174051.P13666101814474225295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A174051.P13666101814474225295

namespace A174051

/-- `filter[A008784(n+1), A202238(#)]` -/
def P13666101814474225295.Spec : Prop :=
  ∀ n, P13666101814474225295.a n = A174051 (n + 1)

end A174051

/-! ## A174051.P8858174760770454235

`filter[A008784(n+2), A005171(#)]`
-/

namespace A174051.P8858174760770454235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A174051.P8858174760770454235

namespace A174051

/-- `filter[A008784(n+2), A005171(#)]` -/
def P8858174760770454235.Spec : Prop :=
  ∀ n, P8858174760770454235.a n = A174051 (n + 1)

end A174051

/-! ## A174051.P8053056862550103955

`filter[A008784(n+2), A292438(#)]`
-/

namespace A174051.P8053056862550103955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A174051.P8053056862550103955

namespace A174051

/-- `filter[A008784(n+2), A292438(#)]` -/
def P8053056862550103955.Spec : Prop :=
  ∀ n, P8053056862550103955.a n = A174051 (n + 1)

end A174051

/-! ## A174051.P7037040564910573813

`∩[A002808(n+1), A008784(n+1)]`
-/

namespace A174051.P7037040564910573813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174051.P7037040564910573813

namespace A174051

/-- `∩[A002808(n+1), A008784(n+1)]` -/
def P7037040564910573813.Spec : Prop :=
  ∀ n, (P7037040564910573813.a n : ℤ) = A174051 (n + 1)

end A174051

/-! ## A174051.P14607770836154942097

`∩[A008784(n+1), A078542(n+1)]`
-/

namespace A174051.P14607770836154942097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174051.P14607770836154942097

namespace A174051

/-- `∩[A008784(n+1), A078542(n+1)]` -/
def P14607770836154942097.Spec : Prop :=
  ∀ n, (P14607770836154942097.a n : ℤ) = A174051 (n + 1)

end A174051

/-! ## A174051.P15593098684173675464

`∩[A008784(n+1), A138592(n+1)]`
-/

namespace A174051.P15593098684173675464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174051.P15593098684173675464

namespace A174051

/-- `∩[A008784(n+1), A138592(n+1)]` -/
def P15593098684173675464.Spec : Prop :=
  ∀ n, (P15593098684173675464.a n : ℤ) = A174051 (n + 1)

end A174051

/-! ## A174051.P14063015448277033391

`∩[A008784(n+1), A062973(n+1)]`
-/

namespace A174051.P14063015448277033391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174051.P14063015448277033391

namespace A174051

/-- `∩[A008784(n+1), A062973(n+1)]` -/
def P14063015448277033391.Spec : Prop :=
  ∀ n, (P14063015448277033391.a n : ℤ) = A174051 (n + 1)

end A174051

/-! ## A174051.P11507372458519506492

`∩[A008784(n+1), A176423(n+1)]`
-/

namespace A174051.P11507372458519506492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174051.P11507372458519506492

namespace A174051

/-- `∩[A008784(n+1), A176423(n+1)]` -/
def P11507372458519506492.Spec : Prop :=
  ∀ n, (P11507372458519506492.a n : ℤ) = A174051 (n + 1)

end A174051

/-! ## A174051.P8551736636427947543

`eq[A339579(n+1)+A260728(n), A004013(n)]`
-/

namespace A174051.P8551736636427947543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1) + A260728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174051.P8551736636427947543

namespace A174051

/-- `eq[A339579(n+1)+A260728(n), A004013(n)]` -/
def P8551736636427947543.Spec : Prop :=
  ∀ n, (P8551736636427947543.a n : ℤ) = A174051 (n + 1)

end A174051

/-! ## A174051.P10120450678720093

`eq[A339579(n+1)+A004534(n), A260728(n)]`
-/

namespace A174051.P10120450678720093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1) + A004534 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174051.P10120450678720093

namespace A174051

/-- `eq[A339579(n+1)+A004534(n), A260728(n)]` -/
def P10120450678720093.Spec : Prop :=
  ∀ n, (P10120450678720093.a n : ℤ) = A174051 (n + 1)

end A174051

/-! ## A174051.P13791728294442536481

`A047224(eq[n+1, A339579(n+2)+A047224(n)])`
-/

namespace A174051.P13791728294442536481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 2) + A047224 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A174051.P13791728294442536481

namespace A174051

/-- `A047224(eq[n+1, A339579(n+2)+A047224(n)])` -/
def P13791728294442536481.Spec : Prop :=
  ∀ n, P13791728294442536481.a n = A174051 (n + 1)

end A174051

/-! ## A174051.P10754493234617755879

`eq[A339579(n+1)+A260728(n), A022064(n)]`
-/

namespace A174051.P10754493234617755879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1) + A260728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022064 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174051.P10754493234617755879

namespace A174051

/-- `eq[A339579(n+1)+A260728(n), A022064(n)]` -/
def P10754493234617755879.Spec : Prop :=
  ∀ n, (P10754493234617755879.a n : ℤ) = A174051 (n + 1)

end A174051

/-! ## A174051.P9257352900415718912

`eq[A339579(n+1)+A260728(n), A022068(n)]`
-/

namespace A174051.P9257352900415718912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1) + A260728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022068 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174051.P9257352900415718912

namespace A174051

/-- `eq[A339579(n+1)+A260728(n), A022068(n)]` -/
def P9257352900415718912.Spec : Prop :=
  ∀ n, (P9257352900415718912.a n : ℤ) = A174051 (n + 1)

end A174051

/-! ## A174051.P8461634843116053612

`∩[A008784(n+1), A133634(n+1)]`
-/

namespace A174051.P8461634843116053612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174051.P8461634843116053612

namespace A174051

/-- `∩[A008784(n+1), A133634(n+1)]` -/
def P8461634843116053612.Spec : Prop :=
  ∀ n, (P8461634843116053612.a n : ℤ) = A174051 (n + 1)

end A174051

/-! ## A174051.P16122286348311079329

`∩[A057129(n+1), A133634(n+1)]`
-/

namespace A174051.P16122286348311079329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174051.P16122286348311079329

namespace A174051

/-- `∩[A057129(n+1), A133634(n+1)]` -/
def P16122286348311079329.Spec : Prop :=
  ∀ n, (P16122286348311079329.a n : ℤ) = A174051 (n + 1)

end A174051

/-! ## A174051.P3628171050696024638

`∩[A072437(n+1), A133634(n+1)]`
-/

namespace A174051.P3628171050696024638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174051.P3628171050696024638

namespace A174051

/-- `∩[A072437(n+1), A133634(n+1)]` -/
def P3628171050696024638.Spec : Prop :=
  ∀ n, (P3628171050696024638.a n : ℤ) = A174051 (n + 1)

end A174051

/-! ## A174051.P9762173047338196437

`A026239(p?[A026239(A008784(n+1))])`
-/

namespace A174051.P9762173047338196437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A008784 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A174051.P9762173047338196437

namespace A174051

/-- `A026239(p?[A026239(A008784(n+1))])` -/
def P9762173047338196437.Spec : Prop :=
  ∀ n, P9762173047338196437.a n = A174051 (n + 1)

end A174051

/-! ## A174051.P17158063726973364652

`∩[A008784(n+1), A111774(n+1)]`
-/

namespace A174051.P17158063726973364652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174051.P17158063726973364652

namespace A174051

/-- `∩[A008784(n+1), A111774(n+1)]` -/
def P17158063726973364652.Spec : Prop :=
  ∀ n, (P17158063726973364652.a n : ℤ) = A174051 (n + 1)

end A174051

/-!
# A174053: Prime numbers of the form x^2+y^2 such that Moebius(x)* Moebius(y) = -1.

The programs for A174053, there is no canonical definition to state claims against.
-/

/-! ## A174053.P7096337899191673129

`∩[A174054(n+1), A260191(n+1)]`
-/

namespace A174053.P7096337899191673129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174053.P7096337899191673129

/-!
# A174054: Primes of the form x^2+y^2 such that L(x)*L(y) = -1, where L is the Liouville lambda-function A008836.

The programs for A174054, there is no canonical definition to state claims against.
-/

/-! ## A174054.P1865549943974092425

`∩[A074628(2*n+1)-2, A132777(2*n+1)]`
-/

namespace A174054.P1865549943974092425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074628 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132777 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174054.P1865549943974092425

/-! ## A174054.P3456858324653040316

`lt[A082266(A057936(3*n+5)), A107760(n+2)]`
-/

namespace A174054.P3456858324653040316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082266 (A057936 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107760 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174054.P3456858324653040316

/-!
# A174055: Sums of three Mersenne primes.

The programs for A174055, there is no canonical definition to state claims against.
-/

/-! ## A174055.P3055416168716980598

`A370137(n+1)+A300402(A065091(2*n+3))`
-/

namespace A174055.P3055416168716980598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370137 (n + 1) + A300402 (A065091 (2 * n + 3)).toNat

end

end A174055.P3055416168716980598

/-! ## A174055.P6240401694315269611

`A370137(n+1)+A300402(A279608(2*n+3))`
-/

namespace A174055.P6240401694315269611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370137 (n + 1) + A300402 (A279608 (2 * n + 3)).toNat

end

end A174055.P6240401694315269611

/-! ## A174055.P15275718748769833290

`A016813(lt[A000009(n), A134904(n+1)])`
-/

namespace A174055.P15275718748769833290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A174055.P15275718748769833290

/-! ## A174055.P1040467913426443540

`A370137(n+1)+A122553(A367676(n+5))`
-/

namespace A174055.P1040467913426443540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370137 (n + 1) + A122553 (A367676 (n + 5)).toNat

end

end A174055.P1040467913426443540

/-!
# A174056: Prime sums of three Mersenne primes. Primes in A174055.

The programs for A174056, there is no canonical definition to state claims against.
-/

/-! ## A174056.P16884399749949955971

`∩[A070739(n+1), A174055(n+1)]`
-/

namespace A174056.P16884399749949955971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174056.P16884399749949955971

/-! ## A174056.P2611523486535129793

`∩[A128898(n+1), A174055(n+1)]`
-/

namespace A174056.P2611523486535129793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174056.P2611523486535129793

/-!
# A174057: Semi-sums (means) of a Fermat prime and a Mersenne prime.

The programs for A174057, there is no canonical definition to state claims against.
-/

/-! ## A174057.P1025225409232945858

`A168335(n+1)/2`
-/

namespace A174057.P1025225409232945858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168335 (n + 1) : ℚ) / 2

end

end A174057.P1025225409232945858

/-! ## A174057.P17539137637834357093

`A014682(A168335(n+1))`
-/

namespace A174057.P17539137637834357093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A168335 (n + 1)).toNat

end

end A174057.P17539137637834357093

/-! ## A174057.P428801357107677722

`A273943(lcm(2, A168335(n+1)))`
-/

namespace A174057.P428801357107677722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A168335 (n + 1)))

end

end A174057.P428801357107677722

/-! ## A174057.P16400601350077825250

`A004524(A168335(n+1)+1)`
-/

namespace A174057.P16400601350077825250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A168335 (n + 1) + 1).toNat

end

end A174057.P16400601350077825250

/-!
# A174058: Round(Sum_{k=1..n} {sqrt(k)}).

The programs for A174058, the canonical program `A174058.P15017991186920882511` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174058 has offset 1).

The definition of A174058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174058.P15017991186920882511

`round(∑[sqrt(n)])`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A174058

/-- `round(∑[sqrt(n)])` -/
def P15017991186920882511.Spec : Prop :=
  ∀ n, P15017991186920882511.a n = A174058 (n + 1)

theorem P15017991186920882511.correct : P15017991186920882511.Spec := by
  intro n
  simp only [A174058, Nat.add_sub_cancel]

end A174058

/-! ## A174058.P15921798367686722884

`floor(∑[sqrt(n)]+gcd(n, n+1)/2)`
-/

namespace A174058.P15921798367686722884
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + ((Nat.gcd n (n + 1) : ℚ) / 2 : ℝ)⌋

end

end A174058.P15921798367686722884

namespace A174058

/-- `floor(∑[sqrt(n)]+gcd(n, n+1)/2)` -/
def P15921798367686722884.Spec : Prop :=
  ∀ n, P15921798367686722884.a n = A174058 (n + 1)

end A174058

/-! ## A174058.P8323686744925840226

`floor(∑[sqrt(A008574(n))/2])`
-/

namespace A174058.P8323686744925840226
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008574 n : ℝ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A174058.P8323686744925840226

namespace A174058

/-- `floor(∑[sqrt(A008574(n))/2])` -/
def P8323686744925840226.Spec : Prop :=
  ∀ n, P8323686744925840226.a n = A174058 (n + 1)

end A174058

/-! ## A174058.P2637175020189367177

`A110654(floor(∑[2*sqrt(n)]))`
-/

namespace A174058.P2637175020189367177
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A174058.P2637175020189367177

namespace A174058

/-- `A110654(floor(∑[2*sqrt(n)]))` -/
def P2637175020189367177.Spec : Prop :=
  ∀ n, P2637175020189367177.a n = A174058 (n + 1)

end A174058

/-! ## A174058.P10039924486367992030

`A004526(ceil(∑[2*sqrt(n)]))`
-/

namespace A174058.P10039924486367992030
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉.toNat

end

end A174058.P10039924486367992030

namespace A174058

/-- `A004526(ceil(∑[2*sqrt(n)]))` -/
def P10039924486367992030.Spec : Prop :=
  ∀ n, P10039924486367992030.a n = A174058 (n + 1)

end A174058

/-! ## A174058.P6723904642488515408

`A008619(ceil(∑[2*sqrt(n)]))-1`
-/

namespace A174058.P6723904642488515408
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉.toNat - 1

end

end A174058.P6723904642488515408

namespace A174058

/-- `A008619(ceil(∑[2*sqrt(n)]))-1` -/
def P6723904642488515408.Spec : Prop :=
  ∀ n, P6723904642488515408.a n = A174058 (n + 1)

end A174058

/-!
# A174059: a(n) = ceiling(Sum_{k=1..n} sqrt(k)).

The programs for A174059, the canonical program `A174059.P16493240021173771503` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174059 has offset 0).

The definition of A174059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2907 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174059.P15158804805929620482

`ceil(∑[sqrt(n)])`
-/

namespace A174059.P15158804805929620482
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A174059.P15158804805929620482

namespace A174059

/-- `ceil(∑[sqrt(n)])` -/
def P15158804805929620482.Spec : Prop :=
  ∀ n, P15158804805929620482.a n = A174059 n

end A174059

/-! ## A174059.P11767948328899081854

`floor(∑[sqrt(n)]+2%(n+1)/2)`
-/

namespace A174059.P11767948328899081854
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + (((2 % (n + 1) : ℕ) : ℚ) / 2 : ℝ)⌋

end

end A174059.P11767948328899081854

namespace A174059

/-- `floor(∑[sqrt(n)]+2%(n+1)/2)` -/
def P11767948328899081854.Spec : Prop :=
  ∀ n, P11767948328899081854.a n = A174059 n

end A174059

/-! ## A174059.P16449836512298263424

`1-floor(gcd(n, n+1)-∑[sqrt(n)])`
-/

namespace A174059.P16449836512298263424
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊(Nat.gcd n (n + 1) : ℝ) - ∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A174059.P16449836512298263424

namespace A174059

/-- `1-floor(gcd(n, n+1)-∑[sqrt(n)])` -/
def P16449836512298263424.Spec : Prop :=
  ∀ n, P16449836512298263424.a n = A174059 n

end A174059

/-! ## A174059.P2272831377489839045

`n-floor(n%(n+1)-∑[sqrt(n)])`
-/

namespace A174059.P2272831377489839045
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊((n % (n + 1) : ℕ) : ℝ) - ∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A174059.P2272831377489839045

namespace A174059

/-- `n-floor(n%(n+1)-∑[sqrt(n)])` -/
def P2272831377489839045.Spec : Prop :=
  ∀ n, P2272831377489839045.a n = A174059 n

end A174059

/-! ## A174059.P6755058599335531662

`A000217(n)-floor(∑[n-sqrt(n)])`
-/

namespace A174059.P6755058599335531662
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A174059.P6755058599335531662

namespace A174059

/-- `A000217(n)-floor(∑[n-sqrt(n)])` -/
def P6755058599335531662.Spec : Prop :=
  ∀ n, P6755058599335531662.a n = A174059 n

end A174059

/-! ## A174059.P16493240021173771503

`A157928(n)+A025224(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A174059

/-- `A157928(n)+A025224(n)` -/
def P16493240021173771503.Spec : Prop :=
  ∀ n, P16493240021173771503.a n = A174059 n

theorem P16493240021173771503.correct : P16493240021173771503.Spec := by
  intro n
  simp only [A174059]

end A174059

/-!
# A174060: a(n) = Sum_{k=0..n} floor(sqrt(k))^2.

The programs for A174060, the canonical program `A174060.P5652741263757943483` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174060 has offset 0).

The definition of A174060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174060.P5652741263757943483

`∑[floor(sqrt(n))²]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A174060

/-- `∑[floor(sqrt(n))²]` -/
def P5652741263757943483.Spec : Prop :=
  ∀ n, (P5652741263757943483.a n : ℤ) = A174060 n

theorem P5652741263757943483.correct : P5652741263757943483.Spec := by
  intro n
  simp only [A174060]

end A174060

/-! ## A174060.P750711294507213054

`a(n-1)+floor(sqrt(n))²` with `a(0)=0`
-/

namespace A174060.P750711294507213054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.sqrt n ^ 2

end

end A174060.P750711294507213054

namespace A174060

/-- `a(n-1)+floor(sqrt(n))²` -/
def P750711294507213054.Spec : Prop :=
  ∀ n, (P750711294507213054.a n : ℤ) = A174060 n

end A174060

/-! ## A174060.P12171230077526212919

`or(∑[floor(n^(1/2))²], char[1])`
-/

namespace A174060.P12171230077526212919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋ ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A174060.P12171230077526212919

namespace A174060

/-- `or(∑[floor(n^(1/2))²], char[1])` -/
def P12171230077526212919.Spec : Prop :=
  ∀ n, P12171230077526212919.a n = A174060 n

end A174060

/-! ## A174060.P14393089509117937705

`∑[∑[char[xor(1, n+1)²]]²]-1`
-/

namespace A174060.P14393089509117937705
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1) ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A174060.P14393089509117937705

namespace A174060

/-- `∑[∑[char[xor(1, n+1)²]]²]-1` -/
def P14393089509117937705.Spec : Prop :=
  ∀ n, P14393089509117937705.a n = A174060 n

end A174060

/-! ## A174060.P15409588272869549747

`∑[floor(n^(1/2))²]%(n+1)²`
-/

namespace A174060.P15409588272869549747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((n + 1) ^ 2 : ℤ)

end

end A174060.P15409588272869549747

namespace A174060

/-- `∑[floor(n^(1/2))²]%(n+1)²` -/
def P15409588272869549747.Spec : Prop :=
  ∀ n, P15409588272869549747.a n = A174060 n

end A174060

/-! ## A174060.P5900512089320389249

`gcd(n, n+1)*∑[∑[char[(n+1)²]]²]`
-/

namespace A174060.P5900512089320389249
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A174060.P5900512089320389249

namespace A174060

/-- `gcd(n, n+1)*∑[∑[char[(n+1)²]]²]` -/
def P5900512089320389249.Spec : Prop :=
  ∀ n, (P5900512089320389249.a n : ℤ) = A174060 n

end A174060

/-! ## A174060.P1029914449102680632

`A048760(n)+a(n-1)` with `a(0)=0`
-/

namespace A174060.P1029914449102680632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A048760 n + a (n - 1)

end

end A174060.P1029914449102680632

namespace A174060

/-- `A048760(n)+a(n-1)` -/
def P1029914449102680632.Spec : Prop :=
  ∀ n, P1029914449102680632.a n = A174060 n

end A174060

/-! ## A174060.P5725242297610451555

`∑[A005563(n)%comp[A002378(n)]]+n`
-/

namespace A174060.P5725242297610451555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005563 n) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A174060.P5725242297610451555

namespace A174060

/-- `∑[A005563(n)%comp[A002378(n)]]+n` -/
def P5725242297610451555.Spec : Prop :=
  ∀ n, P5725242297610451555.a n = A174060 n

end A174060

/-! ## A174060.P13235354281746865660

`A004526(∑[A007590(A116939(2*n))])`
-/

namespace A174060.P13235354281746865660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A116939 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A174060.P13235354281746865660

namespace A174060

/-- `A004526(∑[A007590(A116939(2*n))])` -/
def P13235354281746865660.Spec : Prop :=
  ∀ n, P13235354281746865660.a n = A174060 n

end A174060

/-! ## A174060.P16536901402376138853

`∑[A000196(n)²]*A292393(A292389(n+1))`
-/

namespace A174060.P16536901402376138853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A292393 (A292389 (n + 1)).toNat

end

end A174060.P16536901402376138853

namespace A174060

/-- `∑[A000196(n)²]*A292393(A292389(n+1))` -/
def P16536901402376138853.Spec : Prop :=
  ∀ n, P16536901402376138853.a n = A174060 n

end A174060

/-!
# A174061: The Lucky Tickets Problem.

The programs for A174061, there is no canonical definition to state claims against.
-/

/-! ## A174061.P1888496547906884640

`A025015(2*n)`
-/

namespace A174061.P1888496547906884640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025015 (2 * n)

end

end A174061.P1888496547906884640

/-! ## A174061.P550139608907870036

`record[A025015(A110090(n))]`
-/

namespace A174061.P550139608907870036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025015 (A110090 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174061.P550139608907870036

/-! ## A174061.P17892435389180513148

`record[A025015(A230641(n))]`
-/

namespace A174061.P17892435389180513148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025015 (A230641 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174061.P17892435389180513148

/-! ## A174061.P6993887606764141156

`A197357(A028310(2*n))`
-/

namespace A174061.P6993887606764141156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197357 (A028310 (2 * n)).toNat

end

end A174061.P6993887606764141156

/-! ## A174061.P18445179996510422813

`A197357(A028310(n)+n)`
-/

namespace A174061.P18445179996510422813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197357 (A028310 n + (n : ℤ)).toNat

end

end A174061.P18445179996510422813

/-! ## A174061.P10633305395544304813

`record[A025015(A185048(n+1))]`
-/

namespace A174061.P10633305395544304813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025015 (A185048 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174061.P10633305395544304813

/-! ## A174061.P1051809808679581434

`A197357(record[A185048(n+1)])`
-/

namespace A174061.P1051809808679581434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197357 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A174061.P1051809808679581434

/-! ## A174061.P13896691742365223894

`record[A025015(n)/A271060(n)]`
-/

namespace A174061.P13896691742365223894
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025015 n : ℚ) / (A271060 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174061.P13896691742365223894

/-!
# A174062: Least possible sum of exactly n positive integers less than 2n such that none of the n integers divides another.

The programs for A174062, there is no canonical definition to state claims against.
-/

/-! ## A174062.P7775862828437223465

`∑[4*n+2-A098486(n+1)]`
-/

namespace A174062.P7775862828437223465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℤ) - A098486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174062.P7775862828437223465

/-! ## A174062.P15537495865226156581

`2*(n+1)²-∑[A064614(2*n+1)]`
-/

namespace A174062.P15537495865226156581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174062.P15537495865226156581

/-! ## A174062.P10385218937409108473

`∑[A016825(n)-A064614(Δ[n²])]`
-/

namespace A174062.P10385218937409108473
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A064614 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174062.P10385218937409108473

/-! ## A174062.P11872452779694477431

`-∑[A098486(n+1)-A016825(n)]`
-/

namespace A174062.P11872452779694477431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098486 (n + 1) - A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A174062.P11872452779694477431

/-! ## A174062.P13648178008773204044

`Δ[A006331(n)]-∑[A098486(n+1)]`
-/

namespace A174062.P13648178008773204044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A174062.P13648178008773204044

/-! ## A174062.P9861947421675168572

`A001105(n+1)-∑[A098486(n+1)]`
-/

namespace A174062.P9861947421675168572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174062.P9861947421675168572

/-!
# A174064: Irregular triangle, row sums = n.

The programs for A174064, there is no canonical definition to state claims against.
-/

/-! ## A174064.P17834068820142806598

`A181819(n+3)-A000034(A239555(n+3))`
-/

namespace A174064.P17834068820142806598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 3) - A000034 (A239555 (n + 3)).toNat

end

end A174064.P17834068820142806598

/-! ## A174064.P1861883920845497247

`A138811(A001511(n+2))+A005811(A111146(n)^6)`
-/

namespace A174064.P1861883920845497247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138811 (A001511 (n + 2)).toNat + A005811 (A111146 n ^ 6).toNat

end

end A174064.P1861883920845497247

/-! ## A174064.P15031828153405070271

`A246270(A076995(n+2))`
-/

namespace A174064.P15031828153405070271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246270 (A076995 (n + 2)).toNat

end

end A174064.P15031828153405070271

/-! ## A174064.P1643180020226046238

`A192013(xor(A075163(n+5), A129952(n)))`
-/

namespace A174064.P1643180020226046238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192013 (Int.xor (A075163 (n + 5)) (A129952 n)).toNat

end

end A174064.P1643180020226046238

/-! ## A174064.P8027771579938818734

`and(A052126(n+3), A326535(A087803(n+1)))`
-/

namespace A174064.P8027771579938818734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052126 (n + 3)) (A326535 (A087803 (n + 1)).toNat)

end

end A174064.P8027771579938818734

/-!
# A174065: Convolved with its aerated variant = A000041.

The programs for A174065, there is no canonical definition to state claims against.
-/

/-! ## A174065.P10962463897250491511

`A259361(A322304(n)+3)+A001899(A000196(n))`
-/

namespace A174065.P10962463897250491511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A322304 n + 3).toNat + A001899 (A000196 n).toNat

end

end A174065.P10962463897250491511

/-! ## A174065.P13715231175217895349

`A259361(A294234(n))+A259361(A322304(n)+3)`
-/

namespace A174065.P13715231175217895349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A294234 n).toNat + A259361 (A322304 n + 3).toNat

end

end A174065.P13715231175217895349

/-! ## A174065.P13455306955698269259

`A259361(A322304(n)+3)+A001899(A259361(n+4))`
-/

namespace A174065.P13455306955698269259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A322304 n + 3).toNat + A001899 (A259361 (n + 4)).toNat

end

end A174065.P13455306955698269259

/-! ## A174065.P15024131396144973200

`A174066(∑[ceil(n/2)]+1)`
-/

namespace A174065.P15024131396144973200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174066 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A174065.P15024131396144973200

/-! ## A174065.P9823411904642647310

`A122079(A100853(n))`
-/

namespace A174065.P9823411904642647310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122079 (A100853 n).toNat

end

end A174065.P9823411904642647310

/-!
# A174066: Irregular triangle, row sums = A000041, left border = A174065.

The programs for A174066, there is no canonical definition to state claims against.
-/

/-! ## A174066.P1787814676065127547

`∏{e}[A003597(n+1), A174065(#)]`
-/

namespace A174066.P1787814676065127547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A174065 (Nat.factorization (f1 n).natAbs p)

end

end A174066.P1787814676065127547

/-! ## A174066.P13468042158618005225

`A342739(A246359(n)+A151824(2*n+1))`
-/

namespace A174066.P13468042158618005225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342739 (A246359 n + A151824 (2 * n + 1)).toNat

end

end A174066.P13468042158618005225

/-! ## A174066.P2467199637615371808

`A085576(or(A130517(n+1), A248112(n+1)))`
-/

namespace A174066.P2467199637615371808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085576 (Int.lor (A130517 (n + 1)) (A248112 (n + 1))).toNat

end

end A174066.P2467199637615371808

/-! ## A174066.P15056365107318578702

`A280667(A144402(2*n)+A130296(n+1))+1`
-/

namespace A174066.P15056365107318578702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280667 (A144402 (2 * n) + A130296 (n + 1)).toNat + 1

end

end A174066.P15056365107318578702

/-! ## A174066.P14174372150442780539

`A323436(2*A291929(n))`
-/

namespace A174066.P14174372150442780539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323436 (2 * A291929 n).toNat

end

end A174066.P14174372150442780539

/-!
# A174067: Triangle, row sums = A000041 starting (1, 2, 3, 5, 7, ...); derived from finite differences of p(x) = A(x)*A(x^2) = B(x)*B(x^3) = C(x)*C(x^4) = ...

The programs for A174067, there is no canonical definition to state claims against.
-/

/-! ## A174067.P2820269357977164678

`floor(ratio[A091050(A079474(n+1))])`
-/

namespace A174067.P2820269357977164678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091050 (A079474 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A174067.P2820269357977164678

/-! ## A174067.P5932096643058786752

`A158821(n)+A001221(A347811(n))`
-/

namespace A174067.P5932096643058786752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n + A001221 (A347811 n).toNat

end

end A174067.P5932096643058786752

/-! ## A174067.P9255514168994237862

`A326474(A330942(n))+A158821(n)`
-/

namespace A174067.P9255514168994237862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326474 (A330942 n).toNat + A158821 n

end

end A174067.P9255514168994237862

/-! ## A174067.P9082232030243572587

`A099557(n+1)%A000005(A250973(n+1))`
-/

namespace A174067.P9082232030243572587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099557 (n + 1)) (A000005 (A250973 (n + 1)).toNat)

end

end A174067.P9082232030243572587

/-! ## A174067.P5793843973086922393

`A369312(A367023(n+1))`
-/

namespace A174067.P5793843973086922393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369312 (A367023 (n + 1)).toNat

end

end A174067.P5793843973086922393

/-!
# A174068: Convolved with its aerated variant of two zeros between terms = A000041.

The programs for A174068, there is no canonical definition to state claims against.
-/

/-! ## A174068.P1502932309720256906

`A279385(A005896(n+1)+1)`
-/

namespace A174068.P1502932309720256906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279385 (A005896 (n + 1) + 1).toNat

end

end A174068.P1502932309720256906

/-! ## A174068.P16709542689343554464

`A008619(A003056(A238863(n)²))`
-/

namespace A174068.P16709542689343554464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A003056 (A238863 n ^ 2).toNat).toNat

end

end A174068.P16709542689343554464

/-! ## A174068.P6614693613699541429

`A100617(A004525(A023864(n+1)))`
-/

namespace A174068.P6614693613699541429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A004525 (A023864 (n + 1)).toNat).toNat

end

end A174068.P6614693613699541429

/-! ## A174068.P13084037667536507324

`A035947(n+1)-A035944(A187829(n+1))`
-/

namespace A174068.P13084037667536507324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035947 (n + 1) - A035944 (A187829 (n + 1)).toNat

end

end A174068.P13084037667536507324

/-! ## A174068.P3881378434872902694

`A259899(A173285(n))`
-/

namespace A174068.P3881378434872902694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A173285 n).toNat

end

end A174068.P3881378434872902694

/-!
# A174069: Numbers that can be written as a sum of at least 2 squares of consecutive positive integers.

The programs for A174069, there is no canonical definition to state claims against.
-/

/-! ## A174069.P16527821600235138735

`∪[A099776(n+1), A174070(n+1)]`
-/

namespace A174069.P16527821600235138735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174069.P16527821600235138735

/-! ## A174069.P9102425115242447188

`lt[1, A299173(n+1)]+1`
-/

namespace A174069.P9102425115242447188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A174069.P9102425115242447188

/-! ## A174069.P9359086332138620005

`lt[1, A299173(A028310(n))]`
-/

namespace A174069.P9359086332138620005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A174069.P9359086332138620005

/-! ## A174069.P15669100725910657528

`A020725(lt[1, A299173(n+1)])`
-/

namespace A174069.P15669100725910657528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A174069.P15669100725910657528

/-! ## A174069.P9416268946435202398

`A065475(lt[1, A299173(n+1)])`
-/

namespace A174069.P9416268946435202398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A174069.P9416268946435202398

/-! ## A174069.P13651049828760580598

`lt[1, A299173(A000007(n)+n)]`
-/

namespace A174069.P13651049828760580598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A174069.P13651049828760580598

/-! ## A174069.P15490194454634853876

`lt[1, A299173(A233583(n+1))]`
-/

namespace A174069.P15490194454634853876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A174069.P15490194454634853876

/-!
# A174070: Numbers that can be written as a sum of at least 3 consecutive squares.

The programs for A174070, there is no canonical definition to state claims against.
-/

/-! ## A174070.P79835444602310162

`lt[2, A299173(n+1)]+1`
-/

namespace A174070.P79835444602310162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A174070.P79835444602310162

/-! ## A174070.P2947485281070687315

`lt[2, A299173(A028310(n))]`
-/

namespace A174070.P2947485281070687315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A174070.P2947485281070687315

/-! ## A174070.P2460335854580952137

`A020725(lt[2, A299173(n+1)])`
-/

namespace A174070.P2460335854580952137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A174070.P2460335854580952137

/-! ## A174070.P10777722067119770836

`A065475(lt[2, A299173(n+1)])`
-/

namespace A174070.P10777722067119770836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A174070.P10777722067119770836

/-! ## A174070.P2648575069215767453

`lt[2, A299173(A000007(n)+n)]`
-/

namespace A174070.P2648575069215767453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A174070.P2648575069215767453

/-! ## A174070.P5510704342885488153

`lt[2, A299173(A233583(n+1))]`
-/

namespace A174070.P5510704342885488153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A174070.P5510704342885488153

/-!
# A174071: Numbers that can be written as a sum of at least 4 consecutive positive squares.

The programs for A174071, there is no canonical definition to state claims against.
-/

/-! ## A174071.P14724356264312522603

`lt[3, A299173(n+1)]+1`
-/

namespace A174071.P14724356264312522603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A174071.P14724356264312522603

/-! ## A174071.P17872368356728035307

`lt[3, A299173(A028310(n))]`
-/

namespace A174071.P17872368356728035307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A174071.P17872368356728035307

/-! ## A174071.P3237604222838527275

`A020725(lt[3, A299173(n+1)])`
-/

namespace A174071.P3237604222838527275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A174071.P3237604222838527275

/-! ## A174071.P7657110553800196165

`A065475(lt[3, A299173(n+1)])`
-/

namespace A174071.P7657110553800196165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A174071.P7657110553800196165

/-! ## A174071.P6705784776628792513

`lt[3, A299173(A233583(n+1))]`
-/

namespace A174071.P6705784776628792513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A174071.P6705784776628792513

/-!
# A174072: Number of permutations of length n with no consecutive triples i,i+2,i+4.

The programs for A174072, there is no canonical definition to state claims against.
-/

/-! ## A174072.P14663581754414300932

`A216716(lt[A307543(n), A216716(n)+1])`
-/

namespace A174072.P14663581754414300932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307543 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216716 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216716 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A174072.P14663581754414300932

/-! ## A174072.P3421431524153492017

`A216716(lt[A307543(n)-1, A216716(n)])`
-/

namespace A174072.P3421431524153492017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307543 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216716 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A174072.P3421431524153492017

/-! ## A174072.P427042713411903569

`A216716(lt[A024495(n), A216716(n)])`
-/

namespace A174072.P427042713411903569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216716 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A174072.P427042713411903569

/-! ## A174072.P14278500397473686283

`A216716(lt[A304974(n), A216716(n)])`
-/

namespace A174072.P14278500397473686283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304974 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216716 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A174072.P14278500397473686283

/-! ## A174072.P11533197120977468384

`A216716(lt[A332669(n), A216716(n)])`
-/

namespace A174072.P11533197120977468384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216716 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A174072.P11533197120977468384

/-!
# A174073: Number of permutations of length n without modular consecutive triples i,i+2,i+4.

The programs for A174073, there is no canonical definition to state claims against.
-/

/-! ## A174073.P2185940983301933881

`A216724(lt[A000071(n+1), A216724(n)])`
-/

namespace A174073.P2185940983301933881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216724 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A174073.P2185940983301933881

/-! ## A174073.P1465687899278132420

`A216724(A241725(n))`
-/

namespace A174073.P1465687899278132420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216724 (A241725 (n + 28)).toNat

end

end A174073.P1465687899278132420

/-! ## A174073.P3999119508114874747

`A216724(A000041(n*A063260(n)))`
-/

namespace A174073.P3999119508114874747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216724 (A000041 ((n : ℤ) * A063260 n).toNat).toNat

end

end A174073.P3999119508114874747

/-! ## A174073.P12500701191286026672

`A216724(A000041(n)^A063260(n))`
-/

namespace A174073.P12500701191286026672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216724 (SequenceMachineLib.roundAway ((A000041 n : ℚ) ^ (A063260 n : ℤ))).toNat

end

end A174073.P12500701191286026672

/-!
# A174074: Number of circular permutations of length n without consecutive triples i,i+2,i+4.

The programs for A174074, there is no canonical definition to state claims against.
-/

/-! ## A174074.P2822676133593235791

`A165190(∏[a(n-1)+1])` with `a(0)=18, a(1)=1, a(2)=1`
-/

namespace A174074.P2822676133593235791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [18, 1, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A174074.P2822676133593235791

/-! ## A174074.P5948803748679072431

`A166295(A000800(n))`
-/

namespace A174074.P5948803748679072431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166295 (A000800 n).toNat

end

end A174074.P5948803748679072431

/-! ## A174074.P6966060681851404479

`A103841(A352853(n))`
-/

namespace A174074.P6966060681851404479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103841 (A352853 n).toNat

end

end A174074.P6966060681851404479

/-!
# A174075: Number of circular permutations of length n without modular consecutive triples i,i+2,i+4.

The programs for A174075, there is no canonical definition to state claims against.
-/

/-! ## A174075.P639950865651582180

`record[A216726(n+6)]`
-/

namespace A174075.P639950865651582180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216726 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174075.P639950865651582180

/-! ## A174075.P17050852719246477291

`A216726(eq[3, A193739(n)])`
-/

namespace A174075.P17050852719246477291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A174075.P17050852719246477291

/-! ## A174075.P17848801720562780516

`A216726(A141214(n))%A013517(n)`
-/

namespace A174075.P17848801720562780516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216726 (A141214 n).toNat) (A013517 n)

end

end A174075.P17848801720562780516

/-! ## A174075.P13550286918916659891

`gcd(A000038(n), A216726(A141214(n)))`
-/

namespace A174075.P13550286918916659891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A216726 (A141214 n).toNat)

end

end A174075.P13550286918916659891

/-!
# A174076: Number of permutations of length n with no consecutive triples i,i+2,i+4 or i,i-2,i-4.

The programs for A174076, there is no canonical definition to state claims against.
-/

/-! ## A174076.P11105860045650531195

`A332086(A030977(n+1)+1)`
-/

namespace A174076.P11105860045650531195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A030977 (n + 1) + 1).toNat

end

end A174076.P11105860045650531195

/-! ## A174076.P13681570767243950929

`A111063(n)-A227908(A000262(n))`
-/

namespace A174076.P13681570767243950929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111063 n - A227908 (A000262 n).toNat

end

end A174076.P13681570767243950929

/-! ## A174076.P3114623713510757586

`A000142(n)-A378174(A127902(n+1))`
-/

namespace A174076.P3114623713510757586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A378174 (A127902 (n + 1)).toNat

end

end A174076.P3114623713510757586

/-!
# A174077: Number of permutations of length n with no consecutive triples i,i+2,i+4 (mod n) or i,i-2,i-4 (mod n).

The programs for A174077, there is no canonical definition to state claims against.
-/

/-! ## A174077.P9321049547100501703

`A000005(A254231(n+2))*A251705(n)`
-/

namespace A174077.P9321049547100501703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A254231 (n + 2)).toNat * A251705 n

end

end A174077.P9321049547100501703

/-!
# A174080: Number of permutations of length n with no consecutive triples i,i+d,i+2d for all d>0.

The programs for A174080, there is no canonical definition to state claims against.
-/

/-! ## A174080.P13400387114125438892

`A029917(ceil(xor(1, n)/4)+n!*∑[1/n!]+1)`
-/

namespace A174080.P13400387114125438892
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029917 (SequenceMachineLib.roundAway ((⌈(Nat.xor 1 n : ℚ) / 4⌉ : ℚ) + ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1))).toNat

end

end A174080.P13400387114125438892

/-! ## A174080.P4591764321895395064

`A054071(A003485(n!))`
-/

namespace A174080.P4591764321895395064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (A003485 (Nat.factorial n)).toNat

end

end A174080.P4591764321895395064

/-! ## A174080.P15558274210459486092

`A054071(A109534(n!))`
-/

namespace A174080.P15558274210459486092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (A109534 (Nat.factorial n)).toNat

end

end A174080.P15558274210459486092

/-!
# A174082: Number of circular permutations of (0,1,...,n-1) with no consecutive triples i,i+d,i+2d for all d>0.

The programs for A174082, there is no canonical definition to state claims against.
-/

/-! ## A174082.P15214274469405304654

`A088004(A000262(n)+2)`
-/

namespace A174082.P15214274469405304654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (A000262 n + 2).toNat

end

end A174082.P15214274469405304654

/-! ## A174082.P18163649174339343896

`A130952(A000111(n)*A131355(n))`
-/

namespace A174082.P18163649174339343896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130952 (A000111 n * A131355 n).toNat

end

end A174082.P18163649174339343896

/-!
# A174085: Number of permutations of length n with no consecutive triples i,...i+r,...i+2r for all positive and negative r, and for all equal spacings d.

The programs for A174085, there is no canonical definition to state claims against.
-/

/-! ## A174085.P8276032969456820996

`A349137(A016283(n)+6)`
-/

namespace A174085.P8276032969456820996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (A016283 n + 6).toNat

end

end A174085.P8276032969456820996

/-! ## A174085.P12866646360110825857

`A002088(C(A114584(n), ∏{e}[n+1, #]))`
-/

namespace A174085.P12866646360110825857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (Nat.choose (A114584 n).toNat (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A174085.P12866646360110825857

/-! ## A174085.P9767732606134649010

`A225216(A116413(n)+A000670(n))`
-/

namespace A174085.P9767732606134649010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225216 (A116413 n + A000670 n).toNat

end

end A174085.P9767732606134649010

/-!
# A174088: Number of pairs (i,j) such that i*j == 0 (mod k), 0 <= i <= j < k.

The programs for A174088, the canonical program `A174088.P3336557888488504044` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174088 has offset 1).

The definition of A174088 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A174088.P3336557888488504044

`(A018804(n+1)+A000188(n+1))/2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A174088

/-- `(A018804(n+1)+A000188(n+1))/2` -/
def P3336557888488504044.Spec : Prop :=
  ∀ n, P3336557888488504044.a n = (A174088 (n + 1) : ℚ)

end A174088

/-! ## A174088.P9926818392955536419

`A180772(n+1)+1+n`
-/

namespace A174088.P9926818392955536419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180772 (n + 1) + 1 + (n : ℤ)

end

end A174088.P9926818392955536419

namespace A174088

/-- `A180772(n+1)+1+n` -/
def P9926818392955536419.Spec : Prop :=
  ∀ n, P9926818392955536419.a n = A174088 (n + 1)

end A174088

/-! ## A174088.P9418698398327278668

`(A019554(A008833(n+1))+A018804(n+1))/2`
-/

namespace A174088.P9418698398327278668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (A008833 (n + 1)).toNat + A018804 (n + 1) : ℚ) / 2

end

end A174088.P9418698398327278668

namespace A174088

/-- `(A019554(A008833(n+1))+A018804(n+1))/2` -/
def P9418698398327278668.Spec : Prop :=
  ∀ n, P9418698398327278668.a n = (A174088 (n + 1) : ℚ)

end A174088

/-! ## A174088.P16054718646999771357

`A004526(A018804(n+1)+A000188(n+1))`
-/

namespace A174088.P16054718646999771357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A018804 (n + 1) + A000188 (n + 1)).toNat

end

end A174088.P16054718646999771357

namespace A174088

/-- `A004526(A018804(n+1)+A000188(n+1))` -/
def P16054718646999771357.Spec : Prop :=
  ∀ n, P16054718646999771357.a n = A174088 (n + 1)

end A174088

/-! ## A174088.P16122305428715872492

`A026741(A018804(n+1)+A000188(n+1))`
-/

namespace A174088.P16122305428715872492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A018804 (n + 1) + A000188 (n + 1)).toNat

end

end A174088.P16122305428715872492

namespace A174088

/-- `A026741(A018804(n+1)+A000188(n+1))` -/
def P16122305428715872492.Spec : Prop :=
  ∀ n, P16122305428715872492.a n = A174088 (n + 1)

end A174088

/-! ## A174088.P7783708606226836662

`A008619(A000188(n+1)+A018804(n+1)-1)`
-/

namespace A174088.P7783708606226836662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000188 (n + 1) + (A018804 (n + 1) - 1)).toNat

end

end A174088.P7783708606226836662

namespace A174088

/-- `A008619(A000188(n+1)+A018804(n+1)-1)` -/
def P7783708606226836662.Spec : Prop :=
  ∀ n, P7783708606226836662.a n = A174088 (n + 1)

end A174088

/-! ## A174088.P5883126604785690343

`A008619(A018804(n+1)+n%A000188(n+1))`
-/

namespace A174088.P5883126604785690343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A018804 (n + 1) + Int.tmod (n : ℤ) (A000188 (n + 1))).toNat

end

end A174088.P5883126604785690343

namespace A174088

/-- `A008619(A018804(n+1)+n%A000188(n+1))` -/
def P5883126604785690343.Spec : Prop :=
  ∀ n, P5883126604785690343.a n = A174088 (n + 1)

end A174088

/-! ## A174088.P16543277664466527473

`A180803(∑[n+1])`
-/

namespace A174088.P16543277664466527473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A174088.P16543277664466527473

namespace A174088

/-- `A180803(∑[n+1])` -/
def P16543277664466527473.Spec : Prop :=
  ∀ n, P16543277664466527473.a n = A174088 (n + 1)

end A174088

/-! ## A174088.P15115822201884259129

`A180782(∑[n+1])+1+n`
-/

namespace A174088.P15115822201884259129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 + (n : ℤ)

end

end A174088.P15115822201884259129

namespace A174088

/-- `A180782(∑[n+1])+1+n` -/
def P15115822201884259129.Spec : Prop :=
  ∀ n, P15115822201884259129.a n = A174088 (n + 1)

end A174088

/-! ## A174088.P5716592915163760444

`A180823(∑[n+1])+n+1`
-/

namespace A174088.P5716592915163760444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A174088.P5716592915163760444

namespace A174088

/-- `A180823(∑[n+1])+n+1` -/
def P5716592915163760444.Spec : Prop :=
  ∀ n, P5716592915163760444.a n = A174088 (n + 1)

end A174088

/-!
# A174090: Powers of 2 and odd primes; alternatively, numbers that cannot be written as a sum of at least three consecutive positive integers.

The programs for A174090, the canonical program `A174090.P3000555461621307898` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174090 has offset 1).

The definition of A174090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9608 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174090.P16342283785597504415

`∪[2^n, p?[2*n+1]]`
-/

namespace A174090.P16342283785597504415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A174090.P16342283785597504415

namespace A174090

/-- `∪[2^n, p?[2*n+1]]` -/
def P16342283785597504415.Spec : Prop :=
  ∀ n, (P16342283785597504415.a n : ℤ) = A174090 (n + 1)

end A174090

/-! ## A174090.P4344357112918957381

`∪[A000040(n+1), A000079(n)]`
-/

namespace A174090.P4344357112918957381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174090.P4344357112918957381

namespace A174090

/-- `∪[A000040(n+1), A000079(n)]` -/
def P4344357112918957381.Spec : Prop :=
  ∀ n, (P4344357112918957381.a n : ℤ) = A174090 (n + 1)

end A174090

/-! ## A174090.P15725483882846663662

`∪[A000079(n), A006005(n+1)]`
-/

namespace A174090.P15725483882846663662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174090.P15725483882846663662

namespace A174090

/-- `∪[A000079(n), A006005(n+1)]` -/
def P15725483882846663662.Spec : Prop :=
  ∀ n, (P15725483882846663662.a n : ℤ) = A174090 (n + 1)

end A174090

/-! ## A174090.P12489775127771147497

`∪[A000079(n), A008578(n+1)]`
-/

namespace A174090.P12489775127771147497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174090.P12489775127771147497

namespace A174090

/-- `∪[A000079(n), A008578(n+1)]` -/
def P12489775127771147497.Spec : Prop :=
  ∀ n, (P12489775127771147497.a n : ℤ) = A174090 (n + 1)

end A174090

/-! ## A174090.P1260300031825091844

`∪[A000040(n+1), A302592(n+1)]`
-/

namespace A174090.P1260300031825091844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174090.P1260300031825091844

namespace A174090

/-- `∪[A000040(n+1), A302592(n+1)]` -/
def P1260300031825091844.Spec : Prop :=
  ∀ n, (P1260300031825091844.a n : ℤ) = A174090 (n + 1)

end A174090

/-! ## A174090.P10941671841802338654

`∪[A007821(n+1), A302592(n+1)]`
-/

namespace A174090.P10941671841802338654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174090.P10941671841802338654

namespace A174090

/-- `∪[A007821(n+1), A302592(n+1)]` -/
def P10941671841802338654.Spec : Prop :=
  ∀ n, (P10941671841802338654.a n : ℤ) = A174090 (n + 1)

end A174090

/-! ## A174090.P11921040752330897704

`∪[A045319(n+1), A302592(n+1)]`
-/

namespace A174090.P11921040752330897704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174090.P11921040752330897704

namespace A174090

/-- `∪[A045319(n+1), A302592(n+1)]` -/
def P11921040752330897704.Spec : Prop :=
  ∀ n, (P11921040752330897704.a n : ℤ) = A174090 (n + 1)

end A174090

/-! ## A174090.P4088246714942249919

`filter[A067133(n+1), A324290(#)]`
-/

namespace A174090.P4088246714942249919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A174090.P4088246714942249919

namespace A174090

/-- `filter[A067133(n+1), A324290(#)]` -/
def P4088246714942249919.Spec : Prop :=
  ∀ n, P4088246714942249919.a n = A174090 (n + 1)

end A174090

/-! ## A174090.P266234655532975398

`record[(n+1)/A171435(n+1)]`
-/

namespace A174090.P266234655532975398
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A171435 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174090.P266234655532975398

namespace A174090

/-- `record[(n+1)/A171435(n+1)]` -/
def P266234655532975398.Spec : Prop :=
  ∀ n, P266234655532975398.a n = (A174090 (n + 1) : ℚ)

end A174090

/-! ## A174090.P15995244096895009342

`record[lcm(2^val(n+1, 2), A020639(n+1))]`
-/

namespace A174090.P15995244096895009342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A020639 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174090.P15995244096895009342

namespace A174090

/-- `record[lcm(2^val(n+1, 2), A020639(n+1))]` -/
def P15995244096895009342.Spec : Prop :=
  ∀ n, (P15995244096895009342.a n : ℤ) = A174090 (n + 1)

end A174090

/-! ## A174090.P3000555461621307898

`record[ceil(xor(n, n+1)/4)*A006530(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A174090

/-- `record[ceil(xor(n, n+1)/4)*A006530(n+1)]` -/
def P3000555461621307898.Spec : Prop :=
  ∀ n, P3000555461621307898.a n = A174090 (n + 1)

theorem P3000555461621307898.correct : P3000555461621307898.Spec := by
  intro n
  simp only [A174090, Nat.add_sub_cancel]

end A174090

/-! ## A174090.P10050873251930485635

`filter[A000961(n+1), A365716(#)]`
-/

namespace A174090.P10050873251930485635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A174090.P10050873251930485635

namespace A174090

/-- `filter[A000961(n+1), A365716(#)]` -/
def P10050873251930485635.Spec : Prop :=
  ∀ n, P10050873251930485635.a n = A174090 (n + 1)

end A174090

/-! ## A174090.P3205695255195427777

`filter[A067133(n+1), A356173(#)]`
-/

namespace A174090.P3205695255195427777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A174090.P3205695255195427777

namespace A174090

/-- `filter[A067133(n+1), A356173(#)]` -/
def P3205695255195427777.Spec : Prop :=
  ∀ n, P3205695255195427777.a n = A174090 (n + 1)

end A174090

/-! ## A174090.P16836893049085769946

`filter[A067133(n+1), A360128(#)]`
-/

namespace A174090.P16836893049085769946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360128 (f1 j).toNat = 1) n)

end

end A174090.P16836893049085769946

namespace A174090

/-- `filter[A067133(n+1), A360128(#)]` -/
def P16836893049085769946.Spec : Prop :=
  ∀ n, P16836893049085769946.a n = A174090 (n + 1)

end A174090

/-! ## A174090.P10720330989791318775

`filter[A067133(n+1), A373851(#)]`
-/

namespace A174090.P10720330989791318775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373851 (f1 j).toNat = 1) n)

end

end A174090.P10720330989791318775

namespace A174090

/-- `filter[A067133(n+1), A373851(#)]` -/
def P10720330989791318775.Spec : Prop :=
  ∀ n, P10720330989791318775.a n = A174090 (n + 1)

end A174090

/-! ## A174090.P18433076097062013386

`filter[A067133(n+1), A378442(#)]`
-/

namespace A174090.P18433076097062013386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A174090.P18433076097062013386

namespace A174090

/-- `filter[A067133(n+1), A378442(#)]` -/
def P18433076097062013386.Spec : Prop :=
  ∀ n, P18433076097062013386.a n = A174090 (n + 1)

end A174090

/-! ## A174090.P10218924330069982464

`filter[A087441(n+1), A365716(#)]`
-/

namespace A174090.P10218924330069982464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A174090.P10218924330069982464

namespace A174090

/-- `filter[A087441(n+1), A365716(#)]` -/
def P10218924330069982464.Spec : Prop :=
  ∀ n, P10218924330069982464.a n = A174090 (n + 1)

end A174090

/-! ## A174090.P17506332040267603293

`filter[A133811(n+1), A365716(#)]`
-/

namespace A174090.P17506332040267603293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A174090.P17506332040267603293

namespace A174090

/-- `filter[A133811(n+1), A365716(#)]` -/
def P17506332040267603293.Spec : Prop :=
  ∀ n, P17506332040267603293.a n = A174090 (n + 1)

end A174090

/-! ## A174090.P15252377520838423351

`record[A003958(n+1)+n/A003958(n+1)]`
-/

namespace A174090.P15252377520838423351
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) + (n : ℚ) / (A003958 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174090.P15252377520838423351

namespace A174090

/-- `record[A003958(n+1)+n/A003958(n+1)]` -/
def P15252377520838423351.Spec : Prop :=
  ∀ n, P15252377520838423351.a n = (A174090 (n + 1) : ℚ)

end A174090

/-! ## A174090.P6451765171838618330

`filter[A166401(n+1), A365716(#)]`
-/

namespace A174090.P6451765171838618330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A174090.P6451765171838618330

namespace A174090

/-- `filter[A166401(n+1), A365716(#)]` -/
def P6451765171838618330.Spec : Prop :=
  ∀ n, P6451765171838618330.a n = A174090 (n + 1)

end A174090

/-!
# A174091: a(n) = n OR 2.

The programs for A174091, the canonical program `A174091.P8346778560199504610` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174091 has offset 0).

The definition of A174091 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174091.P8346778560199504610

`or(n, 2)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A174091

/-- `or(n, 2)` -/
def P8346778560199504610.Spec : Prop :=
  ∀ n, (P8346778560199504610.a n : ℤ) = A174091 n

theorem P8346778560199504610.correct : P8346778560199504610.Spec := by
  intro n
  simp only [A174091]

end A174091

/-! ## A174091.P17193728868080540039

`n+1+(-1)^floor(n/2)`
-/

namespace A174091.P17193728868080540039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) + (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A174091.P17193728868080540039

namespace A174091

/-- `n+1+(-1)^floor(n/2)` -/
def P17193728868080540039.Spec : Prop :=
  ∀ n, P17193728868080540039.a n = (A174091 n : ℚ)

end A174091

/-! ## A174091.P9999421933345575510

`xor(2, and(n, -3))`
-/

namespace A174091.P9999421933345575510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.land (n : ℤ) (-3))

end

end A174091.P9999421933345575510

namespace A174091

/-- `xor(2, and(n, -3))` -/
def P9999421933345575510.Spec : Prop :=
  ∀ n, P9999421933345575510.a n = A174091 n

end A174091

/-! ## A174091.P3071647328271289907

`(xor(2, n)+2+n)/2`
-/

namespace A174091.P3071647328271289907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 n + 2 + n : ℚ) / 2

end

end A174091.P3071647328271289907

namespace A174091

/-- `(xor(2, n)+2+n)/2` -/
def P3071647328271289907.Spec : Prop :=
  ∀ n, P3071647328271289907.a n = (A174091 n : ℚ)

end A174091

/-! ## A174091.P13057944006915208281

`xor(n, n-a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A174091.P13057944006915208281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  Int.xor (n : ℤ) ((n : ℤ) - a (n - 2))

end

end A174091.P13057944006915208281

namespace A174091

/-- `xor(n, n-a(n-2))` -/
def P13057944006915208281.Spec : Prop :=
  ∀ n, P13057944006915208281.a n = A174091 n

end A174091

/-! ## A174091.P15496387447437227101

`∑[2-a(n-2)]` with `a(0)=2, a(1)=1, a(2)=-1`
-/

namespace A174091.P15496387447437227101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, -1] fun n f1 =>
  2 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174091.P15496387447437227101

namespace A174091

/-- `∑[2-a(n-2)]` -/
def P15496387447437227101.Spec : Prop :=
  ∀ n, P15496387447437227101.a n = A174091 n

end A174091

/-! ## A174091.P6979164835076334955

`round(2*n-a(n-2))` with `a(0)=2, a(1)=3`

`round` is left out, it is the identity on integers.
-/

namespace A174091.P6979164835076334955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  (2 * n : ℤ) - a (n - 2)

end

end A174091.P6979164835076334955

namespace A174091

/-- `round(2*n-a(n-2))` -/
def P6979164835076334955.Spec : Prop :=
  ∀ n, P6979164835076334955.a n = A174091 n

end A174091

/-! ## A174091.P13692038769839344425

`round(n-a(n-2)+n)` with `a(0)=2, a(1)=3`

`round` is left out, it is the identity on integers.
-/

namespace A174091.P13692038769839344425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  (n : ℤ) - a (n - 2) + (n : ℤ)

end

end A174091.P13692038769839344425

namespace A174091

/-- `round(n-a(n-2)+n)` -/
def P13692038769839344425.Spec : Prop :=
  ∀ n, P13692038769839344425.a n = A174091 n

end A174091

/-! ## A174091.P9531382733645890055

`round(n-(a(n-2)-n))` with `a(0)=2, a(1)=3`

`round` is left out, it is the identity on integers.
-/

namespace A174091.P9531382733645890055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  (n : ℤ) - (a (n - 2) - (n : ℤ))

end

end A174091.P9531382733645890055

namespace A174091

/-- `round(n-(a(n-2)-n))` -/
def P9531382733645890055.Spec : Prop :=
  ∀ n, P9531382733645890055.a n = A174091 n

end A174091

/-! ## A174091.P4400079350858619493

`ogf((2-x+x^3)/(1-2x+2x^2-2x^3+x^4))`
-/

namespace A174091.P4400079350858619493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, 0, 1] [1, -2, 2, -2, 1] n

end

end A174091.P4400079350858619493

namespace A174091

/-- `ogf((2-x+x^3)/(1-2x+2x^2-2x^3+x^4))` -/
def P4400079350858619493.Spec : Prop :=
  ∀ n, P4400079350858619493.a n = A174091 n

end A174091

/-! ## A174091.P11778592181646078771

`sqrt((n+1)*xor(2, n)+n+2)`
-/

namespace A174091.P11778592181646078771
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1) * Nat.xor 2 n + (n + 2) : ℝ)

end

end A174091.P11778592181646078771

namespace A174091

/-- `sqrt((n+1)*xor(2, n)+n+2)` -/
def P11778592181646078771.Spec : Prop :=
  ∀ n, P11778592181646078771.a n = (A174091 n : ℝ)

end A174091

/-! ## A174091.P18256779687968672827

`∑[A176742(n)+1]`
-/

namespace A174091.P18256779687968672827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176742 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174091.P18256779687968672827

namespace A174091

/-- `∑[A176742(n)+1]` -/
def P18256779687968672827.Spec : Prop :=
  ∀ n, P18256779687968672827.a n = A174091 n

end A174091

/-! ## A174091.P6989271873861004735

`and(A244584(n), A244588(n))`
-/

namespace A174091.P6989271873861004735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A244584 n) (A244588 n)

end

end A174091.P6989271873861004735

namespace A174091

/-- `and(A244584(n), A244588(n))` -/
def P6989271873861004735.Spec : Prop :=
  ∀ n, P6989271873861004735.a n = A174091 n

end A174091

/-! ## A174091.P3623744772259958793

`xor(A059841(n), A244584(n))`
-/

namespace A174091.P3623744772259958793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059841 n) (A244584 n)

end

end A174091.P3623744772259958793

namespace A174091

/-- `xor(A059841(n), A244584(n))` -/
def P3623744772259958793.Spec : Prop :=
  ∀ n, P3623744772259958793.a n = A174091 n

end A174091

/-! ## A174091.P4476007144133369694

`xor(A084101(n), A263313(n))`
-/

namespace A174091.P4476007144133369694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A084101 n) (A263313 n)

end

end A174091.P4476007144133369694

namespace A174091

/-- `xor(A084101(n), A263313(n))` -/
def P4476007144133369694.Spec : Prop :=
  ∀ n, P4476007144133369694.a n = A174091 n

end A174091

/-! ## A174091.P9847891059954782946

`Δ[∑[and(2, n+1)+n]-n]`
-/

namespace A174091.P9847891059954782946
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n + 1) + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174091.P9847891059954782946

namespace A174091

/-- `Δ[∑[and(2, n+1)+n]-n]` -/
def P9847891059954782946.Spec : Prop :=
  ∀ n, P9847891059954782946.a n = A174091 n

end A174091

/-! ## A174091.P10124245989791791777

`Δ[n-∑[and(2, n-1)-n]]`
-/

namespace A174091.P10124245989791791777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 ((n : ℤ) - 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174091.P10124245989791791777

namespace A174091

/-- `Δ[n-∑[and(2, n-1)-n]]` -/
def P10124245989791791777.Spec : Prop :=
  ∀ n, P10124245989791791777.a n = A174091 n

end A174091

/-! ## A174091.P10465047035704591875

`A042964(A285869(n+1))`
-/

namespace A174091.P10465047035704591875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (A285869 (n + 1)).toNat

end

end A174091.P10465047035704591875

namespace A174091

/-- `A042964(A285869(n+1))` -/
def P10465047035704591875.Spec : Prop :=
  ∀ n, P10465047035704591875.a n = A174091 n

end A174091

/-! ## A174091.P5954549948679396413

`A108752(n+3)%(n+3)`
-/

namespace A174091.P5954549948679396413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108752 (n + 3)) (n + 3 : ℤ)

end

end A174091.P5954549948679396413

namespace A174091

/-- `A108752(n+3)%(n+3)` -/
def P5954549948679396413.Spec : Prop :=
  ∀ n, P5954549948679396413.a n = A174091 n

end A174091

/-! ## A174091.P16653089489651270113

`A084964(A047481(n+1))`
-/

namespace A174091.P16653089489651270113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (A047481 (n + 1)).toNat

end

end A174091.P16653089489651270113

namespace A174091

/-- `A084964(A047481(n+1))` -/
def P16653089489651270113.Spec : Prop :=
  ∀ n, P16653089489651270113.a n = A174091 n

end A174091

/-!
# A174093: Triangle T(n, k) = binomial(n-k+1, k) + binomial(k+1, n-k) with T(0,0) = T(1, 0) = T(1, 1) = 1, read by rows.

The programs for A174093, there is no canonical definition to state claims against.
-/

/-! ## A174093.P2088659738681340068

`A169803(n)+A030528(n+1)%A046682(n)`
-/

namespace A174093.P2088659738681340068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169803 n + Int.tmod (A030528 (n + 1)) (A046682 n)

end

end A174093.P2088659738681340068

/-! ## A174093.P11764380359682041816

`A030528(n+1)+A169803(n)%A000930(n)`
-/

namespace A174093.P11764380359682041816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (n + 1) + Int.tmod (A169803 n) (A000930 n)

end

end A174093.P11764380359682041816

/-! ## A174093.P9290140450734270888

`A213714(A174095(n))%A004525(A167381(2*n+3))`
-/

namespace A174093.P9290140450734270888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213714 (A174095 n).toNat) (A004525 (A167381 (2 * n + 3)).toNat)

end

end A174093.P9290140450734270888

/-! ## A174093.P17404636639987224044

`A213714(A174095(n))%A038105(A047311(n+1))`
-/

namespace A174093.P17404636639987224044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213714 (A174095 n).toNat) (A038105 (A047311 (n + 1)).toNat)

end

end A174093.P17404636639987224044

/-! ## A174093.P17021313751581917777

`A023116(A022778(n+1))*A213714(A174095(n))`
-/

namespace A174093.P17021313751581917777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023116 (A022778 (n + 1)).toNat * A213714 (A174095 n).toNat

end

end A174093.P17021313751581917777

/-! ## A174093.P16162208362494949735

`A213714(A174095(n))%A174839(A314220(n))`
-/

namespace A174093.P16162208362494949735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213714 (A174095 n).toNat) (A174839 (A314220 n).toNat)

end

end A174093.P16162208362494949735

/-! ## A174093.P17465466810513512717

`A213714(A174095(n))^A001221(A059268(n))`
-/

namespace A174093.P17465466810513512717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213714 (A174095 n).toNat : ℚ) ^ (A001221 (A059268 n).toNat : ℤ)

end

end A174093.P17465466810513512717

/-! ## A174093.P12908180664179701290

`A213714(A174095(n))^A001221(A137688(n))`
-/

namespace A174093.P12908180664179701290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213714 (A174095 n).toNat : ℚ) ^ (A001221 (A137688 n).toNat : ℤ)

end

end A174093.P12908180664179701290

/-! ## A174093.P5750140572107100575

`A213714(A174095(n))+A003982(A309805(2*n+1))`
-/

namespace A174093.P5750140572107100575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (A174095 n).toNat + A003982 (A309805 (2 * n + 1)).toNat

end

end A174093.P5750140572107100575

/-! ## A174093.P1731701154572505609

`A144871(∑[n+1])*A213714(A174095(n))`
-/

namespace A174093.P1731701154572505609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (∑ j ∈ Finset.range (n + 1), f1 j) * A213714 (A174095 n).toNat

end

end A174093.P1731701154572505609

/-! ## A174093.P16251489991698858478

`A057427(A270199(n+1))*A213714(A174095(n))`
-/

namespace A174093.P16251489991698858478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A270199 (n + 1)).toNat * A213714 (A174095 n).toNat

end

end A174093.P16251489991698858478

/-! ## A174093.P5707288238463611757

`A057427(A073736(n))*A213714(A174095(n))`
-/

namespace A174093.P5707288238463611757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A073736 n).toNat * A213714 (A174095 n).toNat

end

end A174093.P5707288238463611757

/-! ## A174093.P257353002294955059

`A144865(A068068(n+1)!)*A213714(A174095(n))`
-/

namespace A174093.P257353002294955059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144865 (Nat.factorial (A068068 (n + 1)).toNat) * A213714 (A174095 n).toNat

end

end A174093.P257353002294955059

/-! ## A174093.P12141352399890865654

`A057427(A030155(n+1))*A213714(A174095(n))`
-/

namespace A174093.P12141352399890865654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A030155 (n + 1)).toNat * A213714 (A174095 n).toNat

end

end A174093.P12141352399890865654

/-! ## A174093.P6744435250459706883

`A213714(A174095(∑[n])*A174095(n))`
-/

namespace A174093.P6744435250459706883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (A174095 (∑ j ∈ Finset.range (n + 1), f1 j) * A174095 n).toNat

end

end A174093.P6744435250459706883

/-! ## A174093.P1228912521509188005

`A213714(A174095(n)/A174095(∑[n]))`
-/

namespace A174093.P1228912521509188005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 (SequenceMachineLib.roundAway ((A174095 n : ℚ) / (A174095 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))).toNat

end

end A174093.P1228912521509188005

/-!
# A174095: Triangle T(n,k,q) = Sum_{j=0..10} q^j * floor(A174093(n,k)/2^j) with q=1, read by rows.

The programs for A174095, there is no canonical definition to state claims against.
-/

/-! ## A174095.P12836913580009970173

`A005187(A174093(n))%A000027(A002148(n))`
-/

namespace A174095.P12836913580009970173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005187 (A174093 n).toNat) (A000027 (A002148 n).toNat)

end

end A174095.P12836913580009970173

/-! ## A174095.P13110584899188004714

`A005187(A174093(n))+A000038(A304481(n+1))`
-/

namespace A174095.P13110584899188004714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A174093 n).toNat + A000038 (A304481 (n + 1)).toNat

end

end A174095.P13110584899188004714

/-! ## A174095.P9088528612549644925

`A007814(A031886(n+1))+A005187(A174093(n))`
-/

namespace A174095.P9088528612549644925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A031886 (n + 1)).toNat + A005187 (A174093 n).toNat

end

end A174095.P9088528612549644925

/-! ## A174095.P17769943195402135104

`A007814(A031887(n+1))+A005187(A174093(n))`
-/

namespace A174095.P17769943195402135104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A031887 (n + 1)).toNat + A005187 (A174093 n).toNat

end

end A174095.P17769943195402135104

/-! ## A174095.P9610517867006853304

`A135523(A176248(n+1))+A005187(A174093(n))`
-/

namespace A174095.P9610517867006853304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (A176248 (n + 1)).toNat + A005187 (A174093 n).toNat

end

end A174095.P9610517867006853304

/-! ## A174095.P13868758525153702231

`A005187(A174093(n))*A140670(A046732(n+1))`
-/

namespace A174095.P13868758525153702231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A174093 n).toNat * A140670 (A046732 (n + 1)).toNat

end

end A174095.P13868758525153702231

/-! ## A174095.P5558037227936978532

`A257531(A000082(n+1))+A005187(A174093(n))`
-/

namespace A174095.P5558037227936978532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257531 (A000082 (n + 1)).toNat + A005187 (A174093 n).toNat

end

end A174095.P5558037227936978532

/-! ## A174095.P12656640546574375086

`A257531(A102214(n))+A005187(A174093(n))`
-/

namespace A174095.P12656640546574375086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257531 (A102214 n).toNat + A005187 (A174093 n).toNat

end

end A174095.P12656640546574375086

/-! ## A174095.P1877926441788606260

`A005187(A174093(n)%A001551(n))`
-/

namespace A174095.P1877926441788606260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (Int.tmod (A174093 n) (A001551 n)).toNat

end

end A174095.P1877926441788606260

/-! ## A174095.P823037651122864786

`A009531(A214345(n))²*A005187(A174093(n))`
-/

namespace A174095.P823037651122864786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A214345 n).toNat ^ 2 * A005187 (A174093 n).toNat

end

end A174095.P823037651122864786

/-! ## A174095.P12949474797300031550

`A257531(A174093(n)²)+A005187(A174093(n))`
-/

namespace A174095.P12949474797300031550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257531 (A174093 n ^ 2).toNat + A005187 (A174093 n).toNat

end

end A174095.P12949474797300031550

/-!
# A174097: Triangle T(n,k,q) = Sum_{j=0..10} q^j * floor(A174093(n,k)/2^j) with q=3, read by rows.

The programs for A174097, the canonical program `A174097.P12628069750197507222` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174097 has offset 0).

The definition of A174097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174097.P6724533309255481635

`A240400(A174093(n)+1)`
-/

namespace A174097.P6724533309255481635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240400 (A174093 n + 1).toNat

end

end A174097.P6724533309255481635

namespace A174097

/-- `A240400(A174093(n)+1)` -/
def P6724533309255481635.Spec : Prop :=
  ∀ n, P6724533309255481635.a n = A174097 n

end A174097

/-! ## A174097.P12628069750197507222

`A240400(A030528(n+1)+A169803(n)%A000930(n)+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A174097

/-- `A240400(A030528(n+1)+A169803(n)%A000930(n)+1)` -/
def P12628069750197507222.Spec : Prop :=
  ∀ n, P12628069750197507222.a n = A174097 n

theorem P12628069750197507222.correct : P12628069750197507222.Spec := by
  intro n
  simp only [A174097]

end A174097

/-! ## A174097.P4814357787027424208

`A240400(A169803(n)+A030528(n+1)%A046682(n)+1)`
-/

namespace A174097.P4814357787027424208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240400 (A169803 n + Int.tmod (A030528 (n + 1)) (A046682 n) + 1).toNat

end

end A174097.P4814357787027424208

namespace A174097

/-- `A240400(A169803(n)+A030528(n+1)%A046682(n)+1)` -/
def P4814357787027424208.Spec : Prop :=
  ∀ n, P4814357787027424208.a n = A174097 n

end A174097

/-!
# A174098: Symmetrical triangle T(n, m) = floor(Eulerian(n+1, m)/2), read by rows.

The programs for A174098, the canonical program `A174098.P12561725270240646405` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174098 has offset 2).

The definition of A174098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2375 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174098.P12561725270240646405

`floor(A014449(n+1)/2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A174098

/-- `floor(A014449(n+1)/2)` -/
def P12561725270240646405.Spec : Prop :=
  ∀ n, P12561725270240646405.a n = A174098 (n + 2)

theorem P12561725270240646405.correct : P12561725270240646405.Spec := by
  intro n
  simp only [A174098, Nat.add_sub_cancel]

end A174098

/-! ## A174098.P11079925650079269014

`floor(A123125(lt[1, A122935(n)])/2)`
-/

namespace A174098.P11079925650079269014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A123125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2⌋

end

end A174098.P11079925650079269014

namespace A174098

/-- `floor(A123125(lt[1, A122935(n)])/2)` -/
def P11079925650079269014.Spec : Prop :=
  ∀ n, P11079925650079269014.a n = A174098 (n + 2)

end A174098

/-! ## A174098.P11177867274157793838

`floor(A008292(eq[0, A103452(n)]+1)/2)`
-/

namespace A174098.P11177867274157793838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 2⌋

end

end A174098.P11177867274157793838

namespace A174098

/-- `floor(A008292(eq[0, A103452(n)]+1)/2)` -/
def P11177867274157793838.Spec : Prop :=
  ∀ n, P11177867274157793838.a n = A174098 (n + 2)

end A174098

/-! ## A174098.P9726572894620780887

`floor(A008292(lt[1, A179454(n)])/2)`
-/

namespace A174098.P9726572894620780887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179454 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2⌋

end

end A174098.P9726572894620780887

namespace A174098

/-- `floor(A008292(lt[1, A179454(n)])/2)` -/
def P9726572894620780887.Spec : Prop :=
  ∀ n, P9726572894620780887.a n = A174098 (n + 2)

end A174098

/-! ## A174098.P4205155614449256476

`floor(sqrt(A014732(n+1))/2)`
-/

namespace A174098.P4205155614449256476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A014732 (n + 1) : ℝ) / 2⌋

end

end A174098.P4205155614449256476

namespace A174098

/-- `floor(sqrt(A014732(n+1))/2)` -/
def P4205155614449256476.Spec : Prop :=
  ∀ n, P4205155614449256476.a n = A174098 (n + 2)

end A174098

/-!
# A174099: Indices of primes of the form 2^t*3^u + 1 in the primes.

The programs for A174099, there is no canonical definition to state claims against.
-/

/-! ## A174099.P2444883371970427348

`A000720(A005109(n+1))`
-/

namespace A174099.P2444883371970427348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A005109 (n + 1)).toNat

end

end A174099.P2444883371970427348

/-! ## A174099.P9113544665826974572

`eq[1, A126805(n+1)]+1`
-/

namespace A174099.P9113544665826974572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A174099.P9113544665826974572

/-! ## A174099.P313431476374331669

`eq[1, A241194(n+1)]+1`
-/

namespace A174099.P313431476374331669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241194 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A174099.P313431476374331669

/-! ## A174099.P17096946319277404988

`lt[A241195(n+1), 4]+1`
-/

namespace A174099.P17096946319277404988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241195 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A174099.P17096946319277404988

/-! ## A174099.P2241290849558703659

`record[A061395(A055600(n+1))]`
-/

namespace A174099.P2241290849558703659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A055600 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174099.P2241290849558703659

