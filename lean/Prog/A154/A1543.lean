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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A154304: Primes of the form (1+2+...+m)/210 = A000217(m)/210.

The programs for A154304, there is no canonical definition to state claims against.
-/

/-! ## A154304.P14593400520994235568

`A129772(∑{d}[∏{p}[n+1, #], (n+1)/#])+1-and(2, n)`
-/

namespace A154304.P14593400520994235568
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129772 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ))).toNat + (1 - (Nat.land 2 n : ℤ))

end

end A154304.P14593400520994235568

/-!
# A154306: a(n) = (n+1)^3*(3+n)!/6.

The programs for A154306, the canonical program `A154306.P567988047409913397` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154306 has offset 0).

The definition of A154306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154306.P567988047409913397

`(n+1)^3*(3+n)!/6`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154306

/-- `(n+1)^3*(3+n)!/6` -/
def P567988047409913397.Spec : Prop :=
  ∀ n, P567988047409913397.a n = (A154306 n : ℚ)

end A154306

/-! ## A154306.P8474667789048789252

`(n+1)^3/3*∏[n+3]`
-/

namespace A154306.P8474667789048789252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℚ) / 3 * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A154306.P8474667789048789252

namespace A154306

/-- `(n+1)^3/3*∏[n+3]` -/
def P8474667789048789252.Spec : Prop :=
  ∀ n, P8474667789048789252.a n = (A154306 n : ℚ)

end A154306

/-! ## A154306.P12118731333140098252

`A152818(A000217(n+4)-4)`
-/

namespace A154306.P12118731333140098252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152818 (A000217 (n + 4) - 4).toNat

end

end A154306.P12118731333140098252

namespace A154306

/-- `A152818(A000217(n+4)-4)` -/
def P12118731333140098252.Spec : Prop :=
  ∀ n, P12118731333140098252.a n = A154306 n

end A154306

/-! ## A154306.P6726989662562905802

`A152818(A008805(2*(n+2))+n)`
-/

namespace A154306.P6726989662562905802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152818 (A008805 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A154306.P6726989662562905802

namespace A154306

/-- `A152818(A008805(2*(n+2))+n)` -/
def P6726989662562905802.Spec : Prop :=
  ∀ n, P6726989662562905802.a n = A154306 n

end A154306

/-! ## A154306.P16347339116662457834

`A001563(n+1)*A005990(n+2)/A000142(n)`
-/

namespace A154306.P16347339116662457834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001563 (n + 1) * A005990 (n + 2) : ℚ) / (A000142 n : ℚ)

end

end A154306.P16347339116662457834

namespace A154306

/-- `A001563(n+1)*A005990(n+2)/A000142(n)` -/
def P16347339116662457834.Spec : Prop :=
  ∀ n, P16347339116662457834.a n = (A154306 n : ℚ)

end A154306

/-!
# A154307: a(n) = (n+1)^4*(4+n)!/24.

The programs for A154307, the canonical program `A154307.P9891067317062005684` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154307 has offset 0).

The definition of A154307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154307.P9891067317062005684

`(n+1)^4*(4+n)!/24`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154307

/-- `(n+1)^4*(4+n)!/24` -/
def P9891067317062005684.Spec : Prop :=
  ∀ n, P9891067317062005684.a n = (A154307 n : ℚ)

end A154307

/-! ## A154307.P18259934438363506902

`∏[n+4]/4*(n+1)²²`
-/

namespace A154307.P18259934438363506902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4 * (((n + 1) ^ 2) ^ 2 : ℚ)

end

end A154307.P18259934438363506902

namespace A154307

/-- `∏[n+4]/4*(n+1)²²` -/
def P18259934438363506902.Spec : Prop :=
  ∀ n, P18259934438363506902.a n = (A154307 n : ℚ)

end A154307

/-! ## A154307.P1645110556808299464

`A152818(Δ[A055831(n+4)])`
-/

namespace A154307.P1645110556808299464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152818 (f1 (n + 1) - f1 n).toNat

end

end A154307.P1645110556808299464

namespace A154307

/-- `A152818(Δ[A055831(n+4)])` -/
def P1645110556808299464.Spec : Prop :=
  ∀ n, P1645110556808299464.a n = A154307 n

end A154307

/-! ## A154307.P8597261789122325453

`A152818(A000217(n+5)-5)`
-/

namespace A154307.P8597261789122325453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152818 (A000217 (n + 5) - 5).toNat

end

end A154307.P8597261789122325453

namespace A154307

/-- `A152818(A000217(n+5)-5)` -/
def P8597261789122325453.Spec : Prop :=
  ∀ n, P8597261789122325453.a n = A154307 n

end A154307

/-! ## A154307.P16177306525140881917

`A152818(eq[3, A332954(n)])`
-/

namespace A154307.P16177306525140881917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152818 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154307.P16177306525140881917

namespace A154307

/-- `A152818(eq[3, A332954(n)])` -/
def P16177306525140881917.Spec : Prop :=
  ∀ n, P16177306525140881917.a n = A154307 n

end A154307

/-!
# A154308: a(n) = (n+1)^5*(5+n)!/120.

The programs for A154308, the canonical program `A154308.P6338138672506942701` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154308 has offset 0).

The definition of A154308 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154308.P6338138672506942701

`A000142(n+1)*A000583(n+1)*A000389(n+5)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A154308

/-- `A000142(n+1)*A000583(n+1)*A000389(n+5)` -/
def P6338138672506942701.Spec : Prop :=
  ∀ n, P6338138672506942701.a n = A154308 n

theorem P6338138672506942701.correct : P6338138672506942701.Spec := by
  intro n
  simp only [A154308]

end A154308

/-! ## A154308.P5675515323545211789

`(n+1)^5*(5+n)!/120`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154308.P5675515323545211789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 5 * Nat.factorial (5 + n) : ℚ) / 120

end

end A154308.P5675515323545211789

namespace A154308

/-- `(n+1)^5*(5+n)!/120` -/
def P5675515323545211789.Spec : Prop :=
  ∀ n, P5675515323545211789.a n = (A154308 n : ℚ)

end A154308

/-! ## A154308.P3942188898655958295

`(n+1)!*C(n+5, 5)*(n+1)^4`
-/

namespace A154308.P3942188898655958295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) * Nat.choose (n + 5) 5 * (n + 1) ^ 4

end

end A154308.P3942188898655958295

namespace A154308

/-- `(n+1)!*C(n+5, 5)*(n+1)^4` -/
def P3942188898655958295.Spec : Prop :=
  ∀ n, (P3942188898655958295.a n : ℤ) = A154308 n

theorem P3942188898655958295.correct : P3942188898655958295.Spec := by
  intro n
  simp only [A154308, Nat.add_sub_cancel, A154308.P3942188898655958295.a, A154308.P6338138672506942701.a, A000142, A000142.P3272619076580183195.a, A000389, A000389.P15450220129395289428.a, A000583, A000583.P14547500281748394449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A154308

/-! ## A154308.P4761619266019127497

`(n+1)^5*∏[2*2%(n+2)+n+1]`
-/

namespace A154308.P4761619266019127497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 % (n + 2)) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 5 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A154308.P4761619266019127497

namespace A154308

/-- `(n+1)^5*∏[2*2%(n+2)+n+1]` -/
def P4761619266019127497.Spec : Prop :=
  ∀ n, (P4761619266019127497.a n : ℤ) = A154308 n

end A154308

/-! ## A154308.P1611802769205104813

`(n+1)^5*A001725(n+5)`
-/

namespace A154308.P1611802769205104813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 5 : ℤ) * A001725 (n + 5)

end

end A154308.P1611802769205104813

namespace A154308

/-- `(n+1)^5*A001725(n+5)` -/
def P1611802769205104813.Spec : Prop :=
  ∀ n, P1611802769205104813.a n = A154308 n

end A154308

/-! ## A154308.P3470455900099618311

`A000583(n+1)*A062199(n)`
-/

namespace A154308.P3470455900099618311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (n + 1) * A062199 n

end

end A154308.P3470455900099618311

namespace A154308

/-- `A000583(n+1)*A062199(n)` -/
def P3470455900099618311.Spec : Prop :=
  ∀ n, P3470455900099618311.a n = A154308 n

theorem P3470455900099618311.correct : P3470455900099618311.Spec := by
  intro n
  simp only [A154308, Nat.add_sub_cancel, A154308.P3470455900099618311.a, A154308.P6338138672506942701.a, A000142, A000142.P3272619076580183195.a, A000389, A000389.P15450220129395289428.a, A000583, A000583.P14547500281748394449.a, A062199, A062199.P17189199288028450226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A154308

/-!
# A154311: Numbers n such that sum of digits of n > sum of digits of prime(n).

The programs for A154311, the canonical program `A154311.P8823212996274224899` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154311 has offset 1).

The definition of A154311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154311.P14208025730380461942

`A000720(A090433(n+1))`
-/

namespace A154311.P14208025730380461942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A090433 (n + 1)).toNat

end

end A154311.P14208025730380461942

namespace A154311

/-- `A000720(A090433(n+1))` -/
def P14208025730380461942.Spec : Prop :=
  ∀ n, P14208025730380461942.a n = A154311 (n + 1)

end A154311

/-! ## A154311.P8823212996274224899

`lt[A007605(n+1), A007953(n+1)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A154311

/-- `lt[A007605(n+1), A007953(n+1)]+1` -/
def P8823212996274224899.Spec : Prop :=
  ∀ n, (P8823212996274224899.a n : ℤ) = A154311 (n + 1)

theorem P8823212996274224899.correct : P8823212996274224899.Spec := by
  intro n
  simp only [A154311, Nat.add_sub_cancel]

end A154311

/-! ## A154311.P13798951924073033431

`lt[A007605(A028310(n)), A007953(n)]`
-/

namespace A154311.P13798951924073033431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A154311.P13798951924073033431

namespace A154311

/-- `lt[A007605(A028310(n)), A007953(n)]` -/
def P13798951924073033431.Spec : Prop :=
  ∀ n, (P13798951924073033431.a n : ℤ) = A154311 (n + 1)

end A154311

/-! ## A154311.P17969355186545357700

`lt[A007605(A028310(n))+n, A062028(n)]`
-/

namespace A154311.P17969355186545357700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (A028310 n).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A154311.P17969355186545357700

namespace A154311

/-- `lt[A007605(A028310(n))+n, A062028(n)]` -/
def P17969355186545357700.Spec : Prop :=
  ∀ n, (P17969355186545357700.a n : ℤ) = A154311 (n + 1)

end A154311

/-! ## A154311.P7815018395897449180

`A065770(p?[A090433(n+1)])`
-/

namespace A154311.P7815018395897449180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154311.P7815018395897449180

namespace A154311

/-- `A065770(p?[A090433(n+1)])` -/
def P7815018395897449180.Spec : Prop :=
  ∀ n, P7815018395897449180.a n = A154311 (n + 1)

end A154311

/-! ## A154311.P4658840510143564708

`A026233(p?[A090433(n+1)])`
-/

namespace A154311.P4658840510143564708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154311.P4658840510143564708

namespace A154311

/-- `A026233(p?[A090433(n+1)])` -/
def P4658840510143564708.Spec : Prop :=
  ∀ n, P4658840510143564708.a n = A154311 (n + 1)

end A154311

/-! ## A154311.P6870473382111619223

`A049084(p?[A090433(n+1)])`
-/

namespace A154311.P6870473382111619223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154311.P6870473382111619223

namespace A154311

/-- `A049084(p?[A090433(n+1)])` -/
def P6870473382111619223.Spec : Prop :=
  ∀ n, P6870473382111619223.a n = A154311 (n + 1)

end A154311

/-! ## A154311.P3334807568749481260

`A055396(p?[A090433(n+1)])`
-/

namespace A154311.P3334807568749481260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154311.P3334807568749481260

namespace A154311

/-- `A055396(p?[A090433(n+1)])` -/
def P3334807568749481260.Spec : Prop :=
  ∀ n, P3334807568749481260.a n = A154311 (n + 1)

end A154311

/-! ## A154311.P16346576197906965027

`A003963(or(1, A090433(n+1)))`
-/

namespace A154311.P16346576197906965027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lor 1 (A090433 (n + 1))).toNat

end

end A154311.P16346576197906965027

namespace A154311

/-- `A003963(or(1, A090433(n+1)))` -/
def P16346576197906965027.Spec : Prop :=
  ∀ n, P16346576197906965027.a n = A154311 (n + 1)

end A154311

/-! ## A154311.P5135837646283410036

`A049084(or(1, A090433(n+1)))`
-/

namespace A154311.P5135837646283410036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.lor 1 (A090433 (n + 1))).toNat

end

end A154311.P5135837646283410036

namespace A154311

/-- `A049084(or(1, A090433(n+1)))` -/
def P5135837646283410036.Spec : Prop :=
  ∀ n, P5135837646283410036.a n = A154311 (n + 1)

end A154311

/-! ## A154311.P5846617610335796579

`A055396(or(1, A090433(n+1)))`
-/

namespace A154311.P5846617610335796579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.lor 1 (A090433 (n + 1))).toNat

end

end A154311.P5846617610335796579

namespace A154311

/-- `A055396(or(1, A090433(n+1)))` -/
def P5846617610335796579.Spec : Prop :=
  ∀ n, P5846617610335796579.a n = A154311 (n + 1)

end A154311

/-! ## A154311.P5225015422991105317

`∑{d}[A090433(n+1), A049084(#)]`
-/

namespace A154311.P5225015422991105317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A154311.P5225015422991105317

namespace A154311

/-- `∑{d}[A090433(n+1), A049084(#)]` -/
def P5225015422991105317.Spec : Prop :=
  ∀ n, P5225015422991105317.a n = A154311 (n + 1)

end A154311

/-! ## A154311.P15550412337359194359

`∑{d}[A090433(n+1), A055396(#)]`
-/

namespace A154311.P15550412337359194359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055396 d

end

end A154311.P15550412337359194359

namespace A154311

/-- `∑{d}[A090433(n+1), A055396(#)]` -/
def P15550412337359194359.Spec : Prop :=
  ∀ n, P15550412337359194359.a n = A154311 (n + 1)

end A154311

/-! ## A154311.P9161236583736286292

`A049084(∏{d}[A090433(n+1), #])`
-/

namespace A154311.P9161236583736286292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A154311.P9161236583736286292

namespace A154311

/-- `A049084(∏{d}[A090433(n+1), #])` -/
def P9161236583736286292.Spec : Prop :=
  ∀ n, P9161236583736286292.a n = A154311 (n + 1)

end A154311

/-! ## A154311.P3307081240383335075

`A049084(∑{p}[A090433(n+1), #])`
-/

namespace A154311.P3307081240383335075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A154311.P3307081240383335075

namespace A154311

/-- `A049084(∑{p}[A090433(n+1), #])` -/
def P3307081240383335075.Spec : Prop :=
  ∀ n, P3307081240383335075.a n = A154311 (n + 1)

end A154311

/-! ## A154311.P9614195666447361850

`A049084(∏{p}[A090433(n+1), #])`
-/

namespace A154311.P9614195666447361850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A154311.P9614195666447361850

namespace A154311

/-- `A049084(∏{p}[A090433(n+1), #])` -/
def P9614195666447361850.Spec : Prop :=
  ∀ n, P9614195666447361850.a n = A154311 (n + 1)

end A154311

/-! ## A154311.P17759128567434317668

`lt[A329562(A008578(n+1)), A329562(n)]`
-/

namespace A154311.P17759128567434317668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A154311.P17759128567434317668

namespace A154311

/-- `lt[A329562(A008578(n+1)), A329562(n)]` -/
def P17759128567434317668.Spec : Prop :=
  ∀ n, (P17759128567434317668.a n : ℤ) = A154311 (n + 1)

end A154311

/-! ## A154311.P15633839070569820217

`A003963(A090433(n+1)%A044663(n+1))`
-/

namespace A154311.P15633839070569820217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.tmod (A090433 (n + 1)) (A044663 (n + 1))).toNat

end

end A154311.P15633839070569820217

namespace A154311

/-- `A003963(A090433(n+1)%A044663(n+1))` -/
def P15633839070569820217.Spec : Prop :=
  ∀ n, P15633839070569820217.a n = A154311 (n + 1)

end A154311

/-! ## A154311.P12268965605474368210

`A055396(A090433(n+1))%A001748(n+1)`
-/

namespace A154311.P12268965605474368210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055396 (A090433 (n + 1)).toNat) (A001748 (n + 1))

end

end A154311.P12268965605474368210

namespace A154311

/-- `A055396(A090433(n+1))%A001748(n+1)` -/
def P12268965605474368210.Spec : Prop :=
  ∀ n, P12268965605474368210.a n = A154311 (n + 1)

end A154311

/-! ## A154311.P15300251562548008377

`A003963(A090433(n+1))%A201255(n+1)`
-/

namespace A154311.P15300251562548008377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003963 (A090433 (n + 1)).toNat) (A201255 (n + 1))

end

end A154311.P15300251562548008377

namespace A154311

/-- `A003963(A090433(n+1))%A201255(n+1)` -/
def P15300251562548008377.Spec : Prop :=
  ∀ n, P15300251562548008377.a n = A154311 (n + 1)

end A154311

/-!
# A154312: Triangle T(n,k), 0<=k<=n, read by rows, given by [0,1/2,-1/2,0,0,0,0,0,0,0,...] DELTA [2,-1/2,-1/2,2,0,0,0,0,0,0,0 ...] where DELTA is the operator defined in A084938 .

The programs for A154312, the canonical program `A154312.P18401052688145520114` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154312 has offset 0).

The definition of A154312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154312.P18401052688145520114

`A130123(n)+Δ[A006949(A130123(n))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A154312

/-- `A130123(n)+Δ[A006949(A130123(n))]` -/
def P18401052688145520114.Spec : Prop :=
  ∀ n, P18401052688145520114.a n = A154312 n

theorem P18401052688145520114.correct : P18401052688145520114.Spec := by
  intro n
  simp only [A154312]

end A154312

/-! ## A154312.P9506890430648733419

`Δ[A137688(n)+A065033(A130123(n))]`
-/

namespace A154312.P9506890430648733419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n + A065033 (A130123 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154312.P9506890430648733419

namespace A154312

/-- `Δ[A137688(n)+A065033(A130123(n))]` -/
def P9506890430648733419.Spec : Prop :=
  ∀ n, P9506890430648733419.a n = A154312 n

end A154312

/-! ## A154312.P7187359476404399593

`Δ[A060973(A047304(A018900(n+1)))]`
-/

namespace A154312.P7187359476404399593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A047304 (A018900 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154312.P7187359476404399593

namespace A154312

/-- `Δ[A060973(A047304(A018900(n+1)))]` -/
def P7187359476404399593.Spec : Prop :=
  ∀ n, P7187359476404399593.a n = A154312 n

end A154312

/-! ## A154312.P5394084697698543687

`Δ[A292264(record[A200322(n)])]`
-/

namespace A154312.P5394084697698543687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200322 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292264 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154312.P5394084697698543687

namespace A154312

/-- `Δ[A292264(record[A200322(n)])]` -/
def P5394084697698543687.Spec : Prop :=
  ∀ n, P5394084697698543687.a n = A154312 n

end A154312

/-! ## A154312.P7425725168956596936

`A318371(A145518(n+1))`
-/

namespace A154312.P7425725168956596936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318371 (A145518 (n + 1)).toNat

end

end A154312.P7425725168956596936

namespace A154312

/-- `A318371(A145518(n+1))` -/
def P7425725168956596936.Spec : Prop :=
  ∀ n, P7425725168956596936.a n = A154312 n

end A154312

/-!
# A154313: Numbers n such that abs(A007605(n) - A007953(n)) < 2.

The programs for A154313, the canonical program `A154313.P14837244992857068618` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154313 has offset 1).

The definition of A154313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154313.P14837244992857068618

`record[(n+1)/A048896(A090431(n+1)²)²]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A154313

/-- `record[(n+1)/A048896(A090431(n+1)²)²]` -/
def P14837244992857068618.Spec : Prop :=
  ∀ n, P14837244992857068618.a n = (A154313 (n + 1) : ℚ)

end A154313

/-! ## A154313.P15262414918628251661

`A000720(A154316(n+1))`
-/

namespace A154313.P15262414918628251661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A154316 (n + 1)).toNat

end

end A154313.P15262414918628251661

namespace A154313

/-- `A000720(A154316(n+1))` -/
def P15262414918628251661.Spec : Prop :=
  ∀ n, P15262414918628251661.a n = A154313 (n + 1)

end A154313

/-! ## A154313.P10876494476239408535

`A003963(p?[A154316(n+1)])`
-/

namespace A154313.P10876494476239408535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154313.P10876494476239408535

namespace A154313

/-- `A003963(p?[A154316(n+1)])` -/
def P10876494476239408535.Spec : Prop :=
  ∀ n, P10876494476239408535.a n = A154313 (n + 1)

end A154313

/-! ## A154313.P1390042438893991616

`A026233(p?[A154316(n+1)])`
-/

namespace A154313.P1390042438893991616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154313.P1390042438893991616

namespace A154313

/-- `A026233(p?[A154316(n+1)])` -/
def P1390042438893991616.Spec : Prop :=
  ∀ n, P1390042438893991616.a n = A154313 (n + 1)

end A154313

/-! ## A154313.P6128145736797844309

`A049084(p?[A154316(n+1)])`
-/

namespace A154313.P6128145736797844309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154313.P6128145736797844309

namespace A154313

/-- `A049084(p?[A154316(n+1)])` -/
def P6128145736797844309.Spec : Prop :=
  ∀ n, P6128145736797844309.a n = A154313 (n + 1)

end A154313

/-!
# A154314: Numbers with not more than two distinct digits in ternary representation.

The programs for A154314, the canonical program `A154314.P5025358904430600657` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154314 has offset 1).

The definition of A154314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154314.P11851895217010024400

`∪[A031948(n+1), A048328(n)]`
-/

namespace A154314.P11851895217010024400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048328 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A154314.P11851895217010024400

namespace A154314

/-- `∪[A031948(n+1), A048328(n)]` -/
def P11851895217010024400.Spec : Prop :=
  ∀ n, (P11851895217010024400.a n : ℤ) = A154314 (n + 1)

end A154314

/-! ## A154314.P5025358904430600657

