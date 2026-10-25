import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A378801: G.f. A(x) satisfies A(x) = ( 1 + x/(1 - x*A(x)^(2/3)) )^3.

The programs for A378801, there is no canonical definition to state claims against.
-/

/-! ## A378801.P5941112214517268384

`A059995(A214996(n))+A002376(n+1)`
-/

namespace A378801.P5941112214517268384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A214996 n).toNat + A002376 (n + 1)

end

end A378801.P5941112214517268384

/-! ## A378801.P5532046086240084867

`A059995(A214996(n))+A052382(n+1)`
-/

namespace A378801.P5532046086240084867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A214996 n).toNat + A052382 (n + 1)

end

end A378801.P5532046086240084867

/-! ## A378801.P9447591387195956198

`A263837(n+1)+A059995(A214996(n))`
-/

namespace A378801.P9447591387195956198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263837 (n + 1) + A059995 (A214996 n).toNat

end

end A378801.P9447591387195956198

/-!
# A378802: a(n) = n * binomial(4*n, n).

The programs for A378802, the canonical program `A378802.P1592035121626726078` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378802 has offset 0).

The definition of A378802 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*C(4*n, n)` (program `A378802.P1592035121626726078`, by `A378802.P1592035121626726078.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A378802.P6102746320096904477

`A374522(n)+n`
-/

namespace A378802.P6102746320096904477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374522 n + (n : ℤ)

end

end A378802.P6102746320096904477

namespace A378802

/-- `A374522(n)+n` -/
def P6102746320096904477.Spec : Prop :=
  ∀ n, P6102746320096904477.a n = A378802 n

theorem P6102746320096904477.correct : P6102746320096904477.Spec := by
  intro n
  simp only [A378802, Nat.add_sub_cancel, A378802.P6102746320096904477.a, A378802.P1592035121626726078.a, A374522, A374522.P5912875025097854940.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A378802

/-! ## A378802.P4458477134878715548

`n*A005810(n)`
-/

namespace A378802.P4458477134878715548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005810 n

end

end A378802.P4458477134878715548

namespace A378802

/-- `n*A005810(n)` -/
def P4458477134878715548.Spec : Prop :=
  ∀ n, P4458477134878715548.a n = A378802 n

theorem P4458477134878715548.correct : P4458477134878715548.Spec := by
  intro n
  simp only [A378802, Nat.add_sub_cancel, A378802.P4458477134878715548.a, A378802.P1592035121626726078.a, A005810, A005810.P5008475447009585536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A378802

/-! ## A378802.P1592035121626726078

`n*C(4*n, n)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A378802

/-- `n*C(4*n, n)` -/
def P1592035121626726078.Spec : Prop :=
  ∀ n, (P1592035121626726078.a n : ℤ) = A378802 n

theorem P1592035121626726078.correct : P1592035121626726078.Spec := by
  intro n
  simp only [A378802]

end A378802

/-! ## A378802.P16184691375724536225

`n*A119304(∑[n])`
-/

namespace A378802.P16184691375724536225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A119304 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A378802.P16184691375724536225

namespace A378802

/-- `n*A119304(∑[n])` -/
def P16184691375724536225.Spec : Prop :=
  ∀ n, P16184691375724536225.a n = A378802 n

end A378802

/-! ## A378802.P12289255081253444145

`n*A264773(∑[n])`
-/

namespace A378802.P12289255081253444145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A264773 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A378802.P12289255081253444145

namespace A378802

/-- `n*A264773(∑[n])` -/
def P12289255081253444145.Spec : Prop :=
  ∀ n, P12289255081253444145.a n = A378802 n

end A378802

/-! ## A378802.P6217341274241972291

`n*record[A119304(n)]`
-/

namespace A378802.P6217341274241972291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378802.P6217341274241972291

namespace A378802

/-- `n*record[A119304(n)]` -/
def P6217341274241972291.Spec : Prop :=
  ∀ n, P6217341274241972291.a n = A378802 n

end A378802

/-! ## A378802.P12903259757702459230

`n*record[A264773(n)]`
-/

namespace A378802.P12903259757702459230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378802.P12903259757702459230

namespace A378802

/-- `n*record[A264773(n)]` -/
def P12903259757702459230.Spec : Prop :=
  ∀ n, P12903259757702459230.a n = A378802 n

end A378802

/-! ## A378802.P17009443464001654725

`2*n*A359108(n)`
-/

namespace A378802.P17009443464001654725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A359108 n)

end

end A378802.P17009443464001654725

namespace A378802

/-- `2*n*A359108(n)` -/
def P17009443464001654725.Spec : Prop :=
  ∀ n, P17009443464001654725.a n = A378802 n

end A378802

/-! ## A378802.P11712487687316394400

`n*A002293(n)*A016777(n)`
-/

namespace A378802.P11712487687316394400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002293 n * A016777 n)

end

end A378802.P11712487687316394400

namespace A378802

/-- `n*A002293(n)*A016777(n)` -/
def P11712487687316394400.Spec : Prop :=
  ∀ n, P11712487687316394400.a n = A378802 n

end A378802

/-! ## A378802.P14933002740126490133

`n/A016813(n)*A306290(n)`
-/

namespace A378802.P14933002740126490133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A016813 n : ℚ) * (A306290 n : ℚ)

end

end A378802.P14933002740126490133

namespace A378802

/-- `n/A016813(n)*A306290(n)` -/
def P14933002740126490133.Spec : Prop :=
  ∀ n, P14933002740126490133.a n = (A378802 n : ℚ)

end A378802

/-!
# A378803: a(n) = n^2 * binomial(4*n, n).

The programs for A378803, the canonical program `A378803.P10010410467984810148` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378803 has offset 0).

The definition of A378803 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*C(4*n, n)` (program `A378803.P10010410467984810148`, by `A378803.P10010410467984810148.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A378803.P7258404273834306747

`n*A378802(n)`
-/

namespace A378803.P7258404273834306747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A378802 n

end

end A378803.P7258404273834306747

namespace A378803

/-- `n*A378802(n)` -/
def P7258404273834306747.Spec : Prop :=
  ∀ n, P7258404273834306747.a n = A378803 n

theorem P7258404273834306747.correct : P7258404273834306747.Spec := by
  intro n
  simp only [A378803, Nat.add_sub_cancel, A378803.P7258404273834306747.a, A378803.P10010410467984810148.a, A378802, A378802.P1592035121626726078.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A378803

/-! ## A378803.P13442925615277607691

`n²*A005810(n)`
-/

namespace A378803.P13442925615277607691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A005810 n

end

end A378803.P13442925615277607691

namespace A378803

/-- `n²*A005810(n)` -/
def P13442925615277607691.Spec : Prop :=
  ∀ n, P13442925615277607691.a n = A378803 n

theorem P13442925615277607691.correct : P13442925615277607691.Spec := by
  intro n
  simp only [A378803, Nat.add_sub_cancel, A378803.P13442925615277607691.a, A378803.P10010410467984810148.a, A005810, A005810.P5008475447009585536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A378803

/-! ## A378803.P10010410467984810148

`n²*C(4*n, n)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A378803

/-- `n²*C(4*n, n)` -/
def P10010410467984810148.Spec : Prop :=
  ∀ n, (P10010410467984810148.a n : ℤ) = A378803 n

theorem P10010410467984810148.correct : P10010410467984810148.Spec := by
  intro n
  simp only [A378803]

end A378803

/-! ## A378803.P700906555944670107

`n*(A374522(n)+n)`
-/

namespace A378803.P700906555944670107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A374522 n + (n : ℤ))

end

end A378803.P700906555944670107

namespace A378803

/-- `n*(A374522(n)+n)` -/
def P700906555944670107.Spec : Prop :=
  ∀ n, P700906555944670107.a n = A378803 n

theorem P700906555944670107.correct : P700906555944670107.Spec := by
  intro n
  simp only [A378803, Nat.add_sub_cancel, A378803.P700906555944670107.a, A378803.P10010410467984810148.a, A374522, A374522.P5912875025097854940.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A378803

/-! ## A378803.P10026298699581568104

`n²*A119304(∑[n])`
-/

namespace A378803.P10026298699581568104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A119304 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A378803.P10026298699581568104

namespace A378803

/-- `n²*A119304(∑[n])` -/
def P10026298699581568104.Spec : Prop :=
  ∀ n, P10026298699581568104.a n = A378803 n

end A378803

/-! ## A378803.P5309045249894427143

`n²*A264773(∑[n])`
-/

namespace A378803.P5309045249894427143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A264773 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A378803.P5309045249894427143

namespace A378803

/-- `n²*A264773(∑[n])` -/
def P5309045249894427143.Spec : Prop :=
  ∀ n, P5309045249894427143.a n = A378803 n

end A378803

/-! ## A378803.P12669067204952588864

`n²*record[A119304(n)]`
-/

namespace A378803.P12669067204952588864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378803.P12669067204952588864

namespace A378803

/-- `n²*record[A119304(n)]` -/
def P12669067204952588864.Spec : Prop :=
  ∀ n, P12669067204952588864.a n = A378803 n

end A378803

/-! ## A378803.P3441288157524481515

`n²*record[A264773(n)]`
-/

namespace A378803.P3441288157524481515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378803.P3441288157524481515

namespace A378803

/-- `n²*record[A264773(n)]` -/
def P3441288157524481515.Spec : Prop :=
  ∀ n, P3441288157524481515.a n = A378803 n

end A378803

/-! ## A378803.P1202450643332175986

`A005843(n²)*A359108(n)`
-/

namespace A378803.P1202450643332175986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n ^ 2) * A359108 n

end

end A378803.P1202450643332175986

namespace A378803

/-- `A005843(n²)*A359108(n)` -/
def P1202450643332175986.Spec : Prop :=
  ∀ n, P1202450643332175986.a n = A378803 n

end A378803

/-! ## A378803.P2157166138213981355

`n*A005843(n)*A359108(n)`
-/

namespace A378803.P2157166138213981355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A005843 n * A359108 n)

end

end A378803.P2157166138213981355

namespace A378803

/-- `n*A005843(n)*A359108(n)` -/
def P2157166138213981355.Spec : Prop :=
  ∀ n, P2157166138213981355.a n = A378803 n

end A378803

/-!
# A378804: a(n) = n * 2^n * binomial(4*n, n).

The programs for A378804, the canonical program `A378804.P12466383672892324990` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378804 has offset 0).

The definition of A378804 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*2^n*C(4*n, n)` (program `A378804.P12466383672892324990`, by `A378804.P12466383672892324990.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A378804.P12466383672892324990

