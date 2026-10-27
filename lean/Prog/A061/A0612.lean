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
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B002.C007
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A061200: tau_5(n) = number of ordered 5-factorizations of n.

The programs for A061200, the canonical program `A061200.P18118821245674340575` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061200 has offset 1).

The definition of A061200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061200.P18118821245674340575

`∏{e}[n+1, C(#+4, 4)]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061200

/-- `∏{e}[n+1, C(#+4, 4)]` -/
def P18118821245674340575.Spec : Prop :=
  ∀ n, (P18118821245674340575.a n : ℤ) = A061200 (n + 1)

theorem P18118821245674340575.correct : P18118821245674340575.Spec := by
  intro n
  simp only [A061200, Nat.add_sub_cancel]

end A061200

/-! ## A061200.P4101234260566656970

`∑{d}[n+1, A007426(#)]`
-/

namespace A061200.P4101234260566656970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d

end

end A061200.P4101234260566656970

namespace A061200

/-- `∑{d}[n+1, A007426(#)]` -/
def P4101234260566656970.Spec : Prop :=
  ∀ n, P4101234260566656970.a n = A061200 (n + 1)

end A061200

/-! ## A061200.P16840378137425621672

`∏{e}[n+1, sqrt(A288876(#))]`
-/

namespace A061200.P16840378137425621672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Real.sqrt (A288876 (Nat.factorization (f1 n) p) : ℝ)

end

end A061200.P16840378137425621672

namespace A061200

/-- `∏{e}[n+1, sqrt(A288876(#))]` -/
def P16840378137425621672.Spec : Prop :=
  ∀ n, P16840378137425621672.a n = (A061200 (n + 1) : ℝ)

end A061200

/-! ## A061200.P12717296677518556112

`∏{e}[n+1, A189976(2*#+8)]`
-/

namespace A061200.P12717296677518556112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A189976 (2 * Nat.factorization (f1 n) p + 8)

end

end A061200.P12717296677518556112

namespace A061200

/-- `∏{e}[n+1, A189976(2*#+8)]` -/
def P12717296677518556112.Spec : Prop :=
  ∀ n, P12717296677518556112.a n = A061200 (n + 1)

end A061200

/-! ## A061200.P3636627645210622186

`∏{e}[n+1, A001840(A055998(#)+1)]`
-/

namespace A061200.P3636627645210622186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001840 (A055998 (Nat.factorization (f1 n) p) + 1).toNat

end

end A061200.P3636627645210622186

namespace A061200

/-- `∏{e}[n+1, A001840(A055998(#)+1)]` -/
def P3636627645210622186.Spec : Prop :=
  ∀ n, P3636627645210622186.a n = A061200 (n + 1)

end A061200

/-! ## A061200.P10454071850182293201

`∑{d}[n+1, A000005(#)*A007425((n+1)/#)]`
-/

namespace A061200.P10454071850182293201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A007425 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061200.P10454071850182293201

namespace A061200

/-- `∑{d}[n+1, A000005(#)*A007425((n+1)/#)]` -/
def P10454071850182293201.Spec : Prop :=
  ∀ n, P10454071850182293201.a n = A061200 (n + 1)

end A061200

/-! ## A061200.P6211268772829074798

`∑{d}[n+1, A008683(#)*A034695((n+1)/#)]`
-/

namespace A061200.P6211268772829074798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A034695 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061200.P6211268772829074798

namespace A061200

/-- `∑{d}[n+1, A008683(#)*A034695((n+1)/#)]` -/
def P6211268772829074798.Spec : Prop :=
  ∀ n, P6211268772829074798.a n = A061200 (n + 1)

end A061200

/-! ## A061200.P7562639938285705145

`∑{d}[n+1, A010052(#)*A062367((n+1)/#)]`
-/

namespace A061200.P7562639938285705145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A062367 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061200.P7562639938285705145

namespace A061200

/-- `∑{d}[n+1, A010052(#)*A062367((n+1)/#)]` -/
def P7562639938285705145.Spec : Prop :=
  ∀ n, P7562639938285705145.a n = A061200 (n + 1)

end A061200

/-! ## A061200.P17500566833908632771

`∑{d}[n+1, A035116(#)*A046951((n+1)/#)]`
-/

namespace A061200.P17500566833908632771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035116 d * A046951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061200.P17500566833908632771

namespace A061200

/-- `∑{d}[n+1, A035116(#)*A046951((n+1)/#)]` -/
def P17500566833908632771.Spec : Prop :=
  ∀ n, P17500566833908632771.a n = A061200 (n + 1)

end A061200

/-! ## A061200.P2611122201342465324

`∑{d}[n+1, A007427(#)*A111217((n+1)/#)]`
-/

namespace A061200.P2611122201342465324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A111217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061200.P2611122201342465324

namespace A061200

/-- `∑{d}[n+1, A007427(#)*A111217((n+1)/#)]` -/
def P2611122201342465324.Spec : Prop :=
  ∀ n, P2611122201342465324.a n = A061200 (n + 1)

end A061200

/-! ## A061200.P8230785604746810448

`∑{d}[n+1, A007428(#)*A111218((n+1)/#)]`
-/

namespace A061200.P8230785604746810448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A111218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061200.P8230785604746810448

namespace A061200

/-- `∑{d}[n+1, A007428(#)*A111218((n+1)/#)]` -/
def P8230785604746810448.Spec : Prop :=
  ∀ n, P8230785604746810448.a n = A061200 (n + 1)

end A061200

/-! ## A061200.P4149244153842132900

`∑{d}[n+1, A007430(#)*A130054((n+1)/#)]`
-/

namespace A061200.P4149244153842132900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007430 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061200.P4149244153842132900

namespace A061200

/-- `∑{d}[n+1, A007430(#)*A130054((n+1)/#)]` -/
def P4149244153842132900.Spec : Prop :=
  ∀ n, P4149244153842132900.a n = A061200 (n + 1)

end A061200

/-! ## A061200.P17662123549768115249

`∑{d}[n+1, A048691(#)*A124315((n+1)/#)]`
-/

namespace A061200.P17662123549768115249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A124315 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061200.P17662123549768115249

namespace A061200

/-- `∑{d}[n+1, A048691(#)*A124315((n+1)/#)]` -/
def P17662123549768115249.Spec : Prop :=
  ∀ n, P17662123549768115249.a n = A061200 (n + 1)

end A061200

/-! ## A061200.P2220896433170313588

`∑{d}[n+1, A129628(#)*A133700((n+1)/#)]`
-/

namespace A061200.P2220896433170313588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129628 d * A133700 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061200.P2220896433170313588

namespace A061200

/-- `∑{d}[n+1, A129628(#)*A133700((n+1)/#)]` -/
def P2220896433170313588.Spec : Prop :=
  ∀ n, P2220896433170313588.a n = A061200 (n + 1)

end A061200

/-! ## A061200.P11954080305533067710

`∑{d}[n+1, A001511(#)*A326417((n+1)/#)]`
-/

namespace A061200.P11954080305533067710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A326417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061200.P11954080305533067710

namespace A061200

/-- `∑{d}[n+1, A001511(#)*A326417((n+1)/#)]` -/
def P11954080305533067710.Spec : Prop :=
  ∀ n, P11954080305533067710.a n = A061200 (n + 1)

end A061200

/-! ## A061200.P7944076655644648460

`∑{d}[n+1, A063775(#)*A286779((n+1)/#)]`
-/

namespace A061200.P7944076655644648460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063775 d * A286779 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061200.P7944076655644648460

namespace A061200

/-- `∑{d}[n+1, A063775(#)*A286779((n+1)/#)]` -/
def P7944076655644648460.Spec : Prop :=
  ∀ n, P7944076655644648460.a n = A061200 (n + 1)

end A061200

/-! ## A061200.P16083939178970557586

`∑{d}[n+1, A038712(#)*A318768((n+1)/#)]`
-/

namespace A061200.P16083939178970557586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A318768 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061200.P16083939178970557586

namespace A061200

/-- `∑{d}[n+1, A038712(#)*A318768((n+1)/#)]` -/
def P16083939178970557586.Spec : Prop :=
  ∀ n, P16083939178970557586.a n = A061200 (n + 1)

end A061200

/-! ## A061200.P8748705846585052640

`A077592(A052905(n+2)+1)`
-/

namespace A061200.P8748705846585052640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077592 (A052905 (n + 2) + 1).toNat

end

end A061200.P8748705846585052640

namespace A061200

/-- `A077592(A052905(n+2)+1)` -/
def P8748705846585052640.Spec : Prop :=
  ∀ n, P8748705846585052640.a n = A061200 (n + 1)

end A061200

/-! ## A061200.P6249443959187451821

`A077592(A034856(n+3)+n+3)`
-/

namespace A061200.P6249443959187451821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077592 (A034856 (n + 3) + (n + 3 : ℤ)).toNat

end

end A061200.P6249443959187451821

namespace A061200

/-- `A077592(A034856(n+3)+n+3)` -/
def P6249443959187451821.Spec : Prop :=
  ∀ n, P6249443959187451821.a n = A061200 (n + 1)

end A061200

/-!
# A061201: Partial sums of A007425: (tau<=)_3(n).

The programs for A061201, the canonical program `A061201.P8137233599417440418` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061201 has offset 1).

The definition of A061201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061201.P8137233599417440418

`∑[∏{e}[n+1, C(#+2, 2)]]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061201

/-- `∑[∏{e}[n+1, C(#+2, 2)]]` -/
def P8137233599417440418.Spec : Prop :=
  ∀ n, (P8137233599417440418.a n : ℤ) = A061201 (n + 1)

theorem P8137233599417440418.correct : P8137233599417440418.Spec := by
  intro n
  simp only [A061201, Nat.add_sub_cancel]

end A061201

/-! ## A061201.P15584443935136042213

`∑[A007425(n+1)]`
-/

namespace A061201.P15584443935136042213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061201.P15584443935136042213

namespace A061201

/-- `∑[A007425(n+1)]` -/
def P15584443935136042213.Spec : Prop :=
  ∀ n, P15584443935136042213.a n = A061201 (n + 1)

theorem P15584443935136042213.correct : P15584443935136042213.Spec := by
  intro n
  simp only [A061201, Nat.add_sub_cancel, A061201.P15584443935136042213.f1, A061201.P15584443935136042213.a, A061201.P8137233599417440418.f2, A061201.P8137233599417440418.f1, A061201.P8137233599417440418.a, A007425, A007425.P3441111155356079205.f1, A007425.P3441111155356079205.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061201

/-! ## A061201.P4209917408046806852

`∑[sqrt(A097988(n+1))]`
-/

namespace A061201.P4209917408046806852
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A097988 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061201.P4209917408046806852

namespace A061201

/-- `∑[sqrt(A097988(n+1))]` -/
def P4209917408046806852.Spec : Prop :=
  ∀ n, P4209917408046806852.a n = (A061201 (n + 1) : ℝ)

end A061201

/-! ## A061201.P5148899675799946600

`∑[∑{d}[n+1, A000005(#)]]`
-/

namespace A061201.P5148899675799946600
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000005 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061201.P5148899675799946600

namespace A061201

/-- `∑[∑{d}[n+1, A000005(#)]]` -/
def P5148899675799946600.Spec : Prop :=
  ∀ n, P5148899675799946600.a n = A061201 (n + 1)

end A061201

/-! ## A061201.P708170091095450507

`∑[A034718(n+1)/(n+1)]`
-/

namespace A061201.P708170091095450507
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034718 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061201.P708170091095450507

namespace A061201

/-- `∑[A034718(n+1)/(n+1)]` -/
def P708170091095450507.Spec : Prop :=
  ∀ n, P708170091095450507.a n = (A061201 (n + 1) : ℚ)

end A061201

/-! ## A061201.P7511114023641011293

`∑[∏{e}[n+1, A000217(#+1)]]`
-/

namespace A061201.P7511114023641011293
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A000217 (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061201.P7511114023641011293

namespace A061201

/-- `∑[∏{e}[n+1, A000217(#+1)]]` -/
def P7511114023641011293.Spec : Prop :=
  ∀ n, P7511114023641011293.a n = A061201 (n + 1)

theorem P7511114023641011293.correct : P7511114023641011293.Spec := by
  intro n
  simp only [A061201, Nat.add_sub_cancel, A061201.P7511114023641011293.f2, A061201.P7511114023641011293.f1, A061201.P7511114023641011293.a, A061201.P8137233599417440418.f2, A061201.P8137233599417440418.f1, A061201.P8137233599417440418.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061201

/-! ## A061201.P1545582464381082478

`A002541(n+1)+A333885(n+1)+A006218(n+1)`
-/

namespace A061201.P1545582464381082478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (n + 1) + (A333885 (n + 1) + A006218 (n + 1))

end

end A061201.P1545582464381082478

namespace A061201

/-- `A002541(n+1)+A333885(n+1)+A006218(n+1)` -/
def P1545582464381082478.Spec : Prop :=
  ∀ n, P1545582464381082478.a n = A061201 (n + 1)

end A061201

/-! ## A061201.P6413134983186290976

`∑[Δ[A226600(n)]%(2*(n+1))]`
-/

namespace A061201.P6413134983186290976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226600 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061201.P6413134983186290976

namespace A061201

/-- `∑[Δ[A226600(n)]%(2*(n+1))]` -/
def P6413134983186290976.Spec : Prop :=
  ∀ n, P6413134983186290976.a n = A061201 (n + 1)

end A061201

/-! ## A061201.P16946336719878315551

`A226600(n+1)-A003215(n+1)`
-/

namespace A061201.P16946336719878315551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226600 (n + 1) - A003215 (n + 1)

end

end A061201.P16946336719878315551

namespace A061201

/-- `A226600(n+1)-A003215(n+1)` -/
def P16946336719878315551.Spec : Prop :=
  ∀ n, P16946336719878315551.a n = A061201 (n + 1)

end A061201

/-! ## A061201.P13336602199198397855

`∑[A133700(A003961(n+1))]`
-/

namespace A061201.P13336602199198397855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133700 (A003961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061201.P13336602199198397855

namespace A061201

/-- `∑[A133700(A003961(n+1))]` -/
def P13336602199198397855.Spec : Prop :=
  ∀ n, P13336602199198397855.a n = A061201 (n + 1)

end A061201

/-! ## A061201.P3820371682951231146

`∑[A145511(A045965(n+1))]`
-/

namespace A061201.P3820371682951231146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145511 (A045965 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061201.P3820371682951231146

namespace A061201

/-- `∑[A145511(A045965(n+1))]` -/
def P3820371682951231146.Spec : Prop :=
  ∀ n, P3820371682951231146.a n = A061201 (n + 1)

end A061201

/-! ## A061201.P15265135162234807332

`∑[A133700(A332818(n+1))]`
-/

namespace A061201.P15265135162234807332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133700 (A332818 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061201.P15265135162234807332

namespace A061201

/-- `∑[A133700(A332818(n+1))]` -/
def P15265135162234807332.Spec : Prop :=
  ∀ n, P15265135162234807332.a n = A061201 (n + 1)

end A061201

/-! ## A061201.P12189192792720876870

`∑[A133700(A064988(n+1))]`
-/

namespace A061201.P12189192792720876870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133700 (A064988 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061201.P12189192792720876870

namespace A061201

/-- `∑[A133700(A064988(n+1))]` -/
def P12189192792720876870.Spec : Prop :=
  ∀ n, P12189192792720876870.a n = A061201 (n + 1)

end A061201

/-! ## A061201.P8084548051924191748

`∑[A133700(A297002(n+1))]`
-/

namespace A061201.P8084548051924191748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133700 (A297002 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061201.P8084548051924191748

namespace A061201

/-- `∑[A133700(A297002(n+1))]` -/
def P8084548051924191748.Spec : Prop :=
  ∀ n, P8084548051924191748.a n = A061201 (n + 1)

end A061201

/-! ## A061201.P317292432024087503

`∑[A211437(n+1)/4]`
-/

namespace A061201.P317292432024087503
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211437 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061201.P317292432024087503

namespace A061201

/-- `∑[A211437(n+1)/4]` -/
def P317292432024087503.Spec : Prop :=
  ∀ n, P317292432024087503.a n = (A061201 (n + 1) : ℚ)

end A061201

/-! ## A061201.P10707279778712040559

`∑[A145444(A253885(n)+1)]`
-/

namespace A061201.P10707279778712040559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145444 (A253885 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061201.P10707279778712040559

namespace A061201

/-- `∑[A145444(A253885(n)+1)]` -/
def P10707279778712040559.Spec : Prop :=
  ∀ n, P10707279778712040559.a n = A061201 (n + 1)

end A061201

/-! ## A061201.P16197825125268176086

`Δ[A212058(n)]`
-/

namespace A061201.P16197825125268176086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061201.P16197825125268176086

namespace A061201

/-- `Δ[A212058(n)]` -/
def P16197825125268176086.Spec : Prop :=
  ∀ n, P16197825125268176086.a n = A061201 (n + 1)

end A061201

/-! ## A061201.P7283230959482164570

`A212058(n+1)-A212058(n)`
-/

namespace A061201.P7283230959482164570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212058 (n + 1) - A212058 n

end

end A061201.P7283230959482164570

namespace A061201

/-- `A212058(n+1)-A212058(n)` -/
def P7283230959482164570.Spec : Prop :=
  ∀ n, P7283230959482164570.a n = A061201 (n + 1)

end A061201

/-! ## A061201.P11941027751999199367

`A212059(n)+A123932(n)`
-/

namespace A061201.P11941027751999199367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212059 n + A123932 n

end

end A061201.P11941027751999199367

namespace A061201

/-- `A212059(n)+A123932(n)` -/
def P11941027751999199367.Spec : Prop :=
  ∀ n, P11941027751999199367.a n = A061201 (n + 1)

end A061201

/-! ## A061201.P2084341510290541143

`∑[A334997(A167614(n+1))]`
-/

namespace A061201.P2084341510290541143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334997 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061201.P2084341510290541143

namespace A061201

/-- `∑[A334997(A167614(n+1))]` -/
def P2084341510290541143.Spec : Prop :=
  ∀ n, P2084341510290541143.a n = A061201 (n + 1)

end A061201

/-!
# A061202: (tau<=)_4(n).

The programs for A061202, the canonical program `A061202.P7280658422608581754` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061202 has offset 1).

The definition of A061202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061202.P7280658422608581754

`∑[∏{e}[n+1, C(#+3, 3)]]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061202

/-- `∑[∏{e}[n+1, C(#+3, 3)]]` -/
def P7280658422608581754.Spec : Prop :=
  ∀ n, (P7280658422608581754.a n : ℤ) = A061202 (n + 1)

theorem P7280658422608581754.correct : P7280658422608581754.Spec := by
  intro n
  simp only [A061202, Nat.add_sub_cancel]

end A061202

/-! ## A061202.P14233070544548074726

`∏{e}[n+1, C(#+3, 3)]+a(n-1)` with `a(0)=1`
-/

namespace A061202.P14233070544548074726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 3) 3 + a (n - 1)

end

end A061202.P14233070544548074726

namespace A061202

/-- `∏{e}[n+1, C(#+3, 3)]+a(n-1)` -/
def P14233070544548074726.Spec : Prop :=
  ∀ n, (P14233070544548074726.a n : ℤ) = A061202 (n + 1)

end A061202

/-! ## A061202.P3260947176349863542

`∑[A007426(n+1)]`
-/

namespace A061202.P3260947176349863542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061202.P3260947176349863542

namespace A061202

/-- `∑[A007426(n+1)]` -/
def P3260947176349863542.Spec : Prop :=
  ∀ n, P3260947176349863542.a n = A061202 (n + 1)

theorem P3260947176349863542.correct : P3260947176349863542.Spec := by
  intro n
  simp only [A061202, Nat.add_sub_cancel, A061202.P3260947176349863542.f1, A061202.P3260947176349863542.a, A061202.P7280658422608581754.f2, A061202.P7280658422608581754.f1, A061202.P7280658422608581754.a, A007426, A007426.P17531083173581795255.f1, A007426.P17531083173581795255.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061202

/-! ## A061202.P18063009111437440812

`∑[sqrt(A393214(n+1))]`
-/

namespace A061202.P18063009111437440812
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A393214 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061202.P18063009111437440812

namespace A061202

/-- `∑[sqrt(A393214(n+1))]` -/
def P18063009111437440812.Spec : Prop :=
  ∀ n, P18063009111437440812.a n = (A061202 (n + 1) : ℝ)

end A061202

/-! ## A061202.P12921619026443366775

`∑[∑{d}[n+1, A007425(#)]]`
-/

namespace A061202.P12921619026443366775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A007425 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061202.P12921619026443366775

namespace A061202

/-- `∑[∑{d}[n+1, A007425(#)]]` -/
def P12921619026443366775.Spec : Prop :=
  ∀ n, P12921619026443366775.a n = A061202 (n + 1)

end A061202

/-! ## A061202.P8113762137004932825

`∑[∏{e}[n+1, A000292(#+1)]]`
-/

namespace A061202.P8113762137004932825
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A000292 (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061202.P8113762137004932825

namespace A061202

/-- `∑[∏{e}[n+1, A000292(#+1)]]` -/
def P8113762137004932825.Spec : Prop :=
  ∀ n, P8113762137004932825.a n = A061202 (n + 1)

theorem P8113762137004932825.correct : P8113762137004932825.Spec := by
  intro n
  simp only [A061202, Nat.add_sub_cancel, A061202.P8113762137004932825.f2, A061202.P8113762137004932825.f1, A061202.P8113762137004932825.a, A061202.P7280658422608581754.f2, A061202.P7280658422608581754.f1, A061202.P7280658422608581754.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061202

/-! ## A061202.P623920477314491791

`∑[∑{d}[n+1, A000005(#)*A000005((n+1)/#)]]`
-/

namespace A061202.P623920477314491791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000005 d * A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061202.P623920477314491791

namespace A061202

/-- `∑[∑{d}[n+1, A000005(#)*A000005((n+1)/#)]]` -/
def P623920477314491791.Spec : Prop :=
  ∀ n, P623920477314491791.a n = A061202 (n + 1)

end A061202

/-! ## A061202.P7632050715295014222

`∑[A318768(A003961(n+1))]`
-/

namespace A061202.P7632050715295014222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318768 (A003961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061202.P7632050715295014222

namespace A061202

/-- `∑[A318768(A003961(n+1))]` -/
def P7632050715295014222.Spec : Prop :=
  ∀ n, P7632050715295014222.a n = A061202 (n + 1)

end A061202

/-! ## A061202.P10371191881355080869

`∑[A318768(A332818(n+1))]`
-/

namespace A061202.P10371191881355080869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318768 (A332818 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061202.P10371191881355080869

namespace A061202

/-- `∑[A318768(A332818(n+1))]` -/
def P10371191881355080869.Spec : Prop :=
  ∀ n, P10371191881355080869.a n = A061202 (n + 1)

end A061202

/-! ## A061202.P6405993695976826027

`∑[A318768(A064988(n+1))]`
-/

namespace A061202.P6405993695976826027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318768 (A064988 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061202.P6405993695976826027

namespace A061202

/-- `∑[A318768(A064988(n+1))]` -/
def P6405993695976826027.Spec : Prop :=
  ∀ n, P6405993695976826027.a n = A061202 (n + 1)

end A061202

/-! ## A061202.P16753603889577720067

`∑[A318768(A297002(n+1))]`
-/

namespace A061202.P16753603889577720067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318768 (A297002 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061202.P16753603889577720067

namespace A061202

/-- `∑[A318768(A297002(n+1))]` -/
def P16753603889577720067.Spec : Prop :=
  ∀ n, P16753603889577720067.a n = A061202 (n + 1)

end A061202

/-! ## A061202.P3732597832902768333

`∑[A334997(A167614(n+2)+1)]`
-/

namespace A061202.P3732597832902768333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334997 (A167614 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061202.P3732597832902768333

namespace A061202

/-- `∑[A334997(A167614(n+2)+1)]` -/
def P3732597832902768333.Spec : Prop :=
  ∀ n, P3732597832902768333.a n = A061202 (n + 1)

end A061202

/-! ## A061202.P620036259955783290

`A140705(∑[n]+1)`
-/

namespace A061202.P620036259955783290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140705 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A061202.P620036259955783290

namespace A061202

/-- `A140705(∑[n]+1)` -/
def P620036259955783290.Spec : Prop :=
  ∀ n, P620036259955783290.a n = A061202 (n + 1)

end A061202

/-! ## A061202.P11827692285573993481

`record[A140705(n+1)]`
-/

namespace A061202.P11827692285573993481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061202.P11827692285573993481

namespace A061202

/-- `record[A140705(n+1)]` -/
def P11827692285573993481.Spec : Prop :=
  ∀ n, P11827692285573993481.a n = A061202 (n + 1)

end A061202

/-! ## A061202.P3422015260492486530

`∑[A077592(A052905(n+1)+2)]`
-/

namespace A061202.P3422015260492486530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077592 (A052905 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061202.P3422015260492486530

namespace A061202

/-- `∑[A077592(A052905(n+1)+2)]` -/
def P3422015260492486530.Spec : Prop :=
  ∀ n, P3422015260492486530.a n = A061202 (n + 1)

end A061202

/-! ## A061202.P8991414812741987862

`A077593(A302537(n+2)-2*n)`
-/

namespace A061202.P8991414812741987862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077593 (A302537 (n + 2) - (2 * n : ℤ)).toNat

end

end A061202.P8991414812741987862

namespace A061202

/-- `A077593(A302537(n+2)-2*n)` -/
def P8991414812741987862.Spec : Prop :=
  ∀ n, P8991414812741987862.a n = A061202 (n + 1)

end A061202

/-! ## A061202.P1346210795615255261

`A077593(A135855(A055998(n+2)))`
-/

namespace A061202.P1346210795615255261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077593 (A135855 (A055998 (n + 2)).toNat).toNat

end

end A061202.P1346210795615255261

namespace A061202

/-- `A077593(A135855(A055998(n+2)))` -/
def P1346210795615255261.Spec : Prop :=
  ∀ n, P1346210795615255261.a n = A061202 (n + 1)

end A061202

/-!
# A061203: (tau<=)_5(n).

The programs for A061203, the canonical program `A061203.P7460303258488264297` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061203 has offset 1).

The definition of A061203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061203.P7460303258488264297

`∑[∏{e}[n+1, C(#+4, 4)]]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061203

/-- `∑[∏{e}[n+1, C(#+4, 4)]]` -/
def P7460303258488264297.Spec : Prop :=
  ∀ n, (P7460303258488264297.a n : ℤ) = A061203 (n + 1)

theorem P7460303258488264297.correct : P7460303258488264297.Spec := by
  intro n
  simp only [A061203, Nat.add_sub_cancel]

end A061203

/-! ## A061203.P5875567533433067053

`∏{e}[n+1, C(#+4, 4)]+a(n-1)` with `a(0)=1`
-/

namespace A061203.P5875567533433067053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 4) 4 + a (n - 1)

end

end A061203.P5875567533433067053

namespace A061203

/-- `∏{e}[n+1, C(#+4, 4)]+a(n-1)` -/
def P5875567533433067053.Spec : Prop :=
  ∀ n, (P5875567533433067053.a n : ℤ) = A061203 (n + 1)

end A061203

/-! ## A061203.P9528046409499858741

`∑[A061200(n+1)]`
-/

namespace A061203.P9528046409499858741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061203.P9528046409499858741

namespace A061203

/-- `∑[A061200(n+1)]` -/
def P9528046409499858741.Spec : Prop :=
  ∀ n, P9528046409499858741.a n = A061203 (n + 1)

theorem P9528046409499858741.correct : P9528046409499858741.Spec := by
  intro n
  simp only [A061203, Nat.add_sub_cancel, A061203.P9528046409499858741.f1, A061203.P9528046409499858741.a, A061203.P7460303258488264297.f2, A061203.P7460303258488264297.f1, A061203.P7460303258488264297.a, A061200, A061200.P18118821245674340575.f1, A061200.P18118821245674340575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061203

/-! ## A061203.P9536468344154646161

`∑[∑{d}[n+1, A007426(#)]]`
-/

namespace A061203.P9536468344154646161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A007426 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061203.P9536468344154646161

namespace A061203

/-- `∑[∑{d}[n+1, A007426(#)]]` -/
def P9536468344154646161.Spec : Prop :=
  ∀ n, P9536468344154646161.a n = A061203 (n + 1)

end A061203

/-! ## A061203.P7030141660444358195

`∑[∏{e}[n+1, A189976(2*#+8)]]`
-/

namespace A061203.P7030141660444358195
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A189976 (2 * Nat.factorization (f2 n) p + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061203.P7030141660444358195

namespace A061203

/-- `∑[∏{e}[n+1, A189976(2*#+8)]]` -/
def P7030141660444358195.Spec : Prop :=
  ∀ n, P7030141660444358195.a n = A061203 (n + 1)

end A061203

/-!
# A061204: (tau<=)_6(n).

The programs for A061204, the canonical program `A061204.P4239897486158151453` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061204 has offset 1).

The definition of A061204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061204.P4239897486158151453

`∑[∏{e}[n+1, C(#+5, 5)]]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061204

/-- `∑[∏{e}[n+1, C(#+5, 5)]]` -/
def P4239897486158151453.Spec : Prop :=
  ∀ n, (P4239897486158151453.a n : ℤ) = A061204 (n + 1)

theorem P4239897486158151453.correct : P4239897486158151453.Spec := by
  intro n
  simp only [A061204, Nat.add_sub_cancel]

end A061204

/-! ## A061204.P3980702023575772328

`∏{e}[n+1, C(#+5, 5)]+a(n-1)` with `a(0)=1`
-/

namespace A061204.P3980702023575772328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 5) 5 + a (n - 1)

end

end A061204.P3980702023575772328

namespace A061204

/-- `∏{e}[n+1, C(#+5, 5)]+a(n-1)` -/
def P3980702023575772328.Spec : Prop :=
  ∀ n, (P3980702023575772328.a n : ℤ) = A061204 (n + 1)

end A061204

/-! ## A061204.P8094958857453861008

`∑[A034695(n+1)]`
-/

namespace A061204.P8094958857453861008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061204.P8094958857453861008

namespace A061204

/-- `∑[A034695(n+1)]` -/
def P8094958857453861008.Spec : Prop :=
  ∀ n, P8094958857453861008.a n = A061204 (n + 1)

theorem P8094958857453861008.correct : P8094958857453861008.Spec := by
  intro n
  simp only [A061204, Nat.add_sub_cancel, A061204.P8094958857453861008.f1, A061204.P8094958857453861008.a, A061204.P4239897486158151453.f2, A061204.P4239897486158151453.f1, A061204.P4239897486158151453.a, A034695, A034695.P16631369386541678886.f1, A034695.P16631369386541678886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061204

/-! ## A061204.P821260002216333484

`∑[∑{d}[n+1, A061200(#)]]`
-/

namespace A061204.P821260002216333484
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A061200 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061204.P821260002216333484

namespace A061204

/-- `∑[∑{d}[n+1, A061200(#)]]` -/
def P821260002216333484.Spec : Prop :=
  ∀ n, P821260002216333484.a n = A061204 (n + 1)

end A061204

/-! ## A061204.P6660576508385451377

`∑[∏{e}[n+1, A166808(#)+2]]`
-/

namespace A061204.P6660576508385451377
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (A166808 (Nat.factorization (f2 n) p) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061204.P6660576508385451377

namespace A061204

/-- `∑[∏{e}[n+1, A166808(#)+2]]` -/
def P6660576508385451377.Spec : Prop :=
  ∀ n, P6660576508385451377.a n = A061204 (n + 1)

end A061204

/-! ## A061204.P8741725473991666988

`∑[A077592(A052905(n+3))]`
-/

namespace A061204.P8741725473991666988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077592 (A052905 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061204.P8741725473991666988

namespace A061204

/-- `∑[A077592(A052905(n+3))]` -/
def P8741725473991666988.Spec : Prop :=
  ∀ n, P8741725473991666988.a n = A061204 (n + 1)

end A061204

/-!
# A061205: a(n) = n times R(n) where R(n) (A004086) is the digit reversal of n.

The programs for A061205, there is no canonical definition to state claims against.
-/

/-! ## A061205.P3382702722482540224

`n*A004086(n)`
-/

namespace A061205.P3382702722482540224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004086 n

end

end A061205.P3382702722482540224

/-! ## A061205.P13605299876056404381

`n*(n-A056965(n))`
-/

namespace A061205.P13605299876056404381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - A056965 n)

end

end A061205.P13605299876056404381

/-! ## A061205.P6840480997874563821

`n*(A056964(n)-n)`
-/

namespace A061205.P6840480997874563821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A056964 n - (n : ℤ))

end

end A061205.P6840480997874563821

/-! ## A061205.P16609474624081527140

`n*xor(n, A256756(n))`
-/

namespace A061205.P16609474624081527140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.xor (n : ℤ) (A256756 n)

end

end A061205.P16609474624081527140

/-! ## A061205.P16806620434190469803

`n*(n+1-A160928(n+1))`
-/

namespace A061205.P16806620434190469803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n + 1 : ℤ) - A160928 (n + 1))

end

end A061205.P16806620434190469803

/-! ## A061205.P794052703109587608

`n*(A160927(n+1)-(n+1))`
-/

namespace A061205.P794052703109587608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A160927 (n + 1) - (n + 1 : ℤ))

end

end A061205.P794052703109587608

/-! ## A061205.P13211306491557544166

`n/(n+1)*A160929(n+1)`
-/

namespace A061205.P13211306491557544166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ) * (A160929 (n + 1) : ℚ)

end

end A061205.P13211306491557544166

/-! ## A061205.P13190547396713954507

`A160929(n+1)-A004086(n)`
-/

namespace A061205.P13190547396713954507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160929 (n + 1) - A004086 n

end

end A061205.P13190547396713954507

/-! ## A061205.P14182094894613758769

`n*(A340479(n)-A007953(n))`
-/

namespace A061205.P14182094894613758769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A340479 n - A007953 n)

end

end A061205.P14182094894613758769

/-! ## A061205.P17351332385988307806

`n*A160936(n+1)/A160926(n+1)`
-/

namespace A061205.P17351332385988307806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A160936 (n + 1) : ℚ) / (A160926 (n + 1) : ℚ))

end

end A061205.P17351332385988307806

/-! ## A061205.P2239179455816024448

`n*A023443(A160927(n+1)-n)`
-/

namespace A061205.P2239179455816024448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A023443 (A160927 (n + 1) - (n : ℤ)).toNat

end

end A061205.P2239179455816024448

/-! ## A061205.P57975793619905643

`n*A004093(5*n)`
-/

namespace A061205.P57975793619905643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004093 (5 * n)

end

end A061205.P57975793619905643

/-! ## A061205.P4554194121375574439

`n*A103168(A370532(n+2))`
-/

namespace A061205.P4554194121375574439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A103168 (A370532 (n + 2)).toNat

end

end A061205.P4554194121375574439

/-! ## A061205.P9090338240354755602

`n*A103168(A008706(2*n))`
-/

namespace A061205.P9090338240354755602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A103168 (A008706 (2 * n)).toNat

end

end A061205.P9090338240354755602

/-! ## A061205.P10358452914772539296

`n*A248423(A008607(n))`
-/

namespace A061205.P10358452914772539296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A248423 (A008607 n).toNat

end

end A061205.P10358452914772539296

/-! ## A061205.P15033492947586886362

`A004185(n)%A065641(n+1)*A004186(n)`
-/

namespace A061205.P15033492947586886362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004185 n) (A065641 (n + 1)) * A004186 n

end

end A061205.P15033492947586886362

/-!
# A061206: a(n) = total number of occurrences of the consecutive pattern 1324 in all permutations of [n+3].

The programs for A061206, the canonical program `A061206.P7812786420703809976` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061206 has offset 1).

The definition of A061206 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061206.P7812786420703809976

`(n+1)*(n+4)!/24`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061206

/-- `(n+1)*(n+4)!/24` -/
def P7812786420703809976.Spec : Prop :=
  ∀ n, P7812786420703809976.a n = (A061206 (n + 1) : ℚ)

end A061206

/-! ## A061206.P2193171507056047075

`(n+1)!*C(n+4, 4)`
-/

namespace A061206.P2193171507056047075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) * Nat.choose (n + 4) 4

end

end A061206.P2193171507056047075

namespace A061206

/-- `(n+1)!*C(n+4, 4)` -/
def P2193171507056047075.Spec : Prop :=
  ∀ n, (P2193171507056047075.a n : ℤ) = A061206 (n + 1)

end A061206

/-! ## A061206.P9558911861227257674

`(n+1)/4*∏[n+4]`
-/

namespace A061206.P9558911861227257674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A061206.P9558911861227257674

namespace A061206

/-- `(n+1)/4*∏[n+4]` -/
def P9558911861227257674.Spec : Prop :=
  ∀ n, P9558911861227257674.a n = (A061206 (n + 1) : ℚ)

end A061206

/-! ## A061206.P3558104246935641426

`a(n-1)+a(n-1)/n*(n+2)²` with `a(0)=1`
-/

namespace A061206.P3558104246935641426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (n - 1) / (n : ℚ) * ((n + 2) ^ 2 : ℚ)

end

end A061206.P3558104246935641426

namespace A061206

/-- `a(n-1)+a(n-1)/n*(n+2)²` -/
def P3558104246935641426.Spec : Prop :=
  ∀ n, P3558104246935641426.a n = (A061206 (n + 1) : ℚ)

end A061206

/-! ## A061206.P16631987861259906585

`∏[dr(∑[3^n])+n]+(n+4)*a(n-1)` with `a(0)=1`
-/

namespace A061206.P16631987861259906585
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n + 4) * a (n - 1)

end

end A061206.P16631987861259906585

namespace A061206

/-- `∏[dr(∑[3^n])+n]+(n+4)*a(n-1)` -/
def P16631987861259906585.Spec : Prop :=
  ∀ n, (P16631987861259906585.a n : ℤ) = A061206 (n + 1)

end A061206

/-! ## A061206.P14190322088590704030

`A143497(∑[n+1]+3)`
-/

namespace A061206.P14190322088590704030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143497 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A061206.P14190322088590704030

namespace A061206

/-- `A143497(∑[n+1]+3)` -/
def P14190322088590704030.Spec : Prop :=
  ∀ n, P14190322088590704030.a n = A061206 (n + 1)

end A061206

/-! ## A061206.P11479742597518444902

`A216118(∑[n+1]+3)`
-/

namespace A061206.P11479742597518444902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216118 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A061206.P11479742597518444902

namespace A061206

/-- `A216118(∑[n+1]+3)` -/
def P11479742597518444902.Spec : Prop :=
  ∀ n, P11479742597518444902.a n = A061206 (n + 1)

end A061206

/-! ## A061206.P9382170425960739837

`A001720(n+5)-A001715(n+4)`
-/

namespace A061206.P9382170425960739837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001720 (n + 5) - A001715 (n + 4)

end

end A061206.P9382170425960739837

namespace A061206

/-- `A001720(n+5)-A001715(n+4)` -/
def P9382170425960739837.Spec : Prop :=
  ∀ n, P9382170425960739837.a n = A061206 (n + 1)

end A061206

/-! ## A061206.P4207947752079606549

`(n+1)*(n+4)*a(n-1)/n` with `a(0)=1`
-/

namespace A061206.P4207947752079606549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) * ((n + 4 : ℚ) * a (n - 1)) / (n : ℚ)

end

end A061206.P4207947752079606549

namespace A061206

/-- `(n+1)*(n+4)*a(n-1)/n` -/
def P4207947752079606549.Spec : Prop :=
  ∀ n, P4207947752079606549.a n = (A061206 (n + 1) : ℚ)

end A061206

/-! ## A061206.P564153091161113916

`A037961(n+1)/∑[n+1]`
-/

namespace A061206.P564153091161113916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037961 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A061206.P564153091161113916

namespace A061206

/-- `A037961(n+1)/∑[n+1]` -/
def P564153091161113916.Spec : Prop :=
  ∀ n, P564153091161113916.a n = (A061206 (n + 1) : ℚ)

end A061206

/-!
# A061208: Numbers which can be expressed as sum of distinct triangular numbers (A000217).

The programs for A061208, there is no canonical definition to state claims against.
-/

/-! ## A061208.P15420634316634248491

`lt[A000007(A000217(n)), A024940(n)]`
-/

namespace A061208.P15420634316634248491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024940 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061208.P15420634316634248491

/-!
# A061209: Numbers which are the cubes of their digit sum.

The programs for A061209, there is no canonical definition to state claims against.
-/

/-! ## A061209.P17784263569281610211

`A046459(n+1)^3`
-/

namespace A061209.P17784263569281610211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046459 (n + 1) ^ 3

end

end A061209.P17784263569281610211

/-! ## A061209.P17037884119757453448

`eq[n, ∑{digits}[n^3, #]]^3`
-/

namespace A061209.P17037884119757453448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 3

end

end A061209.P17037884119757453448

/-! ## A061209.P14506945303579925789

`eq[n, A004164(n)]^3`
-/

namespace A061209.P14506945303579925789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 3

end

end A061209.P14506945303579925789

/-!
# A061210: Numbers which are the fourth powers of their digit sum.

The programs for A061210, there is no canonical definition to state claims against.
-/

/-! ## A061210.P12993861618677424350

`eq[n, ∑{digits}[n^4, #]]^4`
-/

namespace A061210.P12993861618677424350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 4

end

end A061210.P12993861618677424350

/-! ## A061210.P4908785248101015832

`eq[n, log(∏{digits}[n^4, exp(#)])]²²`
-/

namespace A061210.P4908785248101015832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n ^ 2) ^ 2

end

end A061210.P4908785248101015832

/-! ## A061210.P14488732304083631137

`A337356(n+1)²`
-/

namespace A061210.P14488732304083631137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337356 (n + 1) ^ 2

end

end A061210.P14488732304083631137

/-!
# A061211: Largest number m such that m is the n-th power of the sum of its digits.

The programs for A061211, there is no canonical definition to state claims against.
-/

/-! ## A061211.P9896747193210518344

`A046000(n+1)^(n+1)`
-/

namespace A061211.P9896747193210518344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046000 (n + 1) ^ (n + 1)

end

end A061211.P9896747193210518344

/-! ## A061211.P4963780350021150114

`A379767(eq[A000007(n), A379767(n+1)])`
-/

namespace A061211.P4963780350021150114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379767 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A061211.P4963780350021150114

/-! ## A061211.P1682646379095710775

`A379767(eq[A102422(3*n), A379767(n+1)])`
-/

namespace A061211.P1682646379095710775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102422 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379767 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A061211.P1682646379095710775

/-! ## A061211.P14680821193715166249

`record[A046000(A252648(n))^A252648(n)]`
-/

namespace A061211.P14680821193715166249
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046000 (A252648 n).toNat : ℚ) ^ (A252648 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061211.P14680821193715166249

/-!
# A061213: a(n) = 1 + product of first n positive triangular numbers (A000217).

The programs for A061213, the canonical program `A061213.P18150382600562520076` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061213 has offset 1).

The definition of A061213 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061213.P3437552342003433825

`(n+1)*(n+2)/2*(a(n-1)-1)+1` with `a(0)=2`
-/

namespace A061213.P3437552342003433825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  ((n + 1) * (n + 2) : ℚ) / 2 * (a (n - 1) - 1) + 1

end

end A061213.P3437552342003433825

namespace A061213

/-- `(n+1)*(n+2)/2*(a(n-1)-1)+1` -/
def P3437552342003433825.Spec : Prop :=
  ∀ n, P3437552342003433825.a n = (A061213 (n + 1) : ℚ)

end A061213

/-! ## A061213.P18150382600562520076

`A006472(n+2)+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061213

/-- `A006472(n+2)+1` -/
def P18150382600562520076.Spec : Prop :=
  ∀ n, P18150382600562520076.a n = A061213 (n + 1)

theorem P18150382600562520076.correct : P18150382600562520076.Spec := by
  intro n
  simp only [A061213, Nat.add_sub_cancel]

end A061213

/-! ## A061213.P2073707157771190956

`∏[∑[n+1]]+1`
-/

namespace A061213.P2073707157771190956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A061213.P2073707157771190956

namespace A061213

/-- `∏[∑[n+1]]+1` -/
def P2073707157771190956.Spec : Prop :=
  ∀ n, (P2073707157771190956.a n : ℤ) = A061213 (n + 1)

end A061213

/-! ## A061213.P1002703863378953153

`abs(ceil(∏[a(n-1)+n+1])+1)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A061213.P1002703863378953153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A061213.P1002703863378953153

namespace A061213

/-- `abs(ceil(∏[a(n-1)+n+1])+1)` -/
def P1002703863378953153.Spec : Prop :=
  ∀ n, (P1002703863378953153.a n : ℤ) = A061213 (n + 1)

end A061213

/-! ## A061213.P13408194980663231311

`record[∏[A145063(n)]+1]`
-/

namespace A061213.P13408194980663231311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145063 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061213.P13408194980663231311

namespace A061213

/-- `record[∏[A145063(n)]+1]` -/
def P13408194980663231311.Spec : Prop :=
  ∀ n, P13408194980663231311.a n = A061213 (n + 1)

end A061213

/-!
# A061214: Product of composite numbers between the n-th and (n+1)st primes.

The programs for A061214, there is no canonical definition to state claims against.
-/

/-! ## A061214.P2678465710820950038

`A109915(A000040(n+1))`
-/

namespace A061214.P2678465710820950038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109915 (A000040 (n + 1)).toNat

end

end A061214.P2678465710820950038

/-! ## A061214.P15723848363427853188

`A109915(A006005(n+1))`
-/

namespace A061214.P15723848363427853188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109915 (A006005 (n + 1)).toNat

end

end A061214.P15723848363427853188

/-! ## A061214.P7723433899822060398

`A072472(n+1)/p?[A004273(n)]`
-/

namespace A061214.P7723433899822060398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072472 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A061214.P7723433899822060398

/-! ## A061214.P15549147063060315810

`A072472(n+1)/p?[A005408(n)]`
-/

namespace A061214.P15549147063060315810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072472 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A061214.P15549147063060315810

/-! ## A061214.P16358774761543839503

`A061215(n+1)*A061216(n+1)`
-/

namespace A061214.P16358774761543839503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061215 (n + 1) * A061216 (n + 1)

end

end A061214.P16358774761543839503

/-! ## A061214.P6249844476388755322

`A072472(n+1)/A065091(n+1)`
-/

namespace A061214.P6249844476388755322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072472 (n + 1) : ℚ) / (A065091 (n + 1) : ℚ)

end

end A061214.P6249844476388755322

/-! ## A061214.P11281723915772380345

`A361760(n+1)/A000040(n+1)`
-/

namespace A061214.P11281723915772380345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361760 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A061214.P11281723915772380345

/-! ## A061214.P16612908154586065257

`A072472(n+1)/A000040(n+2)`
-/

namespace A061214.P16612908154586065257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072472 (n + 1) : ℚ) / (A000040 (n + 2) : ℚ)

end

end A061214.P16612908154586065257

/-! ## A061214.P1021889453693666839

`gcd(A072472(n+1), A361760(n+1))`
-/

namespace A061214.P1021889453693666839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072472 (n + 1)) (A361760 (n + 1))

end

end A061214.P1021889453693666839

/-! ## A061214.P3117710930321657548

`A072472(n+1)/p?[A047486(n+1)]`
-/

namespace A061214.P3117710930321657548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072472 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A061214.P3117710930321657548

/-! ## A061214.P7615111040989202734

`A072472(n+1)/A063934(2*(n+1))`
-/

namespace A061214.P7615111040989202734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072472 (n + 1) : ℚ) / (A063934 (2 * (n + 1)) : ℚ)

end

end A061214.P7615111040989202734

/-! ## A061214.P4698033191384968056

`A361760(n+1)/A109763(2*n+1)`
-/

namespace A061214.P4698033191384968056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361760 (n + 1) : ℚ) / (A109763 (2 * n + 1) : ℚ)

end

end A061214.P4698033191384968056

/-! ## A061214.P114908439891705966

`A072472(n+1)/A361761(n+1)*A361760(n+1)`
-/

namespace A061214.P114908439891705966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072472 (n + 1) : ℚ) / (A361761 (n + 1) : ℚ) * (A361760 (n + 1) : ℚ)

end

end A061214.P114908439891705966

/-! ## A061214.P2438841358589846927

`A361761(n+1)/(A000040(n+1)*A000040(n+2))`
-/

namespace A061214.P2438841358589846927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361761 (n + 1) : ℚ) / (A000040 (n + 1) * A000040 (n + 2) : ℚ)

end

end A061214.P2438841358589846927

/-! ## A061214.P17648997313968778139

`A072472(n+1)*A072472(n+2)/A361761(n+2)`
-/

namespace A061214.P17648997313968778139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072472 (n + 1) * A072472 (n + 2) : ℚ) / (A361761 (n + 2) : ℚ)

end

end A061214.P17648997313968778139

/-!
# A061215: a(n)= product of all odd composite numbers between n-th prime and (n+1)-st prime.

The programs for A061215, there is no canonical definition to state claims against.
-/

/-! ## A061215.P16871587293170182832

`A061214(n+1)/A061216(n+1)`
-/

namespace A061215.P16871587293170182832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061214 (n + 1) : ℚ) / (A061216 (n + 1) : ℚ)

end

end A061215.P16871587293170182832

/-! ## A061215.P5037606859425561662

`gcd(A072472(n+1)/A061216(n+1), A361760(n+1))`
-/

namespace A061215.P5037606859425561662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A072472 (n + 1) : ℚ) / (A061216 (n + 1) : ℚ))) (A361760 (n + 1))

end

end A061215.P5037606859425561662

/-! ## A061215.P11055109139619225691

`floor(A072472(n+1)/A000040(n+2))/A061216(n+1)`
-/

namespace A061215.P11055109139619225691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A072472 (n + 1) : ℚ) / (A000040 (n + 2) : ℚ)⌋ : ℚ) / (A061216 (n + 1) : ℚ)