`∪[A023745(n+1), A031948(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A154314

/-- `∪[A023745(n+1), A031948(n+1)]` -/
def P5025358904430600657.Spec : Prop :=
  ∀ n, (P5025358904430600657.a n : ℤ) = A154314 (n + 1)

theorem P5025358904430600657.correct : P5025358904430600657.Spec := by
  intro n
  simp only [A154314, Nat.add_sub_cancel]

end A154314

/-! ## A154314.P3152008231985519533

`comp[A031944(n+1)]`
-/

namespace A154314.P3152008231985519533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A154314.P3152008231985519533

namespace A154314

/-- `comp[A031944(n+1)]` -/
def P3152008231985519533.Spec : Prop :=
  ∀ n, (P3152008231985519533.a n : ℤ) = A154314 (n + 1)

end A154314

/-! ## A154314.P15588150356431006613

`lt[A212193(n), 3]`
-/

namespace A154314.P15588150356431006613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212193 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A154314.P15588150356431006613

namespace A154314

/-- `lt[A212193(n), 3]` -/
def P15588150356431006613.Spec : Prop :=
  ∀ n, (P15588150356431006613.a n : ℤ) = A154314 (n + 1)

end A154314

/-! ## A154314.P15639903872589813189

`eq[0, A300222(A373712(n))]`
-/

namespace A154314.P15639903872589813189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (A373712 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154314.P15639903872589813189

namespace A154314

/-- `eq[0, A300222(A373712(n))]` -/
def P15639903872589813189.Spec : Prop :=
  ∀ n, (P15639903872589813189.a n : ℤ) = A154314 (n + 1)

end A154314

/-! ## A154314.P7086268769752221299

`lt[A300222(A373712(3*n+2)), 3]`
-/

namespace A154314.P7086268769752221299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (A373712 (3 * n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A154314.P7086268769752221299

namespace A154314

/-- `lt[A300222(A373712(3*n+2)), 3]` -/
def P7086268769752221299.Spec : Prop :=
  ∀ n, (P7086268769752221299.a n : ℤ) = A154314 (n + 1)

end A154314

/-! ## A154314.P4104700692200433294

`lt[A067898(A007089(n)), 3]`
-/

namespace A154314.P4104700692200433294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (A007089 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A154314.P4104700692200433294

namespace A154314

/-- `lt[A067898(A007089(n)), 3]` -/
def P4104700692200433294.Spec : Prop :=
  ∀ n, (P4104700692200433294.a n : ℤ) = A154314 (n + 1)

end A154314

/-! ## A154314.P17412128347562225725

`lt[A227362(A007089(n)), A005279(n+1)]`
-/

namespace A154314.P17412128347562225725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A007089 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A154314.P17412128347562225725

namespace A154314

/-- `lt[A227362(A007089(n)), A005279(n+1)]` -/
def P17412128347562225725.Spec : Prop :=
  ∀ n, (P17412128347562225725.a n : ℤ) = A154314 (n + 1)

end A154314

/-! ## A154314.P8946477066150894106

`lt[A227362(A007089(n)), A031962(n+1)]`
-/

namespace A154314.P8946477066150894106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (A007089 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031962 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A154314.P8946477066150894106

namespace A154314

/-- `lt[A227362(A007089(n)), A031962(n+1)]` -/
def P8946477066150894106.Spec : Prop :=
  ∀ n, (P8946477066150894106.a n : ℤ) = A154314 (n + 1)

end A154314

/-!
# A154315: Numbers k such that the number of prime digits in prime(k) equals the number of even digits in prime(k).

The programs for A154315, there is no canonical definition to state claims against.
-/

/-! ## A154315.P17779891278009489722

`A000720(A154765(n+1))`
-/

namespace A154315.P17779891278009489722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A154765 (n + 1)).toNat

end

end A154315.P17779891278009489722

/-! ## A154315.P5370016868518602918

`A003963(p?[A154765(n+1)])`
-/

namespace A154315.P5370016868518602918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154315.P5370016868518602918

/-! ## A154315.P7228932034307620303

`A026233(p?[A154765(n+1)])`
-/

namespace A154315.P7228932034307620303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154315.P7228932034307620303

/-! ## A154315.P2311427139924818744

`A049084(p?[A154765(n+1)])`
-/

namespace A154315.P2311427139924818744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154315.P2311427139924818744

/-! ## A154315.P1320125608194785900

`A055396(p?[A154765(n+1)])`
-/

namespace A154315.P1320125608194785900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154315.P1320125608194785900

/-! ## A154315.P13278803874951957141

`A056239(p?[A154765(n+1)])`
-/

namespace A154315.P13278803874951957141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154315.P13278803874951957141

/-! ## A154315.P13198352181427602202

`A061395(p?[A154765(n+1)])`
-/

namespace A154315.P13198352181427602202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154315.P13198352181427602202

/-! ## A154315.P15690060380867329213

`A082058(p?[A154765(n+1)])`
-/

namespace A154315.P15690060380867329213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082058 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154315.P15690060380867329213

/-! ## A154315.P979936974170247100

`A036234(A154765(n+1)-1)`
-/

namespace A154315.P979936974170247100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A154765 (n + 1) - 1).toNat

end

end A154315.P979936974170247100

/-! ## A154315.P4321272629384609007

`A003963(2*A154765(n+1))`
-/

namespace A154315.P4321272629384609007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A154765 (n + 1)).toNat

end

end A154315.P4321272629384609007

/-!
# A154316: Primes prime(k) such that abs(sum of digits of prime(k) - sum of digits of k) < 2.

The programs for A154316, there is no canonical definition to state claims against.
-/

/-! ## A154316.P14714946604489406770

`A000040(A154313(n+1))`
-/

namespace A154316.P14714946604489406770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A154313 (n + 1)).toNat

end

end A154316.P14714946604489406770

/-! ## A154316.P14130983709706434078

`A008578(A154313(n+1)+1)`
-/

namespace A154316.P14130983709706434078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A154313 (n + 1) + 1).toNat

end

end A154316.P14130983709706434078

/-! ## A154316.P10596073354096402385

`A182986(A154313(n+1)+1)`
-/

namespace A154316.P10596073354096402385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A154313 (n + 1) + 1).toNat

end

end A154316.P10596073354096402385

/-! ## A154316.P5025460017105442769

`A158611(A154313(n+1)+2)`
-/

namespace A154316.P5025460017105442769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A154313 (n + 1) + 2).toNat

end

end A154316.P5025460017105442769

/-! ## A154316.P4160387076954753603

`A073846(2*A154313(n+1))`
-/

namespace A154316.P4160387076954753603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A154313 (n + 1)).toNat

end

end A154316.P4160387076954753603

/-!
# A154318: Numbers k such that nonprime(prime(k))+1 is prime.

The programs for A154318, there is no canonical definition to state claims against.
-/

/-! ## A154318.P7362828248124538565

`A000720(A234850(n+2))`
-/

namespace A154318.P7362828248124538565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A234850 (n + 2)).toNat

end

end A154318.P7362828248124538565

/-! ## A154318.P17827165758370570959

`record[A049084(A014692(n+1))]`
-/

namespace A154318.P17827165758370570959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A014692 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154318.P17827165758370570959

/-! ## A154318.P17411660510635893001

`record[A289508(A014692(n+2))]`
-/

namespace A154318.P17411660510635893001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A014692 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154318.P17411660510635893001

/-! ## A154318.P9327780636864115148

`A000720(p?[A014692(n+2)])`
-/

namespace A154318.P9327780636864115148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154318.P9327780636864115148

/-! ## A154318.P3399316291828800247

`record[A055396(A028815(n)-n)]`
-/

namespace A154318.P3399316291828800247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A028815 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154318.P3399316291828800247

/-! ## A154318.P15306382366118178072

`record[A049084(A000040(n+1)-n)]`
-/

namespace A154318.P15306382366118178072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A000040 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154318.P15306382366118178072

/-! ## A154318.P15509042400025821612

`record[A055396(A000040(n+1)-n)]`
-/

namespace A154318.P15509042400025821612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A000040 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154318.P15509042400025821612

/-! ## A154318.P8214818234506551536

`record[A241919(A000040(n+1)-n)]`
-/

namespace A154318.P8214818234506551536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241919 (A000040 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154318.P8214818234506551536

/-! ## A154318.P849742713281024150

`record[A243056(A000040(n+1)-n)]`
-/

namespace A154318.P849742713281024150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (A000040 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154318.P849742713281024150

/-! ## A154318.P14647558634579871563

`record[A263111(A000040(n+1)-n)]`
-/

namespace A154318.P14647558634579871563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263111 (A000040 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154318.P14647558634579871563

/-!
# A154319: Primes p such that p^2 + 2*p - 4 is also prime.

The programs for A154319, there is no canonical definition to state claims against.
-/

/-! ## A154319.P15086803388568549324

`p?[A028876(n+1)-1]`
-/

namespace A154319.P15086803388568549324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028876 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154319.P15086803388568549324

/-! ## A154319.P10398289251556077439

`p?[floor(sqrt(A028877(n+1)))]`
-/

namespace A154319.P10398289251556077439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A028877 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154319.P10398289251556077439

/-! ## A154319.P16579785017780494377

`p?[2*A352804(n+1)-1]`
-/

namespace A154319.P16579785017780494377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A352804 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154319.P16579785017780494377

/-! ## A154319.P15780032714887943378

`record[A006530(A028876(n+1)-1)]`
-/

namespace A154319.P15780032714887943378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028876 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154319.P15780032714887943378

/-! ## A154319.P4394285344302938995

`record[A020639(A028876(n+1)-1)]`
-/

namespace A154319.P4394285344302938995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A028876 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154319.P4394285344302938995

/-! ## A154319.P6544676673038400888

`p?[A014681(A028876(n+1))]`
-/

namespace A154319.P6544676673038400888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A028876 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154319.P6544676673038400888

/-! ## A154319.P17308512963402889710

`record[A014963(A028876(n+1)-1)]`
-/

namespace A154319.P17308512963402889710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A028876 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154319.P17308512963402889710

/-!
# A154320: Primes p such that p^2 + 8*p - 4 is also prime.

The programs for A154320, there is no canonical definition to state claims against.
-/

/-! ## A154320.P9096105123304049195

`p?[(n+1)*A001222(A134594(n))]`
-/

namespace A154320.P9096105123304049195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A134594 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154320.P9096105123304049195

/-! ## A154320.P10588344726215363255

`p?[A001222(A134594(n))*A004442(n)]`
-/

namespace A154320.P10588344726215363255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A134594 n).toNat * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154320.P10588344726215363255

/-! ## A154320.P7730201089172793900

`p?[A001222(A134594(n))*A109613(n)]`
-/

namespace A154320.P7730201089172793900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A134594 n).toNat * A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154320.P7730201089172793900

/-! ## A154320.P8533075481819964461

`p?[A001222(A134594(n))*A052938(2*n)]`
-/

namespace A154320.P8533075481819964461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A134594 n).toNat * A052938 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154320.P8533075481819964461

/-! ## A154320.P15204978168288015218

`p?[A125746(n+1)%A014963(A134594(n))]`
-/

namespace A154320.P15204978168288015218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125746 (n + 1)) (A014963 (A134594 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154320.P15204978168288015218

/-!
# A154321: Primes p such that p, p^2 + 2p - 4 and p^2 + 8p - 4 are prime.

The programs for A154321, there is no canonical definition to state claims against.
-/

/-! ## A154321.P9526420275128954691

`∩[A154319(n+1), A154320(n+1)]`
-/

namespace A154321.P9526420275128954691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154321.P9526420275128954691

/-! ## A154321.P923708589169627480

`∩[A028876(n+1)-1, A154320(n+1)]`
-/

namespace A154321.P923708589169627480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028876 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154321.P923708589169627480

/-! ## A154321.P11129347911842603289

`∩[p?[2*A352804(n+1)-1], A154320(n+1)]`
-/

namespace A154321.P11129347911842603289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A352804 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A154321.P11129347911842603289

/-! ## A154321.P525920835553461663

`∩[A014681(A028876(n+1)), A154320(n+1)]`
-/

namespace A154321.P525920835553461663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A028876 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154321.P525920835553461663

/-!
# A154322: a(n) = 1 + n + binomial(n+3,5).

The programs for A154322, the canonical program `A154322.P6081290869120484246` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154322 has offset 0).

The definition of A154322 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+n+C(n+3, 5)` (program `A154322.P6081290869120484246`, by `A154322.P6081290869120484246.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154322.P6081290869120484246

`1+n+C(n+3, 5)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154322

/-- `1+n+C(n+3, 5)` -/
def P6081290869120484246.Spec : Prop :=
  ∀ n, (P6081290869120484246.a n : ℤ) = A154322 n

theorem P6081290869120484246.correct : P6081290869120484246.Spec := by
  intro n
  simp only [A154322]

end A154322

/-! ## A154322.P556576476112427284

`(n+1)*(n^4+4*n^3+n²-6*n+120)/120`
-/

namespace A154322.P556576476112427284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((n ^ 4 + 4 * n ^ 3 + n ^ 2 : ℤ) - (6 * n : ℤ) + 120) : ℚ) / 120

end

end A154322.P556576476112427284

namespace A154322

/-- `(n+1)*(n^4+4*n^3+n²-6*n+120)/120` -/
def P556576476112427284.Spec : Prop :=
  ∀ n, P556576476112427284.a n = (A154322 n : ℚ)

theorem P556576476112427284.correct : P556576476112427284.Spec := by
  intro n
  simp only [A154322, Nat.add_sub_cancel, A154322.P556576476112427284.a, A154322.P6081290869120484246.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A154322

/-! ## A154322.P4137596745698970546

`∑[C(n+2, 4)+1]`
-/

namespace A154322.P4137596745698970546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 4 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154322.P4137596745698970546

namespace A154322

/-- `∑[C(n+2, 4)+1]` -/
def P4137596745698970546.Spec : Prop :=
  ∀ n, (P4137596745698970546.a n : ℤ) = A154322 n

end A154322

/-! ## A154322.P2239920724995521630

`∑[a(n-1)-∑[n-∑[n]]]` with `a(0)=1`
-/

namespace A154322.P2239920724995521630
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154322.P2239920724995521630

namespace A154322

/-- `∑[a(n-1)-∑[n-∑[n]]]` -/
def P2239920724995521630.Spec : Prop :=
  ∀ n, P2239920724995521630.a n = A154322 n

end A154322

/-! ## A154322.P10791192285263646465

`∑[A101338(n)-n]`
-/

namespace A154322.P10791192285263646465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101338 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154322.P10791192285263646465

namespace A154322

/-- `∑[A101338(n)-n]` -/
def P10791192285263646465.Spec : Prop :=
  ∀ n, P10791192285263646465.a n = A154322 n

end A154322

/-! ## A154322.P16639434264928893863

`A027928(n+3)-∑[∑[n]]`
-/

namespace A154322.P16639434264928893863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027928 (n + 3) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A154322.P16639434264928893863

namespace A154322

/-- `A027928(n+3)-∑[∑[n]]` -/
def P16639434264928893863.Spec : Prop :=
  ∀ n, P16639434264928893863.a n = A154322 n

end A154322

/-! ## A154322.P10621760562767634904

`A161701(n)+A002415(n)`
-/

namespace A154322.P10621760562767634904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161701 n + A002415 n

end

end A154322.P10621760562767634904

namespace A154322

/-- `A161701(n)+A002415(n)` -/
def P10621760562767634904.Spec : Prop :=
  ∀ n, P10621760562767634904.a n = A154322 n

end A154322

/-! ## A154322.P536545450962522595

`A145127(n)-∑[A000292(n)]`
-/

namespace A154322.P536545450962522595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145127 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154322.P536545450962522595

namespace A154322

/-- `A145127(n)-∑[A000292(n)]` -/
def P536545450962522595.Spec : Prop :=
  ∀ n, P536545450962522595.a n = A154322 n

end A154322

/-! ## A154322.P18378164546428807075

`A059173(n+1)+A006261(n)-A014206(n)`
-/

namespace A154322.P18378164546428807075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059173 (n + 1) + (A006261 n - A014206 n)

end

end A154322.P18378164546428807075

namespace A154322

/-- `A059173(n+1)+A006261(n)-A014206(n)` -/
def P18378164546428807075.Spec : Prop :=
  ∀ n, P18378164546428807075.a n = A154322 n

end A154322

/-! ## A154322.P11557551731447352821

`A116699(n+1)+A179257(n)-A105163(n+1)`
-/

namespace A154322.P11557551731447352821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116699 (n + 1) + (A179257 n - A105163 (n + 1))

end

end A154322.P11557551731447352821

namespace A154322

/-- `A116699(n+1)+A179257(n)-A105163(n+1)` -/
def P11557551731447352821.Spec : Prop :=
  ∀ n, P11557551731447352821.a n = A154322 n

end A154322

/-! ## A154322.P3016066021059472136

`A161701(n+2)-2`
-/

namespace A154322.P3016066021059472136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161701 (n + 2) - 2

end

end A154322.P3016066021059472136

namespace A154322

/-- `A161701(n+2)-2` -/
def P3016066021059472136.Spec : Prop :=
  ∀ n, P3016066021059472136.a n = A154322 n

end A154322

/-! ## A154322.P1176990831488152704

`A000332(n+1)+A057703(n+1)-A000217(n)`
-/

namespace A154322.P1176990831488152704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) + (A057703 (n + 1) - A000217 n)

end

end A154322.P1176990831488152704

namespace A154322

/-- `A000332(n+1)+A057703(n+1)-A000217(n)` -/
def P1176990831488152704.Spec : Prop :=
  ∀ n, P1176990831488152704.a n = A154322 n

end A154322

/-! ## A154322.P9072957425025479982

`A101338(n)+A000389(n+2)`
-/

namespace A154322.P9072957425025479982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101338 n + A000389 (n + 2)

end

end A154322.P9072957425025479982

namespace A154322

/-- `A101338(n)+A000389(n+2)` -/
def P9072957425025479982.Spec : Prop :=
  ∀ n, P9072957425025479982.a n = A154322 n

end A154322

/-! ## A154322.P14836736305744031099

`A257890(n+1)-A144335(n+3)`
-/

namespace A154322.P14836736305744031099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257890 (n + 1) - A144335 (n + 3)

end

end A154322.P14836736305744031099

namespace A154322

/-- `A257890(n+1)-A144335(n+3)` -/
def P14836736305744031099.Spec : Prop :=
  ∀ n, P14836736305744031099.a n = A154322 n

end A154322

/-! ## A154322.P3315377830985414038

`n+1+A000389(n+3)`
-/

namespace A154322.P3315377830985414038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000389 (n + 3)

end

end A154322.P3315377830985414038

namespace A154322

/-- `n+1+A000389(n+3)` -/
def P3315377830985414038.Spec : Prop :=
  ∀ n, P3315377830985414038.a n = A154322 n

theorem P3315377830985414038.correct : P3315377830985414038.Spec := by
  intro n
  simp only [A154322, Nat.add_sub_cancel, A154322.P3315377830985414038.a, A154322.P6081290869120484246.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A154322

/-!
# A154323: Central coefficients of number triangle A113582.

The programs for A154323, the canonical program `A154323.P11433666102161681324` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154323 has offset 0).

The definition of A154323 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154323.P17344644594381491414

`1+C(n+1, 2)²`
-/

namespace A154323.P17344644594381491414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + Nat.choose (n + 1) 2 ^ 2

end

end A154323.P17344644594381491414

namespace A154323

/-- `1+C(n+1, 2)²` -/
def P17344644594381491414.Spec : Prop :=
  ∀ n, (P17344644594381491414.a n : ℤ) = A154323 n

end A154323

/-! ## A154323.P11433666102161681324

`a(n-1)+n^3` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154323

/-- `a(n-1)+n^3` -/
def P11433666102161681324.Spec : Prop :=
  ∀ n, (P11433666102161681324.a n : ℤ) = A154323 n

theorem P11433666102161681324.correct : P11433666102161681324.Spec := by
  intro n
  simp only [A154323]

end A154323

/-! ## A154323.P10461617462445587048

`(n^4+2*n^3+n²+4)/4`
-/

namespace A154323.P10461617462445587048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 4 + 2 * n ^ 3 + n ^ 2 + 4 : ℚ) / 4

end

end A154323.P10461617462445587048

namespace A154323

/-- `(n^4+2*n^3+n²+4)/4` -/
def P10461617462445587048.Spec : Prop :=
  ∀ n, P10461617462445587048.a n = (A154323 n : ℚ)