`n*2^n*C(4*n, n)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A378804

/-- `n*2^n*C(4*n, n)` -/
def P12466383672892324990.Spec : Prop :=
  ∀ n, (P12466383672892324990.a n : ℤ) = A378804 n

theorem P12466383672892324990.correct : P12466383672892324990.Spec := by
  intro n
  simp only [A378804]

end A378804

/-! ## A378804.P16177032303995721285

`2^n*A378802(n)`
-/

namespace A378804.P16177032303995721285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A378802 n

end

end A378804.P16177032303995721285

namespace A378804

/-- `2^n*A378802(n)` -/
def P16177032303995721285.Spec : Prop :=
  ∀ n, P16177032303995721285.a n = A378804 n

theorem P16177032303995721285.correct : P16177032303995721285.Spec := by
  intro n
  simp only [A378804, Nat.add_sub_cancel, A378804.P16177032303995721285.a, A378804.P12466383672892324990.a, A378802, A378802.P1592035121626726078.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A378804

/-! ## A378804.P6352149885650795991

`A036289(n)*A005810(n)`
-/

namespace A378804.P6352149885650795991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n * A005810 n

end

end A378804.P6352149885650795991

namespace A378804

/-- `A036289(n)*A005810(n)` -/
def P6352149885650795991.Spec : Prop :=
  ∀ n, P6352149885650795991.a n = A378804 n

theorem P6352149885650795991.correct : P6352149885650795991.Spec := by
  intro n
  simp only [A378804, Nat.add_sub_cancel, A378804.P6352149885650795991.a, A378804.P12466383672892324990.a, A005810, A005810.P5008475447009585536.a, A036289, A036289.P13525419631139213940.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A378804

/-! ## A378804.P4793886881088282864

`n*A386918(n)`
-/

namespace A378804.P4793886881088282864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A386918 n

end

end A378804.P4793886881088282864

namespace A378804

/-- `n*A386918(n)` -/
def P4793886881088282864.Spec : Prop :=
  ∀ n, P4793886881088282864.a n = A378804 n

theorem P4793886881088282864.correct : P4793886881088282864.Spec := by
  intro n
  simp only [A378804, Nat.add_sub_cancel, A378804.P4793886881088282864.a, A378804.P12466383672892324990.a, A386918, A386918.P6850681663165678686.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A378804

/-! ## A378804.P7972811005898647824

`(A002064(n)-1)*A005810(n)`
-/

namespace A378804.P7972811005898647824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002064 n - 1) * A005810 n

end

end A378804.P7972811005898647824

namespace A378804

/-- `(A002064(n)-1)*A005810(n)` -/
def P7972811005898647824.Spec : Prop :=
  ∀ n, P7972811005898647824.a n = A378804 n

theorem P7972811005898647824.correct : P7972811005898647824.Spec := by
  intro n
  simp only [A378804, Nat.add_sub_cancel, A378804.P7972811005898647824.a, A378804.P12466383672892324990.a, A002064, A002064.P16424863031535762998.a, A005810, A005810.P5008475447009585536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A378804

/-! ## A378804.P9334660127887045024

`A378805(n)/A065033(2*n)`
-/

namespace A378804.P9334660127887045024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378805 n : ℚ) / (A065033 (2 * n) : ℚ)

end

end A378804.P9334660127887045024

namespace A378804

/-- `A378805(n)/A065033(2*n)` -/
def P9334660127887045024.Spec : Prop :=
  ∀ n, P9334660127887045024.a n = (A378804 n : ℚ)

end A378804

/-! ## A378804.P5973782911781502174

`A378805(n)/A008619(comp[2*(n+1)])`
-/

namespace A378804.P5973782911781502174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378805 n : ℚ) / (A008619 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ)

end

end A378804.P5973782911781502174

namespace A378804

/-- `A378805(n)/A008619(comp[2*(n+1)])` -/
def P5973782911781502174.Spec : Prop :=
  ∀ n, P5973782911781502174.a n = (A378804 n : ℚ)

end A378804

/-! ## A378804.P9575918806218623332

`n*A128413(A046092(n))`
-/

namespace A378804.P9575918806218623332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A128413 (A046092 n).toNat

end

end A378804.P9575918806218623332

namespace A378804

/-- `n*A128413(A046092(n))` -/
def P9575918806218623332.Spec : Prop :=
  ∀ n, P9575918806218623332.a n = A378804 n

end A378804

/-!
# A378805: a(n) = n^2 * 2^n * binomial(4*n, n).

The programs for A378805, the canonical program `A378805.P3870825077699895129` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378805 has offset 0).

The definition of A378805 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*2^n*C(4*n, n)` (program `A378805.P3870825077699895129`, by `A378805.P3870825077699895129.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A378805.P3870825077699895129

`n²*2^n*C(4*n, n)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A378805

/-- `n²*2^n*C(4*n, n)` -/
def P3870825077699895129.Spec : Prop :=
  ∀ n, (P3870825077699895129.a n : ℤ) = A378805 n

theorem P3870825077699895129.correct : P3870825077699895129.Spec := by
  intro n
  simp only [A378805]

end A378805

/-! ## A378805.P272384943036114525

`n*A378804(n)`
-/

namespace A378805.P272384943036114525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A378804 n

end

end A378805.P272384943036114525

namespace A378805

/-- `n*A378804(n)` -/
def P272384943036114525.Spec : Prop :=
  ∀ n, P272384943036114525.a n = A378805 n

theorem P272384943036114525.correct : P272384943036114525.Spec := by
  intro n
  simp only [A378805, Nat.add_sub_cancel, A378805.P272384943036114525.a, A378805.P3870825077699895129.a, A378804, A378804.P12466383672892324990.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A378805

/-! ## A378805.P15454310831405053848

`2^n*A378803(n)`
-/

namespace A378805.P15454310831405053848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A378803 n

end

end A378805.P15454310831405053848

namespace A378805

/-- `2^n*A378803(n)` -/
def P15454310831405053848.Spec : Prop :=
  ∀ n, P15454310831405053848.a n = A378805 n

theorem P15454310831405053848.correct : P15454310831405053848.Spec := by
  intro n
  simp only [A378805, Nat.add_sub_cancel, A378805.P15454310831405053848.a, A378805.P3870825077699895129.a, A378803, A378803.P10010410467984810148.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A378805

/-! ## A378805.P4817677583190965677

`A007758(n)*A005810(n)`
-/

namespace A378805.P4817677583190965677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007758 n * A005810 n

end

end A378805.P4817677583190965677

namespace A378805

/-- `A007758(n)*A005810(n)` -/
def P4817677583190965677.Spec : Prop :=
  ∀ n, P4817677583190965677.a n = A378805 n

theorem P4817677583190965677.correct : P4817677583190965677.Spec := by
  intro n
  simp only [A378805, Nat.add_sub_cancel, A378805.P4817677583190965677.a, A378805.P3870825077699895129.a, A005810, A005810.P5008475447009585536.a, A007758, A007758.P17176775618145894956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A378805

/-! ## A378805.P12429565350733945161

`n*n*A386918(n)`
-/

namespace A378805.P12429565350733945161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * A386918 n)

end

end A378805.P12429565350733945161

namespace A378805

/-- `n*n*A386918(n)` -/
def P12429565350733945161.Spec : Prop :=
  ∀ n, P12429565350733945161.a n = A378805 n

theorem P12429565350733945161.correct : P12429565350733945161.Spec := by
  intro n
  simp only [A378805, Nat.add_sub_cancel, A378805.P12429565350733945161.a, A378805.P3870825077699895129.a, A386918, A386918.P6850681663165678686.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A378805

/-! ## A378805.P17765362990012374632

`n*(A002064(n)-1)*A005810(n)`
-/

namespace A378805.P17765362990012374632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((A002064 n - 1) * A005810 n)

end

end A378805.P17765362990012374632

namespace A378805

/-- `n*(A002064(n)-1)*A005810(n)` -/
def P17765362990012374632.Spec : Prop :=
  ∀ n, P17765362990012374632.a n = A378805 n

theorem P17765362990012374632.correct : P17765362990012374632.Spec := by
  intro n
  simp only [A378805, Nat.add_sub_cancel, A378805.P17765362990012374632.a, A378805.P3870825077699895129.a, A002064, A002064.P16424863031535762998.a, A005810, A005810.P5008475447009585536.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A378805

/-! ## A378805.P14238414044888731789

`abs(n²*A120617(n))*A119304(∑[n])`
-/

namespace A378805.P14238414044888731789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * A120617 n| * A119304 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A378805.P14238414044888731789

namespace A378805

/-- `abs(n²*A120617(n))*A119304(∑[n])` -/
def P14238414044888731789.Spec : Prop :=
  ∀ n, P14238414044888731789.a n = A378805 n

end A378805

/-! ## A378805.P490593128115601876

`n*n*A128413(A046092(n))`
-/

namespace A378805.P490593128115601876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * A128413 (A046092 n).toNat)

end

end A378805.P490593128115601876

namespace A378805

/-- `n*n*A128413(A046092(n))` -/
def P490593128115601876.Spec : Prop :=
  ∀ n, P490593128115601876.a n = A378805 n

end A378805

/-!
# A378808: Numbers with monotonically decreasing digits, decreasing by only 0 or 1.

The programs for A378808, there is no canonical definition to state claims against.
-/

/-! ## A378808.P12113506272299950675

`record[A355221(A032981(n+1))]`
-/

namespace A378808.P12113506272299950675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355221 (A032981 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378808.P12113506272299950675

/-! ## A378808.P8535447401821600476

`∩[A009996(n+1), A032981(n+1)]`
-/

namespace A378808.P8535447401821600476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378808.P8535447401821600476

/-! ## A378808.P5207978944937259804

`∑[A109950(Δ[A064222(n)])]`
-/

namespace A378808.P5207978944937259804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109950 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378808.P5207978944937259804

/-! ## A378808.P8207425399649863343

`∑[A125714(Δ[A064222(n)])]`
-/

namespace A378808.P8207425399649863343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125714 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378808.P8207425399649863343

/-! ## A378808.P8353101612492411029

`∑[A182885(Δ[A064222(n)])]`
-/

namespace A378808.P8353101612492411029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182885 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378808.P8353101612492411029

/-!
# A378809: Triangle read by rows: T(n,k) is the number of peak and valleyless Motzkin meanders of length n with k horizontal steps.

The programs for A378809, there is no canonical definition to state claims against.
-/

/-! ## A378809.P1878554213187450014

`A341883(A142992(n))`
-/

namespace A378809.P1878554213187450014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341883 (A142992 n).toNat

end

end A378809.P1878554213187450014

/-! ## A378809.P5196455731220084239

`A161358(A214398(n+1))`
-/

namespace A378809.P5196455731220084239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161358 (A214398 (n + 1)).toNat

end

end A378809.P5196455731220084239

/-! ## A378809.P14079233716881852907

`A207291(A384849(n+1))`
-/

namespace A378809.P14079233716881852907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207291 (A384849 (n + 1)).toNat

end

end A378809.P14079233716881852907

/-! ## A378809.P15539651361735465915

`A241466(A026725(n))+A026725(n)`
-/

namespace A378809.P15539651361735465915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241466 (A026725 n).toNat + A026725 n

end

end A378809.P15539651361735465915

/-! ## A378809.P9611285397457261639

`A273302(A098436(n))+A026758(n)`
-/

namespace A378809.P9611285397457261639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273302 (A098436 n).toNat + A026758 n

end

end A378809.P9611285397457261639

/-!
# A378810: Number of horizontal steps in all peak and valleyless Motzkin meanders of length n.

The programs for A378810, there is no canonical definition to state claims against.
-/

/-! ## A378810.P15192347567473719507

`∑[∑[A253092(A051041(n))]]`
-/

namespace A378810.P15192347567473719507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253092 (A051041 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378810.P15192347567473719507

/-! ## A378810.P16481300813092801146

`A249871(A056014(n))+A056014(n+2)`
-/

namespace A378810.P16481300813092801146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249871 (A056014 n).toNat + A056014 (n + 2)

end

end A378810.P16481300813092801146

/-! ## A378810.P9378898382634275655

`A276625(A000051(n))-A281855(n+1)`
-/

namespace A378810.P9378898382634275655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (A000051 n).toNat - A281855 (n + 1)

end

end A378810.P9378898382634275655

/-!
# A378814: a(n) = round(n/(A000005(A071904(n))-2)).

The programs for A378814, the canonical program `A378814.P9140415008619509841` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378814 has offset 1).

The definition of A378814 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378814.P9140415008619509841

`round((n+1)/(A000005(A071904(n+1))-2))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A378814

/-- `round((n+1)/(A000005(A071904(n+1))-2))` -/
def P9140415008619509841.Spec : Prop :=
  ∀ n, P9140415008619509841.a n = A378814 (n + 1)

theorem P9140415008619509841.correct : P9140415008619509841.Spec := by
  intro n
  simp only [A378814, Nat.add_sub_cancel]

end A378814

/-!
# A378816: Expansion of 2*(x - 1)^3/(3*x^3 - 5*x^2 + x + 1 + sqrt(-(x - 1)^3*(x + 1)^2*(3*x + 1))).

The programs for A378816, the canonical program `A378816.P12073139735814832910` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378816 has offset 0).

The definition of A378816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378816.P12073139735814832910

`Δ[Δ[A005773(n)]*A033999(n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A378816

/-- `Δ[Δ[A005773(n)]*A033999(n)]` -/
def P12073139735814832910.Spec : Prop :=
  ∀ n, P12073139735814832910.a n = A378816 n

theorem P12073139735814832910.correct : P12073139735814832910.Spec := by
  intro n
  simp only [A378816]

end A378816

/-!
# A378817: Hankel sequence transform of A378816.

The programs for A378817, the canonical program `A378817.P7260164543361308160` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378817 has offset 0).

The definition of A378817 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378817.P7260164543361308160

`2*a(n-2)-3*a(n-4)+2*a(n-6)-a(n-8)` with `a(0)=-1, a(1)=-5, a(2)=6, a(3)=-10, a(4)=11, a(5)=-1, a(6)=1, a(7)=17`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A378817

/-- `2*a(n-2)-3*a(n-4)+2*a(n-6)-a(n-8)` -/
def P7260164543361308160.Spec : Prop :=
  ∀ n, P7260164543361308160.a n = A378817 n

theorem P7260164543361308160.correct : P7260164543361308160.Spec := by
  intro n
  simp only [A378817]

end A378817

/-!
# A378818: Number of classes of locally equienergetic simple graphs with n vertices.

The programs for A378818, there is no canonical definition to state claims against.
-/

/-! ## A378818.P5120407809616958824

`A230351(∏[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]])`
-/

namespace A378818.P5120407809616958824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230351 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A378818.P5120407809616958824

/-! ## A378818.P13456830800814084941

`A218797(A072856(n))`
-/

namespace A378818.P13456830800814084941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218797 (A072856 n).toNat

end

end A378818.P13456830800814084941

/-! ## A378818.P2196732162319553422

`A344987(A377709(n+1))`
-/

namespace A378818.P2196732162319553422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344987 (A377709 (n + 1)).toNat

end

end A378818.P2196732162319553422

/-! ## A378818.P3701997686746107270

`A268372(A017984(2*n+1)-1)`
-/

namespace A378818.P3701997686746107270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268372 (A017984 (2 * n + 1) - 1).toNat

end

end A378818.P3701997686746107270

/-! ## A378818.P2818430726093265642

`A216503(or(A054384(n), A090899(n+1)))`
-/

namespace A378818.P2818430726093265642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216503 (Int.lor (A054384 n) (A090899 (n + 1))).toNat

end

end A378818.P2818430726093265642

/-!
# A378819: a(n) is the number of distinct nondegenerate triangles whose sides are prime factors of n.

The programs for A378819, there is no canonical definition to state claims against.
-/

/-! ## A378819.P10287118057819961245

`A095960(A007947(n+1)^A317937(2*n+5))`
-/

namespace A378819.P10287118057819961245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095960 (SequenceMachineLib.roundAway ((A007947 (n + 1) : ℚ) ^ (A317937 (2 * n + 5) : ℤ))).toNat

end

end A378819.P10287118057819961245

/-! ## A378819.P8941078226670382792

`A372720(A078615(n+1))%A167809(n+1)`
-/

namespace A378819.P8941078226670382792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372720 (A078615 (n + 1)).toNat) (A167809 (n + 1))

end

end A378819.P8941078226670382792

/-! ## A378819.P1468459053734056559

`A276621(A182665(n+1)^A204030(2*n+1))`
-/

namespace A378819.P1468459053734056559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276621 (SequenceMachineLib.roundAway ((A182665 (n + 1) : ℚ) ^ (A204030 (2 * n + 1) : ℤ))).toNat

end

end A378819.P1468459053734056559

/-! ## A378819.P1415288824141808283

`A123695(∑{p}[n+1, gcd(n, #)]^A356308(n+1))`
-/

namespace A378819.P1415288824141808283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123695 (SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℚ) ^ (A356308 (n + 1) : ℤ))).toNat

end

end A378819.P1415288824141808283

/-!
# A378820: a(n) is the number of distinct nondegenerate triangles whose sides are divisors of n.

The programs for A378820, there is no canonical definition to state claims against.
-/

/-! ## A378820.P672160874560283874

`A000005(n+1)²-A129510(A187829(n+1))`
-/

namespace A378820.P672160874560283874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2 - A129510 (A187829 (n + 1)).toNat

end

end A378820.P672160874560283874

/-! ## A378820.P7334685343934871273

`A179941(n+1)²-A129510(A187829(n+1))`
-/

namespace A378820.P7334685343934871273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179941 (n + 1) ^ 2 - A129510 (A187829 (n + 1)).toNat

end

end A378820.P7334685343934871273

/-!
# A378828: G.f. A(x) satisfies A(x) = ( 1 + x*A(x)^(2/3)/(1 - x*A(x)^(4/3)) )^3.

The programs for A378828, there is no canonical definition to state claims against.
-/

/-! ## A378828.P1497193898904155512

`A267301(A330453(n+1))`
-/

namespace A378828.P1497193898904155512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267301 (A330453 (n + 1)).toNat

end

end A378828.P1497193898904155512

/-!
# A378829: G.f. A(x) satisfies 1 = Sum_{n=-oo..+oo} (A(x)^n - 2*x)^n.

The programs for A378829, there is no canonical definition to state claims against.
-/

/-! ## A378829.P16550679499473146306

`A033999(n)*A359673(n)`
-/

namespace A378829.P16550679499473146306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A359673 n

end

end A378829.P16550679499473146306

/-! ## A378829.P3530409016463688410

`A010892(3*n)*A359673(n)`
-/

namespace A378829.P3530409016463688410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n) * A359673 n

end

end A378829.P3530409016463688410

/-! ## A378829.P8178761082387297716

`A087960(A059479(3*n+2))*A359673(n)`
-/

namespace A378829.P8178761082387297716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A059479 (3 * n + 2)).toNat * A359673 n

end

end A378829.P8178761082387297716

/-!
# A378830: G.f. A(x) satisfies 1/x = Sum_{n=-oo..+oo} A(x)^n * (1 + A(x)^(2*n+1))^(n+1).

The programs for A378830, there is no canonical definition to state claims against.
-/

/-! ## A378830.P3201374119111784641

`xor(A281116(A138013(n)), A323792(n))`
-/

namespace A378830.P3201374119111784641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A281116 (A138013 n).toNat) (A323792 n)

