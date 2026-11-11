import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C007
import Seq.B000.C011
import Seq.B000.C018
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C040
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C013
import Seq.B001.C015
import Seq.B005.C000
import Seq.B005.C002
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A401604: E.g.f. A(x) satisfies: A(x) = x * exp(A(x) + A(x^2) + A(x^3) + A(x^4) + ... ).

The programs for A401604, there is no canonical definition to state claims against.
-/

/-! ## A401604.P8942237805227846277

`∑[A372511((n+1)^n)]`
-/

namespace A401604.P8942237805227846277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372511 ((n + 1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401604.P8942237805227846277

/-!
# A401615: a(0) = 1; a(n) = Sum_{k=0..n-1} binomial(2*n-k,k) * a(k).

The programs for A401615, there is no canonical definition to state claims against.
-/

/-! ## A401615.P777540694941409534

`n*A191776(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A401615.P777540694941409534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * A191776 (a (n - 1)).toNat

end

end A401615.P777540694941409534

/-!
# A401619: Largest integer k such that, for every positive integer m, there exists a k-element subset of {1, ..., n} with no subset summing to m.

The programs for A401619, there is no canonical definition to state claims against.
-/

/-! ## A401619.P4477336206720898060

`A000195(A187492(n))`
-/

namespace A401619.P4477336206720898060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A187492 (n + 21)).toNat

end

end A401619.P4477336206720898060

/-! ## A401619.P8749249031221911555

`A073458(A188555(n))`
-/

namespace A401619.P8749249031221911555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073458 (A188555 n).toNat

end

end A401619.P8749249031221911555

/-!
# A401622: a(0) = 1; a(n) = Sum_{k=0..n-1} binomial(n+k,k) * a(k).

The programs for A401622, there is no canonical definition to state claims against.
-/

/-! ## A401622.P931137805412038510

`A286262(A170877(A273154(n))-n)`
-/

namespace A401622.P931137805412038510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286262 (A170877 (A273154 n).toNat - (n : ℤ)).toNat

end

end A401622.P931137805412038510

/-!
# A401626: a(0) = 1; a(n) = Sum_{k=1..n} binomial(n+k,k) * a(n-k).

The programs for A401626, there is no canonical definition to state claims against.
-/

/-! ## A401626.P4659086376576739847

`A160162(A120899(n))`
-/

namespace A401626.P4659086376576739847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160162 (A120899 n).toNat

end

end A401626.P4659086376576739847

/-!
# A401630: a(n) = 2*(n - 1)!*(binomial(n+1, 3) + binomial(n, 3)).

The programs for A401630, the canonical program `A401630.P6728416802248949244` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401630 has offset 1).

The definition of A401630 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n!*(C(n+2, 3)+C(n+1, 3))` (program `A401630.P6728416802248949244`, by `A401630.P6728416802248949244.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A401630.P6728416802248949244

`2*n!*(C(n+2, 3)+C(n+1, 3))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401630

/-- `2*n!*(C(n+2, 3)+C(n+1, 3))` -/
def P6728416802248949244.Spec : Prop :=
  ∀ n, (P6728416802248949244.a n : ℤ) = A401630 (n + 1)

theorem P6728416802248949244.correct : P6728416802248949244.Spec := by
  intro n
  simp only [A401630, Nat.add_sub_cancel]

end A401630

/-! ## A401630.P5486070714063638800

`A006331(n)*n!`
-/

namespace A401630.P5486070714063638800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n * (Nat.factorial n : ℤ)

end

end A401630.P5486070714063638800

namespace A401630

/-- `A006331(n)*n!` -/
def P5486070714063638800.Spec : Prop :=
  ∀ n, P5486070714063638800.a n = A401630 (n + 1)

end A401630

/-! ## A401630.P9278900311591728076

`(n+1)!*(2*(n+1)²-3*(n+1)+1)/3`
-/

namespace A401630.P9278900311591728076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) : ℤ) * ((2 * (n + 1) ^ 2 : ℤ) - (3 * (n + 1) : ℤ) + 1) : ℚ) / 3

end

end A401630.P9278900311591728076

namespace A401630

/-- `(n+1)!*(2*(n+1)²-3*(n+1)+1)/3` -/
def P9278900311591728076.Spec : Prop :=
  ∀ n, P9278900311591728076.a n = (A401630 (n + 1) : ℚ)