theorem P10461617462445587048.correct : P10461617462445587048.Spec := by
  intro n
  induction n with
  | zero => simp [A154323, A154323.P10461617462445587048.a, A154323.P11433666102161681324.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A154323, Nat.add_sub_cancel, A154323.P10461617462445587048.a, A154323.P11433666102161681324.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A154323

/-! ## A154323.P13928730528447155091

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=10, a(3)=37, a(4)=101`
-/

namespace A154323.P13928730528447155091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 10, 37, 101] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A154323.P13928730528447155091

namespace A154323

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P13928730528447155091.Spec : Prop :=
  ∀ n, P13928730528447155091.a n = A154323 n

end A154323

/-! ## A154323.P14385109035430231451

`1+A000537(n)`
-/

namespace A154323.P14385109035430231451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000537 n

end

end A154323.P14385109035430231451

namespace A154323

/-- `1+A000537(n)` -/
def P14385109035430231451.Spec : Prop :=
  ∀ n, P14385109035430231451.a n = A154323 n

end A154323

/-! ## A154323.P6231911823047991314

`-xor(-1, ∑[n]²)`
-/

namespace A154323.P6231911823047991314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A154323.P6231911823047991314

namespace A154323

/-- `-xor(-1, ∑[n]²)` -/
def P6231911823047991314.Spec : Prop :=
  ∀ n, P6231911823047991314.a n = A154323 n

end A154323

/-! ## A154323.P17086126616615376548

`ceil(1/acot(∑[n]²))`
-/

namespace A154323.P17086126616615376548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / SequenceMachineLib.acot (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℝ)⌉

end

end A154323.P17086126616615376548

namespace A154323

/-- `ceil(1/acot(∑[n]²))` -/
def P17086126616615376548.Spec : Prop :=
  ∀ n, P17086126616615376548.a n = A154323 n

end A154323

/-! ## A154323.P15685501160592273

`(1/sin(acot(∑[n])))²`
-/

namespace A154323.P15685501160592273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 / Real.sin (SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))) ^ 2

end

end A154323.P15685501160592273

namespace A154323

/-- `(1/sin(acot(∑[n])))²` -/
def P15685501160592273.Spec : Prop :=
  ∀ n, P15685501160592273.a n = (A154323 n : ℝ)

end A154323

/-! ## A154323.P3204730969442883895

`∑[n^(3%(n+3))]`
-/

namespace A154323.P3204730969442883895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (3 % (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154323.P3204730969442883895

namespace A154323

/-- `∑[n^(3%(n+3))]` -/
def P3204730969442883895.Spec : Prop :=
  ∀ n, (P3204730969442883895.a n : ℤ) = A154323 n

end A154323

/-! ## A154323.P4875521745253404283

`abs(1-or(2, ∑[n]²))`
-/

namespace A154323.P4875521745253404283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lor 2 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) : ℤ)|

end

end A154323.P4875521745253404283

namespace A154323

/-- `abs(1-or(2, ∑[n]²))` -/
def P4875521745253404283.Spec : Prop :=
  ∀ n, P4875521745253404283.a n = A154323 n

end A154323

/-! ## A154323.P12275620755612336385

`abs(1-xor(2, ∑[n]²))`
-/

namespace A154323.P12275620755612336385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.xor 2 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) : ℤ)|

end

end A154323.P12275620755612336385

namespace A154323

/-- `abs(1-xor(2, ∑[n]²))` -/
def P12275620755612336385.Spec : Prop :=
  ∀ n, P12275620755612336385.a n = A154323 n

end A154323

/-! ## A154323.P1300588819080844627

`∑[round(1/acot(n^3))]`
-/

namespace A154323.P1300588819080844627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n ^ 3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154323.P1300588819080844627

namespace A154323

/-- `∑[round(1/acot(n^3))]` -/
def P1300588819080844627.Spec : Prop :=
  ∀ n, P1300588819080844627.a n = A154323 n

end A154323

/-! ## A154323.P7284323623168559311

`∑[n^(3*floor(atan(n)))]`
-/

namespace A154323.P7284323623168559311
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (3 * ⌊Real.arctan (n : ℝ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154323.P7284323623168559311

namespace A154323

/-- `∑[n^(3*floor(atan(n)))]` -/
def P7284323623168559311.Spec : Prop :=
  ∀ n, P7284323623168559311.a n = (A154323 n : ℚ)

end A154323

/-! ## A154323.P13451749922652799688

`∑[floor(acot(n)+n^3)]`
-/

namespace A154323.P13451749922652799688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (n ^ 3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154323.P13451749922652799688

namespace A154323

/-- `∑[floor(acot(n)+n^3)]` -/
def P13451749922652799688.Spec : Prop :=
  ∀ n, P13451749922652799688.a n = A154323 n

end A154323

/-! ## A154323.P7770857824529354747

`∑[(n^3)^floor(atan(n))]`
-/

namespace A154323.P7770857824529354747
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154323.P7770857824529354747

namespace A154323

/-- `∑[(n^3)^floor(atan(n))]` -/
def P7770857824529354747.Spec : Prop :=
  ∀ n, P7770857824529354747.a n = (A154323 n : ℚ)

end A154323

/-! ## A154323.P7617134745340607861

`∑[gcd(n^3, floor(acot(n)))]`
-/

namespace A154323.P7617134745340607861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 3 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154323.P7617134745340607861

namespace A154323

/-- `∑[gcd(n^3, floor(acot(n)))]` -/
def P7617134745340607861.Spec : Prop :=
  ∀ n, (P7617134745340607861.a n : ℤ) = A154323 n

end A154323

/-! ## A154323.P423167228902483700

`∑[or(n^3, floor(acot(n)))]`
-/

namespace A154323.P423167228902483700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n ^ 3 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154323.P423167228902483700

namespace A154323

/-- `∑[or(n^3, floor(acot(n)))]` -/
def P423167228902483700.Spec : Prop :=
  ∀ n, P423167228902483700.a n = A154323 n

end A154323

/-! ## A154323.P3530423830737858803

`ceil(acot(n+1)+∑[n]²)`
-/

namespace A154323.P3530423830737858803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n + 1 : ℝ) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℝ)⌉

end

end A154323.P3530423830737858803

namespace A154323

/-- `ceil(acot(n+1)+∑[n]²)` -/
def P3530423830737858803.Spec : Prop :=
  ∀ n, P3530423830737858803.a n = A154323 n

end A154323

/-! ## A154323.P6327596345531956167

`∑[C(2, n+2)+n^3]`
-/

namespace A154323.P6327596345531956167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154323.P6327596345531956167

namespace A154323

/-- `∑[C(2, n+2)+n^3]` -/
def P6327596345531956167.Spec : Prop :=
  ∀ n, (P6327596345531956167.a n : ℤ) = A154323 n

end A154323

/-! ## A154323.P11453031370213765071

`abs((-n)^3-a(n-1))` with `a(0)=1`
-/

namespace A154323.P11453031370213765071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |(-(n : ℤ)) ^ 3 - a (n - 1)|

end

end A154323.P11453031370213765071

namespace A154323

/-- `abs((-n)^3-a(n-1))` -/
def P11453031370213765071.Spec : Prop :=
  ∀ n, P11453031370213765071.a n = A154323 n

end A154323

/-!
# A154324: Diagonal sums of number triangle A113582.

The programs for A154324, the canonical program `A154324.P630547226117239156` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154324 has offset 0).

The definition of A154324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154324.P630547226117239156

`∑[A006918(n-2)+a(n-2)]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A154324

/-- `∑[A006918(n-2)+a(n-2)]` -/
def P630547226117239156.Spec : Prop :=
  ∀ n, P630547226117239156.a n = A154324 n

theorem P630547226117239156.correct : P630547226117239156.Spec := by
  intro n
  simp only [A154324]

end A154324

/-! ## A154324.P7483901160833103077

`A008619(n)+∑[A096338(n)-A006918(n)]`
-/

namespace A154324.P7483901160833103077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096338 n - A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154324.P7483901160833103077

namespace A154324

/-- `A008619(n)+∑[A096338(n)-A006918(n)]` -/
def P7483901160833103077.Spec : Prop :=
  ∀ n, P7483901160833103077.a n = A154324 n

end A154324

/-! ## A154324.P13505772173507367286

`∑[A059841(n)+A096338(n)-A006918(n)]`
-/

namespace A154324.P13505772173507367286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + (A096338 n - A006918 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154324.P13505772173507367286

namespace A154324

/-- `∑[A059841(n)+A096338(n)-A006918(n)]` -/
def P13505772173507367286.Spec : Prop :=
  ∀ n, P13505772173507367286.a n = A154324 n

end A154324

/-! ## A154324.P12060255158033792922

`A065033(n+1)+∑[A096338(n)-A006918(n)]`
-/

namespace A154324.P12060255158033792922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096338 n - A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154324.P12060255158033792922

namespace A154324

/-- `A065033(n+1)+∑[A096338(n)-A006918(n)]` -/
def P12060255158033792922.Spec : Prop :=
  ∀ n, P12060255158033792922.a n = A154324 n

end A154324

/-! ## A154324.P13211210076450094787

`A123108(n+2)+∑[A096338(n)-A006918(n)]`
-/

namespace A154324.P13211210076450094787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096338 n - A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154324.P13211210076450094787

namespace A154324

/-- `A123108(n+2)+∑[A096338(n)-A006918(n)]` -/
def P13211210076450094787.Spec : Prop :=
  ∀ n, P13211210076450094787.a n = A154324 n

end A154324

/-! ## A154324.P7580742051792263671

`∑[A003815(2*n+1)+A096338(n)-A006918(n)]`
-/

namespace A154324.P7580742051792263671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (2 * n + 1) + (A096338 n - A006918 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154324.P7580742051792263671

namespace A154324

/-- `∑[A003815(2*n+1)+A096338(n)-A006918(n)]` -/
def P7580742051792263671.Spec : Prop :=
  ∀ n, P7580742051792263671.a n = A154324 n

end A154324

/-!
# A154325: Triangle with interior all 2's and borders 1.

The programs for A154325, the canonical program `A154325.P12734525068056189664` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154325 has offset 0).

The definition of A154325 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103451, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A154325.P12734525068056189664

`2-A103451(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A154325

/-- `2-A103451(n)` -/
def P12734525068056189664.Spec : Prop :=
  ∀ n, P12734525068056189664.a n = A154325 n

theorem P12734525068056189664.correct : P12734525068056189664.Spec := by
  intro n
  simp only [A154325]

end A154325

/-! ## A154325.P14090122874979183700

`2-char[∪[∑[n+2], ∑[n]]]`
-/

namespace A154325.P14090122874979183700
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f4 j = x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A154325.P14090122874979183700

namespace A154325

/-- `2-char[∪[∑[n+2], ∑[n]]]` -/
def P14090122874979183700.Spec : Prop :=
  ∀ n, P14090122874979183700.a n = A154325 n

end A154325

/-! ## A154325.P7548751459962172239

`Δ[∪[2*n, n²+1+n]]`
-/

namespace A154325.P7548751459962172239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A154325.P7548751459962172239

namespace A154325

/-- `Δ[∪[2*n, n²+1+n]]` -/
def P7548751459962172239.Spec : Prop :=
  ∀ n, P7548751459962172239.a n = A154325 n

end A154325

/-! ## A154325.P15487601925656972191

`2/(char[∪[∑[n+2], ∑[n]]]+1)`
-/

namespace A154325.P15487601925656972191
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f4 j = x) n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ)

end

end A154325.P15487601925656972191

namespace A154325

/-- `2/(char[∪[∑[n+2], ∑[n]]]+1)` -/
def P15487601925656972191.Spec : Prop :=
  ∀ n, P15487601925656972191.a n = (A154325 n : ℚ)

end A154325

/-! ## A154325.P10628469274113630219

`(2-char[∑[n]]-char[∑[n-1]])!`
-/

namespace A154325.P10628469274113630219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A154325.P10628469274113630219

namespace A154325

/-- `(2-char[∑[n]]-char[∑[n-1]])!` -/
def P10628469274113630219.Spec : Prop :=
  ∀ n, (P10628469274113630219.a n : ℤ) = A154325 n

end A154325

/-! ## A154325.P7139192102816907077

`gcd(2, char[∑[n-1]]-char[∑[n+1]])`
-/

namespace A154325.P7139192102816907077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ))

end

end A154325.P7139192102816907077

namespace A154325

/-- `gcd(2, char[∑[n-1]]-char[∑[n+1]])` -/
def P7139192102816907077.Spec : Prop :=
  ∀ n, (P7139192102816907077.a n : ℤ) = A154325 n

end A154325

/-! ## A154325.P10844250292509414427

`A132048(n)%3`
-/

namespace A154325.P10844250292509414427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132048 n) 3

end

end A154325.P10844250292509414427

namespace A154325

/-- `A132048(n)%3` -/
def P10844250292509414427.Spec : Prop :=
  ∀ n, P10844250292509414427.a n = A154325 n

end A154325

/-! ## A154325.P5324625083461630803

`ceil(atan(A007318(n)))`
-/

namespace A154325.P5324625083461630803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A007318 n : ℝ)⌉

end

end A154325.P5324625083461630803

namespace A154325

/-- `ceil(atan(A007318(n)))` -/
def P5324625083461630803.Spec : Prop :=
  ∀ n, P5324625083461630803.a n = A154325 n

end A154325

/-! ## A154325.P1517728676354436753

`2-A103452(n)²`
-/

namespace A154325.P1517728676354436753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A103452 n ^ 2

end

end A154325.P1517728676354436753

namespace A154325

/-- `2-A103452(n)²` -/
def P1517728676354436753.Spec : Prop :=
  ∀ n, P1517728676354436753.a n = A154325 n

end A154325

/-! ## A154325.P2439241859277919446

`ceil(cosh(sin(A004247(n))))`
-/

namespace A154325.P2439241859277919446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (A004247 n : ℝ))⌉

end

end A154325.P2439241859277919446

namespace A154325

/-- `ceil(cosh(sin(A004247(n))))` -/
def P2439241859277919446.Spec : Prop :=
  ∀ n, P2439241859277919446.a n = A154325 n

end A154325

/-! ## A154325.P6519714171418932359

`round(sqrt(A278597(n+1)))`
-/

namespace A154325.P6519714171418932359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A278597 (n + 1) : ℝ))

end

end A154325.P6519714171418932359

namespace A154325

/-- `round(sqrt(A278597(n+1)))` -/
def P6519714171418932359.Spec : Prop :=
  ∀ n, P6519714171418932359.a n = A154325 n

end A154325

/-! ## A154325.P12227820238350025629

`floor(log(A278545(n+1)))`
-/

namespace A154325.P12227820238350025629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A278545 (n + 1) : ℝ)⌋

end

end A154325.P12227820238350025629

namespace A154325

/-- `floor(log(A278545(n+1)))` -/
def P12227820238350025629.Spec : Prop :=
  ∀ n, P12227820238350025629.a n = A154325 n

end A154325

/-! ## A154325.P13464556394467955598

`2-Δ[A073423(n)]²`
-/

namespace A154325.P13464556394467955598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n) ^ 2

end

end A154325.P13464556394467955598

namespace A154325

/-- `2-Δ[A073423(n)]²` -/
def P13464556394467955598.Spec : Prop :=
  ∀ n, P13464556394467955598.a n = A154325 n

end A154325

/-! ## A154325.P7142397215130636773

`2-Δ[A073424(n)]²`
-/

namespace A154325.P7142397215130636773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n) ^ 2

end

end A154325.P7142397215130636773

namespace A154325

/-- `2-Δ[A073424(n)]²` -/
def P7142397215130636773.Spec : Prop :=
  ∀ n, P7142397215130636773.a n = A154325 n

end A154325

/-! ## A154325.P13894253906514209452

`2-Δ[A123110(n)]²`
-/

namespace A154325.P13894253906514209452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n) ^ 2

end

end A154325.P13894253906514209452

namespace A154325

/-- `2-Δ[A123110(n)]²` -/
def P13894253906514209452.Spec : Prop :=
  ∀ n, P13894253906514209452.a n = A154325 n

end A154325

/-!
# A154326: Square array T(n,k) = min{j>=0 | f(j+1) is prime}, where f(0)=prime(n), f(1)=k, f(j+1)=f(j)+f(j-1); or 0 if there is no such j>=0. Read by antidiagonals, n>=1, k>=0.

The programs for A154326, there is no canonical definition to state claims against.
-/

/-! ## A154326.P15123225403702288362

`A128206(n)+A096693(A152260(n+1))`
-/

namespace A154326.P15123225403702288362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128206 n + A096693 (A152260 (n + 1)).toNat

end

end A154326.P15123225403702288362

/-! ## A154326.P4375326992563222998

`A380578(A396563(n+1))`
-/

namespace A154326.P4375326992563222998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380578 (A396563 (n + 1)).toNat

end

end A154326.P4375326992563222998

/-! ## A154326.P5393962301616776970

`A209777(4*A131398(n))`
-/

namespace A154326.P5393962301616776970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209777 (4 * A131398 n).toNat

end

end A154326.P5393962301616776970

/-! ## A154326.P6946756180897125282

`A052343(A324580(n+4)+A007953(n+2))`
-/

namespace A154326.P6946756180897125282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (A324580 (n + 4) + A007953 (n + 2)).toNat

end

end A154326.P6946756180897125282

/-! ## A154326.P1918677600434788731

`C(A000161(A224391(n+1)), A179054(n+1))`
-/

namespace A154326.P1918677600434788731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000161 (A224391 (n + 1)).toNat).toNat (A179054 (n + 1)).toNat

end

end A154326.P1918677600434788731

/-!
# A154327: Diagonal sums of number triangle A132046.

The programs for A154327, the canonical program `A154327.P8324856355025306036` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154327 has offset 0).

The definition of A154327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154327.P8324856355025306036

`gcd(2, n+1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154327

/-- `gcd(2, n+1)+a(n-1)+a(n-2)` -/
def P8324856355025306036.Spec : Prop :=
  ∀ n, (P8324856355025306036.a n : ℤ) = A154327 n

theorem P8324856355025306036.correct : P8324856355025306036.Spec := by
  intro n
  simp only [A154327]

end A154327

/-! ## A154327.P13482816147212858585

`(3+(-1)^(n+1))/2+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A154327.P13482816147212858585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (3 + (-1) ^ (n + 1) : ℚ) / 2 + a (n - 1) + a (n - 2)

end

end A154327.P13482816147212858585

namespace A154327

/-- `(3+(-1)^(n+1))/2+a(n-1)+a(n-2)` -/
def P13482816147212858585.Spec : Prop :=
  ∀ n, P13482816147212858585.a n = (A154327 n : ℚ)

end A154327

/-! ## A154327.P6405641916383267941

`A066629(abs(ceil(n*sin(11))))`
-/

namespace A154327.P6405641916383267941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066629 |⌈(n : ℝ) * Real.sin (11 : ℝ)⌉|.toNat

end

end A154327.P6405641916383267941

namespace A154327

/-- `A066629(abs(ceil(n*sin(11))))` -/
def P6405641916383267941.Spec : Prop :=
  ∀ n, P6405641916383267941.a n = A154327 n

end A154327

/-! ## A154327.P2593238698314871110

`A066629(n-ceil(abs(sin(n))))`
-/

namespace A154327.P2593238698314871110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066629 ((n : ℤ) - ⌈|Real.sin (n : ℝ)|⌉).toNat

end

end A154327.P2593238698314871110

namespace A154327

/-- `A066629(n-ceil(abs(sin(n))))` -/
def P2593238698314871110.Spec : Prop :=
  ∀ n, P2593238698314871110.a n = A154327 n

end A154327

/-! ## A154327.P18178480144428230127

`A066629((n-1)%(n+1))`
-/

namespace A154327.P18178480144428230127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066629 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A154327.P18178480144428230127

namespace A154327

/-- `A066629((n-1)%(n+1))` -/
def P18178480144428230127.Spec : Prop :=
  ∀ n, P18178480144428230127.a n = A154327 n

end A154327

/-! ## A154327.P17483089265538800371

`A055389(n)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A154327.P17483089265538800371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A055389 n + a (n - 2)

end

end A154327.P17483089265538800371

namespace A154327

/-- `A055389(n)+a(n-2)` -/
def P17483089265538800371.Spec : Prop :=
  ∀ n, P17483089265538800371.a n = A154327 n

end A154327

/-! ## A154327.P14207787878671909420

`A128588(n)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A154327.P14207787878671909420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A128588 n + a (n - 2)

end

end A154327.P14207787878671909420

namespace A154327

/-- `A128588(n)+a(n-2)` -/
def P14207787878671909420.Spec : Prop :=
  ∀ n, P14207787878671909420.a n = A154327 n

end A154327

/-! ## A154327.P9336912503708606923

`A066983(n+1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A154327.P9336912503708606923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A066983 (n + 1) + a (n - 1)

end

end A154327.P9336912503708606923

namespace A154327

/-- `A066983(n+1)+a(n-1)` -/
def P9336912503708606923.Spec : Prop :=
  ∀ n, P9336912503708606923.a n = A154327 n

end A154327

/-! ## A154327.P14871012624093961254

`a(n-2)+2*A000045(n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A154327.P14871012624093961254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 2) + 2 * A000045 n

end

end A154327.P14871012624093961254

namespace A154327

/-- `a(n-2)+2*A000045(n)` -/
def P14871012624093961254.Spec : Prop :=
  ∀ n, P14871012624093961254.a n = A154327 n

end A154327

/-! ## A154327.P3935443750836016312

`A066629(A289207(n+1))`
-/

namespace A154327.P3935443750836016312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066629 (A289207 (n + 1)).toNat

end

end A154327.P3935443750836016312

namespace A154327

/-- `A066629(A289207(n+1))` -/
def P3935443750836016312.Spec : Prop :=
  ∀ n, P3935443750836016312.a n = A154327 n

end A154327

/-! ## A154327.P2465601813766263628

`∑[A118658(n)]-A040001(n)`
-/

namespace A154327.P2465601813766263628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A040001 n

end

end A154327.P2465601813766263628

namespace A154327

/-- `∑[A118658(n)]-A040001(n)` -/
def P2465601813766263628.Spec : Prop :=
  ∀ n, P2465601813766263628.a n = A154327 n

end A154327

/-! ## A154327.P13069669734958161316

`A066629(A289207(2*n)/2)`
-/

namespace A154327.P13069669734958161316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066629 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

end

end A154327.P13069669734958161316

namespace A154327

/-- `A066629(A289207(2*n)/2)` -/
def P13069669734958161316.Spec : Prop :=
  ∀ n, P13069669734958161316.a n = A154327 n

end A154327

/-! ## A154327.P16999923972462024093

`A128588(n+1)-A134451(n)`
-/

namespace A154327.P16999923972462024093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128588 (n + 1) - A134451 n

end

end A154327.P16999923972462024093

namespace A154327

/-- `A128588(n+1)-A134451(n)` -/
def P16999923972462024093.Spec : Prop :=
  ∀ n, P16999923972462024093.a n = A154327 n

end A154327

/-! ## A154327.P640118451781434937

`A006355(n+2)-A040001(n)`
-/

namespace A154327.P640118451781434937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 2) - A040001 n

end

end A154327.P640118451781434937

namespace A154327

/-- `A006355(n+2)-A040001(n)` -/
def P640118451781434937.Spec : Prop :=
  ∀ n, P640118451781434937.a n = A154327 n

end A154327

/-! ## A154327.P15419098000173529008

`A118658(n+2)-A040001(n)`
-/

namespace A154327.P15419098000173529008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 2) - A040001 n

end

end A154327.P15419098000173529008

namespace A154327

/-- `A118658(n+2)-A040001(n)` -/
def P15419098000173529008.Spec : Prop :=
  ∀ n, P15419098000173529008.a n = A154327 n

end A154327

/-! ## A154327.P10223915229407254284

`A118658(n+2)-abs(A280193(n))`
-/

namespace A154327.P10223915229407254284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 2) - |A280193 n|

end

end A154327.P10223915229407254284

namespace A154327

/-- `A118658(n+2)-abs(A280193(n))` -/
def P10223915229407254284.Spec : Prop :=
  ∀ n, P10223915229407254284.a n = A154327 n

end A154327

/-! ## A154327.P14133693316772220211

`A066629(n-A105812(n+1)²)`
-/

namespace A154327.P14133693316772220211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066629 ((n : ℤ) - A105812 (n + 1) ^ 2).toNat

end

end A154327.P14133693316772220211

namespace A154327

/-- `A066629(n-A105812(n+1)²)` -/
def P14133693316772220211.Spec : Prop :=
  ∀ n, P14133693316772220211.a n = A154327 n

end A154327

/-! ## A154327.P12757469856909506857

`A019274(n+1)+char[A004273(n)]`
-/

namespace A154327.P12757469856909506857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019274 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A154327.P12757469856909506857

namespace A154327

/-- `A019274(n+1)+char[A004273(n)]` -/
def P12757469856909506857.Spec : Prop :=
  ∀ n, P12757469856909506857.a n = A154327 n

end A154327

/-! ## A154327.P7316515751831450230

`A135528(n+1)+A019274(n+1)`
-/

namespace A154327.P7316515751831450230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (n + 1) + A019274 (n + 1)

end

end A154327.P7316515751831450230

namespace A154327

/-- `A135528(n+1)+A019274(n+1)` -/
def P7316515751831450230.Spec : Prop :=
  ∀ n, P7316515751831450230.a n = A154327 n

end A154327

/-! ## A154327.P9852308032663583408

`2*A000045(n+1)-A040001(n)`
-/

namespace A154327.P9852308032663583408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 1) - A040001 n

end

end A154327.P9852308032663583408

namespace A154327

/-- `2*A000045(n+1)-A040001(n)` -/
def P9852308032663583408.Spec : Prop :=
  ∀ n, P9852308032663583408.a n = A154327 n

end A154327

/-!
# A154328: Lexicographically earliest strictly increasing sequence having the property that a(n) is the sum of the first a(n) digits of the sequence.

The programs for A154328, there is no canonical definition to state claims against.
-/

/-! ## A154328.P13527250499967032312

`A007089(eq[A047743(n+2), A106486(n)])`
-/

namespace A154328.P13527250499967032312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047743 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A154328.P13527250499967032312

/-! ## A154328.P17132349439594648787

`eq[A007953(n), A275850(A128710(n))]`
-/

namespace A154328.P17132349439594648787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275850 (A128710 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154328.P17132349439594648787

/-! ## A154328.P15959016932394214302

`A007089(lt[A192232(n+1), A079191(n+1)])`
-/

namespace A154328.P15959016932394214302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A154328.P15959016932394214302

/-!
# A154330: Values of self-describing sequence A154328 at jumps, a(n) = A154328(A154329(n)) > A154328(A154329(n)-1)+1.

The programs for A154330, there is no canonical definition to state claims against.
-/

/-! ## A154330.P11648692126060033085

`A154328(A154329(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154330.P11648692126060033085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154328 (A154329 (n + 1)).toNat

end

end A154330.P11648692126060033085

/-! ## A154330.P12360448548656295764

`A154328(A154329(n+1)-1+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154330.P12360448548656295764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154328 (A154329 (n + 1) - 1 + 1).toNat

end

end A154330.P12360448548656295764

/-!
# A154331: Numbers m such that 12 m^2 is the average of a twin prime pair.

The programs for A154331, there is no canonical definition to state claims against.
-/

/-! ## A154331.P6068383198368011690

`sqrt(A154671(n+1)/12)`
-/

namespace A154331.P6068383198368011690
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A154671 (n + 1) : ℚ) / 12 : ℝ)

end

end A154331.P6068383198368011690

/-! ## A154331.P11893487126933734159

`root(A154671(n+1)/12, A005843(n+1)-2*n)`
-/

namespace A154331.P11893487126933734159
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A154671 (n + 1) : ℚ) / 12 : ℝ) ^ (1 / (A005843 (n + 1) - (2 * n : ℤ) : ℝ))

end

end A154331.P11893487126933734159

/-! ## A154331.P9898950395079552984

`(A154671(n+1)/12)^2^A286714(xor(n, xor(1, n)))`
-/

namespace A154331.P9898950395079552984
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A154671 (n + 1) : ℚ) / 12 : ℝ) ^ ((2 : ℚ) ^ (A286714 (Nat.xor n (Nat.xor 1 n)) : ℤ) : ℝ)

end

end A154331.P9898950395079552984

/-! ## A154331.P4329004980187945932

`root(A154671(n+1)/12, 2%A005276(n+1))`
-/

namespace A154331.P4329004980187945932
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A154671 (n + 1) : ℚ) / 12 : ℝ) ^ (1 / (Int.tmod 2 (A005276 (n + 1)) : ℝ))

end

end A154331.P4329004980187945932

/-! ## A154331.P4991337200950954109

`A008615(sqrt(3*A154671(n+1)))`
-/

namespace A154331.P4991337200950954109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.roundAway (Real.sqrt (3 * A154671 (n + 1) : ℝ))).toNat

end

end A154331.P4991337200950954109

/-!
# A154333: Difference between n^3 and the next smaller square.

The programs for A154333, the canonical program `A154333.P16846798057093835368` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154333 has offset 1).

The definition of A154333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154333.P16846798057093835368

`A071797((n+1)^3)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A154333

/-- `A071797((n+1)^3)` -/
def P16846798057093835368.Spec : Prop :=
  ∀ n, P16846798057093835368.a n = A154333 (n + 1)

theorem P16846798057093835368.correct : P16846798057093835368.Spec := by
  intro n
  simp only [A154333, Nat.add_sub_cancel]

end A154333

/-! ## A154333.P8548396552584910764

`A000578(n+1)-A048760((n+1)^3-1)`
-/

namespace A154333.P8548396552584910764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) - A048760 ((n + 1) ^ 3 - 1)

end

end A154333.P8548396552584910764

namespace A154333

/-- `A000578(n+1)-A048760((n+1)^3-1)` -/
def P8548396552584910764.Spec : Prop :=
  ∀ n, P8548396552584910764.a n = A154333 (n + 1)

end A154333

/-! ## A154333.P17820259082314032493

`A000578(n+1)-(1-A185549(n+1))²`
-/

namespace A154333.P17820259082314032493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) - (1 - A185549 (n + 1)) ^ 2

end

end A154333.P17820259082314032493

namespace A154333

/-- `A000578(n+1)-(1-A185549(n+1))²` -/
def P17820259082314032493.Spec : Prop :=
  ∀ n, P17820259082314032493.a n = A154333 (n + 1)

end A154333

/-! ## A154333.P15639246438420992012

`Δ[A000217(n)²]-(1-A185549(n+1))²`
-/

namespace A154333.P15639246438420992012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (1 - A185549 (n + 1)) ^ 2

end

end A154333.P15639246438420992012

namespace A154333

/-- `Δ[A000217(n)²]-(1-A185549(n+1))²` -/
def P15639246438420992012.Spec : Prop :=
  ∀ n, P15639246438420992012.a n = A154333 (n + 1)

end A154333

/-! ## A154333.P16241072129263240174

`A068601(n+1)-floor(sqrt(A068601(n+1)))²+1`
-/

namespace A154333.P16241072129263240174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1) - Int.sqrt (A068601 (n + 1)) ^ 2 + 1

end

end A154333.P16241072129263240174

namespace A154333

/-- `A068601(n+1)-floor(sqrt(A068601(n+1)))²+1` -/
def P16241072129263240174.Spec : Prop :=
  ∀ n, P16241072129263240174.a n = A154333 (n + 1)

end A154333

/-! ## A154333.P17202960322519699566

`A000578(n+1)-A000290(A185549(n+1)-1)`
-/

namespace A154333.P17202960322519699566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) - A000290 (A185549 (n + 1) - 1).toNat

end

end A154333.P17202960322519699566

namespace A154333

/-- `A000578(n+1)-A000290(A185549(n+1)-1)` -/
def P17202960322519699566.Spec : Prop :=
  ∀ n, P17202960322519699566.a n = A154333 (n + 1)

end A154333

/-! ## A154333.P10133615796824486337

`A181138(floor(sqrt((n+1)^3-1)))`
-/

namespace A154333.P10133615796824486337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181138 (Int.sqrt (((n + 1) ^ 3 : ℤ) - 1)).toNat

end

end A154333.P10133615796824486337

namespace A154333

/-- `A181138(floor(sqrt((n+1)^3-1)))` -/
def P10133615796824486337.Spec : Prop :=
  ∀ n, P10133615796824486337.a n = A154333 (n + 1)

end A154333

/-!
# A154334: A triangular sequence of coefficients of polynomials: p(x,n) = ((x - 1)^n *(Sum_{k>=0} (((-1)^n*(2*k + 1)^(n - 1)))*x^k) + (x - 1)^(n + 1)*(Sum_{k>=0} ((-1)^(n + 1)*k^n)*x^k)/x)/2.

The programs for A154334, there is no canonical definition to state claims against.
-/

/-! ## A154334.P16763155466337932417

`A290448(n)+A147565(n)`
-/

namespace A154334.P16763155466337932417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290448 n + A147565 n

end

end A154334.P16763155466337932417

/-! ## A154334.P3773761275841033197

`A176198(n)+1-A154337(n)`
-/

namespace A154334.P3773761275841033197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176198 n + (1 - A154337 n)

end

end A154334.P3773761275841033197

/-! ## A154334.P4393523931861115202

`(A168523(n)+A007318(n))/2`
-/

namespace A154334.P4393523931861115202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168523 n + A007318 n : ℚ) / 2

end

end A154334.P4393523931861115202

/-! ## A154334.P7780421237796596499

`2*A060187(n+1)-A154337(n)`
-/

namespace A154334.P7780421237796596499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060187 (n + 1) - A154337 n

end

end A154334.P7780421237796596499

/-! ## A154334.P1600846773852110204

`(A060187(n+1)+A008292(n+1))/2`
-/

namespace A154334.P1600846773852110204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060187 (n + 1) + A008292 (n + 1) : ℚ) / 2

end

end A154334.P1600846773852110204

/-! ## A154334.P15113203188971527363

`A154335(n)+A154337(n)-A154336(n)`
-/

namespace A154334.P15113203188971527363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154335 n + (A154337 n - A154336 n)

end

end A154334.P15113203188971527363

/-! ## A154334.P9769168667211136721

`A008292(n+1)+A154335(n)-A154337(n)`
-/

namespace A154334.P9769168667211136721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A154335 n - A154337 n)

end

end A154334.P9769168667211136721

/-! ## A154334.P366864592074902349

`A060187(n+1)+A154337(n)-A154335(n)`
-/

namespace A154334.P366864592074902349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + (A154337 n - A154335 n)

end

end A154334.P366864592074902349

/-! ## A154334.P14888108533602166371

`A141696(n+1)+A154337(n)-A168524(n)`
-/

namespace A154334.P14888108533602166371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141696 (n + 1) + (A154337 n - A168524 n)

end

end A154334.P14888108533602166371

/-! ## A154334.P4970438072387526824

`A008292(n+1)+A154337(n)-A060187(n+1)`
-/

namespace A154334.P4970438072387526824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A154337 n - A060187 (n + 1))

end

end A154334.P4970438072387526824

/-! ## A154334.P7249033026999029127

`A060187(n+1)+A141689(n+1)-A147565(n)`
-/

namespace A154334.P7249033026999029127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + (A141689 (n + 1) - A147565 n)

end

end A154334.P7249033026999029127

/-!
# A154335: A triangular sequence of coefficients of polynomials: p(x,n) = (2*(x - 1)^n * (Sum_{k>=0} (((-1)^n*(2*k + 1)^(n - 1)))*x^k) - (x - 1)^(n + 1)*(Sum_{k>=0} ((-1)^(n + 1)*k^n)*x^k)/x).

The programs for A154335, there is no canonical definition to state claims against.
-/

/-! ## A154335.P1368007697362951777

`2*A168551(n)-A007318(n)`
-/

namespace A154335.P1368007697362951777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168551 n - A007318 n

end

end A154335.P1368007697362951777

/-! ## A154335.P9488233420813038139

`2*A154334(n)-A154338(n)`
-/

namespace A154335.P9488233420813038139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154334 n - A154338 n

end

end A154335.P9488233420813038139

/-! ## A154335.P10365343368798311135

`2*A168517(n)-A141690(n)`
-/

namespace A154335.P10365343368798311135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168517 n - A141690 n

end

end A154335.P10365343368798311135

/-! ## A154335.P9015729680093472871

`2*A154337(n)-A060187(n+1)`
-/

namespace A154335.P9015729680093472871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154337 n - A060187 (n + 1)

end

end A154335.P9015729680093472871

/-! ## A154335.P10514223728774305079

`(A154336(n)+A060187(n+1))/2`
-/

namespace A154335.P10514223728774305079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154336 n + A060187 (n + 1) : ℚ) / 2

end

end A154335.P10514223728774305079

/-! ## A154335.P3850227499735188335

`2*A168523(n)-A141696(n+1)`
-/

namespace A154335.P3850227499735188335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168523 n - A141696 (n + 1)

end

end A154335.P3850227499735188335

/-! ## A154335.P1248576058103309358

`2*A060187(n+1)-A008292(n+1)`
-/

namespace A154335.P1248576058103309358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060187 (n + 1) - A008292 (n + 1)

end

end A154335.P1248576058103309358

/-! ## A154335.P8298732815007443194

`A154334(n)+A154336(n)-A154337(n)`
-/

namespace A154335.P8298732815007443194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154334 n + (A154336 n - A154337 n)

end

end A154335.P8298732815007443194

/-! ## A154335.P4621967534206550886

`A168518(n)+A168552(n)-A168517(n)`
-/

namespace A154335.P4621967534206550886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168518 n + (A168552 n - A168517 n)

end

end A154335.P4621967534206550886

/-! ## A154335.P16495679002937281044

`A008292(n+1)+A154336(n)-A060187(n+1)`
-/

namespace A154335.P16495679002937281044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A154336 n - A060187 (n + 1))

end

end A154335.P16495679002937281044

/-! ## A154335.P15437154744963202269

`A060187(A000027(n+1))+A060187(n+1)-A008292(n+1)`
-/

namespace A154335.P15437154744963202269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (A000027 (n + 1)).toNat + (A060187 (n + 1) - A008292 (n + 1))

end

end A154335.P15437154744963202269

/-!
# A154336: A triangular sequence of coefficients of polynomials: p(x,n)=(3*(x - 1)^(n)*Sum[(((-1)^(n)*(2*k + 1)^(n - 1)))*x^k, {k,0, Infinity}] -2*(x - 1)^(n + 1)*Sum[((-1)^(n + 1)*k^n)*x^k, {k, 0, Infinity}]/x).

The programs for A154336, there is no canonical definition to state claims against.
-/

/-! ## A154336.P11438778979731949714

`2*A154337(n)-A008292(n+1)`
-/

namespace A154336.P11438778979731949714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154337 n - A008292 (n + 1)

end

end A154336.P11438778979731949714

/-! ## A154336.P16377991965186545761

`2*A060187(n+1)-A154338(n)`
-/

namespace A154336.P16377991965186545761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060187 (n + 1) - A154338 n

end

end A154336.P16377991965186545761

/-! ## A154336.P13527652642687108654

`2*A154335(n)-A060187(n+1)`
-/

namespace A154336.P13527652642687108654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154335 n - A060187 (n + 1)

end

end A154336.P13527652642687108654

/-! ## A154336.P6944947392286023666

`A154334(n)+A154337(n)-A154338(n)`
-/

namespace A154336.P6944947392286023666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154334 n + (A154337 n - A154338 n)

end

end A154336.P6944947392286023666

/-! ## A154336.P1763392615051106414

`A154335(n)+A154337(n)-A154334(n)`
-/

namespace A154336.P1763392615051106414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154335 n + (A154337 n - A154334 n)

end

end A154336.P1763392615051106414

/-! ## A154336.P12925813837853067392

`A060187(n+1)+A154335(n)-A008292(n+1)`
-/

namespace A154336.P12925813837853067392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + (A154335 n - A008292 (n + 1))

end

end A154336.P12925813837853067392

/-!
# A154337: A triangular sequence of coefficients of polynomials: p(x,n)=(3*(x - 1)^(n)*Sum[(((-1)^(n)*(2*k + 1)^(n - 1)))*x^k, {k,0, Infinity}] -(x - 1)^(n + 1)*Sum[((-1)^(n + 1)*k^n)*x^k, {k, 0, Infinity}]/x)/2.

The programs for A154337, there is no canonical definition to state claims against.
-/

/-! ## A154337.P13958944096862281311

`(A154336(n)+A008292(n+1))/2`
-/

namespace A154337.P13958944096862281311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154336 n + A008292 (n + 1) : ℚ) / 2

end

end A154337.P13958944096862281311

/-! ## A154337.P2678158000755905541

`2*A060187(n+1)-A154334(n)`
-/

namespace A154337.P2678158000755905541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060187 (n + 1) - A154334 n

end

end A154337.P2678158000755905541

/-! ## A154337.P10381965123701645534

`(A154335(n)+A060187(n+1))/2`
-/

namespace A154337.P10381965123701645534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154335 n + A060187 (n + 1) : ℚ) / 2

end

end A154337.P10381965123701645534

/-! ## A154337.P12284485749272707922

`A154334(n)+A154336(n)-A154335(n)`
-/

namespace A154337.P12284485749272707922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154334 n + (A154336 n - A154335 n)

end

end A154337.P12284485749272707922

/-! ## A154337.P4365044996658933592

`A008292(n+1)+A154335(n)-A154334(n)`
-/

namespace A154337.P4365044996658933592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A154335 n - A154334 n)

end

end A154337.P4365044996658933592

/-! ## A154337.P10956541249187550904

`A154334(n)+A154335(n)-A060187(n+1)`
-/

namespace A154337.P10956541249187550904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154334 n + (A154335 n - A060187 (n + 1))

end