end

end A378830.P3201374119111784641

/-! ## A378830.P714095184407132025

`A141204(A052872(n))`
-/

namespace A378830.P714095184407132025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141204 (A052872 n).toNat

end

end A378830.P714095184407132025

/-!
# A378832: Numbers k such that 5^k + 68 is prime.

The programs for A378832, there is no canonical definition to state claims against.
-/

/-! ## A378832.P10659172042826129359

`∩[A118559(n+1), A073689(n)]`
-/

namespace A378832.P10659172042826129359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073689 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378832.P10659172042826129359

/-!
# A378833: Number of tripling steps in the 3x-1 trajectory from n to the minimum of its cycle, or -1 if n never reaches a cycle.

The programs for A378833, there is no canonical definition to state claims against.
-/

/-! ## A378833.P387194291799952450

`A135730(n+1)-A377524(n+1)`
-/

namespace A378833.P387194291799952450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135730 (n + 1) - A377524 (n + 1)

end

end A378833.P387194291799952450

/-! ## A378833.P8073776458120289372

`and(A132451(2*(n+1)), A227349(3*(n+1)))`
-/

namespace A378833.P8073776458120289372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132451 (2 * (n + 1))) (A227349 (3 * (n + 1)))

end

end A378833.P8073776458120289372

/-! ## A378833.P11972814011842484041

`A108731(A238783(n+1)^A000010(n+3))`
-/

namespace A378833.P11972814011842484041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108731 (SequenceMachineLib.roundAway ((A238783 (n + 1) : ℚ) ^ (A000010 (n + 3) : ℤ))).toNat

end

end A378833.P11972814011842484041

/-! ## A378833.P14283657000625051484

`A102491(A100978(n+1))%A007736(n+1)`
-/

namespace A378833.P14283657000625051484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102491 (A100978 (n + 1)).toNat) (A007736 (n + 1))

end

end A378833.P14283657000625051484

/-! ## A378833.P9213882764068672218

`A206585(A038763(2*(n+2)))%A326041(n+1)`
-/

namespace A378833.P9213882764068672218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206585 (A038763 (2 * (n + 2))).toNat) (A326041 (n + 1))

end

end A378833.P9213882764068672218

/-!
# A378835: Numbers with the median of the digits equal to the digital root.

The programs for A378835, there is no canonical definition to state claims against.
-/

/-! ## A378835.P15367202231552376227

`eq[A347470(n)+A004428(n), A028904(n)]`
-/

namespace A378835.P15367202231552376227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347470 n + A004428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378835.P15367202231552376227

/-! ## A378835.P4345256939360131179

`eq[A347470(n)+A054054(n), A028904(n)]`
-/

namespace A378835.P4345256939360131179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347470 n + A054054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378835.P4345256939360131179

/-! ## A378835.P13516109512194749063

`A271569(A043317(n+1))%A043317(A007916(n+5))`
-/

namespace A378835.P13516109512194749063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271569 (A043317 (n + 1)).toNat) (A043317 (A007916 (n + 5)).toNat)

end

end A378835.P13516109512194749063

/-! ## A378835.P14885623907622732495

`A261423(n^2^∑{digits}[n, #%C(n, #)])`
-/

namespace A378835.P14885623907622732495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (n ^ 2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum)

end

end A378835.P14885623907622732495

/-! ## A378835.P7530512982257631018

`11*A107827(a(n-1)+a(n-9)-a(n-10))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=7, a(8)=8, a(9)=9`
-/

namespace A378835.P7530512982257631018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] fun n a =>
  11 * A107827 (a (n - 1) + a (n - 9) - a (n - 10)).toNat

end

end A378835.P7530512982257631018

/-!
# A378837: Numbers with the arithmetic mean of the digits equal to the digital root.

The programs for A378837, there is no canonical definition to state claims against.
-/

/-! ## A378837.P13086750796081121857

`A271569(A043317(n+1))`
-/

namespace A378837.P13086750796081121857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271569 (A043317 (n + 1)).toNat

end

end A378837.P13086750796081121857

/-! ## A378837.P8289159128303742337

`A271569(A044914(n+1))`
-/

namespace A378837.P8289159128303742337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271569 (A044914 (n + 1)).toNat

end

end A378837.P8289159128303742337

/-! ## A378837.P11719557278948501855

`A271569(A049872(n)+1)`
-/

namespace A378837.P11719557278948501855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271569 (A049872 n + 1).toNat

end

end A378837.P11719557278948501855

/-! ## A378837.P5488290964541949026

`A271569(A055648(n+1))`
-/

namespace A378837.P5488290964541949026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271569 (A055648 (n + 1)).toNat

end

end A378837.P5488290964541949026

/-! ## A378837.P11437290990898311112

`A271569(A062003(n)+1)`
-/

namespace A378837.P11437290990898311112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271569 (A062003 n + 1).toNat

end

end A378837.P11437290990898311112

/-!
# A378841: a(n) is the least prime p such that p + 9*k*(k+1) is prime for 0 <= k <= n-1 but not for k=n.

The programs for A378841, there is no canonical definition to state claims against.
-/

/-! ## A378841.P3721312449108182977

`A006530(A037070(n)+A005258(n))`
-/

namespace A378841.P3721312449108182977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A037070 n + A005258 n).toNat

end

end A378841.P3721312449108182977

/-!
# A378849: a(n) is the total number of paths starting at (0,0), ending at (n,0), consisting of steps (1,1), (1,0), (1,-2), and staying on or above y = -1.

The programs for A378849, there is no canonical definition to state claims against.
-/

/-! ## A378849.P5494327844910710071

`A080511(A370338(n+1))`
-/

namespace A378849.P5494327844910710071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080511 (A370338 (n + 1)).toNat

end

end A378849.P5494327844910710071

/-! ## A378849.P16503868399609894231

`A005185(A236397(n)-n)`
-/

namespace A378849.P16503868399609894231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A236397 n - (n : ℤ)).toNat

end

end A378849.P16503868399609894231

/-! ## A378849.P14681754235947058756

`A366509(A161797(n)+A010060(n+3))`
-/

namespace A378849.P14681754235947058756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366509 (A161797 n + A010060 (n + 3)).toNat

end

end A378849.P14681754235947058756

/-! ## A378849.P17313079674943128931

`A027826(n)-A046660(A100179(2*(n+2)))`
-/

namespace A378849.P17313079674943128931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027826 n - A046660 (A100179 (2 * (n + 2))).toNat

end

end A378849.P17313079674943128931

/-!
# A378850: a(n) is the total number of paths starting at (0, 0), ending at (n, 0), consisting of steps (1, 1), (1, 0), (1, -2), and staying on or above y = -2.

The programs for A378850, there is no canonical definition to state claims against.
-/

/-! ## A378850.P5058725043469176167

`Δ[Δ[A361932(n+1)]]`
-/

namespace A378850.P5058725043469176167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361932 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378850.P5058725043469176167

/-! ## A378850.P4049413613002117278

`Δ[Δ[Δ[A071879(n)]]]`
-/

namespace A378850.P4049413613002117278
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378850.P4049413613002117278

/-! ## A378850.P2200338702924630623