end

end A061215.P11055109139619225691

/-! ## A061215.P17537340265318770123

`A072472(n+1)/A361761(n+1)*A361760(n+1)/A061216(n+1)`
-/

namespace A061215.P17537340265318770123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072472 (n + 1) : ℚ) / (A361761 (n + 1) : ℚ) * (A361760 (n + 1) : ℚ) / (A061216 (n + 1) : ℚ)

end

end A061215.P17537340265318770123

/-! ## A061215.P13178656922811162217

`A061214(n+1)/ratio[A037223(A000040(n+1))]`
-/

namespace A061215.P13178656922811162217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037223 (A000040 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061214 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A061215.P13178656922811162217

/-!
# A061216: a(n) = product of all even numbers between n-th prime and (n+1)-st prime.

The programs for A061216, there is no canonical definition to state claims against.
-/

/-! ## A061216.P14005983605329994115

`A061214(n+1)/A061215(n+1)`
-/

namespace A061216.P14005983605329994115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061214 (n + 1) : ℚ) / (A061215 (n + 1) : ℚ)

end

end A061216.P14005983605329994115

/-! ## A061216.P346580785720452408

`ratio[A037223(Δ[A007504(n)])]`
-/

namespace A061216.P346580785720452408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037223 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A061216.P346580785720452408

/-! ## A061216.P5070727089014764010

`ratio[A037223(p?[A014681(n)])]`
-/

namespace A061216.P5070727089014764010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037223 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A061216.P5070727089014764010

/-! ## A061216.P241606153471497824

`ratio[A037223(A000040(n+1))]`
-/

namespace A061216.P241606153471497824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037223 (A000040 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A061216.P241606153471497824

/-! ## A061216.P18065843052309137097

`ratio[A037223(p?[A004280(n+1)])]`
-/

namespace A061216.P18065843052309137097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037223 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A061216.P18065843052309137097

/-!
# A061217: Number of zeros in the concatenation n(n-1)(n-2)(n-3)...321.

The programs for A061217, the canonical program `A061217.P10946344954140397278` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061217 has offset 1).

The definition of A061217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061217.P17367594144687772692

`∑[∑{digits}[n+1, floor(acot(#))]]`
-/

namespace A061217.P17367594144687772692
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌊SequenceMachineLib.acot (x : ℝ)⌋).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061217.P17367594144687772692

namespace A061217

/-- `∑[∑{digits}[n+1, floor(acot(#))]]` -/
def P17367594144687772692.Spec : Prop :=
  ∀ n, P17367594144687772692.a n = A061217 (n + 1)

end A061217

/-! ## A061217.P5731703684785368058

`∑[∑{digits}[n+1, floor(γ^#)]]`
-/

namespace A061217.P5731703684785368058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌊Real.eulerMascheroniConstant ^ x⌋).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061217.P5731703684785368058

namespace A061217

/-- `∑[∑{digits}[n+1, floor(γ^#)]]` -/
def P5731703684785368058.Spec : Prop :=
  ∀ n, P5731703684785368058.a n = A061217 (n + 1)

end A061217

/-! ## A061217.P10946344954140397278

`∑[A055641(n+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061217

/-- `∑[A055641(n+1)]` -/
def P10946344954140397278.Spec : Prop :=
  ∀ n, P10946344954140397278.a n = A061217 (n + 1)

theorem P10946344954140397278.correct : P10946344954140397278.Spec := by
  intro n
  simp only [A061217, Nat.add_sub_cancel]

end A061217

/-! ## A061217.P2200604528832970929

`∑[A306958(n+1)%5]`
-/

namespace A061217.P2200604528832970929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306958 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061217.P2200604528832970929

namespace A061217

/-- `∑[A306958(n+1)%5]` -/
def P2200604528832970929.Spec : Prop :=
  ∀ n, P2200604528832970929.a n = A061217 (n + 1)

end A061217

/-! ## A061217.P12966748972625856503

`∑[val(A004186(n+1), 10)]`
-/

namespace A061217.P12966748972625856503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004186 (n + 1)).toNat 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061217.P12966748972625856503

namespace A061217

/-- `∑[val(A004186(n+1), 10)]` -/
def P12966748972625856503.Spec : Prop :=
  ∀ n, (P12966748972625856503.a n : ℤ) = A061217 (n + 1)

end A061217

/-! ## A061217.P18210965023085969528

`∑[A316864(A222212(n+1))]`
-/

namespace A061217.P18210965023085969528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A222212 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061217.P18210965023085969528

namespace A061217

/-- `∑[A316864(A222212(n+1))]` -/
def P18210965023085969528.Spec : Prop :=
  ∀ n, P18210965023085969528.a n = A061217 (n + 1)

end A061217

/-! ## A061217.P7109565523423900769

`∑[A100910(A017281(n)+9)]`
-/

namespace A061217.P7109565523423900769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A017281 n + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061217.P7109565523423900769

namespace A061217

/-- `∑[A100910(A017281(n)+9)]` -/
def P7109565523423900769.Spec : Prop :=
  ∀ n, P7109565523423900769.a n = A061217 (n + 1)

end A061217

/-! ## A061217.P1007870561108378977

`∑[val(n+1, 10)%A188278(2*(n+1))]`
-/

namespace A061217.P1007870561108378977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.valuation (n + 1) 10 : ℤ) (A188278 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061217.P1007870561108378977

namespace A061217

/-- `∑[val(n+1, 10)%A188278(2*(n+1))]` -/
def P1007870561108378977.Spec : Prop :=
  ∀ n, P1007870561108378977.a n = A061217 (n + 1)

end A061217

/-! ## A061217.P176115469251932963

`A054899(Δ[A008619(n²)])`
-/

namespace A061217.P176115469251932963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (f1 (n + 1) - f1 n).toNat

end

end A061217.P176115469251932963

namespace A061217

/-- `A054899(Δ[A008619(n²)])` -/
def P176115469251932963.Spec : Prop :=
  ∀ n, P176115469251932963.a n = A061217 (n + 1)

end A061217

/-! ## A061217.P5377402013315717661

`A010879(A368362(n+1))`
-/

namespace A061217.P5377402013315717661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A368362 (n + 1)).toNat

end

end A061217.P5377402013315717661

namespace A061217

/-- `A010879(A368362(n+1))` -/
def P5377402013315717661.Spec : Prop :=
  ∀ n, P5377402013315717661.a n = A061217 (n + 1)

end A061217

/-!
# A061218: Least number whose number of divisors is n-th term from A014613 (numbers of form p*q*r*s, products of exactly 4 primes, counted with multiplicity).

The programs for A061218, there is no canonical definition to state claims against.
-/

/-! ## A061218.P18060580426917309581

`A005179(A014613(n+1))`
-/

namespace A061218.P18060580426917309581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A014613 (n + 1)).toNat

end

end A061218.P18060580426917309581

/-! ## A061218.P17072140644758300526

`A005179(A323350(n+1))`
-/

namespace A061218.P17072140644758300526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A323350 (n + 1)).toNat

end

end A061218.P17072140644758300526

/-! ## A061218.P16550317753603535897

`A005179(eq[n, n-a(A001222(n))])` with `a(0)=3`
-/

namespace A061218.P16550317753603535897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  (n : ℤ) - f2 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061218.P16550317753603535897

/-!
# A061219: a(n) is the largest number which can be formed with no zeros, using least number of digits and having digit sum = n.

The programs for A061219, there is no canonical definition to state claims against.
-/

/-! ## A061219.P8762044254007848721

`A160154(∑[A267142(n)])+n`
-/

namespace A061219.P8762044254007848721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160154 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A061219.P8762044254007848721

/-! ## A061219.P10875857104923795937

`A130692(A171722(n))+1+n`
-/

namespace A061219.P10875857104923795937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130692 (A171722 n).toNat + 1 + (n : ℤ)

end

end A061219.P10875857104923795937

/-! ## A061219.P18245350078823611151

`A004086(A051885(n+1))`
-/

namespace A061219.P18245350078823611151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A051885 (n + 1)).toNat

end

end A061219.P18245350078823611151

/-! ## A061219.P17024365577891030907

`record[A004086(A067043(n)+1)]`
-/

namespace A061219.P17024365577891030907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A067043 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061219.P17024365577891030907

/-! ## A061219.P2082044668344681267

`A004086(A037124(n+2)-1)`
-/

namespace A061219.P2082044668344681267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A037124 (n + 2) - 1).toNat

end

end A061219.P2082044668344681267

/-!
# A061221: Number of tic-tac-toe games won after n plays.

The programs for A061221, there is no canonical definition to state claims against.
-/

/-! ## A061221.P3336750035677466710

`A162296(A369623(n)+A008600(n))`
-/

namespace A061221.P3336750035677466710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (A369623 n + A008600 n).toNat

end

end A061221.P3336750035677466710

/-!
# A061222: a(n) = n^2 + (n + 1)^3 + (n + 2)^4.

The programs for A061222, the canonical program `A061222.P12905291855604016356` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061222 has offset 0).

The definition of A061222 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+(n+1)^3+(n+2)^4` (program `A061222.P12905291855604016356`, by `A061222.P12905291855604016356.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061222.P12905291855604016356

`n²+(n+1)^3+(n+2)^4`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061222

/-- `n²+(n+1)^3+(n+2)^4` -/
def P12905291855604016356.Spec : Prop :=
  ∀ n, (P12905291855604016356.a n : ℤ) = A061222 n

theorem P12905291855604016356.correct : P12905291855604016356.Spec := by
  intro n
  simp only [A061222]

end A061222

/-! ## A061222.P3429915499903568159

`A061224(n)%((n+3)^4)`
-/

namespace A061222.P3429915499903568159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061224 n) ((n + 3) ^ 4 : ℤ)

end

end A061222.P3429915499903568159

namespace A061222

/-- `A061224(n)%((n+3)^4)` -/
def P3429915499903568159.Spec : Prop :=
  ∀ n, P3429915499903568159.a n = A061222 n

end A061222

/-! ## A061222.P17580615504712527939

`(A268459(n+1)+(n+1)²)/(n+1)`
-/

namespace A061222.P17580615504712527939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268459 (n + 1) + ((n + 1) ^ 2 : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A061222.P17580615504712527939

namespace A061222

/-- `(A268459(n+1)+(n+1)²)/(n+1)` -/
def P17580615504712527939.Spec : Prop :=
  ∀ n, P17580615504712527939.a n = (A061222 n : ℚ)

theorem P17580615504712527939.correct : P17580615504712527939.Spec := by
  intro n
  simp only [A061222, Nat.add_sub_cancel, A061222.P17580615504712527939.a, A061222.P12905291855604016356.a, A268459, A268459.P1944635422954414379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061222

/-! ## A061222.P17349129833659887129

`(A269469(n+1)+3*(n+1))/(n+1)`
-/

namespace A061222.P17349129833659887129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269469 (n + 1) + (3 * (n + 1) : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A061222.P17349129833659887129

namespace A061222

/-- `(A269469(n+1)+3*(n+1))/(n+1)` -/
def P17349129833659887129.Spec : Prop :=
  ∀ n, P17349129833659887129.a n = (A061222 n : ℚ)

theorem P17349129833659887129.correct : P17349129833659887129.Spec := by
  intro n
  simp only [A061222, Nat.add_sub_cancel, A061222.P17349129833659887129.a, A061222.P12905291855604016356.a, A269469, A269469.P2578020114568236256.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061222

/-! ## A061222.P9830870582604383137

`(A269607(n+1)+A034126(n+1))*A007318(A020639(2*(n+7)))`
-/

namespace A061222.P9830870582604383137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A269607 (n + 1) + A034126 (n + 1)) * A007318 (A020639 (2 * (n + 7))).toNat

end

end A061222.P9830870582604383137

namespace A061222

/-- `(A269607(n+1)+A034126(n+1))*A007318(A020639(2*(n+7)))` -/
def P9830870582604383137.Spec : Prop :=
  ∀ n, P9830870582604383137.a n = A061222 n

end A061222

/-!
# A061223: a(n) = n^3 + (n + 1)^4 + (n + 2)^5.

The programs for A061223, the canonical program `A061223.P5583925599823297121` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061223 has offset 0).

The definition of A061223 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+(n+1)^4+(n+2)^5` (program `A061223.P5583925599823297121`, by `A061223.P5583925599823297121.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061223.P5583925599823297121

`n^3+(n+1)^4+(n+2)^5`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061223

/-- `n^3+(n+1)^4+(n+2)^5` -/
def P5583925599823297121.Spec : Prop :=
  ∀ n, (P5583925599823297121.a n : ℤ) = A061223 n

theorem P5583925599823297121.correct : P5583925599823297121.Spec := by
  intro n
  simp only [A061223]

end A061223

/-! ## A061223.P13178295299600826332

`A061225(n)%(A061222(n)-A061224(n))`
-/

namespace A061223.P13178295299600826332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061225 n) (A061222 n - A061224 n)

end

end A061223.P13178295299600826332

namespace A061223

/-- `A061225(n)%(A061222(n)-A061224(n))` -/
def P13178295299600826332.Spec : Prop :=
  ∀ n, P13178295299600826332.a n = A061223 n

end A061223

/-! ## A061223.P8187695033352386987

`(n+1)*(A062938(n+1)+8+n)`
-/

namespace A061223.P8187695033352386987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A062938 (n + 1) + 8 + (n : ℤ))

end

end A061223.P8187695033352386987

namespace A061223

/-- `(n+1)*(A062938(n+1)+8+n)` -/
def P8187695033352386987.Spec : Prop :=
  ∀ n, P8187695033352386987.a n = A061223 n

theorem P8187695033352386987.correct : P8187695033352386987.Spec := by
  intro n
  simp only [A061223, Nat.add_sub_cancel, A061223.P8187695033352386987.a, A061223.P5583925599823297121.a, A062938, A062938.P5210963884579662397.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061223

/-! ## A061223.P5472469209467732723

`(n+1)*((n+1)*A079505(n+3)+8)`
-/

namespace A061223.P5472469209467732723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) * A079505 (n + 3) + 8)

end

end A061223.P5472469209467732723

namespace A061223

/-- `(n+1)*((n+1)*A079505(n+3)+8)` -/
def P5472469209467732723.Spec : Prop :=
  ∀ n, P5472469209467732723.a n = A061223 n

end A061223

/-! ## A061223.P3313280607179983947

`(n+1)*(A137864(n+5)-n)`
-/

namespace A061223.P3313280607179983947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A137864 (n + 5) - (n : ℤ))

end

end A061223.P3313280607179983947

namespace A061223

/-- `(n+1)*(A137864(n+5)-n)` -/
def P3313280607179983947.Spec : Prop :=
  ∀ n, P3313280607179983947.a n = A061223 n

theorem P3313280607179983947.correct : P3313280607179983947.Spec := by
  intro n
  simp only [A061223, Nat.add_sub_cancel, A061223.P3313280607179983947.a, A061223.P5583925599823297121.a, A137864, A137864.P4137354387066839987.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061223

/-!
# A061224: a(n) = n^2 + (n + 1)^3 + (n + 2)^4 + (n + 3)^5.

The programs for A061224, the canonical program `A061224.P13766034416055557668` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061224 has offset 0).

The definition of A061224 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+(n+1)^3+(n+2)^4+(n+3)^5` (program `A061224.P13766034416055557668`, by `A061224.P13766034416055557668.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061224.P13766034416055557668

`n²+(n+1)^3+(n+2)^4+(n+3)^5`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061224

/-- `n²+(n+1)^3+(n+2)^4+(n+3)^5` -/
def P13766034416055557668.Spec : Prop :=
  ∀ n, (P13766034416055557668.a n : ℤ) = A061224 n

theorem P13766034416055557668.correct : P13766034416055557668.Spec := by
  intro n
  simp only [A061224]

end A061224

/-!
# A061225: Numbers of the form k^3 + (k + 1)^4 + (k + 2)^5 + (k + 3)^6.

The programs for A061225, the canonical program `A061225.P8711740164296919403` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061225 has offset 0).

The definition of A061225 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061225.P8711740164296919403

`n^3+(n+1)^4+(n+2)^5+(n+3)^6`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061225

/-- `n^3+(n+1)^4+(n+2)^5+(n+3)^6` -/
def P8711740164296919403.Spec : Prop :=
  ∀ n, (P8711740164296919403.a n : ℤ) = A061225 n

theorem P8711740164296919403.correct : P8711740164296919403.Spec := by
  intro n
  simp only [A061225]

end A061225

/-!
# A061226: a(n) = n^2 + (n^2 with digits reversed).

The programs for A061226, there is no canonical definition to state claims against.
-/

/-! ## A061226.P18107944662557989157

`n²+A004086(n²)`
-/

namespace A061226.P18107944662557989157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A004086 (n ^ 2)

end

end A061226.P18107944662557989157

/-! ## A061226.P15151293198003369754

`A004086(A000290(n))+A000290(n)`
-/

namespace A061226.P15151293198003369754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000290 n).toNat + A000290 n

end

end A061226.P15151293198003369754

/-! ## A061226.P15439509770942683742

`A004086(A002620(2*n))+A002620(2*n)`
-/

namespace A061226.P15439509770942683742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A002620 (2 * n)).toNat + A002620 (2 * n)

end

end A061226.P15439509770942683742

/-! ## A061226.P15068106363900006606

`A004086(n*A028310(n))+n*A028310(n)`
-/

namespace A061226.P15068106363900006606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ((n : ℤ) * A028310 n).toNat + (n : ℤ) * A028310 n

end

end A061226.P15068106363900006606

/-! ## A061226.P8438226026637171876

`A004086(A129194(2*n)/2)+A129194(2*n)/2`
-/

namespace A061226.P8438226026637171876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004086 (SequenceMachineLib.roundAway ((A129194 (2 * n) : ℚ) / 2)).toNat : ℚ) + (A129194 (2 * n) : ℚ) / 2

end

end A061226.P8438226026637171876

/-! ## A061226.P10786128988931764377

`A056964(n²)`
-/

namespace A061226.P10786128988931764377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (n ^ 2)

end

end A061226.P10786128988931764377

/-! ## A061226.P7548590862083745334

`or(char[4], A056964(n^2))`
-/

namespace A061226.P7548590862083745334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A056964 (n ^ 2))

end

end A061226.P7548590862083745334

/-! ## A061226.P3426411027852672566

`lcm(C(2, n+2)-1, A056964(n^(2%(n+1))))`
-/

namespace A061226.P3426411027852672566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((Nat.choose 2 (n + 2) : ℤ) - 1) (A056964 (n ^ (2 % (n + 1))))

end

end A061226.P3426411027852672566

/-! ## A061226.P12635579395924677026

`A056964(n^2)%A191484(n)`
-/

namespace A061226.P12635579395924677026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056964 (n ^ 2)) (A191484 n)

end

end A061226.P12635579395924677026

/-! ## A061226.P11610737607930349844

`A056964(n^2)+A000007(n+1)`
-/

namespace A061226.P11610737607930349844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (n ^ 2) + A000007 (n + 1)

end

end A061226.P11610737607930349844

/-! ## A061226.P11647153138182291168

`A007318(C(2, n))*A056964(n^2)`
-/

namespace A061226.P11647153138182291168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A056964 (n ^ 2)

end

end A061226.P11647153138182291168

/-! ## A061226.P14987103261300083983

`A000108(C(2, n+2))*A056964(n^2)`
-/

namespace A061226.P14987103261300083983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A056964 (n ^ 2)

end

end A061226.P14987103261300083983

/-! ## A061226.P8542180227527264266

`A056964(A000290(n))+A000038(n+1)`
-/

namespace A061226.P8542180227527264266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A000290 n).toNat + A000038 (n + 1)

end

end A061226.P8542180227527264266

/-! ## A061226.P6531257451830853463

`A056964(A000290(n))+A000035(2*n)`
-/

namespace A061226.P6531257451830853463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A000290 n).toNat + A000035 (2 * n)

end

end A061226.P6531257451830853463

/-! ## A061226.P17329988070589401496

`A014963(8*n+4)*A056964(A000290(n))`
-/

namespace A061226.P17329988070589401496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (8 * n + 4) * A056964 (A000290 n).toNat

end

end A061226.P17329988070589401496

/-! ## A061226.P15067130965236137870

`and(1, A000040(n+1))*A056964(A000290(n))`
-/

namespace A061226.P15067130965236137870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A056964 (A000290 n).toNat

end

end A061226.P15067130965236137870

/-!
# A061227: a(n) = p + R(p) where R(p) is the digit reversal of n-th prime p.

The programs for A061227, there is no canonical definition to state claims against.
-/

/-! ## A061227.P9295057584953697765

`A000040(n+1)+A004087(n+1)`
-/

namespace A061227.P9295057584953697765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A004087 (n + 1)

end

end A061227.P9295057584953697765

/-! ## A061227.P5403067541571348210

`A056964(A000040(n+1))`
-/

namespace A061227.P5403067541571348210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A000040 (n + 1)).toNat

end

end A061227.P5403067541571348210

/-! ## A061227.P3049541979326762896

`A004087(n+1)+Δ[A007504(n)]`
-/

namespace A061227.P3049541979326762896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1) + (f1 (n + 1) - f1 n)

end

end A061227.P3049541979326762896

/-! ## A061227.P17563550945944634267

`A100484(n+1)-A068396(n+1)`
-/

namespace A061227.P17563550945944634267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A068396 (n + 1)

end

end A061227.P17563550945944634267

/-! ## A061227.P4815803197691891875

`A004087(n+1)+abs(Δ[A008348(n)])`
-/

namespace A061227.P4815803197691891875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1) + |f1 (n + 1) - f1 n|

end

end A061227.P4815803197691891875

/-! ## A061227.P1751976696989237988

`A004087(n+1)+sqrt(A001248(n+1))`
-/

namespace A061227.P1751976696989237988
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A004087 (n + 1) : ℝ) + Real.sqrt (A001248 (n + 1) : ℝ)

end

end A061227.P1751976696989237988

/-! ## A061227.P6621415148954121466

`A004087(n+1)+∑[A054541(n+1)]`
-/

namespace A061227.P6621415148954121466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061227.P6621415148954121466

/-! ## A061227.P6545136514783186409

`A004087(n+1)+A006093(n+1)+1`
-/

namespace A061227.P6545136514783186409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1) + (A006093 (n + 1) + 1)

end

end A061227.P6545136514783186409

/-! ## A061227.P1553002192297282344

`A004087(n+1)+A040976(n+1)+2`
-/

namespace A061227.P1553002192297282344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1) + (A040976 (n + 1) + 2)

end

end A061227.P1553002192297282344

/-! ## A061227.P15976067502854779726

`A068396(n+1)+2*A004087(n+1)`
-/

namespace A061227.P15976067502854779726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068396 (n + 1) + 2 * A004087 (n + 1)

end

end A061227.P15976067502854779726

/-! ## A061227.P8068779971487015070

`2*A000040(n+1)-A068396(n+1)`
-/

namespace A061227.P8068779971487015070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A068396 (n + 1)

end

end A061227.P8068779971487015070

/-! ## A061227.P10329738096661537162

`A004087(n+1)+A007504(n+1)-A007504(n)`
-/

namespace A061227.P10329738096661537162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1) + (A007504 (n + 1) - A007504 n)

end

end A061227.P10329738096661537162

/-! ## A061227.P13395543605726660400

`A000040(n+1)+A133019(n+1)/A000040(n+1)`
-/

namespace A061227.P13395543605726660400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) + (A133019 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A061227.P13395543605726660400

/-! ## A061227.P15650077895453510435

`A004087(n+1)+A133019(n+1)/A004087(n+1)`
-/

namespace A061227.P15650077895453510435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004087 (n + 1) : ℚ) + (A133019 (n + 1) : ℚ) / (A004087 (n + 1) : ℚ)

end

end A061227.P15650077895453510435

/-! ## A061227.P7366672841464250984

`A008578(n+2)+A004087(n+1)`
-/

namespace A061227.P7366672841464250984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + A004087 (n + 1)

end

end A061227.P7366672841464250984

/-! ## A061227.P2083662008354251755

`∑{p}[A000040(n+1), A004086(#)+#]`
-/

namespace A061227.P2083662008354251755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A004086 p + (p : ℤ))

end

end A061227.P2083662008354251755

/-! ## A061227.P3130943022291605696

`A004086(A000040(n+1))+Δ[A007504(n)]`
-/

namespace A061227.P3130943022291605696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000040 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A061227.P3130943022291605696

/-! ## A061227.P5609437913974326740

`A182986(n+2)+A004086(A182986(n+2))`
-/

namespace A061227.P5609437913974326740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) + A004086 (A182986 (n + 2)).toNat

end

end A061227.P5609437913974326740

/-! ## A061227.P18304524824211885859

`A004086(A000040(n+1))+record[A006530(n+2)]`
-/

namespace A061227.P18304524824211885859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000040 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061227.P18304524824211885859

/-!
# A061228: a(1) = 2, a(n) = smallest number greater than n that is not coprime to n.

The programs for A061228, there is no canonical definition to state claims against.
-/

/-! ## A061228.P15642375842617063633

`A020639(n+1)+n+1`
-/

namespace A061228.P15642375842617063633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + (n + 1 : ℤ)

end

end A061228.P15642375842617063633

/-! ## A061228.P2205689159617330224

`lcm(2, A159475(n+1))`
-/

namespace A061228.P2205689159617330224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A159475 (n + 1))

end

end A061228.P2205689159617330224

/-! ## A061228.P14540650813358172729

`sqrt(A088377(n+1))+1+n`
-/

namespace A061228.P14540650813358172729
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A088377 (n + 1) : ℝ) + 1 + (n : ℝ)

end

end A061228.P14540650813358172729

/-! ## A061228.P10485987036300642513

`(n+1)/A032742(n+1)+1+n`
-/

namespace A061228.P10485987036300642513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A032742 (n + 1) : ℚ) + 1 + (n : ℚ)