end A154337.P10956541249187550904

/-! ## A154337.P7611850533564799829

`A141689(n+1)+A154335(n)-A147565(n)`
-/

namespace A154337.P7611850533564799829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141689 (n + 1) + (A154335 n - A147565 n)

end

end A154337.P7611850533564799829

/-! ## A154337.P5844097385627823680

`A060187(n+1)+A154334(n)-A008292(n+1)`
-/

namespace A154337.P5844097385627823680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + (A154334 n - A008292 (n + 1))

end

end A154337.P5844097385627823680

/-! ## A154337.P9330443442265525696

`A060187(n+1)+A147565(n)-A141689(n+1)`
-/

namespace A154337.P9330443442265525696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) + (A147565 n - A141689 (n + 1))

end

end A154337.P9330443442265525696

/-!
# A154338: A triangular sequence of coefficients of polynomials: p(x,n)=(-(x - 1)^(n)*Sum[(((-1)^(n)*(2*k + 1)^(n - 1)))*x^k, {k,0, Infinity}]+2*(x - 1)^(n + 1)*Sum[((-1)^(n + 1)*k^n)*x^k, {k, 0, Infinity}]/x).

The programs for A154338, there is no canonical definition to state claims against.
-/

/-! ## A154338.P6388939314733283000

`2*A154334(n)-A154335(n)`
-/

namespace A154338.P6388939314733283000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154334 n - A154335 n

end

end A154338.P6388939314733283000

/-! ## A154338.P990279573045942235

`2*A141690(n)-A168524(n)`
-/

namespace A154338.P990279573045942235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141690 n - A168524 n

end

end A154338.P990279573045942235

/-! ## A154338.P13286162848150413703

`A176200(n)+1-A060187(n+1)`
-/

namespace A154338.P13286162848150413703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176200 n + (1 - A060187 (n + 1))

end

end A154338.P13286162848150413703

/-! ## A154338.P12998775636047877976

`2*A060187(n+1)-A154336(n)`
-/

namespace A154338.P12998775636047877976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060187 (n + 1) - A154336 n

end

end A154338.P12998775636047877976

/-! ## A154338.P8700266347096059791

`2*A008292(n+1)-A060187(n+1)`
-/

namespace A154338.P8700266347096059791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008292 (n + 1) - A060187 (n + 1)

end

end A154338.P8700266347096059791

/-! ## A154338.P9212383460435421882

`A154334(n)+A154337(n)-A154336(n)`
-/

namespace A154338.P9212383460435421882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154334 n + (A154337 n - A154336 n)

end

end A154338.P9212383460435421882

/-! ## A154338.P11214517130636476534

`A008292(n+1)+A154335(n)-A154336(n)`
-/

namespace A154338.P11214517130636476534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A154335 n - A154336 n)

end

end A154338.P11214517130636476534

/-! ## A154338.P13305462347122493255

`A008292(n+1)+A141690(n)-A168523(n)`
-/

namespace A154338.P13305462347122493255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A141690 n - A168523 n)

end

end A154338.P13305462347122493255

/-! ## A154338.P1466847655189283744

`A008292(n+1)+A060187(n+1)-A154335(n)`
-/

namespace A154338.P1466847655189283744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A060187 (n + 1) - A154335 n)

end

end A154338.P1466847655189283744

/-! ## A154338.P16350063945872614524

`A008292(n+1)+A141696(n+1)-A168524(n)`
-/

namespace A154338.P16350063945872614524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A141696 (n + 1) - A168524 n)

end

end A154338.P16350063945872614524

/-! ## A154338.P6272541959992288481

`A008292(A000027(n+1))+A008292(n+1)-A060187(n+1)`
-/

namespace A154338.P6272541959992288481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A000027 (n + 1)).toNat + (A008292 (n + 1) - A060187 (n + 1))

end

end A154338.P6272541959992288481

/-!
# A154340: a(n) = ( (5 + 2*sqrt(2))^n - (5 - 2*sqrt(2))^n )/(4*sqrt(2)).

The programs for A154340, the canonical program `A154340.P6255332264130227363` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154340 has offset 1).

The definition of A154340 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((5+2*sqrt(2))^(n+1)-(5-2*sqrt(2))^(n+1))/(4*sqrt(2))` (program `A154340.P16751393978699458939`, by `A154340.P16751393978699458939.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154340.P6255332264130227363

`10*a(n-1)-17*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154340

/-- `10*a(n-1)-17*a(n-2)` -/
def P6255332264130227363.Spec : Prop :=
  ∀ n, P6255332264130227363.a n = A154340 (n + 1)

theorem P6255332264130227363.correct : P6255332264130227363.Spec := by
  intro n
  simp only [A154340, Nat.add_sub_cancel]

end A154340

/-! ## A154340.P16751393978699458939

`((5+2*sqrt(2))^(n+1)-(5-2*sqrt(2))^(n+1))/(4*sqrt(2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154340.P16751393978699458939
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + 2 * Real.sqrt (2 : ℝ)) ^ (n + 1) - (5 - 2 * Real.sqrt (2 : ℝ)) ^ (n + 1)) / (4 * Real.sqrt (2 : ℝ))

end

end A154340.P16751393978699458939

namespace A154340

/-- `((5+2*sqrt(2))^(n+1)-(5-2*sqrt(2))^(n+1))/(4*sqrt(2))` -/
def P16751393978699458939.Spec : Prop :=
  ∀ n, P16751393978699458939.a n = (A154340 (n + 1) : ℝ)

theorem P16751393978699458939.correct : P16751393978699458939.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A154340, Nat.add_sub_cancel, A154340.P16751393978699458939.a, A154340.P6255332264130227363.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A154340, Nat.add_sub_cancel, A154340.P16751393978699458939.a, A154340.P6255332264130227363.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A154340

/-! ## A154340.P12680930712494280923

`ogf(1/(1-10x+17x^2))`
-/

namespace A154340.P12680930712494280923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -10, 17] n

end

end A154340.P12680930712494280923

namespace A154340

/-- `ogf(1/(1-10x+17x^2))` -/
def P12680930712494280923.Spec : Prop :=
  ∀ n, P12680930712494280923.a n = A154340 (n + 1)

end A154340

/-! ## A154340.P17330027239299868883

`∑[A164588(n)]`
-/

namespace A154340.P17330027239299868883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154340.P17330027239299868883

namespace A154340

/-- `∑[A164588(n)]` -/
def P17330027239299868883.Spec : Prop :=
  ∀ n, P17330027239299868883.a n = A154340 (n + 1)

end A154340

/-! ## A154340.P15002194763905779888

`A164547(n)-a(n-1)` with `a(0)=1`
-/

namespace A154340.P15002194763905779888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A164547 n - a (n - 1)

end

end A154340.P15002194763905779888

namespace A154340

/-- `A164547(n)-a(n-1)` -/
def P15002194763905779888.Spec : Prop :=
  ∀ n, P15002194763905779888.a n = A154340 (n + 1)

end A154340

/-! ## A154340.P6349770526488520332

`A084131(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A154340.P6349770526488520332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084131 n + 5 * a (n - 1)

end

end A154340.P6349770526488520332

namespace A154340

/-- `A084131(n)+5*a(n-1)` -/
def P6349770526488520332.Spec : Prop :=
  ∀ n, P6349770526488520332.a n = A154340 (n + 1)

end A154340

/-! ## A154340.P11634947021768679376

`a(n-1)+A164592(n)+a(n-1)` with `a(0)=1`
-/

namespace A154340.P11634947021768679376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A164592 n + a (n - 1))

end

end A154340.P11634947021768679376

namespace A154340

/-- `a(n-1)+A164592(n)+a(n-1)` -/
def P11634947021768679376.Spec : Prop :=
  ∀ n, P11634947021768679376.a n = A154340 (n + 1)

end A154340

/-! ## A154340.P5284357093774569201

`2*A164588(n)-A164592(n)`
-/

namespace A154340.P5284357093774569201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164588 n - A164592 n

end

end A154340.P5284357093774569201

namespace A154340

/-- `2*A164588(n)-A164592(n)` -/
def P5284357093774569201.Spec : Prop :=
  ∀ n, P5284357093774569201.a n = A154340 (n + 1)

end A154340

/-! ## A154340.P9791543734593532628

`A164588(n+1)-A164592(n+1)`
-/

namespace A154340.P9791543734593532628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164588 (n + 1) - A164592 (n + 1)

end

end A154340.P9791543734593532628

namespace A154340

/-- `A164588(n+1)-A164592(n+1)` -/
def P9791543734593532628.Spec : Prop :=
  ∀ n, P9791543734593532628.a n = A154340 (n + 1)

end A154340

/-!
# A154341: E(n,k), an additive decomposition of the Euler number (triangle read by rows).

The programs for A154341, there is no canonical definition to state claims against.
-/

/-! ## A154341.P14985500707441073601

`round(A163626(n)/A324136(A233543(n)))`
-/

namespace A154341.P14985500707441073601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A163626 n : ℚ) / (A324136 (A233543 n).toNat : ℚ))

end

end A154341.P14985500707441073601

/-! ## A154341.P13748330855881889378

`A008277(n+1)*A321934(A166350(n+1))`
-/

namespace A154341.P13748330855881889378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A321934 (A166350 (n + 1)).toNat

end

end A154341.P13748330855881889378

/-! ## A154341.P9951147959506296541

`A080417(n+1)+A010894(A080403(n+1))`
-/

namespace A154341.P9951147959506296541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080417 (n + 1) + A010894 ((A080403 (n + 1)).toNat + 21)

end

end A154341.P9951147959506296541

/-! ## A154341.P11170318580785859021

`A080417(n+1)+A025469(A001787(n))`
-/

namespace A154341.P11170318580785859021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080417 (n + 1) + A025469 (A001787 n).toNat

end

end A154341.P11170318580785859021

/-!
# A154342: T(n,k) an additive decomposition of the signed tangent number (triangle read by rows).

The programs for A154342, there is no canonical definition to state claims against.
-/

/-! ## A154342.P12879300084444780755

`A154345(n)/∑[char[∑[n]]]`
-/

namespace A154342.P12879300084444780755
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154345 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A154342.P12879300084444780755

/-! ## A154342.P9791575047682730797

`floor(A154345(n)/A002024(n+1))`
-/

namespace A154342.P9791575047682730797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A154345 n : ℚ) / (A002024 (n + 1) : ℚ)⌋

end

end A154342.P9791575047682730797

/-! ## A154342.P775035814079080384

`(A154345(n)/A002024(n+1))^(n/A028310(n))`
-/

namespace A154342.P775035814079080384
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A154345 n : ℚ) / (A002024 (n + 1) : ℚ) : ℝ) ^ ((n : ℚ) / (A028310 n : ℚ) : ℝ)

end

end A154342.P775035814079080384

/-! ## A154342.P7713069941131244863

`val(A000040(n+2), 2)+A154345(n)/A002024(n+1)`
-/

namespace A154342.P7713069941131244863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000040 (n + 2)).toNat 2 : ℚ) + (A154345 n : ℚ) / (A002024 (n + 1) : ℚ)

end

end A154342.P7713069941131244863

/-! ## A154342.P7144895175731872144

`val(A014963(2*n+1), 2)+A154345(n)/A002024(n+1)`
-/

namespace A154342.P7144895175731872144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A014963 (2 * n + 1)).toNat 2 : ℚ) + (A154345 n : ℚ) / (A002024 (n + 1) : ℚ)

end

end A154342.P7144895175731872144

/-! ## A154342.P8757236848378017224

`val(A020639(3*(n+2)), 4)+A154345(n)/A002024(n+1)`
-/

namespace A154342.P8757236848378017224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A020639 (3 * (n + 2))).toNat 4 : ℚ) + (A154345 n : ℚ) / (A002024 (n + 1) : ℚ)

end

end A154342.P8757236848378017224

/-! ## A154342.P15662987132036266043

`val(A172989(n+2), n+2)+A154345(n)/A002024(n+1)`
-/

namespace A154342.P15662987132036266043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A172989 (n + 2)).toNat (n + 2) : ℚ) + (A154345 n : ℚ) / (A002024 (n + 1) : ℚ)

end

end A154342.P15662987132036266043

/-! ## A154342.P8526650707024009025

`val(A317703(n+1), n+5)+A154345(n)/A002024(n+1)`
-/

namespace A154342.P8526650707024009025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A317703 (n + 1)).toNat (n + 5) : ℚ) + (A154345 n : ℚ) / (A002024 (n + 1) : ℚ)

end

end A154342.P8526650707024009025

/-!
# A154345: B(n,k) an additive decomposition of (4^n-2^n)*B(n), B(n) the Bernoulli numbers (triangle read by rows).

The programs for A154345, there is no canonical definition to state claims against.
-/

/-! ## A154345.P13712204449335393023

`∑[char[∑[n]]]*A154342(n)`
-/

namespace A154345.P13712204449335393023
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A154342 n

end

end A154345.P13712204449335393023

/-!
# A154346: a(n) = 12*a(n-1) - 28*a(n-2) for n > 1, with a(0)=1, a(1)=12.

The programs for A154346, the canonical program `A154346.P6928355079066789329` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154346 has offset 0).

The definition of A154346 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)-28*a(n-2)` (program `A154346.P6928355079066789329`, by `A154346.P6928355079066789329.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154346.P6928355079066789329

`12*a(n-1)-28*a(n-2)` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154346

/-- `12*a(n-1)-28*a(n-2)` -/
def P6928355079066789329.Spec : Prop :=
  ∀ n, P6928355079066789329.a n = A154346 n

theorem P6928355079066789329.correct : P6928355079066789329.Spec := by
  intro n
  simp only [A154346]

end A154346

/-! ## A154346.P14907247292491135465

`ogf(1/(1-12x+28x^2))`
-/

namespace A154346.P14907247292491135465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -12, 28] n

end

end A154346.P14907247292491135465

namespace A154346

/-- `ogf(1/(1-12x+28x^2))` -/
def P14907247292491135465.Spec : Prop :=
  ∀ n, P14907247292491135465.a n = A154346 n

end A154346

/-! ## A154346.P9267695873351981032

`2^n*A081179(n+1)`
-/

namespace A154346.P9267695873351981032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A081179 (n + 1)

end

end A154346.P9267695873351981032

namespace A154346

/-- `2^n*A081179(n+1)` -/
def P9267695873351981032.Spec : Prop :=
  ∀ n, P9267695873351981032.a n = A154346 n

end A154346

/-! ## A154346.P991173824200240761

`A147688(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A154346.P991173824200240761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A147688 n + 6 * a (n - 1)

end

end A154346.P991173824200240761

namespace A154346

/-- `A147688(n)+6*a(n-1)` -/
def P991173824200240761.Spec : Prop :=
  ∀ n, P991173824200240761.a n = A154346 n

end A154346

/-! ## A154346.P2452491842511622690

`∑[A102285(n)]*A000079(n)`
-/

namespace A154346.P2452491842511622690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A154346.P2452491842511622690

namespace A154346

/-- `∑[A102285(n)]*A000079(n)` -/
def P2452491842511622690.Spec : Prop :=
  ∀ n, P2452491842511622690.a n = A154346 n

end A154346

/-! ## A154346.P15780202304321790383

`∑[A011782(n)]*∑[A102285(n)]`
-/

namespace A154346.P15780202304321790383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A154346.P15780202304321790383

namespace A154346

/-- `∑[A011782(n)]*∑[A102285(n)]` -/
def P15780202304321790383.Spec : Prop :=
  ∀ n, P15780202304321790383.a n = A154346 n

end A154346

/-! ## A154346.P7226088125623767227

`A081179(n+1)*A143095(2*n)`
-/

namespace A154346.P7226088125623767227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081179 (n + 1) * A143095 (2 * n)

end

end A154346.P7226088125623767227

namespace A154346

/-- `A081179(n+1)*A143095(2*n)` -/
def P7226088125623767227.Spec : Prop :=
  ∀ n, P7226088125623767227.a n = A154346 n

end A154346

/-! ## A154346.P8877159015466169452

`A081179(n+1)*A135530(2*n+1)`
-/

namespace A154346.P8877159015466169452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081179 (n + 1) * A135530 (2 * n + 1)

end

end A154346.P8877159015466169452

namespace A154346

/-- `A081179(n+1)*A135530(2*n+1)` -/
def P8877159015466169452.Spec : Prop :=
  ∀ n, P8877159015466169452.a n = A154346 n

end A154346

/-! ## A154346.P3746615748669658656

`A081179(n+1)*A163864(2*n+1)`
-/

namespace A154346.P3746615748669658656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081179 (n + 1) * A163864 (2 * n + 1)

end

end A154346.P3746615748669658656

namespace A154346

/-- `A081179(n+1)*A163864(2*n+1)` -/
def P3746615748669658656.Spec : Prop :=
  ∀ n, P3746615748669658656.a n = A154346 n

end A154346

/-! ## A154346.P10741769693405059101

`A081179(n+1)*A164073(2*n+1)`
-/

namespace A154346.P10741769693405059101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081179 (n + 1) * A164073 (2 * n + 1)

end

end A154346.P10741769693405059101

namespace A154346

/-- `A081179(n+1)*A164073(2*n+1)` -/
def P10741769693405059101.Spec : Prop :=
  ∀ n, P10741769693405059101.a n = A154346 n

end A154346

/-! ## A154346.P3158908820453587699

`A081179(n+1)*A164587(2*n+1)`
-/

namespace A154346.P3158908820453587699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081179 (n + 1) * A164587 (2 * n + 1)

end

end A154346.P3158908820453587699

namespace A154346

/-- `A081179(n+1)*A164587(2*n+1)` -/
def P3158908820453587699.Spec : Prop :=
  ∀ n, P3158908820453587699.a n = A154346 n

end A154346

/-!
# A154347: a(n) = ( (7 + 2*sqrt(2))^n - (7 - 2*sqrt(2))^n )/(4*sqrt(2)).

The programs for A154347, the canonical program `A154347.P11043434117721028776` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154347 has offset 1).

The definition of A154347 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((7+2*sqrt(2))^(n+1)-(7-2*sqrt(2))^(n+1))/(4*sqrt(2))` (program `A154347.P6085009872648097726`, by `A154347.P6085009872648097726.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154347.P11043434117721028776

`14*a(n-1)-41*a(n-2)` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154347

/-- `14*a(n-1)-41*a(n-2)` -/
def P11043434117721028776.Spec : Prop :=
  ∀ n, P11043434117721028776.a n = A154347 (n + 1)

theorem P11043434117721028776.correct : P11043434117721028776.Spec := by
  intro n
  simp only [A154347, Nat.add_sub_cancel]

end A154347

/-! ## A154347.P6085009872648097726

`((7+2*sqrt(2))^(n+1)-(7-2*sqrt(2))^(n+1))/(4*sqrt(2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154347.P6085009872648097726
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((7 + 2 * Real.sqrt (2 : ℝ)) ^ (n + 1) - (7 - 2 * Real.sqrt (2 : ℝ)) ^ (n + 1)) / (4 * Real.sqrt (2 : ℝ))

end

end A154347.P6085009872648097726

namespace A154347

/-- `((7+2*sqrt(2))^(n+1)-(7-2*sqrt(2))^(n+1))/(4*sqrt(2))` -/
def P6085009872648097726.Spec : Prop :=
  ∀ n, P6085009872648097726.a n = (A154347 (n + 1) : ℝ)

theorem P6085009872648097726.correct : P6085009872648097726.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A154347, Nat.add_sub_cancel, A154347.P6085009872648097726.a, A154347.P11043434117721028776.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A154347, Nat.add_sub_cancel, A154347.P6085009872648097726.a, A154347.P11043434117721028776.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A154347

/-! ## A154347.P9509236004814180205

`A147689(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A154347.P9509236004814180205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A147689 n + 7 * a (n - 1)

end

end A154347.P9509236004814180205

namespace A154347

/-- `A147689(n)+7*a(n-1)` -/
def P9509236004814180205.Spec : Prop :=
  ∀ n, P9509236004814180205.a n = A154347 (n + 1)

end A154347

/-!
# A154348: a(n) = 16*a(n-1) - 56*a(n-2) for n>1, with a(0)=1, a(1)=16.

The programs for A154348, the canonical program `A154348.P14346989512096795668` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154348 has offset 0).

The definition of A154348 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*a(n-1)-56*a(n-2)` (program `A154348.P14346989512096795668`, by `A154348.P14346989512096795668.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154348.P14346989512096795668

`16*a(n-1)-56*a(n-2)` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154348

/-- `16*a(n-1)-56*a(n-2)` -/
def P14346989512096795668.Spec : Prop :=
  ∀ n, P14346989512096795668.a n = A154348 n

theorem P14346989512096795668.correct : P14346989512096795668.Spec := by
  intro n
  simp only [A154348]

end A154348

/-! ## A154348.P145951786489962348

`2^n*A081180(n+1)`
-/

namespace A154348.P145951786489962348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A081180 (n + 1)

end

end A154348.P145951786489962348

namespace A154348

/-- `2^n*A081180(n+1)` -/
def P145951786489962348.Spec : Prop :=
  ∀ n, P145951786489962348.a n = A154348 n

end A154348

/-! ## A154348.P12316672322512241251

`A145303(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A154348.P12316672322512241251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A145303 n + 8 * a (n - 1)

end

end A154348.P12316672322512241251

namespace A154348

/-- `A145303(n)+8*a(n-1)` -/
def P12316672322512241251.Spec : Prop :=
  ∀ n, P12316672322512241251.a n = A154348 n

end A154348

/-! ## A154348.P10189746098834090042

`∑[A164072(n)]*A000079(n)`
-/

namespace A154348.P10189746098834090042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164072 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A154348.P10189746098834090042

namespace A154348

/-- `∑[A164072(n)]*A000079(n)` -/
def P10189746098834090042.Spec : Prop :=
  ∀ n, P10189746098834090042.a n = A154348 n

end A154348

/-! ## A154348.P505597320121067692

`∑[A011782(n)]*∑[A164072(n)]`
-/

namespace A154348.P505597320121067692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164072 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A154348.P505597320121067692

namespace A154348

/-- `∑[A011782(n)]*∑[A164072(n)]` -/
def P505597320121067692.Spec : Prop :=
  ∀ n, P505597320121067692.a n = A154348 n

end A154348

/-! ## A154348.P17923140121030207802

`(A000225(n)+1)*∑[A164072(n)]`
-/

namespace A154348.P17923140121030207802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164072 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A154348.P17923140121030207802

namespace A154348

/-- `(A000225(n)+1)*∑[A164072(n)]` -/
def P17923140121030207802.Spec : Prop :=
  ∀ n, P17923140121030207802.a n = A154348 n

end A154348

/-! ## A154348.P5139423531211201486

`A081180(n+1)*A143095(2*n)`
-/

namespace A154348.P5139423531211201486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081180 (n + 1) * A143095 (2 * n)

end

end A154348.P5139423531211201486

namespace A154348

/-- `A081180(n+1)*A143095(2*n)` -/
def P5139423531211201486.Spec : Prop :=
  ∀ n, P5139423531211201486.a n = A154348 n

end A154348

/-! ## A154348.P657607914974798354

`A081180(n+1)*A135530(2*n+1)`
-/

namespace A154348.P657607914974798354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081180 (n + 1) * A135530 (2 * n + 1)

end

end A154348.P657607914974798354

namespace A154348

/-- `A081180(n+1)*A135530(2*n+1)` -/
def P657607914974798354.Spec : Prop :=
  ∀ n, P657607914974798354.a n = A154348 n

end A154348

/-! ## A154348.P11084016665521797453

`A081180(n+1)*A164073(2*n+1)`
-/

namespace A154348.P11084016665521797453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081180 (n + 1) * A164073 (2 * n + 1)

end

end A154348.P11084016665521797453

namespace A154348

/-- `A081180(n+1)*A164073(2*n+1)` -/
def P11084016665521797453.Spec : Prop :=
  ∀ n, P11084016665521797453.a n = A154348 n

end A154348

/-! ## A154348.P1988044376578614892

`A081180(n+1)/A081179(n+1)*A154346(n)`
-/

namespace A154348.P1988044376578614892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081180 (n + 1) : ℚ) / (A081179 (n + 1) : ℚ) * (A154346 n : ℚ)

end

end A154348.P1988044376578614892

namespace A154348

/-- `A081180(n+1)/A081179(n+1)*A154346(n)` -/
def P1988044376578614892.Spec : Prop :=
  ∀ n, P1988044376578614892.a n = (A154348 n : ℚ)

end A154348

/-!
# A154349: Sum of proper divisors minus the number of proper divisors of Motzkin number A001006(n).

The programs for A154349, the canonical program `A154349.P14725127565816757340` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154349 has offset 0).

The definition of A154349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154349.P14725127565816757340

`A152770(A001006(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A154349

/-- `A152770(A001006(n))` -/
def P14725127565816757340.Spec : Prop :=
  ∀ n, P14725127565816757340.a n = A154349 n

theorem P14725127565816757340.correct : P14725127565816757340.Spec := by
  intro n
  simp only [A154349]

end A154349

/-! ## A154349.P4009808345791620051

`A152982(n)+1-A152983(n)`
-/

namespace A154349.P4009808345791620051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152982 n + (1 - A152983 n)

end

end A154349.P4009808345791620051

namespace A154349

/-- `A152982(n)+1-A152983(n)` -/
def P4009808345791620051.Spec : Prop :=
  ∀ n, P4009808345791620051.a n = A154349 n

theorem P4009808345791620051.correct : P4009808345791620051.Spec := by
  intro n
  simp only [A154349, Nat.add_sub_cancel, A154349.P4009808345791620051.a, A154349.P14725127565816757340.a, A001006, A001006.P11199602840237397285.a, A152770, A152770.P4996422170920482869.a, A152982, A152982.P6897704514964440160.a, A152983, A152983.P16244814053645438890.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A062249, A062249.P5473932307129171226.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154349

/-! ## A154349.P14155940822050210552

`A152982(n)-A023443(A152983(n))`
-/

namespace A154349.P14155940822050210552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152982 n - A023443 (A152983 n).toNat

end

end A154349.P14155940822050210552

namespace A154349

/-- `A152982(n)-A023443(A152983(n))` -/
def P14155940822050210552.Spec : Prop :=
  ∀ n, P14155940822050210552.a n = A154349 n

end A154349

/-! ## A154349.P8268592983317211439

`A152770(A094287(n))`
-/

namespace A154349.P8268592983317211439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (A094287 n).toNat

end

end A154349.P8268592983317211439

namespace A154349

/-- `A152770(A094287(n))` -/
def P8268592983317211439.Spec : Prop :=
  ∀ n, P8268592983317211439.a n = A154349 n

end A154349

/-! ## A154349.P3906232596783111519

`A152770(A094288(n))`
-/

namespace A154349.P3906232596783111519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (A094288 n).toNat

end

end A154349.P3906232596783111519

namespace A154349

/-- `A152770(A094288(n))` -/
def P3906232596783111519.Spec : Prop :=
  ∀ n, P3906232596783111519.a n = A154349 n

end A154349

/-!
# A154350: a(n) = ( (9 + 2*sqrt(2))^n - (9 - 2*sqrt(2))^n )/(4*sqrt(2)).

The programs for A154350, the canonical program `A154350.P2891019086203421520` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154350 has offset 1).

The definition of A154350 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((9+2*sqrt(2))^(n+1)-(9-2*sqrt(2))^(n+1))/(4*sqrt(2))` (program `A154350.P5179346196604470030`, by `A154350.P5179346196604470030.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154350.P2891019086203421520

`18*a(n-1)-73*a(n-2)` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154350

/-- `18*a(n-1)-73*a(n-2)` -/
def P2891019086203421520.Spec : Prop :=
  ∀ n, P2891019086203421520.a n = A154350 (n + 1)

theorem P2891019086203421520.correct : P2891019086203421520.Spec := by
  intro n
  simp only [A154350, Nat.add_sub_cancel]

end A154350

/-! ## A154350.P5179346196604470030

`((9+2*sqrt(2))^(n+1)-(9-2*sqrt(2))^(n+1))/(4*sqrt(2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154350.P5179346196604470030
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((9 + 2 * Real.sqrt (2 : ℝ)) ^ (n + 1) - (9 - 2 * Real.sqrt (2 : ℝ)) ^ (n + 1)) / (4 * Real.sqrt (2 : ℝ))

end

end A154350.P5179346196604470030

namespace A154350

/-- `((9+2*sqrt(2))^(n+1)-(9-2*sqrt(2))^(n+1))/(4*sqrt(2))` -/
def P5179346196604470030.Spec : Prop :=
  ∀ n, P5179346196604470030.a n = (A154350 (n + 1) : ℝ)

theorem P5179346196604470030.correct : P5179346196604470030.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A154350, Nat.add_sub_cancel, A154350.P5179346196604470030.a, A154350.P2891019086203421520.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A154350, Nat.add_sub_cancel, A154350.P5179346196604470030.a, A154350.P2891019086203421520.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A154350

/-! ## A154350.P1546968826565096326

`A152267(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A154350.P1546968826565096326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A152267 n + 9 * a (n - 1)

end

end A154350.P1546968826565096326

namespace A154350

/-- `A152267(n)+9*a(n-1)` -/
def P1546968826565096326.Spec : Prop :=
  ∀ n, P1546968826565096326.a n = A154350 (n + 1)

end A154350

/-!
# A154352: a(n)=A132658(n+1)-2*A132658(n).

The programs for A154352, there is no canonical definition to state claims against.
-/

/-! ## A154352.P5624808497920636121

`A132658(n+1)-2*A132658(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154352.P5624808497920636121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132658 (n + 1) - 2 * A132658 n

end

end A154352.P5624808497920636121

/-! ## A154352.P1562762797495591644

`Δ[A132658(n)]-A132658(n)`
-/

namespace A154352.P1562762797495591644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A132658 n

end

end A154352.P1562762797495591644

/-!
# A154353: Triangle T(n,m) read by rows: T(n,m) = ( Eulerian(n,m) - Binomial(n,m)^2 )/2, n >= 4, 2 <= m = <= n-1.

The programs for A154353, there is no canonical definition to state claims against.
-/

/-! ## A154353.P10608850545341472084

`(A014449(n+2)-A014719(n+3))/2`
-/

namespace A154353.P10608850545341472084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014449 (n + 2) - A014719 (n + 3) : ℚ) / 2

end

end A154353.P10608850545341472084

/-! ## A154353.P5692936038228444586

`xor(A352419(A161704(n)), A352450(3*n+1))`
-/

namespace A154353.P5692936038228444586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A352419 (A161704 n).toNat) (A352450 (3 * n + 1))

end

end A154353.P5692936038228444586

/-!
# A154354: List of primes of the form 25n^2-36n+13 with n>=0.

The programs for A154354, there is no canonical definition to state claims against.
-/

/-! ## A154354.P5894885619059999913

`p?[A154355(xor(1, n))]`
-/

namespace A154354.P5894885619059999913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154355 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154354.P5894885619059999913

/-! ## A154354.P9513363479908664658

`p?[A154355(A004442(n))]`
-/

namespace A154354.P9513363479908664658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154355 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154354.P9513363479908664658

/-! ## A154354.P8502962648830440121

`p?[record[A154355(A007599(n))]]`
-/

namespace A154354.P8502962648830440121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154355 (A007599 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154354.P8502962648830440121

/-! ## A154354.P6594496731576116710

`p?[record[A154355(A028242(n))]]`
-/

namespace A154354.P6594496731576116710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154355 (A028242 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154354.P6594496731576116710

/-! ## A154354.P6844772688974953326

`p?[A154355(1-A132798(n)+n)]`
-/

namespace A154354.P6844772688974953326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154355 (1 - A132798 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154354.P6844772688974953326

/-!
# A154355: a(n) = 25*n^2 - 36*n + 13.

The programs for A154355, the canonical program `A154355.P16520686240140108538` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154355 has offset 0).

The definition of A154355 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `25*n²-36*n+13` (program `A154355.P16520686240140108538`, by `A154355.P16520686240140108538.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154355.P16520686240140108538

`25*n²-36*n+13`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154355

/-- `25*n²-36*n+13` -/
def P16520686240140108538.Spec : Prop :=
  ∀ n, P16520686240140108538.a n = A154355 n

theorem P16520686240140108538.correct : P16520686240140108538.Spec := by
  intro n
  simp only [A154355]

end A154355

/-! ## A154355.P8578879887544344635

`ceil(A154358(n)/50)`
-/

namespace A154355.P8578879887544344635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A154358 n : ℚ) / 50⌉

end

end A154355.P8578879887544344635

namespace A154355

/-- `ceil(A154358(n)/50)` -/
def P8578879887544344635.Spec : Prop :=
  ∀ n, P8578879887544344635.a n = A154355 n

end A154355

/-! ## A154355.P12188209045748331347

`ceil((A154360(n)/50)²)`
-/

namespace A154355.P12188209045748331347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A154360 n : ℚ) / 50) ^ 2⌉

end

end A154355.P12188209045748331347

namespace A154355

/-- `ceil((A154360(n)/50)²)` -/
def P12188209045748331347.Spec : Prop :=
  ∀ n, P12188209045748331347.a n = A154355 n

end A154355

/-! ## A154355.P3743244079892317255

`floor((A154358(n)/A154360(n))²)`
-/

namespace A154355.P3743244079892317255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A154358 n : ℚ) / (A154360 n : ℚ)) ^ 2⌋