`Δ[Δ[Δ[A127905(n+1)/(n+1)]]]`
-/

namespace A378850.P2200338702924630623
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127905 (n + 1) : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378850.P2200338702924630623

/-!
# A378851: Values of p for which x_p = s_p/p in the modified Göbel sequence is nonintegral.

The programs for A378851, there is no canonical definition to state claims against.
-/

/-! ## A378851.P7761953714059082609

`∩[A020626(n+1), A097746(n+1)]`
-/

namespace A378851.P7761953714059082609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378851.P7761953714059082609

/-! ## A378851.P15847560171195350256

`∩[A038969(n+1), A097746(n+1)]`
-/

namespace A378851.P15847560171195350256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378851.P15847560171195350256

/-! ## A378851.P13675964030981481844

`∩[A097746(n+1), A321657(n+1)]`
-/

namespace A378851.P13675964030981481844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378851.P13675964030981481844

/-!
# A378852: a(1) = 1. For n > 1 a(n) is the number of terms a(i); 1 <= i <= n-1 such that d(a(i)) >= d(a(n-1)), where d is the decimal digital sum function A007953.

The programs for A378852, there is no canonical definition to state claims against.
-/

/-! ## A378852.P3132217546263912397

`A028310(n)%A193768(A226031(3*n+1))`
-/

namespace A378852.P3132217546263912397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n) (A193768 (A226031 (3 * n + 1)).toNat)

end

end A378852.P3132217546263912397

/-! ## A378852.P15426064830970691246

`gcd(n, A361921(n+1))`
-/

namespace A378852.P15426064830970691246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A361921 (n + 1))

end

end A378852.P15426064830970691246

/-! ## A378852.P6325215137212411314

`∏{e}[A328928(n)^n, #]`
-/

namespace A378852.P6325215137212411314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328928 n ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A378852.P6325215137212411314

/-! ## A378852.P16171705534004779846

`A094525(∑[(-1)^n+n])`
-/

namespace A378852.P16171705534004779846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A378852.P16171705534004779846

/-! ## A378852.P9768447225516739441

`n^A104637(a(n-1)²)` with `a(0)=1`
-/

namespace A378852.P9768447225516739441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) ^ (A104637 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)).toNat : ℤ)

end

end A378852.P9768447225516739441

/-!
# A378853: Define f(x) = abs(1-1/x) and sequence {b(m)} such that b(m+1) = f(b(m)). a(n) is the number of initial values b(1) such that {b(m)}'s period has length n.

The programs for A378853, there is no canonical definition to state claims against.
-/

/-! ## A378853.P17036540730766764

`A326055((n+1)*A006206(n+1)+1)`
-/

namespace A378853.P17036540730766764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326055 ((n + 1 : ℤ) * A006206 (n + 1) + 1).toNat

end

end A378853.P17036540730766764

/-! ## A378853.P4942210753267713348

`(n+1)*A257564(A001405(n))`
-/

namespace A378853.P4942210753267713348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A257564 (A001405 n).toNat

end

end A378853.P4942210753267713348

/-! ## A378853.P14617535276099123042

`A104640(A219867(n))*A255408(n+1)`
-/

namespace A378853.P14617535276099123042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104640 (A219867 n).toNat * A255408 (n + 1)

end

end A378853.P14617535276099123042

/-!
# A378854: a(n) is the number of solid (3D) partitions of n with 2 layers and second layer a plane partition of 2.

The programs for A378854, there is no canonical definition to state claims against.
-/

/-! ## A378854.P13857625651656138304

`3*(A000219(n+2)-A000041(n+2))`
-/

namespace A378854.P13857625651656138304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A000219 (n + 2) - A000041 (n + 2))

end

end A378854.P13857625651656138304

/-! ## A378854.P9552227476586128695

`3*A097391(n+2)`
-/

namespace A378854.P9552227476586128695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A097391 (n + 2)

end

end A378854.P9552227476586128695

/-! ## A378854.P587760493494737057

`A379277(A084215(n+1))`
-/

namespace A378854.P587760493494737057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379277 (A084215 (n + 1)).toNat

end

end A378854.P587760493494737057

/-! ## A378854.P2201923396038487777

`A379277(A125176(n+2))`
-/

namespace A378854.P2201923396038487777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379277 (A125176 (n + 2)).toNat

end

end A378854.P2201923396038487777

/-! ## A378854.P5964448961318401028

`A379277(A257113(n+2))`
-/

namespace A378854.P5964448961318401028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379277 (A257113 (n + 2)).toNat

end

end A378854.P5964448961318401028

/-!
# A378855: Triangle read by rows: T(n,k) is the number of sequences in which the games of a single-elimination tournament with n teams can be played if arbitrarily many arenas are available, the tournament bracket is chosen to the bracket with the largest such number of sequences, and the number of distinct times at which games are played is k, log_2(n) <= k <= n-1.

The programs for A378855, there is no canonical definition to state claims against.
-/

/-! ## A378855.P11572216381421060017

`A120397(A226441(n+1))-A122922(n+1)`
-/

namespace A378855.P11572216381421060017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120397 (A226441 (n + 1)).toNat - A122922 (n + 1)

end

end A378855.P11572216381421060017

/-! ## A378855.P16128144068305355551

`A367817(A099093(n))`
-/

namespace A378855.P16128144068305355551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367817 (A099093 n).toNat

end

end A378855.P16128144068305355551

/-! ## A378855.P8335517973954479991

`A089293(A065329(n+1))`
-/

namespace A378855.P8335517973954479991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089293 (A065329 (n + 1)).toNat

end

end A378855.P8335517973954479991

/-! ## A378855.P3224091580245993699

`A118458(A079510(n+1))`
-/

namespace A378855.P3224091580245993699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118458 (A079510 (n + 1)).toNat

end

end A378855.P3224091580245993699

/-! ## A378855.P4473740552553380894

`A115623(A115179(n)²²)`
-/

namespace A378855.P4473740552553380894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 ((A115179 n ^ 2) ^ 2).toNat

end

end A378855.P4473740552553380894

/-!
# A378856: Minimum over groups of order n of the maximum order of an element of the group.

The programs for A378856, there is no canonical definition to state claims against.
-/

/-! ## A378856.P17726948081852970013

`A109395(n+1)+A000035(A249552(3*n+2))`
-/

namespace A378856.P17726948081852970013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (n + 1) + A000035 (A249552 (3 * n + 2)).toNat

end

end A378856.P17726948081852970013

/-! ## A378856.P2027493661987203250

`A325135(A325352(3*n+1))+A109395(n+1)`
-/

namespace A378856.P2027493661987203250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (A325352 (3 * n + 1)).toNat + A109395 (n + 1)

end

end A378856.P2027493661987203250

/-!
# A378858: G.f. A(x) satisfies A(x) = ( 1 + x/(1 - x*A(x)^(3/4)) )^4.

The programs for A378858, there is no canonical definition to state claims against.
-/

/-! ## A378858.P12723987072594970486

`A248395(A015467(n))+A063020(n+2)`
-/

namespace A378858.P12723987072594970486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248395 (A015467 n).toNat + A063020 (n + 2)

end

end A378858.P12723987072594970486

/-! ## A378858.P2125383112947264833

`A091841(n)-A091384(A000081(n+2))`
-/

namespace A378858.P2125383112947264833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091841 n - A091384 (A000081 (n + 2)).toNat

end

end A378858.P2125383112947264833

/-!
# A378859: Achilles numbers that are abundant.

The programs for A378859, there is no canonical definition to state claims against.
-/

/-! ## A378859.P2934124654677450836

`∩[A052486(n+1), A363169(n+1)]`
-/

namespace A378859.P2934124654677450836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378859.P2934124654677450836

/-! ## A378859.P11655344068565283146

`∩[A363169(n+1), A389753(n+1)]`
-/

namespace A378859.P11655344068565283146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378859.P11655344068565283146

/-! ## A378859.P12692277985489475923

`filter[A052486(n+1), A294936(#)]`
-/

namespace A378859.P12692277985489475923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A378859.P12692277985489475923

/-! ## A378859.P16921098087966154090

`filter[A052486(n+1), A378550(#)]`
-/

namespace A378859.P16921098087966154090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A378859.P16921098087966154090

/-! ## A378859.P10379306095699319687

`∩[A052486(n+1), A198470(n+1)]`
-/

namespace A378859.P10379306095699319687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378859.P10379306095699319687

/-! ## A378859.P1295685445877117444

`∩[A363169(n+1), A391415(n+1)]`
-/

namespace A378859.P1295685445877117444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378859.P1295685445877117444

/-! ## A378859.P13832237873883683103

`∩[A052486(n+1), A087245(n+1)]`
-/

namespace A378859.P13832237873883683103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378859.P13832237873883683103

/-! ## A378859.P3976057355512055910

`∩[A052486(n+1), A182225(n+1)]`
-/

namespace A378859.P3976057355512055910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378859.P3976057355512055910

/-! ## A378859.P1698857029818791992

`∩[A052486(n+1), A091192(n+1)]`
-/

namespace A378859.P1698857029818791992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378859.P1698857029818791992

/-! ## A378859.P3539383128458703295

`∩[A005835(n+1), A052486(n+1)]`
-/

namespace A378859.P3539383128458703295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378859.P3539383128458703295

/-! ## A378859.P11953326609011892652

`∩[A005101(n+1), A052486(n+1)]`
-/

namespace A378859.P11953326609011892652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378859.P11953326609011892652

/-! ## A378859.P8714774177735991995

`∩[A023196(n+1), A052486(n+1)]`
-/

namespace A378859.P8714774177735991995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378859.P8714774177735991995

/-! ## A378859.P12218938399668764831

`∩[A052486(n+1), A103288(n+1)]`
-/

namespace A378859.P12218938399668764831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378859.P12218938399668764831

/-! ## A378859.P8476277718157935724

`∩[A177052(n+1), A052486(n+1)]`
-/

namespace A378859.P8476277718157935724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378859.P8476277718157935724

/-! ## A378859.P16467217808189012041

`∩[A052486(n+1), A177085(n+1)]`
-/

namespace A378859.P16467217808189012041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378859.P16467217808189012041

/-!
# A378865: a(n) is the smallest positive integer k such that n*k uses none of the digits of n, or 0 if no such k exists.

The programs for A378865, there is no canonical definition to state claims against.
-/

/-! ## A378865.P18315889908869644214

`A074157(n+1)/(n+1)`
-/

namespace A378865.P18315889908869644214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074157 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A378865.P18315889908869644214

/-!
# A378866: Numbers k such that 5^k + 72 is prime.

The programs for A378866, there is no canonical definition to state claims against.
-/

/-! ## A378866.P5370656621189738498

`A255423(A381880(n)+1)%((n+1)*∑[3^n])`
-/

namespace A378866.P5370656621189738498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255423 (A381880 n + 1).toNat) (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A378866.P5370656621189738498

/-!
# A378868: Numbers k such that 5^k - 22 is prime.

The programs for A378868, there is no canonical definition to state claims against.
-/

/-! ## A378868.P1552833743751463852

`A213896(A176652(n+1))`
-/

namespace A378868.P1552833743751463852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213896 (A176652 (n + 1)).toNat

end

end A378868.P1552833743751463852

/-!
# A378872: Discriminant of the minimal polynomial of a number whose continued fraction expansion has periodic part given by the n-th composition (in standard order).

The programs for A378872, there is no canonical definition to state claims against.
-/

/-! ## A378872.P18054487334441596539

`A378873(n+1)*A378874(n+1)²`
-/

namespace A378872.P18054487334441596539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378873 (n + 1) * A378874 (n + 1) ^ 2

end

end A378872.P18054487334441596539

/-! ## A378872.P2648364255480492717

`A378284(A269303(n+1)+4)²*A378873(n+1)`
-/

namespace A378872.P2648364255480492717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378284 (A269303 (n + 1) + 4).toNat ^ 2 * A378873 (n + 1)

end

end A378872.P2648364255480492717

/-! ## A378872.P7934296233950018168

`A000002(A078860(n+1)-n)²*A378873(n+1)`
-/

namespace A378872.P7934296233950018168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A078860 (n + 1) - (n : ℤ)).toNat ^ 2 * A378873 (n + 1)

end

end A378872.P7934296233950018168

/-! ## A378872.P2290684050018459579

`A047848(A065339(n+2)^A047848(n))²*A378873(n+1)`
-/