theorem P9278900311591728076.correct : P9278900311591728076.Spec := by
  intro n
  simp only [A401630, Nat.add_sub_cancel, A401630.P9278900311591728076.a, A401630.P6728416802248949244.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A401630

/-! ## A401630.P528224902128937752

`2*n!*∑[n²]`
-/

namespace A401630.P528224902128937752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A401630.P528224902128937752

namespace A401630

/-- `2*n!*∑[n²]` -/
def P528224902128937752.Spec : Prop :=
  ∀ n, (P528224902128937752.a n : ℤ) = A401630 (n + 1)

end A401630

/-! ## A401630.P13207205705135516764

`n!*∑[n*2*n]`
-/

namespace A401630.P13207205705135516764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A401630.P13207205705135516764

namespace A401630

/-- `n!*∑[n*2*n]` -/
def P13207205705135516764.Spec : Prop :=
  ∀ n, (P13207205705135516764.a n : ℤ) = A401630 (n + 1)

end A401630

/-! ## A401630.P13511098437845714924

`A000142(n)*A006331(n)`
-/

namespace A401630.P13511098437845714924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A006331 n

end

end A401630.P13511098437845714924

namespace A401630

/-- `A000142(n)*A006331(n)` -/
def P13511098437845714924.Spec : Prop :=
  ∀ n, P13511098437845714924.a n = A401630 (n + 1)

end A401630

/-! ## A401630.P15646983972243320289

`(n+1)!*C(2*n+1, 2)/3`
-/

namespace A401630.P15646983972243320289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) * Nat.choose (2 * n + 1) 2 : ℚ) / 3

end

end A401630.P15646983972243320289

namespace A401630

/-- `(n+1)!*C(2*n+1, 2)/3` -/
def P15646983972243320289.Spec : Prop :=
  ∀ n, P15646983972243320289.a n = (A401630 (n + 1) : ℚ)

theorem P15646983972243320289.correct : P15646983972243320289.Spec := by
  intro n
  simp only [A401630, Nat.add_sub_cancel, A401630.P15646983972243320289.a, A401630.P6728416802248949244.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A401630

/-! ## A401630.P5702382996216374414

`C(2*n+1, 2)*∏[n+1]/3`
-/

namespace A401630.P5702382996216374414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n + 1) 2 * (∏ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 3

end

end A401630.P5702382996216374414

namespace A401630

/-- `C(2*n+1, 2)*∏[n+1]/3` -/
def P5702382996216374414.Spec : Prop :=
  ∀ n, P5702382996216374414.a n = (A401630 (n + 1) : ℚ)

end A401630

/-! ## A401630.P5018941578366381086

`n*(2*n+1)*(n+1)!/3`
-/

namespace A401630.P5018941578366381086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (2 * n + 1) * Nat.factorial (n + 1) : ℚ) / 3

end

end A401630.P5018941578366381086

namespace A401630

/-- `n*(2*n+1)*(n+1)!/3` -/
def P5018941578366381086.Spec : Prop :=
  ∀ n, P5018941578366381086.a n = (A401630 (n + 1) : ℚ)

theorem P5018941578366381086.correct : P5018941578366381086.Spec := by
  intro n
  simp only [A401630, Nat.add_sub_cancel, A401630.P5018941578366381086.a, A401630.P6728416802248949244.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A401630

/-! ## A401630.P13675253776033255249

`n*A175925(n)/3`
-/

namespace A401630.P13675253776033255249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A175925 n : ℚ) / 3

end

end A401630.P13675253776033255249

namespace A401630

/-- `n*A175925(n)/3` -/
def P13675253776033255249.Spec : Prop :=
  ∀ n, P13675253776033255249.a n = (A401630 (n + 1) : ℚ)

theorem P13675253776033255249.correct : P13675253776033255249.Spec := by
  intro n
  simp only [A401630, Nat.add_sub_cancel, A401630.P13675253776033255249.a, A401630.P6728416802248949244.a, A175925, A175925.P7888020052986764276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A401630

/-!
# A401631: a(n) = 2*n^(n-1)*(binomial(n+1, 3) + binomial(n, 3)).

The programs for A401631, the canonical program `A401631.P14960753704261418217` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401631 has offset 1).

The definition of A401631 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)^n*(C(n+2, 3)+C(n+1, 3))` (program `A401631.P14960753704261418217`, by `A401631.P14960753704261418217.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A401631.P14960753704261418217