end

end A154355.P3743244079892317255

namespace A154355

/-- `floor((A154358(n)/A154360(n))²)` -/
def P3743244079892317255.Spec : Prop :=
  ∀ n, P3743244079892317255.a n = A154355 n

end A154355

/-! ## A154355.P8931643056885510033

`round((A154360(n)/50)²)%Δ[A124080(n)]²`
-/

namespace A154355.P8931643056885510033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((A154360 n : ℚ) / 50) ^ 2)) ((f1 (n + 1) - f1 n) ^ 2)

end

end A154355.P8931643056885510033

namespace A154355

/-- `round((A154360(n)/50)²)%Δ[A124080(n)]²` -/
def P8931643056885510033.Spec : Prop :=
  ∀ n, P8931643056885510033.a n = A154355 n

end A154355

/-!
# A154356: Primes of the form 25n^2-14n+2 for n >= 0.

The programs for A154356, there is no canonical definition to state claims against.
-/

/-! ## A154356.P3026546516519402458

`p?[(5*n)²-14*n+2]`
-/

namespace A154356.P3026546516519402458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((5 * n) ^ 2 : ℤ) - (14 * n : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154356.P3026546516519402458

/-! ## A154356.P18291204997812545406

`∏{d}[p?[A154357(n)], #]`
-/

namespace A154356.P18291204997812545406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154357 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A154356.P18291204997812545406

/-! ## A154356.P3402502375761931478

`∏{d}[p?[ceil(A154359(n)/50)], #]`
-/

namespace A154356.P3402502375761931478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A154359 n : ℚ) / 50⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A154356.P3402502375761931478

/-! ## A154356.P1318514436265261312

`p?[A154357(n)]%A154358(n)`
-/

namespace A154356.P1318514436265261312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A154358 n)

end

end A154356.P1318514436265261312

/-!
# A154357: a(n) = 25*n^2 - 14*n + 2.

The programs for A154357, the canonical program `A154357.P13136961203844613279` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154357 has offset 0).

The definition of A154357 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `25*n²-14*n+2` (program `A154357.P13136961203844613279`, by `A154357.P13136961203844613279.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154357.P13136961203844613279

`25*n²-14*n+2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154357

/-- `25*n²-14*n+2` -/
def P13136961203844613279.Spec : Prop :=
  ∀ n, P13136961203844613279.a n = A154357 n

theorem P13136961203844613279.correct : P13136961203844613279.Spec := by
  intro n
  simp only [A154357]

end A154357

/-! ## A154357.P8975215947267240426

`∑[a(n-1)+50]` with `a(0)=2, a(1)=11`
-/

namespace A154357.P8975215947267240426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 11] fun n f1 =>
  f1 (n - 1) + 50

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154357.P8975215947267240426

namespace A154357

/-- `∑[a(n-1)+50]` -/
def P8975215947267240426.Spec : Prop :=
  ∀ n, (P8975215947267240426.a n : ℤ) = A154357 n

end A154357

/-! ## A154357.P7492990251769944433

`ceil(A154359(n)/50)`
-/

namespace A154357.P7492990251769944433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A154359 n : ℚ) / 50⌉

end

end A154357.P7492990251769944433

namespace A154357

/-- `ceil(A154359(n)/50)` -/
def P7492990251769944433.Spec : Prop :=
  ∀ n, P7492990251769944433.a n = A154357 n

end A154357

/-! ## A154357.P1613517693617036635

`2*(A080857(n)+n/2)`
-/

namespace A154357.P1613517693617036635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A080857 n : ℚ) + (n : ℚ) / 2)

end

end A154357.P1613517693617036635

namespace A154357

/-- `2*(A080857(n)+n/2)` -/
def P1613517693617036635.Spec : Prop :=
  ∀ n, P1613517693617036635.a n = (A154357 n : ℚ)

end A154357

/-! ## A154357.P3031326701723991654

`abs(A016862(n)-A183010(n))`
-/

namespace A154357.P3031326701723991654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016862 n - A183010 n|

end

end A154357.P3031326701723991654

namespace A154357

/-- `abs(A016862(n)-A183010(n))` -/
def P3031326701723991654.Spec : Prop :=
  ∀ n, P3031326701723991654.a n = A154357 n

end A154357

/-! ## A154357.P10595742708093160851

`or(round(A154359(n)/50), A000038(n))`
-/

namespace A154357.P10595742708093160851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A154359 n : ℚ) / 50)) (A000038 n)

end

end A154357.P10595742708093160851

namespace A154357

/-- `or(round(A154359(n)/50), A000038(n))` -/
def P10595742708093160851.Spec : Prop :=
  ∀ n, P10595742708093160851.a n = A154357 n

end A154357

/-! ## A154357.P703799892797307067

`round(A154359(n)/50)%A201255(n+1)`
-/

namespace A154357.P703799892797307067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A154359 n : ℚ) / 50)) (A201255 (n + 1))

end

end A154357.P703799892797307067

namespace A154357

/-- `round(A154359(n)/50)%A201255(n+1)` -/
def P703799892797307067.Spec : Prop :=
  ∀ n, P703799892797307067.a n = A154357 n

end A154357

/-!
# A154358: a(n) = 1250*n^2 - 1800*n + 649.

The programs for A154358, the canonical program `A154358.P10512341012428131107` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154358 has offset 0).

The definition of A154358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154358.P10512341012428131107

`50*A154355(n)-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A154358

/-- `50*A154355(n)-1` -/
def P10512341012428131107.Spec : Prop :=
  ∀ n, P10512341012428131107.a n = A154358 n

theorem P10512341012428131107.correct : P10512341012428131107.Spec := by
  intro n
  simp only [A154358]

end A154358

/-! ## A154358.P11598928466285859446

`A057428(A001316(n))+50*A154355(n)`
-/

namespace A154358.P11598928466285859446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A001316 n).toNat + 50 * A154355 n

end

end A154358.P11598928466285859446

namespace A154358

/-- `A057428(A001316(n))+50*A154355(n)` -/
def P11598928466285859446.Spec : Prop :=
  ∀ n, P11598928466285859446.a n = A154358 n

end A154358

/-! ## A154358.P6340089103873877977

`A008683(A007304(n+1))+50*A154355(n)`
-/

namespace A154358.P6340089103873877977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007304 (n + 1)).toNat + 50 * A154355 n

end

end A154358.P6340089103873877977

namespace A154358

/-- `A008683(A007304(n+1))+50*A154355(n)` -/
def P6340089103873877977.Spec : Prop :=
  ∀ n, P6340089103873877977.a n = A154358 n

end A154358

/-! ## A154358.P9390391553981815109

`A134824(A137735(n)²+1)+50*A154355(n)`
-/

namespace A154358.P9390391553981815109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A137735 n ^ 2 + 1).toNat + 50 * A154355 n

end

end A154358.P9390391553981815109

namespace A154358

/-- `A134824(A137735(n)²+1)+50*A154355(n)` -/
def P9390391553981815109.Spec : Prop :=
  ∀ n, P9390391553981815109.a n = A154358 n

end A154358

/-! ## A154358.P14498160182831306216

`A008683(A142318(n+1))+50*A154355(n)`
-/

namespace A154358.P14498160182831306216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A142318 (n + 1)).toNat + 50 * A154355 n

end

end A154358.P14498160182831306216

namespace A154358

/-- `A008683(A142318(n+1))+50*A154355(n)` -/
def P14498160182831306216.Spec : Prop :=
  ∀ n, P14498160182831306216.a n = A154358 n

end A154358

/-! ## A154358.P6891802578376681629

`A058331(abs(A154360(n)/10))`
-/

namespace A154358.P6891802578376681629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (SequenceMachineLib.roundAway |(A154360 n : ℚ) / 10|).toNat

end

end A154358.P6891802578376681629

namespace A154358

/-- `A058331(abs(A154360(n)/10))` -/
def P6891802578376681629.Spec : Prop :=
  ∀ n, P6891802578376681629.a n = A154358 n

end A154358

/-! ## A154358.P9512071222335529858

`A008683(A002148(n))+50*A154355(n)`
-/

namespace A154358.P9512071222335529858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002148 n).toNat + 50 * A154355 n

end

end A154358.P9512071222335529858

namespace A154358

/-- `A008683(A002148(n))+50*A154355(n)` -/
def P9512071222335529858.Spec : Prop :=
  ∀ n, P9512071222335529858.a n = A154358 n

end A154358

/-!
# A154359: a(n) = 1250*n^2 - 700*n + 99.

The programs for A154359, the canonical program `A154359.P8856775665768468533` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154359 has offset 0).

The definition of A154359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154359.P8856775665768468533

`50*A154357(n)-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A154359

/-- `50*A154357(n)-1` -/
def P8856775665768468533.Spec : Prop :=
  ∀ n, P8856775665768468533.a n = A154359 n

theorem P8856775665768468533.correct : P8856775665768468533.Spec := by
  intro n
  simp only [A154359]

end A154359

/-! ## A154359.P6490683355434518815

`2*Δ[A263231(n)]²+1`
-/

namespace A154359.P6490683355434518815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263231 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) ^ 2 + 1

end

end A154359.P6490683355434518815

namespace A154359

/-- `2*Δ[A263231(n)]²+1` -/
def P6490683355434518815.Spec : Prop :=
  ∀ n, P6490683355434518815.a n = A154359 n

end A154359

/-! ## A154359.P3309485471831092079

`xor(2*Δ[A263231(n)]², A033999(n)²)`
-/

namespace A154359.P3309485471831092079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263231 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * (f1 (n + 1) - f1 n) ^ 2) (A033999 n ^ 2)

end

end A154359.P3309485471831092079

namespace A154359

/-- `xor(2*Δ[A263231(n)]², A033999(n)²)` -/
def P3309485471831092079.Spec : Prop :=
  ∀ n, P3309485471831092079.a n = A154359 n

end A154359

/-! ## A154359.P10302185457440952355

`A058331(abs(Δ[A263231(n)]))`
-/

namespace A154359.P10302185457440952355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263231 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 |f1 (n + 1) - f1 n|.toNat

end

end A154359.P10302185457440952355

namespace A154359

/-- `A058331(abs(Δ[A263231(n)]))` -/
def P10302185457440952355.Spec : Prop :=
  ∀ n, P10302185457440952355.a n = A154359 n

end A154359

/-! ## A154359.P15616425926734556904

`A058331(abs(A154361(n)/10))`
-/

namespace A154359.P15616425926734556904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (SequenceMachineLib.roundAway |(A154361 n : ℚ) / 10|).toNat

end

end A154359.P15616425926734556904

namespace A154359

/-- `A058331(abs(A154361(n)/10))` -/
def P15616425926734556904.Spec : Prop :=
  ∀ n, P15616425926734556904.a n = A154359 n

end A154359

/-!
# A154360: a(n) = 250*n - 180.

The programs for A154360, the canonical program `A154360.P17051612500679607974` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154360 has offset 0).

The definition of A154360 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `250*n-180` (program `A154360.P17051612500679607974`, by `A154360.P17051612500679607974.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154360.P17051612500679607974

`250*n-180`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154360

/-- `250*n-180` -/
def P17051612500679607974.Spec : Prop :=
  ∀ n, P17051612500679607974.a n = A154360 n

theorem P17051612500679607974.correct : P17051612500679607974.Spec := by
  intro n
  simp only [A154360]

end A154360

/-!
# A154361: a(n) = 250*n - 70.

The programs for A154361, the canonical program `A154361.P2884813908049931046` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154361 has offset 0).

The definition of A154361 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `250*n-70` (program `A154361.P2884813908049931046`, by `A154361.P2884813908049931046.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154361.P2884813908049931046

`250*n-70`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154361

/-- `250*n-70` -/
def P2884813908049931046.Spec : Prop :=
  ∀ n, P2884813908049931046.a n = A154361 n

theorem P2884813908049931046.correct : P2884813908049931046.Spec := by
  intro n
  simp only [A154361]

end A154361

/-!
# A154362: a(1) = 1; for n > 1, a(n) is the least number m > a(n-1) where m is a multiple of each nonzero decimal digit of a(n-1).

The programs for A154362, there is no canonical definition to state claims against.
-/

/-! ## A154362.P4658014961322730770

`record[and(A032573(n+1), A322744(n+1))]`
-/

namespace A154362.P4658014961322730770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032573 (n + 1)) (A322744 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154362.P4658014961322730770

/-! ## A154362.P18344078475022305283

`record[and(A000010(2*(n+1)), A193507(n+2))]`
-/

namespace A154362.P18344078475022305283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000010 (2 * (n + 1))) (A193507 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154362.P18344078475022305283

/-! ## A154362.P16637139351382283738

`record[and(A320133(n), A346132(n+1))]`
-/

namespace A154362.P16637139351382283738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A320133 n) (A346132 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154362.P16637139351382283738

/-! ## A154362.P2911746441081575115

`∩[A120383(n+1), A346130(n+1)]`
-/

namespace A154362.P2911746441081575115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154362.P2911746441081575115

/-! ## A154362.P1033870236588123697

`∩[A324842(n+1), A346130(n+1)]`
-/

namespace A154362.P1033870236588123697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154362.P1033870236588123697

/-!
# A154363: Numbers from Bhargava's prime-universality criterion theorem.

The programs for A154363, there is no canonical definition to state claims against.
-/

/-! ## A154363.P3037377471977784670

`p?[∑[A063059(n)]]`
-/

namespace A154363.P3037377471977784670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063059 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154363.P3037377471977784670

/-! ## A154363.P10021406078606244506

`A000040(comp[2*(a(n-2)-7)])` with `a(0)=0, a(1)=16, a(2)=17`
-/

namespace A154363.P10021406078606244506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 16, 17] fun n f1 =>
  2 * (f1 (n - 2) - 7)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A154363.P10021406078606244506

/-! ## A154363.P12591895116151511258

`A049545(A258264(n+1))`
-/

namespace A154363.P12591895116151511258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (A258264 (n + 1)).toNat

end

end A154363.P12591895116151511258

/-! ## A154363.P13131674661989213291

`A049545(A341750(n+1))`
-/

namespace A154363.P13131674661989213291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (A341750 (n + 1)).toNat

end

end A154363.P13131674661989213291

/-! ## A154363.P8908607333966620431

`A005145(A077367(n+2))`
-/

namespace A154363.P8908607333966620431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A077367 (n + 2)).toNat

end

end A154363.P8908607333966620431

/-!
# A154370: Numbers k such that gpf(composite(k)) - lpf(composite(k)) is prime.

The programs for A154370, there is no canonical definition to state claims against.
-/

/-! ## A154370.P11310872173149565989

`A026238(A119613(n+1))`
-/

namespace A154370.P11310872173149565989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A119613 (n + 1)).toNat

end

end A154370.P11310872173149565989

/-! ## A154370.P16495695216502097840

`A062298(A119613(n+1)-1)`
-/

namespace A154370.P16495695216502097840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A119613 (n + 1) - 1).toNat

end

end A154370.P16495695216502097840

/-! ## A154370.P15305087250346513459

`A065855(A119613(n+1))%A001546(n)`
-/

namespace A154370.P15305087250346513459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065855 (A119613 (n + 1)).toNat) (A001546 n)

end

end A154370.P15305087250346513459

/-! ## A154370.P3524162713933530366

`or(A000007(n), A065855(A119613(n+1)))`
-/

namespace A154370.P3524162713933530366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A065855 (A119613 (n + 1)).toNat)

end

end A154370.P3524162713933530366

/-! ## A154370.P5584091575019187993

`∑{d}[A065855(A119613(n+1)), A000010(#)]`
-/

namespace A154370.P5584091575019187993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A119613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A154370.P5584091575019187993

/-! ## A154370.P1917078947618784317

`∏{d}[A065855(A119613(n+1)), A014963(#)]`
-/

namespace A154370.P1917078947618784317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A119613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A154370.P1917078947618784317

/-! ## A154370.P18348482893249020966

`char[A004442(n)]*A065855(A119613(n+1))`
-/

namespace A154370.P18348482893249020966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A065855 (A119613 (n + 1)).toNat

end

end A154370.P18348482893249020966

/-! ## A154370.P13368233037726379056

`char[A057979(n)]*A065855(A119613(n+1))`
-/

namespace A154370.P13368233037726379056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A065855 (A119613 (n + 1)).toNat

end

end A154370.P13368233037726379056

/-! ## A154370.P12225818514192891892

`A065855(A119613(n+1)%A158684(n+1))`
-/

namespace A154370.P12225818514192891892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (Int.tmod (A119613 (n + 1)) (A158684 (n + 1))).toNat

end

end A154370.P12225818514192891892

/-! ## A154370.P4079052284522130060

`A007318(C(2, n+1))*A065855(A119613(n+1))`
-/

namespace A154370.P4079052284522130060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A065855 (A119613 (n + 1)).toNat

end

end A154370.P4079052284522130060

/-! ## A154370.P6515519425222388644

`A062298(A119613(n+1))+A008683(A020483(n))`
-/

namespace A154370.P6515519425222388644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A119613 (n + 1)).toNat + A008683 (A020483 n).toNat

end

end A154370.P6515519425222388644

/-!
# A154372: Triangle T(n,k) = (k+1)^(n-k)*binomial(n,k).

The programs for A154372, the canonical program `A154372.P6688553905253270137` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154372 has offset 0).

The definition of A154372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3344 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154372.P6688553905253270137

`A007318(n)*A009998(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A154372

/-- `A007318(n)*A009998(n)` -/
def P6688553905253270137.Spec : Prop :=
  ∀ n, P6688553905253270137.a n = A154372 n

theorem P6688553905253270137.correct : P6688553905253270137.Spec := by
  intro n
  simp only [A154372]

end A154372

/-! ## A154372.P9193116066065751639

`A007318(n)*A009999(A061579(n))`
-/

namespace A154372.P9193116066065751639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A009999 (A061579 n).toNat

end

end A154372.P9193116066065751639

namespace A154372

/-- `A007318(n)*A009999(A061579(n))` -/
def P9193116066065751639.Spec : Prop :=
  ∀ n, P9193116066065751639.a n = A154372 n

end A154372

/-! ## A154372.P11063437012286409749

`C(A003056(n), A002262(n))*A009998(n)`
-/

namespace A154372.P11063437012286409749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n).toNat (A002262 n).toNat : ℤ) * A009998 n

end

end A154372.P11063437012286409749

namespace A154372

/-- `C(A003056(n), A002262(n))*A009998(n)` -/
def P11063437012286409749.Spec : Prop :=
  ∀ n, P11063437012286409749.a n = A154372 n

end A154372

/-! ## A154372.P13835675058487765214

`A002262(n+1)^A025581(n)*A007318(n)`
-/

namespace A154372.P13835675058487765214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 (n + 1) : ℚ) ^ (A025581 n : ℤ) * (A007318 n : ℚ)

end

end A154372.P13835675058487765214

namespace A154372

/-- `A002262(n+1)^A025581(n)*A007318(n)` -/
def P13835675058487765214.Spec : Prop :=
  ∀ n, P13835675058487765214.a n = (A154372 n : ℚ)

end A154372

/-! ## A154372.P3909269625081648279

`A007318(n)*A004248(A002024(n+1)+n+1)`
-/

namespace A154372.P3909269625081648279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A004248 (A002024 (n + 1) + (n + 1 : ℤ)).toNat

end

end A154372.P3909269625081648279

namespace A154372

/-- `A007318(n)*A004248(A002024(n+1)+n+1)` -/
def P3909269625081648279.Spec : Prop :=
  ∀ n, P3909269625081648279.a n = A154372 n

end A154372

/-! ## A154372.P8367012880009340383

`C(A003056(n), A002260(n+1)-1)*A009998(n)`
-/

namespace A154372.P8367012880009340383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003056 n).toNat (A002260 (n + 1) - 1).toNat : ℤ) * A009998 n

end

end A154372.P8367012880009340383

namespace A154372

/-- `C(A003056(n), A002260(n+1)-1)*A009998(n)` -/
def P8367012880009340383.Spec : Prop :=
  ∀ n, P8367012880009340383.a n = A154372 n

end A154372

/-! ## A154372.P8179061080859973371

`A176348(n)/A176346(n)*A002260(n+1)^A025581(n)`
-/

namespace A154372.P8179061080859973371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176348 n : ℚ) / (A176346 n : ℚ) * (A002260 (n + 1) : ℚ) ^ (A025581 n : ℤ)

end

end A154372.P8179061080859973371

namespace A154372

/-- `A176348(n)/A176346(n)*A002260(n+1)^A025581(n)` -/
def P8179061080859973371.Spec : Prop :=
  ∀ n, P8179061080859973371.a n = (A154372 n : ℚ)

end A154372

/-! ## A154372.P9905381538139705347

`A009998(n)/A098361(n)*A098361(A057944(n))`
-/

namespace A154372.P9905381538139705347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009998 n : ℚ) / (A098361 n : ℚ) * (A098361 (A057944 n).toNat : ℚ)

end

end A154372.P9905381538139705347

namespace A154372

/-- `A009998(n)/A098361(n)*A098361(A057944(n))` -/
def P9905381538139705347.Spec : Prop :=
  ∀ n, P9905381538139705347.a n = (A154372 n : ℚ)

end A154372

/-! ## A154372.P8387422096594053781

`A152818(n)/A233543(n)`
-/

namespace A154372.P8387422096594053781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152818 n : ℚ) / (A233543 n : ℚ)

end

end A154372.P8387422096594053781

namespace A154372

/-- `A152818(n)/A233543(n)` -/
def P8387422096594053781.Spec : Prop :=
  ∀ n, P8387422096594053781.a n = (A154372 n : ℚ)

end A154372

/-! ## A154372.P3741157084923341048

`gcd(A051129(n+1), A244130(n))*A007318(n)`
-/

namespace A154372.P3741157084923341048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A051129 (n + 1)) (A244130 n) : ℤ) * A007318 n

end

end A154372.P3741157084923341048

namespace A154372

/-- `gcd(A051129(n+1), A244130(n))*A007318(n)` -/
def P3741157084923341048.Spec : Prop :=
  ∀ n, P3741157084923341048.a n = A154372 n

end A154372

/-! ## A154372.P5769981755747845370

`gcd(A075513(n+1), A244131(n))`
-/

namespace A154372.P5769981755747845370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075513 (n + 1)) (A244131 n)

end

end A154372.P5769981755747845370

namespace A154372

/-- `gcd(A075513(n+1), A244131(n))` -/
def P5769981755747845370.Spec : Prop :=
  ∀ n, (P5769981755747845370.a n : ℤ) = A154372 n

end A154372

/-! ## A154372.P1495821599775678054

`A154120(n)/A098361(n)`
-/

namespace A154372.P1495821599775678054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154120 n : ℚ) / (A098361 n : ℚ)

end

end A154372.P1495821599775678054

namespace A154372

/-- `A154120(n)/A098361(n)` -/
def P1495821599775678054.Spec : Prop :=
  ∀ n, P1495821599775678054.a n = (A154372 n : ℚ)

end A154372

/-!
# A154374: a(n) = 1250*n^2 - 100*n + 1.

The programs for A154374, the canonical program `A154374.P15307449778477284844` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154374 has offset 1).

The definition of A154374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154374.P15307449778477284844

`2*(1-25*(n+1))²-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154374