end

end A061228.P10485987036300642513

/-! ## A061228.P7522304038879268480

`A285109(n+1)/(n+1)+n+1`
-/

namespace A061228.P7522304038879268480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285109 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A061228.P7522304038879268480

/-! ## A061228.P16207789087450861300

`2*n-(n-1-A020639(2*n-(n-1)))`
-/

namespace A061228.P16207789087450861300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1 - A020639 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat)

end

end A061228.P16207789087450861300

/-! ## A061228.P15190879544982341530

`n+1+(n+1)/gcd(n+1, A060681(n+1))`
-/

namespace A061228.P15190879544982341530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) + (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A060681 (n + 1)) : ℚ)

end

end A061228.P15190879544982341530

/-! ## A061228.P11790595161893226813

`A028815(A055396(n+1))+n`
-/

namespace A061228.P11790595161893226813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (A055396 (n + 1)).toNat + (n : ℤ)

end

end A061228.P11790595161893226813

/-! ## A061228.P9245405854443146269

`A063655(A020639(n+1))+n`
-/

namespace A061228.P9245405854443146269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A020639 (n + 1)).toNat + (n : ℤ)

end

end A061228.P9245405854443146269

/-! ## A061228.P12084412883071295755

`A092486(A020639(n+1)+n)`
-/

namespace A061228.P12084412883071295755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A020639 (n + 1) + (n : ℤ)).toNat

end

end A061228.P12084412883071295755

/-! ## A061228.P13717369656007252078

`A140524(n+1)+A010673(n)`
-/

namespace A061228.P13717369656007252078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140524 (n + 1) + A010673 n

end

end A061228.P13717369656007252078

/-! ## A061228.P11019705149279993213

`A159475(n+1)+A000007(n)`
-/

namespace A061228.P11019705149279993213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159475 (n + 1) + A000007 n

end

end A061228.P11019705149279993213

/-! ## A061228.P4652890748557331174

`A054977(n)*A159475(n+1)`
-/

namespace A061228.P4652890748557331174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A159475 (n + 1)

end

end A061228.P4652890748557331174

/-! ## A061228.P8614629635173258290

`A006530(A028233(n+1))+1+n`
-/

namespace A061228.P8614629635173258290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028233 (n + 1)).toNat + 1 + (n : ℤ)

end

end A061228.P8614629635173258290

/-! ## A061228.P15832114300290833582

`A028233(A007947(n+1))+1+n`
-/

namespace A061228.P15832114300290833582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A007947 (n + 1)).toNat + 1 + (n : ℤ)

end

end A061228.P15832114300290833582

/-! ## A061228.P12183913001034393571

`A006530(A068794(n+1))+1+n`
-/

namespace A061228.P12183913001034393571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A068794 (n + 1)).toNat + 1 + (n : ℤ)

end

end A061228.P12183913001034393571

/-! ## A061228.P13585716662895176496

`A006530(A074828(n+1))+1+n`
-/

namespace A061228.P13585716662895176496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074828 (n + 1)).toNat + 1 + (n : ℤ)

end

end A061228.P13585716662895176496

/-! ## A061228.P15827392918177194547

`A065475(n+1)+A057237(n+1)`
-/

namespace A061228.P15827392918177194547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) + A057237 (n + 1)

end

end A061228.P15827392918177194547

/-!
# A061229: a(n) = floor of the geometric mean of n and the reversal of n.

The programs for A061229, there is no canonical definition to state claims against.
-/

/-! ## A061229.P11149756819713858708

`floor(sqrt(A061205(n+1)))`
-/

namespace A061229.P11149756819713858708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A061205 (n + 1))

end

end A061229.P11149756819713858708

/-! ## A061229.P1777361347575908268

`floor(sqrt((n+1)*A004086(n+1)))`
-/

namespace A061229.P1777361347575908268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((n + 1 : ℤ) * A004086 (n + 1))

end

end A061229.P1777361347575908268

/-! ## A061229.P9681757135677708496

`floor(sqrt((n+1)*(n+1-A056965(n+1))))`
-/

namespace A061229.P9681757135677708496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((n + 1 : ℤ) * ((n + 1 : ℤ) - A056965 (n + 1)))

end

end A061229.P9681757135677708496

/-! ## A061229.P17308585430980482923

`floor(sqrt((n+1)*(A056964(n+1)-(n+1))))`
-/

namespace A061229.P17308585430980482923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((n + 1 : ℤ) * (A056964 (n + 1) - (n + 1 : ℤ)))

end

end A061229.P17308585430980482923

/-! ## A061229.P10828564975856112464

`floor(sqrt(A055483(n+1)*A068634(n+1)))`
-/

namespace A061229.P10828564975856112464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A055483 (n + 1) * A068634 (n + 1))

end

end A061229.P10828564975856112464

/-! ## A061229.P5010192169580998623

`A000196(A061205(n+1))`
-/

namespace A061229.P5010192169580998623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A061205 (n + 1)).toNat

end

end A061229.P5010192169580998623

/-! ## A061229.P262560742680671904

`A000196((n+1)*A135020(2*(n+1)))`
-/

namespace A061229.P262560742680671904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n + 1 : ℤ) * A135020 (2 * (n + 1))).toNat

end

end A061229.P262560742680671904

/-!
# A061230: Numbers k such that k + the reversal of k is a square.

The programs for A061230, there is no canonical definition to state claims against.
-/

/-! ## A061230.P12043211538593743315

`eq[0, A053186(A056964(n))]`
-/

namespace A061230.P12043211538593743315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A056964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061230.P12043211538593743315

/-! ## A061230.P8637677715061051799

`eq[1, A010052(A004086(n)+n)]`
-/

namespace A061230.P8637677715061051799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A004086 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061230.P8637677715061051799

/-! ## A061230.P5406948742920840923

`eq[A000007(n), A267594(A056964(n))]`
-/

namespace A061230.P5406948742920840923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267594 (A056964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061230.P5406948742920840923

/-! ## A061230.P10358251107636158855

`eq[A000122(n), A267594(A056964(n))]`
-/

namespace A061230.P10358251107636158855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267594 (A056964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061230.P10358251107636158855

/-!
# A061231: n - the reversal of n is a nonzero square.

The programs for A061231, there is no canonical definition to state claims against.
-/

/-! ## A061231.P14910478292028490202

`∩[A071590(n+1), A278328(n+1)]`
-/

namespace A061231.P14910478292028490202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061231.P14910478292028490202

/-! ## A061231.P166413908545921896

`eq[A329340(n+1)², A151950(n)]`
-/

namespace A061231.P166413908545921896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329340 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061231.P166413908545921896

/-! ## A061231.P7309900280978491839

`eq[A329340(n+1)², A347689(n)]`
-/

namespace A061231.P7309900280978491839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329340 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061231.P7309900280978491839

/-!
# A061232: Number of primes p with n! < p <= (n+1)!.

The programs for A061232, the canonical program `A061232.P13127818315439588566` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061232 has offset 0).

The definition of A061232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061232.P13127818315439588566

`A000720((n+1)!)-A000720(n!)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061232

/-- `A000720((n+1)!)-A000720(n!)` -/
def P13127818315439588566.Spec : Prop :=
  ∀ n, P13127818315439588566.a n = A061232 n

theorem P13127818315439588566.correct : P13127818315439588566.Spec := by
  intro n
  simp only [A061232]

end A061232

/-! ## A061232.P9747455529512806096

`Δ[A003604(n)]`
-/

namespace A061232.P9747455529512806096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061232.P9747455529512806096

namespace A061232

/-- `Δ[A003604(n)]` -/
def P9747455529512806096.Spec : Prop :=
  ∀ n, P9747455529512806096.a n = A061232 n

end A061232

/-! ## A061232.P5208816290063481981

`A003604(n+1)-A003604(n)`
-/

namespace A061232.P5208816290063481981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003604 (n + 1) - A003604 n

end

end A061232.P5208816290063481981

namespace A061232

/-- `A003604(n+1)-A003604(n)` -/
def P5208816290063481981.Spec : Prop :=
  ∀ n, P5208816290063481981.a n = A061232 n

end A061232

/-! ## A061232.P2042901665662249463

`record[A003604(A025581(n))]-A003604(n)`
-/

namespace A061232.P2042901665662249463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003604 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A003604 n

end

end A061232.P2042901665662249463

namespace A061232

/-- `record[A003604(A025581(n))]-A003604(n)` -/
def P2042901665662249463.Spec : Prop :=
  ∀ n, P2042901665662249463.a n = A061232 n

end A061232

/-! ## A061232.P6397225157291860697

`record[A003604(A028920(n))]-A003604(n)`
-/

namespace A061232.P6397225157291860697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003604 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A003604 n

end

end A061232.P6397225157291860697

namespace A061232

/-- `record[A003604(A028920(n))]-A003604(n)` -/
def P6397225157291860697.Spec : Prop :=
  ∀ n, P6397225157291860697.a n = A061232 n

end A061232

/-!
# A061233: Pierce expansion for 4 - Pi.

The programs for A061233, there is no canonical definition to state claims against.
-/

/-! ## A061233.P2244873467969588858

`A014014(n)^ceil(abs(sin(n)))`
-/

namespace A061233.P2244873467969588858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014014 n : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ)

end

end A061233.P2244873467969588858

/-! ## A061233.P9881604914943252826

`A014014(n)-A000038(n)`
-/

namespace A061233.P9881604914943252826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014014 n - A000038 n

end

end A061233.P9881604914943252826

/-! ## A061233.P18335185565475324592

`A014014(n)-2*A000007(n)`
-/

namespace A061233.P18335185565475324592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014014 n - 2 * A000007 n

end

end A061233.P18335185565475324592

/-! ## A061233.P1376987990831380920

`gcd(A000038(2*n), A014014(n))`
-/

namespace A061233.P1376987990831380920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (2 * n)) (A014014 n)

end

end A061233.P1376987990831380920

/-! ## A061233.P17641918417490458103

`and(A014014(n), A153881(n+1))`
-/

namespace A061233.P17641918417490458103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014014 n) (A153881 (n + 1))

end

end A061233.P17641918417490458103

/-! ## A061233.P13445575851139092574

`A014014(n)^and(1, A000051(n))`
-/

namespace A061233.P13445575851139092574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014014 n : ℚ) ^ (Int.land 1 (A000051 n) : ℤ)

end

end A061233.P13445575851139092574

/-! ## A061233.P8745352948583044840

`A014014(n)-A000096(C(2, n+2))`
-/

namespace A061233.P8745352948583044840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014014 n - A000096 (Nat.choose 2 (n + 2))

end

end A061233.P8745352948583044840

/-! ## A061233.P8863321988803125865

`A014014(n)-A014681(C(2, n+2))`
-/

namespace A061233.P8863321988803125865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014014 n - A014681 (Nat.choose 2 (n + 2))

end

end A061233.P8863321988803125865

/-! ## A061233.P9766349096162943764

`A014014(n)^(A000040(n+1)%2)`
-/

namespace A061233.P9766349096162943764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014014 n : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A061233.P9766349096162943764

/-! ## A061233.P10431412396405817635

`A014014(n)^(A074834(n+1)%2)`
-/

namespace A061233.P10431412396405817635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014014 n : ℚ) ^ (Int.tmod (A074834 (n + 1)) 2 : ℤ)

end

end A061233.P10431412396405817635

/-! ## A061233.P11267457636088219935

`A014014(n)^A001221(A001316(n))`
-/

namespace A061233.P11267457636088219935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014014 n : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A061233.P11267457636088219935

/-! ## A061233.P355795365252077027

`A014014(n)^A001222(A008578(n+1))`
-/

namespace A061233.P355795365252077027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014014 n : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A061233.P355795365252077027

/-! ## A061233.P865958239247397116

`A014014(n)^A032741(A006530(2*n+1))`
-/

namespace A061233.P865958239247397116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014014 n : ℚ) ^ (A032741 (A006530 (2 * n + 1)).toNat : ℤ)

end

end A061233.P865958239247397116

/-! ## A061233.P17358501749602834096

`C(A014014(n), (n-A014681(n))²)`
-/

namespace A061233.P17358501749602834096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014014 n).toNat (((n : ℤ) - A014681 n) ^ 2).toNat

end

end A061233.P17358501749602834096

/-! ## A061233.P10185537461085689985

`A014014(n)%A387438(n)`
-/

namespace A061233.P10185537461085689985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014014 n) (A387438 n)

end

end A061233.P10185537461085689985

/-!
# A061234: Smallest number with prime(n)^2 divisors where prime(n) is the n-th prime.

The programs for A061234, the canonical program `A061234.P859095873413271574` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061234 has offset 1).

The definition of A061234 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061234.P859095873413271574

`6^(A000040(n+1)-1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061234

/-- `6^(A000040(n+1)-1)` -/
def P859095873413271574.Spec : Prop :=
  ∀ n, P859095873413271574.a n = (A061234 (n + 1) : ℚ)

end A061234

/-! ## A061234.P1111516322708955098

`6^A006093(n+1)`
-/

namespace A061234.P1111516322708955098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A006093 (n + 1) : ℤ)

end

end A061234.P1111516322708955098

namespace A061234

/-- `6^A006093(n+1)` -/
def P1111516322708955098.Spec : Prop :=
  ∀ n, P1111516322708955098.a n = (A061234 (n + 1) : ℚ)

end A061234

/-! ## A061234.P7233388466103899003

`record[6^A000010(n+1)]`
-/

namespace A061234.P7233388466103899003
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A000010 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061234.P7233388466103899003

namespace A061234

/-- `record[6^A000010(n+1)]` -/
def P7233388466103899003.Spec : Prop :=
  ∀ n, P7233388466103899003.a n = (A061234 (n + 1) : ℚ)

end A061234

/-! ## A061234.P3926923981961747298

`6^A066251(2*n+1)`
-/

namespace A061234.P3926923981961747298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A066251 (2 * n + 1) : ℤ)

end

end A061234.P3926923981961747298

namespace A061234

/-- `6^A066251(2*n+1)` -/
def P3926923981961747298.Spec : Prop :=
  ∀ n, P3926923981961747298.a n = (A061234 (n + 1) : ℚ)

end A061234

/-! ## A061234.P12007102405797781955

`6^eq[1, A001222(n+1)]`
-/

namespace A061234.P12007102405797781955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061234.P12007102405797781955

namespace A061234

/-- `6^eq[1, A001222(n+1)]` -/
def P12007102405797781955.Spec : Prop :=
  ∀ n, (P12007102405797781955.a n : ℤ) = A061234 (n + 1)

end A061234

/-!
# A061235: Number of primes between n^4 and (n+1)^4.

The programs for A061235, there is no canonical definition to state claims against.
-/

/-! ## A061235.P4251602660717339520

`Δ[A380331(n)]`
-/

namespace A061235.P4251602660717339520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061235.P4251602660717339520

/-! ## A061235.P2610459328595106668

`A380331(n+1)-A380331(n)`
-/

namespace A061235.P2610459328595106668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380331 (n + 1) - A380331 n

end

end A061235.P2610459328595106668

/-! ## A061235.P16282469574886679040

`A014085(n)+Δ[A117490(A253909(n))]`
-/

namespace A061235.P16282469574886679040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117490 (A253909 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n + (f1 (n + 1) - f1 n)

end

end A061235.P16282469574886679040

/-! ## A061235.P8243503860569670199

`Δ[A117490(A253909(n))+A038107(n)]`
-/

namespace A061235.P8243503860569670199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117490 (A253909 n).toNat + A038107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061235.P8243503860569670199

/-! ## A061235.P12277489273111926753

`A189025((n+1)²)+Δ[A117490(A253909(n))]`
-/

namespace A061235.P12277489273111926753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117490 (A253909 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189025 ((n + 1) ^ 2) + (f1 (n + 1) - f1 n)

end

end A061235.P12277489273111926753

/-! ## A061235.P2040141460830277576

`Δ[A038107(n²)]`
-/

namespace A061235.P2040141460830277576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061235.P2040141460830277576

/-! ## A061235.P14778148215725589990

`abs(Δ[A038107(A000290(n))])`
-/

namespace A061235.P14778148215725589990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A000290 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A061235.P14778148215725589990

/-! ## A061235.P15352433530820532745

`abs(Δ[A038107(A253909(n))])`
-/

namespace A061235.P15352433530820532745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A253909 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A061235.P15352433530820532745

/-! ## A061235.P522334282974060019

`abs(Δ[A038107(A002620(2*n))])`
-/

namespace A061235.P522334282974060019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A002620 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A061235.P522334282974060019

/-! ## A061235.P16549123682780510835

`Δ[A038107(A000290(n))*A057427(n)]`
-/

namespace A061235.P16549123682780510835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A000290 n).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061235.P16549123682780510835

/-!
# A061237: Prime numbers == 1 (mod 9).

The programs for A061237, the canonical program `A061237.P5052601919176040914` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061237 has offset 1).

The definition of A061237 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A061237.anchor (n : ℕ) (hn : 1 ≤ n) : A061237 n = (Nat.nth (fun p => p.Prime ∧ p % 9 = 1) (n - 1) : ℤ)` in `Proof.A061.A061237`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061237.P5052601919176040914

`p?[9*n+1]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061237

/-- `p?[9*n+1]` -/
def P5052601919176040914.Spec : Prop :=
  ∀ n, (P5052601919176040914.a n : ℤ) = A061237 (n + 1)

theorem P5052601919176040914.correct : P5052601919176040914.Spec := by
  intro n
  simp only [A061237, Nat.add_sub_cancel]

end A061237

/-! ## A061237.P15265424172838041689

`or(1, p?[a(n-1)+9])` with `a(0)=1`
-/

namespace A061237.P15265424172838041689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A061237.P15265424172838041689

namespace A061237

/-- `or(1, p?[a(n-1)+9])` -/
def P15265424172838041689.Spec : Prop :=
  ∀ n, (P15265424172838041689.a n : ℤ) = A061237 (n + 1)

end A061237

/-! ## A061237.P16294662287580959264

`∩[A002476(n+1), A129805(n+1)]`
-/

namespace A061237.P16294662287580959264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061237.P16294662287580959264

namespace A061237

/-- `∩[A002476(n+1), A129805(n+1)]` -/
def P16294662287580959264.Spec : Prop :=
  ∀ n, (P16294662287580959264.a n : ℤ) = A061237 (n + 1)

end A061237

/-! ## A061237.P2536921622490162929

`∩[A133290(n+1), A129805(n+1)]`
-/

namespace A061237.P2536921622490162929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061237.P2536921622490162929

namespace A061237

/-- `∩[A133290(n+1), A129805(n+1)]` -/
def P2536921622490162929.Spec : Prop :=
  ∀ n, (P2536921622490162929.a n : ℤ) = A061237 (n + 1)

end A061237

/-! ## A061237.P14168447471839395824

`A161705(A111094(n+1))`
-/

namespace A061237.P14168447471839395824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (A111094 (n + 1)).toNat

end

end A061237.P14168447471839395824

namespace A061237

/-- `A161705(A111094(n+1))` -/
def P14168447471839395824.Spec : Prop :=
  ∀ n, P14168447471839395824.a n = A061237 (n + 1)

end A061237

/-! ## A061237.P2923644639193793017

`∩[A002476(n+1), A161705(n)]`
-/

namespace A061237.P2923644639193793017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061237.P2923644639193793017

namespace A061237

/-- `∩[A002476(n+1), A161705(n)]` -/
def P2923644639193793017.Spec : Prop :=
  ∀ n, (P2923644639193793017.a n : ℤ) = A061237 (n + 1)

end A061237

/-! ## A061237.P11746164994279097051

`∩[A007645(n+1), A161705(n)]`
-/

namespace A061237.P11746164994279097051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061237.P11746164994279097051

namespace A061237

/-- `∩[A007645(n+1), A161705(n)]` -/
def P11746164994279097051.Spec : Prop :=
  ∀ n, (P11746164994279097051.a n : ℤ) = A061237 (n + 1)

end A061237

/-! ## A061237.P5478264488912766089

`∩[A045331(n+1), A161705(n)]`
-/

namespace A061237.P5478264488912766089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061237.P5478264488912766089

namespace A061237

/-- `∩[A045331(n+1), A161705(n)]` -/
def P5478264488912766089.Spec : Prop :=
  ∀ n, (P5478264488912766089.a n : ℤ) = A061237 (n + 1)

end A061237

/-! ## A061237.P10587747941974919099

`∩[A129805(n+1), A161705(n)]`
-/

namespace A061237.P10587747941974919099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061237.P10587747941974919099

namespace A061237

/-- `∩[A129805(n+1), A161705(n)]` -/
def P10587747941974919099.Spec : Prop :=
  ∀ n, (P10587747941974919099.a n : ℤ) = A061237 (n + 1)

end A061237

/-! ## A061237.P14165468845340421850

`∩[A049092(n+1), A161705(n)]`
-/

namespace A061237.P14165468845340421850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061237.P14165468845340421850

namespace A061237

/-- `∩[A049092(n+1), A161705(n)]` -/
def P14165468845340421850.Spec : Prop :=
  ∀ n, (P14165468845340421850.a n : ℤ) = A061237 (n + 1)

end A061237

/-! ## A061237.P10605604499801134219

`∩[A040116(n+1), A161705(n)]`
-/

namespace A061237.P10605604499801134219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061237.P10605604499801134219

namespace A061237

/-- `∩[A040116(n+1), A161705(n)]` -/
def P10605604499801134219.Spec : Prop :=
  ∀ n, (P10605604499801134219.a n : ℤ) = A061237 (n + 1)

end A061237

/-! ## A061237.P7701245920448043710

`filter[A129805(n+1), A070563(#)]`
-/

namespace A061237.P7701245920448043710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A061237.P7701245920448043710

namespace A061237

/-- `filter[A129805(n+1), A070563(#)]` -/
def P7701245920448043710.Spec : Prop :=
  ∀ n, P7701245920448043710.a n = A061237 (n + 1)

end A061237

/-! ## A061237.P14530871834249756428

`∩[A059500(n+1), A161705(n)]`
-/

namespace A061237.P14530871834249756428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061237.P14530871834249756428

namespace A061237

/-- `∩[A059500(n+1), A161705(n)]` -/
def P14530871834249756428.Spec : Prop :=
  ∀ n, (P14530871834249756428.a n : ℤ) = A061237 (n + 1)

end A061237

/-! ## A061237.P545459871791730394

`∩[A140563(n+1), A161705(n)]`
-/

namespace A061237.P545459871791730394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061237.P545459871791730394

namespace A061237

/-- `∩[A140563(n+1), A161705(n)]` -/
def P545459871791730394.Spec : Prop :=
  ∀ n, (P545459871791730394.a n : ℤ) = A061237 (n + 1)

end A061237

/-! ## A061237.P1905623134911143018

`∩[A138645(n+1), A161705(n)]`
-/

namespace A061237.P1905623134911143018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061237.P1905623134911143018

namespace A061237

/-- `∩[A138645(n+1), A161705(n)]` -/
def P1905623134911143018.Spec : Prop :=
  ∀ n, (P1905623134911143018.a n : ℤ) = A061237 (n + 1)

end A061237

/-! ## A061237.P8833187280020366516

`∩[A138645(n+1), A301617(n+1)]`
-/

namespace A061237.P8833187280020366516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061237.P8833187280020366516

namespace A061237

/-- `∩[A138645(n+1), A301617(n+1)]` -/
def P8833187280020366516.Spec : Prop :=
  ∀ n, (P8833187280020366516.a n : ℤ) = A061237 (n + 1)

end A061237

/-! ## A061237.P11851117830012205062

`∩[A049591(n+1), A161705(n)]`
-/

namespace A061237.P11851117830012205062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061237.P11851117830012205062

namespace A061237

/-- `∩[A049591(n+1), A161705(n)]` -/
def P11851117830012205062.Spec : Prop :=
  ∀ n, (P11851117830012205062.a n : ℤ) = A061237 (n + 1)

end A061237

/-!
# A061238: Prime numbers == 2 (mod 9).

The programs for A061238, the canonical program `A061238.P9986579764843766772` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061238 has offset 1).

The definition of A061238 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A061238.anchor (n : ℕ) (hn : 1 ≤ n) : A061238 n = (Nat.nth (fun p => p.Prime ∧ p % 9 = 2) (n - 1) : ℤ)` in `Proof.A061.A061238`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061238.P9986579764843766772

`p?[9*n+2]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061238

/-- `p?[9*n+2]` -/
def P9986579764843766772.Spec : Prop :=
  ∀ n, (P9986579764843766772.a n : ℤ) = A061238 (n + 1)

theorem P9986579764843766772.correct : P9986579764843766772.Spec := by
  intro n
  simp only [A061238, Nat.add_sub_cancel]

end A061238

/-! ## A061238.P9418122628157479410

`A158908(n)+a(n-1)` with `a(0)=2`
-/

namespace A061238.P9418122628157479410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A158908 n + a (n - 1)

end

end A061238.P9418122628157479410

namespace A061238

/-- `A158908(n)+a(n-1)` -/
def P9418122628157479410.Spec : Prop :=
  ∀ n, P9418122628157479410.a n = A061238 (n + 1)

end A061238

/-! ## A061238.P13458926067506110845

`∩[A040028(n+1), A076206(n+1)]`
-/

namespace A061238.P13458926067506110845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061238.P13458926067506110845

namespace A061238

/-- `∩[A040028(n+1), A076206(n+1)]` -/
def P13458926067506110845.Spec : Prop :=
  ∀ n, (P13458926067506110845.a n : ℤ) = A061238 (n + 1)

end A061238

/-! ## A061238.P16496971010912570222

`∩[A040049(n+1), A076206(n+1)]`
-/

namespace A061238.P16496971010912570222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061238.P16496971010912570222

namespace A061238

/-- `∩[A040049(n+1), A076206(n+1)]` -/
def P16496971010912570222.Spec : Prop :=
  ∀ n, (P16496971010912570222.a n : ℤ) = A061238 (n + 1)

end A061238

/-! ## A061238.P6377166937860073988

`∩[A040054(n+1), A076206(n+1)]`
-/

namespace A061238.P6377166937860073988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061238.P6377166937860073988

namespace A061238

/-- `∩[A040054(n+1), A076206(n+1)]` -/
def P6377166937860073988.Spec : Prop :=
  ∀ n, (P6377166937860073988.a n : ℤ) = A061238 (n + 1)

end A061238

/-! ## A061238.P14333229561903140396

`∩[A040085(n+1), A076206(n+1)]`
-/

namespace A061238.P14333229561903140396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061238.P14333229561903140396

namespace A061238

/-- `∩[A040085(n+1), A076206(n+1)]` -/
def P14333229561903140396.Spec : Prop :=
  ∀ n, (P14333229561903140396.a n : ℤ) = A061238 (n + 1)

end A061238

/-! ## A061238.P597964596680552693

`∩[A040087(n+1), A076206(n+1)]`
-/

namespace A061238.P597964596680552693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061238.P597964596680552693

namespace A061238

/-- `∩[A040087(n+1), A076206(n+1)]` -/
def P597964596680552693.Spec : Prop :=
  ∀ n, (P597964596680552693.a n : ℤ) = A061238 (n + 1)

end A061238

/-! ## A061238.P14302644624509853662

`∩[A009087(n+1), A076206(n+1)]`
-/

namespace A061238.P14302644624509853662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061238.P14302644624509853662

namespace A061238

/-- `∩[A009087(n+1), A076206(n+1)]` -/
def P14302644624509853662.Spec : Prop :=
  ∀ n, (P14302644624509853662.a n : ℤ) = A061238 (n + 1)

end A061238

/-! ## A061238.P7810156520273433000

`∩[A076206(n+1), A176897(n+1)]`
-/

namespace A061238.P7810156520273433000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061238.P7810156520273433000

namespace A061238

/-- `∩[A076206(n+1), A176897(n+1)]` -/
def P7810156520273433000.Spec : Prop :=
  ∀ n, (P7810156520273433000.a n : ℤ) = A061238 (n + 1)

end A061238

/-! ## A061238.P9022720090742720316

`A000040(eq[2, A038194(n+1)]+1)`
-/

namespace A061238.P9022720090742720316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A061238.P9022720090742720316

namespace A061238

/-- `A000040(eq[2, A038194(n+1)]+1)` -/
def P9022720090742720316.Spec : Prop :=
  ∀ n, P9022720090742720316.a n = A061238 (n + 1)

end A061238

/-! ## A061238.P9967981920995165265

`∩[A000040(n+1), A076206(n+1)]`
-/

namespace A061238.P9967981920995165265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061238.P9967981920995165265

namespace A061238

/-- `∩[A000040(n+1), A076206(n+1)]` -/
def P9967981920995165265.Spec : Prop :=
  ∀ n, (P9967981920995165265.a n : ℤ) = A061238 (n + 1)

end A061238

/-! ## A061238.P8812740701342202964

`∩[A045319(n+1), A076206(n+1)]`
-/

namespace A061238.P8812740701342202964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061238.P8812740701342202964

namespace A061238

/-- `∩[A045319(n+1), A076206(n+1)]` -/
def P8812740701342202964.Spec : Prop :=
  ∀ n, (P8812740701342202964.a n : ℤ) = A061238 (n + 1)

end A061238

/-! ## A061238.P13674401178565945862

`∩[A138837(n+1), A076206(n+1)]`
-/

namespace A061238.P13674401178565945862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061238.P13674401178565945862

namespace A061238

/-- `∩[A138837(n+1), A076206(n+1)]` -/
def P13674401178565945862.Spec : Prop :=
  ∀ n, (P13674401178565945862.a n : ℤ) = A061238 (n + 1)

end A061238

/-! ## A061238.P6268351307726405841

`A000040(eq[2, dr(A000040(n+1))]+1)`
-/

namespace A061238.P6268351307726405841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A061238.P6268351307726405841

namespace A061238

/-- `A000040(eq[2, dr(A000040(n+1))]+1)` -/
def P6268351307726405841.Spec : Prop :=
  ∀ n, P6268351307726405841.a n = A061238 (n + 1)

end A061238

/-! ## A061238.P13035555812168983122

`∩[A053813(n+1), A076206(n+1)]`
-/

namespace A061238.P13035555812168983122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061238.P13035555812168983122

namespace A061238

/-- `∩[A053813(n+1), A076206(n+1)]` -/
def P13035555812168983122.Spec : Prop :=
  ∀ n, (P13035555812168983122.a n : ℤ) = A061238 (n + 1)

end A061238

/-! ## A061238.P5811085808103156080

`∩[A076206(n+1), A186285(n+1)]`
-/

namespace A061238.P5811085808103156080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061238.P5811085808103156080

namespace A061238

/-- `∩[A076206(n+1), A186285(n+1)]` -/
def P5811085808103156080.Spec : Prop :=
  ∀ n, (P5811085808103156080.a n : ℤ) = A061238 (n + 1)

end A061238

/-! ## A061238.P17609210730391909656

`∩[A076206(n+1), A189710(n+1)]`
-/

namespace A061238.P17609210730391909656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061238.P17609210730391909656

namespace A061238

/-- `∩[A076206(n+1), A189710(n+1)]` -/
def P17609210730391909656.Spec : Prop :=
  ∀ n, (P17609210730391909656.a n : ℤ) = A061238 (n + 1)

end A061238

/-! ## A061238.P15701297811286181861

`∩[A076206(n+1), A268391(n+1)]`
-/

namespace A061238.P15701297811286181861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061238.P15701297811286181861

namespace A061238

/-- `∩[A076206(n+1), A268391(n+1)]` -/
def P15701297811286181861.Spec : Prop :=
  ∀ n, (P15701297811286181861.a n : ℤ) = A061238 (n + 1)

end A061238

/-!
# A061239: Prime numbers == 4 (mod 9).

The programs for A061239, the canonical program `A061239.P10670666317298072189` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061239 has offset 1).

The definition of A061239 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A061239.anchor (n : ℕ) (hn : 1 ≤ n) : A061239 n = (Nat.nth (fun p => p.Prime ∧ p % 9 = 4) (n - 1) : ℤ)` in `Proof.A061.A061239`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061239.P10670666317298072189

`p?[9*n+4]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061239

/-- `p?[9*n+4]` -/
def P10670666317298072189.Spec : Prop :=
  ∀ n, (P10670666317298072189.a n : ℤ) = A061239 (n + 1)

theorem P10670666317298072189.correct : P10670666317298072189.Spec := by
  intro n
  simp only [A061239, Nat.add_sub_cancel]

end A061239

/-! ## A061239.P5499569538284514962

`or(1, p?[a(n-1)+9])` with `a(0)=4`
-/

namespace A061239.P5499569538284514962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A061239.P5499569538284514962

namespace A061239

/-- `or(1, p?[a(n-1)+9])` -/
def P5499569538284514962.Spec : Prop :=
  ∀ n, (P5499569538284514962.a n : ℤ) = A061239 (n + 1)

end A061239

/-! ## A061239.P16066217218052313053

`∩[A129806(n+1), A002476(n+1)]`
-/

namespace A061239.P16066217218052313053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061239.P16066217218052313053

namespace A061239

/-- `∩[A129806(n+1), A002476(n+1)]` -/
def P16066217218052313053.Spec : Prop :=
  ∀ n, (P16066217218052313053.a n : ℤ) = A061239 (n + 1)

end A061239

/-! ## A061239.P3123355447141425028

`∩[A007645(n+1), A129806(n+1)]`
-/

namespace A061239.P3123355447141425028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061239.P3123355447141425028

namespace A061239

/-- `∩[A007645(n+1), A129806(n+1)]` -/
def P3123355447141425028.Spec : Prop :=
  ∀ n, (P3123355447141425028.a n : ℤ) = A061239 (n + 1)

end A061239

/-! ## A061239.P10431441892940886366

`∩[A301622(n+1), A378441(n+1)]`
-/

namespace A061239.P10431441892940886366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061239.P10431441892940886366

namespace A061239

/-- `∩[A301622(n+1), A378441(n+1)]` -/
def P10431441892940886366.Spec : Prop :=
  ∀ n, (P10431441892940886366.a n : ℤ) = A061239 (n + 1)

end A061239

/-! ## A061239.P9479162219665953595

`∩[A055664(n+1), A079132(n+1)]`
-/

namespace A061239.P9479162219665953595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061239.P9479162219665953595

namespace A061239

/-- `∩[A055664(n+1), A079132(n+1)]` -/
def P9479162219665953595.Spec : Prop :=
  ∀ n, (P9479162219665953595.a n : ℤ) = A061239 (n + 1)

end A061239

/-! ## A061239.P13604433683340241076

`∩[A055664(n+1), A129806(n+1)]`
-/

namespace A061239.P13604433683340241076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061239.P13604433683340241076

namespace A061239

/-- `∩[A055664(n+1), A129806(n+1)]` -/
def P13604433683340241076.Spec : Prop :=
  ∀ n, (P13604433683340241076.a n : ℤ) = A061239 (n + 1)

end A061239

/-! ## A061239.P3238617824694872298

`∩[A133290(n+1), A129806(n+1)]`
-/

namespace A061239.P3238617824694872298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061239.P3238617824694872298

namespace A061239

/-- `∩[A133290(n+1), A129806(n+1)]` -/
def P3238617824694872298.Spec : Prop :=
  ∀ n, (P3238617824694872298.a n : ℤ) = A061239 (n + 1)

end A061239

/-! ## A061239.P8153056923309004300

`∩[A063305(n+2), A378441(n+1)]`
-/

namespace A061239.P8153056923309004300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061239.P8153056923309004300

namespace A061239

/-- `∩[A063305(n+2), A378441(n+1)]` -/
def P8153056923309004300.Spec : Prop :=
  ∀ n, (P8153056923309004300.a n : ℤ) = A061239 (n + 1)

end A061239

/-! ## A061239.P16688971044567371837