`2*(n+1)^n*(C(n+2, 3)+C(n+1, 3))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401631

/-- `2*(n+1)^n*(C(n+2, 3)+C(n+1, 3))` -/
def P14960753704261418217.Spec : Prop :=
  ∀ n, (P14960753704261418217.a n : ℤ) = A401631 (n + 1)

theorem P14960753704261418217.correct : P14960753704261418217.Spec := by
  intro n
  simp only [A401631, Nat.add_sub_cancel]

end A401631

/-! ## A401631.P9214849311073440559

`(n+1)^(n+1)*(2*(n+1)²-3*(n+1)+1)/3`
-/

namespace A401631.P9214849311073440559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ (n + 1) : ℤ) * ((2 * (n + 1) ^ 2 : ℤ) - (3 * (n + 1) : ℤ) + 1) : ℚ) / 3

end

end A401631.P9214849311073440559

namespace A401631

/-- `(n+1)^(n+1)*(2*(n+1)²-3*(n+1)+1)/3` -/
def P9214849311073440559.Spec : Prop :=
  ∀ n, P9214849311073440559.a n = (A401631 (n + 1) : ℚ)

theorem P9214849311073440559.correct : P9214849311073440559.Spec := by
  intro n
  simp only [A401631, Nat.add_sub_cancel, A401631.P9214849311073440559.a, A401631.P14960753704261418217.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A401631

/-! ## A401631.P9171788771787999578

`(n+1)^n*A006331(n)`
-/

namespace A401631.P9171788771787999578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℤ) * A006331 n

end

end A401631.P9171788771787999578

namespace A401631

/-- `(n+1)^n*A006331(n)` -/
def P9171788771787999578.Spec : Prop :=
  ∀ n, P9171788771787999578.a n = A401631 (n + 1)

end A401631

/-! ## A401631.P7156900334517263824

`A401632(n+1)+A401630(n+1)`
-/

namespace A401631.P7156900334517263824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401632 (n + 1) + A401630 (n + 1)

end

end A401631.P7156900334517263824

namespace A401631

/-- `A401632(n+1)+A401630(n+1)` -/
def P7156900334517263824.Spec : Prop :=
  ∀ n, P7156900334517263824.a n = A401631 (n + 1)

theorem P7156900334517263824.correct : P7156900334517263824.Spec := by
  intro n
  simp only [A401631, Nat.add_sub_cancel, A401631.P7156900334517263824.a, A401631.P14960753704261418217.a, A401630, A401630.P6728416802248949244.a, A401632, A401632.P1718268542620924112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A401631

/-!
# A401632: a(n) = 2*(n^(n-1) - (n-1)!)*(binomial(n+1,3) + binomial(n,3)).

The programs for A401632, the canonical program `A401632.P1718268542620924112` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401632 has offset 1).

The definition of A401632 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*((n+1)^n-n!)*(C(n+2, 3)+C(n+1, 3))` (program `A401632.P1718268542620924112`, by `A401632.P1718268542620924112.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A401632.P1718268542620924112

`2*((n+1)^n-n!)*(C(n+2, 3)+C(n+1, 3))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401632

/-- `2*((n+1)^n-n!)*(C(n+2, 3)+C(n+1, 3))` -/
def P1718268542620924112.Spec : Prop :=
  ∀ n, P1718268542620924112.a n = A401632 (n + 1)

theorem P1718268542620924112.correct : P1718268542620924112.Spec := by
  intro n
  simp only [A401632, Nat.add_sub_cancel]

end A401632

/-! ## A401632.P8228901406473610586

`((n+1)^(n+1)-(n+1)!)*(2*(n+1)²-3*(n+1)+1)/3`
-/

namespace A401632.P8228901406473610586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n + 1) ^ (n + 1) : ℤ) - (Nat.factorial (n + 1) : ℤ)) * ((2 * (n + 1) ^ 2 : ℤ) - (3 * (n + 1) : ℤ) + 1) : ℚ) / 3

end

end A401632.P8228901406473610586

namespace A401632

/-- `((n+1)^(n+1)-(n+1)!)*(2*(n+1)²-3*(n+1)+1)/3` -/
def P8228901406473610586.Spec : Prop :=
  ∀ n, P8228901406473610586.a n = (A401632 (n + 1) : ℚ)

