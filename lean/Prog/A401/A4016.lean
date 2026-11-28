import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C048
import Seq.B000.C050
import Seq.B000.C053
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C006
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C001
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C014
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
# A401605: Numbers of the form (6*y + 1) * (6*x + 1) for integers x>0 and y>0.

The programs for A401605, the canonical program `A401605.P10857984837398014025` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401605 has offset 1).

The definition of A401605 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070043, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401605.P10857984837398014025

`6*A070043(n+1)+1`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A401605

/-- `6*A070043(n+1)+1` -/
def P10857984837398014025.Spec : Prop :=
  ∀ n, P10857984837398014025.a n = A401605 (n + 1)

theorem P10857984837398014025.correct : P10857984837398014025.Spec := by
  intro n
  simp only [A401605, Nat.add_sub_cancel]

end A401605

/-! ## A401605.P934745737895656447

`A016921(A070043(n+1))`
-/

namespace A401605.P934745737895656447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A070043 (n + 1)).toNat

end

end A401605.P934745737895656447

namespace A401605

/-- `A016921(A070043(n+1))` -/
def P934745737895656447.Spec : Prop :=
  ∀ n, P934745737895656447.a n = A401605 (n + 1)

end A401605

/-! ## A401605.P7118908007842209884

`A271114(A199859(n+1)-1)`
-/

namespace A401605.P7118908007842209884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 (A199859 (n + 1) - 1).toNat

end

end A401605.P7118908007842209884

namespace A401605

/-- `A271114(A199859(n+1)-1)` -/
def P7118908007842209884.Spec : Prop :=
  ∀ n, P7118908007842209884.a n = A401605 (n + 1)

end A401605

/-! ## A401605.P13331082138532285941

`filter[A144917(n+1), A373256(#)]`
-/

namespace A401605.P13331082138532285941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373256 (f1 j).toNat = 1) n)

end

end A401605.P13331082138532285941

namespace A401605

/-- `filter[A144917(n+1), A373256(#)]` -/
def P13331082138532285941.Spec : Prop :=
  ∀ n, P13331082138532285941.a n = A401605 (n + 1)

end A401605

/-! ## A401605.P5341745458534614987

`∩[A144917(n+1), A373257(n+1)]`
-/

namespace A401605.P5341745458534614987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401605.P5341745458534614987

namespace A401605

/-- `∩[A144917(n+1), A373257(n+1)]` -/
def P5341745458534614987.Spec : Prop :=
  ∀ n, (P5341745458534614987.a n : ℤ) = A401605 (n + 1)

end A401605

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
# A401625: Image of 0 under repeated application of the map k -> (3k, 3k+2, 3k, 3k+2).

The programs for A401625, the canonical program `A401625.P497457721285298481` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401625 has offset 0).

The definition of A401625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401625.P497457721285298481

`A005599(A004514(n))`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A401625

/-- `A005599(A004514(n))` -/
def P497457721285298481.Spec : Prop :=
  ∀ n, P497457721285298481.a n = A401625 n

theorem P497457721285298481.correct : P497457721285298481.Spec := by
  intro n
  simp only [A401625]

end A401625

/-! ## A401625.P9430901255540372873

`A163529(A190640(n+1))`
-/

namespace A401625.P9430901255540372873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (A190640 (n + 1)).toNat

end

end A401625.P9430901255540372873

namespace A401625

/-- `A163529(A190640(n+1))` -/
def P9430901255540372873.Spec : Prop :=
  ∀ n, P9430901255540372873.a n = A401625 n

end A401625

/-! ## A401625.P3983698969874081176

`A163325(A005823(n+1))`
-/

namespace A401625.P3983698969874081176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163325 (A005823 (n + 1)).toNat

end

end A401625.P3983698969874081176

namespace A401625

/-- `A163325(A005823(n+1))` -/
def P3983698969874081176.Spec : Prop :=
  ∀ n, P3983698969874081176.a n = A401625 n

end A401625

/-! ## A401625.P16300077410673945832

`A163326(A055246(n+1))`
-/