`∩[A301622(n+1), A380468(n+1)]`
-/

namespace A061239.P16688971044567371837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061239.P16688971044567371837

namespace A061239

/-- `∩[A301622(n+1), A380468(n+1)]` -/
def P16688971044567371837.Spec : Prop :=
  ∀ n, (P16688971044567371837.a n : ℤ) = A061239 (n + 1)

end A061239

/-! ## A061239.P390801456613289132

`∩[A166849(n+1), A129806(n+1)]`
-/

namespace A061239.P390801456613289132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061239.P390801456613289132

namespace A061239

/-- `∩[A166849(n+1), A129806(n+1)]` -/
def P390801456613289132.Spec : Prop :=
  ∀ n, (P390801456613289132.a n : ℤ) = A061239 (n + 1)

end A061239

/-! ## A061239.P11206931420442241165

`filter[A079132(n+1), A070563(#)]`
-/

namespace A061239.P11206931420442241165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A061239.P11206931420442241165

namespace A061239

/-- `filter[A079132(n+1), A070563(#)]` -/
def P11206931420442241165.Spec : Prop :=
  ∀ n, P11206931420442241165.a n = A061239 (n + 1)

end A061239

/-! ## A061239.P943766237271166957

`filter[A129806(n+1), A070563(#)]`
-/

namespace A061239.P943766237271166957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A061239.P943766237271166957

namespace A061239

/-- `filter[A129806(n+1), A070563(#)]` -/
def P943766237271166957.Spec : Prop :=
  ∀ n, P943766237271166957.a n = A061239 (n + 1)

end A061239

/-! ## A061239.P3814297730970223769

`∩[A165671(n+1), A301622(n+1)]`
-/

namespace A061239.P3814297730970223769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061239.P3814297730970223769

namespace A061239

/-- `∩[A165671(n+1), A301622(n+1)]` -/
def P3814297730970223769.Spec : Prop :=
  ∀ n, (P3814297730970223769.a n : ℤ) = A061239 (n + 1)

end A061239

/-! ## A061239.P5845700922382750096

`∩[A165671(n+1), A063305(n+2)]`
-/

namespace A061239.P5845700922382750096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061239.P5845700922382750096

namespace A061239

/-- `∩[A165671(n+1), A063305(n+2)]` -/
def P5845700922382750096.Spec : Prop :=
  ∀ n, (P5845700922382750096.a n : ℤ) = A061239 (n + 1)

end A061239

/-! ## A061239.P8459083967214174674

`∩[A000040(n+1), A301622(n+1)]`
-/

namespace A061239.P8459083967214174674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061239.P8459083967214174674

namespace A061239

/-- `∩[A000040(n+1), A301622(n+1)]` -/
def P8459083967214174674.Spec : Prop :=
  ∀ n, (P8459083967214174674.a n : ℤ) = A061239 (n + 1)

end A061239

/-! ## A061239.P12325639248878919401

`∩[A004139(n+1), A301622(n+1)]`
-/

namespace A061239.P12325639248878919401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061239.P12325639248878919401

namespace A061239

/-- `∩[A004139(n+1), A301622(n+1)]` -/
def P12325639248878919401.Spec : Prop :=
  ∀ n, (P12325639248878919401.a n : ℤ) = A061239 (n + 1)

end A061239

/-!
# A061240: Prime numbers == 5 (mod 9).

The programs for A061240, the canonical program `A061240.P124253332193619625` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061240 has offset 1).

The definition of A061240 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A061240.anchor (n : ℕ) (hn : 1 ≤ n) : A061240 n = (Nat.nth (fun p => p.Prime ∧ p % 9 = 5) (n - 1) : ℤ)` in `Proof.A061.A061240`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061240.P124253332193619625

`p?[9*n-4]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061240

/-- `p?[9*n-4]` -/
def P124253332193619625.Spec : Prop :=
  ∀ n, P124253332193619625.a n = A061240 (n + 1)

theorem P124253332193619625.correct : P124253332193619625.Spec := by
  intro n
  simp only [A061240, Nat.add_sub_cancel]

end A061240

/-! ## A061240.P15628389150599953152

`or(1, p?[a(n-1)+9])` with `a(0)=5`
-/

namespace A061240.P15628389150599953152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A061240.P15628389150599953152

namespace A061240

/-- `or(1, p?[a(n-1)+9])` -/
def P15628389150599953152.Spec : Prop :=
  ∀ n, (P15628389150599953152.a n : ℤ) = A061240 (n + 1)

end A061240

/-! ## A061240.P18316200357313675659

`A158910(n)+a(n-1)` with `a(0)=5`
-/

namespace A061240.P18316200357313675659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A158910 n + a (n - 1)

end

end A061240.P18316200357313675659

namespace A061240

/-- `A158910(n)+a(n-1)` -/
def P18316200357313675659.Spec : Prop :=
  ∀ n, P18316200357313675659.a n = A061240 (n + 1)

end A061240

/-! ## A061240.P17107447207452233486

`record[A079131(n+2)^val(A079131(n+2)+1, 3)]`
-/

namespace A061240.P17107447207452233486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 2) ^ SequenceMachineLib.valuation (A079131 (n + 2) + 1).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061240.P17107447207452233486

namespace A061240

/-- `record[A079131(n+2)^val(A079131(n+2)+1, 3)]` -/
def P17107447207452233486.Spec : Prop :=
  ∀ n, P17107447207452233486.a n = A061240 (n + 1)

end A061240

/-! ## A061240.P14943892101146160372

`∩[A007528(n+1), A242215(n)]`
-/

namespace A061240.P14943892101146160372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061240.P14943892101146160372

namespace A061240

/-- `∩[A007528(n+1), A242215(n)]` -/
def P14943892101146160372.Spec : Prop :=
  ∀ n, (P14943892101146160372.a n : ℤ) = A061240 (n + 1)

end A061240

/-! ## A061240.P1374155401643979749

`∩[A040083(n+1), A242215(n)]`
-/

namespace A061240.P1374155401643979749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061240.P1374155401643979749

namespace A061240

/-- `∩[A040083(n+1), A242215(n)]` -/
def P1374155401643979749.Spec : Prop :=
  ∀ n, (P1374155401643979749.a n : ℤ) = A061240 (n + 1)

end A061240

/-! ## A061240.P10812084241327632347

`∩[A040028(n+1), A242215(n)]`
-/

namespace A061240.P10812084241327632347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061240.P10812084241327632347

namespace A061240

/-- `∩[A040028(n+1), A242215(n)]` -/
def P10812084241327632347.Spec : Prop :=
  ∀ n, (P10812084241327632347.a n : ℤ) = A061240 (n + 1)

end A061240

/-! ## A061240.P12841076707042298748

`∩[A040054(n+1), A242215(n)]`
-/

namespace A061240.P12841076707042298748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061240.P12841076707042298748

namespace A061240

/-- `∩[A040054(n+1), A242215(n)]` -/
def P12841076707042298748.Spec : Prop :=
  ∀ n, (P12841076707042298748.a n : ℤ) = A061240 (n + 1)

end A061240

/-! ## A061240.P5315827050836887485

`record[p?[A014682(3*n)]]`
-/

namespace A061240.P5315827050836887485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061240.P5315827050836887485

namespace A061240

/-- `record[p?[A014682(3*n)]]` -/
def P5315827050836887485.Spec : Prop :=
  ∀ n, P5315827050836887485.a n = A061240 (n + 1)

end A061240

/-! ## A061240.P3343108772632086690

`∩[A009087(n+1), A242215(n)]`
-/

namespace A061240.P3343108772632086690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061240.P3343108772632086690

namespace A061240

/-- `∩[A009087(n+1), A242215(n)]` -/
def P3343108772632086690.Spec : Prop :=
  ∀ n, (P3343108772632086690.a n : ℤ) = A061240 (n + 1)

end A061240

/-! ## A061240.P15456541407448324403

`∩[A245072(n+1), A242215(n)]`
-/

namespace A061240.P15456541407448324403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061240.P15456541407448324403

namespace A061240

/-- `∩[A245072(n+1), A242215(n)]` -/
def P15456541407448324403.Spec : Prop :=
  ∀ n, (P15456541407448324403.a n : ℤ) = A061240 (n + 1)

end A061240

/-! ## A061240.P18356795581234330298

`∩[A165671(n+1), A242215(n)]`
-/

namespace A061240.P18356795581234330298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061240.P18356795581234330298

namespace A061240

/-- `∩[A165671(n+1), A242215(n)]` -/
def P18356795581234330298.Spec : Prop :=
  ∀ n, (P18356795581234330298.a n : ℤ) = A061240 (n + 1)

end A061240

/-! ## A061240.P738948354354311965

`∩[A096264(n+1), A242215(n)]`
-/

namespace A061240.P738948354354311965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061240.P738948354354311965

namespace A061240

/-- `∩[A096264(n+1), A242215(n)]` -/
def P738948354354311965.Spec : Prop :=
  ∀ n, (P738948354354311965.a n : ℤ) = A061240 (n + 1)

end A061240

/-! ## A061240.P10741300728792275967

`∩[A070957(n+1), A242215(n)]`
-/

namespace A061240.P10741300728792275967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061240.P10741300728792275967

namespace A061240

/-- `∩[A070957(n+1), A242215(n)]` -/
def P10741300728792275967.Spec : Prop :=
  ∀ n, (P10741300728792275967.a n : ℤ) = A061240 (n + 1)

end A061240

/-! ## A061240.P8499708000195513846

`∩[A220570(n+1), A242215(n)]`
-/

namespace A061240.P8499708000195513846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061240.P8499708000195513846

namespace A061240

/-- `∩[A220570(n+1), A242215(n)]` -/
def P8499708000195513846.Spec : Prop :=
  ∀ n, (P8499708000195513846.a n : ℤ) = A061240 (n + 1)

end A061240

/-! ## A061240.P8085112038595050630

`∩[A261123(n+1), A242215(n)]`
-/

namespace A061240.P8085112038595050630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061240.P8085112038595050630

namespace A061240

/-- `∩[A261123(n+1), A242215(n)]` -/
def P8085112038595050630.Spec : Prop :=
  ∀ n, (P8085112038595050630.a n : ℤ) = A061240 (n + 1)

end A061240

/-! ## A061240.P2862993582745587960

`A000040(A163595(n+1))`
-/

namespace A061240.P2862993582745587960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A163595 (n + 1)).toNat

end

end A061240.P2862993582745587960

namespace A061240

/-- `A000040(A163595(n+1))` -/
def P2862993582745587960.Spec : Prop :=
  ∀ n, P2862993582745587960.a n = A061240 (n + 1)

end A061240

/-! ## A061240.P353767616163535469

`∩[A000040(n+1), A242215(n)]`
-/

namespace A061240.P353767616163535469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061240.P353767616163535469

namespace A061240

/-- `∩[A000040(n+1), A242215(n)]` -/
def P353767616163535469.Spec : Prop :=
  ∀ n, (P353767616163535469.a n : ℤ) = A061240 (n + 1)

end A061240

/-!
# A061241: Prime numbers == 7 (mod 9).

The programs for A061241, the canonical program `A061241.P2300920093397169680` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061241 has offset 1).

The definition of A061241 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A061241.anchor (n : ℕ) (hn : 1 ≤ n) : A061241 n = (Nat.nth (fun p => p.Prime ∧ p % 9 = 7) (n - 1) : ℤ)` in `Proof.A061.A061241`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061241.P2300920093397169680

`p?[9*n-2]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061241

/-- `p?[9*n-2]` -/
def P2300920093397169680.Spec : Prop :=
  ∀ n, P2300920093397169680.a n = A061241 (n + 1)

theorem P2300920093397169680.correct : P2300920093397169680.Spec := by
  intro n
  simp only [A061241, Nat.add_sub_cancel]

end A061241

/-! ## A061241.P3532821531216951549

`or(1, p?[9*n+7])`
-/

namespace A061241.P3532821531216951549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A061241.P3532821531216951549

namespace A061241

/-- `or(1, p?[9*n+7])` -/
def P3532821531216951549.Spec : Prop :=
  ∀ n, (P3532821531216951549.a n : ℤ) = A061241 (n + 1)

end A061241

/-! ## A061241.P3081269766069974520

`∩[A007645(n+1), A129807(n+1)]`
-/

namespace A061241.P3081269766069974520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061241.P3081269766069974520

namespace A061241

/-- `∩[A007645(n+1), A129807(n+1)]` -/
def P3081269766069974520.Spec : Prop :=
  ∀ n, (P3081269766069974520.a n : ℤ) = A061241 (n + 1)

end A061241

/-! ## A061241.P6893606538545942925

`∩[A123365(n+1), A129807(n+1)]`
-/

namespace A061241.P6893606538545942925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061241.P6893606538545942925

namespace A061241

/-- `∩[A123365(n+1), A129807(n+1)]` -/
def P6893606538545942925.Spec : Prop :=
  ∀ n, (P6893606538545942925.a n : ℤ) = A061241 (n + 1)

end A061241

/-! ## A061241.P7015144217519479752

`∩[A079131(n+1), A129807(n+1)]`
-/

namespace A061241.P7015144217519479752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061241.P7015144217519479752

namespace A061241

/-- `∩[A079131(n+1), A129807(n+1)]` -/
def P7015144217519479752.Spec : Prop :=
  ∀ n, (P7015144217519479752.a n : ℤ) = A061241 (n + 1)

end A061241

/-! ## A061241.P16293395714563745807

`∩[A079131(n+1), A301628(n+1)]`
-/

namespace A061241.P16293395714563745807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061241.P16293395714563745807

namespace A061241

/-- `∩[A079131(n+1), A301628(n+1)]` -/
def P16293395714563745807.Spec : Prop :=
  ∀ n, (P16293395714563745807.a n : ℤ) = A061241 (n + 1)

end A061241

/-! ## A061241.P17226649435155368518

`∩[A055664(n+1), A129807(n+1)]`
-/

namespace A061241.P17226649435155368518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061241.P17226649435155368518

namespace A061241

/-- `∩[A055664(n+1), A129807(n+1)]` -/
def P17226649435155368518.Spec : Prop :=
  ∀ n, (P17226649435155368518.a n : ℤ) = A061241 (n + 1)

end A061241

/-! ## A061241.P10989720311264716093

`∩[A133290(n+1), A129807(n+1)]`
-/

namespace A061241.P10989720311264716093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061241.P10989720311264716093

namespace A061241

/-- `∩[A133290(n+1), A129807(n+1)]` -/
def P10989720311264716093.Spec : Prop :=
  ∀ n, (P10989720311264716093.a n : ℤ) = A061241 (n + 1)

end A061241

/-! ## A061241.P6547354916288461689

`∩[A301628(n+1), A380468(n+1)]`
-/

namespace A061241.P6547354916288461689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061241.P6547354916288461689

namespace A061241

/-- `∩[A301628(n+1), A380468(n+1)]` -/
def P6547354916288461689.Spec : Prop :=
  ∀ n, (P6547354916288461689.a n : ℤ) = A061241 (n + 1)

end A061241

/-! ## A061241.P11991387465150083071

`∩[A040116(n+1), A301628(n+1)]`
-/

namespace A061241.P11991387465150083071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061241.P11991387465150083071

namespace A061241

/-- `∩[A040116(n+1), A301628(n+1)]` -/
def P11991387465150083071.Spec : Prop :=
  ∀ n, (P11991387465150083071.a n : ℤ) = A061241 (n + 1)

end A061241

/-! ## A061241.P8178673558856726673

`filter[A078403(n+1), A070563(#)]`
-/

namespace A061241.P8178673558856726673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A061241.P8178673558856726673

namespace A061241

/-- `filter[A078403(n+1), A070563(#)]` -/
def P8178673558856726673.Spec : Prop :=
  ∀ n, P8178673558856726673.a n = A061241 (n + 1)

end A061241

/-! ## A061241.P15153847961894053188

`filter[A129807(n+1), A070563(#)]`
-/

namespace A061241.P15153847961894053188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A061241.P15153847961894053188

namespace A061241

/-- `filter[A129807(n+1), A070563(#)]` -/
def P15153847961894053188.Spec : Prop :=
  ∀ n, P15153847961894053188.a n = A061241 (n + 1)

end A061241

/-! ## A061241.P14966406358558146670

`∩[A167464(n+1), A301628(n+1)]`
-/

namespace A061241.P14966406358558146670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061241.P14966406358558146670

namespace A061241

/-- `∩[A167464(n+1), A301628(n+1)]` -/
def P14966406358558146670.Spec : Prop :=
  ∀ n, (P14966406358558146670.a n : ℤ) = A061241 (n + 1)

end A061241

/-! ## A061241.P10779986404291520857

`∩[A129807(n+1), A004611(n+1)]`
-/

namespace A061241.P10779986404291520857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061241.P10779986404291520857

namespace A061241

/-- `∩[A129807(n+1), A004611(n+1)]` -/
def P10779986404291520857.Spec : Prop :=
  ∀ n, (P10779986404291520857.a n : ℤ) = A061241 (n + 1)

end A061241

/-! ## A061241.P3721732218748446139

`∩[A129904(n+1), A129807(n+1)]`
-/

namespace A061241.P3721732218748446139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061241.P3721732218748446139

namespace A061241

/-- `∩[A129904(n+1), A129807(n+1)]` -/
def P3721732218748446139.Spec : Prop :=
  ∀ n, (P3721732218748446139.a n : ℤ) = A061241 (n + 1)

end A061241

/-! ## A061241.P2406962408346327244

`∩[A257974(n+1), A301628(n+1)]`
-/

namespace A061241.P2406962408346327244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061241.P2406962408346327244

namespace A061241

/-- `∩[A257974(n+1), A301628(n+1)]` -/
def P2406962408346327244.Spec : Prop :=
  ∀ n, (P2406962408346327244.a n : ℤ) = A061241 (n + 1)

end A061241

/-! ## A061241.P11715704384573337294

`∩[A260682(n+1), A129807(n+1)]`
-/

namespace A061241.P11715704384573337294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061241.P11715704384573337294

namespace A061241

/-- `∩[A260682(n+1), A129807(n+1)]` -/
def P11715704384573337294.Spec : Prop :=
  ∀ n, (P11715704384573337294.a n : ℤ) = A061241 (n + 1)

end A061241

/-!
# A061242: Primes of the form 9*k - 1.

The programs for A061242, the canonical program `A061242.P14932047030331021065` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061242 has offset 1).

The definition of A061242 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A061242.anchor (n : ℕ) (hn : 1 ≤ n) : A061242 n = (Nat.nth (fun p => p.Prime ∧ p % 9 = 8) (n - 1) : ℤ)` in `Proof.A061.A061242`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061242.P14932047030331021065

`p?[9*n-1]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061242

/-- `p?[9*n-1]` -/
def P14932047030331021065.Spec : Prop :=
  ∀ n, P14932047030331021065.a n = A061242 (n + 1)

theorem P14932047030331021065.correct : P14932047030331021065.Spec := by
  intro n
  simp only [A061242, Nat.add_sub_cancel]

end A061242

/-! ## A061242.P2020272753019611237

`or(1, p?[a(n-1)+9])` with `a(0)=8`
-/

namespace A061242.P2020272753019611237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A061242.P2020272753019611237

namespace A061242

/-- `or(1, p?[a(n-1)+9])` -/
def P2020272753019611237.Spec : Prop :=
  ∀ n, (P2020272753019611237.a n : ℤ) = A061242 (n + 1)

end A061242

/-! ## A061242.P13558554185041301139

`∩[A007528(n+1), A129805(n+1)]`
-/

namespace A061242.P13558554185041301139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061242.P13558554185041301139

namespace A061242

/-- `∩[A007528(n+1), A129805(n+1)]` -/
def P13558554185041301139.Spec : Prop :=
  ∀ n, (P13558554185041301139.a n : ℤ) = A061242 (n + 1)

end A061242

/-! ## A061242.P1249776025589348704

`A239129(A138918(n+1))`
-/

namespace A061242.P1249776025589348704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (A138918 (n + 1)).toNat

end

end A061242.P1249776025589348704

namespace A061242

/-- `A239129(A138918(n+1))` -/
def P1249776025589348704.Spec : Prop :=
  ∀ n, P1249776025589348704.a n = A061242 (n + 1)

end A061242

/-! ## A061242.P8902991333957030106

`∩[A239129(n+1), A003627(n+1)]`
-/

namespace A061242.P8902991333957030106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061242.P8902991333957030106

namespace A061242

/-- `∩[A239129(n+1), A003627(n+1)]` -/
def P8902991333957030106.Spec : Prop :=
  ∀ n, (P8902991333957030106.a n : ℤ) = A061242 (n + 1)

end A061242

/-! ## A061242.P442923441925017880

`∩[A239129(n+1), A380468(n+1)]`
-/

namespace A061242.P442923441925017880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061242.P442923441925017880

namespace A061242

/-- `∩[A239129(n+1), A380468(n+1)]` -/
def P442923441925017880.Spec : Prop :=
  ∀ n, (P442923441925017880.a n : ℤ) = A061242 (n + 1)

end A061242

/-! ## A061242.P8756414527141044792

`∩[A295869(n+1), A380468(n+1)]`
-/

namespace A061242.P8756414527141044792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061242.P8756414527141044792

namespace A061242

/-- `∩[A295869(n+1), A380468(n+1)]` -/
def P8756414527141044792.Spec : Prop :=
  ∀ n, (P8756414527141044792.a n : ℤ) = A061242 (n + 1)

end A061242

/-! ## A061242.P11990867330108162688

`∩[A040083(n+1), A239129(n+1)]`
-/

namespace A061242.P11990867330108162688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061242.P11990867330108162688

namespace A061242

/-- `∩[A040083(n+1), A239129(n+1)]` -/
def P11990867330108162688.Spec : Prop :=
  ∀ n, (P11990867330108162688.a n : ℤ) = A061242 (n + 1)

end A061242

/-! ## A061242.P15288594477978597522

`∩[A040028(n+1), A239129(n+1)]`
-/

namespace A061242.P15288594477978597522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061242.P15288594477978597522

namespace A061242

/-- `∩[A040028(n+1), A239129(n+1)]` -/
def P15288594477978597522.Spec : Prop :=
  ∀ n, (P15288594477978597522.a n : ℤ) = A061242 (n + 1)

end A061242

/-! ## A061242.P10699294005312099897

`∩[A040054(n+1), A239129(n+1)]`
-/

namespace A061242.P10699294005312099897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061242.P10699294005312099897

namespace A061242

/-- `∩[A040054(n+1), A239129(n+1)]` -/
def P10699294005312099897.Spec : Prop :=
  ∀ n, (P10699294005312099897.a n : ℤ) = A061242 (n + 1)

end A061242

/-! ## A061242.P224303327048774697

`∩[A040085(n+1), A239129(n+1)]`
-/

namespace A061242.P224303327048774697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061242.P224303327048774697

namespace A061242

/-- `∩[A040085(n+1), A239129(n+1)]` -/
def P224303327048774697.Spec : Prop :=
  ∀ n, (P224303327048774697.a n : ℤ) = A061242 (n + 1)

end A061242

/-! ## A061242.P1550759569656275783

`∩[A040065(n+1), A239129(n+1)]`
-/

namespace A061242.P1550759569656275783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061242.P1550759569656275783

namespace A061242

/-- `∩[A040065(n+1), A239129(n+1)]` -/
def P1550759569656275783.Spec : Prop :=
  ∀ n, (P1550759569656275783.a n : ℤ) = A061242 (n + 1)

end A061242

/-! ## A061242.P14283034791099016921

`record[p?[A014682(3*n+2)]]`
-/

namespace A061242.P14283034791099016921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061242.P14283034791099016921

namespace A061242

/-- `record[p?[A014682(3*n+2)]]` -/
def P14283034791099016921.Spec : Prop :=
  ∀ n, P14283034791099016921.a n = A061242 (n + 1)

end A061242

/-! ## A061242.P12105868198246956625

`∩[A066501(n+1), A129805(n+1)]`
-/

namespace A061242.P12105868198246956625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061242.P12105868198246956625

namespace A061242

/-- `∩[A066501(n+1), A129805(n+1)]` -/
def P12105868198246956625.Spec : Prop :=
  ∀ n, (P12105868198246956625.a n : ℤ) = A061242 (n + 1)

end A061242

/-! ## A061242.P18387022328357998233

`∩[A009087(n+1), A239129(n+1)]`
-/

namespace A061242.P18387022328357998233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061242.P18387022328357998233

namespace A061242

/-- `∩[A009087(n+1), A239129(n+1)]` -/
def P18387022328357998233.Spec : Prop :=
  ∀ n, (P18387022328357998233.a n : ℤ) = A061242 (n + 1)

end A061242

/-! ## A061242.P13009050194905083270

`∩[A009087(n+1), A295869(n+1)]`
-/

namespace A061242.P13009050194905083270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061242.P13009050194905083270

namespace A061242

/-- `∩[A009087(n+1), A295869(n+1)]` -/
def P13009050194905083270.Spec : Prop :=
  ∀ n, (P13009050194905083270.a n : ℤ) = A061242 (n + 1)

end A061242

/-!
# A061243: a(n) = n+r where r is the smallest number such that n divides (n+1)(n+2)(n+3)...(n+r).

The programs for A061243, there is no canonical definition to state claims against.
-/

/-! ## A061243.P11253156582987090323

`n+1+A002034(n+1)`
-/

namespace A061243.P11253156582987090323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A002034 (n + 1)

end

end A061243.P11253156582987090323

/-! ## A061243.P7393423627671477245

`A122416(n+1)+n`
-/

namespace A061243.P7393423627671477245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122416 (n + 1) + (n : ℤ)

end

end A061243.P7393423627671477245

/-! ## A061243.P14125941721503021312

`A029717(n)+a(n-1)+1` with `a(0)=2`
-/

namespace A061243.P14125941721503021312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A029717 n + a (n - 1) + 1

end

end A061243.P14125941721503021312

/-! ## A061243.P12721921215522586612

`A002034(Δ[n²]-n)-xor(n, -1)`
-/

namespace A061243.P12721921215522586612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - Int.xor (n : ℤ) (-1)

end

end A061243.P12721921215522586612

/-! ## A061243.P14850974150491478940

`∑[A029717(A028310(n))+1]`
-/

namespace A061243.P14850974150491478940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029717 (A028310 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061243.P14850974150491478940

/-! ## A061243.P3936650531322918855

`A020725(A002034(n+1))+n`
-/

namespace A061243.P3936650531322918855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A002034 (n + 1)).toNat + (n : ℤ)

end

end A061243.P3936650531322918855

/-! ## A061243.P1345251929827623200

`A064760(n+1)+A028310(n)+1`
-/

namespace A061243.P1345251929827623200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064760 (n + 1) + (A028310 n + 1)

end

end A061243.P1345251929827623200

/-! ## A061243.P7243475169549284214

`A070229(n+1)+A057108(n+1)`
-/

namespace A061243.P7243475169549284214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (n + 1) + A057108 (n + 1)

end

end A061243.P7243475169549284214

/-! ## A061243.P11997947012097636482

`A064760(n+1)+A054977(n)+n`
-/

namespace A061243.P11997947012097636482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064760 (n + 1) + (A054977 n + (n : ℤ))

end

end A061243.P11997947012097636482

/-! ## A061243.P2901922603713588002

`A345931(n+1)*A345932(n+1)+1+n`
-/

namespace A061243.P2901922603713588002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 (n + 1) * A345932 (n + 1) + 1 + (n : ℤ)

end

end A061243.P2901922603713588002

/-! ## A061243.P13188045431944569930

`A028310(2*n)+2-A072480(n+1)`
-/

namespace A061243.P13188045431944569930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n) + (2 - A072480 (n + 1))

end

end A061243.P13188045431944569930

/-! ## A061243.P13583709562174492057

`A253145(2*n+1)-(A253145(2*n)+A072480(n+1))`
-/

namespace A061243.P13583709562174492057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (2 * n + 1) - (A253145 (2 * n) + A072480 (n + 1))

end

end A061243.P13583709562174492057

/-! ## A061243.P2481702399948526458

`A081472(n+1)-A057110(n+1)`
-/

namespace A061243.P2481702399948526458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081472 (n + 1) - A057110 (n + 1)

end

end A061243.P2481702399948526458

/-!
# A061244: Prime numbers with odd digits in ascending order.

The programs for A061244, there is no canonical definition to state claims against.
-/

/-! ## A061244.P8850631439587843565

`∩[A028864(n+1), A030096(n+1)]`
-/

namespace A061244.P8850631439587843565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061244.P8850631439587843565

/-! ## A061244.P9710252141164867147

`∩[A030096(n+1), A032524(n+1)]`
-/

namespace A061244.P9710252141164867147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061244.P9710252141164867147

/-! ## A061244.P15810596885623560783

`∩[A028864(n+1), A066640(n+1)]`
-/

namespace A061244.P15810596885623560783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061244.P15810596885623560783

/-! ## A061244.P15565878338197137266

`∩[A030096(n+1), A190221(n+1)]`
-/

namespace A061244.P15565878338197137266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061244.P15565878338197137266

/-! ## A061244.P15330592966431839852

`∩[A009994(n+1), A030096(n+1)]`
-/

namespace A061244.P15330592966431839852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061244.P15330592966431839852

/-! ## A061244.P12852635446466810805

`∩[A009994(n+1), A155055(n+1)]`
-/

namespace A061244.P12852635446466810805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061244.P12852635446466810805

/-! ## A061244.P7565249369371670916

`∩[A028864(n+1), A155055(n+1)]`
-/

namespace A061244.P7565249369371670916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061244.P7565249369371670916

/-! ## A061244.P11257907819519966609

`∩[A032524(n+1), A155055(n+1)]`
-/

namespace A061244.P11257907819519966609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061244.P11257907819519966609

/-! ## A061244.P12641458115176038833

`∩[A155055(n+1), A190221(n+1)]`
-/

namespace A061244.P12641458115176038833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061244.P12641458115176038833

/-! ## A061244.P3088497877658027913

`∩[A030096(n+1), A381509(n+1)]`
-/

namespace A061244.P3088497877658027913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061244.P3088497877658027913

/-! ## A061244.P1531235261147694365

`∩[A155055(n+1), A381509(n+1)]`
-/

namespace A061244.P1531235261147694365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061244.P1531235261147694365

/-! ## A061244.P17061896473766329541

`∩[A030096(n+1), A179239(n)]`
-/

namespace A061244.P17061896473766329541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061244.P17061896473766329541

/-! ## A061244.P3222726266451289954

`∩[A028864(n+1), A062086(n+1)]`
-/

namespace A061244.P3222726266451289954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061244.P3222726266451289954

/-! ## A061244.P18217813559975583092

`∩[A014261(n+1), A028864(n+1)]`
-/

namespace A061244.P18217813559975583092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061244.P18217813559975583092

/-!
# A061245: Prime numbers with odd digits in descending order.

The programs for A061245, the canonical program `A061245.P11850383648329025270` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061245 has offset 1).

The definition of A061245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061245.P11850383648329025270