/-- `2*(1-25*(n+1))²-1` -/
def P15307449778477284844.Spec : Prop :=
  ∀ n, P15307449778477284844.a n = A154374 (n + 1)

theorem P15307449778477284844.correct : P15307449778477284844.Spec := by
  intro n
  simp only [A154374, Nat.add_sub_cancel]

end A154374

/-! ## A154374.P9954786300556748066

`xor(1, 50*A154376(n+1))`
-/

namespace A154374.P9954786300556748066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (50 * A154376 (n + 1))

end

end A154374.P9954786300556748066

namespace A154374

/-- `xor(1, 50*A154376(n+1))` -/
def P9954786300556748066.Spec : Prop :=
  ∀ n, P9954786300556748066.a n = A154374 (n + 1)

end A154374

/-! ## A154374.P3798818385966119907

`A157511(n+1)%(1-A154375(n+1))`
-/

namespace A154374.P3798818385966119907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157511 (n + 1)) (1 - A154375 (n + 1))

end

end A154374.P3798818385966119907

namespace A154374

/-- `A157511(n+1)%(1-A154375(n+1))` -/
def P3798818385966119907.Spec : Prop :=
  ∀ n, P3798818385966119907.a n = A154374 (n + 1)

end A154374

/-! ## A154374.P18394575049320719087

`ceil(sqrt(A154376(n+1))*A154378(n+1))`
-/

namespace A154374.P18394575049320719087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A154376 (n + 1) : ℝ) * (A154378 (n + 1) : ℝ)⌉

end

end A154374.P18394575049320719087

namespace A154374

/-- `ceil(sqrt(A154376(n+1))*A154378(n+1))` -/
def P18394575049320719087.Spec : Prop :=
  ∀ n, P18394575049320719087.a n = A154374 (n + 1)

end A154374

/-! ## A154374.P8437783332751861229

`A056220(25*(n+1)-1)`
-/

namespace A154374.P8437783332751861229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (25 * (n + 1) - 1)

end

end A154374.P8437783332751861229

namespace A154374

/-- `A056220(25*(n+1)-1)` -/
def P8437783332751861229.Spec : Prop :=
  ∀ n, P8437783332751861229.a n = A154374 (n + 1)

end A154374

/-! ## A154374.P288888084343009825

`A105638(50*(n+1))`
-/

namespace A154374.P288888084343009825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105638 (50 * (n + 1))

end

end A154374.P288888084343009825

namespace A154374

/-- `A105638(50*(n+1))` -/
def P288888084343009825.Spec : Prop :=
  ∀ n, P288888084343009825.a n = A154374 (n + 1)

end A154374

/-! ## A154374.P8372428640354155323

`A047838(2*(25*(n+1)-1))`
-/

namespace A154374.P8372428640354155323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (2 * ((25 * (n + 1) : ℤ) - 1)).toNat

end

end A154374.P8372428640354155323

namespace A154374

/-- `A047838(2*(25*(n+1)-1))` -/
def P8372428640354155323.Spec : Prop :=
  ∀ n, P8372428640354155323.a n = A154374 (n + 1)

end A154374

/-!
# A154375: a(n) = 1250*n^2 + 100*n + 1.

The programs for A154375, the canonical program `A154375.P219219264748606008` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154375 has offset 1).

The definition of A154375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154375.P219219264748606008

`2*(25*(n+1)+1)²-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154375

/-- `2*(25*(n+1)+1)²-1` -/
def P219219264748606008.Spec : Prop :=
  ∀ n, P219219264748606008.a n = A154375 (n + 1)

theorem P219219264748606008.correct : P219219264748606008.Spec := by
  intro n
  simp only [A154375, Nat.add_sub_cancel]

end A154375

/-! ## A154375.P13587459356544166129

`A056220(5*5*(n+1)+1)`
-/

namespace A154375.P13587459356544166129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (5 * (5 * (n + 1)) + 1)

end

end A154375.P13587459356544166129

namespace A154375

/-- `A056220(5*5*(n+1)+1)` -/
def P13587459356544166129.Spec : Prop :=
  ∀ n, P13587459356544166129.a n = A154375 (n + 1)

theorem P13587459356544166129.correct : P13587459356544166129.Spec := by
  intro n
  simp only [A154375, Nat.add_sub_cancel, A154375.P13587459356544166129.a, A154375.P219219264748606008.a, A056220, A056220.P5045014962229294692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154375

/-! ## A154375.P3803062599383571126

`abs(A056220(A158060(n+1)))`
-/

namespace A154375.P3803062599383571126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056220 (A158060 (n + 1)).toNat|

end

end A154375.P3803062599383571126

namespace A154375

/-- `abs(A056220(A158060(n+1)))` -/
def P3803062599383571126.Spec : Prop :=
  ∀ n, P3803062599383571126.a n = A154375 (n + 1)

end A154375

/-! ## A154375.P4514408684426428482

`A060626(A158060(n+1)-1)/2`
-/

namespace A154375.P4514408684426428482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060626 (A158060 (n + 1) - 1).toNat : ℚ) / 2

end

end A154375.P4514408684426428482

namespace A154375

/-- `A060626(A158060(n+1)-1)/2` -/
def P4514408684426428482.Spec : Prop :=
  ∀ n, P4514408684426428482.a n = (A154375 (n + 1) : ℚ)

end A154375

/-! ## A154375.P8091916804010521931

`xor(A000038(n+1), A056220(A158060(n+1)))`
-/

namespace A154375.P8091916804010521931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 (n + 1)) (A056220 (A158060 (n + 1)).toNat)

end

end A154375.P8091916804010521931

namespace A154375

/-- `xor(A000038(n+1), A056220(A158060(n+1)))` -/
def P8091916804010521931.Spec : Prop :=
  ∀ n, P8091916804010521931.a n = A154375 (n + 1)

end A154375

/-! ## A154375.P17890921746242340104

`A056220(A158060(n+1))/A007318(C(2, n))`
-/

namespace A154375.P17890921746242340104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056220 (A158060 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A154375.P17890921746242340104

namespace A154375

/-- `A056220(A158060(n+1))/A007318(C(2, n))` -/
def P17890921746242340104.Spec : Prop :=
  ∀ n, P17890921746242340104.a n = (A154375 (n + 1) : ℚ)

end A154375

/-! ## A154375.P876864420224601184

`A326658(50*(n+1))`
-/

namespace A154375.P876864420224601184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326658 (50 * (n + 1))

end

end A154375.P876864420224601184

namespace A154375

/-- `A326658(50*(n+1))` -/
def P876864420224601184.Spec : Prop :=
  ∀ n, P876864420224601184.a n = A154375 (n + 1)

end A154375

/-! ## A154375.P16015031334273422877

`A074148((A158128(n+1)+1)/2)`
-/

namespace A154375.P16015031334273422877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (SequenceMachineLib.roundAway ((A158128 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A154375.P16015031334273422877

namespace A154375

/-- `A074148((A158128(n+1)+1)/2)` -/
def P16015031334273422877.Spec : Prop :=
  ∀ n, P16015031334273422877.a n = A154375 (n + 1)

end A154375

/-! ## A154375.P9225823310170990676

`A074148(A158127(n+1)/(2*(n+1)))`
-/

namespace A154375.P9225823310170990676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (SequenceMachineLib.roundAway ((A158127 (n + 1) : ℚ) / (2 * (n + 1) : ℚ))).toNat

end

end A154375.P9225823310170990676

namespace A154375

/-- `A074148(A158127(n+1)/(2*(n+1)))` -/
def P9225823310170990676.Spec : Prop :=
  ∀ n, P9225823310170990676.a n = A154375 (n + 1)

end A154375

/-!
# A154376: a(n) = 25*n^2 - 2*n.

The programs for A154376, the canonical program `A154376.P8612552982906614003` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154376 has offset 1).

The definition of A154376 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `25*(n+1)²-2*(n+1)` (program `A154376.P8612552982906614003`, by `A154376.P8612552982906614003.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154376.P8612552982906614003

`25*(n+1)²-2*(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154376

/-- `25*(n+1)²-2*(n+1)` -/
def P8612552982906614003.Spec : Prop :=
  ∀ n, P8612552982906614003.a n = A154376 (n + 1)

theorem P8612552982906614003.correct : P8612552982906614003.Spec := by
  intro n
  simp only [A154376, Nat.add_sub_cancel]

end A154376

/-! ## A154376.P16126322337732170161

`∑[a(n-1)+50]` with `a(0)=23`
-/

namespace A154376.P16126322337732170161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [23] fun n f1 =>
  f1 (n - 1) + 50

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154376.P16126322337732170161

namespace A154376

/-- `∑[a(n-1)+50]` -/
def P16126322337732170161.Spec : Prop :=
  ∀ n, (P16126322337732170161.a n : ℤ) = A154376 (n + 1)

end A154376

/-! ## A154376.P10027736458635315390

`∑[A053741(n)+3]`
-/

namespace A154376.P10027736458635315390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154376.P10027736458635315390

namespace A154376

/-- `∑[A053741(n)+3]` -/
def P10027736458635315390.Spec : Prop :=
  ∀ n, P10027736458635315390.a n = A154376 (n + 1)

end A154376

/-! ## A154376.P17478170336346524580

`∑[A053742(n)-2]`
-/

namespace A154376.P17478170336346524580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154376.P17478170336346524580

namespace A154376

/-- `∑[A053742(n)-2]` -/
def P17478170336346524580.Spec : Prop :=
  ∀ n, P17478170336346524580.a n = A154376 (n + 1)

end A154376

/-! ## A154376.P17598957290281079765

`∑[A053743(n)+1]/2`
-/

namespace A154376.P17598957290281079765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A154376.P17598957290281079765

namespace A154376

/-- `∑[A053743(n)+1]/2` -/
def P17598957290281079765.Spec : Prop :=
  ∀ n, P17598957290281079765.a n = (A154376 (n + 1) : ℚ)

end A154376

/-! ## A154376.P8299446530960328229

`(n+1)*(A008607(n+1)-2)`
-/

namespace A154376.P8299446530960328229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A008607 (n + 1) - 2)

end

end A154376.P8299446530960328229

namespace A154376

/-- `(n+1)*(A008607(n+1)-2)` -/
def P8299446530960328229.Spec : Prop :=
  ∀ n, P8299446530960328229.a n = A154376 (n + 1)

theorem P8299446530960328229.correct : P8299446530960328229.Spec := by
  intro n
  simp only [A154376, Nat.add_sub_cancel, A154376.P8299446530960328229.a, A154376.P8612552982906614003.a, A008607, A008607.P4608234580437606002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154376

/-! ## A154376.P521448002542897981

`(n+1)*(A158060(n+1)-3)`
-/

namespace A154376.P521448002542897981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158060 (n + 1) - 3)

end

end A154376.P521448002542897981

namespace A154376

/-- `(n+1)*(A158060(n+1)-3)` -/
def P521448002542897981.Spec : Prop :=
  ∀ n, P521448002542897981.a n = A154376 (n + 1)

theorem P521448002542897981.correct : P521448002542897981.Spec := by
  intro n
  simp only [A154376, Nat.add_sub_cancel, A154376.P521448002542897981.a, A154376.P8612552982906614003.a, A158060, A158060.P3137405967941569339.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154376

/-! ## A154376.P3649707343720709175

`(n+1)*(A183010(n+1)+n)`
-/

namespace A154376.P3649707343720709175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A183010 (n + 1) + (n : ℤ))

end

end A154376.P3649707343720709175

namespace A154376

/-- `(n+1)*(A183010(n+1)+n)` -/
def P3649707343720709175.Spec : Prop :=
  ∀ n, P3649707343720709175.a n = A154376 (n + 1)

theorem P3649707343720709175.correct : P3649707343720709175.Spec := by
  intro n
  simp only [A154376, Nat.add_sub_cancel, A154376.P3649707343720709175.a, A154376.P8612552982906614003.a, A183010, A183010.P1615208601139071033.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154376

/-! ## A154376.P5495222869436755116

`(n+1)*(A102603(n)+2+n)`
-/

namespace A154376.P5495222869436755116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A102603 n + 2 + (n : ℤ))

end

end A154376.P5495222869436755116

namespace A154376

/-- `(n+1)*(A102603(n)+2+n)` -/
def P5495222869436755116.Spec : Prop :=
  ∀ n, P5495222869436755116.a n = A154376 (n + 1)

theorem P5495222869436755116.correct : P5495222869436755116.Spec := by
  intro n
  simp only [A154376, Nat.add_sub_cancel, A154376.P5495222869436755116.a, A154376.P8612552982906614003.a, A102603, A102603.P3247987965860974134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154376

/-! ## A154376.P4769804193961482126

`A055438(n+1)%A173089(n+1)`
-/

namespace A154376.P4769804193961482126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055438 (n + 1)) (A173089 (n + 1))

end

end A154376.P4769804193961482126

namespace A154376

/-- `A055438(n+1)%A173089(n+1)` -/
def P4769804193961482126.Spec : Prop :=
  ∀ n, P4769804193961482126.a n = A154376 (n + 1)

end A154376

/-! ## A154376.P14033145856633640987

`A158220(n+1)%A157324(n+1)`
-/

namespace A154376.P14033145856633640987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158220 (n + 1)) (A157324 (n + 1))

end

end A154376.P14033145856633640987

namespace A154376

/-- `A158220(n+1)%A157324(n+1)` -/
def P14033145856633640987.Spec : Prop :=
  ∀ n, P14033145856633640987.a n = A154376 (n + 1)

end A154376

/-! ## A154376.P6280074822276064869

`A158228(n+1)%A158127(n+1)`
-/

namespace A154376.P6280074822276064869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158228 (n + 1)) (A158127 (n + 1))

end

end A154376.P6280074822276064869

namespace A154376

/-- `A158228(n+1)%A158127(n+1)` -/
def P6280074822276064869.Spec : Prop :=
  ∀ n, P6280074822276064869.a n = A154376 (n + 1)

end A154376

/-! ## A154376.P16109189332963277804

`A158307(n+1)%A210645(n+1)`
-/

namespace A154376.P16109189332963277804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158307 (n + 1)) (A210645 (n + 1))

end

end A154376.P16109189332963277804

namespace A154376

/-- `A158307(n+1)%A210645(n+1)` -/
def P16109189332963277804.Spec : Prop :=
  ∀ n, P16109189332963277804.a n = A154376 (n + 1)

end A154376

/-! ## A154376.P7887016688954726504

`A158364(n+1)%A210645(n+1)`
-/

namespace A154376.P7887016688954726504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158364 (n + 1)) (A210645 (n + 1))

end

end A154376.P7887016688954726504

namespace A154376

/-- `A158364(n+1)%A210645(n+1)` -/
def P7887016688954726504.Spec : Prop :=
  ∀ n, P7887016688954726504.a n = A154376 (n + 1)

end A154376

/-! ## A154376.P1289783568747357703

`A219259(2*(n+1))`
-/

namespace A154376.P1289783568747357703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219259 (2 * (n + 1))

end

end A154376.P1289783568747357703

namespace A154376

/-- `A219259(2*(n+1))` -/
def P1289783568747357703.Spec : Prop :=
  ∀ n, P1289783568747357703.a n = A154376 (n + 1)

end A154376

/-! ## A154376.P9933246093812950221

`(n+1)*A016885(A016897(n))`
-/

namespace A154376.P9933246093812950221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A016885 (A016897 n).toNat

end

end A154376.P9933246093812950221

namespace A154376

/-- `(n+1)*A016885(A016897(n))` -/
def P9933246093812950221.Spec : Prop :=
  ∀ n, P9933246093812950221.a n = A154376 (n + 1)

end A154376

/-! ## A154376.P7848761262652848175

`(n+1)*A047218(10*(n+1))`
-/

namespace A154376.P7848761262652848175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A047218 (10 * (n + 1))

end

end A154376.P7848761262652848175

namespace A154376

/-- `(n+1)*A047218(10*(n+1))` -/
def P7848761262652848175.Spec : Prop :=
  ∀ n, P7848761262652848175.a n = A154376 (n + 1)

end A154376

/-! ## A154376.P15652450790911962868

`∩[A013644(n+1), A219259(n+1)]`
-/

namespace A154376.P15652450790911962868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154376.P15652450790911962868

namespace A154376

/-- `∩[A013644(n+1), A219259(n+1)]` -/
def P15652450790911962868.Spec : Prop :=
  ∀ n, (P15652450790911962868.a n : ℤ) = A154376 (n + 1)

end A154376

/-!
# A154377: a(n) = 25*n^2 + 2*n.

The programs for A154377, the canonical program `A154377.P10400423215406257665` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154377 has offset 1).

The definition of A154377 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `25*(n+1)²+2*(n+1)` (program `A154377.P10400423215406257665`, by `A154377.P10400423215406257665.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154377.P10400423215406257665

`25*(n+1)²+2*(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154377

/-- `25*(n+1)²+2*(n+1)` -/
def P10400423215406257665.Spec : Prop :=
  ∀ n, (P10400423215406257665.a n : ℤ) = A154377 (n + 1)

theorem P10400423215406257665.correct : P10400423215406257665.Spec := by
  intro n
  simp only [A154377, Nat.add_sub_cancel]

end A154377

/-! ## A154377.P4807399772741878359

`∑[a(n-1)+50]` with `a(0)=27`
-/

namespace A154377.P4807399772741878359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [27] fun n f1 =>
  f1 (n - 1) + 50

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154377.P4807399772741878359

namespace A154377

/-- `∑[a(n-1)+50]` -/
def P4807399772741878359.Spec : Prop :=
  ∀ n, (P4807399772741878359.a n : ℤ) = A154377 (n + 1)

end A154377

/-! ## A154377.P6121217069141519484

`∑[A053742(n)+2]`
-/

namespace A154377.P6121217069141519484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154377.P6121217069141519484

namespace A154377

/-- `∑[A053742(n)+2]` -/
def P6121217069141519484.Spec : Prop :=
  ∀ n, P6121217069141519484.a n = A154377 (n + 1)

end A154377

/-! ## A154377.P3516178667018207665

`(n+1)*(A158060(n+1)+1)`
-/

namespace A154377.P3516178667018207665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158060 (n + 1) + 1)

end

end A154377.P3516178667018207665

namespace A154377

/-- `(n+1)*(A158060(n+1)+1)` -/
def P3516178667018207665.Spec : Prop :=
  ∀ n, P3516178667018207665.a n = A154377 (n + 1)

theorem P3516178667018207665.correct : P3516178667018207665.Spec := by
  intro n
  simp only [A154377, Nat.add_sub_cancel, A154377.P3516178667018207665.a, A154377.P10400423215406257665.a, A158060, A158060.P3137405967941569339.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154377

/-! ## A154377.P4274712769999483309

`(n+1)*(A008607(n+1)+2)`
-/

namespace A154377.P4274712769999483309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A008607 (n + 1) + 2)

end

end A154377.P4274712769999483309

namespace A154377

/-- `(n+1)*(A008607(n+1)+2)` -/
def P4274712769999483309.Spec : Prop :=
  ∀ n, P4274712769999483309.a n = A154377 (n + 1)

theorem P4274712769999483309.correct : P4274712769999483309.Spec := by
  intro n
  simp only [A154377, Nat.add_sub_cancel, A154377.P4274712769999483309.a, A154377.P10400423215406257665.a, A008607, A008607.P4608234580437606002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154377

/-! ## A154377.P8075724190539806634

`A158218(n+1)%A157286(n+1)`
-/

namespace A154377.P8075724190539806634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158218 (n + 1)) (A157286 (n + 1))

end

end A154377.P8075724190539806634

namespace A154377

/-- `A158218(n+1)%A157286(n+1)` -/
def P8075724190539806634.Spec : Prop :=
  ∀ n, P8075724190539806634.a n = A154377 (n + 1)

end A154377

/-! ## A154377.P15233875818763462366

`A173275(n+1)%A156635(n+1)`
-/

namespace A154377.P15233875818763462366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173275 (n + 1)) (A156635 (n + 1))

end

end A154377.P15233875818763462366

namespace A154377

/-- `A173275(n+1)%A156635(n+1)` -/
def P15233875818763462366.Spec : Prop :=
  ∀ n, P15233875818763462366.a n = A154377 (n + 1)

end A154377

/-! ## A154377.P11021482087342290377

`A158309(n+1)%A210645(n+1)`
-/

namespace A154377.P11021482087342290377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158309 (n + 1)) (A210645 (n + 1))

end

end A154377.P11021482087342290377

namespace A154377

/-- `A158309(n+1)%A210645(n+1)` -/
def P11021482087342290377.Spec : Prop :=
  ∀ n, P11021482087342290377.a n = A154377 (n + 1)

end A154377

/-! ## A154377.P7992002115905991220

`A158367(n+1)%A210645(n+1)`
-/

namespace A154377.P7992002115905991220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158367 (n + 1)) (A210645 (n + 1))

end

end A154377.P7992002115905991220

namespace A154377

/-- `A158367(n+1)%A210645(n+1)` -/
def P7992002115905991220.Spec : Prop :=
  ∀ n, P7992002115905991220.a n = A154377 (n + 1)

end A154377

/-! ## A154377.P273845296487568203

`A219259(2*n+3)`
-/

namespace A154377.P273845296487568203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219259 (2 * n + 3)

end

end A154377.P273845296487568203

namespace A154377

/-- `A219259(2*n+3)` -/
def P273845296487568203.Spec : Prop :=
  ∀ n, P273845296487568203.a n = A154377 (n + 1)

end A154377

/-! ## A154377.P726302764127251181

`∩[A031429(n+1), A219259(n+1)]`
-/

namespace A154377.P726302764127251181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154377.P726302764127251181

namespace A154377

/-- `∩[A031429(n+1), A219259(n+1)]` -/
def P726302764127251181.Spec : Prop :=
  ∀ n, (P726302764127251181.a n : ℤ) = A154377 (n + 1)

end A154377

/-! ## A154377.P12575614719998997059

`(n+1)*A016873(A008587(n+1))`
-/

namespace A154377.P12575614719998997059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A016873 (A008587 (n + 1)).toNat

end

end A154377.P12575614719998997059

namespace A154377

/-- `(n+1)*A016873(A008587(n+1))` -/
def P12575614719998997059.Spec : Prop :=
  ∀ n, P12575614719998997059.a n = A154377 (n + 1)

end A154377

/-! ## A154377.P14514294218035125602

`(n+1)*A016873(A075328(2*n+1))`
-/

namespace A154377.P14514294218035125602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A016873 (A075328 (2 * n + 1)).toNat

end

end A154377.P14514294218035125602

namespace A154377

/-- `(n+1)*A016873(A075328(2*n+1))` -/
def P14514294218035125602.Spec : Prop :=
  ∀ n, P14514294218035125602.a n = A154377 (n + 1)

end A154377

/-! ## A154377.P17667013011263827976

`(n+1)*A047221(A017281(n+1))`
-/

namespace A154377.P17667013011263827976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A047221 (A017281 (n + 1)).toNat

end

end A154377.P17667013011263827976

namespace A154377

/-- `(n+1)*A047221(A017281(n+1))` -/
def P17667013011263827976.Spec : Prop :=
  ∀ n, P17667013011263827976.a n = A154377 (n + 1)

end A154377

/-! ## A154377.P14397011949504848668

`A146975(A008607(n+1))`
-/

namespace A154377.P14397011949504848668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146975 (A008607 (n + 1)).toNat

end

end A154377.P14397011949504848668

namespace A154377

/-- `A146975(A008607(n+1))` -/
def P14397011949504848668.Spec : Prop :=
  ∀ n, P14397011949504848668.a n = A154377 (n + 1)

end A154377

/-! ## A154377.P13570316962871815245

`∩[A013642(n+1), A031429(n+1)]`
-/

namespace A154377.P13570316962871815245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154377.P13570316962871815245

namespace A154377

/-- `∩[A013642(n+1), A031429(n+1)]` -/
def P13570316962871815245.Spec : Prop :=
  ∀ n, (P13570316962871815245.a n : ℤ) = A154377 (n + 1)

end A154377

/-! ## A154377.P18441561668938660201

`∩[A013642(n+1), A219259(n+1)]`
-/

namespace A154377.P18441561668938660201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154377.P18441561668938660201

namespace A154377

/-- `∩[A013642(n+1), A219259(n+1)]` -/
def P18441561668938660201.Spec : Prop :=
  ∀ n, (P18441561668938660201.a n : ℤ) = A154377 (n + 1)

end A154377

/-! ## A154377.P10346691941530631048

`∩[A013647(n+1), A219259(n+1)]`
-/

namespace A154377.P10346691941530631048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154377.P10346691941530631048

namespace A154377

/-- `∩[A013647(n+1), A219259(n+1)]` -/
def P10346691941530631048.Spec : Prop :=
  ∀ n, (P10346691941530631048.a n : ℤ) = A154377 (n + 1)

end A154377

/-! ## A154377.P800912949563329058

`∩[A013642(n+1), A065008(n+1)]`
-/

namespace A154377.P800912949563329058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154377.P800912949563329058

namespace A154377

/-- `∩[A013642(n+1), A065008(n+1)]` -/
def P800912949563329058.Spec : Prop :=
  ∀ n, (P800912949563329058.a n : ℤ) = A154377 (n + 1)

end A154377

/-! ## A154377.P9524031792944409851

`∩[A065008(n+1), A219259(n+1)]`
-/

namespace A154377.P9524031792944409851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154377.P9524031792944409851

namespace A154377

/-- `∩[A065008(n+1), A219259(n+1)]` -/
def P9524031792944409851.Spec : Prop :=
  ∀ n, (P9524031792944409851.a n : ℤ) = A154377 (n + 1)

end A154377

/-!
# A154378: a(n) = 250*n - 10.

The programs for A154378, the canonical program `A154378.P10263444777157113463` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154378 has offset 1).

The definition of A154378 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `250*(n+1)-10` (program `A154378.P10263444777157113463`, by `A154378.P10263444777157113463.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154378.P10263444777157113463

`250*(n+1)-10`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154378

/-- `250*(n+1)-10` -/
def P10263444777157113463.Spec : Prop :=
  ∀ n, P10263444777157113463.a n = A154378 (n + 1)

theorem P10263444777157113463.correct : P10263444777157113463.Spec := by
  intro n
  simp only [A154378, Nat.add_sub_cancel]

end A154378

/-!
# A154379: a(n) = 250*n + 10.

The programs for A154379, the canonical program `A154379.P12497934838793252394` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154379 has offset 1).

The definition of A154379 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `250*(n+1)+10` (program `A154379.P12497934838793252394`, by `A154379.P12497934838793252394.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154379.P12497934838793252394

`250*(n+1)+10`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154379

/-- `250*(n+1)+10` -/
def P12497934838793252394.Spec : Prop :=
  ∀ n, (P12497934838793252394.a n : ℤ) = A154379 (n + 1)

theorem P12497934838793252394.correct : P12497934838793252394.Spec := by
  intro n
  simp only [A154379, Nat.add_sub_cancel]

end A154379

/-!
# A154380: The Riordan square of the Bell numbers. Triangle T(n, k), 0 <= k <= n, read by rows.

The programs for A154380, there is no canonical definition to state claims against.
-/

/-! ## A154380.P1347302579574567318

`A357583(n+1)+A357583(n)`
-/

namespace A154380.P1347302579574567318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357583 (n + 1) + A357583 n

end

end A154380.P1347302579574567318

/-!
# A154381: Row sums of Bell related number triangle A154380.

The programs for A154381, there is no canonical definition to state claims against.
-/

/-! ## A154381.P4498510973638979727

`ceil(cosh(sin(n)))*A129247(n)`
-/

namespace A154381.P4498510973638979727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A129247 n

end

end A154381.P4498510973638979727

/-! ## A154381.P8079419520767517609

`A108248(n)*A129247(n)`
-/

namespace A154381.P8079419520767517609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108248 n * A129247 n

end

end A154381.P8079419520767517609

/-! ## A154381.P14602335151848366540

`A129247(n)*A292563(n)`
-/

namespace A154381.P14602335151848366540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129247 n * A292563 n

end

end A154381.P14602335151848366540

/-! ## A154381.P13094850934427741287

`A000122(n²)*A129247(n)`
-/

namespace A154381.P13094850934427741287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A129247 n

end

end A154381.P13094850934427741287

/-!
# A154383: Powers of 4 at even indices, two times powers of 4 at odd indices.

The programs for A154383, the canonical program `A154383.P7046147364191783312` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154383 has offset 0).

The definition of A154383 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154383.P7046147364191783312

`4*a(n-2)` with `a(0)=1, a(1)=0, a(2)=4, a(3)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154383

/-- `4*a(n-2)` -/
def P7046147364191783312.Spec : Prop :=
  ∀ n, (P7046147364191783312.a n : ℤ) = A154383 n

theorem P7046147364191783312.correct : P7046147364191783312.Spec := by
  intro n
  simp only [A154383]

end A154383

/-! ## A154383.P8101265817979723814

`floor(2^(xor(1, n)-1))`
-/

namespace A154383.P8101265817979723814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((Nat.xor 1 n : ℤ) - 1 : ℤ)⌋

end

end A154383.P8101265817979723814

namespace A154383

/-- `floor(2^(xor(1, n)-1))` -/
def P8101265817979723814.Spec : Prop :=
  ∀ n, P8101265817979723814.a n = A154383 n

end A154383

/-! ## A154383.P5876481457519306961

`ogf((1+2x^3)/(1-4x^2))`
-/

namespace A154383.P5876481457519306961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 2] [1, 0, -4] n