namespace A401625.P16300077410673945832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163326 (A055246 (n + 1)).toNat

end

end A401625.P16300077410673945832

namespace A401625

/-- `A163326(A055246(n+1))` -/
def P16300077410673945832.Spec : Prop :=
  ∀ n, P16300077410673945832.a n = A401625 n

end A401625

/-! ## A401625.P15532736921272340297

`A366528(A334110(n))`
-/

namespace A401625.P15532736921272340297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366528 (A334110 n).toNat

end

end A401625.P15532736921272340297

namespace A401625

/-- `A366528(A334110(n))` -/
def P15532736921272340297.Spec : Prop :=
  ∀ n, P15532736921272340297.a n = A401625 n

end A401625

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

The programs for A401630, the canonical program `A401630.P6728416802248949244` is in `Seq.B000.C053`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401630 has offset 1).

The definition of A401630 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n!*(C(n+2, 3)+C(n+1, 3))` (program `A401630.P6728416802248949244`, by `A401630.P6728416802248949244.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A401630.P6728416802248949244

`2*n!*(C(n+2, 3)+C(n+1, 3))`

The canonical program, it is in `Seq.B000.C053`.
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

The programs for A401631, the canonical program `A401631.P14960753704261418217` is in `Seq.B000.C053`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401631 has offset 1).

The definition of A401631 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)^n*(C(n+2, 3)+C(n+1, 3))` (program `A401631.P14960753704261418217`, by `A401631.P14960753704261418217.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A401631.P14960753704261418217

`2*(n+1)^n*(C(n+2, 3)+C(n+1, 3))`

The canonical program, it is in `Seq.B000.C053`.
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

The programs for A401632, the canonical program `A401632.P1718268542620924112` is in `Seq.B000.C053`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401632 has offset 1).

The definition of A401632 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*((n+1)^n-n!)*(C(n+2, 3)+C(n+1, 3))` (program `A401632.P1718268542620924112`, by `A401632.P1718268542620924112.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A401632.P1718268542620924112

`2*((n+1)^n-n!)*(C(n+2, 3)+C(n+1, 3))`

The canonical program, it is in `Seq.B000.C053`.
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

The programs for A401634, the canonical program `A401634.P15283331767510288020` is in `Seq.B000.C053`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401634 has offset 1).

The definition of A401634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401634.P15283331767510288020

`(n+4)*2^(2*(n+1)-3)-2*(2*(n+1))!/(n!*(n+2)!)`

The canonical program, it is in `Seq.B000.C053`.
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
# A401646: Total number of symmetric peaks over all Dyck paths of semilength n.

The programs for A401646, the canonical program `A401646.P16906461587033293892` is in `Seq.B000.C053`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401646 has offset 0).

The definition of A401646 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401646.P16906461587033293892

`a(n-1)+(n+2)*C(2*n-2, n-1)/(2*n)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C053`.
-/

namespace A401646

/-- `a(n-1)+(n+2)*C(2*n-2, n-1)/(2*n)` -/
def P16906461587033293892.Spec : Prop :=
  ∀ n, P16906461587033293892.a n = (A401646 n : ℚ)

end A401646

/-! ## A401646.P3891280352268671388

`A371963(n)+A014138(n)`
-/

namespace A401646.P3891280352268671388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371963 n + A014138 n

end

end A401646.P3891280352268671388

namespace A401646

/-- `A371963(n)+A014138(n)` -/
def P3891280352268671388.Spec : Prop :=
  ∀ n, P3891280352268671388.a n = A401646 n

end A401646

/-! ## A401646.P17542213848839257351

`A006134(n)-(A371965(n)+A000984(n))`
-/

namespace A401646.P17542213848839257351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 n - (A371965 n + A000984 n)

end

end A401646.P17542213848839257351

namespace A401646

/-- `A006134(n)-(A371965(n)+A000984(n))` -/
def P17542213848839257351.Spec : Prop :=
  ∀ n, P17542213848839257351.a n = A401646 n

end A401646

/-! ## A401646.P1596321582449555831

`A000984(n)-(A371965(n)+A281593(n))`
-/