namespace A378872.P2290684050018459579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047848 (SequenceMachineLib.roundAway ((A065339 (n + 2) : ℚ) ^ (A047848 n : ℤ))).toNat ^ 2 * A378873 (n + 1)

end

end A378872.P2290684050018459579

/-!
# A378873: Squarefree part of A378872(n) (the discriminant of the minimal polynomial of a number whose continued fraction expansion has periodic part given by the n-th composition (in standard order)).

The programs for A378873, there is no canonical definition to state claims against.
-/

/-! ## A378873.P10813066490033476613

`A007913(A378872(n+1))`
-/

namespace A378873.P10813066490033476613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A378872 (n + 1)).toNat

end

end A378873.P10813066490033476613

/-! ## A378873.P14023864655730178185

`A378872(n+1)/A378874(n+1)²`
-/

namespace A378873.P14023864655730178185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378872 (n + 1) : ℚ) / (A378874 (n + 1) ^ 2 : ℚ)

end

end A378873.P14023864655730178185

/-!
# A378874: a(n) = sqrt(A378872(n)/A378873(n)).

The programs for A378874, there is no canonical definition to state claims against.
-/

/-! ## A378874.P6397435961923522650

`A000188(A378872(n+1))`
-/

namespace A378874.P6397435961923522650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A378872 (n + 1)).toNat

end

end A378874.P6397435961923522650

/-! ## A378874.P11337160394692010282

`sqrt(A378872(n+1)/A378873(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378874.P11337160394692010282
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A378872 (n + 1) : ℚ) / (A378873 (n + 1) : ℚ) : ℝ)

end

end A378874.P11337160394692010282

/-! ## A378874.P9509985304362105413

`A033676(A378872(n+1)/A378873(n+1))`
-/

namespace A378874.P9509985304362105413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (SequenceMachineLib.roundAway ((A378872 (n + 1) : ℚ) / (A378873 (n + 1) : ℚ))).toNat

end

end A378874.P9509985304362105413

/-! ## A378874.P15073762098092550044

`A134021(A378872(n+1)/A378873(n+1))`
-/

namespace A378874.P15073762098092550044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (SequenceMachineLib.roundAway ((A378872 (n + 1) : ℚ) / (A378873 (n + 1) : ℚ))).toNat

end

end A378874.P15073762098092550044

/-! ## A378874.P5794877031225034492

`A331175(A378872(n+1)/A378873(n+1))`
-/

namespace A378874.P5794877031225034492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331175 (SequenceMachineLib.roundAway ((A378872 (n + 1) : ℚ) / (A378873 (n + 1) : ℚ))).toNat

end

end A378874.P5794877031225034492

/-!
# A378875: Number of Achilles numbers k between consecutive perfect powers.

The programs for A378875, there is no canonical definition to state claims against.
-/

/-! ## A378875.P10739119052747416151

`A285685(A176513(n+1))`
-/

namespace A378875.P10739119052747416151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285685 (A176513 (n + 1)).toNat

end

end A378875.P10739119052747416151

/-! ## A378875.P83140940966303594

`val(A001221(A075224(n+1)+2)+1, 3)`
-/

namespace A378875.P83140940966303594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001221 (A075224 (n + 1) + 2).toNat + 1).toNat 3

end

end A378875.P83140940966303594

/-! ## A378875.P14487421709233107302

`A267142(A306996(3*n+5)*A326671(n+1))`
-/

namespace A378875.P14487421709233107302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267142 (A306996 (3 * n + 5) * A326671 (n + 1)).toNat

end

end A378875.P14487421709233107302

/-! ## A378875.P14109670660055228496

`and(A066829(n+1), A296901(A015729(3*n+1)))`
-/

namespace A378875.P14109670660055228496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066829 (n + 1)) (A296901 (A015729 (3 * n + 1)).toNat)

end

end A378875.P14109670660055228496

/-! ## A378875.P2539706159209986741

`A234024(A351004(2*n))%A001221(3*n+4)`
-/

namespace A378875.P2539706159209986741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234024 (A351004 (2 * n)).toNat) (A001221 (3 * n + 4))

end

end A378875.P2539706159209986741

/-!
# A378878: Products m*k such that k is composite and squarefree and m is composite such that rad(m) | k, where rad = A007947.

The programs for A378878, the canonical program `A378878.P16615356718433646277` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378878 has offset 1).

The definition of A378878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9963 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378878.P17576847583318046232

`∪[A036785(n+1), A362148(n+1)]`
-/

namespace A378878.P17576847583318046232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A378878.P17576847583318046232

namespace A378878

/-- `∪[A036785(n+1), A362148(n+1)]` -/
def P17576847583318046232.Spec : Prop :=
  ∀ n, (P17576847583318046232.a n : ℤ) = A378878 (n + 1)

end A378878

/-! ## A378878.P3407249133415189756

`∪[A036785(n+1), A378767(n+1)]`
-/

namespace A378878.P3407249133415189756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A378878.P3407249133415189756

namespace A378878

/-- `∪[A036785(n+1), A378767(n+1)]` -/
def P3407249133415189756.Spec : Prop :=
  ∀ n, (P3407249133415189756.a n : ℤ) = A378878 (n + 1)

end A378878

/-! ## A378878.P5515098360720081802

`∪[A036785(n+1), A391319(n+1)]`
-/

namespace A378878.P5515098360720081802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A378878.P5515098360720081802

namespace A378878

/-- `∪[A036785(n+1), A391319(n+1)]` -/
def P5515098360720081802.Spec : Prop :=
  ∀ n, (P5515098360720081802.a n : ℤ) = A378878 (n + 1)

end A378878

/-! ## A378878.P4214941487325488449

`∪[A036785(n+1), A391415(n+1)]`
-/

namespace A378878.P4214941487325488449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A378878.P4214941487325488449

namespace A378878

/-- `∪[A036785(n+1), A391415(n+1)]` -/
def P4214941487325488449.Spec : Prop :=
  ∀ n, (P4214941487325488449.a n : ℤ) = A378878 (n + 1)

end A378878

/-! ## A378878.P8152156613831268943

`∪[A072413(n+1), A378767(n+1)]`
-/

namespace A378878.P8152156613831268943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A378878.P8152156613831268943

namespace A378878

/-- `∪[A072413(n+1), A378767(n+1)]` -/
def P8152156613831268943.Spec : Prop :=
  ∀ n, (P8152156613831268943.a n : ℤ) = A378878 (n + 1)

end A378878

/-! ## A378878.P5833992035213150616

`∪[A072413(n+1), A391415(n+1)]`
-/

namespace A378878.P5833992035213150616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A378878.P5833992035213150616

namespace A378878

/-- `∪[A072413(n+1), A391415(n+1)]` -/
def P5833992035213150616.Spec : Prop :=
  ∀ n, (P5833992035213150616.a n : ℤ) = A378878 (n + 1)

end A378878

/-! ## A378878.P16615356718433646277

`filter[A048108(n+1), A355447(#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A378878

/-- `filter[A048108(n+1), A355447(#)]` -/
def P16615356718433646277.Spec : Prop :=
  ∀ n, P16615356718433646277.a n = A378878 (n + 1)

theorem P16615356718433646277.correct : P16615356718433646277.Spec := by
  intro n
  simp only [A378878, Nat.add_sub_cancel]

end A378878

/-! ## A378878.P5674679701817014378

`∩[A048108(n+1), A393201(n+1)]`
-/

namespace A378878.P5674679701817014378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378878.P5674679701817014378

namespace A378878

/-- `∩[A048108(n+1), A393201(n+1)]` -/
def P5674679701817014378.Spec : Prop :=
  ∀ n, (P5674679701817014378.a n : ℤ) = A378878 (n + 1)

end A378878

/-! ## A378878.P439057056732075671

`∩[A048108(n+1), A376271(n+1)]`
-/

namespace A378878.P439057056732075671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378878.P439057056732075671

namespace A378878

/-- `∩[A048108(n+1), A376271(n+1)]` -/
def P439057056732075671.Spec : Prop :=
  ∀ n, (P439057056732075671.a n : ℤ) = A378878 (n + 1)

end A378878

/-! ## A378878.P2356728002915457372

`∩[A048108(n+1), A126706(n+1)]`
-/

namespace A378878.P2356728002915457372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378878.P2356728002915457372

namespace A378878

/-- `∩[A048108(n+1), A126706(n+1)]` -/
def P2356728002915457372.Spec : Prop :=
  ∀ n, (P2356728002915457372.a n : ℤ) = A378878 (n + 1)

end A378878

/-! ## A378878.P2811874583465265926

`∩[A048108(n+1), A376384(n+1)]`
-/

namespace A378878.P2811874583465265926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378878.P2811874583465265926

namespace A378878

/-- `∩[A048108(n+1), A376384(n+1)]` -/
def P2811874583465265926.Spec : Prop :=
  ∀ n, (P2811874583465265926.a n : ℤ) = A378878 (n + 1)

end A378878

/-! ## A378878.P9107295932787804722

`∩[A048108(n+1), A158871(n+1)]`
-/

namespace A378878.P9107295932787804722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378878.P9107295932787804722

namespace A378878

/-- `∩[A048108(n+1), A158871(n+1)]` -/
def P9107295932787804722.Spec : Prop :=
  ∀ n, (P9107295932787804722.a n : ℤ) = A378878 (n + 1)

end A378878

/-! ## A378878.P1291983953206688386

`∩[A024619(n+1), A048108(n+1)]`
-/

namespace A378878.P1291983953206688386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378878.P1291983953206688386

namespace A378878

/-- `∩[A024619(n+1), A048108(n+1)]` -/
def P1291983953206688386.Spec : Prop :=
  ∀ n, (P1291983953206688386.a n : ℤ) = A378878 (n + 1)

end A378878

/-! ## A378878.P11810511872266413475

`∩[A048108(n+1), A361102(n+1)]`
-/

namespace A378878.P11810511872266413475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378878.P11810511872266413475

namespace A378878

/-- `∩[A048108(n+1), A361102(n+1)]` -/
def P11810511872266413475.Spec : Prop :=
  ∀ n, (P11810511872266413475.a n : ℤ) = A378878 (n + 1)

end A378878

/-! ## A378878.P6384333825706576942

`∩[A048108(n+1), A387335(n+1)]`
-/

namespace A378878.P6384333825706576942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378878.P6384333825706576942

namespace A378878

/-- `∩[A048108(n+1), A387335(n+1)]` -/
def P6384333825706576942.Spec : Prop :=
  ∀ n, (P6384333825706576942.a n : ℤ) = A378878 (n + 1)

end A378878

/-! ## A378878.P5474543097639983300

`∩[A048108(n+1), A085971(n+1)]`
-/

namespace A378878.P5474543097639983300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378878.P5474543097639983300

namespace A378878

/-- `∩[A048108(n+1), A085971(n+1)]` -/
def P5474543097639983300.Spec : Prop :=
  ∀ n, (P5474543097639983300.a n : ℤ) = A378878 (n + 1)

end A378878

/-! ## A378878.P1100847860185614003

`filter[A048108(n+1), A143731(#)]`
-/

namespace A378878.P1100847860185614003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A378878.P1100847860185614003

namespace A378878

/-- `filter[A048108(n+1), A143731(#)]` -/
def P1100847860185614003.Spec : Prop :=
  ∀ n, P1100847860185614003.a n = A378878 (n + 1)

end A378878

/-! ## A378878.P14035335164909831950

`∩[A048108(n+1), A102467(n+1)]`
-/

namespace A378878.P14035335164909831950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378878.P14035335164909831950

namespace A378878

/-- `∩[A048108(n+1), A102467(n+1)]` -/
def P14035335164909831950.Spec : Prop :=
  ∀ n, (P14035335164909831950.a n : ℤ) = A378878 (n + 1)

end A378878

/-! ## A378878.P12278348934378658803

`∩[A048108(n+1), A324455(n+1)]`
-/

namespace A378878.P12278348934378658803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378878.P12278348934378658803

namespace A378878

/-- `∩[A048108(n+1), A324455(n+1)]` -/
def P12278348934378658803.Spec : Prop :=
  ∀ n, (P12278348934378658803.a n : ℤ) = A378878 (n + 1)

end A378878

/-!
# A378879: a(n) = number of non-Pythagorean primes in the prime factorization of n (including multiplicities).

The programs for A378879, the canonical program `A378879.P5399312631734305256` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378879 has offset 1).

The definition of A378879 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065339, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378879.P5399312631734305256

`A007814(n+1)+A065339(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A378879

/-- `A007814(n+1)+A065339(n+1)` -/
def P5399312631734305256.Spec : Prop :=
  ∀ n, P5399312631734305256.a n = A378879 (n + 1)

theorem P5399312631734305256.correct : P5399312631734305256.Spec := by
  intro n
  simp only [A378879, Nat.add_sub_cancel]

end A378879

/-! ## A378879.P6809531582929884326

`∑{e}[A065338(n+1), #]`
-/

namespace A378879.P6809531582929884326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A378879.P6809531582929884326

namespace A378879

/-- `∑{e}[A065338(n+1), #]` -/
def P6809531582929884326.Spec : Prop :=
  ∀ n, (P6809531582929884326.a n : ℤ) = A378879 (n + 1)

end A378879

/-! ## A378879.P14084316532272251485

`∑{e}[A072438(n+1), #]`
-/

namespace A378879.P14084316532272251485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A378879.P14084316532272251485

namespace A378879

/-- `∑{e}[A072438(n+1), #]` -/
def P14084316532272251485.Spec : Prop :=
  ∀ n, (P14084316532272251485.a n : ℤ) = A378879 (n + 1)

end A378879

/-! ## A378879.P16753292821395596180

`∑{e}[n+1, #]-A083025(n+1)`
-/

namespace A378879.P16753292821395596180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - A083025 (n + 1)

end

end A378879.P16753292821395596180

namespace A378879

/-- `∑{e}[n+1, #]-A083025(n+1)` -/
def P16753292821395596180.Spec : Prop :=
  ∀ n, P16753292821395596180.a n = A378879 (n + 1)

end A378879

/-! ## A378879.P633420583398374872

`∑{e}[or(n, n+1)-n, #]+val(A319984(n+1), 5)`
-/

namespace A378879.P633420583398374872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + SequenceMachineLib.valuation (A319984 (n + 1)).toNat 5

end

end A378879.P633420583398374872

namespace A378879

/-- `∑{e}[or(n, n+1)-n, #]+val(A319984(n+1), 5)` -/
def P633420583398374872.Spec : Prop :=
  ∀ n, (P633420583398374872.a n : ℤ) = A378879 (n + 1)

end A378879

/-! ## A378879.P8891107167586344149

`A001222(A065338(n+1))`
-/

namespace A378879.P8891107167586344149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065338 (n + 1)).toNat

end

end A378879.P8891107167586344149

namespace A378879

/-- `A001222(A065338(n+1))` -/
def P8891107167586344149.Spec : Prop :=
  ∀ n, P8891107167586344149.a n = A378879 (n + 1)

end A378879

/-! ## A378879.P7645517947159365306

`A001222(A072438(n+1))`
-/

namespace A378879.P7645517947159365306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A072438 (n + 1)).toNat