theorem P8228901406473610586.correct : P8228901406473610586.Spec := by
  intro n
  simp only [A401632, Nat.add_sub_cancel, A401632.P8228901406473610586.a, A401632.P1718268542620924112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A401632

/-! ## A401632.P18193478953889006369

`A401631(n+1)-A401630(n+1)`
-/

namespace A401632.P18193478953889006369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401631 (n + 1) - A401630 (n + 1)

end

end A401632.P18193478953889006369

namespace A401632

/-- `A401631(n+1)-A401630(n+1)` -/
def P18193478953889006369.Spec : Prop :=
  ∀ n, P18193478953889006369.a n = A401632 (n + 1)

theorem P18193478953889006369.correct : P18193478953889006369.Spec := by
  intro n
  simp only [A401632, Nat.add_sub_cancel, A401632.P18193478953889006369.a, A401632.P1718268542620924112.a, A401630, A401630.P6728416802248949244.a, A401631, A401631.P14960753704261418217.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A401632

/-!
# A401634: a(n) = 2*Sum_{i=1..n-1} Sum_{1<=j<k<=n} abs(i-k)*binomial(i+j-2, i-1)*binomial(2*n-i-k-1, n-i-1).

The programs for A401634, the canonical program `A401634.P15283331767510288020` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401634 has offset 1).

The definition of A401634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401634.P15283331767510288020

`(n+4)*2^(2*(n+1)-3)-2*(2*(n+1))!/(n!*(n+2)!)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401634

/-- `(n+4)*2^(2*(n+1)-3)-2*(2*(n+1))!/(n!*(n+2)!)` -/
def P15283331767510288020.Spec : Prop :=
  ∀ n, P15283331767510288020.a n = (A401634 (n + 1) : ℚ)

end A401634

/-!
# A401636: Practical numbers M (A005153) such that sigma(M) + 2 is prime.

The programs for A401636, there is no canonical definition to state claims against.
-/

/-! ## A401636.P8296708863197837235

`∩[A174973(n+1), A249763(n+1)]`
-/

namespace A401636.P8296708863197837235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401636.P8296708863197837235

/-! ## A401636.P11782408477369265680

`∩[A249763(n+1), A279029(n+1)]`
-/

namespace A401636.P11782408477369265680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401636.P11782408477369265680

/-! ## A401636.P4545751932102382154

`filter[A249763(n+1), A365429(#)]`
-/

namespace A401636.P4545751932102382154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365429 (f1 j).toNat = 1) n)

end

end A401636.P4545751932102382154

/-! ## A401636.P2785792513523546814

`filter[A249763(n+1), A379968(#)]`
-/

namespace A401636.P2785792513523546814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A401636.P2785792513523546814

/-! ## A401636.P14872766097315145301

`∩[A249763(n+1), A365270(n+1)]`
-/

namespace A401636.P14872766097315145301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401636.P14872766097315145301

/-! ## A401636.P13182223042359413583

`∩[A005153(n+1), A249763(n+1)]`
-/

namespace A401636.P13182223042359413583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401636.P13182223042359413583

/-! ## A401636.P3936576483768791173

`filter[A249763(n+1), A322860(#)]`
-/

namespace A401636.P3936576483768791173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A401636.P3936576483768791173

/-!
# A401645: a(0) = 1; a(n) = Sum_{k=0..n-1} binomial(n-1,k) * binomial(n+k-1,k) * a(k).

The programs for A401645, there is no canonical definition to state claims against.
-/

/-! ## A401645.P12079146491684721236

`A270108(a(n-1))+2` with `a(0)=1, a(1)=1`
-/

namespace A401645.P12079146491684721236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A270108 (a (n - 1)).toNat + 2

end

end A401645.P12079146491684721236

/-!
# A401648: Earliest monotonic sequence satisfying a(1)=1 and a(a(n)+a(n-1)+a(n-2)+a(n-3)+a(n-4)) = n for n>=1 (with a(k)=0 for k<=0).

The programs for A401648, there is no canonical definition to state claims against.
-/

/-! ## A401648.P16889404582011205387

`A103586(A107287(n+1))`
-/

namespace A401648.P16889404582011205387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103586 (A107287 (n + 1)).toNat

end

end A401648.P16889404582011205387

/-! ## A401648.P10590213143857480079

`A029837(A062761(n+1)+2)`
-/

namespace A401648.P10590213143857480079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A062761 (n + 1) + 2).toNat

end

end A401648.P10590213143857480079

/-! ## A401648.P7663871229307121391

`A000523(A029744(n+1)+A020639(n+1))`
-/

namespace A401648.P7663871229307121391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A029744 (n + 1) + A020639 (n + 1)).toNat

end

end A401648.P7663871229307121391

/-! ## A401648.P1148670308698853860

`A299230(A356050(n+1))`
-/

namespace A401648.P1148670308698853860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299230 (A356050 (n + 1)).toNat

end

end A401648.P1148670308698853860

/-! ## A401648.P3064939672831897827