namespace A401646.P1596321582449555831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - (A371965 n + A281593 n)

end

end A401646.P1596321582449555831

namespace A401646

/-- `A000984(n)-(A371965(n)+A281593(n))` -/
def P1596321582449555831.Spec : Prop :=
  ∀ n, P1596321582449555831.a n = A401646 n

end A401646

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
# A401652: a(1) = 1; for n > 1: if a(n-1) is odd, a(n) = a(n-1) + n else a(n) = a(n-1) - 1.

The programs for A401652, the canonical program `A401652.P3344191888107403541` is in `Seq.B000.C053`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401652 has offset 1).

The definition of A401652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401652.P3344191888107403541

`ogf((1+2x+x^2-5x^3+3x^5)/(1-x-2x^2+2x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C053`.
-/

namespace A401652

/-- `ogf((1+2x+x^2-5x^3+3x^5)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P3344191888107403541.Spec : Prop :=
  ∀ n, P3344191888107403541.a n = A401652 (n + 1)

theorem P3344191888107403541.correct : P3344191888107403541.Spec := by
  intro n
  simp only [A401652, Nat.add_sub_cancel]

end A401652

/-! ## A401652.P4264671034553797597

`a(n-1)+(n+2)*a(n-1)%2-1` with `a(0)=1`
-/

namespace A401652.P4264671034553797597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 2 : ℤ) * Int.tmod (a (n - 1)) 2 - 1

end

end A401652.P4264671034553797597

namespace A401652

/-- `a(n-1)+(n+2)*a(n-1)%2-1` -/
def P4264671034553797597.Spec : Prop :=
  ∀ n, P4264671034553797597.a n = A401652 (n + 1)

end A401652

/-! ## A401652.P2315211782702010079

`A249333(n+3)%A036572(n+3)`
-/

namespace A401652.P2315211782702010079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249333 (n + 3)) (A036572 (n + 3))

end

end A401652.P2315211782702010079

namespace A401652

/-- `A249333(n+3)%A036572(n+3)` -/
def P2315211782702010079.Spec : Prop :=
  ∀ n, P2315211782702010079.a n = A401652 (n + 1)

end A401652

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
# A401672: Triangle read by rows: T(n,k) = n^2 + k^2 + n*k + n + k, 1 <= k <= n.

The programs for A401672, the canonical program `A401672.P2395759396547144328` is in `Seq.B000.C053`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401672 has offset 1).

The definition of A401672 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1)²+(col(n)+1)²+(row(n)+1)*(col(n)+1)+row(n)+1+col(n)+1` (program `A401672.P2395759396547144328`, by `A401672.P2395759396547144328.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A401672.P2395759396547144328

`(row(n)+1)²+(col(n)+1)²+(row(n)+1)*(col(n)+1)+row(n)+1+col(n)+1`

The canonical program, it is in `Seq.B000.C053`.
-/

namespace A401672

/-- `(row(n)+1)²+(col(n)+1)²+(row(n)+1)*(col(n)+1)+row(n)+1+col(n)+1` -/
def P2395759396547144328.Spec : Prop :=
  ∀ n, (P2395759396547144328.a n : ℤ) = A401672 (n + 1)

theorem P2395759396547144328.correct : P2395759396547144328.Spec := by
  intro n
  simp only [A401672, Nat.add_sub_cancel]

end A401672

/-! ## A401672.P16746934729527426969

`A215630(n+1)+A083487(n+1)`
-/

namespace A401672.P16746934729527426969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215630 (n + 1) + A083487 (n + 1)

end

end A401672.P16746934729527426969

namespace A401672

/-- `A215630(n+1)+A083487(n+1)` -/
def P16746934729527426969.Spec : Prop :=
  ∀ n, P16746934729527426969.a n = A401672 (n + 1)

theorem P16746934729527426969.correct : P16746934729527426969.Spec := by
  intro n
  simp only [A401672, Nat.add_sub_cancel, A401672.P16746934729527426969.a, A401672.P2395759396547144328.a, A083487, A083487.P8449240486603242499.a, A215630, A215630.P11031320249152060517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A401672

/-! ## A401672.P17269488681844778843

`A215631(n+1)+A108872(n+1)`
-/

namespace A401672.P17269488681844778843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215631 (n + 1) + A108872 (n + 1)

end

end A401672.P17269488681844778843

namespace A401672

/-- `A215631(n+1)+A108872(n+1)` -/
def P17269488681844778843.Spec : Prop :=
  ∀ n, P17269488681844778843.a n = A401672 (n + 1)

end A401672

/-! ## A401672.P924282772606650771

`A182664(n+1)-A344685(n)`
-/

namespace A401672.P924282772606650771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182664 (n + 1) - A344685 n

end

end A401672.P924282772606650771

namespace A401672

/-- `A182664(n+1)-A344685(n)` -/
def P924282772606650771.Spec : Prop :=
  ∀ n, P924282772606650771.a n = A401672 (n + 1)

end A401672

/-! ## A401672.P13282514115273758452

`A175140(A215631(n+1))`
-/

namespace A401672.P13282514115273758452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175140 (A215631 (n + 1)).toNat

end

end A401672.P13282514115273758452

namespace A401672

/-- `A175140(A215631(n+1))` -/
def P13282514115273758452.Spec : Prop :=
  ∀ n, P13282514115273758452.a n = A401672 (n + 1)

end A401672

/-!
# A401673: Triangle read by rows: T(n,k) is the number of domicule tilings of the 2n X 2n square with exactly 2k diagonal domicules, 0 <= k <= n^2.

The programs for A401673, there is no canonical definition to state claims against.
-/

/-! ## A401673.P6702494517805093943

`A090349(A041329(n))`
-/

namespace A401673.P6702494517805093943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090349 (A041329 n).toNat

end

end A401673.P6702494517805093943

/-!
# A401674: a(n) = Sum_{k=1..n} k*(-1)^pi(k), where pi = A000720.

The programs for A401674, the canonical program `A401674.P12182739136436178416` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401674 has offset 0).

The definition of A401674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401674.P12182739136436178416

`a(n-1)+n*(-1)^A000720(n)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A401674

/-- `a(n-1)+n*(-1)^A000720(n)` -/
def P12182739136436178416.Spec : Prop :=
  ∀ n, P12182739136436178416.a n = (A401674 n : ℚ)

end A401674

/-! ## A401674.P912956332321553888

`∑[n*A065357(n)]`
-/

namespace A401674.P912956332321553888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A065357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401674.P912956332321553888

namespace A401674

/-- `∑[n*A065357(n)]` -/
def P912956332321553888.Spec : Prop :=
  ∀ n, P912956332321553888.a n = A401674 n

end A401674

/-!
# A401675: Number of earlier points visible from the n-th point of the hexagonal spiral on the Eisenstein lattice.

The programs for A401675, there is no canonical definition to state claims against.
-/

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

/-! ## A401675.P9418623700737698377

`A325678(A079212(n+1))`
-/

namespace A401675.P9418623700737698377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A079212 (n + 1)).toNat