`∩[A009996(n+1), A030096(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A061245

/-- `∩[A009996(n+1), A030096(n+1)]` -/
def P11850383648329025270.Spec : Prop :=
  ∀ n, (P11850383648329025270.a n : ℤ) = A061245 (n + 1)

theorem P11850383648329025270.correct : P11850383648329025270.Spec := by
  intro n
  simp only [A061245, Nat.add_sub_cancel]

end A061245

/-! ## A061245.P16972087575230088239

`∩[A028867(n+1), A030096(n+1)]`
-/

namespace A061245.P16972087575230088239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061245.P16972087575230088239

namespace A061245

/-- `∩[A028867(n+1), A030096(n+1)]` -/
def P16972087575230088239.Spec : Prop :=
  ∀ n, (P16972087575230088239.a n : ℤ) = A061245 (n + 1)

end A061245

/-! ## A061245.P12974486930731836438

`∩[A028867(n+1), A066640(n+1)]`
-/

namespace A061245.P12974486930731836438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061245.P12974486930731836438

namespace A061245

/-- `∩[A028867(n+1), A066640(n+1)]` -/
def P12974486930731836438.Spec : Prop :=
  ∀ n, (P12974486930731836438.a n : ℤ) = A061245 (n + 1)

end A061245

/-! ## A061245.P9050325683729324295

`∩[A030096(n+1), A028912(n)]`
-/

namespace A061245.P9050325683729324295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028912 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061245.P9050325683729324295

namespace A061245

/-- `∩[A030096(n+1), A028912(n)]` -/
def P9050325683729324295.Spec : Prop :=
  ∀ n, (P9050325683729324295.a n : ℤ) = A061245 (n + 1)

end A061245

/-! ## A061245.P7238943403096061864

`∩[A155055(n+1), A028912(n)]`
-/

namespace A061245.P7238943403096061864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028912 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061245.P7238943403096061864

namespace A061245

/-- `∩[A155055(n+1), A028912(n)]` -/
def P7238943403096061864.Spec : Prop :=
  ∀ n, (P7238943403096061864.a n : ℤ) = A061245 (n + 1)

end A061245

/-! ## A061245.P2542101624260403233

`∩[A009996(n+1), A155055(n+1)]`
-/

namespace A061245.P2542101624260403233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061245.P2542101624260403233

namespace A061245

/-- `∩[A009996(n+1), A155055(n+1)]` -/
def P2542101624260403233.Spec : Prop :=
  ∀ n, (P2542101624260403233.a n : ℤ) = A061245 (n + 1)

end A061245

/-! ## A061245.P15107809858608173097

`∩[A028867(n+1), A155055(n+1)]`
-/

namespace A061245.P15107809858608173097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061245.P15107809858608173097

namespace A061245

/-- `∩[A028867(n+1), A155055(n+1)]` -/
def P15107809858608173097.Spec : Prop :=
  ∀ n, (P15107809858608173097.a n : ℤ) = A061245 (n + 1)

end A061245

/-! ## A061245.P4385303279232440504

`∩[A030096(n+1), A190220(n+1)]`
-/

namespace A061245.P4385303279232440504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061245.P4385303279232440504

namespace A061245

/-- `∩[A030096(n+1), A190220(n+1)]` -/
def P4385303279232440504.Spec : Prop :=
  ∀ n, (P4385303279232440504.a n : ℤ) = A061245 (n + 1)

end A061245

/-! ## A061245.P7648598759167240034

`∩[A155055(n+1), A190220(n+1)]`
-/

namespace A061245.P7648598759167240034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061245.P7648598759167240034

namespace A061245

/-- `∩[A155055(n+1), A190220(n+1)]` -/
def P7648598759167240034.Spec : Prop :=
  ∀ n, (P7648598759167240034.a n : ℤ) = A061245 (n + 1)

end A061245

/-! ## A061245.P7798314296320626547

`∩[A028867(n+1), A062086(n+1)]`
-/

namespace A061245.P7798314296320626547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061245.P7798314296320626547

namespace A061245

/-- `∩[A028867(n+1), A062086(n+1)]` -/
def P7798314296320626547.Spec : Prop :=
  ∀ n, (P7798314296320626547.a n : ℤ) = A061245 (n + 1)

end A061245

/-!
# A061246: Prime having only {0, 1, 4, 9} as digits.

The programs for A061246, there is no canonical definition to state claims against.
-/

/-! ## A061246.P9548037906996306143

`∩[A034844(n+1), A046030(n+1)]`
-/

namespace A061246.P9548037906996306143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061246.P9548037906996306143

/-! ## A061246.P4092782844050628498

`∩[A046030(n+1), A066591(n+1)]`
-/

namespace A061246.P4092782844050628498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061246.P4092782844050628498

/-! ## A061246.P18117440176750024179

`∩[A038611(n+1), A046030(n+1)]`
-/

namespace A061246.P18117440176750024179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061246.P18117440176750024179

/-! ## A061246.P11835859026989025637

`∩[A046030(n+1), A152312(n+1)]`
-/

namespace A061246.P11835859026989025637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061246.P11835859026989025637

/-! ## A061246.P16802244801313680821

`∩[A046030(n+1), A342961(n+1)]`
-/

namespace A061246.P16802244801313680821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061246.P16802244801313680821

/-! ## A061246.P7369671819498634172

`∩[A038604(n+1), A046030(n+1)]`
-/

namespace A061246.P7369671819498634172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061246.P7369671819498634172

/-! ## A061246.P7617533468192934921

`∩[A038616(n+1), A046030(n+1)]`
-/

namespace A061246.P7617533468192934921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061246.P7617533468192934921

/-! ## A061246.P2652051391670715147

`∩[A046030(n+1), A329760(n+1)]`
-/

namespace A061246.P2652051391670715147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061246.P2652051391670715147

/-! ## A061246.P14490098311588969515

`p?[A046030(n+1)]`
-/

namespace A061246.P14490098311588969515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A061246.P14490098311588969515

/-! ## A061246.P11153412539268323850

`∩[A046030(n+1), A386335(n+1)]`
-/

namespace A061246.P11153412539268323850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061246.P11153412539268323850

/-! ## A061246.P11511839979485621958

`∩[A046030(n+1), A386342(n+1)]`
-/

namespace A061246.P11511839979485621958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061246.P11511839979485621958

/-! ## A061246.P17257153855841111352

`∩[A038615(n+1), A046030(n+1)]`
-/

namespace A061246.P17257153855841111352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061246.P17257153855841111352

/-! ## A061246.P10854073524714813732

`∩[A046030(n+1), A380906(n+1)]`
-/

namespace A061246.P10854073524714813732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061246.P10854073524714813732

/-! ## A061246.P442091820230064611

`∩[A046030(n+1), A386341(n+1)]`
-/

namespace A061246.P442091820230064611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061246.P442091820230064611

/-! ## A061246.P14217530119532219377

`∩[A046030(n+1), A386343(n+1)]`
-/

namespace A061246.P14217530119532219377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061246.P14217530119532219377

/-! ## A061246.P17517453171794930505

`∩[A038872(n+1), A046030(n+1)]`
-/

namespace A061246.P17517453171794930505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061246.P17517453171794930505

/-! ## A061246.P18244294546332175155

`∩[A045468(n+1), A046030(n+1)]`
-/

namespace A061246.P18244294546332175155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061246.P18244294546332175155

/-! ## A061246.P13180375463945983835

`∩[A046030(n+1), A064739(n+1)]`
-/

namespace A061246.P13180375463945983835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061246.P13180375463945983835

/-! ## A061246.P6960783406220736555

`∩[A034844(n+1), A386355(n+1)]`
-/

namespace A061246.P6960783406220736555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061246.P6960783406220736555

/-! ## A061246.P7312565707916666636

`∩[A046030(n+1), A081027(n+1)]`
-/

namespace A061246.P7312565707916666636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061246.P7312565707916666636

/-!
# A061247: Primes having only {0, 1, 8} as digits.

The programs for A061247, there is no canonical definition to state claims against.
-/

/-! ## A061247.P2066289942243104896

`∩[A386021(n+1), A386030(n+1)]`
-/

namespace A061247.P2066289942243104896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061247.P2066289942243104896

/-! ## A061247.P795070344141686203

`∩[A386021(n+1), A386033(n+1)]`
-/

namespace A061247.P795070344141686203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061247.P795070344141686203

/-! ## A061247.P9951551517412881824

`∩[A386021(n+1), A386036(n+1)]`
-/

namespace A061247.P9951551517412881824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061247.P9951551517412881824

/-! ## A061247.P6583938732545936105

`∩[A386030(n+1), A386033(n+1)]`
-/

namespace A061247.P6583938732545936105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061247.P6583938732545936105

/-! ## A061247.P9589831699190157828

`∩[A386030(n+1), A386036(n+1)]`
-/

namespace A061247.P9589831699190157828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061247.P9589831699190157828

/-! ## A061247.P3868085620740784675

`∩[A386033(n+1), A386036(n+1)]`
-/

namespace A061247.P3868085620740784675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061247.P3868085620740784675

/-! ## A061247.P14943429430085024552

`∩[A386021(n+1), A386040(n+1)]`
-/

namespace A061247.P14943429430085024552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061247.P14943429430085024552

/-! ## A061247.P9827271756649141259

`∩[A386030(n+1), A386040(n+1)]`
-/

namespace A061247.P9827271756649141259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061247.P9827271756649141259

/-! ## A061247.P6960317862476878119

`∩[A386033(n+1), A386040(n+1)]`
-/

namespace A061247.P6960317862476878119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061247.P6960317862476878119

/-! ## A061247.P3456558742415674718

`∩[A386036(n+1), A386040(n+1)]`
-/

namespace A061247.P3456558742415674718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061247.P3456558742415674718

/-! ## A061247.P15500070005779215692

`∩[A125308(n+1), A386021(n+1)]`
-/

namespace A061247.P15500070005779215692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061247.P15500070005779215692

/-! ## A061247.P7508153076376432643

`∩[A125308(n+1), A386030(n+1)]`
-/

namespace A061247.P7508153076376432643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061247.P7508153076376432643

/-! ## A061247.P17500792177865064031

`∩[A125308(n+1), A386033(n+1)]`
-/

namespace A061247.P17500792177865064031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061247.P17500792177865064031

/-! ## A061247.P3427985095905898852

`∩[A125308(n+1), A386036(n+1)]`
-/

namespace A061247.P3427985095905898852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061247.P3427985095905898852

/-! ## A061247.P18363684572702792169

`∩[A125308(n+1), A386038(n+1)]`
-/

namespace A061247.P18363684572702792169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061247.P18363684572702792169

/-! ## A061247.P9841660054586637463

`∩[A125308(n+1), A386040(n+1)]`
-/

namespace A061247.P9841660054586637463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061247.P9841660054586637463

/-! ## A061247.P16545611631284252230

`∩[A386021(n+1), A386038(n+1)]`
-/

namespace A061247.P16545611631284252230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061247.P16545611631284252230

/-! ## A061247.P13607280077088627751

`∩[A386030(n+1), A386038(n+1)]`
-/

namespace A061247.P13607280077088627751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061247.P13607280077088627751

/-! ## A061247.P7106132773770107233

`∩[A386033(n+1), A386038(n+1)]`
-/

namespace A061247.P7106132773770107233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061247.P7106132773770107233

/-! ## A061247.P14652137026062168055

`∩[A386036(n+1), A386038(n+1)]`
-/

namespace A061247.P14652137026062168055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061247.P14652137026062168055

/-!
# A061248: Primes at which sum of digits strictly increases.

The programs for A061248, there is no canonical definition to state claims against.
-/

/-! ## A061248.P12646808498316648459

`A067180(A062132(n+1))`
-/

namespace A061248.P12646808498316648459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (A062132 (n + 1)).toNat

end

end A061248.P12646808498316648459

/-! ## A061248.P9000105105840213797

`A067180(record[∑{digits}[A069802(n+1), #]])`
-/

namespace A061248.P9000105105840213797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069802 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A061248.P9000105105840213797

/-! ## A061248.P3653416087545579138

`A067180(record[A007605(n+1)])`
-/

namespace A061248.P3653416087545579138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A061248.P3653416087545579138

/-! ## A061248.P8336778390987991056

`A067180(record[A007953(A000040(n+1))])`
-/

namespace A061248.P8336778390987991056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A061248.P8336778390987991056

/-! ## A061248.P14388842270227942207

`A067523(lt[1, A332762(3*n+2)])`
-/

namespace A061248.P14388842270227942207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332762 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A061248.P14388842270227942207

/-!
# A061249: Smallest number with digit sum = Fibonacci(n).

The programs for A061249, the canonical program `A061249.P15004495889928997021` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061249 has offset 0).

The definition of A061249 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061249.P15004495889928997021

`10^floor(A000045(n)/9)*(1+A000045(n)-9*floor(A000045(n)/9))-1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061249

/-- `10^floor(A000045(n)/9)*(1+A000045(n)-9*floor(A000045(n)/9))-1` -/
def P15004495889928997021.Spec : Prop :=
  ∀ n, P15004495889928997021.a n = (A061249 n : ℚ)

end A061249

/-! ## A061249.P11581882285915963671

`A051885(A000045(n))`
-/

namespace A061249.P11581882285915963671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A000045 n).toNat

end

end A061249.P11581882285915963671

namespace A061249

/-- `A051885(A000045(n))` -/
def P11581882285915963671.Spec : Prop :=
  ∀ n, P11581882285915963671.a n = A061249 n

end A061249

/-! ## A061249.P14716187997591214987

`A051885(A212804(n+1))`
-/

namespace A061249.P14716187997591214987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A212804 (n + 1)).toNat

end

end A061249.P14716187997591214987

namespace A061249

/-- `A051885(A212804(n+1))` -/
def P14716187997591214987.Spec : Prop :=
  ∀ n, P14716187997591214987.a n = A061249 n

end A061249

/-! ## A061249.P4230704322332412645

`A037124(A001611(n))-1`
-/

namespace A061249.P4230704322332412645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (A001611 n).toNat - 1

end

end A061249.P4230704322332412645

namespace A061249

/-- `A037124(A001611(n))-1` -/
def P4230704322332412645.Spec : Prop :=
  ∀ n, P4230704322332412645.a n = A061249 n

end A061249

/-!
# A061250: a(n) = (n-2)*(n-1)^n.

The programs for A061250, the canonical program `A061250.P4470037518725825881` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061250 has offset 1).

The definition of A061250 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*n^(n+1)` (program `A061250.P4470037518725825881`, by `A061250.P4470037518725825881.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061250.P4470037518725825881

`(n-1)*n^(n+1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061250

/-- `(n-1)*n^(n+1)` -/
def P4470037518725825881.Spec : Prop :=
  ∀ n, P4470037518725825881.a n = A061250 (n + 1)

theorem P4470037518725825881.correct : P4470037518725825881.Spec := by
  intro n
  simp only [A061250, Nat.add_sub_cancel]

end A061250

/-! ## A061250.P16756816584161771745

`lcm(1-n, n^(n+1))`
-/

namespace A061250.P16756816584161771745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n : ℤ)) (n ^ (n + 1) : ℤ)

end

end A061250.P16756816584161771745

namespace A061250

/-- `lcm(1-n, n^(n+1))` -/
def P16756816584161771745.Spec : Prop :=
  ∀ n, (P16756816584161771745.a n : ℤ) = A061250 (n + 1)

end A061250

/-! ## A061250.P5673846801587455296

`∏{digits}[10^(n+1), n-#]`
-/

namespace A061250.P5673846801587455296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (n : ℤ) - (x : ℤ)).prod

end

end A061250.P5673846801587455296

namespace A061250

/-- `∏{digits}[10^(n+1), n-#]` -/
def P5673846801587455296.Spec : Prop :=
  ∀ n, P5673846801587455296.a n = A061250 (n + 1)

end A061250

/-! ## A061250.P1202127210474804606

`A008788(n)-A007778(n)`
-/

namespace A061250.P1202127210474804606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008788 n - A007778 n

end

end A061250.P1202127210474804606

namespace A061250

/-- `A008788(n)-A007778(n)` -/
def P1202127210474804606.Spec : Prop :=
  ∀ n, P1202127210474804606.a n = A061250 (n + 1)

theorem P1202127210474804606.correct : P1202127210474804606.Spec := by
  intro n
  simp only [A061250, Nat.add_sub_cancel, A061250.P1202127210474804606.a, A061250.P4470037518725825881.a, A007778, A007778.P16810824566142427032.a, A008788, A008788.P6632636703536709236.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061250

/-! ## A061250.P4344805425391348774

`A008788(n)-n*A000312(n)`
-/

namespace A061250.P4344805425391348774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008788 n - (n : ℤ) * A000312 n

end

end A061250.P4344805425391348774

namespace A061250

/-- `A008788(n)-n*A000312(n)` -/
def P4344805425391348774.Spec : Prop :=
  ∀ n, P4344805425391348774.a n = A061250 (n + 1)

theorem P4344805425391348774.correct : P4344805425391348774.Spec := by
  intro n
  simp only [A061250, Nat.add_sub_cancel, A061250.P4344805425391348774.a, A061250.P4470037518725825881.a, A000312, A000312.P3932771318196185165.a, A008788, A008788.P6632636703536709236.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061250

/-! ## A061250.P9322035895260195223

`A007778(n+1)-(A085283(n+1)+A007778(n))`
-/

namespace A061250.P9322035895260195223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007778 (n + 1) - (A085283 (n + 1) + A007778 n)

end

end A061250.P9322035895260195223

namespace A061250

/-- `A007778(n+1)-(A085283(n+1)+A007778(n))` -/
def P9322035895260195223.Spec : Prop :=
  ∀ n, P9322035895260195223.a n = A061250 (n + 1)

theorem P9322035895260195223.correct : P9322035895260195223.Spec := by
  intro n
  simp only [A061250, Nat.add_sub_cancel, A061250.P9322035895260195223.a, A061250.P4470037518725825881.a, A007778, A007778.P16810824566142427032.a, A085283, A085283.P5394755465249716377.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061250

/-!
# A061251: Days in year to end of n-th month starting Jan 01 in a year just following a leap year or millennium.

The programs for A061251, there is no canonical definition to state claims against.
-/

/-! ## A061251.P11456997223812424923

`A008685(n)+a(n-1)` with `a(0)=0`
-/

namespace A061251.P11456997223812424923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008685 n + a (n - 1)

end

end A061251.P11456997223812424923

/-! ## A061251.P11145687273846208898

`∑[A008685(A028310(n))]-31`
-/

namespace A061251.P11145687273846208898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008685 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 31

end

end A061251.P11145687273846208898

/-! ## A061251.P921699302145374815

`∑[A008685(n+1)]-A008685(n+1)`
-/

namespace A061251.P921699302145374815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008685 (n + 1)

end

end A061251.P921699302145374815

/-! ## A061251.P5781819222121209454

`∑[A008685(A028310(n))*A057427(n)]`
-/

namespace A061251.P5781819222121209454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008685 (A028310 n).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061251.P5781819222121209454

/-! ## A061251.P18423358549807088977

`record[Δ[A073304(A142150(n))]]`
-/

namespace A061251.P18423358549807088977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073304 (A142150 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061251.P18423358549807088977

/-!
# A061252: a(n) = 16^n - 15^n.

The programs for A061252, the canonical program `A061252.P4137028253625603597` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061252 has offset 0).

The definition of A061252 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16^n-15^n` (program `A061252.P4137028253625603597`, by `A061252.P4137028253625603597.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061252.P4137028253625603597

`16^n-15^n`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061252

/-- `16^n-15^n` -/
def P4137028253625603597.Spec : Prop :=
  ∀ n, P4137028253625603597.a n = A061252 n

theorem P4137028253625603597.correct : P4137028253625603597.Spec := by
  intro n
  simp only [A061252]

end A061252

/-! ## A061252.P17633258074077288308

`abs(A001024(n)-A001025(n))`
-/

namespace A061252.P17633258074077288308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001024 n - A001025 n|

end

end A061252.P17633258074077288308

namespace A061252

/-- `abs(A001024(n)-A001025(n))` -/
def P17633258074077288308.Spec : Prop :=
  ∀ n, P17633258074077288308.a n = A061252 n

end A061252

/-! ## A061252.P16506990833208807255

`abs(A000302(n)²-A001024(n))`
-/

namespace A061252.P16506990833208807255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000302 n ^ 2 - A001024 n|

end

end A061252.P16506990833208807255

namespace A061252

/-- `abs(A000302(n)²-A001024(n))` -/
def P16506990833208807255.Spec : Prop :=
  ∀ n, P16506990833208807255.a n = A061252 n

end A061252

/-! ## A061252.P7437958256741187660

`abs(A000302(2*n)-A001024(n))`
-/

namespace A061252.P7437958256741187660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000302 (2 * n) - A001024 n|

end

end A061252.P7437958256741187660

namespace A061252

/-- `abs(A000302(2*n)-A001024(n))` -/
def P7437958256741187660.Spec : Prop :=
  ∀ n, P7437958256741187660.a n = A061252 n

end A061252

/-! ## A061252.P15973761204838212061

`(A001024(n)-A001025(n))*A057428(n)`
-/

namespace A061252.P15973761204838212061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001024 n - A001025 n) * A057428 n

end

end A061252.P15973761204838212061

namespace A061252

/-- `(A001024(n)-A001025(n))*A057428(n)` -/
def P15973761204838212061.Spec : Prop :=
  ∀ n, P15973761204838212061.a n = A061252 n

end A061252

/-! ## A061252.P1592870437279252676

`-((A001024(n)-A001025(n))*A005171(2*(n+1)))`
-/

namespace A061252.P1592870437279252676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A001024 n - A001025 n) * A005171 (2 * (n + 1)))

end

end A061252.P1592870437279252676

namespace A061252

/-- `-((A001024(n)-A001025(n))*A005171(2*(n+1)))` -/
def P1592870437279252676.Spec : Prop :=
  ∀ n, P1592870437279252676.a n = A061252 n

end A061252

/-!
# A061253: Let G_n be the elementary Abelian group G_n = (C_3)^n; a(n) is the number of times the number 1 appears in the character table of G_n.

The programs for A061253, the canonical program `A061253.P12392447965003783710` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061253 has offset 1).

The definition of A061253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061253.P18094724877191285942

`3^n*(3^(n+1)+2)`
-/

namespace A061253.P18094724877191285942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * (3 ^ (n + 1) + 2)

end

end A061253.P18094724877191285942

namespace A061253

/-- `3^n*(3^(n+1)+2)` -/
def P18094724877191285942.Spec : Prop :=
  ∀ n, (P18094724877191285942.a n : ℤ) = A061253 (n + 1)

theorem P18094724877191285942.correct : P18094724877191285942.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A061253, Nat.add_sub_cancel, A061253.P18094724877191285942.a, A061253.P12392447965003783710.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A061253, Nat.add_sub_cancel, A061253.P18094724877191285942.a, A061253.P12392447965003783710.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A061253

/-! ## A061253.P12392447965003783710

`12*a(n-1)-27*a(n-2)` with `a(0)=5, a(1)=33`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061253

/-- `12*a(n-1)-27*a(n-2)` -/
def P12392447965003783710.Spec : Prop :=
  ∀ n, P12392447965003783710.a n = A061253 (n + 1)

theorem P12392447965003783710.correct : P12392447965003783710.Spec := by
  intro n
  simp only [A061253, Nat.add_sub_cancel]

end A061253

/-! ## A061253.P25281120895624828

`A032124(2*(n+1))`
-/

namespace A061253.P25281120895624828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032124 (2 * (n + 1))

end

end A061253.P25281120895624828

namespace A061253

/-- `A032124(2*(n+1))` -/
def P25281120895624828.Spec : Prop :=
  ∀ n, P25281120895624828.a n = A061253 (n + 1)

end A061253

/-! ## A061253.P18218630468996627373

`A262326(2*(n+1))`
-/

namespace A061253.P18218630468996627373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262326 (2 * (n + 1))

end

end A061253.P18218630468996627373

namespace A061253

/-- `A262326(2*(n+1))` -/
def P18218630468996627373.Spec : Prop :=
  ∀ n, P18218630468996627373.a n = A061253 (n + 1)

end A061253

/-! ## A061253.P14337366817570320310

`A122008(2*n+3)`
-/

namespace A061253.P14337366817570320310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122008 (2 * n + 3)

end

end A061253.P14337366817570320310

namespace A061253

/-- `A122008(2*n+3)` -/
def P14337366817570320310.Spec : Prop :=
  ∀ n, P14337366817570320310.a n = A061253 (n + 1)

end A061253

/-! ## A061253.P12189208586814885032

`2*A275636(n+1)+1`
-/

namespace A061253.P12189208586814885032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A275636 (n + 1) + 1

end

end A061253.P12189208586814885032

namespace A061253

/-- `2*A275636(n+1)+1` -/
def P12189208586814885032.Spec : Prop :=
  ∀ n, P12189208586814885032.a n = A061253 (n + 1)

end A061253

/-! ## A061253.P14343927994643676951

`A013708(n)+A008776(n)`
-/

namespace A061253.P14343927994643676951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013708 n + A008776 n

end

end A061253.P14343927994643676951

namespace A061253

/-- `A013708(n)+A008776(n)` -/
def P14343927994643676951.Spec : Prop :=
  ∀ n, P14343927994643676951.a n = A061253 (n + 1)

theorem P14343927994643676951.correct : P14343927994643676951.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A061253, Nat.add_sub_cancel, A061253.P14343927994643676951.a, A061253.P12392447965003783710.a, A008776, A008776.P11088121667404015999.a, A013708, A013708.P4928709745318280073.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A061253, Nat.add_sub_cancel, A061253.P14343927994643676951.a, A061253.P12392447965003783710.a, A008776, A008776.P11088121667404015999.a, A013708, A013708.P4928709745318280073.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A061253

/-! ## A061253.P15313383519436333208

`A013708(n)+Δ[A000244(n)]`
-/

namespace A061253.P15313383519436333208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013708 n + (f1 (n + 1) - f1 n)

end

end A061253.P15313383519436333208

namespace A061253

/-- `A013708(n)+Δ[A000244(n)]` -/
def P15313383519436333208.Spec : Prop :=
  ∀ n, P15313383519436333208.a n = A061253 (n + 1)

theorem P15313383519436333208.correct : P15313383519436333208.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A061253, Nat.add_sub_cancel, A061253.P15313383519436333208.f1, A061253.P15313383519436333208.a, A061253.P12392447965003783710.a, A000244, A000244.P17162167222172810417.a, A013708, A013708.P4928709745318280073.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A061253, Nat.add_sub_cancel, A061253.P15313383519436333208.f1, A061253.P15313383519436333208.a, A061253.P12392447965003783710.a, A000244, A000244.P17162167222172810417.a, A013708, A013708.P4928709745318280073.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A061253

/-! ## A061253.P17304005289943117787

`A013708(n)+Δ[A024023(n)]`
-/

namespace A061253.P17304005289943117787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013708 n + (f1 (n + 1) - f1 n)

end

end A061253.P17304005289943117787

namespace A061253

/-- `A013708(n)+Δ[A024023(n)]` -/
def P17304005289943117787.Spec : Prop :=
  ∀ n, P17304005289943117787.a n = A061253 (n + 1)

theorem P17304005289943117787.correct : P17304005289943117787.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A061253, Nat.add_sub_cancel, A061253.P17304005289943117787.f1, A061253.P17304005289943117787.a, A061253.P12392447965003783710.a, A013708, A013708.P4928709745318280073.a, A024023, A024023.P3457506902639293536.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A061253, Nat.add_sub_cancel, A061253.P17304005289943117787.f1, A061253.P17304005289943117787.a, A061253.P12392447965003783710.a, A013708, A013708.P4928709745318280073.a, A024023, A024023.P3457506902639293536.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A061253

/-! ## A061253.P1153378180975722397

`A102518(n+1)+A008776(n)`
-/

namespace A061253.P1153378180975722397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102518 (n + 1) + A008776 n

end

end A061253.P1153378180975722397

namespace A061253

/-- `A102518(n+1)+A008776(n)` -/
def P1153378180975722397.Spec : Prop :=
  ∀ n, P1153378180975722397.a n = A061253 (n + 1)

end A061253

/-! ## A061253.P9163710732854807906

`A000244(n)+2*A051407(n)`
-/

namespace A061253.P9163710732854807906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + 2 * A051407 n

end

end A061253.P9163710732854807906

namespace A061253

/-- `A000244(n)+2*A051407(n)` -/
def P9163710732854807906.Spec : Prop :=
  ∀ n, P9163710732854807906.a n = A061253 (n + 1)

end A061253

/-! ## A061253.P3922163604192239513

`A169724(n+1)-A034472(n)²`
-/

namespace A061253.P3922163604192239513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169724 (n + 1) - A034472 n ^ 2

end

end A061253.P3922163604192239513

namespace A061253

/-- `A169724(n+1)-A034472(n)²` -/
def P3922163604192239513.Spec : Prop :=
  ∀ n, P3922163604192239513.a n = A061253 (n + 1)

theorem P3922163604192239513.correct : P3922163604192239513.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A061253, Nat.add_sub_cancel, A061253.P3922163604192239513.a, A061253.P12392447965003783710.a, A034472, A034472.P6935477064191477456.a, A169724, A169724.P3810620558516851735.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A061253, Nat.add_sub_cancel, A061253.P3922163604192239513.a, A061253.P12392447965003783710.a, A034472, A034472.P6935477064191477456.a, A169724, A169724.P3810620558516851735.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A061253

/-! ## A061253.P9623450223521367185

`A048473(2*n)+A034472(n)²`
-/

namespace A061253.P9623450223521367185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 (2 * n) + A034472 n ^ 2

end

end A061253.P9623450223521367185

namespace A061253

/-- `A048473(2*n)+A034472(n)²` -/
def P9623450223521367185.Spec : Prop :=
  ∀ n, P9623450223521367185.a n = A061253 (n + 1)

theorem P9623450223521367185.correct : P9623450223521367185.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A061253, Nat.add_sub_cancel, A061253.P9623450223521367185.a, A061253.P12392447965003783710.a, A034472, A034472.P6935477064191477456.a, A048473, A048473.P18137977496735268190.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A061253, Nat.add_sub_cancel, A061253.P9623450223521367185.a, A061253.P12392447965003783710.a, A034472, A034472.P6935477064191477456.a, A048473, A048473.P18137977496735268190.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A061253

/-! ## A061253.P853934766189459377

`A008776(n)+3*A000244(n)²`
-/

namespace A061253.P853934766189459377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n + 3 * A000244 n ^ 2

end

end A061253.P853934766189459377

namespace A061253

/-- `A008776(n)+3*A000244(n)²` -/
def P853934766189459377.Spec : Prop :=
  ∀ n, P853934766189459377.a n = A061253 (n + 1)

theorem P853934766189459377.correct : P853934766189459377.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A061253, Nat.add_sub_cancel, A061253.P853934766189459377.a, A061253.P12392447965003783710.a, A000244, A000244.P17162167222172810417.a, A008776, A008776.P11088121667404015999.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A061253, Nat.add_sub_cancel, A061253.P853934766189459377.a, A061253.P12392447965003783710.a, A000244, A000244.P17162167222172810417.a, A008776, A008776.P11088121667404015999.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A061253

/-! ## A061253.P14652742100113439130

`Δ[A104743(n)]²-A034472(n)²`
-/

namespace A061253.P14652742100113439130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A034472 n ^ 2

end

end A061253.P14652742100113439130

namespace A061253

/-- `Δ[A104743(n)]²-A034472(n)²` -/
def P14652742100113439130.Spec : Prop :=
  ∀ n, P14652742100113439130.a n = A061253 (n + 1)

theorem P14652742100113439130.correct : P14652742100113439130.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A061253, Nat.add_sub_cancel, A061253.P14652742100113439130.f1, A061253.P14652742100113439130.a, A061253.P12392447965003783710.a, A034472, A034472.P6935477064191477456.a, A104743, A104743.P17964489936834295293.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A061253, Nat.add_sub_cancel, A061253.P14652742100113439130.f1, A061253.P14652742100113439130.a, A061253.P12392447965003783710.a, A034472, A034472.P6935477064191477456.a, A104743, A104743.P17964489936834295293.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A061253

/-! ## A061253.P12004026673591540023

`A102518(n+1)+A025192(n+1)`
-/

namespace A061253.P12004026673591540023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102518 (n + 1) + A025192 (n + 1)

end

end A061253.P12004026673591540023

namespace A061253

/-- `A102518(n+1)+A025192(n+1)` -/
def P12004026673591540023.Spec : Prop :=
  ∀ n, P12004026673591540023.a n = A061253 (n + 1)

end A061253

/-! ## A061253.P6307755785008744020

`A048473(n)+A034472(2*n+1)`
-/

namespace A061253.P6307755785008744020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 n + A034472 (2 * n + 1)

end

end A061253.P6307755785008744020

namespace A061253

/-- `A048473(n)+A034472(2*n+1)` -/
def P6307755785008744020.Spec : Prop :=
  ∀ n, P6307755785008744020.a n = A061253 (n + 1)

theorem P6307755785008744020.correct : P6307755785008744020.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A061253, Nat.add_sub_cancel, A061253.P6307755785008744020.a, A061253.P12392447965003783710.a, A034472, A034472.P6935477064191477456.a, A048473, A048473.P18137977496735268190.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A061253, Nat.add_sub_cancel, A061253.P6307755785008744020.a, A061253.P12392447965003783710.a, A034472, A034472.P6935477064191477456.a, A048473, A048473.P18137977496735268190.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A061253

/-! ## A061253.P5012881594897444770

`A115099(n)+A058481(2*n+1)`
-/

namespace A061253.P5012881594897444770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115099 n + A058481 (2 * n + 1)

end

end A061253.P5012881594897444770

namespace A061253

/-- `A115099(n)+A058481(2*n+1)` -/
def P5012881594897444770.Spec : Prop :=
  ∀ n, P5012881594897444770.a n = A061253 (n + 1)

end A061253

/-! ## A061253.P15356270762007940995

`∩[A032124(n+1), A262326(n+1)]`
-/

namespace A061253.P15356270762007940995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061253.P15356270762007940995

namespace A061253

/-- `∩[A032124(n+1), A262326(n+1)]` -/
def P15356270762007940995.Spec : Prop :=
  ∀ n, (P15356270762007940995.a n : ℤ) = A061253 (n + 1)

end A061253

/-!
# A061254: Odd composite numbers n such that primitive part of Fibonacci(n) (see A061446) is prime.

The programs for A061254, there is no canonical definition to state claims against.
-/

/-! ## A061254.P11997137741731500606

`∩[2*n+1, A274584(n+1)]`
-/

namespace A061254.P11997137741731500606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061254.P11997137741731500606

/-! ## A061254.P4252635296701996430

`record[A093178(A274584(n+3))]`
-/

namespace A061254.P4252635296701996430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A274584 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061254.P4252635296701996430

/-! ## A061254.P10222937479782673475

`filter[A274584(n+1), A000035(#)]`
-/

namespace A061254.P10222937479782673475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A061254.P10222937479782673475

/-! ## A061254.P13046679443440676671

`filter[A274584(n+1), A266070(#)]`
-/

namespace A061254.P13046679443440676671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A061254.P13046679443440676671

/-! ## A061254.P5046394606208863009

`filter[A274584(n+1), A266611(#)]`
-/

namespace A061254.P5046394606208863009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A061254.P5046394606208863009

/-! ## A061254.P3481635386647440642

`filter[A274584(n+1), A266719(#)]`
-/

namespace A061254.P3481635386647440642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A061254.P3481635386647440642

/-! ## A061254.P13341374103621016167

`filter[A274584(n+1), A296066(#)]`
-/

namespace A061254.P13341374103621016167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A061254.P13341374103621016167

/-! ## A061254.P951246558941162462

`filter[A274584(n+2), A266246(#)]`
-/

namespace A061254.P951246558941162462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274584 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A061254.P951246558941162462

/-! ## A061254.P7357407412673615649

`filter[A274584(n+2), A267256(#)]`
-/

namespace A061254.P7357407412673615649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274584 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A061254.P7357407412673615649

/-! ## A061254.P1116594263652620275

`filter[A274584(n+3), A266444(#)]`
-/

namespace A061254.P1116594263652620275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274584 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266444 (f1 j).toNat = 1) n)

end

end A061254.P1116594263652620275

/-!
# A061255: Euler transform of Euler totient function phi(n), cf. A000010.

The programs for A061255, there is no canonical definition to state claims against.
-/

/-! ## A061255.P16709326719906533423

`A172471(A151535(n+1))-A003056(n)`
-/

namespace A061255.P16709326719906533423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A151535 (n + 1)).toNat - A003056 n

end

end A061255.P16709326719906533423

/-! ## A061255.P5203556535451825303

`A194327(A307262(n))`
-/

namespace A061255.P5203556535451825303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194327 (A307262 n).toNat

end

end A061255.P5203556535451825303

/-! ## A061255.P4193992705608143542

`A325101(A240523(n))+A026811(n)`
-/

namespace A061255.P4193992705608143542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325101 (A240523 n).toNat + A026811 n

end

end A061255.P4193992705608143542

/-! ## A061255.P17874765969350964696

`A208354(n)-A156726(A342762(n))`
-/

namespace A061255.P17874765969350964696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 n - A156726 (A342762 n).toNat

end

end A061255.P17874765969350964696

/-! ## A061255.P8765054295523784436

`A000194(A061257(n)*A101268(n))`
-/

namespace A061255.P8765054295523784436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A061257 n * A101268 n).toNat

end

end A061255.P8765054295523784436

/-!
# A061256: Euler transform of sigma(n), cf. A000203.

The programs for A061256, there is no canonical definition to state claims against.
-/

/-! ## A061256.P13046802805361639664

`A072169(n)/n!`
-/

namespace A061256.P13046802805361639664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072169 n : ℚ) / (Nat.factorial n : ℚ)

end

end A061256.P13046802805361639664

/-! ## A061256.P7177837867740935390

`A072169(n)/A000142(n)`
-/

namespace A061256.P7177837867740935390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072169 n : ℚ) / (A000142 n : ℚ)

end

end A061256.P7177837867740935390

/-! ## A061256.P10724656432522630307

`A072169(n)/A081123(2*n)`
-/

namespace A061256.P10724656432522630307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072169 n : ℚ) / (A081123 (2 * n) : ℚ)

end

end A061256.P10724656432522630307

/-! ## A061256.P3940385673045892896

`A321876(∑[n+2]-1)`
-/

namespace A061256.P3940385673045892896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321876 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A061256.P3940385673045892896

/-! ## A061256.P3593941272457878791

`A321876(A034856(n+1))%(4^(n+1)+1)`
-/

namespace A061256.P3593941272457878791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321876 (A034856 (n + 1)).toNat) (4 ^ (n + 1) + 1 : ℤ)

end

end A061256.P3593941272457878791

/-!
# A061257: Euler transform of reduced totient function psi(n), cf. A002322.

The programs for A061257, there is no canonical definition to state claims against.
-/

/-! ## A061257.P7863098254087474864

`A073188(A109545(n))-A243223(n+1)`
-/

namespace A061257.P7863098254087474864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A109545 n).toNat - A243223 (n + 1)

end

end A061257.P7863098254087474864

/-! ## A061257.P8016457363161304082

`A073188(A109545(n))-A277007(A050140(n+1))`
-/

namespace A061257.P8016457363161304082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A109545 n).toNat - A277007 (A050140 (n + 1)).toNat

end

end A061257.P8016457363161304082

/-! ## A061257.P16732745384152813549

`A026625(n)+A005088(A167667(n))`
-/

namespace A061257.P16732745384152813549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026625 n + A005088 (A167667 n).toNat

end

end A061257.P16732745384152813549

/-! ## A061257.P8394575543224181040

`A079365(A126024(n))+A026625(n)`
-/

namespace A061257.P8394575543224181040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079365 (A126024 n).toNat + A026625 n

end

end A061257.P8394575543224181040

/-! ## A061257.P17030200867575492084

`A217096(A041663(n))+A026625(n)`
-/

namespace A061257.P17030200867575492084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 (A041663 n).toNat + A026625 n

end

end A061257.P17030200867575492084

/-!
# A061258: a(n) = Sum_{d|n} d*psi(d), where psi(d) is reduced totient function, cf. A002322.

The programs for A061258, there is no canonical definition to state claims against.
-/

/-! ## A061258.P10437048389486435493

`∑{d}[n+1, #*A002322(#)]`
-/

namespace A061258.P10437048389486435493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A002322 d

end

end A061258.P10437048389486435493

/-! ## A061258.P6950521874268478546

`∑{d}[n+1, #*(A263027(#)-1)]`
-/

namespace A061258.P6950521874268478546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (A263027 d - 1)

end

end A061258.P6950521874268478546

/-! ## A061258.P592538148024121436

`∑{d}[n+1, #*(#-A277127(#))]`
-/

namespace A061258.P592538148024121436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * ((d : ℤ) - A277127 d)

end

end A061258.P592538148024121436

/-! ## A061258.P7612318978884487471

`∑{d}[A032555(n+1), A124827(#)]`
-/

namespace A061258.P7612318978884487471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A124827 d

end

end A061258.P7612318978884487471

/-! ## A061258.P1917158197428203838

`∑{d}[A032557(n+1), A124827(#)]`
-/

namespace A061258.P1917158197428203838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A124827 d

end

end A061258.P1917158197428203838

/-!
# A061259: a(n)=Sum_{d|n} d*numbpart(d), where numbpart(d)=number of partitions of d, cf. A000041.

The programs for A061259, there is no canonical definition to state claims against.
-/

/-! ## A061259.P4711659465676617082

`∑{d}[n+1, A066186(#)]`
-/

namespace A061259.P4711659465676617082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A066186 d

end

end A061259.P4711659465676617082

/-! ## A061259.P11423679638595947583

`∑{d}[n+1, #*A000041(#)]`
-/

namespace A061259.P11423679638595947583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000041 d

end

end A061259.P11423679638595947583

/-! ## A061259.P14148384822507486568

`∑{d}[n+1, #*(A000065(#)+1)]`
-/

namespace A061259.P14148384822507486568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (A000065 d + 1)

end

end A061259.P14148384822507486568

/-! ## A061259.P6117635422615439165

`record[∑{d}[A344180(n), A066186(#)]]`
-/

namespace A061259.P6117635422615439165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A066186 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061259.P6117635422615439165

/-! ## A061259.P9280934457711168650

`∑{d}[n+1, A220909(#)]/2`
-/

namespace A061259.P9280934457711168650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A220909 d : ℤ) : ℚ) / 2

end

end A061259.P9280934457711168650

/-!
# A061260: G.f.: Product_{k>=1} (1-y*x^k)^(-numbpart(k)), where numbpart(k) = number of partitions of k, cf. A000041.

The programs for A061260, there is no canonical definition to state claims against.
-/

/-! ## A061260.P16820020233706163327

`A091355(n+1)+A076869(A069777(n))`
-/

namespace A061260.P16820020233706163327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091355 (n + 1) + A076869 (A069777 n).toNat

end

end A061260.P16820020233706163327

/-! ## A061260.P13404822117728893535

`A154782(A256041(n))+A119442(n)`
-/

namespace A061260.P13404822117728893535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154782 (A256041 n).toNat + A119442 n

end

end A061260.P13404822117728893535

/-! ## A061260.P4157118025597771561