end

end A154383.P5876481457519306961

namespace A154383

/-- `ogf((1+2x^3)/(1-4x^2))` -/
def P5876481457519306961.Spec : Prop :=
  ∀ n, P5876481457519306961.a n = A154383 n

end A154383

/-! ## A154383.P9892016917491294947

`floor(2^(n-2*and(1, n)))`
-/

namespace A154383.P9892016917491294947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - (2 * Nat.land 1 n : ℤ) : ℤ)⌋

end

end A154383.P9892016917491294947

namespace A154383

/-- `floor(2^(n-2*and(1, n)))` -/
def P9892016917491294947.Spec : Prop :=
  ∀ n, P9892016917491294947.a n = A154383 n

end A154383

/-! ## A154383.P10854065159868058985

`floor(2^((-1)^n-1+n))`
-/

namespace A154383.P10854065159868058985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((-1) ^ n - 1 + (n : ℤ) : ℤ)⌋

end

end A154383.P10854065159868058985

namespace A154383

/-- `floor(2^((-1)^n-1+n))` -/
def P10854065159868058985.Spec : Prop :=
  ∀ n, P10854065159868058985.a n = A154383 n

end A154383

/-! ## A154383.P17576547788877166228

`a(n-2)/(1/2)²` with `a(0)=1, a(1)=0, a(2)=4, a(3)=2`
-/

namespace A154383.P17576547788877166228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 4, 2] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A154383.P17576547788877166228

namespace A154383

/-- `a(n-2)/(1/2)²` -/
def P17576547788877166228.Spec : Prop :=
  ∀ n, P17576547788877166228.a n = (A154383 n : ℚ)

end A154383

/-! ## A154383.P17412623381999036268

`A131577(xor(1, n))`
-/

namespace A154383.P17412623381999036268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (Nat.xor 1 n)

end

end A154383.P17412623381999036268

namespace A154383

/-- `A131577(xor(1, n))` -/
def P17412623381999036268.Spec : Prop :=
  ∀ n, P17412623381999036268.a n = A154383 n

end A154383

/-! ## A154383.P14197210690400250967

`A034008(xor(1, n)+1)`
-/

namespace A154383.P14197210690400250967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (Nat.xor 1 n + 1)

end

end A154383.P14197210690400250967

namespace A154383

/-- `A034008(xor(1, n)+1)` -/
def P14197210690400250967.Spec : Prop :=
  ∀ n, P14197210690400250967.a n = A154383 n

end A154383

/-! ## A154383.P13032104142177242356

`A094373(xor(1, n))-1`
-/

namespace A154383.P13032104142177242356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (Nat.xor 1 n) - 1

end

end A154383.P13032104142177242356

namespace A154383

/-- `A094373(xor(1, n))-1` -/
def P13032104142177242356.Spec : Prop :=
  ∀ n, P13032104142177242356.a n = A154383 n

end A154383

/-! ## A154383.P13398618835858765274

`A056469(xor(1, n))-2`
-/

namespace A154383.P13398618835858765274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 (Nat.xor 1 n) - 2

end

end A154383.P13398618835858765274

namespace A154383

/-- `A056469(xor(1, n))-2` -/
def P13398618835858765274.Spec : Prop :=
  ∀ n, P13398618835858765274.a n = A154383 n

end A154383

/-! ## A154383.P18118441556546444053

`A158780(2*xor(1, n))`
-/

namespace A154383.P18118441556546444053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (2 * Nat.xor 1 n)

end

end A154383.P18118441556546444053

namespace A154383

/-- `A158780(2*xor(1, n))` -/
def P18118441556546444053.Spec : Prop :=
  ∀ n, P18118441556546444053.a n = A154383 n

end A154383

/-! ## A154383.P15101776245969108142

`A137776(xor(3, 2*n))`
-/

namespace A154383.P15101776245969108142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137776 (Nat.xor 3 (2 * n))

end

end A154383.P15101776245969108142

namespace A154383

/-- `A137776(xor(3, 2*n))` -/
def P15101776245969108142.Spec : Prop :=
  ∀ n, P15101776245969108142.a n = A154383 n

end A154383

/-! ## A154383.P7229895806633997569

`A131577(A004442(n))`
-/

namespace A154383.P7229895806633997569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A004442 n).toNat

end

end A154383.P7229895806633997569

namespace A154383

/-- `A131577(A004442(n))` -/
def P7229895806633997569.Spec : Prop :=
  ∀ n, P7229895806633997569.a n = A154383 n

end A154383

/-! ## A154383.P3922078497622685299

`A137776(A166519(n))`
-/

namespace A154383.P3922078497622685299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137776 (A166519 n).toNat

end

end A154383.P3922078497622685299

namespace A154383

/-- `A137776(A166519(n))` -/
def P3922078497622685299.Spec : Prop :=
  ∀ n, P3922078497622685299.a n = A154383 n

end A154383

/-! ## A154383.P8550097619343814867

`A034008(A014681(n+1))`
-/

namespace A154383.P8550097619343814867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A014681 (n + 1)).toNat

end

end A154383.P8550097619343814867

namespace A154383

/-- `A034008(A014681(n+1))` -/
def P8550097619343814867.Spec : Prop :=
  ∀ n, P8550097619343814867.a n = A154383 n

end A154383

/-! ## A154383.P14417199321764148178

`A034008(A103889(n+1))`
-/

namespace A154383.P14417199321764148178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A103889 (n + 1)).toNat

end

end A154383.P14417199321764148178

namespace A154383

/-- `A034008(A103889(n+1))` -/
def P14417199321764148178.Spec : Prop :=
  ∀ n, P14417199321764148178.a n = A154383 n

end A154383

/-! ## A154383.P3243826300317404138

`A131577(A033999(n)+n)`
-/

namespace A154383.P3243826300317404138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A033999 n + (n : ℤ)).toNat

end

end A154383.P3243826300317404138

namespace A154383

/-- `A131577(A033999(n)+n)` -/
def P3243826300317404138.Spec : Prop :=
  ∀ n, P3243826300317404138.a n = A154383 n

end A154383

/-! ## A154383.P5188281330127716035

`lcm(A034008(n), A224783(n))`
-/

namespace A154383.P5188281330127716035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034008 n) (A224783 n)

end

end A154383.P5188281330127716035

namespace A154383

/-- `lcm(A034008(n), A224783(n))` -/
def P5188281330127716035.Spec : Prop :=
  ∀ n, (P5188281330127716035.a n : ℤ) = A154383 n

end A154383

/-! ## A154383.P942551824002485124

`A034008(A065190(n+2)-1)`
-/

namespace A154383.P942551824002485124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A065190 (n + 2) - 1).toNat

end

end A154383.P942551824002485124

namespace A154383

/-- `A034008(A065190(n+2)-1)` -/
def P942551824002485124.Spec : Prop :=
  ∀ n, P942551824002485124.a n = A154383 n

end A154383

/-! ## A154383.P10095246315104621067

`A094373(A033999(n)+n)-1`
-/

namespace A154383.P10095246315104621067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (A033999 n + (n : ℤ)).toNat - 1

end

end A154383.P10095246315104621067

namespace A154383

/-- `A094373(A033999(n)+n)-1` -/
def P10095246315104621067.Spec : Prop :=
  ∀ n, P10095246315104621067.a n = A154383 n

end A154383

/-!
# A154384: Odd nonprimes with odd sum of digits.

The programs for A154384, the canonical program `A154384.P17645461441156692423` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154384 has offset 1).

The definition of A154384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154384.P316450492941266937

`record[A191558(A179085(n+1))]`
-/

namespace A154384.P316450492941266937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A179085 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154384.P316450492941266937

namespace A154384

/-- `record[A191558(A179085(n+1))]` -/
def P316450492941266937.Spec : Prop :=
  ∀ n, P316450492941266937.a n = A154384 (n + 1)

end A154384

/-! ## A154384.P3319648479272112859

`filter[A179085(n+1), A005171(#)]`
-/

namespace A154384.P3319648479272112859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A154384.P3319648479272112859

namespace A154384

/-- `filter[A179085(n+1), A005171(#)]` -/
def P3319648479272112859.Spec : Prop :=
  ∀ n, P3319648479272112859.a n = A154384 (n + 1)

end A154384

/-! ## A154384.P17645461441156692423

`filter[A014076(n+1), A179081(#)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A154384

/-- `filter[A014076(n+1), A179081(#)]` -/
def P17645461441156692423.Spec : Prop :=
  ∀ n, P17645461441156692423.a n = A154384 (n + 1)

theorem P17645461441156692423.correct : P17645461441156692423.Spec := by
  intro n
  simp only [A154384, Nat.add_sub_cancel]

end A154384

/-! ## A154384.P6452681709223673888

`filter[A179085(n+1), A292438(#)]`
-/

namespace A154384.P6452681709223673888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A154384.P6452681709223673888

namespace A154384

/-- `filter[A179085(n+1), A292438(#)]` -/
def P6452681709223673888.Spec : Prop :=
  ∀ n, P6452681709223673888.a n = A154384 (n + 1)

end A154384

/-! ## A154384.P13315569122744409125

`filter[A075065(2*n+1), A179081(#)]`
-/

namespace A154384.P13315569122744409125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075065 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179081 (f1 j).toNat = 1) n)

end

end A154384.P13315569122744409125

namespace A154384

/-- `filter[A075065(2*n+1), A179081(#)]` -/
def P13315569122744409125.Spec : Prop :=
  ∀ n, P13315569122744409125.a n = A154384 (n + 1)

end A154384

/-! ## A154384.P2354941031753918548

`filter[A135684(2*n+1), A179081(#)]`
-/

namespace A154384.P2354941031753918548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135684 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179081 (f1 j).toNat = 1) n)

end

end A154384.P2354941031753918548

namespace A154384

/-- `filter[A135684(2*n+1), A179081(#)]` -/
def P2354941031753918548.Spec : Prop :=
  ∀ n, P2354941031753918548.a n = A154384 (n + 1)

end A154384

/-! ## A154384.P196010118265454741

`filter[A191558(2*n+1), A179081(#)]`
-/

namespace A154384.P196010118265454741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179081 (f1 j).toNat = 1) n)

end

end A154384.P196010118265454741

namespace A154384

/-- `filter[A191558(2*n+1), A179081(#)]` -/
def P196010118265454741.Spec : Prop :=
  ∀ n, P196010118265454741.a n = A154384 (n + 1)

end A154384

/-! ## A154384.P15456063713985723581

`∩[A014076(n+1), A054684(n+1)]`
-/

namespace A154384.P15456063713985723581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154384.P15456063713985723581

namespace A154384

/-- `∩[A014076(n+1), A054684(n+1)]` -/
def P15456063713985723581.Spec : Prop :=
  ∀ n, (P15456063713985723581.a n : ℤ) = A154384 (n + 1)

end A154384

/-! ## A154384.P13886196607949877209

`∩[A014076(n+1), A179085(n+1)]`
-/

namespace A154384.P13886196607949877209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154384.P13886196607949877209

namespace A154384

/-- `∩[A014076(n+1), A179085(n+1)]` -/
def P13886196607949877209.Spec : Prop :=
  ∀ n, (P13886196607949877209.a n : ℤ) = A154384 (n + 1)

end A154384

/-! ## A154384.P11958479550766833213

`∩[A018252(n+1), A179085(n+1)]`
-/

namespace A154384.P11958479550766833213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154384.P11958479550766833213

namespace A154384

/-- `∩[A018252(n+1), A179085(n+1)]` -/
def P11958479550766833213.Spec : Prop :=
  ∀ n, (P11958479550766833213.a n : ℤ) = A154384 (n + 1)

end A154384

/-! ## A154384.P14179612864730534503

`∩[A056653(n+1), A179085(n+1)]`
-/

namespace A154384.P14179612864730534503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154384.P14179612864730534503

namespace A154384

/-- `∩[A056653(n+1), A179085(n+1)]` -/
def P14179612864730534503.Spec : Prop :=
  ∀ n, (P14179612864730534503.a n : ℤ) = A154384 (n + 1)

end A154384

/-! ## A154384.P14698024660927049523

`∩[A065090(n+1), A179085(n+1)]`
-/

namespace A154384.P14698024660927049523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154384.P14698024660927049523

namespace A154384

/-- `∩[A065090(n+1), A179085(n+1)]` -/
def P14698024660927049523.Spec : Prop :=
  ∀ n, (P14698024660927049523.a n : ℤ) = A154384 (n + 1)

end A154384

/-! ## A154384.P601286092677111363

`∩[A141468(n+1), A179085(n+1)]`
-/

namespace A154384.P601286092677111363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154384.P601286092677111363

namespace A154384

/-- `∩[A141468(n+1), A179085(n+1)]` -/
def P601286092677111363.Spec : Prop :=
  ∀ n, (P601286092677111363.a n : ℤ) = A154384 (n + 1)

end A154384

/-! ## A154384.P15361403178879861301

`∩[A164276(n+1), A179085(n+1)]`
-/

namespace A154384.P15361403178879861301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154384.P15361403178879861301

namespace A154384

/-- `∩[A164276(n+1), A179085(n+1)]` -/
def P15361403178879861301.Spec : Prop :=
  ∀ n, (P15361403178879861301.a n : ℤ) = A154384 (n + 1)

end A154384

/-! ## A154384.P4970175329284287877

`∩[A179085(n+1), A264828(n+1)]`
-/

namespace A154384.P4970175329284287877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154384.P4970175329284287877

namespace A154384

/-- `∩[A179085(n+1), A264828(n+1)]` -/
def P4970175329284287877.Spec : Prop :=
  ∀ n, (P4970175329284287877.a n : ℤ) = A154384 (n + 1)

end A154384

/-! ## A154384.P9658300006397706273

`∩[A179085(n+1), A347202(n+1)]`
-/

namespace A154384.P9658300006397706273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154384.P9658300006397706273

namespace A154384

/-- `∩[A179085(n+1), A347202(n+1)]` -/
def P9658300006397706273.Spec : Prop :=
  ∀ n, (P9658300006397706273.a n : ℤ) = A154384 (n + 1)

end A154384

/-! ## A154384.P11449522725620218089

`eq[cosh(A107279(n)), A179081(n)]`
-/