end

end A401675.P9418623700737698377

/-!
# A401684: Number of lattice points on the complete edge skeleton of a stella octangula.

The programs for A401684, the canonical program `A401684.P18068522790163831520` is in `Seq.B000.C053`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401684 has offset 1).

The definition of A401684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401684.P18068522790163831520

`36*(n+1)-22`

The canonical program, it is in `Seq.B000.C053`.
-/

namespace A401684

/-- `36*(n+1)-22` -/
def P18068522790163831520.Spec : Prop :=
  ∀ n, P18068522790163831520.a n = A401684 (n + 1)

theorem P18068522790163831520.correct : P18068522790163831520.Spec := by
  intro n
  simp only [A401684, Nat.add_sub_cancel]

end A401684

/-!
# A401685: Triangle read by rows: T(n, k) = (n + 1)*2^k, with k = 0..n.

The programs for A401685, the canonical program `A401685.P3680863487555396756` is in `Seq.B000.C053`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401685 has offset 0).

The definition of A401685 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1)*2^col(n)` (program `A401685.P3680863487555396756`, by `A401685.P3680863487555396756.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A401685.P3680863487555396756

`(row(n)+1)*2^col(n)`

The canonical program, it is in `Seq.B000.C053`.
-/

namespace A401685

/-- `(row(n)+1)*2^col(n)` -/
def P3680863487555396756.Spec : Prop :=
  ∀ n, (P3680863487555396756.a n : ℤ) = A401685 n