end

end A378879.P7645517947159365306

namespace A378879

/-- `A001222(A072438(n+1))` -/
def P7645517947159365306.Spec : Prop :=
  ∀ n, P7645517947159365306.a n = A378879 (n + 1)

end A378879

/-! ## A378879.P10523450806361070161

`A246270(A079707(n+1))`
-/

namespace A378879.P10523450806361070161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246270 (A079707 (n + 1)).toNat

end

end A378879.P10523450806361070161

namespace A378879

/-- `A246270(A079707(n+1))` -/
def P10523450806361070161.Spec : Prop :=
  ∀ n, P10523450806361070161.a n = A378879 (n + 1)

end A378879

/-! ## A378879.P12297439829648719678

`A378880(n+1)+A083025(n+1)`
-/

namespace A378879.P12297439829648719678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378880 (n + 1) + A083025 (n + 1)

end

end A378879.P12297439829648719678

namespace A378879

/-- `A378880(n+1)+A083025(n+1)` -/
def P12297439829648719678.Spec : Prop :=
  ∀ n, P12297439829648719678.a n = A378879 (n + 1)

theorem P12297439829648719678.correct : P12297439829648719678.Spec := by
  intro n
  simp only [A378879, Nat.add_sub_cancel, A378879.P12297439829648719678.a, A378879.P5399312631734305256.a, A007814, A007814.P13537437864234730737.a, A065339, A065339.P2810771096728781745.a, A083025, A083025.P6816948614237307391.a, A378880, A378880.P15528048256974238467.a, A001222, A001222.P11318177267732088261.a, A001511, A001511.P17146462531039486101.a, A097706, A097706.P6722181687817241685.a, A006519, A006519.P10435570611646570274.a, A061395, A061395.P8431317036300486107.a, A072436, A072436.P7287158936470340465.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A170818, A170818.P6198424121185234946.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378879

/-! ## A378879.P8766703501266620069

`A001222(n+1)-A083025(n+1)`
-/

namespace A378879.P8766703501266620069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A083025 (n + 1)

end

end A378879.P8766703501266620069

namespace A378879

/-- `A001222(n+1)-A083025(n+1)` -/
def P8766703501266620069.Spec : Prop :=
  ∀ n, P8766703501266620069.a n = A378879 (n + 1)

theorem P8766703501266620069.correct : P8766703501266620069.Spec := by
  intro n
  simp only [A378879, Nat.add_sub_cancel, A378879.P8766703501266620069.a, A378879.P5399312631734305256.a, A001222, A001222.P11318177267732088261.a, A007814, A007814.P13537437864234730737.a, A065339, A065339.P2810771096728781745.a, A083025, A083025.P6816948614237307391.a, A001511, A001511.P17146462531039486101.a, A061395, A061395.P8431317036300486107.a, A097706, A097706.P6722181687817241685.a, A122111, A122111.P18124015185857335041.a, A006519, A006519.P10435570611646570274.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A072436, A072436.P7287158936470340465.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, A170818, A170818.P6198424121185234946.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378879

/-! ## A378879.P3471389014307517659

`A337821(2*n+1)+A065339(n+1)`
-/

namespace A378879.P3471389014307517659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337821 (2 * n + 1) + A065339 (n + 1)

end

end A378879.P3471389014307517659

namespace A378879

/-- `A337821(2*n+1)+A065339(n+1)` -/
def P3471389014307517659.Spec : Prop :=
  ∀ n, P3471389014307517659.a n = A378879 (n + 1)

end A378879

/-! ## A378879.P12041508853870041409

`log(∏{e}[n+1, exp(#)])-A083025(3*(n+1))`
-/

namespace A378879.P12041508853870041409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (∏ p ∈ Nat.primeFactors (f1 n), Real.exp (Nat.factorization (f1 n) p : ℝ)) - (A083025 (3 * (n + 1)) : ℝ)

end

end A378879.P12041508853870041409

namespace A378879

/-- `log(∏{e}[n+1, exp(#)])-A083025(3*(n+1))` -/
def P12041508853870041409.Spec : Prop :=
  ∀ n, P12041508853870041409.a n = (A378879 (n + 1) : ℝ)

end A378879

/-! ## A378879.P7915215074227540738

`A087436(A319984(n+1))`
-/

namespace A378879.P7915215074227540738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A319984 (n + 1)).toNat

end

end A378879.P7915215074227540738

namespace A378879

/-- `A087436(A319984(n+1))` -/
def P7915215074227540738.Spec : Prop :=
  ∀ n, P7915215074227540738.a n = A378879 (n + 1)

end A378879

/-! ## A378879.P17397925989063969014

`A065339(A394497(n+1))`
-/

namespace A378879.P17397925989063969014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A394497 (n + 1)).toNat

end

end A378879.P17397925989063969014

namespace A378879

/-- `A065339(A394497(n+1))` -/
def P17397925989063969014.Spec : Prop :=
  ∀ n, P17397925989063969014.a n = A378879 (n + 1)

end A378879

/-! ## A378879.P13263001103312396009

`A356242(A319987(n+1))`
-/

namespace A378879.P13263001103312396009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356242 (A319987 (n + 1)).toNat

end

end A378879.P13263001103312396009

namespace A378879

/-- `A356242(A319987(n+1))` -/
def P13263001103312396009.Spec : Prop :=
  ∀ n, P13263001103312396009.a n = A378879 (n + 1)

end A378879

/-! ## A378879.P7773937450089810832

`A065339(n+1)+A007949(A003961(n+1))`
-/

namespace A378879.P7773937450089810832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (n + 1) + A007949 (A003961 (n + 1)).toNat

end

end A378879.P7773937450089810832

namespace A378879

/-- `A065339(n+1)+A007949(A003961(n+1))` -/
def P7773937450089810832.Spec : Prop :=
  ∀ n, P7773937450089810832.a n = A378879 (n + 1)

end A378879

/-! ## A378879.P14493145718571447372

`A065339(A389092(n+1))`
-/

namespace A378879.P14493145718571447372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A389092 (n + 1)).toNat

end

end A378879.P14493145718571447372

namespace A378879

/-- `A065339(A389092(n+1))` -/
def P14493145718571447372.Spec : Prop :=
  ∀ n, P14493145718571447372.a n = A378879 (n + 1)

end A378879

/-!
# A378880: a(n) = A378879(n) - A083025(n).

The programs for A378880, the canonical program `A378880.P15528048256974238467` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378880 has offset 1).

The definition of A378880 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083025, A378879, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378880.P15528048256974238467