`A154782(A274741(n))+A119442(n)`
-/

namespace A061260.P4157118025597771561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154782 (A274741 n).toNat + A119442 n

end

end A061260.P4157118025597771561

/-! ## A061260.P2637934681046464605

`A122922(A281446(n))+A038497(n+1)`
-/

namespace A061260.P2637934681046464605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122922 (A281446 n).toNat + A038497 (n + 1)

end

end A061260.P2637934681046464605

/-! ## A061260.P9476819828931811342

`A343265(A185945(n))+A001221(A069777(n))`
-/

namespace A061260.P9476819828931811342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343265 (A185945 n).toNat + A001221 (A069777 n).toNat

end

end A061260.P9476819828931811342

/-!
# A061261: Limits of diagonals in triangle defined in A061260.

The programs for A061261, there is no canonical definition to state claims against.
-/

/-! ## A061261.P4820710045601542185

`A061260(∑[4*n]+1)`
-/

namespace A061261.P4820710045601542185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061260 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A061261.P4820710045601542185

/-! ## A061261.P6872562977760129343

`record[gcd(A061260(n+1), A114327(n))]`
-/

namespace A061261.P6872562977760129343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061260 (n + 1)) (A114327 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061261.P6872562977760129343

/-! ## A061261.P14708785791215968147

`record[A061260(n+1)*A203994(n+1)]`
-/

namespace A061261.P14708785791215968147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061260 (n + 1) * A203994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061261.P14708785791215968147

/-! ## A061261.P14721473284012030141

`lcm(A033999(n), A061260(A001844(n)))`
-/

namespace A061261.P14721473284012030141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A061260 (A001844 n).toNat)

end

end A061261.P14721473284012030141

/-! ## A061261.P18125044362371893893

`record[A061260(A008619(n²+1))]`
-/

namespace A061261.P18125044362371893893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061260 (A008619 (n ^ 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061261.P18125044362371893893

/-!
# A061262: Smallest number representable as the sum of 3 triangular numbers in exactly n ways.

The programs for A061262, there is no canonical definition to state claims against.
-/

/-! ## A061262.P16786727326894060024

`Δ[A176661(log2(A011782(n)))]`
-/

namespace A061262.P16786727326894060024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176661 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061262.P16786727326894060024

/-! ## A061262.P14299203145656896957

`Δ[A176661(A028310(n)-1)]`
-/

namespace A061262.P14299203145656896957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176661 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061262.P14299203145656896957

/-! ## A061262.P13419280226305240237

`Δ[A176661(A004273(n)-n)]`
-/

namespace A061262.P13419280226305240237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176661 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061262.P13419280226305240237

/-! ## A061262.P17201795778214574669

`Δ[A176661(A004526(comp[2*(n+1)]))]`
-/

namespace A061262.P17201795778214574669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176661 (A004526 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061262.P17201795778214574669

/-! ## A061262.P14850966457432575422

`Δ[A176661(A002262(A055998(n)))]`
-/

namespace A061262.P14850966457432575422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176661 (A002262 (A055998 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061262.P14850966457432575422

/-!
# A061263: a(n) = floor(n^3/9).

The programs for A061263, the canonical program `A061263.P15137950714676457916` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061263 has offset 0).

The definition of A061263 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^3/9)` (program `A061263.P15137950714676457916`, by `A061263.P15137950714676457916.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061263.P15137950714676457916

`floor(n^3/9)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061263

/-- `floor(n^3/9)` -/
def P15137950714676457916.Spec : Prop :=
  ∀ n, P15137950714676457916.a n = A061263 n

theorem P15137950714676457916.correct : P15137950714676457916.Spec := by
  intro n
  simp only [A061263]

end A061263

/-! ## A061263.P11635914283242438215

`∑[∑[a(n-3)+2]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=3, a(4)=1`
-/

namespace A061263.P11635914283242438215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 3, 1] fun n f2 =>
  f2 (n - 3) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061263.P11635914283242438215

namespace A061263

/-- `∑[∑[a(n-3)+2]]` -/
def P11635914283242438215.Spec : Prop :=
  ∀ n, (P11635914283242438215.a n : ℤ) = A061263 n

end A061263

/-! ## A061263.P11675020197156299225

`n-1+a(n-3)+(2-n)²` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A061263.P11675020197156299225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  (n : ℤ) - 1 + (a (n - 3) + (2 - (n : ℤ)) ^ 2)

end

end A061263.P11675020197156299225

namespace A061263

/-- `n-1+a(n-3)+(2-n)²` -/
def P11675020197156299225.Spec : Prop :=
  ∀ n, P11675020197156299225.a n = A061263 n

end A061263

/-! ## A061263.P695580827271832102

`(1-n)²-(n-2-a(n-3))` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A061263.P695580827271832102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  (1 - (n : ℤ)) ^ 2 - ((n : ℤ) - 2 - a (n - 3))

end

end A061263.P695580827271832102

namespace A061263

/-- `(1-n)²-(n-2-a(n-3))` -/
def P695580827271832102.Spec : Prop :=
  ∀ n, P695580827271832102.a n = A061263 n

end A061263

/-! ## A061263.P7639560229354829347

`1+a(n-3)+(n-1)*(n-2)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A061263.P7639560229354829347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  1 + a (n - 3) + ((n : ℤ) - 1) * ((n : ℤ) - 2)

end

end A061263.P7639560229354829347

namespace A061263

/-- `1+a(n-3)+(n-1)*(n-2)` -/
def P7639560229354829347.Spec : Prop :=
  ∀ n, P7639560229354829347.a n = A061263 n

end A061263

/-! ## A061263.P9437037459879601129

`ceil(A259348(n)/9)`
-/

namespace A061263.P9437037459879601129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A259348 n : ℚ) / 9⌉

end

end A061263.P9437037459879601129

namespace A061263

/-- `ceil(A259348(n)/9)` -/
def P9437037459879601129.Spec : Prop :=
  ∀ n, P9437037459879601129.a n = A061263 n

end A061263

/-! ## A061263.P8099717236432675406

`∑[A128422(n+1)]+floor(n/3)`
-/

namespace A061263.P8099717236432675406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊(n : ℚ) / 3⌋

end

end A061263.P8099717236432675406

namespace A061263

/-- `∑[A128422(n+1)]+floor(n/3)` -/
def P8099717236432675406.Spec : Prop :=
  ∀ n, P8099717236432675406.a n = A061263 n

end A061263

/-! ## A061263.P5930682285901023922

`∑[∑[1-A226576(n)+n]]-1`
-/

namespace A061263.P5930682285901023922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A226576 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A061263.P5930682285901023922

namespace A061263

/-- `∑[∑[1-A226576(n)+n]]-1` -/
def P5930682285901023922.Spec : Prop :=
  ∀ n, P5930682285901023922.a n = A061263 n

end A061263

/-! ## A061263.P4181603290022531918

`round(((A000578(n)-1)/3-1)/3)`
-/

namespace A061263.P4181603290022531918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A000578 n - 1 : ℚ) / 3 - 1) / 3)

end

end A061263.P4181603290022531918

namespace A061263

/-- `round(((A000578(n)-1)/3-1)/3)` -/
def P4181603290022531918.Spec : Prop :=
  ∀ n, P4181603290022531918.a n = A061263 n

end A061263

/-! ## A061263.P8412100979854078299

`A181286(n)-A007997(n+3)`
-/

namespace A061263.P8412100979854078299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181286 n - A007997 (n + 3)

end

end A061263.P8412100979854078299

namespace A061263

/-- `A181286(n)-A007997(n+3)` -/
def P8412100979854078299.Spec : Prop :=
  ∀ n, P8412100979854078299.a n = A061263 n

end A061263

/-! ## A061263.P15521512380835714219

`∑[A000212(n)]-A058212(n+1)`
-/

namespace A061263.P15521512380835714219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A058212 (n + 1)

end

end A061263.P15521512380835714219

namespace A061263

/-- `∑[A000212(n)]-A058212(n+1)` -/
def P15521512380835714219.Spec : Prop :=
  ∀ n, P15521512380835714219.a n = A061263 n

end A061263

/-! ## A061263.P12450598299973903549

`A032765(n)+∑[A000212(n)-n]`
-/

namespace A061263.P12450598299973903549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061263.P12450598299973903549

namespace A061263

/-- `A032765(n)+∑[A000212(n)-n]` -/
def P12450598299973903549.Spec : Prop :=
  ∀ n, P12450598299973903549.a n = A061263 n

end A061263

/-! ## A061263.P11867510106090155519

`A008763(2*n)-A173857(n+4)`
-/

namespace A061263.P11867510106090155519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (2 * n) - A173857 (n + 4)

end

end A061263.P11867510106090155519

namespace A061263

/-- `A008763(2*n)-A173857(n+4)` -/
def P11867510106090155519.Spec : Prop :=
  ∀ n, P11867510106090155519.a n = A061263 n

end A061263

/-! ## A061263.P13967269685155472006

`A008763(2*n)-Δ[A103221(2*n)]`
-/

namespace A061263.P13967269685155472006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (2 * n) - (f1 (n + 1) - f1 n)

end

end A061263.P13967269685155472006

namespace A061263

/-- `A008763(2*n)-Δ[A103221(2*n)]` -/
def P13967269685155472006.Spec : Prop :=
  ∀ n, P13967269685155472006.a n = A061263 n

end A061263

/-!
# A061264: Number of cyclic permutations of the digits of n which give primes.

The programs for A061264, there is no canonical definition to state claims against.
-/

/-! ## A061264.P6511088902987992194

`A257669(A257668(n+1))*A262988(n+1)`
-/

namespace A061264.P6511088902987992194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257669 (A257668 (n + 1)).toNat * A262988 (n + 1)

end

end A061264.P6511088902987992194

/-! ## A061264.P7836543059019464417

`A035214(A234322(n+1))*A262988(n+1)`
-/

namespace A061264.P7836543059019464417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A234322 (n + 1)).toNat * A262988 (n + 1)

end

end A061264.P7836543059019464417

/-! ## A061264.P4759146438356011723

`A035214(A234322(Δ[n²]-n))+A262988(n+1)-1`
-/

namespace A061264.P4759146438356011723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A234322 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat + (A262988 (n + 1) - 1)

end

end A061264.P4759146438356011723

/-! ## A061264.P3775579338379748385

`A262988(n+1)*A294336(∑[A187335(n+1)])`
-/

namespace A061264.P3775579338379748385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262988 (n + 1) * A294336 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061264.P3775579338379748385

/-! ## A061264.P18043243934753235653

`A262988(n+1)*A294336(A048058(n))`
-/

namespace A061264.P18043243934753235653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262988 (n + 1) * A294336 (A048058 n).toNat

end

end A061264.P18043243934753235653

/-! ## A061264.P2427589277602408156

`A035214(∑[A008619(n)])*A262988(n+1)`
-/

namespace A061264.P2427589277602408156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A262988 (n + 1)

end

end A061264.P2427589277602408156

/-! ## A061264.P8555131552413673981

`A262988(n+1)-A010815(A349234(n+1))`
-/

namespace A061264.P8555131552413673981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262988 (n + 1) - A010815 (A349234 (n + 1)).toNat

end

end A061264.P8555131552413673981

/-! ## A061264.P16930035882093003870

`A262988(n+1)+A209229(A026137(A106758(n+1)))`
-/

namespace A061264.P16930035882093003870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262988 (n + 1) + A209229 (A026137 (A106758 (n + 1)).toNat).toNat

end

end A061264.P16930035882093003870

/-! ## A061264.P2075180315239316142

`A000010(A253641(A303808(n+1)))*A262988(n+1)`
-/

namespace A061264.P2075180315239316142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A253641 (A303808 (n + 1)).toNat).toNat * A262988 (n + 1)

end

end A061264.P2075180315239316142

/-! ## A061264.P11565597068323155858

`A039999(n+1)+A010052(A048058(n))`
-/

namespace A061264.P11565597068323155858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039999 (n + 1) + A010052 (A048058 n).toNat

end

end A061264.P11565597068323155858

/-!
# A061265: Number of squares between n-th prime and (n+1)st prime.

The programs for A061265, the canonical program `A061265.P9822959738043357081` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061265 has offset 1).

The definition of A061265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061265.P9822959738043357081

`floor(sqrt(A000040(n+2)))-floor(sqrt(A000040(n+1)))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061265

/-- `floor(sqrt(A000040(n+2)))-floor(sqrt(A000040(n+1)))` -/
def P9822959738043357081.Spec : Prop :=
  ∀ n, P9822959738043357081.a n = A061265 (n + 1)

theorem P9822959738043357081.correct : P9822959738043357081.Spec := by
  intro n
  simp only [A061265, Nat.add_sub_cancel]

end A061265

/-! ## A061265.P16919846821148856955

`char[A038107(n)-1]`
-/

namespace A061265.P16919846821148856955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A061265.P16919846821148856955

namespace A061265

/-- `char[A038107(n)-1]` -/
def P16919846821148856955.Spec : Prop :=
  ∀ n, (P16919846821148856955.a n : ℤ) = A061265 (n + 1)

end A061265

/-! ## A061265.P10385389278632762682

`A133760(n+1)%2`
-/

namespace A061265.P10385389278632762682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133760 (n + 1)) 2

end

end A061265.P10385389278632762682

namespace A061265

/-- `A133760(n+1)%2` -/
def P10385389278632762682.Spec : Prop :=
  ∀ n, P10385389278632762682.a n = A061265 (n + 1)

end A061265

/-! ## A061265.P1619550210746305239

`A139140(n+1)%2`
-/

namespace A061265.P1619550210746305239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139140 (n + 1)) 2

end

end A061265.P1619550210746305239

namespace A061265

/-- `A139140(n+1)%2` -/
def P1619550210746305239.Spec : Prop :=
  ∀ n, P1619550210746305239.a n = A061265 (n + 1)

end A061265

/-! ## A061265.P4683711247525158055

`char[∑[A014085(n)]-1]`
-/

namespace A061265.P4683711247525158055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A061265.P4683711247525158055

namespace A061265

/-- `char[∑[A014085(n)]-1]` -/
def P4683711247525158055.Spec : Prop :=
  ∀ n, (P4683711247525158055.a n : ℤ) = A061265 (n + 1)

end A061265

/-! ## A061265.P12376501759805186259

`Δ[floor(sqrt(A001748(n+1)/3))]`
-/

namespace A061265.P12376501759805186259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A001748 (n + 1) : ℚ) / 3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061265.P12376501759805186259

namespace A061265

/-- `Δ[floor(sqrt(A001748(n+1)/3))]` -/
def P12376501759805186259.Spec : Prop :=
  ∀ n, P12376501759805186259.a n = A061265 (n + 1)

end A061265

/-! ## A061265.P619538582013319686

`Δ[floor(sqrt(A001749(n+1)/4))]`
-/

namespace A061265.P619538582013319686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A001749 (n + 1) : ℚ) / 4 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061265.P619538582013319686

namespace A061265

/-- `Δ[floor(sqrt(A001749(n+1)/4))]` -/
def P619538582013319686.Spec : Prop :=
  ∀ n, P619538582013319686.a n = A061265 (n + 1)

end A061265

/-! ## A061265.P15460208973946551272

`A000035(A133760(n+1))`
-/

namespace A061265.P15460208973946551272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A133760 (n + 1)).toNat

end

end A061265.P15460208973946551272

namespace A061265

/-- `A000035(A133760(n+1))` -/
def P15460208973946551272.Spec : Prop :=
  ∀ n, P15460208973946551272.a n = A061265 (n + 1)

end A061265

/-! ## A061265.P2634721405874366532

`A000035(A139140(n+1))`
-/

namespace A061265.P2634721405874366532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A139140 (n + 1)).toNat

end

end A061265.P2634721405874366532

namespace A061265

/-- `A000035(A139140(n+1))` -/
def P2634721405874366532.Spec : Prop :=
  ∀ n, P2634721405874366532.a n = A061265 (n + 1)

end A061265

/-! ## A061265.P5722723353363474010

`and(A054977(n), A133760(n+1))`
-/

namespace A061265.P5722723353363474010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A133760 (n + 1))

end

end A061265.P5722723353363474010

namespace A061265

/-- `and(A054977(n), A133760(n+1))` -/
def P5722723353363474010.Spec : Prop :=
  ∀ n, P5722723353363474010.a n = A061265 (n + 1)

end A061265

/-! ## A061265.P2757649910452057606

`and(A057427(n), A133760(n+1))`
-/

namespace A061265.P2757649910452057606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A133760 (n + 1))

end

end A061265.P2757649910452057606

namespace A061265

/-- `and(A057427(n), A133760(n+1))` -/
def P2757649910452057606.Spec : Prop :=
  ∀ n, P2757649910452057606.a n = A061265 (n + 1)

end A061265

/-! ## A061265.P13308931674962230097

`and(A133760(n+1), A158388(n))`
-/

namespace A061265.P13308931674962230097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133760 (n + 1)) (A158388 n)

end

end A061265.P13308931674962230097

namespace A061265

/-- `and(A133760(n+1), A158388(n))` -/
def P13308931674962230097.Spec : Prop :=
  ∀ n, P13308931674962230097.a n = A061265 (n + 1)

end A061265

/-! ## A061265.P5596843821185783200

`Δ[A000006(n+1)]`
-/

namespace A061265.P5596843821185783200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061265.P5596843821185783200

namespace A061265

/-- `Δ[A000006(n+1)]` -/
def P5596843821185783200.Spec : Prop :=
  ∀ n, P5596843821185783200.a n = A061265 (n + 1)

end A061265

/-! ## A061265.P13706674341036358196

`Δ[A104103(n+1)]`
-/

namespace A061265.P13706674341036358196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061265.P13706674341036358196

namespace A061265

/-- `Δ[A104103(n+1)]` -/
def P13706674341036358196.Spec : Prop :=
  ∀ n, P13706674341036358196.a n = A061265 (n + 1)

end A061265

/-! ## A061265.P11529344927799834354

`1-Δ[A103416(n)]`
-/

namespace A061265.P11529344927799834354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A061265.P11529344927799834354

namespace A061265

/-- `1-Δ[A103416(n)]` -/
def P11529344927799834354.Spec : Prop :=
  ∀ n, P11529344927799834354.a n = A061265 (n + 1)

theorem P11529344927799834354.correct : P11529344927799834354.Spec := by
  intro n
  simp only [A061265, Nat.add_sub_cancel, A061265.P11529344927799834354.f1, A061265.P11529344927799834354.a, A061265.P9822959738043357081.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A103416, A103416.P11972475855525546389.a, A103355, A103355.P17909756641454416049.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061265

/-! ## A061265.P4410422365392454104

`Δ[sqrt(A065730(n+1))]`
-/

namespace A061265.P4410422365392454104
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065730 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061265.P4410422365392454104

namespace A061265

/-- `Δ[sqrt(A065730(n+1))]` -/
def P4410422365392454104.Spec : Prop :=
  ∀ n, P4410422365392454104.a n = (A061265 (n + 1) : ℝ)

end A061265

/-! ## A061265.P12132614198216875679

`Δ[sqrt(A145445(n+1))]`
-/

namespace A061265.P12132614198216875679
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A145445 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061265.P12132614198216875679

namespace A061265

/-- `Δ[sqrt(A145445(n+1))]` -/
def P12132614198216875679.Spec : Prop :=
  ∀ n, P12132614198216875679.a n = (A061265 (n + 1) : ℝ)

end A061265

/-! ## A061265.P255566288050476364

`log2(Δ[A161188(n+1)])`
-/

namespace A061265.P255566288050476364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161188 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A061265.P255566288050476364

namespace A061265

/-- `log2(Δ[A161188(n+1)])` -/
def P255566288050476364.Spec : Prop :=
  ∀ n, P255566288050476364.a n = (A061265 (n + 1) : ℝ)

end A061265

/-! ## A061265.P9562359027117553496

`1-Δ[A103355(n+1)]`
-/

namespace A061265.P9562359027117553496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A061265.P9562359027117553496

namespace A061265

/-- `1-Δ[A103355(n+1)]` -/
def P9562359027117553496.Spec : Prop :=
  ∀ n, P9562359027117553496.a n = A061265 (n + 1)

theorem P9562359027117553496.correct : P9562359027117553496.Spec := by
  intro n
  simp only [A061265, Nat.add_sub_cancel, A061265.P9562359027117553496.f1, A061265.P9562359027117553496.a, A061265.P9822959738043357081.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A103355, A103355.P17909756641454416049.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061265

/-! ## A061265.P10606460332257427958

`Δ[A096494(n+1)/2]`
-/

namespace A061265.P10606460332257427958
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096494 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061265.P10606460332257427958

namespace A061265

/-- `Δ[A096494(n+1)/2]` -/
def P10606460332257427958.Spec : Prop :=
  ∀ n, P10606460332257427958.a n = (A061265 (n + 1) : ℚ)

end A061265

/-!
# A061266: Number of squares between n^3 and (n+1)^3.

The programs for A061266, the canonical program `A061266.P15189106547569459537` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061266 has offset 1).

The definition of A061266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061266.P15189106547569459537

`floor(sqrt((n+2)^3-1))-floor(sqrt((n+1)^3))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061266

/-- `floor(sqrt((n+2)^3-1))-floor(sqrt((n+1)^3))` -/
def P15189106547569459537.Spec : Prop :=
  ∀ n, P15189106547569459537.a n = A061266 (n + 1)

theorem P15189106547569459537.correct : P15189106547569459537.Spec := by
  intro n
  simp only [A061266, Nat.add_sub_cancel]

end A061266

/-! ## A061266.P4160835815585934107

`Δ[A185595(n+1)]`
-/

namespace A061266.P4160835815585934107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061266.P4160835815585934107

namespace A061266

/-- `Δ[A185595(n+1)]` -/
def P4160835815585934107.Spec : Prop :=
  ∀ n, P4160835815585934107.a n = A061266 (n + 1)

end A061266

/-! ## A061266.P9879505142313727637

`Δ[A185549(n+1)-A000196(n)]`
-/

namespace A061266.P9879505142313727637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 (n + 1) - A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061266.P9879505142313727637

namespace A061266

/-- `Δ[A185549(n+1)-A000196(n)]` -/
def P9879505142313727637.Spec : Prop :=
  ∀ n, P9879505142313727637.a n = A061266 (n + 1)

end A061266

/-! ## A061266.P13971777891341948690

`Δ[∑[A035936(n)]-A000196(n+1)]`
-/

namespace A061266.P13971777891341948690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061266.P13971777891341948690

namespace A061266

/-- `Δ[∑[A035936(n)]-A000196(n+1)]` -/
def P13971777891341948690.Spec : Prop :=
  ∀ n, P13971777891341948690.a n = A061266 (n + 1)

end A061266

/-! ## A061266.P6331007520040366917

`Δ[A077121(n+1)-A000196(n+1)]`
-/

namespace A061266.P6331007520040366917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077121 (n + 1) - A000196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061266.P6331007520040366917

namespace A061266

/-- `Δ[A077121(n+1)-A000196(n+1)]` -/
def P6331007520040366917.Spec : Prop :=
  ∀ n, P6331007520040366917.a n = A061266 (n + 1)

end A061266

/-! ## A061266.P13067191250586261642

`Δ[A074704(n+1)+n*A000196(n+1)]`
-/

namespace A061266.P13067191250586261642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074704 (n + 1) + (n : ℤ) * A000196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061266.P13067191250586261642

namespace A061266

/-- `Δ[A074704(n+1)+n*A000196(n+1)]` -/
def P13067191250586261642.Spec : Prop :=
  ∀ n, P13067191250586261642.a n = A061266 (n + 1)

end A061266

/-! ## A061266.P404688401004629935

`Δ[A000093(n+1)-A000196(n+1)]`
-/

namespace A061266.P404688401004629935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (n + 1) - A000196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061266.P404688401004629935

namespace A061266

/-- `Δ[A000093(n+1)-A000196(n+1)]` -/
def P404688401004629935.Spec : Prop :=
  ∀ n, P404688401004629935.a n = A061266 (n + 1)

end A061266

/-!
# A061267: Squares whose sum of digits as well as product of digits is a nonzero square.

The programs for A061267, there is no canonical definition to state claims against.
-/

/-! ## A061267.P11374543278173593569

`∩[A053059(n+1), A061869(n+1)]`
-/

namespace A061267.P11374543278173593569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061267.P11374543278173593569

/-! ## A061267.P422326034355688570

`∩[A053059(n+1), A061868(n+1)²]`
-/

namespace A061267.P422326034355688570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061267.P422326034355688570

/-! ## A061267.P13572174873237362311

`∩[A061868(n+1), A066733(n+1)]²`
-/

namespace A061267.P13572174873237362311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A061267.P13572174873237362311

/-! ## A061267.P8544069065098684646

`∩[A053057(n+1), A053059(n+1)]`
-/

namespace A061267.P8544069065098684646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061267.P8544069065098684646

/-! ## A061267.P9156621430570045732

`∩[A061910(n+1), A066733(n+1)]²`
-/

namespace A061267.P9156621430570045732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A061267.P9156621430570045732

/-! ## A061267.P10219138776077599011

`A061268(n+1)²`
-/

namespace A061267.P10219138776077599011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061268 (n + 1) ^ 2

end

end A061267.P10219138776077599011

/-! ## A061267.P8284351575297045971

`A061268(A000027(n+1))^2`
-/

namespace A061267.P8284351575297045971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061268 (A000027 (n + 1)).toNat ^ 2

end

end A061267.P8284351575297045971

/-! ## A061267.P17445499883745584663

`A061268(n+1)^A089120(2*n+1)`
-/

namespace A061267.P17445499883745584663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061268 (n + 1) : ℚ) ^ (A089120 (2 * n + 1) : ℤ)

end

end A061267.P17445499883745584663

/-! ## A061267.P15949383512268879916

`A061268(n+1)^A000005(A061303(n))`
-/

namespace A061267.P15949383512268879916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061268 (n + 1) : ℚ) ^ (A000005 (A061303 n).toNat : ℤ)

end

end A061267.P15949383512268879916

/-! ## A061267.P16082122145033290289

`A061268(A000027(n+1))*A061268(n+1)`
-/

namespace A061267.P16082122145033290289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061268 (A000027 (n + 1)).toNat * A061268 (n + 1)

end

end A061267.P16082122145033290289

/-! ## A061267.P10528500402661297359

`∩[A052041(n+1), A061869(n+1)]`
-/

namespace A061267.P10528500402661297359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061267.P10528500402661297359

/-! ## A061267.P17267040707715508570

`∩[A052040(n+1), A061868(n+1)]²`
-/

namespace A061267.P17267040707715508570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A061267.P17267040707715508570

/-!
# A061268: Numbers k such that k^2 has property that the sum of its digits and the product of its digits are nonzero squares.

The programs for A061268, there is no canonical definition to state claims against.
-/

/-! ## A061268.P14861732170758349678

`sqrt(A061267(n+1))`
-/

namespace A061268.P14861732170758349678
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061267 (n + 1) : ℝ)

end

end A061268.P14861732170758349678

/-! ## A061268.P2084166217705255975

`root(A061267(C(n+1, n)), 2)`
-/

namespace A061268.P2084166217705255975
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A061267 (Nat.choose (n + 1) n) : ℝ) ^ (1 / (2 : ℝ))

end

end A061268.P2084166217705255975

/-! ## A061268.P16617919305647954651

`root(A061267(and(n+1, -1)), 2)`
-/

namespace A061268.P16617919305647954651
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A061267 (Int.land (n + 1 : ℤ) (-1)).toNat : ℝ) ^ (1 / (2 : ℝ))

end

end A061268.P16617919305647954651

/-! ## A061268.P14621880012335947280

`A061267(n+1)^(A057427(n)/2)`
-/

namespace A061268.P14621880012335947280
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A061267 (n + 1) : ℝ) ^ ((A057427 n : ℚ) / 2 : ℝ)

end

end A061268.P14621880012335947280

/-! ## A061268.P7872768100778120718

`∩[A061868(n+1), A066733(n+1)]`
-/

namespace A061268.P7872768100778120718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061268.P7872768100778120718

/-! ## A061268.P18055565175997621597

`∩[A061910(n+1), A066733(n+1)]`
-/

namespace A061268.P18055565175997621597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061268.P18055565175997621597

/-! ## A061268.P4013887140158271177

`∩[A066733(n+1), A215618(n+1)]`
-/

namespace A061268.P4013887140158271177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061268.P4013887140158271177

/-! ## A061268.P12774387331733231458

`root(A061267(n+1), 2)%A000045(n+10)`
-/

namespace A061268.P12774387331733231458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A061267 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000045 (n + 10))

end

end A061268.P12774387331733231458

/-! ## A061268.P14996782471117364246

`A151949(A000120(n))+root(A061267(n+1), 2)`
-/