theorem P3680863487555396756.correct : P3680863487555396756.Spec := by
  intro n
  simp only [A401685]

end A401685

/-! ## A401685.P15331585136265255057

`A242388(n+1)-1`
-/

namespace A401685.P15331585136265255057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242388 (n + 1) - 1

end

end A401685.P15331585136265255057

namespace A401685

/-- `A242388(n+1)-1` -/
def P15331585136265255057.Spec : Prop :=
  ∀ n, P15331585136265255057.a n = A401685 n

theorem P15331585136265255057.correct : P15331585136265255057.Spec := by
  intro n
  simp only [A401685, Nat.add_sub_cancel, A401685.P15331585136265255057.a, A401685.P3680863487555396756.a, A242388, A242388.P11089165182016006470.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A401685

/-! ## A401685.P12275871200436335162

`A002024(n+1)*A059268(n)`
-/

namespace A401685.P12275871200436335162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A059268 n

end

end A401685.P12275871200436335162

namespace A401685

/-- `A002024(n+1)*A059268(n)` -/
def P12275871200436335162.Spec : Prop :=
  ∀ n, P12275871200436335162.a n = A401685 n

end A401685

/-! ## A401685.P5971274610520557355

`A401686(A061885(n))`
-/

namespace A401685.P5971274610520557355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401686 (A061885 n).toNat

end

end A401685.P5971274610520557355

namespace A401685

/-- `A401686(A061885(n))` -/
def P5971274610520557355.Spec : Prop :=
  ∀ n, P5971274610520557355.a n = A401685 n

end A401685

/-! ## A401685.P4001050481607892369

`A023443(A242388(n+1))`
-/

namespace A401685.P4001050481607892369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A242388 (n + 1)).toNat

end

end A401685.P4001050481607892369

namespace A401685

/-- `A023443(A242388(n+1))` -/
def P4001050481607892369.Spec : Prop :=
  ∀ n, P4001050481607892369.a n = A401685 n

end A401685

/-! ## A401685.P12911348589950914871

`A109168(A118413(n+1))`
-/

namespace A401685.P12911348589950914871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (A118413 (n + 1)).toNat

end

end A401685.P12911348589950914871

namespace A401685

/-- `A109168(A118413(n+1))` -/
def P12911348589950914871.Spec : Prop :=
  ∀ n, P12911348589950914871.a n = A401685 n

end A401685

/-! ## A401685.P18325547435315997884

`A130128(A209268(A118416(n+1)))`
-/

namespace A401685.P18325547435315997884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130128 (A209268 (A118416 (n + 1)).toNat).toNat

end

end A401685.P18325547435315997884

namespace A401685

/-- `A130128(A209268(A118416(n+1)))` -/
def P18325547435315997884.Spec : Prop :=
  ∀ n, P18325547435315997884.a n = A401685 n

end A401685

/-!
# A401691: Number of stabilizer states on n qutrits.

The programs for A401691, the canonical program `A401691.P17787563694097089103` is in `Seq.B000.C053`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401691 has offset 0).

The definition of A401691 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401691.P17787563694097089103

`3*(3^n+1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C053`.
-/

namespace A401691

/-- `3*(3^n+1)*a(n-1)` -/
def P17787563694097089103.Spec : Prop :=
  ∀ n, (P17787563694097089103.a n : ℤ) = A401691 n

theorem P17787563694097089103.correct : P17787563694097089103.Spec := by
  intro n
  simp only [A401691]

end A401691

/-! ## A401691.P16070034120684071566

`3^n*A290000(n+1)`
-/

namespace A401691.P16070034120684071566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A290000 (n + 1)