`A378879(n+1)-A083025(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A378880

/-- `A378879(n+1)-A083025(n+1)` -/
def P15528048256974238467.Spec : Prop :=
  ∀ n, P15528048256974238467.a n = A378880 (n + 1)

theorem P15528048256974238467.correct : P15528048256974238467.Spec := by
  intro n
  simp only [A378880, Nat.add_sub_cancel]

end A378880

/-! ## A378880.P6058881001854061323

`val(n+1, 2)-A079635(n+1)`
-/

namespace A378880.P6058881001854061323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℤ) - A079635 (n + 1)

end

end A378880.P6058881001854061323

namespace A378880

/-- `val(n+1, 2)-A079635(n+1)` -/
def P6058881001854061323.Spec : Prop :=
  ∀ n, P6058881001854061323.a n = A378880 (n + 1)

end A378880

/-! ## A378880.P6373394314379528481

`A007814(n+1)-A079635(n+1)`
-/

namespace A378880.P6373394314379528481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) - A079635 (n + 1)

end

end A378880.P6373394314379528481

namespace A378880

/-- `A007814(n+1)-A079635(n+1)` -/
def P6373394314379528481.Spec : Prop :=
  ∀ n, P6373394314379528481.a n = A378880 (n + 1)

theorem P6373394314379528481.correct : P6373394314379528481.Spec := by
  intro n
  simp only [A378880, Nat.add_sub_cancel, A378880.P6373394314379528481.a, A378880.P15528048256974238467.a, A007814, A007814.P13537437864234730737.a, A079635, A079635.P16766627809967727170.a, A083025, A083025.P6816948614237307391.a, A378879, A378879.P5399312631734305256.a, A001222, A001222.P11318177267732088261.a, A001511, A001511.P17146462531039486101.a, A065339, A065339.P2810771096728781745.a, A006519, A006519.P10435570611646570274.a, A061395, A061395.P8431317036300486107.a, A097706, A097706.P6722181687817241685.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A072436, A072436.P7287158936470340465.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378880

/-! ## A378880.P16497250604240946778

`A001511(n+1)-(A079635(n+1)+1)`
-/

namespace A378880.P16497250604240946778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) - (A079635 (n + 1) + 1)

end

end A378880.P16497250604240946778

namespace A378880

/-- `A001511(n+1)-(A079635(n+1)+1)` -/
def P16497250604240946778.Spec : Prop :=
  ∀ n, P16497250604240946778.a n = A378880 (n + 1)

theorem P16497250604240946778.correct : P16497250604240946778.Spec := by
  intro n
  simp only [A378880, Nat.add_sub_cancel, A378880.P16497250604240946778.a, A378880.P15528048256974238467.a, A001511, A001511.P17146462531039486101.a, A079635, A079635.P16766627809967727170.a, A083025, A083025.P6816948614237307391.a, A378879, A378879.P5399312631734305256.a, A001222, A001222.P11318177267732088261.a, A006519, A006519.P10435570611646570274.a, A007814, A007814.P13537437864234730737.a, A065339, A065339.P2810771096728781745.a, A061395, A061395.P8431317036300486107.a, A097706, A097706.P6722181687817241685.a, A122111, A122111.P18124015185857335041.a, A171977, A171977.P14092944863121073856.a, A029837, A029837.P1050578713049589.a, A038712, A038712.P3404197303190209645.a, A064989, A064989.P13349672914146769936.a, A072436, A072436.P7287158936470340465.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378880

/-! ## A378880.P10052526859281434835

`A001222(n+1)-2*A083025(n+1)`
-/

namespace A378880.P10052526859281434835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - 2 * A083025 (n + 1)

end

end A378880.P10052526859281434835

namespace A378880

/-- `A001222(n+1)-2*A083025(n+1)` -/
def P10052526859281434835.Spec : Prop :=
  ∀ n, P10052526859281434835.a n = A378880 (n + 1)

theorem P10052526859281434835.correct : P10052526859281434835.Spec := by
  intro n
  simp only [A378880, Nat.add_sub_cancel, A378880.P10052526859281434835.a, A378880.P15528048256974238467.a, A001222, A001222.P11318177267732088261.a, A083025, A083025.P6816948614237307391.a, A378879, A378879.P5399312631734305256.a, A007814, A007814.P13537437864234730737.a, A061395, A061395.P8431317036300486107.a, A065339, A065339.P2810771096728781745.a, A122111, A122111.P18124015185857335041.a, A001511, A001511.P17146462531039486101.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A097706, A097706.P6722181687817241685.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A006519, A006519.P10435570611646570274.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, A072436, A072436.P7287158936470340465.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378880

/-! ## A378880.P16765681636373960774

`A007814(n+1)+A065339(n+1)-A083025(n+1)`
-/

namespace A378880.P16765681636373960774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + (A065339 (n + 1) - A083025 (n + 1))

end

end A378880.P16765681636373960774

namespace A378880

/-- `A007814(n+1)+A065339(n+1)-A083025(n+1)` -/
def P16765681636373960774.Spec : Prop :=
  ∀ n, P16765681636373960774.a n = A378880 (n + 1)

theorem P16765681636373960774.correct : P16765681636373960774.Spec := by
  intro n
  simp only [A378880, Nat.add_sub_cancel, A378880.P16765681636373960774.a, A378880.P15528048256974238467.a, A007814, A007814.P13537437864234730737.a, A065339, A065339.P2810771096728781745.a, A083025, A083025.P6816948614237307391.a, A378879, A378879.P5399312631734305256.a, A001222, A001222.P11318177267732088261.a, A001511, A001511.P17146462531039486101.a, A097706, A097706.P6722181687817241685.a, A006519, A006519.P10435570611646570274.a, A061395, A061395.P8431317036300486107.a, A072436, A072436.P7287158936470340465.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A170818, A170818.P6198424121185234946.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378880

/-! ## A378880.P4516011095869022282

`A001222(n+1)-A083025((n+1)²)`
-/

namespace A378880.P4516011095869022282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A083025 ((n + 1) ^ 2)

end

end A378880.P4516011095869022282

namespace A378880

/-- `A001222(n+1)-A083025((n+1)²)` -/
def P4516011095869022282.Spec : Prop :=
  ∀ n, P4516011095869022282.a n = A378880 (n + 1)

end A378880

/-! ## A378880.P12341948215709636576

`A001222(A065338((n+1)²))-A001222(n+1)`
-/

namespace A378880.P12341948215709636576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065338 ((n + 1) ^ 2)).toNat - A001222 (n + 1)

end

end A378880.P12341948215709636576

namespace A378880

/-- `A001222(A065338((n+1)²))-A001222(n+1)` -/
def P12341948215709636576.Spec : Prop :=
  ∀ n, P12341948215709636576.a n = A378880 (n + 1)

end A378880

/-! ## A378880.P10801869260871119965

`A001222(A072438((n+1)²))-A001222(n+1)`
-/

namespace A378880.P10801869260871119965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A072438 ((n + 1) ^ 2)).toNat - A001222 (n + 1)

end

end A378880.P10801869260871119965

namespace A378880

/-- `A001222(A072438((n+1)²))-A001222(n+1)` -/
def P10801869260871119965.Spec : Prop :=
  ∀ n, P10801869260871119965.a n = A378880 (n + 1)

end A378880

/-! ## A378880.P2959656440382773011

`A001222(n+1)-A001222(A170818((n+1)²))`
-/

namespace A378880.P2959656440382773011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A170818 ((n + 1) ^ 2)).toNat

end

end A378880.P2959656440382773011

namespace A378880

/-- `A001222(n+1)-A001222(A170818((n+1)²))` -/
def P2959656440382773011.Spec : Prop :=
  ∀ n, P2959656440382773011.a n = A378880 (n + 1)

end A378880

/-! ## A378880.P586480744584245034

`A001222(n+1)-A001222(A286361((n+1)²))`
-/

namespace A378880.P586480744584245034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A286361 ((n + 1) ^ 2)).toNat

end

end A378880.P586480744584245034

namespace A378880

/-- `A001222(n+1)-A001222(A286361((n+1)²))` -/
def P586480744584245034.Spec : Prop :=
  ∀ n, P586480744584245034.a n = A378880 (n + 1)

end A378880

/-!
# A378881: Irregular triangle listing permutations of {1,...,m} which are at maximum distance from the identity permutation under steps rotate left (L) or exchange first two elements (E).

The programs for A378881, there is no canonical definition to state claims against.
-/

/-! ## A378881.P12413975929690585030

`A060117(lt[A000009(n), A171072(2*n+3)])`
-/

namespace A378881.P12413975929690585030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171072 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060117 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A378881.P12413975929690585030

/-! ## A378881.P15192156121868047607

`A358553(A213934(n+5)+A066099(2*n+1))`
-/

namespace A378881.P15192156121868047607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358553 (A213934 (n + 5) + A066099 (2 * n + 1)).toNat

end

end A378881.P15192156121868047607

/-! ## A378881.P16300673943312531572

`A060117(lt[A000045(n), A105802(n+1)])`
-/

namespace A378881.P16300673943312531572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060117 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A378881.P16300673943312531572

/-! ## A378881.P17223216547409121852

`A060117(lt[A002223(n+1), A258957(n+1)])`
-/

namespace A378881.P17223216547409121852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060117 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A378881.P17223216547409121852

/-! ## A378881.P4407517930383134284

`A060117(lt[A134816(n+1), A152454(n+2)])`
-/

namespace A378881.P4407517930383134284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152454 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060117 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A378881.P4407517930383134284

/-!
# A378882: G.f. A(x) satisfies A(x) = ( 1 + x*A(x)/(1 - x*A(x)^(5/3)) )^3.

The programs for A378882, there is no canonical definition to state claims against.
-/

/-! ## A378882.P603706605315061845

`A008611(2*A027391(n))`
-/

namespace A378882.P603706605315061845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (2 * A027391 n).toNat

end

end A378882.P603706605315061845

/-!
# A378883: G.f. A(x) satisfies A(x) = 1 + x*A(x)^3/(1 - x*A(x)^5).

The programs for A378883, there is no canonical definition to state claims against.
-/

/-! ## A378883.P16300596309310546621

`A057353(A136284(n+1)+2)`
-/

namespace A378883.P16300596309310546621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A136284 (n + 1) + 2).toNat

end

end A378883.P16300596309310546621

/-! ## A378883.P16526046083076506855

`filter[A049131(n+1), A341389(#)]`
-/

namespace A378883.P16526046083076506855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341389 (f1 j).toNat = 1) n)

end

end A378883.P16526046083076506855

/-!
# A378884: Numbers that are not powers of primes and whose two smallest prime divisors are consecutive primes.

The programs for A378884, the canonical program `A378884.P13713079630548469269` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378884 has offset 1).

The definition of A378884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2178 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378884.P13713079630548469269

`eq[1, A079978(A348717(n+1))]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A378884

/-- `eq[1, A079978(A348717(n+1))]+1` -/
def P13713079630548469269.Spec : Prop :=
  ∀ n, (P13713079630548469269.a n : ℤ) = A378884 (n + 1)

theorem P13713079630548469269.correct : P13713079630548469269.Spec := by
  intro n
  simp only [A378884, Nat.add_sub_cancel]

end A378884

/-! ## A378884.P13043438901746876097

`filter[A258575(n+2), A296210(#)]`
-/

namespace A378884.P13043438901746876097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258575 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A378884.P13043438901746876097

namespace A378884

/-- `filter[A258575(n+2), A296210(#)]` -/
def P13043438901746876097.Spec : Prop :=
  ∀ n, P13043438901746876097.a n = A378884 (n + 1)

end A378884

/-! ## A378884.P16244886454634354112

`∩[A104210(n+1), A258575(n+1)]`
-/

namespace A378884.P16244886454634354112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378884.P16244886454634354112

namespace A378884

/-- `∩[A104210(n+1), A258575(n+1)]` -/
def P16244886454634354112.Spec : Prop :=
  ∀ n, (P16244886454634354112.a n : ℤ) = A378884 (n + 1)

end A378884

/-! ## A378884.P2771052800827706882

`filter[A045506(n+1), A296210(#)]`
-/

namespace A378884.P2771052800827706882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A378884.P2771052800827706882

namespace A378884

/-- `filter[A045506(n+1), A296210(#)]` -/
def P2771052800827706882.Spec : Prop :=
  ∀ n, P2771052800827706882.a n = A378884 (n + 1)

end A378884

/-! ## A378884.P887462501466289551

`∩[A104210(n+1), A045506(n)]`
-/

namespace A378884.P887462501466289551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045506 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378884.P887462501466289551

namespace A378884

/-- `∩[A104210(n+1), A045506(n)]` -/
def P887462501466289551.Spec : Prop :=
  ∀ n, (P887462501466289551.a n : ℤ) = A378884 (n + 1)

end A378884

/-!
# A378885: Numbers that are divisible by at least three different primes and the smallest three of them are consecutive primes.

The programs for A378885, there is no canonical definition to state claims against.
-/

/-! ## A378885.P13744840355046062707

`∩[A314015(n), A325992(n+1)]`
-/

namespace A378885.P13744840355046062707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314015 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378885.P13744840355046062707

/-! ## A378885.P5777217736127892235

`A048691(A001248(2*n+1))*A381433(n+1)`
-/

namespace A378885.P5777217736127892235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A001248 (2 * n + 1)).toNat * A381433 (n + 1)

end

end A378885.P5777217736127892235

/-! ## A378885.P6240299442315444457

`A315067(A381433(n+1)%A019210(2*n+7))`
-/

namespace A378885.P6240299442315444457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315067 (Int.tmod (A381433 (n + 1)) (A019210 (2 * n + 7))).toNat

end

end A378885.P6240299442315444457

/-! ## A378885.P17448760846323860947

`A010695(A001333(n))*A364348(n+1)`
-/

namespace A378885.P17448760846323860947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010695 (A001333 n).toNat * A364348 (n + 1)

end

end A378885.P17448760846323860947

/-! ## A378885.P3221031362613165526

`∩[A131933(n+1), A284375(n+1)]`
-/

namespace A378885.P3221031362613165526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378885.P3221031362613165526

/-!
# A378886: The number of consecutive primes in the prime factorization of n starting from the smallest prime dividing n; a(1) = 0.

The programs for A378886, there is no canonical definition to state claims against.
-/

/-! ## A378886.P16285350988681866377

`∑{e}[A053590(n+1), #]`
-/

namespace A378886.P16285350988681866377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053590 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A378886.P16285350988681866377

/-! ## A378886.P14300492289342329603

`A001221(A053590(n+1))`
-/

namespace A378886.P14300492289342329603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A053590 (n + 1)).toNat

end

end A378886.P14300492289342329603

/-! ## A378886.P11647468017638732284

`A276084(A348717(n+1))`
-/

namespace A378886.P11647468017638732284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (A348717 (n + 1)).toNat

end

end A378886.P11647468017638732284

/-! ## A378886.P4851954351213663018

`A001222(A053590(n+1)+C(n%2, 3))`
-/

namespace A378886.P4851954351213663018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A053590 (n + 1) + (Nat.choose (n % 2) 3 : ℤ)).toNat

end

end A378886.P4851954351213663018

/-! ## A378886.P4911057798902269336

`A257993(A348717(n+1))-A257993(2*n+5)`
-/

namespace A378886.P4911057798902269336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A348717 (n + 1)).toNat - A257993 (2 * n + 5)

end

end A378886.P4911057798902269336

/-! ## A378886.P12798786923849834126

`A097249(A007947(n+1)*A020639(n+1))`
-/