`A000523(A102822(n+3))`
-/

namespace A401648.P3064939672831897827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A102822 (n + 3)).toNat

end

end A401648.P3064939672831897827

/-!
# A401662: a(0) = 1; a(n) = Sum_{k=0..n-1} binomial(n+k-1,k) * a(k).

The programs for A401662, there is no canonical definition to state claims against.
-/

/-! ## A401662.P16498411056105400775

`A078555(A277954(n))`
-/

namespace A401662.P16498411056105400775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078555 (A277954 n).toNat

end

end A401662.P16498411056105400775

/-!
# A401664: Numerators of convergents to log_2(9).

The programs for A401664, there is no canonical definition to state claims against.
-/

/-! ## A401664.P17876702743132389918

`A028510(n)*a(n-1)+a(n-2)` with `a(0)=3, a(1)=16`
-/

namespace A401664.P17876702743132389918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 16] fun n a =>
  A028510 n * a (n - 1) + a (n - 2)

end

end A401664.P17876702743132389918

/-!
# A401675: Number of earlier points visible from the n-th point of the hexagonal spiral on the Eisenstein lattice.

The programs for A401675, there is no canonical definition to state claims against.
-/

/-! ## A401675.P272872552544416562

`ceil(log(A336131(n+1)))`
-/

namespace A401675.P272872552544416562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A336131 (n + 1) : ℝ)⌉

end

end A401675.P272872552544416562

/-! ## A401675.P12935078650278086659

`fp[A347499(∑[n+2])]`
-/

namespace A401675.P12935078650278086659
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347499 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A401675.P12935078650278086659

/-! ## A401675.P2032230165345810535

`A105195(A057492(n+1))`
-/

namespace A401675.P2032230165345810535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105195 (A057492 (n + 1)).toNat

end

end A401675.P2032230165345810535

/-! ## A401675.P17835828595034944442

`A130260(A062318(n+1))`
-/

namespace A401675.P17835828595034944442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130260 (A062318 (n + 1)).toNat

end

end A401675.P17835828595034944442

/-! ## A401675.P6158410232262221359

`A329195(A000991(n+1))`
-/

namespace A401675.P6158410232262221359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329195 (A000991 (n + 1)).toNat

end

end A401675.P6158410232262221359

/-!
# A401693: Number of ways to cut a nonempty Dyck word into a prefix and a suffix with both lengths at most n and of the same parity as n.

The programs for A401693, the canonical program `A401693.P15368255342229218036` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401693 has offset 1).

The definition of A401693 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401693.P15368255342229218036

`∑{#}[n, (1+min(#+1-(n+1)%2, n+1-(#+1)))*A000108(#+1)]`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A401693

/-- `∑{#}[n, (1+min(#+1-(n+1)%2, n+1-(#+1)))*A000108(#+1)]` -/
def P15368255342229218036.Spec : Prop :=
  ∀ n, P15368255342229218036.a n = A401693 (n + 1)

theorem P15368255342229218036.correct : P15368255342229218036.Spec := by
  intro n
  simp only [A401693, Nat.add_sub_cancel]

end A401693

/-! ## A401693.P17062938164702346091

`A014140(n+1)-2*A014140(floor(n/2))-(1+(-1)^(n+1))/2`
-/

namespace A401693.P17062938164702346091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014140 (n + 1) - 2 * A014140 ⌊(n : ℚ) / 2⌋.toNat : ℚ) - (1 + (-1) ^ (n + 1) : ℚ) / 2

end

end A401693.P17062938164702346091

namespace A401693

/-- `A014140(n+1)-2*A014140(floor(n/2))-(1+(-1)^(n+1))/2` -/
def P17062938164702346091.Spec : Prop :=
  ∀ n, P17062938164702346091.a n = (A401693 (n + 1) : ℚ)

end A401693

/-! ## A401693.P12961758972446434464

`a(n-2)+2*A014137(n+1)-2*A014137(floor(n/2))-A000108(n+1)` with `a(0)=1, a(1)=4`
-/

namespace A401693.P12961758972446434464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + 2 * A014137 (n + 1) - 2 * A014137 ⌊(n : ℚ) / 2⌋.toNat - A000108 (n + 1)

end

end A401693.P12961758972446434464

namespace A401693

/-- `a(n-2)+2*A014137(n+1)-2*A014137(floor(n/2))-A000108(n+1)` -/
def P12961758972446434464.Spec : Prop :=
  ∀ n, P12961758972446434464.a n = A401693 (n + 1)

end A401693