end

end A401691.P16070034120684071566

namespace A401691

/-- `3^n*A290000(n+1)` -/
def P16070034120684071566.Spec : Prop :=
  ∀ n, P16070034120684071566.a n = A401691 n

end A401691

/-! ## A401691.P14420353484561585330

`3^n*A323716(n)/2`
-/

namespace A401691.P14420353484561585330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) * A323716 n : ℚ) / 2

end

end A401691.P14420353484561585330

namespace A401691

/-- `3^n*A323716(n)/2` -/
def P14420353484561585330.Spec : Prop :=
  ∀ n, P14420353484561585330.a n = (A401691 n : ℚ)

end A401691

/-! ## A401691.P9114326360491951683

`a(n-1)*A178674(n+1)` with `a(0)=1`
-/

namespace A401691.P9114326360491951683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A178674 (n + 1)

end

end A401691.P9114326360491951683

namespace A401691

/-- `a(n-1)*A178674(n+1)` -/
def P9114326360491951683.Spec : Prop :=
  ∀ n, P9114326360491951683.a n = A401691 n

end A401691

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

/-!
# A401695: Number of unordered factorizations of n into its distinct and pairwise infinitarily coprime infinitary divisors.

The programs for A401695, the canonical program `A401695.P8234275037941700452` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401695 has offset 1).

The definition of A401695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401695.P8234275037941700452

`A000110(A064547(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A401695

/-- `A000110(A064547(n+1))` -/
def P8234275037941700452.Spec : Prop :=
  ∀ n, P8234275037941700452.a n = A401695 (n + 1)

theorem P8234275037941700452.correct : P8234275037941700452.Spec := by
  intro n
  simp only [A401695, Nat.add_sub_cancel]

end A401695

/-! ## A401695.P11945008647091918250

`A001055(A160102(n+1))`
-/

namespace A401695.P11945008647091918250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A160102 (n + 1)).toNat

end

end A401695.P11945008647091918250

namespace A401695

/-- `A001055(A160102(n+1))` -/
def P11945008647091918250.Spec : Prop :=
  ∀ n, P11945008647091918250.a n = A401695 (n + 1)

end A401695

/-! ## A401695.P3972833063365773449

`A005117(A003557(A368106((n+1)²)))`
-/

namespace A401695.P3972833063365773449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A003557 (A368106 ((n + 1) ^ 2)).toNat).toNat

end

end A401695.P3972833063365773449

namespace A401695

/-- `A005117(A003557(A368106((n+1)²)))` -/
def P3972833063365773449.Spec : Prop :=
  ∀ n, P3972833063365773449.a n = A401695 (n + 1)

end A401695

/-! ## A401695.P1539842728872736071

`A050315(A302787(n+1))`
-/

namespace A401695.P1539842728872736071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 (A302787 (n + 1)).toNat

end

end A401695.P1539842728872736071

namespace A401695

/-- `A050315(A302787(n+1))` -/
def P1539842728872736071.Spec : Prop :=
  ∀ n, P1539842728872736071.a n = A401695 (n + 1)

end A401695

/-! ## A401695.P5292894211820483155

`A037445(n+1)-A286574(A156552(n+1))`
-/

namespace A401695.P5292894211820483155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (n + 1) - A286574 (A156552 (n + 1)).toNat

end

end A401695.P5292894211820483155

namespace A401695

/-- `A037445(n+1)-A286574(A156552(n+1))` -/
def P5292894211820483155.Spec : Prop :=
  ∀ n, P5292894211820483155.a n = A401695 (n + 1)

end A401695

/-! ## A401695.P8501939595574657574

`A286575(A156552(n+1))-A064547(n+1)`
-/

namespace A401695.P8501939595574657574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286575 (A156552 (n + 1)).toNat - A064547 (n + 1)

end

end A401695.P8501939595574657574

namespace A401695

/-- `A286575(A156552(n+1))-A064547(n+1)` -/
def P8501939595574657574.Spec : Prop :=
  ∀ n, P8501939595574657574.a n = A401695 (n + 1)

end A401695