namespace A378886.P12798786923849834126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097249 (A007947 (n + 1) * A020639 (n + 1)).toNat

end

end A378886.P12798786923849834126

/-! ## A378886.P16522511185315336142

`A087624(A053590(n+1)²)`
-/

namespace A378886.P16522511185315336142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (A053590 (n + 1) ^ 2).toNat

end

end A378886.P16522511185315336142

/-!
# A378887: a(n) = gcd(n, A001511(n)).

The programs for A378887, the canonical program `A378887.P8856246218187554853` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378887 has offset 1).

The definition of A378887 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A001511(n+1))` (program `A378887.P8856246218187554853`, by `A378887.P8856246218187554853.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A378887.P11492714711519912540

`gcd(n+1, val(n+1, 2)+1)`
-/

namespace A378887.P11492714711519912540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A378887.P11492714711519912540

namespace A378887

/-- `gcd(n+1, val(n+1, 2)+1)` -/
def P11492714711519912540.Spec : Prop :=
  ∀ n, (P11492714711519912540.a n : ℤ) = A378887 (n + 1)

end A378887

/-! ## A378887.P8856246218187554853

`gcd(n+1, A001511(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A378887

/-- `gcd(n+1, A001511(n+1))` -/
def P8856246218187554853.Spec : Prop :=
  ∀ n, (P8856246218187554853.a n : ℤ) = A378887 (n + 1)

theorem P8856246218187554853.correct : P8856246218187554853.Spec := by
  intro n
  simp only [A378887, Nat.add_sub_cancel]

end A378887

/-! ## A378887.P17839662113906165919

`A378888(2*(n+1))`
-/

namespace A378887.P17839662113906165919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378888 (2 * (n + 1))

end

end A378887.P17839662113906165919

namespace A378887

/-- `A378888(2*(n+1))` -/
def P17839662113906165919.Spec : Prop :=
  ∀ n, P17839662113906165919.a n = A378887 (n + 1)

end A378887

/-! ## A378887.P1697788487324381854

`gcd(2*(n+1), A007814(2*(n+1)))`
-/

namespace A378887.P1697788487324381854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) (A007814 (2 * (n + 1)))

end

end A378887.P1697788487324381854

namespace A378887

/-- `gcd(2*(n+1), A007814(2*(n+1)))` -/
def P1697788487324381854.Spec : Prop :=
  ∀ n, (P1697788487324381854.a n : ℤ) = A378887 (n + 1)

end A378887

/-! ## A378887.P8755111143993724432

`gcd(A003485(n), A164677(n+1))`
-/

namespace A378887.P8755111143993724432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003485 n) (A164677 (n + 1))

end

end A378887.P8755111143993724432

namespace A378887

/-- `gcd(A003485(n), A164677(n+1))` -/
def P8755111143993724432.Spec : Prop :=
  ∀ n, (P8755111143993724432.a n : ℤ) = A378887 (n + 1)

end A378887

/-! ## A378887.P10150164117447710564

`gcd(A026491(n), A292608(n+1))`
-/

namespace A378887.P10150164117447710564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026491 n) (A292608 (n + 1))

end

end A378887.P10150164117447710564

namespace A378887

/-- `gcd(A026491(n), A292608(n+1))` -/
def P10150164117447710564.Spec : Prop :=
  ∀ n, (P10150164117447710564.a n : ℤ) = A378887 (n + 1)

end A378887

/-! ## A378887.P12688538299702666884

`gcd(A007814(2*(n+1)), A140472(2*n))`
-/

namespace A378887.P12688538299702666884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (2 * (n + 1))) (A140472 (2 * n))

end

end A378887.P12688538299702666884

namespace A378887

/-- `gcd(A007814(2*(n+1)), A140472(2*n))` -/
def P12688538299702666884.Spec : Prop :=
  ∀ n, (P12688538299702666884.a n : ℤ) = A378887 (n + 1)

end A378887

/-! ## A378887.P12553154337052097690

`gcd(A001511(n+1), A134353(n))`
-/

namespace A378887.P12553154337052097690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001511 (n + 1)) (A134353 n)

end

end A378887.P12553154337052097690

namespace A378887

/-- `gcd(A001511(n+1), A134353(n))` -/
def P12553154337052097690.Spec : Prop :=
  ∀ n, (P12553154337052097690.a n : ℤ) = A378887 (n + 1)

end A378887

/-!
# A378888: a(n) = gcd(n, A007814(n)).

The programs for A378888, the canonical program `A378888.P6768742438089139191` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378888 has offset 1).

The definition of A378888 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A007814(n+1))` (program `A378888.P6768742438089139191`, by `A378888.P6768742438089139191.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A378888.P5659749981812602446

`gcd(n+1, val(n+1, 2))`
-/

namespace A378888.P5659749981812602446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (SequenceMachineLib.valuation (n + 1) 2)

end

end A378888.P5659749981812602446

namespace A378888

/-- `gcd(n+1, val(n+1, 2))` -/
def P5659749981812602446.Spec : Prop :=
  ∀ n, (P5659749981812602446.a n : ℤ) = A378888 (n + 1)

end A378888

/-! ## A378888.P6768742438089139191

`gcd(n+1, A007814(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A378888

/-- `gcd(n+1, A007814(n+1))` -/
def P6768742438089139191.Spec : Prop :=
  ∀ n, (P6768742438089139191.a n : ℤ) = A378888 (n + 1)

theorem P6768742438089139191.correct : P6768742438089139191.Spec := by
  intro n
  simp only [A378888, Nat.add_sub_cancel]

end A378888

/-! ## A378888.P17895869379234663359

`gcd(log2(1-and(n, n+1)+n), C(n+1, n))`
-/

namespace A378888.P17895869379234663359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.logb 2 (1 - (Nat.land n (n + 1) : ℤ) + (n : ℤ) : ℝ))) (Nat.choose (n + 1) n : ℤ)

end

end A378888.P17895869379234663359

namespace A378888

/-- `gcd(log2(1-and(n, n+1)+n), C(n+1, n))` -/
def P17895869379234663359.Spec : Prop :=
  ∀ n, (P17895869379234663359.a n : ℤ) = A378888 (n + 1)

end A378888

/-! ## A378888.P13824422558168260493

`gcd(n+1, Δ[A011371(n)])`
-/

namespace A378888.P13824422558168260493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A378888.P13824422558168260493

namespace A378888

/-- `gcd(n+1, Δ[A011371(n)])` -/
def P13824422558168260493.Spec : Prop :=
  ∀ n, (P13824422558168260493.a n : ℤ) = A378888 (n + 1)

end A378888

/-! ## A378888.P14876178282270189320

`gcd(n*A001511(n+1)+1, ∑[n])`
-/

namespace A378888.P14876178282270189320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A001511 (n + 1) + 1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A378888.P14876178282270189320

namespace A378888

/-- `gcd(n*A001511(n+1)+1, ∑[n])` -/
def P14876178282270189320.Spec : Prop :=
  ∀ n, (P14876178282270189320.a n : ℤ) = A378888 (n + 1)

end A378888

/-! ## A378888.P5450316613680264329

`gcd(A007814(n+1), A030640(n))`
-/

namespace A378888.P5450316613680264329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A030640 n)

end

end A378888.P5450316613680264329

namespace A378888

/-- `gcd(A007814(n+1), A030640(n))` -/
def P5450316613680264329.Spec : Prop :=
  ∀ n, (P5450316613680264329.a n : ℤ) = A378888 (n + 1)

end A378888

/-! ## A378888.P12954429266330738621

`gcd(A091574(n), A144583(n+1))`
-/

namespace A378888.P12954429266330738621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091574 n) (A144583 (n + 1))

end

end A378888.P12954429266330738621

namespace A378888

/-- `gcd(A091574(n), A144583(n+1))` -/
def P12954429266330738621.Spec : Prop :=
  ∀ n, (P12954429266330738621.a n : ℤ) = A378888 (n + 1)

end A378888

/-! ## A378888.P4698832228586761310

`gcd(A000027(n+1), A001222(A006519(n+1)))`
-/

namespace A378888.P4698832228586761310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A001222 (A006519 (n + 1)).toNat)

end

end A378888.P4698832228586761310

namespace A378888

/-- `gcd(A000027(n+1), A001222(A006519(n+1)))` -/
def P4698832228586761310.Spec : Prop :=
  ∀ n, (P4698832228586761310.a n : ℤ) = A378888 (n + 1)

end A378888

/-! ## A378888.P289182856375959900

`gcd(A007814(A008619(2*n)), A008619(2*n))`
-/

namespace A378888.P289182856375959900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (A008619 (2 * n)).toNat) (A008619 (2 * n))

end

end A378888.P289182856375959900

namespace A378888

/-- `gcd(A007814(A008619(2*n)), A008619(2*n))` -/
def P289182856375959900.Spec : Prop :=
  ∀ n, (P289182856375959900.a n : ℤ) = A378888 (n + 1)

end A378888

/-!
# A378889: G.f. A(x) satisfies A(x) = ( 1 + x*A(x)^(4/3)/(1 + x*A(x)^(1/3)) )^3.

The programs for A378889, there is no canonical definition to state claims against.
-/

/-! ## A378889.P6160181657285367823

`A203302(A149931(n))`
-/

namespace A378889.P6160181657285367823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203302 (A149931 n).toNat

end

end A378889.P6160181657285367823

/-!
# A378890: G.f. A(x) satisfies A(x) = ( 1 + x*A(x)^(5/3)/(1 + x*A(x)^(2/3)) )^3.

The programs for A378890, there is no canonical definition to state claims against.
-/

/-! ## A378890.P18198148992574247949

`or(1, A248184(A002110(n)))`
-/

namespace A378890.P18198148992574247949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A248184 (A002110 n).toNat)

end

end A378890.P18198148992574247949

/-!
# A378891: G.f. A(x) satisfies A(x) = ( 1 + x*A(x)^2/(1 + x*A(x)) )^3.

The programs for A378891, there is no canonical definition to state claims against.
-/

/-! ## A378891.P16822958745724389845

`A181988(∑[∑[A370104(n)]])`
-/

namespace A378891.P16822958745724389845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370104 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181988 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A378891.P16822958745724389845

/-!
# A378892: G.f. A(x) satisfies A(x) = 1 + x*A(x)^6/(1 + x*A(x)^3).

The programs for A378892, there is no canonical definition to state claims against.
-/

/-! ## A378892.P15697518712024624679

`A245934(A071724(n))`
-/

namespace A378892.P15697518712024624679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245934 (A071724 n).toNat

end

end A378892.P15697518712024624679

/-!
# A378896: Numbers k such that k - p^2 is squarefree for every prime p < sqrt(k).

The programs for A378896, there is no canonical definition to state claims against.
-/

/-! ## A378896.P4186552265500128840

`lt[A379018(n+1), 1]+1`
-/

namespace A378896.P4186552265500128840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379018 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A378896.P4186552265500128840

/-!
# A378898: a(n) is the least k > 0 such that (n+k)^2 + n^2 is prime.

The programs for A378898, there is no canonical definition to state claims against.
-/

/-! ## A378898.P13962775554925938842

`A089489(n+1)-(n+1)`
-/

namespace A378898.P13962775554925938842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089489 (n + 1) - (n + 1 : ℤ)

end

end A378898.P13962775554925938842

/-! ## A378898.P5121942196109183447

`floor(sqrt(A068487(n+1)-n²))-(n+1)`
-/

namespace A378898.P5121942196109183447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A068487 (n + 1) - (n ^ 2 : ℤ)) - (n + 1 : ℤ)

end

end A378898.P5121942196109183447

/-! ## A378898.P3133666964377579307

`A023443(A089489(n+1)-n)`
-/

namespace A378898.P3133666964377579307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A089489 (n + 1) - (n : ℤ)).toNat

end

end A378898.P3133666964377579307

/-! ## A378898.P6652602069239769876

`A262689(A068487(n+1))-(n+1)`
-/

namespace A378898.P6652602069239769876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A068487 (n + 1)).toNat - (n + 1 : ℤ)

end

end A378898.P6652602069239769876

/-! ## A378898.P16868229814146467716

`A037213(A068487(n+1)-(n+1)²)-(n+1)`
-/

namespace A378898.P16868229814146467716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A068487 (n + 1) - ((n + 1) ^ 2 : ℤ)).toNat - (n + 1 : ℤ)

end

end A378898.P16868229814146467716