namespace A061268.P14996782471117364246
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A151949 (A000120 n).toNat : ℝ) + (A061267 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A061268.P14996782471117364246

/-! ## A061268.P4955393674643799586

`A000122(A003631(n+1))+root(A061267(n+1), 2)`
-/

namespace A061268.P4955393674643799586
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000122 (A003631 (n + 1)).toNat : ℝ) + (A061267 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A061268.P4955393674643799586

/-! ## A061268.P9702092624708902253

`A053471(A191019(n+1))+root(A061267(n+1), 2)`
-/

namespace A061268.P9702092624708902253
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053471 (A191019 (n + 1)).toNat : ℝ) + (A061267 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A061268.P9702092624708902253

/-! ## A061268.P12522989022038262666

`∩[A052040(n+1), A061868(n+1)]`
-/

namespace A061268.P12522989022038262666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061268.P12522989022038262666

/-!
# A061269: Squares with nonzero digits such that (1) each digit is a square and (2) the sum of the digits is a square.

The programs for A061269, there is no canonical definition to state claims against.
-/

/-! ## A061269.P5966219171196174755

`A061267(comp[∑[n-5]])`
-/

namespace A061269.P5966219171196174755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061267 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A061269.P5966219171196174755

/-!
# A061270: Squares such that each digit is a square and the sum of the digits is a square.

The programs for A061270, there is no canonical definition to state claims against.
-/

/-! ## A061270.P13134972259237428933

`∩[A019544(n+1), A061869(n+1)]`
-/

namespace A061270.P13134972259237428933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061270.P13134972259237428933

/-! ## A061270.P1904619724715000671

`∩[A019544(n+1), A053057(n+1)]`
-/

namespace A061270.P1904619724715000671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061270.P1904619724715000671

/-! ## A061270.P8142903741705582002

`∩[A019544(n+1), A169889(n+1)]`
-/

namespace A061270.P8142903741705582002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061270.P8142903741705582002

/-! ## A061270.P2883073434581528482

`∩[A019544(n+1), A356417(n+1)]`
-/

namespace A061270.P2883073434581528482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061270.P2883073434581528482

/-! ## A061270.P18170716077768308028

`∩[A019544(n+1), A306273(n+1)]`
-/

namespace A061270.P18170716077768308028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061270.P18170716077768308028

/-!
# A061272: Squares such that (1) each digit is a square, (2) the sum of squares of the digits is a square.

The programs for A061272, there is no canonical definition to state claims against.
-/

/-! ## A061272.P17123718535783315126

`∩[A019544(n+1), A175396(n+1)]`
-/

namespace A061272.P17123718535783315126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061272.P17123718535783315126

/-! ## A061272.P9447451996371738558

`∩[A175396(n+1), A285550(n+1)²]`
-/

namespace A061272.P9447451996371738558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285550 (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061272.P9447451996371738558

/-! ## A061272.P17118392651265580640

`∩[A018885(n+1), A061362(n+1)]`
-/

namespace A061272.P17118392651265580640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061272.P17118392651265580640

/-!
# A061273: Number of primes between successive powers of e (= 2.718281828...).

The programs for A061273, there is no canonical definition to state claims against.
-/

/-! ## A061273.P12297338218031778639

`Δ[A040014(n)]`
-/

namespace A061273.P12297338218031778639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061273.P12297338218031778639

/-! ## A061273.P15596909658597165039

`A040014(n+1)-A040014(n)`
-/

namespace A061273.P15596909658597165039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040014 (n + 1) - A040014 n

end

end A061273.P15596909658597165039

/-! ## A061273.P12220211768247570747

`record[A040014(A027656(n))]-A040014(n)`
-/

namespace A061273.P12220211768247570747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040014 (A027656 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A040014 n

end

end A061273.P12220211768247570747

/-! ## A061273.P7178004900458373221

`Δ[A000720(floor(exp(n)))]`
-/

namespace A061273.P7178004900458373221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌊Real.exp (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061273.P7178004900458373221

/-!
# A061274: Number of primes between Pi^(n-1) and Pi^n.

The programs for A061274, the canonical program `A061274.P8702699645916910216` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061274 has offset 1).

The definition of A061274 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071973, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A061274.P8702699645916910216

`A071973(n+1)-A071973(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061274

/-- `A071973(n+1)-A071973(n)` -/
def P8702699645916910216.Spec : Prop :=
  ∀ n, P8702699645916910216.a n = A061274 (n + 1)

theorem P8702699645916910216.correct : P8702699645916910216.Spec := by
  intro n
  simp only [A061274, Nat.add_sub_cancel]

end A061274

/-! ## A061274.P17678087770072984882

`Δ[A071973(n)]`
-/

namespace A061274.P17678087770072984882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061274.P17678087770072984882

namespace A061274

/-- `Δ[A071973(n)]` -/
def P17678087770072984882.Spec : Prop :=
  ∀ n, P17678087770072984882.a n = A061274 (n + 1)

theorem P17678087770072984882.correct : P17678087770072984882.Spec := by
  intro n
  simp only [A061274, Nat.add_sub_cancel, A061274.P17678087770072984882.f1, A061274.P17678087770072984882.a, A061274.P8702699645916910216.a, SequenceMachineLib.memo_apply]

end A061274

/-! ## A061274.P16216960868074675645

`A071973(A008619(2*n))-A000720(floor(π^n))`
-/

namespace A061274.P16216960868074675645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071973 (A008619 (2 * n)).toNat - A000720 ⌊Real.pi ^ n⌋.toNat

end

end A061274.P16216960868074675645

namespace A061274

/-- `A071973(A008619(2*n))-A000720(floor(π^n))` -/
def P16216960868074675645.Spec : Prop :=
  ∀ n, P16216960868074675645.a n = A061274 (n + 1)

end A061274

/-! ## A061274.P12779228719199731861

`Δ[A000720(floor(π^n))]`
-/

namespace A061274.P12779228719199731861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌊Real.pi ^ n⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061274.P12779228719199731861

namespace A061274

/-- `Δ[A000720(floor(π^n))]` -/
def P12779228719199731861.Spec : Prop :=
  ∀ n, P12779228719199731861.a n = A061274 (n + 1)

end A061274

/-! ## A061274.P12640845304615093407

`Δ[A061395(A074497(n))]`
-/

namespace A061274.P12640845304615093407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A074497 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061274.P12640845304615093407

namespace A061274

/-- `Δ[A061395(A074497(n))]` -/
def P12640845304615093407.Spec : Prop :=
  ∀ n, P12640845304615093407.a n = A061274 (n + 1)

end A061274

/-!
# A061275: Smaller of two consecutive primes whose sum is a square.

The programs for A061275, there is no canonical definition to state claims against.
-/

/-! ## A061275.P10670567946837498190

`A000040(A064397(n+1))`
-/

namespace A061275.P10670567946837498190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A064397 (n + 1)).toNat

end

end A061275.P10670567946837498190

/-! ## A061275.P7585414567208115559

`A062703(n+1)-A118591(n+1)`
-/

namespace A061275.P7585414567208115559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062703 (n + 1) - A118591 (n + 1)

end

end A061275.P7585414567208115559

/-! ## A061275.P8031328024932180087

`A074924(n+1)²-A118591(n+1)`
-/

namespace A061275.P8031328024932180087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (n + 1) ^ 2 - A118591 (n + 1)

end

end A061275.P8031328024932180087

/-! ## A061275.P4768899610316121687

`record[A074924(A324347(n))²]%A118591(n+1)`
-/

namespace A061275.P4768899610316121687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (A324347 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A118591 (n + 1))

end

end A061275.P4768899610316121687

/-! ## A061275.P2529193121003319511

`A074924(A000027(n+1))²%A118591(n+1)`
-/

namespace A061275.P2529193121003319511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074924 (A000027 (n + 1)).toNat ^ 2) (A118591 (n + 1))

end

end A061275.P2529193121003319511

/-! ## A061275.P5119327369975829420

`A074924(n+1)+2*A298462(n+1)-A118591(n+1)`
-/

namespace A061275.P5119327369975829420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (n + 1) + 2 * A298462 (n + 1) - A118591 (n + 1)

end

end A061275.P5119327369975829420

/-! ## A061275.P16118231044562783220

`A074924(A000027(n+1))*A074924(n+1)-A118591(n+1)`
-/

namespace A061275.P16118231044562783220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (A000027 (n + 1)).toNat * A074924 (n + 1) - A118591 (n + 1)

end

end A061275.P16118231044562783220

/-! ## A061275.P4642854066065971040

`(2*A139013(n+1))²-A118591(n+1)`
-/

namespace A061275.P4642854066065971040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A139013 (n + 1)) ^ 2 - A118591 (n + 1)

end

end A061275.P4642854066065971040

/-! ## A061275.P5901484622039896839

`(2*A139013(n+1))^A020639(4*(n+1))-A118591(n+1)`
-/

namespace A061275.P5901484622039896839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A139013 (n + 1) : ℚ) ^ (A020639 (4 * (n + 1)) : ℤ) - (A118591 (n + 1) : ℚ)

end

end A061275.P5901484622039896839

/-! ## A061275.P6626187769971344415

`A016742(A139013(n+1))-A118591(n+1)`
-/

namespace A061275.P6626187769971344415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (A139013 (n + 1)).toNat - A118591 (n + 1)

end

end A061275.P6626187769971344415

/-! ## A061275.P10170929099508860203

`A103517(A139013(n+1)-1)²-A118591(n+1)`
-/

namespace A061275.P10170929099508860203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A139013 (n + 1) - 1).toNat ^ 2 - A118591 (n + 1)

end

end A061275.P10170929099508860203

/-! ## A061275.P5700313717944670579

`A000290(2*A139013(n+1))-A118591(n+1)`
-/

namespace A061275.P5700313717944670579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A139013 (n + 1)).toNat - A118591 (n + 1)

end

end A061275.P5700313717944670579

/-!
# A061276: Numbers that are sums of repdigits of their digits (see Comments for precise definition).

The programs for A061276, there is no canonical definition to state claims against.
-/

/-! ## A061276.P6194605709770215432

`record[A039723(and(n, A046469(n)))]`
-/

namespace A061276.P6194605709770215432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039723 (Int.land (n : ℤ) (A046469 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061276.P6194605709770215432

/-! ## A061276.P755802563051295720

`A051766(A292728(n+1))+n`
-/

namespace A061276.P755802563051295720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051766 (A292728 (n + 1)).toNat + (n : ℤ)

end

end A061276.P755802563051295720

/-! ## A061276.P8066247659891882077

`A307887(A056467(n+1))+n`
-/

namespace A061276.P8066247659891882077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307887 (A056467 (n + 1)).toNat + (n : ℤ)

end

end A061276.P8066247659891882077

/-! ## A061276.P18140283421785178239

`A332640(A147462(n+1))+n`
-/

namespace A061276.P18140283421785178239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332640 (A147462 (n + 1)).toNat + (n : ℤ)

end

end A061276.P18140283421785178239

/-! ## A061276.P10561789861500853642

`floor(A147268(A147244(n+3))/e+n)`
-/

namespace A061276.P10561789861500853642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A147268 (A147244 (n + 3)).toNat : ℝ) / Real.exp 1 + (n : ℝ)⌋

end

end A061276.P10561789861500853642

/-!
# A061278: a(n) = 5*a(n-1) - 5*a(n-2) + a(n-3) with a(1) = 1 and a(k) = 0 if k <= 0.

The programs for A061278, the canonical program `A061278.P11758963265108169364` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061278 has offset 0).

The definition of A061278 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-5*a(n-2)+a(n-3)` (program `A061278.P11758963265108169364`, by `A061278.P11758963265108169364.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061278.P18000376320581810301

`4*a(n-1)-a(n-2)+1` with `a(0)=0, a(1)=1`
-/

namespace A061278.P18000376320581810301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * a (n - 1) - a (n - 2) + 1

end

end A061278.P18000376320581810301

namespace A061278

/-- `4*a(n-1)-a(n-2)+1` -/
def P18000376320581810301.Spec : Prop :=
  ∀ n, P18000376320581810301.a n = A061278 n

end A061278

/-! ## A061278.P11758963265108169364

`5*a(n-1)-5*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061278

/-- `5*a(n-1)-5*a(n-2)+a(n-3)` -/
def P11758963265108169364.Spec : Prop :=
  ∀ n, P11758963265108169364.a n = A061278 n

theorem P11758963265108169364.correct : P11758963265108169364.Spec := by
  intro n
  simp only [A061278]

end A061278

/-! ## A061278.P7815487966327467943

`A101265(n+1)-1`
-/

namespace A061278.P7815487966327467943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101265 (n + 1) - 1

end

end A061278.P7815487966327467943

namespace A061278

/-- `A101265(n+1)-1` -/
def P7815487966327467943.Spec : Prop :=
  ∀ n, P7815487966327467943.a n = A061278 n

end A061278

/-! ## A061278.P10690918383545987808

`(A001835(n+1)-1)/2`
-/

namespace A061278.P10690918383545987808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001835 (n + 1) - 1 : ℚ) / 2

end

end A061278.P10690918383545987808

namespace A061278

/-- `(A001835(n+1)-1)/2` -/
def P10690918383545987808.Spec : Prop :=
  ∀ n, P10690918383545987808.a n = (A061278 n : ℚ)

end A061278

/-! ## A061278.P17538599014174501214

`a(n-1)+A001353(n)` with `a(0)=0`
-/

namespace A061278.P17538599014174501214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A001353 n

end

end A061278.P17538599014174501214

namespace A061278

/-- `a(n-1)+A001353(n)` -/
def P17538599014174501214.Spec : Prop :=
  ∀ n, P17538599014174501214.a n = A061278 n

end A061278

/-! ## A061278.P5442497777903902961

`A001075(n)-a(n-1)-1` with `a(0)=0`
-/

namespace A061278.P5442497777903902961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001075 n - a (n - 1) - 1

end

end A061278.P5442497777903902961

namespace A061278

/-- `A001075(n)-a(n-1)-1` -/
def P5442497777903902961.Spec : Prop :=
  ∀ n, P5442497777903902961.a n = A061278 n

end A061278

/-! ## A061278.P4795662099741751058

`A001834(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A061278.P4795662099741751058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A001834 (n - 1) + a (n - 2)

end

end A061278.P4795662099741751058

namespace A061278

/-- `A001834(n-1)+a(n-2)` -/
def P4795662099741751058.Spec : Prop :=
  ∀ n, P4795662099741751058.a n = A061278 n

end A061278

/-! ## A061278.P12830772665101250447

`(A001353(n+1)-A001353(n)-1)/2`
-/

namespace A061278.P12830772665101250447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001353 (n + 1) - A001353 n - 1 : ℚ) / 2

end

end A061278.P12830772665101250447

namespace A061278

/-- `(A001353(n+1)-A001353(n)-1)/2` -/
def P12830772665101250447.Spec : Prop :=
  ∀ n, P12830772665101250447.a n = (A061278 n : ℚ)

end A061278

/-! ## A061278.P1778627648692865053

`1/12*((3-sqrt(3))*(2-sqrt(3))^n+(3+sqrt(3))*(2+sqrt(3))^n-6)`
-/

namespace A061278.P1778627648692865053
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 12 : ℝ) * ((3 - Real.sqrt (3 : ℝ)) * (2 - Real.sqrt (3 : ℝ)) ^ n + (3 + Real.sqrt (3 : ℝ)) * (2 + Real.sqrt (3 : ℝ)) ^ n - 6)

end

end A061278.P1778627648692865053

namespace A061278

/-- `1/12*((3-sqrt(3))*(2-sqrt(3))^n+(3+sqrt(3))*(2+sqrt(3))^n-6)` -/
def P1778627648692865053.Spec : Prop :=
  ∀ n, P1778627648692865053.a n = (A061278 n : ℝ)

theorem P1778627648692865053.correct : P1778627648692865053.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A061278, Nat.add_sub_cancel, A061278.P1778627648692865053.a, A061278.P11758963265108169364.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A061278, Nat.add_sub_cancel, A061278.P1778627648692865053.a, A061278.P11758963265108169364.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A061278

/-! ## A061278.P8935836656676489606

`∑[ogf(x/(1-4x+x^2))]`
-/

namespace A061278.P8935836656676489606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061278.P8935836656676489606

namespace A061278

/-- `∑[ogf(x/(1-4x+x^2))]` -/
def P8935836656676489606.Spec : Prop :=
  ∀ n, P8935836656676489606.a n = A061278 n

end A061278

/-! ## A061278.P8933806865297441001

`ogf(x/(1-5x+5x^2-x^3))`
-/

namespace A061278.P8933806865297441001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -5, 5, -1] n

end

end A061278.P8933806865297441001

namespace A061278

/-- `ogf(x/(1-5x+5x^2-x^3))` -/
def P8933806865297441001.Spec : Prop :=
  ∀ n, P8933806865297441001.a n = A061278 n

end A061278

/-! ## A061278.P13275225244166209507

`ceil((sqrt(3)+2)*a(n-1))+1` with `a(0)=0`
-/

namespace A061278.P13275225244166209507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌉ + 1

end

end A061278.P13275225244166209507

namespace A061278

/-- `ceil((sqrt(3)+2)*a(n-1))+1` -/
def P13275225244166209507.Spec : Prop :=
  ∀ n, P13275225244166209507.a n = A061278 n

end A061278

/-! ## A061278.P7293532331162107788

`round((sqrt(3)+2)*a(n-1))+1` with `a(0)=0`
-/

namespace A061278.P7293532331162107788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)) + 1

end

end A061278.P7293532331162107788

namespace A061278

/-- `round((sqrt(3)+2)*a(n-1))+1` -/
def P7293532331162107788.Spec : Prop :=
  ∀ n, P7293532331162107788.a n = A061278 n

end A061278

/-! ## A061278.P2099658973482709011

`1-round(a(n-1)/(sqrt(3)-2))` with `a(0)=0`
-/

namespace A061278.P2099658973482709011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

end

end A061278.P2099658973482709011

namespace A061278

/-- `1-round(a(n-1)/(sqrt(3)-2))` -/
def P2099658973482709011.Spec : Prop :=
  ∀ n, P2099658973482709011.a n = A061278 n

end A061278

/-! ## A061278.P14281863420125892414

`floor((sqrt(3)+2)*a(n-1))+2` with `a(0)=0, a(1)=1`
-/

namespace A061278.P14281863420125892414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋ + 2

end

end A061278.P14281863420125892414

namespace A061278

/-- `floor((sqrt(3)+2)*a(n-1))+2` -/
def P14281863420125892414.Spec : Prop :=
  ∀ n, P14281863420125892414.a n = A061278 n

end A061278

/-! ## A061278.P7566261659441071066

`∑[4*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A061278.P7566261659441071066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  4 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061278.P7566261659441071066

namespace A061278

/-- `∑[4*a(n-1)-a(n-2)]` -/
def P7566261659441071066.Spec : Prop :=
  ∀ n, P7566261659441071066.a n = A061278 n

end A061278

/-! ## A061278.P9265275950637193071

`1-(a(n-2)-4*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A061278.P9265275950637193071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - (a (n - 2) - 4 * a (n - 1))

end

end A061278.P9265275950637193071

namespace A061278

/-- `1-(a(n-2)-4*a(n-1))` -/
def P9265275950637193071.Spec : Prop :=
  ∀ n, P9265275950637193071.a n = A061278 n

end A061278

/-! ## A061278.P11026251864467732276

`∑[A001353(n)]`
-/

namespace A061278.P11026251864467732276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061278.P11026251864467732276

namespace A061278

/-- `∑[A001353(n)]` -/
def P11026251864467732276.Spec : Prop :=
  ∀ n, P11026251864467732276.a n = A061278 n

end A061278

/-! ## A061278.P15794264596484659080

`∑[abs(A106707(n))]`
-/

namespace A061278.P15794264596484659080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106707 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061278.P15794264596484659080

namespace A061278

/-- `∑[abs(A106707(n))]` -/
def P15794264596484659080.Spec : Prop :=
  ∀ n, P15794264596484659080.a n = A061278 n

end A061278

/-! ## A061278.P8218225090419369534

`∑[A072110(n)-1]`
-/

namespace A061278.P8218225090419369534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072110 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061278.P8218225090419369534

namespace A061278

/-- `∑[A072110(n)-1]` -/
def P8218225090419369534.Spec : Prop :=
  ∀ n, P8218225090419369534.a n = A061278 n

end A061278

/-!
# A061279: a(n) = Sum_{k >= 0} 2^k * binomial(k+2,n-2*k).

The programs for A061279, the canonical program `A061279.P2040637913008576226` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061279 has offset 0).

The definition of A061279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061279.P2040637913008576226

`2*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061279

/-- `2*a(n-2)+2*a(n-3)` -/
def P2040637913008576226.Spec : Prop :=
  ∀ n, (P2040637913008576226.a n : ℤ) = A061279 n

theorem P2040637913008576226.correct : P2040637913008576226.Spec := by
  intro n
  simp only [A061279]

end A061279

/-! ## A061279.P13045506949444673556

`ogf((1+2x+x^2)/(1-2x^2-2x^3))`
-/

namespace A061279.P13045506949444673556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, 0, -2, -2] n

end

end A061279.P13045506949444673556

namespace A061279

/-- `ogf((1+2x+x^2)/(1-2x^2-2x^3))` -/
def P13045506949444673556.Spec : Prop :=
  ∀ n, P13045506949444673556.a n = A061279 n

end A061279

/-! ## A061279.P12346954028283583269

`2*(a(n-2)+a(n-3))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A061279.P12346954028283583269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  2 * (a (n - 2) + a (n - 3))

end

end A061279.P12346954028283583269

namespace A061279

/-- `2*(a(n-2)+a(n-3))` -/
def P12346954028283583269.Spec : Prop :=
  ∀ n, (P12346954028283583269.a n : ℤ) = A061279 n

theorem P12346954028283583269.correct : P12346954028283583269.Spec := by
  intro n
  simp only [A061279, Nat.add_sub_cancel, A061279.P12346954028283583269.a, A061279.P2040637913008576226.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A061279

/-! ## A061279.P3610352357082469678

`a(n-2)+a(n-2)+a(n-3)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A061279.P3610352357082469678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 3) + a (n - 3)))

end

end A061279.P3610352357082469678

namespace A061279

/-- `a(n-2)+a(n-2)+a(n-3)+a(n-3)` -/
def P3610352357082469678.Spec : Prop :=
  ∀ n, (P3610352357082469678.a n : ℤ) = A061279 n

theorem P3610352357082469678.correct : P3610352357082469678.Spec := by
  intro n
  simp only [A061279, Nat.add_sub_cancel, A061279.P3610352357082469678.a, A061279.P2040637913008576226.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A061279

/-! ## A061279.P9624597801076189662

`A247301(3*n+8)`
-/

namespace A061279.P9624597801076189662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247301 (3 * n + 8)

end

end A061279.P9624597801076189662

namespace A061279

/-- `A247301(3*n+8)` -/
def P9624597801076189662.Spec : Prop :=
  ∀ n, P9624597801076189662.a n = A061279 n

end A061279

/-! ## A061279.P5121322644588163641

`record[A247301(A014682(n))]`
-/

namespace A061279.P5121322644588163641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247301 (A014682 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061279.P5121322644588163641

namespace A061279

/-- `record[A247301(A014682(n))]` -/
def P5121322644588163641.Spec : Prop :=
  ∀ n, P5121322644588163641.a n = A061279 n

end A061279

/-! ## A061279.P16488461397718368783

`record[A247301(A173732(n))]`
-/

namespace A061279.P16488461397718368783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247301 (A173732 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061279.P16488461397718368783

namespace A061279

/-- `record[A247301(A173732(n))]` -/
def P16488461397718368783.Spec : Prop :=
  ∀ n, P16488461397718368783.a n = A061279 n

end A061279

/-! ## A061279.P1564760759247754651

`record[A247301(A061570(n+1))]`
-/

namespace A061279.P1564760759247754651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247301 (A061570 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061279.P1564760759247754651

namespace A061279

/-- `record[A247301(A061570(n+1))]` -/
def P1564760759247754651.Spec : Prop :=
  ∀ n, P1564760759247754651.a n = A061279 n

end A061279

/-! ## A061279.P11114733023170111478

`A107383(n+1)+A107383(n)`
-/

namespace A061279.P11114733023170111478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107383 (n + 1) + A107383 n

end

end A061279.P11114733023170111478

namespace A061279

/-- `A107383(n+1)+A107383(n)` -/
def P11114733023170111478.Spec : Prop :=
  ∀ n, P11114733023170111478.a n = A061279 n

end A061279

/-! ## A061279.P7739152716798857516

`A107383(n+3)/2`
-/

namespace A061279.P7739152716798857516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107383 (n + 3) : ℚ) / 2

end

end A061279.P7739152716798857516

namespace A061279

/-- `A107383(n+3)/2` -/
def P7739152716798857516.Spec : Prop :=
  ∀ n, P7739152716798857516.a n = (A061279 n : ℚ)

end A061279

/-! ## A061279.P9911718725800156359

`abs(A078025(n+2)/2)`
-/

namespace A061279.P9911718725800156359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A078025 (n + 2) : ℚ) / 2|

end

end A061279.P9911718725800156359

namespace A061279

/-- `abs(A078025(n+2)/2)` -/
def P9911718725800156359.Spec : Prop :=
  ∀ n, P9911718725800156359.a n = (A061279 n : ℚ)

end A061279

/-! ## A061279.P4666452446920796225

`record[A247301(n+12)/2]`
-/

namespace A061279.P4666452446920796225
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247301 (n + 12) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061279.P4666452446920796225

namespace A061279

/-- `record[A247301(n+12)/2]` -/
def P4666452446920796225.Spec : Prop :=
  ∀ n, P4666452446920796225.a n = (A061279 n : ℚ)

end A061279

/-! ## A061279.P13673948613169772745

`A287439(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A061279.P13673948613169772745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A287439 n - 2 * a (n - 1)

end

end A061279.P13673948613169772745

namespace A061279

/-- `A287439(n)-2*a(n-1)` -/
def P13673948613169772745.Spec : Prop :=
  ∀ n, P13673948613169772745.a n = A061279 n

end A061279

/-! ## A061279.P2447746241314738945

`Δ[A107383(n)+A077879(n)]`
-/

namespace A061279.P2447746241314738945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107383 n + A077879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061279.P2447746241314738945

namespace A061279

/-- `Δ[A107383(n)+A077879(n)]` -/
def P2447746241314738945.Spec : Prop :=
  ∀ n, P2447746241314738945.a n = A061279 n

end A061279

/-! ## A061279.P9246566019630785499

`A052907(n+4)/4`
-/

namespace A061279.P9246566019630785499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052907 (n + 4) : ℚ) / 4

end

end A061279.P9246566019630785499

namespace A061279

/-- `A052907(n+4)/4` -/
def P9246566019630785499.Spec : Prop :=
  ∀ n, P9246566019630785499.a n = (A061279 n : ℚ)

end A061279

/-! ## A061279.P1845107009949506413

`Δ[A077879(n+3)/4]`
-/

namespace A061279.P1845107009949506413
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077879 (n + 3) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061279.P1845107009949506413

namespace A061279

/-- `Δ[A077879(n+3)/4]` -/
def P1845107009949506413.Spec : Prop :=
  ∀ n, P1845107009949506413.a n = (A061279 n : ℚ)

end A061279

/-!
# A061281: Side of n-th equilateral triangle enclosing at least one point located at integer distances from the vertices.

The programs for A061281, there is no canonical definition to state claims against.
-/

/-! ## A061281.P10076150593193060287

`A131613(n+1)+A105704(A003623(2*n+5))`
-/

namespace A061281.P10076150593193060287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131613 (n + 1) + A105704 (A003623 (2 * n + 5)).toNat

end

end A061281.P10076150593193060287

/-!
# A061282: Minimal number of steps to get from 0 to n by (a) adding 1 or (b) multiplying by 3. A stopping problem: begin with n and at each stage if a multiple of 3 divide by 3, otherwise subtract 1.

The programs for A061282, the canonical program `A061282.P9828448224018063303` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061282 has offset 0).

The definition of A061282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061282.P9828448224018063303

`a(floor(n/3))+n%3+1` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061282

/-- `a(floor(n/3))+n%3+1` -/
def P9828448224018063303.Spec : Prop :=
  ∀ n, (P9828448224018063303.a n : ℤ) = A061282 n

theorem P9828448224018063303.correct : P9828448224018063303.Spec := by
  intro n
  simp only [A061282]

end A061282

/-! ## A061282.P8473293242536885717

`a(floor(n/3))+n-3*floor(n/3)+1` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A061282.P8473293242536885717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat + ((n : ℤ) - 3 * ⌊(n : ℚ) / 3⌋) + 1

end

end A061282.P8473293242536885717

namespace A061282

/-- `a(floor(n/3))+n-3*floor(n/3)+1` -/
def P8473293242536885717.Spec : Prop :=
  ∀ n, P8473293242536885717.a n = A061282 n

end A061282

/-! ## A061282.P2879913705337108517

`a(A260316(n))+1` with `a(0)=0`
-/

namespace A061282.P2879913705337108517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A260316 n).toNat + 1

end

end A061282.P2879913705337108517

namespace A061282

/-- `a(A260316(n))+1` -/
def P2879913705337108517.Spec : Prop :=
  ∀ n, (P2879913705337108517.a n : ℤ) = A061282 n

end A061282

/-! ## A061282.P15239782096246050721

`A053735(n)+A081604(n)-1`
-/

namespace A061282.P15239782096246050721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n + (A081604 n - 1)

end

end A061282.P15239782096246050721

namespace A061282

/-- `A053735(n)+A081604(n)-1` -/
def P15239782096246050721.Spec : Prop :=
  ∀ n, P15239782096246050721.a n = A061282 n

end A061282

/-! ## A061282.P16554638687063196636

`∑{digits}[A007089(n), A019565(#)]-1`
-/

namespace A061282.P16554638687063196636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A019565 x).sum - 1

end

end A061282.P16554638687063196636

namespace A061282

/-- `∑{digits}[A007089(n), A019565(#)]-1` -/
def P16554638687063196636.Spec : Prop :=
  ∀ n, P16554638687063196636.a n = A061282 n

end A061282

/-! ## A061282.P8229150506261823453

`∑{digits}[A007089(n), A276086(#)]-1`
-/

namespace A061282.P8229150506261823453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A276086 x).sum - 1

end

end A061282.P8229150506261823453

namespace A061282

/-- `∑{digits}[A007089(n), A276086(#)]-1` -/
def P8229150506261823453.Spec : Prop :=
  ∀ n, P8229150506261823453.a n = A061282 n

end A061282

/-! ## A061282.P8701315850428406244

`A062153(A028310(n))+A053735(n)`
-/

namespace A061282.P8701315850428406244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A028310 n).toNat + A053735 n

end

end A061282.P8701315850428406244

namespace A061282

/-- `A062153(A028310(n))+A053735(n)` -/
def P8701315850428406244.Spec : Prop :=
  ∀ n, P8701315850428406244.a n = A061282 n

end A061282

/-! ## A061282.P6480934591350908007

`A260112(A023717(n))`
-/

namespace A061282.P6480934591350908007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260112 (A023717 n).toNat

end

end A061282.P6480934591350908007

namespace A061282

/-- `A260112(A023717(n))` -/
def P6480934591350908007.Spec : Prop :=
  ∀ n, P6480934591350908007.a n = A061282 n

end A061282

/-! ## A061282.P7225689921036580439

`A075167(A101278(n))`
-/

namespace A061282.P7225689921036580439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (A101278 n).toNat

end

end A061282.P7225689921036580439

namespace A061282

/-- `A075167(A101278(n))` -/
def P7225689921036580439.Spec : Prop :=
  ∀ n, P7225689921036580439.a n = A061282 n

end A061282

/-! ## A061282.P1348749086801080913

`A075172(A305878(n))`
-/

namespace A061282.P1348749086801080913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075172 (A305878 n).toNat

end

end A061282.P1348749086801080913

namespace A061282

/-- `A075172(A305878(n))` -/
def P1348749086801080913.Spec : Prop :=
  ∀ n, P1348749086801080913.a n = A061282 n

end A061282

/-!
# A061283: Smallest number with exactly 2n-1 divisors.

The programs for A061283, there is no canonical definition to state claims against.
-/

/-! ## A061283.P13413332245687314332

`A016017(n+1)²`
-/

namespace A061283.P13413332245687314332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016017 (n + 1) ^ 2

end

end A061283.P13413332245687314332

/-! ## A061283.P1777445527994794073

`A005179(Δ[n²])`
-/

namespace A061283.P1777445527994794073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A061283.P1777445527994794073

/-! ## A061283.P4935077720609636182

`floor(sqrt(A145344(2*n+1)))²`
-/

namespace A061283.P4935077720609636182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A145344 (2 * n + 1)) ^ 2

end

end A061283.P4935077720609636182

/-! ## A061283.P12084357127678337184

`or(2, A005179(2*n+1))-2`
-/

namespace A061283.P12084357127678337184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A005179 (2 * n + 1)) - 2

end

end A061283.P12084357127678337184

/-! ## A061283.P16211214810331230551

`A005179(2*n+1)+A000007(n+1)`
-/

namespace A061283.P16211214810331230551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (2 * n + 1) + A000007 (n + 1)

end

end A061283.P16211214810331230551

/-! ## A061283.P5626584483156816490

`A005179(2*n+1)+A000038(n+1)`
-/

namespace A061283.P5626584483156816490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (2 * n + 1) + A000038 (n + 1)

end

end A061283.P5626584483156816490

/-! ## A061283.P9905726035040649434

`A005179(2*n+1)*A054977(n+1)`
-/

namespace A061283.P9905726035040649434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (2 * n + 1) * A054977 (n + 1)

end

end A061283.P9905726035040649434

/-! ## A061283.P5941853095039141117

`abs(A005179(2*n+1)*A057428(n+1))`
-/

namespace A061283.P5941853095039141117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005179 (2 * n + 1) * A057428 (n + 1)|

end

end A061283.P5941853095039141117

/-! ## A061283.P12944317034578311118

`A183063(2*n+1)+A005179(2*n+1)`
-/

namespace A061283.P12944317034578311118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * n + 1) + A005179 (2 * n + 1)

end

end A061283.P12944317034578311118

/-! ## A061283.P16554256582724222384

`A230403(2*n+1)+A005179(2*n+1)`
-/

namespace A061283.P16554256582724222384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230403 (2 * n + 1) + A005179 (2 * n + 1)

end

end A061283.P16554256582724222384

/-! ## A061283.P7095376205165079189

`A318608(2*(n+1))+A005179(2*n+1)`
-/

namespace A061283.P7095376205165079189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318608 (2 * (n + 1)) + A005179 (2 * n + 1)

end

end A061283.P7095376205165079189

/-! ## A061283.P15962811453875846369

`A001511(2*n+1)*A005179(2*n+1)`
-/

namespace A061283.P15962811453875846369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A005179 (2 * n + 1)

end

end A061283.P15962811453875846369

/-! ## A061283.P16012662212983585268

`A005179(2*n+1)*A057237(2*(n+1))`
-/

namespace A061283.P16012662212983585268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (2 * n + 1) * A057237 (2 * (n + 1))

end

end A061283.P16012662212983585268

/-! ## A061283.P14643421876324515290

`A005179(2*n+1)*A181801(2*n+1)`
-/

namespace A061283.P14643421876324515290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (2 * n + 1) * A181801 (2 * n + 1)

end

end A061283.P14643421876324515290

/-! ## A061283.P8407854791483937155

`A005179(2*n+1)*A258409(2*(n+1))`
-/

namespace A061283.P8407854791483937155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (2 * n + 1) * A258409 (2 * (n + 1))

end

end A061283.P8407854791483937155

/-! ## A061283.P2354254070093762017

`A322585(2*n+3)+A005179(2*n+1)`
-/

namespace A061283.P2354254070093762017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (2 * n + 3) + A005179 (2 * n + 1)

end

end A061283.P2354254070093762017

/-! ## A061283.P1475262695130049330

`A323509(2*n+3)+A005179(2*n+1)`
-/

namespace A061283.P1475262695130049330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323509 (2 * n + 3) + A005179 (2 * n + 1)

end

end A061283.P1475262695130049330

/-! ## A061283.P18087662935598502582

`A003680(2*n+1)/A140605(2*n+1)`
-/

namespace A061283.P18087662935598502582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003680 (2 * n + 1) : ℚ) / (A140605 (2 * n + 1) : ℚ)

end

end A061283.P18087662935598502582

/-! ## A061283.P1026306453801531191

`∏{e}[A000040(n+2), #*A005179(2*n+1)]`
-/

namespace A061283.P1026306453801531191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A005179 (2 * n + 1)

end

end A061283.P1026306453801531191

/-!
# A061285: a(n) = 2^((prime(n) - 1)/2).

The programs for A061285, the canonical program `A061285.P10609956706754571851` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061285 has offset 2).

The definition of A061285 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061285.P12800616591949573937

`2^((A000040(n+2)-1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A061285.P12800616591949573937
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((A000040 (n + 2) - 1 : ℚ) / 2 : ℝ)

end

end A061285.P12800616591949573937

namespace A061285

/-- `2^((A000040(n+2)-1)/2)` -/
def P12800616591949573937.Spec : Prop :=
  ∀ n, P12800616591949573937.a n = (A061285 (n + 2) : ℝ)

end A061285

/-! ## A061285.P10609956706754571851

`sqrt(A034785(n+2)/2)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061285

/-- `sqrt(A034785(n+2)/2)` -/
def P10609956706754571851.Spec : Prop :=
  ∀ n, P10609956706754571851.a n = (A061285 (n + 2) : ℝ)

end A061285

/-! ## A061285.P11630448722846342304

`sqrt(2^A006093(n+2))`
-/

namespace A061285.P11630448722846342304
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((2 : ℚ) ^ (A006093 (n + 2) : ℤ) : ℝ)

end

end A061285.P11630448722846342304

namespace A061285

/-- `sqrt(2^A006093(n+2))` -/
def P11630448722846342304.Spec : Prop :=
  ∀ n, P11630448722846342304.a n = (A061285 (n + 2) : ℝ)

end A061285

/-! ## A061285.P3090640616598312842

`sqrt(2^(A000040(n+2)-1))`
-/

namespace A061285.P3090640616598312842
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((2 : ℚ) ^ (A000040 (n + 2) - 1 : ℤ) : ℝ)

end

end A061285.P3090640616598312842

namespace A061285

/-- `sqrt(2^(A000040(n+2)-1))` -/
def P3090640616598312842.Spec : Prop :=
  ∀ n, P3090640616598312842.a n = (A061285 (n + 2) : ℝ)

end A061285

/-! ## A061285.P655831607657131804

`sqrt(2^A000010(A000040(n+2)))`
-/

namespace A061285.P655831607657131804
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((2 : ℚ) ^ (A000010 (A000040 (n + 2)).toNat : ℤ) : ℝ)

end

end A061285.P655831607657131804

namespace A061285

/-- `sqrt(2^A000010(A000040(n+2)))` -/
def P655831607657131804.Spec : Prop :=
  ∀ n, P655831607657131804.a n = (A061285 (n + 2) : ℝ)

end A061285

/-! ## A061285.P3496268681469357096

`2^floor(p?[2*n+1]/2)`
-/

namespace A061285.P3496268681469357096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌋ : ℤ)

end

end A061285.P3496268681469357096

namespace A061285

/-- `2^floor(p?[2*n+1]/2)` -/
def P3496268681469357096.Spec : Prop :=
  ∀ n, P3496268681469357096.a n = (A061285 (n + 2) : ℚ)

end A061285

/-! ## A061285.P14087088367176330068

`2^eq[1, ∑{e}[2*n+1, #]]`
-/

namespace A061285.P14087088367176330068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061285.P14087088367176330068

namespace A061285

/-- `2^eq[1, ∑{e}[2*n+1, #]]` -/
def P14087088367176330068.Spec : Prop :=
  ∀ n, (P14087088367176330068.a n : ℤ) = A061285 (n + 2)

end A061285

/-! ## A061285.P8973176998215259681

`2^((p?[2*n+1]-1)/2)`
-/

namespace A061285.P8973176998215259681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 : ℚ) / 2 : ℝ)

end

end A061285.P8973176998215259681

namespace A061285

/-- `2^((p?[2*n+1]-1)/2)` -/
def P8973176998215259681.Spec : Prop :=
  ∀ n, P8973176998215259681.a n = (A061285 (n + 2) : ℝ)

end A061285

/-! ## A061285.P2509156442367311389

`2^eq[2, ∏{e}[(2*n+1)², #]]`
-/

namespace A061285.P2509156442367311389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061285.P2509156442367311389

namespace A061285

/-- `2^eq[2, ∏{e}[(2*n+1)², #]]` -/
def P2509156442367311389.Spec : Prop :=
  ∀ n, (P2509156442367311389.a n : ℤ) = A061285 (n + 2)

end A061285

/-! ## A061285.P15919996271685420164

`2^lt[n+1, ∑{p}[2*n+1, #]]`
-/

namespace A061285.P15919996271685420164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061285.P15919996271685420164

namespace A061285

/-- `2^lt[n+1, ∑{p}[2*n+1, #]]` -/
def P15919996271685420164.Spec : Prop :=
  ∀ n, (P15919996271685420164.a n : ℤ) = A061285 (n + 2)

end A061285

/-! ## A061285.P4232105127543497058

`2^eq[2*n+1, ∑{p}[2*n+1, #]]`
-/

namespace A061285.P4232105127543497058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061285.P4232105127543497058

namespace A061285

/-- `2^eq[2*n+1, ∑{p}[2*n+1, #]]` -/
def P4232105127543497058.Spec : Prop :=
  ∀ n, (P4232105127543497058.a n : ℤ) = A061285 (n + 2)

end A061285

/-! ## A061285.P13837321254649415241

`2^eq[2*n+1, ∏{d}[2*n+1, -#]]`
-/

namespace A061285.P13837321254649415241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), (-(d : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061285.P13837321254649415241

namespace A061285

/-- `2^eq[2*n+1, ∏{d}[2*n+1, -#]]` -/
def P13837321254649415241.Spec : Prop :=
  ∀ n, (P13837321254649415241.a n : ℤ) = A061285 (n + 2)

end A061285

/-! ## A061285.P8763257543919688746

`Δ[A080567(n+1)]`
-/

namespace A061285.P8763257543919688746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061285.P8763257543919688746

namespace A061285

/-- `Δ[A080567(n+1)]` -/
def P8763257543919688746.Spec : Prop :=
  ∀ n, P8763257543919688746.a n = A061285 (n + 2)

end A061285

/-! ## A061285.P8267222329385829807

`record[A016017(n+2)]`
-/

namespace A061285.P8267222329385829807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061285.P8267222329385829807

namespace A061285

/-- `record[A016017(n+2)]` -/
def P8267222329385829807.Spec : Prop :=
  ∀ n, P8267222329385829807.a n = A061285 (n + 2)

end A061285

/-! ## A061285.P15751843748712487412

`2^Δ[A005521(n)]`
-/

namespace A061285.P15751843748712487412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005521 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A061285.P15751843748712487412

namespace A061285

/-- `2^Δ[A005521(n)]` -/
def P15751843748712487412.Spec : Prop :=
  ∀ n, P15751843748712487412.a n = (A061285 (n + 2) : ℚ)

end A061285

/-! ## A061285.P17917848973359303242

`2^A005097(n+1)`
-/

namespace A061285.P17917848973359303242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A005097 (n + 1) : ℤ)

end

end A061285.P17917848973359303242

namespace A061285

/-- `2^A005097(n+1)` -/
def P17917848973359303242.Spec : Prop :=
  ∀ n, P17917848973359303242.a n = (A061285 (n + 2) : ℚ)

end A061285

/-! ## A061285.P1729300133471465815

`2^A102781(n+2)`
-/

namespace A061285.P1729300133471465815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A102781 (n + 2) : ℤ)

end

end A061285.P1729300133471465815

namespace A061285

/-- `2^A102781(n+2)` -/
def P1729300133471465815.Spec : Prop :=
  ∀ n, P1729300133471465815.a n = (A061285 (n + 2) : ℚ)

end A061285

/-! ## A061285.P9558395124255176243

`2^A130290(n+2)`
-/

namespace A061285.P9558395124255176243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A130290 (n + 2) : ℤ)

end

end A061285.P9558395124255176243

namespace A061285

/-- `2^A130290(n+2)` -/
def P9558395124255176243.Spec : Prop :=
  ∀ n, P9558395124255176243.a n = (A061285 (n + 2) : ℚ)

end A061285

/-! ## A061285.P9271905633224100869

`A016116(p?[2*n+1])`
-/

namespace A061285.P9271905633224100869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A061285.P9271905633224100869

namespace A061285

/-- `A016116(p?[2*n+1])` -/
def P9271905633224100869.Spec : Prop :=
  ∀ n, P9271905633224100869.a n = A061285 (n + 2)

end A061285

/-! ## A061285.P1499736106988884682

`A045674(p?[2*n+1])`
-/

namespace A061285.P1499736106988884682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045674 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A061285.P1499736106988884682

namespace A061285

/-- `A045674(p?[2*n+1])` -/
def P1499736106988884682.Spec : Prop :=
  ∀ n, P1499736106988884682.a n = A061285 (n + 2)

end A061285

/-!
# A061286: Smallest integer for which the number of divisors is the n-th prime.

The programs for A061286, the canonical program `A061286.P17711368514956108922` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061286 has offset 1).

The definition of A061286 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061286.P17711368514956108922