namespace A154384.P11449522725620218089
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (A107279 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A154384.P11449522725620218089

namespace A154384

/-- `eq[cosh(A107279(n)), A179081(n)]` -/
def P11449522725620218089.Spec : Prop :=
  ∀ n, (P11449522725620218089.a n : ℤ) = A154384 (n + 1)

end A154384

/-! ## A154384.P4517204402842099841

`eq[A004013(A118881(n)), A107279(n)]`
-/

namespace A154384.P4517204402842099841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (A118881 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154384.P4517204402842099841

namespace A154384

/-- `eq[A004013(A118881(n)), A107279(n)]` -/
def P4517204402842099841.Spec : Prop :=
  ∀ n, (P4517204402842099841.a n : ℤ) = A154384 (n + 1)

end A154384

/-! ## A154384.P9272075727406431769

`eq[A107279(n), A142150(A171797(n))]`
-/

namespace A154384.P9272075727406431769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A171797 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154384.P9272075727406431769

namespace A154384

/-- `eq[A107279(n), A142150(A171797(n))]` -/
def P9272075727406431769.Spec : Prop :=
  ∀ n, (P9272075727406431769.a n : ℤ) = A154384 (n + 1)

end A154384

/-!
# A154385: Primes such that number of prime digits > number of nonprime digits.

The programs for A154385, the canonical program `A154385.P5436406511082933659` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154385 has offset 1).

The definition of A154385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154385.P5436406511082933659

`p?[A085557(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A154385

/-- `p?[A085557(n+1)]` -/
def P5436406511082933659.Spec : Prop :=
  ∀ n, P5436406511082933659.a n = A154385 (n + 1)

theorem P5436406511082933659.correct : P5436406511082933659.Spec := by
  intro n
  simp only [A154385, Nat.add_sub_cancel]

end A154385

/-! ## A154385.P11844572570278929603

`filter[A085557(n+1), A010051(#)]`
-/

namespace A154385.P11844572570278929603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A154385.P11844572570278929603

namespace A154385

/-- `filter[A085557(n+1), A010051(#)]` -/
def P11844572570278929603.Spec : Prop :=
  ∀ n, P11844572570278929603.a n = A154385 (n + 1)

end A154385

/-! ## A154385.P3237707758640973795

`filter[A085557(n+1), A323153(#)]`
-/

namespace A154385.P3237707758640973795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A154385.P3237707758640973795

namespace A154385

/-- `filter[A085557(n+1), A323153(#)]` -/
def P3237707758640973795.Spec : Prop :=
  ∀ n, P3237707758640973795.a n = A154385 (n + 1)

end A154385

/-! ## A154385.P9951427736052088324

`∩[A000040(n+1), A085557(n+1)]`
-/

namespace A154385.P9951427736052088324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154385.P9951427736052088324

namespace A154385

/-- `∩[A000040(n+1), A085557(n+1)]` -/
def P9951427736052088324.Spec : Prop :=
  ∀ n, (P9951427736052088324.a n : ℤ) = A154385 (n + 1)

end A154385

/-! ## A154385.P14342653256547041636

`∩[A008578(n+1), A085557(n+1)]`
-/

namespace A154385.P14342653256547041636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154385.P14342653256547041636

namespace A154385

/-- `∩[A008578(n+1), A085557(n+1)]` -/
def P14342653256547041636.Spec : Prop :=
  ∀ n, (P14342653256547041636.a n : ℤ) = A154385 (n + 1)

end A154385

/-! ## A154385.P7896910403565847751

`∩[A033946(n+1), A085557(n+1)]`
-/

namespace A154385.P7896910403565847751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154385.P7896910403565847751

namespace A154385

/-- `∩[A033946(n+1), A085557(n+1)]` -/
def P7896910403565847751.Spec : Prop :=
  ∀ n, (P7896910403565847751.a n : ℤ) = A154385 (n + 1)

end A154385

/-! ## A154385.P2089488101311941375

`∩[A046022(n+1), A085557(n+1)]`
-/

namespace A154385.P2089488101311941375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154385.P2089488101311941375

namespace A154385

/-- `∩[A046022(n+1), A085557(n+1)]` -/
def P2089488101311941375.Spec : Prop :=
  ∀ n, (P2089488101311941375.a n : ℤ) = A154385 (n + 1)

end A154385

/-! ## A154385.P8903850982581228394

`∩[A053813(n+1), A085557(n+1)]`
-/

namespace A154385.P8903850982581228394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154385.P8903850982581228394

namespace A154385

/-- `∩[A053813(n+1), A085557(n+1)]` -/
def P8903850982581228394.Spec : Prop :=
  ∀ n, (P8903850982581228394.a n : ℤ) = A154385 (n + 1)

end A154385

/-! ## A154385.P10103476522805264897

`∩[A062972(n+1), A085557(n+1)]`
-/

namespace A154385.P10103476522805264897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154385.P10103476522805264897

namespace A154385

/-- `∩[A062972(n+1), A085557(n+1)]` -/
def P10103476522805264897.Spec : Prop :=
  ∀ n, (P10103476522805264897.a n : ℤ) = A154385 (n + 1)

end A154385

/-! ## A154385.P13071509083632826622

`∩[A066050(n+1), A085557(n+1)]`
-/

namespace A154385.P13071509083632826622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154385.P13071509083632826622

namespace A154385

/-- `∩[A066050(n+1), A085557(n+1)]` -/
def P13071509083632826622.Spec : Prop :=
  ∀ n, (P13071509083632826622.a n : ℤ) = A154385 (n + 1)

end A154385

/-! ## A154385.P7411409608362611605

`∩[A067126(n+1), A085557(n+1)]`
-/

namespace A154385.P7411409608362611605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154385.P7411409608362611605

namespace A154385

/-- `∩[A067126(n+1), A085557(n+1)]` -/
def P7411409608362611605.Spec : Prop :=
  ∀ n, (P7411409608362611605.a n : ℤ) = A154385 (n + 1)

end A154385

/-! ## A154385.P12605011297755724705

`∩[A085557(n+1), A106118(n+1)]`
-/

namespace A154385.P12605011297755724705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154385.P12605011297755724705

namespace A154385

/-- `∩[A085557(n+1), A106118(n+1)]` -/
def P12605011297755724705.Spec : Prop :=
  ∀ n, (P12605011297755724705.a n : ℤ) = A154385 (n + 1)

end A154385

/-! ## A154385.P17623520534687953130

`∩[A085557(n+1), A116974(n+1)]`
-/

namespace A154385.P17623520534687953130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154385.P17623520534687953130

namespace A154385

/-- `∩[A085557(n+1), A116974(n+1)]` -/
def P17623520534687953130.Spec : Prop :=
  ∀ n, (P17623520534687953130.a n : ℤ) = A154385 (n + 1)

end A154385

/-! ## A154385.P1369397859497717776

`∩[A085557(n+1), A158611(n+1)]`
-/

namespace A154385.P1369397859497717776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154385.P1369397859497717776

namespace A154385

/-- `∩[A085557(n+1), A158611(n+1)]` -/
def P1369397859497717776.Spec : Prop :=
  ∀ n, (P1369397859497717776.a n : ℤ) = A154385 (n + 1)

end A154385

/-! ## A154385.P2093479861056974811

`∩[A085557(n+1), A175787(n+1)]`
-/

namespace A154385.P2093479861056974811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154385.P2093479861056974811

namespace A154385

/-- `∩[A085557(n+1), A175787(n+1)]` -/
def P2093479861056974811.Spec : Prop :=
  ∀ n, (P2093479861056974811.a n : ℤ) = A154385 (n + 1)

end A154385

/-! ## A154385.P15261567542534636904

`∩[A085557(n+1), A179336(n+1)]`
-/

namespace A154385.P15261567542534636904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154385.P15261567542534636904

namespace A154385

/-- `∩[A085557(n+1), A179336(n+1)]` -/
def P15261567542534636904.Spec : Prop :=
  ∀ n, (P15261567542534636904.a n : ℤ) = A154385 (n + 1)

end A154385

/-! ## A154385.P12308169338372544078

`∩[A085557(n+1), A182986(n+1)]`
-/

namespace A154385.P12308169338372544078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154385.P12308169338372544078

namespace A154385

/-- `∩[A085557(n+1), A182986(n+1)]` -/
def P12308169338372544078.Spec : Prop :=
  ∀ n, (P12308169338372544078.a n : ℤ) = A154385 (n + 1)

end A154385

/-! ## A154385.P3153251181236141789

`∩[A085557(n+1), A251595(n+1)]`
-/

namespace A154385.P3153251181236141789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154385.P3153251181236141789

namespace A154385

/-- `∩[A085557(n+1), A251595(n+1)]` -/
def P3153251181236141789.Spec : Prop :=
  ∀ n, (P3153251181236141789.a n : ℤ) = A154385 (n + 1)

end A154385

/-! ## A154385.P4549925986982474099

`∩[A085557(n+1), A301987(n+1)]`
-/

namespace A154385.P4549925986982474099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154385.P4549925986982474099

namespace A154385

/-- `∩[A085557(n+1), A301987(n+1)]` -/
def P4549925986982474099.Spec : Prop :=
  ∀ n, (P4549925986982474099.a n : ℤ) = A154385 (n + 1)

end A154385

/-! ## A154385.P16050848764743751460

`∩[A307750(n+1), A085557(n+1)]`
-/

namespace A154385.P16050848764743751460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154385.P16050848764743751460

namespace A154385

/-- `∩[A307750(n+1), A085557(n+1)]` -/
def P16050848764743751460.Spec : Prop :=
  ∀ n, (P16050848764743751460.a n : ℤ) = A154385 (n + 1)

end A154385

/-!
# A154386: Primes such that number of prime digits < number of nonprime digits.

The programs for A154386, the canonical program `A154386.P1065246102071994156` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154386 has offset 1).

The definition of A154386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1063 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154386.P1065246102071994156

`p?[A085558(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A154386

/-- `p?[A085558(n+1)]` -/
def P1065246102071994156.Spec : Prop :=
  ∀ n, P1065246102071994156.a n = A154386 (n + 1)

theorem P1065246102071994156.correct : P1065246102071994156.Spec := by
  intro n
  simp only [A154386, Nat.add_sub_cancel]

end A154386

/-! ## A154386.P10769658856761413582

`filter[A085558(n+2), A010051(#)]`
-/

namespace A154386.P10769658856761413582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085558 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A154386.P10769658856761413582

namespace A154386

/-- `filter[A085558(n+2), A010051(#)]` -/
def P10769658856761413582.Spec : Prop :=
  ∀ n, P10769658856761413582.a n = A154386 (n + 1)

end A154386

/-! ## A154386.P12812620188451108281

`∩[A000040(n+1), A085558(n+1)]`
-/

namespace A154386.P12812620188451108281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154386.P12812620188451108281

namespace A154386

/-- `∩[A000040(n+1), A085558(n+1)]` -/
def P12812620188451108281.Spec : Prop :=
  ∀ n, (P12812620188451108281.a n : ℤ) = A154386 (n + 1)

end A154386

/-! ## A154386.P258225745062839367

`∩[A004139(n+1), A085558(n+1)]`
-/

namespace A154386.P258225745062839367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154386.P258225745062839367

namespace A154386

/-- `∩[A004139(n+1), A085558(n+1)]` -/
def P258225745062839367.Spec : Prop :=
  ∀ n, (P258225745062839367.a n : ℤ) = A154386 (n + 1)

end A154386

/-! ## A154386.P9066428286773774805

`∩[A045319(n+1), A085558(n+1)]`
-/

namespace A154386.P9066428286773774805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154386.P9066428286773774805

namespace A154386

/-- `∩[A045319(n+1), A085558(n+1)]` -/
def P9066428286773774805.Spec : Prop :=
  ∀ n, (P9066428286773774805.a n : ℤ) = A154386 (n + 1)

end A154386

/-! ## A154386.P14773363523024933733

`∩[A045344(n+1), A085558(n+1)]`
-/

namespace A154386.P14773363523024933733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154386.P14773363523024933733

namespace A154386

/-- `∩[A045344(n+1), A085558(n+1)]` -/
def P14773363523024933733.Spec : Prop :=
  ∀ n, (P14773363523024933733.a n : ℤ) = A154386 (n + 1)

end A154386

/-! ## A154386.P732880445021107285

`∩[A065091(n+1), A085558(n+1)]`
-/

namespace A154386.P732880445021107285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154386.P732880445021107285

namespace A154386

/-- `∩[A065091(n+1), A085558(n+1)]` -/
def P732880445021107285.Spec : Prop :=
  ∀ n, (P732880445021107285.a n : ℤ) = A154386 (n + 1)

end A154386

/-! ## A154386.P13373212227487487076

`∩[A085558(n+1), A157996(n+1)]`
-/

namespace A154386.P13373212227487487076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154386.P13373212227487487076

namespace A154386

/-- `∩[A085558(n+1), A157996(n+1)]` -/
def P13373212227487487076.Spec : Prop :=
  ∀ n, (P13373212227487487076.a n : ℤ) = A154386 (n + 1)

end A154386

/-! ## A154386.P17135069527778325925

`∩[A085558(n+1), A197636(n+1)]`
-/

namespace A154386.P17135069527778325925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154386.P17135069527778325925

namespace A154386

/-- `∩[A085558(n+1), A197636(n+1)]` -/
def P17135069527778325925.Spec : Prop :=
  ∀ n, (P17135069527778325925.a n : ℤ) = A154386 (n + 1)

end A154386

/-! ## A154386.P17556350157211493116

`∩[A085558(n+1), A215848(n+1)]`
-/

namespace A154386.P17556350157211493116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154386.P17556350157211493116

namespace A154386

/-- `∩[A085558(n+1), A215848(n+1)]` -/
def P17556350157211493116.Spec : Prop :=
  ∀ n, (P17556350157211493116.a n : ℤ) = A154386 (n + 1)

end A154386

/-! ## A154386.P17390065865969719377

`∩[A085558(n+1), A215927(n+1)]`
-/

namespace A154386.P17390065865969719377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154386.P17390065865969719377

namespace A154386

/-- `∩[A085558(n+1), A215927(n+1)]` -/
def P17390065865969719377.Spec : Prop :=
  ∀ n, (P17390065865969719377.a n : ℤ) = A154386 (n + 1)

end A154386

/-! ## A154386.P11162818995585754308

`∩[A085558(n+1), A216495(n+1)]`
-/

namespace A154386.P11162818995585754308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154386.P11162818995585754308

namespace A154386

/-- `∩[A085558(n+1), A216495(n+1)]` -/
def P11162818995585754308.Spec : Prop :=
  ∀ n, (P11162818995585754308.a n : ℤ) = A154386 (n + 1)

end A154386

/-! ## A154386.P12505587194748555751

`filter[A085558(n+2), A171387(#)]`
-/

namespace A154386.P12505587194748555751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085558 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A154386.P12505587194748555751

namespace A154386

/-- `filter[A085558(n+2), A171387(#)]` -/
def P12505587194748555751.Spec : Prop :=
  ∀ n, P12505587194748555751.a n = A154386 (n + 1)

end A154386

/-! ## A154386.P14141737690977660693

`filter[A085558(n+3), A080339(#)]`
-/

namespace A154386.P14141737690977660693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085558 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A154386.P14141737690977660693

namespace A154386

/-- `filter[A085558(n+3), A080339(#)]` -/
def P14141737690977660693.Spec : Prop :=
  ∀ n, P14141737690977660693.a n = A154386 (n + 1)

end A154386

/-! ## A154386.P11268020967556792679

`filter[A085558(n+3), A080545(#)]`
-/

namespace A154386.P11268020967556792679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085558 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A154386.P11268020967556792679

namespace A154386

/-- `filter[A085558(n+3), A080545(#)]` -/
def P11268020967556792679.Spec : Prop :=
  ∀ n, P11268020967556792679.a n = A154386 (n + 1)

end A154386

/-!
# A154387: Composite numbers with even sum of digits.

The programs for A154387, the canonical program `A154387.P12620786957504123218` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154387 has offset 1).

The definition of A154387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8928 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154387.P12583212246081925150

`filter[A054683(n+2), A005171(#)]`
-/

namespace A154387.P12583212246081925150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A154387.P12583212246081925150

namespace A154387

/-- `filter[A054683(n+2), A005171(#)]` -/
def P12583212246081925150.Spec : Prop :=
  ∀ n, P12583212246081925150.a n = A154387 (n + 1)

end A154387

/-! ## A154387.P12620786957504123218

`filter[A054683(n+2), A066247(#)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A154387

/-- `filter[A054683(n+2), A066247(#)]` -/
def P12620786957504123218.Spec : Prop :=
  ∀ n, P12620786957504123218.a n = A154387 (n + 1)

theorem P12620786957504123218.correct : P12620786957504123218.Spec := by
  intro n
  simp only [A154387, Nat.add_sub_cancel]

end A154387

/-! ## A154387.P4668526996877636025

`∩[A002808(n+1), A054683(n+1)]`
-/

namespace A154387.P4668526996877636025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154387.P4668526996877636025

namespace A154387

/-- `∩[A002808(n+1), A054683(n+1)]` -/
def P4668526996877636025.Spec : Prop :=
  ∀ n, (P4668526996877636025.a n : ℤ) = A154387 (n + 1)

end A154387

/-! ## A154387.P2003696230664130804

`∩[A018252(n+1), A054683(n+1)]`
-/

namespace A154387.P2003696230664130804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154387.P2003696230664130804

namespace A154387

/-- `∩[A018252(n+1), A054683(n+1)]` -/
def P2003696230664130804.Spec : Prop :=
  ∀ n, (P2003696230664130804.a n : ℤ) = A154387 (n + 1)

end A154387

/-! ## A154387.P432688562254044114

`eq[tan(A339579(n+1)), A179081(n)]`
-/

namespace A154387.P432688562254044114
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A339579 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A154387.P432688562254044114

namespace A154387

/-- `eq[tan(A339579(n+1)), A179081(n)]` -/
def P432688562254044114.Spec : Prop :=
  ∀ n, (P432688562254044114.a n : ℤ) = A154387 (n + 1)

end A154387

/-! ## A154387.P3155390955539615059

`eq[A055672(n), A073097(A007953(n))]`
-/

namespace A154387.P3155390955539615059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154387.P3155390955539615059

namespace A154387

/-- `eq[A055672(n), A073097(A007953(n))]` -/
def P3155390955539615059.Spec : Prop :=
  ∀ n, (P3155390955539615059.a n : ℤ) = A154387 (n + 1)

end A154387

/-! ## A154387.P12216460127641700301

`eq[A055671(n), A090192(A007953(n))]`
-/

namespace A154387.P12216460127641700301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154387.P12216460127641700301

namespace A154387

/-- `eq[A055671(n), A090192(A007953(n))]` -/
def P12216460127641700301.Spec : Prop :=
  ∀ n, (P12216460127641700301.a n : ℤ) = A154387 (n + 1)

end A154387

/-! ## A154387.P16372752660275259142

`eq[A179081(n)+1, A066247(A138153(n+1))]`
-/

namespace A154387.P16372752660275259142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154387.P16372752660275259142

namespace A154387

/-- `eq[A179081(n)+1, A066247(A138153(n+1))]` -/
def P16372752660275259142.Spec : Prop :=
  ∀ n, (P16372752660275259142.a n : ℤ) = A154387 (n + 1)

end A154387

/-! ## A154387.P15730334057658654963

`eq[A055671(n), A084099(A171397(n))]`
-/

namespace A154387.P15730334057658654963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 (A171397 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154387.P15730334057658654963

namespace A154387

/-- `eq[A055671(n), A084099(A171397(n))]` -/
def P15730334057658654963.Spec : Prop :=
  ∀ n, (P15730334057658654963.a n : ℤ) = A154387 (n + 1)

end A154387

/-!
# A154388: Triangle T(n,k), 0<=k<=n, read by rows given by [0,1,-1,0,0,0,0,0,0,0,...] DELTA [1,-1,-1,1,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

The programs for A154388, the canonical program `A154388.P13234151177117315551` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154388 has offset 0).

The definition of A154388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154388.P1029673118977459034

`char[∑[xor(1, n-2)]+1]`
-/

namespace A154388.P1029673118977459034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A154388.P1029673118977459034

namespace A154388

/-- `char[∑[xor(1, n-2)]+1]` -/
def P1029673118977459034.Spec : Prop :=
  ∀ n, (P1029673118977459034.a n : ℤ) = A154388 n

end A154388

/-! ## A154388.P3840595952979935167

`char[1-∑[2-xor(1, n)]]`
-/

namespace A154388.P3840595952979935167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.xor 1 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A154388.P3840595952979935167

namespace A154388

/-- `char[1-∑[2-xor(1, n)]]` -/
def P3840595952979935167.Spec : Prop :=
  ∀ n, (P3840595952979935167.a n : ℤ) = A154388 n

end A154388

/-! ## A154388.P16067847960365988248

`char[∑[n-2]+gcd(2, n)]`
-/

namespace A154388.P16067847960365988248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (Nat.gcd 2 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A154388.P16067847960365988248

namespace A154388

/-- `char[∑[n-2]+gcd(2, n)]` -/
def P16067847960365988248.Spec : Prop :=
  ∀ n, (P16067847960365988248.a n : ℤ) = A154388 n

end A154388

/-! ## A154388.P4514225143266698279

`char[∑[xor(1, char[1]+1+n)]]`
-/

namespace A154388.P4514225143266698279
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((if ∃ j, f3 j = n then 1 else 0) + 1 + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A154388.P4514225143266698279

namespace A154388

/-- `char[∑[xor(1, char[1]+1+n)]]` -/
def P4514225143266698279.Spec : Prop :=
  ∀ n, (P4514225143266698279.a n : ℤ) = A154388 n

end A154388

/-! ## A154388.P638471024514712170

`char[or(1, n²)-∑[n+1]]`
-/

namespace A154388.P638471024514712170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n ^ 2) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A154388.P638471024514712170

namespace A154388

/-- `char[or(1, n²)-∑[n+1]]` -/
def P638471024514712170.Spec : Prop :=
  ∀ n, (P638471024514712170.a n : ℤ) = A154388 n

end A154388

/-! ## A154388.P11826345351766177453

`char[∑[n-char[1]]-n%2]`
-/

namespace A154388.P11826345351766177453
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - ((n % 2 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A154388.P11826345351766177453

namespace A154388

/-- `char[∑[n-char[1]]-n%2]` -/
def P11826345351766177453.Spec : Prop :=
  ∀ n, (P11826345351766177453.a n : ℤ) = A154388 n

end A154388

/-! ## A154388.P12982158243240425325

`char[∑[n-char[1]]-and(1, n)]`
-/

namespace A154388.P12982158243240425325
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (Nat.land 1 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A154388.P12982158243240425325

namespace A154388

/-- `char[∑[n-char[1]]-and(1, n)]` -/
def P12982158243240425325.Spec : Prop :=
  ∀ n, (P12982158243240425325.a n : ℤ) = A154388 n

end A154388

/-! ## A154388.P4484186652550877410

`char[∑[a(n-2)+2]]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=5`
-/

namespace A154388.P4484186652550877410
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 5] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A154388.P4484186652550877410

namespace A154388

/-- `char[∑[a(n-2)+2]]` -/
def P4484186652550877410.Spec : Prop :=
  ∀ n, (P4484186652550877410.a n : ℤ) = A154388 n

end A154388

/-! ## A154388.P1245514431386046984

`char[A162761(n+1)]`
-/

namespace A154388.P1245514431386046984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A154388.P1245514431386046984

namespace A154388

/-- `char[A162761(n+1)]` -/
def P1245514431386046984.Spec : Prop :=
  ∀ n, (P1245514431386046984.a n : ℤ) = A154388 n

end A154388

/-! ## A154388.P11121304816818173819

`char[A027379(n)-or(1, n)]`
-/

namespace A154388.P11121304816818173819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 n - (Nat.lor 1 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A154388.P11121304816818173819

namespace A154388

/-- `char[A027379(n)-or(1, n)]` -/
def P11121304816818173819.Spec : Prop :=
  ∀ n, (P11121304816818173819.a n : ℤ) = A154388 n

end A154388

/-! ## A154388.P12268194513483678685

`floor(acot(n*A108561(n)))²`
-/

namespace A154388.P12268194513483678685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot ((n : ℤ) * A108561 n : ℝ)⌋ ^ 2

end

end A154388.P12268194513483678685

namespace A154388

/-- `floor(acot(n*A108561(n)))²` -/
def P12268194513483678685.Spec : Prop :=
  ∀ n, P12268194513483678685.a n = A154388 n

end A154388

/-! ## A154388.P12392465697267568583

`char[∑[n]-A003815(2*n)]`
-/

namespace A154388.P12392465697267568583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A003815 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A154388.P12392465697267568583

namespace A154388

/-- `char[∑[n]-A003815(2*n)]` -/
def P12392465697267568583.Spec : Prop :=
  ∀ n, (P12392465697267568583.a n : ℤ) = A154388 n

end A154388

/-! ## A154388.P11636729782121513761

`and(A071024(n), A193892(n))`
-/

namespace A154388.P11636729782121513761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071024 n) (A193892 n)

end

end A154388.P11636729782121513761

namespace A154388

/-- `and(A071024(n), A193892(n))` -/
def P11636729782121513761.Spec : Prop :=
  ∀ n, P11636729782121513761.a n = A154388 n

end A154388

/-! ## A154388.P7229152240303545779

`and(A097806(n), A193892(n))`
-/

namespace A154388.P7229152240303545779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097806 n) (A193892 n)

end

end A154388.P7229152240303545779

namespace A154388

/-- `and(A097806(n), A193892(n))` -/
def P7229152240303545779.Spec : Prop :=
  ∀ n, P7229152240303545779.a n = A154388 n

end A154388

/-! ## A154388.P13234151177117315551

`A023531(A211394(n+1)-1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A154388

/-- `A023531(A211394(n+1)-1)` -/
def P13234151177117315551.Spec : Prop :=
  ∀ n, P13234151177117315551.a n = A154388 n

theorem P13234151177117315551.correct : P13234151177117315551.Spec := by
  intro n
  simp only [A154388]

end A154388

/-! ## A154388.P6981343755653637324

`char[∑[n]-A177704(A006257(n))]`
-/

namespace A154388.P6981343755653637324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A177704 (A006257 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A154388.P6981343755653637324

namespace A154388

/-- `char[∑[n]-A177704(A006257(n))]` -/
def P6981343755653637324.Spec : Prop :=
  ∀ n, (P6981343755653637324.a n : ℤ) = A154388 n

end A154388

/-! ## A154388.P17360137029406497989

`char[A014681(n)²-∑[A014681(n)]]`
-/

namespace A154388.P17360137029406497989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n ^ 2 - ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A154388.P17360137029406497989

namespace A154388

/-- `char[A014681(n)²-∑[A014681(n)]]` -/
def P17360137029406497989.Spec : Prop :=
  ∀ n, (P17360137029406497989.a n : ℤ) = A154388 n

end A154388

/-! ## A154388.P515205128205872562

`A078807(n+1)*A133566(n+1)`
-/

namespace A154388.P515205128205872562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078807 (n + 1) * A133566 (n + 1)

end

end A154388.P515205128205872562

namespace A154388

/-- `A078807(n+1)*A133566(n+1)` -/
def P515205128205872562.Spec : Prop :=
  ∀ n, P515205128205872562.a n = A154388 n

end A154388

/-! ## A154388.P2713699342348523271

`Δ[A130855(n+1)]^n`
-/

namespace A154388.P2713699342348523271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ n

end

end A154388.P2713699342348523271

namespace A154388

/-- `Δ[A130855(n+1)]^n` -/
def P2713699342348523271.Spec : Prop :=
  ∀ n, P2713699342348523271.a n = A154388 n

end A154388

/-! ## A154388.P9472253029017085451

`A128174(A131900(n+2)+n+1)`
-/

namespace A154388.P9472253029017085451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (A131900 (n + 2) + (n + 1 : ℤ)).toNat

end

end A154388.P9472253029017085451

namespace A154388

/-- `A128174(A131900(n+2)+n+1)` -/
def P9472253029017085451.Spec : Prop :=
  ∀ n, P9472253029017085451.a n = A154388 n

end A154388

/-!
# A154390: Composites whose largest digit is prime.

The programs for A154390, there is no canonical definition to state claims against.
-/

/-! ## A154390.P3102545508385315339

`A071070(A055649(n)+6)`
-/

namespace A154390.P3102545508385315339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071070 (A055649 n + 6).toNat

end

end A154390.P3102545508385315339

/-! ## A154390.P13277069087160635718

`A071070(A062399(n)+6)`
-/

namespace A154390.P13277069087160635718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071070 (A062399 n + 6).toNat

end

end A154390.P13277069087160635718

/-! ## A154390.P17983516860380122869

`A071070(A120126(n)+6)`
-/

namespace A154390.P17983516860380122869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071070 (A120126 n + 6).toNat

end

end A154390.P17983516860380122869

/-! ## A154390.P15566932842748088305

`A071070(A043320(n+5)+1)`
-/

namespace A154390.P15566932842748088305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071070 (A043320 (n + 5) + 1).toNat

end

end A154390.P15566932842748088305

/-! ## A154390.P13845074951403368007

`A071070(A004883(n+1)+6)`
-/

namespace A154390.P13845074951403368007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071070 (A004883 (n + 1) + 6).toNat

end

end A154390.P13845074951403368007

/-!
# A154391: Terms of A123466 which have a one-to-one correspondence between every run of 1's and 0's of the same length.

The programs for A154391, the canonical program `A154391.P10401857712693082609` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154391 has offset 1).

The definition of A154391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154391.P10556542149485583107

`eq[A071053(A035327(n)), A071053(n)]`
-/

namespace A154391.P10556542149485583107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 (A035327 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154391.P10556542149485583107

namespace A154391

/-- `eq[A071053(A035327(n)), A071053(n)]` -/
def P10556542149485583107.Spec : Prop :=
  ∀ n, (P10556542149485583107.a n : ℤ) = A154391 (n + 1)

end A154391

/-! ## A154391.P10401857712693082609

`eq[A246029(A035327(n)), A246029(n)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A154391

/-- `eq[A246029(A035327(n)), A246029(n)]` -/
def P10401857712693082609.Spec : Prop :=
  ∀ n, (P10401857712693082609.a n : ℤ) = A154391 (n + 1)

theorem P10401857712693082609.correct : P10401857712693082609.Spec := by
  intro n
  simp only [A154391, Nat.add_sub_cancel]

end A154391

/-! ## A154391.P15579544322259126512

`eq[A278222(A035327(n)), A278222(n)]`
-/

namespace A154391.P15579544322259126512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A035327 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154391.P15579544322259126512

namespace A154391

/-- `eq[A278222(A035327(n)), A278222(n)]` -/
def P15579544322259126512.Spec : Prop :=
  ∀ n, (P15579544322259126512.a n : ℤ) = A154391 (n + 1)

end A154391

/-! ## A154391.P9725718391351328203

`eq[A278222(A036044(n)), A278222(n)]`
-/

namespace A154391.P9725718391351328203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A036044 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154391.P9725718391351328203

namespace A154391

/-- `eq[A278222(A036044(n)), A278222(n)]` -/
def P9725718391351328203.Spec : Prop :=
  ∀ n, (P9725718391351328203.a n : ℤ) = A154391 (n + 1)

end A154391

/-! ## A154391.P17016268756657824950

`eq[A286622(A035327(n)), A286622(n)]`
-/

namespace A154391.P17016268756657824950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 (A035327 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154391.P17016268756657824950

namespace A154391

/-- `eq[A286622(A035327(n)), A286622(n)]` -/
def P17016268756657824950.Spec : Prop :=
  ∀ n, (P17016268756657824950.a n : ℤ) = A154391 (n + 1)

end A154391

/-! ## A154391.P14393063758804646959

`eq[A246039(A036044(n)), A246039(n)]`
-/

namespace A154391.P14393063758804646959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246039 (A036044 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246039 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154391.P14393063758804646959

namespace A154391

/-- `eq[A246039(A036044(n)), A246039(n)]` -/
def P14393063758804646959.Spec : Prop :=
  ∀ n, (P14393063758804646959.a n : ℤ) = A154391 (n + 1)

end A154391

/-! ## A154391.P16100727217207396033

`eq[A233569(A036044(n)), A233569(n)]`
-/

namespace A154391.P16100727217207396033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233569 (A036044 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154391.P16100727217207396033

namespace A154391

/-- `eq[A233569(A036044(n)), A233569(n)]` -/
def P16100727217207396033.Spec : Prop :=
  ∀ n, (P16100727217207396033.a n : ℤ) = A154391 (n + 1)

end A154391

/-!
# A154392: Number of zeros of sin(x^2) in integer intervals starting with (0,1).

The programs for A154392, the canonical program `A154392.P15552810202031452493` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154392 has offset 1).

The definition of A154392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154392.P15552810202031452493

`Δ[floor(n²/π)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154392

/-- `Δ[floor(n²/π)]` -/
def P15552810202031452493.Spec : Prop :=
  ∀ n, P15552810202031452493.a n = A154392 (n + 1)

theorem P15552810202031452493.correct : P15552810202031452493.Spec := by
  intro n
  simp only [A154392, Nat.add_sub_cancel]

end A154392

/-! ## A154392.P4042219152930056284

`Δ[floor(n*n/π)]%(n+1)`
-/

namespace A154392.P4042219152930056284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * ((n : ℝ) / Real.pi)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A154392.P4042219152930056284

namespace A154392

/-- `Δ[floor(n*n/π)]%(n+1)` -/
def P4042219152930056284.Spec : Prop :=
  ∀ n, P4042219152930056284.a n = A154392 (n + 1)

end A154392

/-! ## A154392.P10854821908627901894

`Δ[floor(n*n/π)]*A057427(n)`
-/

namespace A154392.P10854821908627901894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * ((n : ℝ) / Real.pi)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A057427 n

end

end A154392.P10854821908627901894

namespace A154392

/-- `Δ[floor(n*n/π)]*A057427(n)` -/
def P10854821908627901894.Spec : Prop :=
  ∀ n, P10854821908627901894.a n = A154392 (n + 1)

end A154392

/-! ## A154392.P12792197222465771477

`A025437(val(n+1, 3))+Δ[floor(n*n/π)]`
-/

namespace A154392.P12792197222465771477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * ((n : ℝ) / Real.pi)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 (SequenceMachineLib.valuation (n + 1) 3) + (f1 (n + 1) - f1 n)

end

end A154392.P12792197222465771477

namespace A154392

/-- `A025437(val(n+1, 3))+Δ[floor(n*n/π)]` -/
def P12792197222465771477.Spec : Prop :=
  ∀ n, P12792197222465771477.a n = A154392 (n + 1)

end A154392

/-! ## A154392.P9478785310487868403

`abs(Δ[A032616(n)])`
-/

namespace A154392.P9478785310487868403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A154392.P9478785310487868403

namespace A154392

/-- `abs(Δ[A032616(n)])` -/
def P9478785310487868403.Spec : Prop :=
  ∀ n, P9478785310487868403.a n = A154392 (n + 1)

end A154392

/-! ## A154392.P17052047752952514259

`A000007(n+1)+Δ[floor(n*n/π)]`
-/

namespace A154392.P17052047752952514259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * ((n : ℝ) / Real.pi)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (f1 (n + 1) - f1 n)

end

end A154392.P17052047752952514259

namespace A154392

/-- `A000007(n+1)+Δ[floor(n*n/π)]` -/
def P17052047752952514259.Spec : Prop :=
  ∀ n, P17052047752952514259.a n = A154392 (n + 1)

theorem P17052047752952514259.correct : P17052047752952514259.Spec := by
  intro n
  simp only [A154392, Nat.add_sub_cancel, A154392.P17052047752952514259.f1, A154392.P17052047752952514259.a, A154392.P15552810202031452493.f1, A154392.P15552810202031452493.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154392

/-! ## A154392.P5413246888963288158

`A032616(n+1)-A032616(n)`
-/

namespace A154392.P5413246888963288158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032616 (n + 1) - A032616 n

end

end A154392.P5413246888963288158

namespace A154392

/-- `A032616(n+1)-A032616(n)` -/
def P5413246888963288158.Spec : Prop :=
  ∀ n, P5413246888963288158.a n = A154392 (n + 1)

theorem P5413246888963288158.correct : P5413246888963288158.Spec := by
  intro n
  simp only [A154392, Nat.add_sub_cancel, A154392.P5413246888963288158.a, A154392.P15552810202031452493.f1, A154392.P15552810202031452493.a, A032616, A032616.P17004683288078199390.a, A032615, A032615.P7004375319683963035.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154392

/-! ## A154392.P17475606428039498524

`Δ[A032616(n)]*A178334(A178334(n))`
-/

namespace A154392.P17475606428039498524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A178334 (A178334 n).toNat

end

end A154392.P17475606428039498524

namespace A154392

/-- `Δ[A032616(n)]*A178334(A178334(n))` -/
def P17475606428039498524.Spec : Prop :=
  ∀ n, P17475606428039498524.a n = A154392 (n + 1)

end A154392

/-! ## A154392.P4938457553044465164

`abs(Δ[A135607(2*n)])`
-/

namespace A154392.P4938457553044465164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135607 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A154392.P4938457553044465164

namespace A154392

/-- `abs(Δ[A135607(2*n)])` -/
def P4938457553044465164.Spec : Prop :=
  ∀ n, P4938457553044465164.a n = A154392 (n + 1)

end A154392

/-! ## A154392.P12693038336040242683

`A135607(2*(n+1))-A135607(2*n)`
-/

namespace A154392.P12693038336040242683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135607 (2 * (n + 1)) - A135607 (2 * n)

end

end A154392.P12693038336040242683

namespace A154392

/-- `A135607(2*(n+1))-A135607(2*n)` -/
def P12693038336040242683.Spec : Prop :=
  ∀ n, P12693038336040242683.a n = A154392 (n + 1)

theorem P12693038336040242683.correct : P12693038336040242683.Spec := by
  intro n
  simp only [A154392, Nat.add_sub_cancel, A154392.P12693038336040242683.a, A154392.P15552810202031452493.f1, A154392.P15552810202031452493.a, A135607, A135607.P16978739446351322344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154392

/-!
# A154393: Empirically good sequence of increments for shell sort algorithm.

The programs for A154393, the canonical program `A154393.P580899473292945297` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154393 has offset 1).

The definition of A154393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154393.P580899473292945297

`floor(A007598(n+2)^ϕ)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A154393

/-- `floor(A007598(n+2)^ϕ)` -/
def P580899473292945297.Spec : Prop :=
  ∀ n, P580899473292945297.a n = A154393 (n + 1)

theorem P580899473292945297.correct : P580899473292945297.Spec := by
  intro n
  simp only [A154393, Nat.add_sub_cancel]

end A154393

/-! ## A154393.P15662824147640956637

`floor((A000045(n+2)^ϕ)²)`
-/

namespace A154393.P15662824147640956637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000045 (n + 2) : ℝ) ^ Real.goldenRatio) ^ 2⌋

end

end A154393.P15662824147640956637

namespace A154393

/-- `floor((A000045(n+2)^ϕ)²)` -/
def P15662824147640956637.Spec : Prop :=
  ∀ n, P15662824147640956637.a n = A154393 (n + 1)

end A154393

/-! ## A154393.P12505336302302563274

`floor(A236191(n+2)²^ϕ)`
-/

namespace A154393.P12505336302302563274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A236191 (n + 2) ^ 2 : ℝ) ^ Real.goldenRatio⌋

end

end A154393.P12505336302302563274

namespace A154393

/-- `floor(A236191(n+2)²^ϕ)` -/
def P12505336302302563274.Spec : Prop :=
  ∀ n, P12505336302302563274.a n = A154393 (n + 1)

end A154393

/-! ## A154393.P2981079918263344427

`floor(A111569(2*n+3)^ϕ)`
-/

namespace A154393.P2981079918263344427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A111569 (2 * n + 3) : ℝ) ^ Real.goldenRatio⌋

end

end A154393.P2981079918263344427

namespace A154393

/-- `floor(A111569(2*n+3)^ϕ)` -/
def P2981079918263344427.Spec : Prop :=
  ∀ n, P2981079918263344427.a n = A154393 (n + 1)

end A154393

/-! ## A154393.P4672705789217661442

`record[floor((A243574(n+1)^ϕ)²)]`
-/

namespace A154393.P4672705789217661442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A243574 (n + 1) : ℝ) ^ Real.goldenRatio) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154393.P4672705789217661442

namespace A154393

/-- `record[floor((A243574(n+1)^ϕ)²)]` -/
def P4672705789217661442.Spec : Prop :=
  ∀ n, P4672705789217661442.a n = A154393 (n + 1)

end A154393