`2^A006093(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061286

/-- `2^A006093(n+1)` -/
def P17711368514956108922.Spec : Prop :=
  ∀ n, P17711368514956108922.a n = (A061286 (n + 1) : ℚ)

end A061286

/-! ## A061286.P2764452638414988308

`2^(A000040(n+1)-1)`
-/

namespace A061286.P2764452638414988308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000040 (n + 1) - 1 : ℤ)

end

end A061286.P2764452638414988308

namespace A061286

/-- `2^(A000040(n+1)-1)` -/
def P2764452638414988308.Spec : Prop :=
  ∀ n, P2764452638414988308.a n = (A061286 (n + 1) : ℚ)

end A061286

/-! ## A061286.P5118629145008650105

`A005179(A000040(n+1))`
-/

namespace A061286.P5118629145008650105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A000040 (n + 1)).toNat

end

end A061286.P5118629145008650105

namespace A061286

/-- `A005179(A000040(n+1))` -/
def P5118629145008650105.Spec : Prop :=
  ∀ n, P5118629145008650105.a n = A061286 (n + 1)

end A061286

/-! ## A061286.P17597042930210203219

`record[2^∏{p}[n, #-1]]`
-/

namespace A061286.P17597042930210203219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061286.P17597042930210203219

namespace A061286

/-- `record[2^∏{p}[n, #-1]]` -/
def P17597042930210203219.Spec : Prop :=
  ∀ n, P17597042930210203219.a n = (A061286 (n + 1) : ℚ)

end A061286

/-! ## A061286.P8679345703110110312

`2^(p?[comp[n²]]-1)`
-/

namespace A061286.P8679345703110110312
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 : ℤ)

end

end A061286.P8679345703110110312

namespace A061286

/-- `2^(p?[comp[n²]]-1)` -/
def P8679345703110110312.Spec : Prop :=
  ∀ n, P8679345703110110312.a n = (A061286 (n + 1) : ℚ)

end A061286

/-! ## A061286.P4974070929648298612

`2^p?[comp[n²]]/2`
-/

namespace A061286.P4974070929648298612
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2

end

end A061286.P4974070929648298612

namespace A061286

/-- `2^p?[comp[n²]]/2` -/
def P4974070929648298612.Spec : Prop :=
  ∀ n, P4974070929648298612.a n = (A061286 (n + 1) : ℚ)

end A061286

/-! ## A061286.P6703064615777478376

`2^eq[1, ∑{e}[n+1, #]]`
-/

namespace A061286.P6703064615777478376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061286.P6703064615777478376

namespace A061286

/-- `2^eq[1, ∑{e}[n+1, #]]` -/
def P6703064615777478376.Spec : Prop :=
  ∀ n, (P6703064615777478376.a n : ℤ) = A061286 (n + 1)

end A061286

/-! ## A061286.P946053270818323910

`2^lt[n, ∑{p}[n+1, #]]`
-/

namespace A061286.P946053270818323910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061286.P946053270818323910

namespace A061286

/-- `2^lt[n, ∑{p}[n+1, #]]` -/
def P946053270818323910.Spec : Prop :=
  ∀ n, (P946053270818323910.a n : ℤ) = A061286 (n + 1)

end A061286

/-! ## A061286.P6712304712037325399

`record[2^∑{p}[n+2, #-1]]`
-/

namespace A061286.P6712304712037325399
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061286.P6712304712037325399

namespace A061286

/-- `record[2^∑{p}[n+2, #-1]]` -/
def P6712304712037325399.Spec : Prop :=
  ∀ n, P6712304712037325399.a n = (A061286 (n + 1) : ℚ)

end A061286

/-! ## A061286.P1998859036648725026

`record[2^∑{p}[n+2, #]/2]`
-/

namespace A061286.P1998859036648725026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ p ∈ Nat.primeFactors (f2 n), p) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061286.P1998859036648725026

namespace A061286

/-- `record[2^∑{p}[n+2, #]/2]` -/
def P1998859036648725026.Spec : Prop :=
  ∀ n, P1998859036648725026.a n = (A061286 (n + 1) : ℚ)

end A061286

/-!
# A061287: Integer part of square root of n-th Fibonacci number.

The programs for A061287, the canonical program `A061287.P16595364071046665369` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061287 has offset 0).

The definition of A061287 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061287.P16595364071046665369

`floor(sqrt(A000045(n)))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061287

/-- `floor(sqrt(A000045(n)))` -/
def P16595364071046665369.Spec : Prop :=
  ∀ n, P16595364071046665369.a n = A061287 n

theorem P16595364071046665369.correct : P16595364071046665369.Spec := by
  intro n
  simp only [A061287]

end A061287

/-! ## A061287.P10967723076951676345

`sqrt(A263727(n))`
-/

namespace A061287.P10967723076951676345
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A263727 n : ℝ)

end

end A061287.P10967723076951676345

namespace A061287

/-- `sqrt(A263727(n))` -/
def P10967723076951676345.Spec : Prop :=
  ∀ n, P10967723076951676345.a n = (A061287 n : ℝ)

end A061287

/-! ## A061287.P16610211132109338953

`floor(sqrt(A109522(n)))`
-/

namespace A061287.P16610211132109338953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A109522 n)

end

end A061287.P16610211132109338953

namespace A061287

/-- `floor(sqrt(A109522(n)))` -/
def P16610211132109338953.Spec : Prop :=
  ∀ n, P16610211132109338953.a n = A061287 n

end A061287

/-! ## A061287.P3410794915099970132

`floor(sqrt(A212804(n+1)))`
-/

namespace A061287.P3410794915099970132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A212804 (n + 1))

end

end A061287.P3410794915099970132

namespace A061287

/-- `floor(sqrt(A212804(n+1)))` -/
def P3410794915099970132.Spec : Prop :=
  ∀ n, P3410794915099970132.a n = A061287 n

end A061287

/-! ## A061287.P15592319582462101571

`floor(sqrt(A001611(n)-1))`
-/

namespace A061287.P15592319582462101571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001611 n - 1)

end

end A061287.P15592319582462101571

namespace A061287

/-- `floor(sqrt(A001611(n)-1))` -/
def P15592319582462101571.Spec : Prop :=
  ∀ n, P15592319582462101571.a n = A061287 n

theorem P15592319582462101571.correct : P15592319582462101571.Spec := by
  intro n
  simp only [A061287, Nat.add_sub_cancel, A061287.P15592319582462101571.a, A061287.P16595364071046665369.a, A000045, A000045.P11838749114346432762.a, A001611, A001611.P16593652898942925329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061287

/-! ## A061287.P5223635636639256657

`floor(sqrt(A157725(n)-2))`
-/

namespace A061287.P5223635636639256657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A157725 n - 2)

end

end A061287.P5223635636639256657

namespace A061287

/-- `floor(sqrt(A157725(n)-2))` -/
def P5223635636639256657.Spec : Prop :=
  ∀ n, P5223635636639256657.a n = A061287 n

theorem P5223635636639256657.correct : P5223635636639256657.Spec := by
  intro n
  simp only [A061287, Nat.add_sub_cancel, A061287.P5223635636639256657.a, A061287.P16595364071046665369.a, A000045, A000045.P11838749114346432762.a, A157725, A157725.P13486500630838488650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061287

/-! ## A061287.P4203807703673633470

`floor(sqrt(A103609(2*n)))`
-/

namespace A061287.P4203807703673633470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A103609 (2 * n))

end

end A061287.P4203807703673633470

namespace A061287

/-- `floor(sqrt(A103609(2*n)))` -/
def P4203807703673633470.Spec : Prop :=
  ∀ n, P4203807703673633470.a n = A061287 n

end A061287

/-! ## A061287.P210180249438669956

`floor(sqrt(A065220(n)+n))`
-/

namespace A061287.P210180249438669956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A065220 n + (n : ℤ))

end

end A061287.P210180249438669956

namespace A061287

/-- `floor(sqrt(A065220(n)+n))` -/
def P210180249438669956.Spec : Prop :=
  ∀ n, P210180249438669956.a n = A061287 n

theorem P210180249438669956.correct : P210180249438669956.Spec := by
  intro n
  simp only [A061287, Nat.add_sub_cancel, A061287.P210180249438669956.a, A061287.P16595364071046665369.a, A000045, A000045.P11838749114346432762.a, A065220, A065220.P6653459094866898540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061287

/-! ## A061287.P2634390989962549535

`floor(sqrt(A002062(n)-n))`
-/

namespace A061287.P2634390989962549535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002062 n - (n : ℤ))

end

end A061287.P2634390989962549535

namespace A061287

/-- `floor(sqrt(A002062(n)-n))` -/
def P2634390989962549535.Spec : Prop :=
  ∀ n, P2634390989962549535.a n = A061287 n

theorem P2634390989962549535.correct : P2634390989962549535.Spec := by
  intro n
  simp only [A061287, Nat.add_sub_cancel, A061287.P2634390989962549535.a, A061287.P16595364071046665369.a, A000045, A000045.P11838749114346432762.a, A002062, A002062.P4072436808255348786.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061287

/-! ## A061287.P8943700471422579026

`floor(sqrt(A160536(n)-n²))`
-/

namespace A061287.P8943700471422579026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A160536 n - (n ^ 2 : ℤ))

end

end A061287.P8943700471422579026

namespace A061287

/-- `floor(sqrt(A160536(n)-n²))` -/
def P8943700471422579026.Spec : Prop :=
  ∀ n, P8943700471422579026.a n = A061287 n

theorem P8943700471422579026.correct : P8943700471422579026.Spec := by
  intro n
  simp only [A061287, Nat.add_sub_cancel, A061287.P8943700471422579026.a, A061287.P16595364071046665369.a, A000045, A000045.P11838749114346432762.a, A160536, A160536.P8463650487165730283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A061287

/-! ## A061287.P10235274124689713152

`floor(sqrt(A129982(2*n+1)))`
-/

namespace A061287.P10235274124689713152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A129982 (2 * n + 1))

end

end A061287.P10235274124689713152

namespace A061287

/-- `floor(sqrt(A129982(2*n+1)))` -/
def P10235274124689713152.Spec : Prop :=
  ∀ n, P10235274124689713152.a n = A061287 n

end A061287

/-! ## A061287.P9645966501003274023

`floor(sqrt(A293545(n)+A293543(n)))`
-/

namespace A061287.P9645966501003274023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A293545 n + A293543 n)

end

end A061287.P9645966501003274023

namespace A061287

/-- `floor(sqrt(A293545(n)+A293543(n)))` -/
def P9645966501003274023.Spec : Prop :=
  ∀ n, P9645966501003274023.a n = A061287 n

end A061287

/-! ## A061287.P11400730962109248281

`floor(sqrt(3*A167816(n)/A167817(n)))`
-/

namespace A061287.P11400730962109248281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (3 * ((A167816 n : ℚ) / (A167817 n : ℚ)) : ℝ)⌋

end

end A061287.P11400730962109248281

namespace A061287

/-- `floor(sqrt(3*A167816(n)/A167817(n)))` -/
def P11400730962109248281.Spec : Prop :=
  ∀ n, P11400730962109248281.a n = A061287 n

end A061287

/-! ## A061287.P6798267134041984197

`floor(sqrt(A053602(2*n)))`
-/

namespace A061287.P6798267134041984197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A053602 (2 * n))

end

end A061287.P6798267134041984197

namespace A061287

/-- `floor(sqrt(A053602(2*n)))` -/
def P6798267134041984197.Spec : Prop :=
  ∀ n, P6798267134041984197.a n = A061287 n

end A061287

/-! ## A061287.P12495613108052979707

`floor(sqrt(A302126(2*n)))`
-/

namespace A061287.P12495613108052979707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A302126 (2 * n))

end

end A061287.P12495613108052979707

namespace A061287

/-- `floor(sqrt(A302126(2*n)))` -/
def P12495613108052979707.Spec : Prop :=
  ∀ n, P12495613108052979707.a n = A061287 n

end A061287

/-! ## A061287.P871749813662216133

`floor(sqrt(Δ[A000071(n+1)]))`
-/

namespace A061287.P871749813662216133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (n + 1) - f1 n)

end

end A061287.P871749813662216133

namespace A061287

/-- `floor(sqrt(Δ[A000071(n+1)]))` -/
def P871749813662216133.Spec : Prop :=
  ∀ n, P871749813662216133.a n = A061287 n

end A061287

/-! ## A061287.P17025003289735219682

`floor(sqrt(Δ[A001611(n+1)]))`
-/

namespace A061287.P17025003289735219682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (n + 1) - f1 n)

end

end A061287.P17025003289735219682

namespace A061287

/-- `floor(sqrt(Δ[A001611(n+1)]))` -/
def P17025003289735219682.Spec : Prop :=
  ∀ n, P17025003289735219682.a n = A061287 n

end A061287

/-! ## A061287.P10613597402338882959

`floor(sqrt(Δ[A157725(n+1)]))`
-/

namespace A061287.P10613597402338882959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (n + 1) - f1 n)

end

end A061287.P10613597402338882959

namespace A061287

/-- `floor(sqrt(Δ[A157725(n+1)]))` -/
def P10613597402338882959.Spec : Prop :=
  ∀ n, P10613597402338882959.a n = A061287 n

end A061287

/-! ## A061287.P9026093778308001137

`floor(sqrt(A303427(2*n+1)))`
-/

namespace A061287.P9026093778308001137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A303427 (2 * n + 1))

end

end A061287.P9026093778308001137

namespace A061287

/-- `floor(sqrt(A303427(2*n+1)))` -/
def P9026093778308001137.Spec : Prop :=
  ∀ n, P9026093778308001137.a n = A061287 n

end A061287

/-!
# A061288: Integer part of square root of n-th triangular number.

The programs for A061288, the canonical program `A061288.P6176697381631974922` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061288 has offset 1).

The definition of A061288 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061288.P6176697381631974922

`floor(sqrt((n+1)*(n+2)/2))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061288

/-- `floor(sqrt((n+1)*(n+2)/2))` -/
def P6176697381631974922.Spec : Prop :=
  ∀ n, P6176697381631974922.a n = A061288 (n + 1)

theorem P6176697381631974922.correct : P6176697381631974922.Spec := by
  intro n
  simp only [A061288, Nat.add_sub_cancel]

end A061288

/-! ## A061288.P17351253181983293098

`A186221(n+1)-(n+1)`
-/

namespace A061288.P17351253181983293098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186221 (n + 1) - (n + 1 : ℤ)

end

end A061288.P17351253181983293098

namespace A061288

/-- `A186221(n+1)-(n+1)` -/
def P17351253181983293098.Spec : Prop :=
  ∀ n, P17351253181983293098.a n = A061288 (n + 1)

theorem P17351253181983293098.correct : P17351253181983293098.Spec := by
  intro n
  simp only [A061288, Nat.add_sub_cancel, A061288.P17351253181983293098.a, A061288.P6176697381631974922.a, A186221, A186221.P4789931260051178945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A061288

/-! ## A061288.P16106908231769248872

`ceil(sqrt(C(n+2, 2)+1))-1`
-/

namespace A061288.P16106908231769248872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.choose (n + 2) 2 + 1 : ℝ)⌉ - 1

end

end A061288.P16106908231769248872

namespace A061288

/-- `ceil(sqrt(C(n+2, 2)+1))-1` -/
def P16106908231769248872.Spec : Prop :=
  ∀ n, P16106908231769248872.a n = A061288 (n + 1)

end A061288

/-! ## A061288.P9344922628500343432

`floor(sqrt(C(n+2, 2))+n)-n`
-/

namespace A061288.P9344922628500343432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Nat.choose (n + 2) 2 : ℝ) + (n : ℝ)⌋ - (n : ℤ)

end

end A061288.P9344922628500343432

namespace A061288

/-- `floor(sqrt(C(n+2, 2))+n)-n` -/
def P9344922628500343432.Spec : Prop :=
  ∀ n, P9344922628500343432.a n = A061288 (n + 1)

end A061288

/-! ## A061288.P17079714240872512504

`∑[char[A022846(n)-1]]`
-/

namespace A061288.P17079714240872512504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061288.P17079714240872512504

namespace A061288

/-- `∑[char[A022846(n)-1]]` -/
def P17079714240872512504.Spec : Prop :=
  ∀ n, (P17079714240872512504.a n : ℤ) = A061288 (n + 1)

end A061288

/-! ## A061288.P13343948508730455282

`ceil(A184117(n+1)/2)`
-/

namespace A061288.P13343948508730455282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A184117 (n + 1) : ℚ) / 2⌉

end

end A061288.P13343948508730455282

namespace A061288

/-- `ceil(A184117(n+1)/2)` -/
def P13343948508730455282.Spec : Prop :=
  ∀ n, P13343948508730455282.a n = A061288 (n + 1)

end A061288

/-! ## A061288.P9554201087126180360

`A097432(n+1)-A181534(n+1)`
-/

namespace A061288.P9554201087126180360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097432 (n + 1) - A181534 (n + 1)

end

end A061288.P9554201087126180360

namespace A061288

/-- `A097432(n+1)-A181534(n+1)` -/
def P9554201087126180360.Spec : Prop :=
  ∀ n, P9554201087126180360.a n = A061288 (n + 1)

theorem P9554201087126180360.correct : P9554201087126180360.Spec := by
  intro n
  simp only [A061288, Nat.add_sub_cancel, A061288.P9554201087126180360.a, A061288.P6176697381631974922.a, A097432, A097432.P16747754077029298528.f2, A097432.P16747754077029298528.f1, A097432.P16747754077029298528.a, A181534, A181534.P6465701493684644829.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A061288

/-! ## A061288.P667817784694673991

`sqrt(A065737(n+2))`
-/

namespace A061288.P667817784694673991
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065737 (n + 2) : ℝ)

end

end A061288.P667817784694673991

namespace A061288

/-- `sqrt(A065737(n+2))` -/
def P667817784694673991.Spec : Prop :=
  ∀ n, P667817784694673991.a n = (A061288 (n + 1) : ℝ)

end A061288

/-! ## A061288.P12296173265890699235

`A065033(A184117(n+1))`
-/

namespace A061288.P12296173265890699235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A184117 (n + 1)).toNat

end

end A061288.P12296173265890699235

namespace A061288

/-- `A065033(A184117(n+1))` -/
def P12296173265890699235.Spec : Prop :=
  ∀ n, P12296173265890699235.a n = A061288 (n + 1)

end A061288

/-! ## A061288.P9909538154986688359

`A004526(A001953(n+1))`
-/

namespace A061288.P9909538154986688359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001953 (n + 1)).toNat

end

end A061288.P9909538154986688359

namespace A061288

/-- `A004526(A001953(n+1))` -/
def P9909538154986688359.Spec : Prop :=
  ∀ n, P9909538154986688359.a n = A061288 (n + 1)

end A061288

/-! ## A061288.P9160039157449180783

`A004526(A097432(n+1))`
-/

namespace A061288.P9160039157449180783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A097432 (n + 1)).toNat

end

end A061288.P9160039157449180783

namespace A061288

/-- `A004526(A097432(n+1))` -/
def P9160039157449180783.Spec : Prop :=
  ∀ n, P9160039157449180783.a n = A061288 (n + 1)

end A061288

/-! ## A061288.P17118836489830294853

`A004526(∑[A001030(n+1)])`
-/

namespace A061288.P17118836489830294853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A061288.P17118836489830294853

namespace A061288

/-- `A004526(∑[A001030(n+1)])` -/
def P17118836489830294853.Spec : Prop :=
  ∀ n, P17118836489830294853.a n = A061288 (n + 1)

end A061288

/-! ## A061288.P4043914468592682540

`A004526(A184117(n+1)+1)`
-/

namespace A061288.P4043914468592682540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184117 (n + 1) + 1).toNat

end

end A061288.P4043914468592682540

namespace A061288

/-- `A004526(A184117(n+1)+1)` -/
def P4043914468592682540.Spec : Prop :=
  ∀ n, P4043914468592682540.a n = A061288 (n + 1)

end A061288

/-! ## A061288.P15179055656996470735

`A189574(A186221(n+1))`
-/

namespace A061288.P15179055656996470735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189574 (A186221 (n + 1)).toNat

end

end A061288.P15179055656996470735

namespace A061288

/-- `A189574(A186221(n+1))` -/
def P15179055656996470735.Spec : Prop :=
  ∀ n, P15179055656996470735.a n = A061288 (n + 1)

end A061288

/-! ## A061288.P13323945967327099903

`A088462(A081477(A088462(n+1))+n)`
-/

namespace A061288.P13323945967327099903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (A081477 (A088462 (n + 1)).toNat + (n : ℤ)).toNat

end

end A061288.P13323945967327099903

namespace A061288

/-- `A088462(A081477(A088462(n+1))+n)` -/
def P13323945967327099903.Spec : Prop :=
  ∀ n, P13323945967327099903.a n = A061288 (n + 1)

end A061288

/-! ## A061288.P5266353098467001396

`A172474(2*n+3)`
-/

namespace A061288.P5266353098467001396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (2 * n + 3)

end

end A061288.P5266353098467001396

namespace A061288

/-- `A172474(2*n+3)` -/
def P5266353098467001396.Spec : Prop :=
  ∀ n, P5266353098467001396.a n = A061288 (n + 1)

end A061288

/-! ## A061288.P14099843546265059741

`A194990(2*n+3)-1`
-/

namespace A061288.P14099843546265059741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 (2 * n + 3) - 1

end

end A061288.P14099843546265059741

namespace A061288

/-- `A194990(2*n+3)-1` -/
def P14099843546265059741.Spec : Prop :=
  ∀ n, P14099843546265059741.a n = A061288 (n + 1)

end A061288

/-! ## A061288.P6425966839323212193

`A183138(A086377(n+2))`
-/

namespace A061288.P6425966839323212193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183138 (A086377 (n + 2)).toNat

end

end A061288.P6425966839323212193

namespace A061288

/-- `A183138(A086377(n+2))` -/
def P6425966839323212193.Spec : Prop :=
  ∀ n, P6425966839323212193.a n = A061288 (n + 1)

end A061288

/-! ## A061288.P12800039398591779001

`A002265(A342281(n+1))`
-/

namespace A061288.P12800039398591779001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A342281 (n + 1)).toNat

end

end A061288.P12800039398591779001

namespace A061288

/-- `A002265(A342281(n+1))` -/
def P12800039398591779001.Spec : Prop :=
  ∀ n, P12800039398591779001.a n = A061288 (n + 1)

end A061288

/-!
# A061290: Square array read by antidiagonals of T(n,k) = T(n-1,k) + T(n-1, floor(k/2)) with T(0,0)=1.

The programs for A061290, there is no canonical definition to state claims against.
-/

/-! ## A061290.P17726527539706926249

`A059268(n)-A116433(A055645(n))`
-/

namespace A061290.P17726527539706926249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - A116433 (A055645 n).toNat

end

end A061290.P17726527539706926249

/-! ## A061290.P2795093946375294982

`A000079(A002262(n))-A116433(A055645(n))`
-/

namespace A061290.P2795093946375294982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat - A116433 (A055645 n).toNat

end

end A061290.P2795093946375294982

/-! ## A061290.P1827544875775956997

`A135517(A099627(n))-A116433(A055645(n))`
-/

namespace A061290.P1827544875775956997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 (A099627 n).toNat - A116433 (A055645 n).toNat

end

end A061290.P1827544875775956997

/-! ## A061290.P8188762784965355797

`A011782(A002260(n+1))-A116433(A055645(n))`
-/

namespace A061290.P8188762784965355797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat - A116433 (A055645 n).toNat

end

end A061290.P8188762784965355797

/-! ## A061290.P4189827802023266655

`A285189(A112906(n))`
-/

namespace A061290.P4189827802023266655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A112906 n).toNat

end

end A061290.P4189827802023266655

/-!
# A061291: a(1) = 1; a(n+1) = a(1) + a(2)*(a(2) + a(3)*(a(3) +...+a(n-1)*(a(n-1) + a(n))...)).

The programs for A061291, there is no canonical definition to state claims against.
-/

/-! ## A061291.P6074333236958665996

`A070820(a(n-1)²)` with `a(0)=1, a(1)=1`
-/

namespace A061291.P6074333236958665996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A070820 (a (n - 1) ^ 2).toNat

end

end A061291.P6074333236958665996

/-! ## A061291.P643407606084898928

`A191888(2*a(n-1)-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A061291.P643407606084898928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A191888 (2 * a (n - 1) - 1).toNat

end

end A061291.P643407606084898928

/-!
# A061292: a(n) = a(n-1)*a(n-2)*a(n-3) - a(n-4) for n>3 with a(0) = a(1) = a(2) = a(3) = 2.

The programs for A061292, the canonical program `A061292.P301922972088773126` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061292 has offset 0).

The definition of A061292 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)*a(n-3)-a(n-4)` (program `A061292.P301922972088773126`, by `A061292.P301922972088773126.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061292.P301922972088773126

`a(n-1)*a(n-2)*a(n-3)-a(n-4)` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061292

/-- `a(n-1)*a(n-2)*a(n-3)-a(n-4)` -/
def P301922972088773126.Spec : Prop :=
  ∀ n, P301922972088773126.a n = A061292 n

theorem P301922972088773126.correct : P301922972088773126.Spec := by
  intro n
  simp only [A061292]

end A061292

/-! ## A061292.P3932216709279132577

`2*A072878(n+1)`
-/

namespace A061292.P3932216709279132577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072878 (n + 1)

end

end A061292.P3932216709279132577

namespace A061292

/-- `2*A072878(n+1)` -/
def P3932216709279132577.Spec : Prop :=
  ∀ n, P3932216709279132577.a n = A061292 n

end A061292

/-! ## A061292.P16877098916522288381

`lcm(a(A336121(n)), A072878(n+1))` with `a(0)=2`
-/

namespace A061292.P16877098916522288381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (a (A336121 n).toNat : ℤ) (A072878 (n + 1))

end

end A061292.P16877098916522288381

namespace A061292

/-- `lcm(a(A336121(n)), A072878(n+1))` -/
def P16877098916522288381.Spec : Prop :=
  ∀ n, (P16877098916522288381.a n : ℤ) = A061292 n

end A061292

/-! ## A061292.P4295907516000658635

`lcm(A072866(A005843(n)), A072878(n+1))`
-/

namespace A061292.P4295907516000658635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A072866 (A005843 n).toNat) (A072878 (n + 1))

end

end A061292.P4295907516000658635

namespace A061292

/-- `lcm(A072866(A005843(n)), A072878(n+1))` -/
def P4295907516000658635.Spec : Prop :=
  ∀ n, (P4295907516000658635.a n : ℤ) = A061292 n

end A061292

/-! ## A061292.P15066282752404749947

`A072878(A000027(n+1))+A072878(n+1)`
-/

namespace A061292.P15066282752404749947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072878 (A000027 (n + 1)).toNat + A072878 (n + 1)

end

end A061292.P15066282752404749947

namespace A061292

/-- `A072878(A000027(n+1))+A072878(n+1)` -/
def P15066282752404749947.Spec : Prop :=
  ∀ n, P15066282752404749947.a n = A061292 n

end A061292

/-!
# A061293: a(n) = floor( n^e ), e = 2.718281828...

The programs for A061293, the canonical program `A061293.P6917598342678661140` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061293 has offset 1).

The definition of A061293 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)^e)` (program `A061293.P6917598342678661140`, by `A061293.P6917598342678661140.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061293.P6917598342678661140

`floor((n+1)^e)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061293

/-- `floor((n+1)^e)` -/
def P6917598342678661140.Spec : Prop :=
  ∀ n, P6917598342678661140.a n = A061293 (n + 1)

theorem P6917598342678661140.correct : P6917598342678661140.Spec := by
  intro n
  simp only [A061293, Nat.add_sub_cancel]

end A061293

/-! ## A061293.P16070093356034660562

`record[floor(abs(1-n)^e)]`
-/

namespace A061293.P16070093356034660562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|1 - (n : ℤ)| : ℝ) ^ (Real.exp 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061293.P16070093356034660562

namespace A061293

/-- `record[floor(abs(1-n)^e)]` -/
def P16070093356034660562.Spec : Prop :=
  ∀ n, P16070093356034660562.a n = A061293 (n + 1)

end A061293

/-! ## A061293.P8926419747484034486

`∑{e}[A002515(n+1), floor((n+1)^exp(#))]`
-/

namespace A061293.P8926419747484034486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ⌊(n + 1 : ℝ) ^ (Real.exp (Nat.factorization (f1 n).natAbs p : ℝ))⌋

end

end A061293.P8926419747484034486

namespace A061293

/-- `∑{e}[A002515(n+1), floor((n+1)^exp(#))]` -/
def P8926419747484034486.Spec : Prop :=
  ∀ n, P8926419747484034486.a n = A061293 (n + 1)

end A061293

/-! ## A061293.P1568137241087913635

`∑[A000027(Δ[floor(n^e)])]`
-/

namespace A061293.P1568137241087913635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ (Real.exp 1)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061293.P1568137241087913635

namespace A061293

/-- `∑[A000027(Δ[floor(n^e)])]` -/
def P1568137241087913635.Spec : Prop :=
  ∀ n, P1568137241087913635.a n = A061293 (n + 1)

end A061293

/-!
# A061294: a(n) = floor( n^Pi ).

The programs for A061294, the canonical program `A061294.P10957943104441182330` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061294 has offset 1).

The definition of A061294 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)^π)` (program `A061294.P10957943104441182330`, by `A061294.P10957943104441182330.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061294.P10957943104441182330

`floor((n+1)^π)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061294

/-- `floor((n+1)^π)` -/
def P10957943104441182330.Spec : Prop :=
  ∀ n, P10957943104441182330.a n = A061294 (n + 1)

theorem P10957943104441182330.correct : P10957943104441182330.Spec := by
  intro n
  simp only [A061294, Nat.add_sub_cancel]

end A061294

/-! ## A061294.P3744108740551559956

`record[floor(abs(1-n)^π)]`
-/

namespace A061294.P3744108740551559956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|1 - (n : ℤ)| : ℝ) ^ Real.pi⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061294.P3744108740551559956

namespace A061294

/-- `record[floor(abs(1-n)^π)]` -/
def P3744108740551559956.Spec : Prop :=
  ∀ n, P3744108740551559956.a n = A061294 (n + 1)

end A061294

/-! ## A061294.P819664013089356240

`∑[or(Δ[floor(n^π)], char[1])]`
-/

namespace A061294.P819664013089356240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ Real.pi⌋

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f2 (n + 1) - f2 n) ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061294.P819664013089356240

namespace A061294

/-- `∑[or(Δ[floor(n^π)], char[1])]` -/
def P819664013089356240.Spec : Prop :=
  ∀ n, P819664013089356240.a n = A061294 (n + 1)

end A061294

/-! ## A061294.P1784165558055694632

`∑[Δ[floor(n^π)]^(1-A000007(n))]`
-/

namespace A061294.P1784165558055694632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ Real.pi⌋

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) ^ (1 - A000007 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061294.P1784165558055694632

namespace A061294

/-- `∑[Δ[floor(n^π)]^(1-A000007(n))]` -/
def P1784165558055694632.Spec : Prop :=
  ∀ n, P1784165558055694632.a n = (A061294 (n + 1) : ℚ)

end A061294

/-! ## A061294.P10624864041219277864

`∑[A000041(((-1)^n)²)*Δ[floor(n^π)]]`
-/

namespace A061294.P10624864041219277864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ Real.pi⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (((-1) ^ n) ^ 2).toNat * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061294.P10624864041219277864

namespace A061294

/-- `∑[A000041(((-1)^n)²)*Δ[floor(n^π)]]` -/
def P10624864041219277864.Spec : Prop :=
  ∀ n, P10624864041219277864.a n = A061294 (n + 1)

end A061294

/-! ## A061294.P12508549868287921593

`A134925((n+1)²)`
-/

namespace A061294.P12508549868287921593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134925 ((n + 1) ^ 2)

end

end A061294.P12508549868287921593

namespace A061294

/-- `A134925((n+1)²)` -/
def P12508549868287921593.Spec : Prop :=
  ∀ n, P12508549868287921593.a n = A061294 (n + 1)

end A061294

/-!
# A061295: Minimal number of steps to get from 0 to n by (a) adding 1 or (b) subtracting 1 or (c) multiplying by 3.

The programs for A061295, there is no canonical definition to state claims against.
-/

/-! ## A061295.P4330519205656656265

`A081604(A233571(n+1))-A134023(n)`
-/

namespace A061295.P4330519205656656265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A233571 (n + 1)).toNat - A134023 n

end

end A061295.P4330519205656656265

/-! ## A061295.P18064671236911176050

`A005812(n)+A001221(A100777(n+1))`
-/

namespace A061295.P18064671236911176050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 n + A001221 (A100777 (n + 1)).toNat

end

end A061295.P18064671236911176050

/-! ## A061295.P111824251646834568

`A096198(record[A233277(A000201(n+1))])`
-/

namespace A061295.P111824251646834568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233277 (A000201 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096198 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A061295.P111824251646834568

/-! ## A061295.P11347603544088973600

`A185284(A265188(n+1))+A056796(n)`
-/

namespace A061295.P11347603544088973600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A265188 (n + 1)).toNat + A056796 n

end

end A061295.P11347603544088973600

/-! ## A061295.P7350576372543791505

`A061282(n)-A010052(A271531(2*n+5))`
-/

namespace A061295.P7350576372543791505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061282 n - A010052 (A271531 (2 * n + 5)).toNat

end

end A061295.P7350576372543791505

/-!
# A061297: a(n) = Sum_{ r = 0 to n} L(n,r), where L(n,r) (A067049) = lcm(n, n-1, n-2, ..., n-r+1)/lcm(1, 2, 3, ..., r).

The programs for A061297, there is no canonical definition to state claims against.
-/

/-! ## A061297.P327860341314332147

`A093431(floor(acot(a(n-1))+n))+1` with `a(0)=1`
-/

namespace A061297.P327860341314332147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A093431 ⌊SequenceMachineLib.acot (a (n - 1) : ℝ) + (n : ℝ)⌋.toNat + 1

end

end A061297.P327860341314332147

/-! ## A061297.P17868379255896949969

`A093431(floor(acot(n)+n))+A057427(n)`
-/

namespace A061297.P17868379255896949969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093431 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + A057427 n

end

end A061297.P17868379255896949969

/-! ## A061297.P18092177791960917409

`A093431(floor(acot(n)+n))-A057428(n)`
-/

namespace A061297.P18092177791960917409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093431 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat - A057428 n

end

end A061297.P18092177791960917409

/-! ## A061297.P1107736550060547342

`A093431(n)+a(gcd(2, A008574(n))-2)` with `a(0)=1`
-/

namespace A061297.P1107736550060547342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A093431 n + a (Int.gcd 2 (A008574 n) - 2)

end

end A061297.P1107736550060547342

/-! ## A061297.P13117464152550179146

`A093431(floor(acot(n)+n))-(A000007(n)-1)`
-/

namespace A061297.P13117464152550179146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093431 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat - (A000007 n - 1)

end

end A061297.P13117464152550179146

/-! ## A061297.P18130272150542190237

`A093431(A028310(n))+A000040(n+1)%2`
-/

namespace A061297.P18130272150542190237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093431 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A061297.P18130272150542190237

/-!
# A061298: Table by antidiagonals of rows of sequences where each row is binomial transform of preceding row and row 1 is (1,2,1,2,1,2,1,2,...).

The programs for A061298, the canonical program `A061298.P17489006373486682189` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061298 has offset 0).

The definition of A061298 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061298.P17489006373486682189

`(3*col(n)^(row(n)-col(n))-(col(n)-2)^(row(n)-col(n)))/2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061298

/-- `(3*col(n)^(row(n)-col(n))-(col(n)-2)^(row(n)-col(n)))/2` -/
def P17489006373486682189.Spec : Prop :=
  ∀ n, P17489006373486682189.a n = (A061298 n : ℚ)

end A061298

/-!
# A061299: Least number whose number of divisors is A007304(n) (the n-th number that is the product of 3 distinct primes).

The programs for A061299, there is no canonical definition to state claims against.
-/

/-! ## A061299.P6266675226060976215

`A005179(A007304(n+1))`
-/

namespace A061299.P6266675226060976215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A007304 (n + 1)).toNat

end

end A061299.P6266675226060976215

/-! ## A061299.P4233557804474129395

`A037019(A007304(2*n+1-n))`
-/

namespace A061299.P4233557804474129395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (A007304 (2 * n + 1 - n)).toNat

end

end A061299.P4233557804474129395

/-! ## A061299.P12938354482980420476

`A037019(A007304(n+1)%A139883(n+1))`
-/

namespace A061299.P12938354482980420476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (Int.tmod (A007304 (n + 1)) (A139883 (n + 1))).toNat

end

end A061299.P12938354482980420476

/-! ## A061299.P11006988098854642641

`lcm(A000005(n+1), A037019(A007304(n+1)))`
-/

namespace A061299.P11006988098854642641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (n + 1)) (A037019 (A007304 (n + 1)).toNat)

end

end A061299.P11006988098854642641

/-! ## A061299.P952530025062157330

`A037019(A007304(n+1))*A058281(A133263(n))`
-/

namespace A061299.P952530025062157330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (A007304 (n + 1)).toNat * A058281 (A133263 n).toNat

end

end A061299.P952530025062157330

