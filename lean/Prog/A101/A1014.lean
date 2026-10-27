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
import Seq.B001.C013
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
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
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
# A101400: a(n) = a(n-1) + 2*a(n-2) + a(n-3) - a(n-4).

The programs for A101400, the canonical program `A101400.P1282599316843606203` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101400 has offset 0).

The definition of A101400 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)+a(n-3)-a(n-4)` (program `A101400.P1282599316843606203`, by `A101400.P1282599316843606203.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101400.P1282599316843606203

`a(n-1)+2*a(n-2)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101400

/-- `a(n-1)+2*a(n-2)+a(n-3)-a(n-4)` -/
def P1282599316843606203.Spec : Prop :=
  ∀ n, P1282599316843606203.a n = A101400 n

theorem P1282599316843606203.correct : P1282599316843606203.Spec := by
  intro n
  simp only [A101400]

end A101400

/-! ## A101400.P7446597929020055710

`ogf((1+x+x^2)/(1-x-2x^2-x^3+x^4))`
-/

namespace A101400.P7446597929020055710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -1, -2, -1, 1] n

end

end A101400.P7446597929020055710

namespace A101400

/-- `ogf((1+x+x^2)/(1-x-2x^2-x^3+x^4))` -/
def P7446597929020055710.Spec : Prop :=
  ∀ n, P7446597929020055710.a n = A101400 n

end A101400

/-! ## A101400.P11102808100700555515

`A119749(n+1)+A092886(n)`
-/

namespace A101400.P11102808100700555515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119749 (n + 1) + A092886 n

end

end A101400.P11102808100700555515

namespace A101400

/-- `A119749(n+1)+A092886(n)` -/
def P11102808100700555515.Spec : Prop :=
  ∀ n, P11102808100700555515.a n = A101400 n

theorem P11102808100700555515.correct : P11102808100700555515.Spec := by
  intro n
  simp only [A101400, Nat.add_sub_cancel, A101400.P11102808100700555515.a, A101400.P1282599316843606203.a, A092886, A092886.P4573183649328464816.a, A119749, A119749.P8910904632272446904.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101400

/-! ## A101400.P9746052332912819507

`A119749(n+1)+A242510(n)-A105309(n)`
-/

namespace A101400.P9746052332912819507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119749 (n + 1) + (A242510 n - A105309 n)

end

end A101400.P9746052332912819507

namespace A101400

/-- `A119749(n+1)+A242510(n)-A105309(n)` -/
def P9746052332912819507.Spec : Prop :=
  ∀ n, P9746052332912819507.a n = A101400 n

end A101400

/-! ## A101400.P13434183857636149423

`A119749(n+1)+Δ[A240513(n+1)]-A242510(n)`
-/

namespace A101400.P13434183857636149423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119749 (n + 1) + (f1 (n + 1) - f1 n - A242510 n)

end

end A101400.P13434183857636149423

namespace A101400

/-- `A119749(n+1)+Δ[A240513(n+1)]-A242510(n)` -/
def P13434183857636149423.Spec : Prop :=
  ∀ n, P13434183857636149423.a n = A101400 n

end A101400

/-! ## A101400.P1688041859612651228

`A092886(n+4)-Δ[A300438(n+1)]`
-/

namespace A101400.P1688041859612651228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092886 (n + 4) - (f1 (n + 1) - f1 n)

end

end A101400.P1688041859612651228

namespace A101400

/-- `A092886(n+4)-Δ[A300438(n+1)]` -/
def P1688041859612651228.Spec : Prop :=
  ∀ n, P1688041859612651228.a n = A101400 n

end A101400

/-!
# A101401: Triangle read by rows: T(n,k) is the number of noncrossing trees with n edges in which the leftmost child of the root has degree k.

The programs for A101401, the canonical program `A101401.P2106944709702595955` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101401 has offset 1).

The definition of A101401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101401.P4214883888344300615

`(1-C(∑[char[∑[n]]], 2)+n)*A143603(n+1)`
-/

namespace A101401.P4214883888344300615
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A143603 (n + 1)

end

end A101401.P4214883888344300615

namespace A101401

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A143603(n+1)` -/
def P4214883888344300615.Spec : Prop :=
  ∀ n, P4214883888344300615.a n = A101401 (n + 1)

end A101401

/-! ## A101401.P2106944709702595955

`A002260(n+1)*A143603(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A101401

/-- `A002260(n+1)*A143603(n+1)` -/
def P2106944709702595955.Spec : Prop :=
  ∀ n, P2106944709702595955.a n = A101401 (n + 1)

theorem P2106944709702595955.correct : P2106944709702595955.Spec := by
  intro n
  simp only [A101401, Nat.add_sub_cancel]

end A101401

/-! ## A101401.P9000951973299002667

`(A002262(n)+1)*A143603(n+1)`
-/

namespace A101401.P9000951973299002667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A143603 (n + 1)

end

end A101401.P9000951973299002667

namespace A101401

/-- `(A002262(n)+1)*A143603(n+1)` -/
def P9000951973299002667.Spec : Prop :=
  ∀ n, P9000951973299002667.a n = A101401 (n + 1)

theorem P9000951973299002667.correct : P9000951973299002667.Spec := by
  intro n
  simp only [A101401, Nat.add_sub_cancel, A101401.P9000951973299002667.a, A101401.P2106944709702595955.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, A143603, A143603.P15760752056093343933.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A101401

/-! ## A101401.P18287821848605448959

`sqrt(A133819(n+1))*A143603(n+1)`
-/

namespace A101401.P18287821848605448959
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A143603 (n + 1) : ℝ)

end

end A101401.P18287821848605448959

namespace A101401

/-- `sqrt(A133819(n+1))*A143603(n+1)` -/
def P18287821848605448959.Spec : Prop :=
  ∀ n, P18287821848605448959.a n = (A101401 (n + 1) : ℝ)

end A101401

/-! ## A101401.P16052612020760601659

`A097285(2*n+1)*A143603(n+1)`
-/

namespace A101401.P16052612020760601659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * n + 1) * A143603 (n + 1)

end

end A101401.P16052612020760601659

namespace A101401

/-- `A097285(2*n+1)*A143603(n+1)` -/
def P16052612020760601659.Spec : Prop :=
  ∀ n, P16052612020760601659.a n = A101401 (n + 1)

end A101401

/-! ## A101401.P1532748558597834832

`A143603(n+1)*A349520(2*n+1)`
-/

namespace A101401.P1532748558597834832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143603 (n + 1) * A349520 (2 * n + 1)

end

end A101401.P1532748558597834832

namespace A101401

/-- `A143603(n+1)*A349520(2*n+1)` -/
def P1532748558597834832.Spec : Prop :=
  ∀ n, P1532748558597834832.a n = A101401 (n + 1)

end A101401

/-! ## A101401.P3728175277739331135

`(A092276(n+1)-A092276(n+2)%A092276(n+1))*A002260(n+1)`
-/

namespace A101401.P3728175277739331135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092276 (n + 1) - Int.tmod (A092276 (n + 2)) (A092276 (n + 1))) * A002260 (n + 1)

end

end A101401.P3728175277739331135

namespace A101401

/-- `(A092276(n+1)-A092276(n+2)%A092276(n+1))*A002260(n+1)` -/
def P3728175277739331135.Spec : Prop :=
  ∀ n, P3728175277739331135.a n = A101401 (n + 1)

end A101401

/-! ## A101401.P17904259465494745056

`A000005(A059268(n))*A143603(n+1)`
-/

namespace A101401.P17904259465494745056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A143603 (n + 1)

end

end A101401.P17904259465494745056

namespace A101401

/-- `A000005(A059268(n))*A143603(n+1)` -/
def P17904259465494745056.Spec : Prop :=
  ∀ n, P17904259465494745056.a n = A101401 (n + 1)

end A101401

/-! ## A101401.P18080244595666208251

`A003602(A054582(n))*A143603(n+1)`
-/

namespace A101401.P18080244595666208251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A054582 n).toNat * A143603 (n + 1)

end

end A101401.P18080244595666208251

namespace A101401

/-- `A003602(A054582(n))*A143603(n+1)` -/
def P18080244595666208251.Spec : Prop :=
  ∀ n, P18080244595666208251.a n = A101401 (n + 1)

end A101401

/-!
# A101402: a(0)=0, a(1)=1; for n>=2, let k = smallest power of 2 that is >= n, then a(n) = a(k/2) + a(n-1-k/2).

The programs for A101402, the canonical program `A101402.P15905755480955357529` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101402 has offset 0).

The definition of A101402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101402.P15905755480955357529

`a(A053644(n-1))+a(A053645(n-1))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A101402

/-- `a(A053644(n-1))+a(A053645(n-1))` -/
def P15905755480955357529.Spec : Prop :=
  ∀ n, (P15905755480955357529.a n : ℤ) = A101402 n

theorem P15905755480955357529.correct : P15905755480955357529.Spec := by
  intro n
  simp only [A101402]

end A101402

/-! ## A101402.P4770827001193270241

`∑[A164349(n)]`
-/

namespace A101402.P4770827001193270241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101402.P4770827001193270241

namespace A101402

/-- `∑[A164349(n)]` -/
def P4770827001193270241.Spec : Prop :=
  ∀ n, P4770827001193270241.a n = A101402 n

end A101402

/-! ## A101402.P3307744720665360620

`∑[char[∑[A101403(n)]]]`
-/

namespace A101402.P3307744720665360620
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101403 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101402.P3307744720665360620

namespace A101402

/-- `∑[char[∑[A101403(n)]]]` -/
def P3307744720665360620.Spec : Prop :=
  ∀ n, (P3307744720665360620.a n : ℤ) = A101402 n

end A101402

/-! ## A101402.P5822644557186246822

`∑[A101266(abs(1-n))]`
-/

namespace A101402.P5822644557186246822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101266 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101402.P5822644557186246822

namespace A101402

/-- `∑[A101266(abs(1-n))]` -/
def P5822644557186246822.Spec : Prop :=
  ∀ n, P5822644557186246822.a n = A101402 n

end A101402

/-! ## A101402.P3878755061737967794

`∑[char[A246439(n+1)]]`
-/

namespace A101402.P3878755061737967794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246439 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101402.P3878755061737967794

namespace A101402

/-- `∑[char[A246439(n+1)]]` -/
def P3878755061737967794.Spec : Prop :=
  ∀ n, (P3878755061737967794.a n : ℤ) = A101402 n

end A101402

/-! ## A101402.P3374004337196948962

`A101266(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A101402.P3374004337196948962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A101266 (n - 1) + a (n - 1)

end

end A101402.P3374004337196948962

namespace A101402

/-- `A101266(n-1)+a(n-1)` -/
def P3374004337196948962.Spec : Prop :=
  ∀ n, P3374004337196948962.a n = A101402 n

end A101402

/-! ## A101402.P15328666154001824842

`∑[A101266(n)]-A101266(n)`
-/

namespace A101402.P15328666154001824842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A101266 n

end

end A101402.P15328666154001824842

namespace A101402

/-- `∑[A101266(n)]-A101266(n)` -/
def P15328666154001824842.Spec : Prop :=
  ∀ n, P15328666154001824842.a n = A101402 n

end A101402

/-! ## A101402.P4008712322560803121

`A164349(n)+A061579(A061579(a(n-1)))` with `a(0)=0`
-/

namespace A101402.P4008712322560803121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A164349 n + A061579 (A061579 (a (n - 1)).toNat).toNat

end

end A101402.P4008712322560803121

namespace A101402

/-- `A164349(n)+A061579(A061579(a(n-1)))` -/
def P4008712322560803121.Spec : Prop :=
  ∀ n, P4008712322560803121.a n = A101402 n

end A101402

/-! ## A101402.P1611714573928614343

`A101433(n+1)-(A101433(n)+A101266(n))`
-/

namespace A101402.P1611714573928614343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101433 (n + 1) - (A101433 n + A101266 n)

end

end A101402.P1611714573928614343

namespace A101402

/-- `A101433(n+1)-(A101433(n)+A101266(n))` -/
def P1611714573928614343.Spec : Prop :=
  ∀ n, P1611714573928614343.a n = A101402 n

end A101402

/-! ## A101402.P15318876081570840003

`A101433(n+1)-(A164349(n+1)+A101433(n))`
-/

namespace A101402.P15318876081570840003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101433 (n + 1) - (A164349 (n + 1) + A101433 n)

end

end A101402.P15318876081570840003

namespace A101402

/-- `A101433(n+1)-(A164349(n+1)+A101433(n))` -/
def P15318876081570840003.Spec : Prop :=
  ∀ n, P15318876081570840003.a n = A101402 n

end A101402

/-! ## A101402.P14842943891822272108

`∑[log2(A293838(n+1))]`
-/

namespace A101402.P14842943891822272108
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A293838 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101402.P14842943891822272108

namespace A101402

/-- `∑[log2(A293838(n+1))]` -/
def P14842943891822272108.Spec : Prop :=
  ∀ n, P14842943891822272108.a n = (A101402 n : ℝ)

end A101402

/-!
# A101403: Number of times that n occurs in A101402.

The programs for A101403, the canonical program `A101403.P5867421329775423614` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101403 has offset 0).

The definition of A101403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5817 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101403.P14044488556579624088

`A101404(n)/(A102679(a(n-1))+n)` with `a(0)=1`
-/

namespace A101403.P14044488556579624088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A101404 n : ℚ) / (A102679 (SequenceMachineLib.roundAway (a (n - 1))).toNat + (n : ℤ) : ℚ)

end

end A101403.P14044488556579624088

namespace A101403

/-- `A101404(n)/(A102679(a(n-1))+n)` -/
def P14044488556579624088.Spec : Prop :=
  ∀ n, P14044488556579624088.a n = (A101403 n : ℚ)

end A101403

/-! ## A101403.P9368827527548081456

`round((A101404(n)+A000005(n+1))/(n+1))`
-/

namespace A101403.P9368827527548081456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A101404 n + A000005 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A101403.P9368827527548081456

namespace A101403

/-- `round((A101404(n)+A000005(n+1))/(n+1))` -/
def P9368827527548081456.Spec : Prop :=
  ∀ n, P9368827527548081456.a n = A101403 n

end A101403

/-! ## A101403.P11522688133864048758

`round((A116933(n+2)+A101404(n))/(n+1))`
-/

namespace A101403.P11522688133864048758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A116933 (n + 2) + A101404 n : ℚ) / (n + 1 : ℚ))

end

end A101403.P11522688133864048758

namespace A101403

/-- `round((A116933(n+2)+A101404(n))/(n+1))` -/
def P11522688133864048758.Spec : Prop :=
  ∀ n, P11522688133864048758.a n = A101403 n

end A101403

/-! ## A101403.P5867421329775423614

`A246439(n+1)-record[n*A164349(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A101403

/-- `A246439(n+1)-record[n*A164349(n)]` -/
def P5867421329775423614.Spec : Prop :=
  ∀ n, P5867421329775423614.a n = A101403 n

theorem P5867421329775423614.correct : P5867421329775423614.Spec := by
  intro n
  simp only [A101403]

end A101403

/-! ## A101403.P17410343268107809699

`Δ[record[n*A164349(n)]]`
-/

namespace A101403.P17410343268107809699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A164349 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101403.P17410343268107809699

namespace A101403

/-- `Δ[record[n*A164349(n)]]` -/
def P17410343268107809699.Spec : Prop :=
  ∀ n, P17410343268107809699.a n = A101403 n

end A101403

/-!
# A101404: a(n) = n*A101403(n).

The programs for A101404, the canonical program `A101404.P6201192539946373633` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101404 has offset 0).

The definition of A101404 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101403, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A101404.P6201192539946373633

`n*A101403(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A101404

/-- `n*A101403(n)` -/
def P6201192539946373633.Spec : Prop :=
  ∀ n, P6201192539946373633.a n = A101404 n

theorem P6201192539946373633.correct : P6201192539946373633.Spec := by
  intro n
  simp only [A101404]

end A101404

/-! ## A101404.P9394117778955932982

`n*(A246439(n+1)-record[n*A164349(n)])`
-/

namespace A101404.P9394117778955932982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A164349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A246439 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A101404.P9394117778955932982

namespace A101404

/-- `n*(A246439(n+1)-record[n*A164349(n)])` -/
def P9394117778955932982.Spec : Prop :=
  ∀ n, P9394117778955932982.a n = A101404 n

theorem P9394117778955932982.correct : P9394117778955932982.Spec := by
  intro n
  simp only [A101404, Nat.add_sub_cancel, A101404.P9394117778955932982.f1, A101404.P9394117778955932982.a, A101404.P6201192539946373633.a, A101403, A101403.P5867421329775423614.f1, A101403.P5867421329775423614.a, A164349, A164349.P4841108181734445144.a, A246439, A246439.P44155868527142489.f1, A246439.P44155868527142489.f2, A246439.P44155868527142489.a, A053645, A053645.P13234994043849603743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101404

/-! ## A101404.P12255700514753818702

`n*Δ[record[n*A164349(n)]]`
-/

namespace A101404.P12255700514753818702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A164349 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A101404.P12255700514753818702

namespace A101404

/-- `n*Δ[record[n*A164349(n)]]` -/
def P12255700514753818702.Spec : Prop :=
  ∀ n, P12255700514753818702.a n = A101404 n

end A101404

/-! ## A101404.P6907340745835393880

`n/A101403(n)^A223486(A004771(n)+1)`
-/

namespace A101404.P6907340745835393880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A101403 n : ℚ) ^ (A223486 (A004771 n + 1).toNat : ℤ)

end

end A101404.P6907340745835393880

namespace A101404

/-- `n/A101403(n)^A223486(A004771(n)+1)` -/
def P6907340745835393880.Spec : Prop :=
  ∀ n, P6907340745835393880.a n = (A101404 n : ℚ)

end A101404

/-! ## A101404.P13087612255644165315

`log2(A000079(n)^A101403(n))`
-/

namespace A101404.P13087612255644165315
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A000079 n : ℚ) ^ (A101403 n : ℤ) : ℝ)

end

end A101404.P13087612255644165315

namespace A101404

/-- `log2(A000079(n)^A101403(n))` -/
def P13087612255644165315.Spec : Prop :=
  ∀ n, P13087612255644165315.a n = (A101404 n : ℝ)

end A101404

/-!
# A101405: a(n) = n^(pi(n-1)).

The programs for A101405, the canonical program `A101405.P15214848293770233124` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101405 has offset 1).

The definition of A101405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101405.P15214848293770233124

`(n+1)^∑[char[p?[xor(1, n)]]]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101405

/-- `(n+1)^∑[char[p?[xor(1, n)]]]` -/
def P15214848293770233124.Spec : Prop :=
  ∀ n, (P15214848293770233124.a n : ℤ) = A101405 (n + 1)

theorem P15214848293770233124.correct : P15214848293770233124.Spec := by
  intro n
  simp only [A101405, Nat.add_sub_cancel]

end A101405

/-! ## A101405.P8019060695346858124

`(n+1)^∑[∑{p}[n, val(#, n)]]`
-/

namespace A101405.P8019060695346858124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101405.P8019060695346858124

namespace A101405

/-- `(n+1)^∑[∑{p}[n, val(#, n)]]` -/
def P8019060695346858124.Spec : Prop :=
  ∀ n, (P8019060695346858124.a n : ℤ) = A101405 (n + 1)

end A101405

/-! ## A101405.P10937475078995132000

`(n+1)^∑[∑{p}[n, C(#, n)]]`
-/

namespace A101405.P10937475078995132000
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101405.P10937475078995132000

namespace A101405

/-- `(n+1)^∑[∑{p}[n, C(#, n)]]` -/
def P10937475078995132000.Spec : Prop :=
  ∀ n, (P10937475078995132000.a n : ℤ) = A101405 (n + 1)

end A101405

/-! ## A101405.P10523001418153260102

`(n+1)^∑[∑{p}[n, floor(#/n)]]`
-/

namespace A101405.P10523001418153260102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌊(p : ℚ) / (n : ℚ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A101405.P10523001418153260102

namespace A101405

/-- `(n+1)^∑[∑{p}[n, floor(#/n)]]` -/
def P10523001418153260102.Spec : Prop :=
  ∀ n, P10523001418153260102.a n = (A101405 (n + 1) : ℚ)

end A101405

/-! ## A101405.P13734115940282995218

`(n+1)^∑[C(C(2, ∑{e}[n, #]), 2)]`
-/

namespace A101405.P13734115940282995218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101405.P13734115940282995218

namespace A101405

/-- `(n+1)^∑[C(C(2, ∑{e}[n, #]), 2)]` -/
def P13734115940282995218.Spec : Prop :=
  ∀ n, (P13734115940282995218.a n : ℤ) = A101405 (n + 1)

end A101405

/-! ## A101405.P15595807646612166413

`(n+1)^A230980(n)`
-/

namespace A101405.P15595807646612166413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A230980 n : ℤ)

end

end A101405.P15595807646612166413

namespace A101405

/-- `(n+1)^A230980(n)` -/
def P15595807646612166413.Spec : Prop :=
  ∀ n, P15595807646612166413.a n = (A101405 (n + 1) : ℚ)

end A101405

/-! ## A101405.P128984306914011191

`(n+1)^(A095117(n)-n)`
-/

namespace A101405.P128984306914011191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A095117 n - (n : ℤ) : ℤ)

end

end A101405.P128984306914011191

namespace A101405

/-- `(n+1)^(A095117(n)-n)` -/
def P128984306914011191.Spec : Prop :=
  ∀ n, P128984306914011191.a n = (A101405 (n + 1) : ℚ)

end A101405

/-! ## A101405.P10250024344141680410

`(n+1)^∑[A302048(n²)]`
-/

namespace A101405.P10250024344141680410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 (n ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A101405.P10250024344141680410

namespace A101405

/-- `(n+1)^∑[A302048(n²)]` -/
def P10250024344141680410.Spec : Prop :=
  ∀ n, P10250024344141680410.a n = (A101405 (n + 1) : ℚ)

end A101405

/-! ## A101405.P12944267722231118613

`(n+1)^A056172(Δ[n²])`
-/

namespace A101405.P12944267722231118613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A056172 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A101405.P12944267722231118613

namespace A101405

/-- `(n+1)^A056172(Δ[n²])` -/
def P12944267722231118613.Spec : Prop :=
  ∀ n, P12944267722231118613.a n = (A101405 (n + 1) : ℚ)

end A101405

/-! ## A101405.P6490658125393377507

`(n+1)^A242096(Δ[n²])`
-/

namespace A101405.P6490658125393377507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A242096 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A101405.P6490658125393377507

namespace A101405

/-- `(n+1)^A242096(Δ[n²])` -/
def P6490658125393377507.Spec : Prop :=
  ∀ n, P6490658125393377507.a n = (A101405 (n + 1) : ℚ)

end A101405

/-! ## A101405.P8427131111950868771

`(n+1)^(A064427(n+1)-(n+1))`
-/

namespace A101405.P8427131111950868771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A064427 (n + 1) - (n + 1 : ℤ) : ℤ)

end

end A101405.P8427131111950868771

namespace A101405

/-- `(n+1)^(A064427(n+1)-(n+1))` -/
def P8427131111950868771.Spec : Prop :=
  ∀ n, P8427131111950868771.a n = (A101405 (n + 1) : ℚ)

end A101405

/-! ## A101405.P12834185399150180758

`(n+1)^(n+1-A086936(n+1))`
-/

namespace A101405.P12834185399150180758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n + 1 : ℤ) - A086936 (n + 1) : ℤ)

end

end A101405.P12834185399150180758

namespace A101405

/-- `(n+1)^(n+1-A086936(n+1))` -/
def P12834185399150180758.Spec : Prop :=
  ∀ n, P12834185399150180758.a n = (A101405 (n + 1) : ℚ)

end A101405

/-!
# A101407: a(n) = 4^(n!).

The programs for A101407, the canonical program `A101407.P5750135604737806173` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101407 has offset 0).

The definition of A101407 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n!` (program `A101407.P5750135604737806173`, by `A101407.P5750135604737806173.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101407.P5750135604737806173

`4^n!`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101407

/-- `4^n!` -/
def P5750135604737806173.Spec : Prop :=
  ∀ n, (P5750135604737806173.a n : ℤ) = A101407 n

theorem P5750135604737806173.correct : P5750135604737806173.Spec := by
  intro n
  simp only [A101407]

end A101407

/-!
# A101408: Primes p such that p+1000 or p-1000 are also primes.

The programs for A101408, there is no canonical definition to state claims against.
-/

/-! ## A101408.P11944404964439600889

`p?[A000040(n+1)-A118880(A052224(n+1))]`
-/

namespace A101408.P11944404964439600889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A118880 (A052224 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101408.P11944404964439600889

/-! ## A101408.P11688076578790036618

`p?[A004139(n+1)-A118880(A052224(n+1))]`
-/

namespace A101408.P11688076578790036618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1) - A118880 (A052224 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101408.P11688076578790036618

/-! ## A101408.P15389179514085978739

`p?[A008578(n+1)-A118880(A052224(n+1))]`
-/

namespace A101408.P15389179514085978739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - A118880 (A052224 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101408.P15389179514085978739

/-! ## A101408.P17597225652256172113

`p?[A065091(n+1)-A118880(A052224(n+1))]`
-/

namespace A101408.P17597225652256172113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A118880 (A052224 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101408.P17597225652256172113

/-! ## A101408.P11217984627773099471

`p?[A193339(n+1)-A118880(A052224(n+1))]`
-/

namespace A101408.P11217984627773099471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1) - A118880 (A052224 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101408.P11217984627773099471

/-!
# A101410: Divisors of 100K, reversed.

The programs for A101410, there is no canonical definition to state claims against.
-/

/-! ## A101410.P18034402216582942076

`A004086(A018653(n+1)^A046532(n+1))`
-/

namespace A101410.P18034402216582942076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((A018653 (n + 1) : ℚ) ^ (A046532 (n + 1) : ℤ))).toNat

end

end A101410.P18034402216582942076

/-! ## A101410.P11588348209955428956

`A161594(A018653(n+1)^A046532(n+1))`
-/

namespace A101410.P11588348209955428956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161594 (SequenceMachineLib.roundAway ((A018653 (n + 1) : ℚ) ^ (A046532 (n + 1) : ℤ))).toNat

end

end A101410.P11588348209955428956

/-! ## A101410.P9718904634114185430

`A004086(C(A018653(n+1), A046532(n+1)))`
-/

namespace A101410.P9718904634114185430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Nat.choose (A018653 (n + 1)).toNat (A046532 (n + 1)).toNat)

end

end A101410.P9718904634114185430

/-! ## A101410.P16111488594655443321

`A161594(C(A018653(n+1), A046532(n+1)))`
-/

namespace A101410.P16111488594655443321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161594 (Nat.choose (A018653 (n + 1)).toNat (A046532 (n + 1)).toNat)

end

end A101410.P16111488594655443321

/-! ## A101410.P13643372624879514794

`A161594(A046532(n+1)²²*A018653(n+1))`
-/

namespace A101410.P13643372624879514794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161594 ((A046532 (n + 1) ^ 2) ^ 2 * A018653 (n + 1)).toNat

end

end A101410.P13643372624879514794

/-!
# A101411: Denominator when the numerator of the continued fraction rational approximation of sqrt(2) is prime. Also the denominators of A086395(n).

The programs for A101411, there is no canonical definition to state claims against.
-/

/-! ## A101411.P6254677259904058781

`A000129(A099088(n+1))`
-/

namespace A101411.P6254677259904058781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A099088 (n + 1)).toNat

end

end A101411.P6254677259904058781

/-! ## A101411.P8502297864905127286

`A002965(2*A099088(n+1))`
-/

namespace A101411.P8502297864905127286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * A099088 (n + 1)).toNat

end

end A101411.P8502297864905127286

/-! ## A101411.P16978026492470133547

`A135153(2*A099088(n+1))`
-/

namespace A101411.P16978026492470133547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (2 * A099088 (n + 1)).toNat

end

end A101411.P16978026492470133547

/-! ## A101411.P12600886521069055930

`A249576(3*A099088(n+1))`
-/

namespace A101411.P12600886521069055930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (3 * A099088 (n + 1)).toNat

end

end A101411.P12600886521069055930

/-! ## A101411.P8341251515194020175

`A215928(A099088(n+1))+A185284(n)`
-/

namespace A101411.P8341251515194020175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (A099088 (n + 1)).toNat + A185284 n

end

end A101411.P8341251515194020175

/-!
# A101412: Least number of odd squares that sum to n.

The programs for A101412, there is no canonical definition to state claims against.
-/

/-! ## A101412.P2643605432867211341

`A048379(and(a(n-1), A273812(n+1)))` with `a(0)=1`
-/

namespace A101412.P2643605432867211341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048379 (Int.land (a (n - 1)) (A273812 (n + 1))).toNat

end

end A101412.P2643605432867211341

/-! ## A101412.P16780221289064234847

`A349315(and(a(n-1), A273812(n+1)))` with `a(0)=1`
-/

namespace A101412.P16780221289064234847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A349315 (Int.land (a (n - 1)) (A273812 (n + 1))).toNat

end

end A101412.P16780221289064234847

/-! ## A101412.P12928737796152086256

`A053830(A053830(A007088(n)+17))`
-/

namespace A101412.P12928737796152086256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A053830 (A007088 n + 17).toNat).toNat

end

end A101412.P12928737796152086256

/-! ## A101412.P4243445431881650717

`dr(∑[∏{e}[A226193(2*(n+1)), #]])`
-/

namespace A101412.P4243445431881650717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226193 (2 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A101412.P4243445431881650717

/-! ## A101412.P6613049394325781982

`(a(n-1)+1)%A000005(A269420(n+1))` with `a(0)=1`
-/

namespace A101412.P6613049394325781982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + 1) (A000005 (A269420 (n + 1)).toNat)

end

end A101412.P6613049394325781982

/-!
# A101414: Defiant primes of order 3. Primes p such that no prime numerator and denominator of the continued fraction rational approximation of sqrt(p) exist for numerators less than 10^3 digits in length.

The programs for A101414, there is no canonical definition to state claims against.
-/

/-! ## A101414.P9091629107156308133

`A070957(A171820(n+1))`
-/

namespace A101414.P9091629107156308133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070957 (A171820 (n + 1)).toNat

end

end A101414.P9091629107156308133

/-! ## A101414.P2595210144600208112

`A079407(A171820(n+1)+2)`
-/

namespace A101414.P2595210144600208112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079407 (A171820 (n + 1) + 2).toNat

end

end A101414.P2595210144600208112

/-! ## A101414.P2618760183960150855

`A000040(lt[A027935(3*n+1), A138882(n+1)])`
-/

namespace A101414.P2618760183960150855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027935 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A101414.P2618760183960150855

/-! ## A101414.P15452309415574666656

`A000040(A195921(n+2)+n-A070878(n)+1)`
-/

namespace A101414.P15452309415574666656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A195921 (n + 2) + ((n : ℤ) - A070878 n) + 1).toNat

end

end A101414.P15452309415574666656

/-! ## A101414.P14983572855587256182

`A060264(A130091(3*n+5)-A106749(2*(n+1)))`
-/

namespace A101414.P14983572855587256182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (A130091 (3 * n + 5) - A106749 (2 * (n + 1))).toNat

end

end A101414.P14983572855587256182

/-!
# A101415: Amenable primes of order 3. Primes p such that the numerator and denominator of the continued fraction rational approximation of sqrt(p) are both prime and the numerator is less than 10^3 digits in length.

The programs for A101415, there is no canonical definition to state claims against.
-/

/-! ## A101415.P17955587519911853404

`A050260(lt[0, A050311(n+2)])`
-/

namespace A101415.P17955587519911853404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050311 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A101415.P17955587519911853404

/-! ## A101415.P2105811225801350620

`A000040(A301506((n+3)²-2))`
-/

namespace A101415.P2105811225801350620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A301506 ((n + 3) ^ 2 - 2)).toNat

end

end A101415.P2105811225801350620

/-! ## A101415.P15056391235560945366

`A000040(lt[A334188(3*n+1), n])`
-/

namespace A101415.P15056391235560945366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334188 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A101415.P15056391235560945366

/-! ## A101415.P371715138837849247

`A000040(lt[A178124(n), A027656(n)])`
-/

namespace A101415.P371715138837849247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178124 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A101415.P371715138837849247

/-! ## A101415.P15916229500164921441

`A050260(lt[A178124(n), A027656(n)])`
-/

namespace A101415.P15916229500164921441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178124 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A101415.P15916229500164921441

/-!
# A101417: Number of partitions of n into parts without powers of 2.

The programs for A101417, there is no canonical definition to state claims against.
-/

/-! ## A101417.P14595578516882417047

`A000007(n)+Δ[A276430(A002620(n))]`
-/

namespace A101417.P14595578516882417047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276430 (A002620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A101417.P14595578516882417047

/-! ## A101417.P12199665084458574003

`Δ[A276430(A002620(n))+A057427(n)]`
-/

namespace A101417.P12199665084458574003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276430 (A002620 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101417.P12199665084458574003

/-! ## A101417.P17361230053337507434

`Δ[A276430(A002620(n))-A057428(n)]`
-/

namespace A101417.P17361230053337507434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276430 (A002620 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101417.P17361230053337507434

/-! ## A101417.P7685406762037129211

`Δ[A276430(A002620(n))%A022392(n)]`
-/

namespace A101417.P7685406762037129211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276430 (A002620 n).toNat) (A022392 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101417.P7685406762037129211

/-! ## A101417.P2347345150835013636

`Δ[A276430(A002620(n))+A036453(n+1)]`
-/

namespace A101417.P2347345150835013636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276430 (A002620 n).toNat + A036453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101417.P2347345150835013636

/-! ## A101417.P9465366998449596139

`Δ[A276430(A002620(n))+A267869(n+6)]`
-/

namespace A101417.P9465366998449596139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276430 (A002620 n).toNat + A267869 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101417.P9465366998449596139

/-! ## A101417.P15282812661614057618

`A255738(2*(n+1))+Δ[A276430(A002620(n))]`
-/

namespace A101417.P15282812661614057618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276430 (A002620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255738 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A101417.P15282812661614057618

/-! ## A101417.P15060586047210843238

`Δ[A276430(A002620(n))+A000122(n²)]`
-/

namespace A101417.P15060586047210843238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276430 (A002620 n).toNat + A000122 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101417.P15060586047210843238

/-!
# A101418: Floor of the area of a lens constructed using circular arcs of radius n.

The programs for A101418, the canonical program `A101418.P14714242443787895540` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101418 has offset 1).

The definition of A101418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101418.P14714242443787895540

`floor((4*π-3*sqrt(3))/6*(n+1)²)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101418

/-- `floor((4*π-3*sqrt(3))/6*(n+1)²)` -/
def P14714242443787895540.Spec : Prop :=
  ∀ n, P14714242443787895540.a n = A101418 (n + 1)

theorem P14714242443787895540.correct : P14714242443787895540.Spec := by
  intro n
  simp only [A101418, Nat.add_sub_cancel]

end A101418

/-! ## A101418.P8002195859354455840

`A045681(A077168(n)²)`
-/

namespace A101418.P8002195859354455840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045681 (A077168 n ^ 2).toNat

end

end A101418.P8002195859354455840

namespace A101418

/-- `A045681(A077168(n)²)` -/
def P8002195859354455840.Spec : Prop :=
  ∀ n, P8002195859354455840.a n = A101418 (n + 1)

end A101418

/-! ## A101418.P8642331320770414088

`A045681(A043319(n+1)²)`
-/

namespace A101418.P8642331320770414088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045681 (A043319 (n + 1) ^ 2).toNat

end

end A101418.P8642331320770414088

namespace A101418

/-- `A045681(A043319(n+1)²)` -/
def P8642331320770414088.Spec : Prop :=
  ∀ n, P8642331320770414088.a n = A101418 (n + 1)

end A101418

/-! ## A101418.P10741290856033908470

`A045681(A065673(n+1)²)`
-/

namespace A101418.P10741290856033908470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045681 (A065673 (n + 1) ^ 2).toNat

end

end A101418.P10741290856033908470

namespace A101418

/-- `A045681(A065673(n+1)²)` -/
def P10741290856033908470.Spec : Prop :=
  ∀ n, P10741290856033908470.a n = A101418 (n + 1)

end A101418

/-! ## A101418.P14844571061068461913

`A045681(A043319(n+1)*A077168(n))`
-/

namespace A101418.P14844571061068461913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045681 (A043319 (n + 1) * A077168 n).toNat

end

end A101418.P14844571061068461913

namespace A101418

/-- `A045681(A043319(n+1)*A077168(n))` -/
def P14844571061068461913.Spec : Prop :=
  ∀ n, P14844571061068461913.a n = A101418 (n + 1)

end A101418

/-!
# A101420: Numbers which are the sum of two positive cubes and not divisible by 13.

The programs for A101420, there is no canonical definition to state claims against.
-/

/-! ## A101420.P3845639015424343384

`eq[gcd(13, n), A025455(n)]`
-/

namespace A101420.P3845639015424343384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 13 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101420.P3845639015424343384

/-! ## A101420.P8261068818269155256

`record[A106614(A003325(n+1))]`
-/

namespace A101420.P8261068818269155256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A003325 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101420.P8261068818269155256

/-! ## A101420.P15575557276657917838

`record[A106614(A338667(n+1))]`
-/

namespace A101420.P15575557276657917838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A338667 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101420.P15575557276657917838

/-! ## A101420.P8933072800888761707

`record[A106614(A339993(n+1)/8)]`
-/

namespace A101420.P8933072800888761707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (SequenceMachineLib.roundAway ((A339993 (n + 1) : ℚ) / 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101420.P8933072800888761707

/-! ## A101420.P10849507093642022263

`∩[A003325(n+1), A113763(n+1)]`
-/

namespace A101420.P10849507093642022263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101420.P10849507093642022263

/-! ## A101420.P9009981149908086541

`∩[A113763(n+1), A338667(n+1)]`
-/

namespace A101420.P9009981149908086541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101420.P9009981149908086541

/-!
# A101421: Numbers which are the sum of two positive cubes and divisible by 7.

The programs for A101421, there is no canonical definition to state claims against.
-/

/-! ## A101421.P18440988703729103366

`∩[A003325(n+1), 7*n]`
-/

namespace A101421.P18440988703729103366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A101421.P18440988703729103366

/-! ## A101421.P10043695544328591814

`∩[A047345(n+1), A003325(n+1)]`
-/

namespace A101421.P10043695544328591814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101421.P10043695544328591814

/-! ## A101421.P13915693660020877444

`∩[A047355(n+1), A003325(n+1)]`
-/

namespace A101421.P13915693660020877444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101421.P13915693660020877444

/-! ## A101421.P2704039843216987104

`filter[A003325(n+1), A082784(#)]`
-/

namespace A101421.P2704039843216987104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A082784 (f1 j).toNat = 1) n)

end

end A101421.P2704039843216987104

/-! ## A101421.P3411764132058444302

`A117358(∩[A339993(n+1), A008595(n)+n])`
-/

namespace A101421.P3411764132058444302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A101421.P3411764132058444302

/-!
# A101422: Minimal number of primes needed to sum to Fibonacci(n).

The programs for A101422, there is no canonical definition to state claims against.
-/

/-! ## A101422.P10213288903102493939

`∑{e}[A330988(n+1), #]`
-/

namespace A101422.P10213288903102493939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330988 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A101422.P10213288903102493939

/-! ## A101422.P15712095786361243177

`A032741(∏{e}[A330988(n+1), #+1])`
-/

namespace A101422.P15712095786361243177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A101422.P15712095786361243177

/-! ## A101422.P1701030038054308470

`A008621(∏{e}[A330988(n+1), 2*#])`
-/

namespace A101422.P1701030038054308470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, 2 * Nat.factorization (f1 n).natAbs p)

end

end A101422.P1701030038054308470

/-! ## A101422.P7215439192366260590

`A146071(∏{e}[∏{e}[A330988(n+1), #+1], #+1])`
-/

namespace A101422.P7215439192366260590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330988 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146071 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A101422.P7215439192366260590

/-! ## A101422.P5501740835854351057

`A001222(A330988(n+1)%A155933(n+1))`
-/

namespace A101422.P5501740835854351057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A330988 (n + 1)) (A155933 (n + 1))).toNat

end

end A101422.P5501740835854351057

/-!
# A101423: Number of different cuboids with volume p^3 * q^n, where p,q are distinct prime numbers.

The programs for A101423, the canonical program `A101423.P3529755434947996012` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101423 has offset 0).

The definition of A101423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101423.P3529755434947996012

`ceil(∑[(10*n+13)/6])`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101423

/-- `ceil(∑[(10*n+13)/6])` -/
def P3529755434947996012.Spec : Prop :=
  ∀ n, P3529755434947996012.a n = A101423 n

theorem P3529755434947996012.correct : P3529755434947996012.Spec := by
  intro n
  simp only [A101423]

end A101423

/-! ## A101423.P17317214331124350989

`∑[∑[xor(2, a(n-3))]]` with `a(0)=3, a(1)=0, a(2)=3`
-/

namespace A101423.P17317214331124350989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 3] fun n f2 =>
  Nat.xor 2 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101423.P17317214331124350989

namespace A101423

/-- `∑[∑[xor(2, a(n-3))]]` -/
def P17317214331124350989.Spec : Prop :=
  ∀ n, (P17317214331124350989.a n : ℤ) = A101423 n

end A101423

/-! ## A101423.P7316806710759166855

`∑[or(1, n+2)]+floor(n²/3)`
-/

namespace A101423.P7316806710759166855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(n ^ 2 : ℚ) / 3⌋

end

end A101423.P7316806710759166855

namespace A101423

/-- `∑[or(1, n+2)]+floor(n²/3)` -/
def P7316806710759166855.Spec : Prop :=
  ∀ n, P7316806710759166855.a n = A101423 n

end A101423

/-! ## A101423.P14850507160859760371

`∑[∑[(a(n-3)+2)%4]]` with `a(0)=3, a(1)=0, a(2)=3`
-/

namespace A101423.P14850507160859760371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 3] fun n f2 =>
  (f2 (n - 3) + 2) % 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101423.P14850507160859760371

namespace A101423

/-- `∑[∑[(a(n-3)+2)%4]]` -/
def P14850507160859760371.Spec : Prop :=
  ∀ n, (P14850507160859760371.a n : ℤ) = A101423 n

end A101423

/-! ## A101423.P10442115074444420223

`∑[floor(2*n/3)+or(1, n+2)]`
-/

namespace A101423.P10442115074444420223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℚ) / 3)⌋ + (Nat.lor 1 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101423.P10442115074444420223

namespace A101423

/-- `∑[floor(2*n/3)+or(1, n+2)]` -/
def P10442115074444420223.Spec : Prop :=
  ∀ n, P10442115074444420223.a n = A101423 n

end A101423

/-! ## A101423.P13820975199266574

`∑[∑[∑[ogf((3+3x+3x^2+x^3)/(1+2x+2x^2+x^3))]]]`
-/

namespace A101423.P13820975199266574
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3, 3, 1] [1, 2, 2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101423.P13820975199266574

namespace A101423

/-- `∑[∑[∑[ogf((3+3x+3x^2+x^3)/(1+2x+2x^2+x^3))]]]` -/
def P13820975199266574.Spec : Prop :=
  ∀ n, P13820975199266574.a n = A101423 n

end A101423

/-! ## A101423.P11974698795104663195

`∑[floor(∑[3/a(n-1)]-n/3)]` with `a(0)=3`
-/

namespace A101423.P11974698795104663195
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f2 =>
  3 / f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j - (n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101423.P11974698795104663195

namespace A101423

/-- `∑[floor(∑[3/a(n-1)]-n/3)]` -/
def P11974698795104663195.Spec : Prop :=
  ∀ n, P11974698795104663195.a n = A101423 n

end A101423

/-! ## A101423.P10287290182232693825

`∑[∑[2-∑[n]%3]+and(1, n+1)]`
-/

namespace A101423.P10287290182232693825
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((∑ j ∈ Finset.range (n + 1), f3 j) % 3 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (Nat.land 1 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101423.P10287290182232693825

namespace A101423

/-- `∑[∑[2-∑[n]%3]+and(1, n+1)]` -/
def P10287290182232693825.Spec : Prop :=
  ∀ n, P10287290182232693825.a n = A101423 n

end A101423

/-! ## A101423.P13184807209435732768

`∑[or(1, n)+1+n-floor((n-1)/3)]`
-/

namespace A101423.P13184807209435732768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n + 1 + n : ℤ) - ⌊((n : ℤ) - 1 : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101423.P13184807209435732768

namespace A101423

/-- `∑[or(1, n)+1+n-floor((n-1)/3)]` -/
def P13184807209435732768.Spec : Prop :=
  ∀ n, P13184807209435732768.a n = A101423 n

end A101423

/-! ## A101423.P961346012999606808

`A228344(n+2)+A014591(n)`
-/

namespace A101423.P961346012999606808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228344 (n + 2) + A014591 n

end

end A101423.P961346012999606808

namespace A101423

/-- `A228344(n+2)+A014591(n)` -/
def P961346012999606808.Spec : Prop :=
  ∀ n, P961346012999606808.a n = A101423 n

end A101423

/-! ## A101423.P9371681846081820865

`A080476(n+2)+A007980(n)`
-/

namespace A101423.P9371681846081820865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080476 (n + 2) + A007980 n

end

end A101423.P9371681846081820865

namespace A101423

/-- `A080476(n+2)+A007980(n)` -/
def P9371681846081820865.Spec : Prop :=
  ∀ n, P9371681846081820865.a n = A101423 n

end A101423

/-! ## A101423.P2546341453968202018

`A386851(n+2)-A002264(n+2)`
-/

namespace A101423.P2546341453968202018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386851 (n + 2) - A002264 (n + 2)

end

end A101423.P2546341453968202018

namespace A101423

/-- `A386851(n+2)-A002264(n+2)` -/
def P2546341453968202018.Spec : Prop :=
  ∀ n, P2546341453968202018.a n = A101423 n

end A101423

/-! ## A101423.P5215220202595043303

`A000217(n+1)+A156040(n)+A001840(n+1)`
-/

namespace A101423.P5215220202595043303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A156040 n + A001840 (n + 1))

end

end A101423.P5215220202595043303

namespace A101423

/-- `A000217(n+1)+A156040(n)+A001840(n+1)` -/
def P5215220202595043303.Spec : Prop :=
  ∀ n, P5215220202595043303.a n = A101423 n

end A101423

/-! ## A101423.P15022276913597574935

`A007590(n+1)+A074148(n+2)-A156040(n+1)`
-/

namespace A101423.P15022276913597574935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (n + 1) + (A074148 (n + 2) - A156040 (n + 1))

end

end A101423.P15022276913597574935

namespace A101423

/-- `A007590(n+1)+A074148(n+2)-A156040(n+1)` -/
def P15022276913597574935.Spec : Prop :=
  ∀ n, P15022276913597574935.a n = A101423 n

end A101423

/-! ## A101423.P9229812430753584361

`A393678(n+2)-(n+2)`
-/

namespace A101423.P9229812430753584361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393678 (n + 2) - (n + 2 : ℤ)

end

end A101423.P9229812430753584361

namespace A101423

/-- `A393678(n+2)-(n+2)` -/
def P9229812430753584361.Spec : Prop :=
  ∀ n, P9229812430753584361.a n = A101423 n

end A101423

/-! ## A101423.P2886857298163471242

`A242477(n+2)+A069905(n)`
-/

namespace A101423.P2886857298163471242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242477 (n + 2) + A069905 n

end

end A101423.P2886857298163471242

namespace A101423

/-- `A242477(n+2)+A069905(n)` -/
def P2886857298163471242.Spec : Prop :=
  ∀ n, P2886857298163471242.a n = A101423 n

end A101423

/-! ## A101423.P16517515282479068550

`A007590(n+2)+A001399(2*n)`
-/

namespace A101423.P16517515282479068550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (n + 2) + A001399 (2 * n)

end

end A101423.P16517515282479068550

namespace A101423

/-- `A007590(n+2)+A001399(2*n)` -/
def P16517515282479068550.Spec : Prop :=
  ∀ n, P16517515282479068550.a n = A101423 n

end A101423

/-! ## A101423.P578865716817646577

`∑[A008647(2*n)+A007494(n+1)]`
-/

namespace A101423.P578865716817646577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (2 * n) + A007494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101423.P578865716817646577

namespace A101423

/-- `∑[A008647(2*n)+A007494(n+1)]` -/
def P578865716817646577.Spec : Prop :=
  ∀ n, P578865716817646577.a n = A101423 n

end A101423

/-! ## A101423.P7583250495012651611

`A001972(2*n+1)+A001399(2*n)`
-/

namespace A101423.P7583250495012651611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (2 * n + 1) + A001399 (2 * n)

end

end A101423.P7583250495012651611

namespace A101423

/-- `A001972(2*n+1)+A001399(2*n)` -/
def P7583250495012651611.Spec : Prop :=
  ∀ n, P7583250495012651611.a n = A101423 n

end A101423

/-! ## A101423.P5089933673344838797

`∑[A267806(5*n+4)]`
-/

namespace A101423.P5089933673344838797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267806 (5 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101423.P5089933673344838797

namespace A101423

/-- `∑[A267806(5*n+4)]` -/
def P5089933673344838797.Spec : Prop :=
  ∀ n, P5089933673344838797.a n = A101423 n

end A101423

/-!
# A101424: Number of different cuboids with volume p^4 * q^n, where p,q are distinct prime numbers.

The programs for A101424, the canonical program `A101424.P13147491766143127207` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101424 has offset 0).

The definition of A101424 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101424.P11437655740275669980

`(29+3*(-1)^n+36*n+10*n²)/8`
-/

namespace A101424.P11437655740275669980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (29 + 3 * (-1) ^ n + (36 * n : ℤ) + (10 * n ^ 2 : ℤ) : ℚ) / 8

end

end A101424.P11437655740275669980

namespace A101424

/-- `(29+3*(-1)^n+36*n+10*n²)/8` -/
def P11437655740275669980.Spec : Prop :=
  ∀ n, P11437655740275669980.a n = (A101424 n : ℚ)

theorem P11437655740275669980.correct : P11437655740275669980.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A101424, Nat.add_sub_cancel, A101424.P11437655740275669980.a, A101424.P13147491766143127207.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A101424, Nat.add_sub_cancel, A101424.P11437655740275669980.a, A101424.P13147491766143127207.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A101424

/-! ## A101424.P13147491766143127207

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=4, a(1)=9, a(2)=18, a(3)=28`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101424

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P13147491766143127207.Spec : Prop :=
  ∀ n, P13147491766143127207.a n = A101424 n

theorem P13147491766143127207.correct : P13147491766143127207.Spec := by
  intro n
  simp only [A101424]

end A101424

/-! ## A101424.P3577034823114888828

`∑[∑[gcd(2, n)²]]`
-/

namespace A101424.P3577034823114888828
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101424.P3577034823114888828

namespace A101424

/-- `∑[∑[gcd(2, n)²]]` -/
def P3577034823114888828.Spec : Prop :=
  ∀ n, (P3577034823114888828.a n : ℤ) = A101424 n

end A101424

/-! ## A101424.P12852011288979435669

`∑[∑[gcd(4, n^2)]]`
-/

namespace A101424.P12852011288979435669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101424.P12852011288979435669

namespace A101424

/-- `∑[∑[gcd(4, n^2)]]` -/
def P12852011288979435669.Spec : Prop :=
  ∀ n, (P12852011288979435669.a n : ℤ) = A101424 n

end A101424

/-! ## A101424.P15884603185121407755

`∑[∑[or(n, -2)²]]`
-/

namespace A101424.P15884603185121407755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101424.P15884603185121407755

namespace A101424

/-- `∑[∑[or(n, -2)²]]` -/
def P15884603185121407755.Spec : Prop :=
  ∀ n, P15884603185121407755.a n = A101424 n

end A101424

/-! ## A101424.P219738366494060799

`∑[∑[(2-n%2)²]]`
-/

namespace A101424.P219738366494060799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((n % 2 : ℕ) : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101424.P219738366494060799

namespace A101424

/-- `∑[∑[(2-n%2)²]]` -/
def P219738366494060799.Spec : Prop :=
  ∀ n, P219738366494060799.a n = A101424 n

end A101424

/-! ## A101424.P10067805316663137219

`∑[∑[(and(1, n)-2)²]]`
-/

namespace A101424.P10067805316663137219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n : ℤ) - 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101424.P10067805316663137219

namespace A101424

/-- `∑[∑[(and(1, n)-2)²]]` -/
def P10067805316663137219.Spec : Prop :=
  ∀ n, P10067805316663137219.a n = A101424 n

end A101424

/-! ## A101424.P17578973990187953711

`∑[a(n-2)+5]` with `a(0)=4, a(1)=5`
-/

namespace A101424.P17578973990187953711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 5] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101424.P17578973990187953711

namespace A101424

/-- `∑[a(n-2)+5]` -/
def P17578973990187953711.Spec : Prop :=
  ∀ n, (P17578973990187953711.a n : ℤ) = A101424 n

end A101424

/-! ## A101424.P1219907078961259383

`∑[∑[abs(a(n-2))]]` with `a(0)=4, a(1)=1`
-/

namespace A101424.P1219907078961259383
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101424.P1219907078961259383

namespace A101424

/-- `∑[∑[abs(a(n-2))]]` -/
def P1219907078961259383.Spec : Prop :=
  ∀ n, (P1219907078961259383.a n : ℤ) = A101424 n

end A101424

/-! ## A101424.P14237099471988645672

`∑[∑[5-a(n-1)]]` with `a(0)=4`
-/

namespace A101424.P14237099471988645672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  5 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101424.P14237099471988645672

namespace A101424

/-- `∑[∑[5-a(n-1)]]` -/
def P14237099471988645672.Spec : Prop :=
  ∀ n, P14237099471988645672.a n = A101424 n

end A101424

/-! ## A101424.P5255108370658172015

`∑[∑[∑[ogf((4+x)/(1+x))]]]`
-/

namespace A101424.P5255108370658172015
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101424.P5255108370658172015

namespace A101424

/-- `∑[∑[∑[ogf((4+x)/(1+x))]]]` -/
def P5255108370658172015.Spec : Prop :=
  ∀ n, P5255108370658172015.a n = A101424 n

end A101424

/-! ## A101424.P5518368419281309294

`ogf((4+x)/(1-2x+2x^3-x^4))`
-/

namespace A101424.P5518368419281309294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1] [1, -2, 0, 2, -1] n

end

end A101424.P5518368419281309294

namespace A101424

/-- `ogf((4+x)/(1-2x+2x^3-x^4))` -/
def P5518368419281309294.Spec : Prop :=
  ∀ n, P5518368419281309294.a n = A101424 n

end A101424

/-! ## A101424.P13822942129463716499

`∑[∑[(and(1, n+1)²+1)²]]`
-/

namespace A101424.P13822942129463716499
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) ^ 2 + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101424.P13822942129463716499

namespace A101424

/-- `∑[∑[(and(1, n+1)²+1)²]]` -/
def P13822942129463716499.Spec : Prop :=
  ∀ n, (P13822942129463716499.a n : ℤ) = A101424 n

end A101424

/-! ## A101424.P1967359306330343316

`∑[∑[(lcm(2, n+1)/(n+1))²]]`
-/

namespace A101424.P1967359306330343316
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101424.P1967359306330343316

namespace A101424

/-- `∑[∑[(lcm(2, n+1)/(n+1))²]]` -/
def P1967359306330343316.Spec : Prop :=
  ∀ n, P1967359306330343316.a n = (A101424 n : ℚ)

end A101424

/-! ## A101424.P8126006178827663398

`∑[∑[A040005(n+2)]]`
-/

namespace A101424.P8126006178827663398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101424.P8126006178827663398

namespace A101424

/-- `∑[∑[A040005(n+2)]]` -/
def P8126006178827663398.Spec : Prop :=
  ∀ n, P8126006178827663398.a n = A101424 n

end A101424

/-! ## A101424.P12942034071687283646

`∑[record[A353313(n+1)]]`
-/

namespace A101424.P12942034071687283646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353313 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101424.P12942034071687283646

namespace A101424

/-- `∑[record[A353313(n+1)]]` -/
def P12942034071687283646.Spec : Prop :=
  ∀ n, P12942034071687283646.a n = A101424 n

end A101424

/-! ## A101424.P6020987672874201516

`∑[A047204(n+1)+1]`
-/

namespace A101424.P6020987672874201516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047204 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101424.P6020987672874201516

namespace A101424

/-- `∑[A047204(n+1)+1]` -/
def P6020987672874201516.Spec : Prop :=
  ∀ n, P6020987672874201516.a n = A101424 n

end A101424

/-! ## A101424.P1108783204945985698

`∑[A047221(n+1)+2]`
-/

namespace A101424.P1108783204945985698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101424.P1108783204945985698

namespace A101424

/-- `∑[A047221(n+1)+2]` -/
def P1108783204945985698.Spec : Prop :=
  ∀ n, P1108783204945985698.a n = A101424 n

end A101424

/-! ## A101424.P9565333031573154991

`∑[A047216(n+1)+3]`
-/

namespace A101424.P9565333031573154991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047216 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101424.P9565333031573154991

namespace A101424

/-- `∑[A047216(n+1)+3]` -/
def P9565333031573154991.Spec : Prop :=
  ∀ n, P9565333031573154991.a n = A101424 n

end A101424

/-! ## A101424.P8091738296390687239

`∑[A008851(n+1)+4]`
-/

namespace A101424.P8091738296390687239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101424.P8091738296390687239

namespace A101424

/-- `∑[A008851(n+1)+4]` -/
def P8091738296390687239.Spec : Prop :=
  ∀ n, P8091738296390687239.a n = A101424 n

end A101424

/-!
# A101425: Number of different cuboids with volume p^5 X q^n, where p,q are distinct prime numbers.

The programs for A101425, the canonical program `A101425.P18235726320157383194` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101425 has offset 0).

The definition of A101425 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101425.P9683532897408293669

`(37+3*(-1)^n+48*n+14*n²)/8`
-/

namespace A101425.P9683532897408293669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (37 + 3 * (-1) ^ n + (48 * n : ℤ) + (14 * n ^ 2 : ℤ) : ℚ) / 8

end

end A101425.P9683532897408293669

namespace A101425

/-- `(37+3*(-1)^n+48*n+14*n²)/8` -/
def P9683532897408293669.Spec : Prop :=
  ∀ n, P9683532897408293669.a n = (A101425 n : ℚ)

theorem P9683532897408293669.correct : P9683532897408293669.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A101425, Nat.add_sub_cancel, A101425.P9683532897408293669.a, A101425.P18235726320157383194.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A101425, Nat.add_sub_cancel, A101425.P9683532897408293669.a, A101425.P18235726320157383194.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A101425

/-! ## A101425.P18235726320157383194

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=5, a(1)=12, a(2)=24, a(3)=38`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101425

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P18235726320157383194.Spec : Prop :=
  ∀ n, P18235726320157383194.a n = A101425 n

theorem P18235726320157383194.correct : P18235726320157383194.Spec := by
  intro n
  simp only [A101425]

end A101425

/-! ## A101425.P7765384203279553215

`∑[∑[gcd(2, n)²+1]]`
-/

namespace A101425.P7765384203279553215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101425.P7765384203279553215

namespace A101425

/-- `∑[∑[gcd(2, n)²+1]]` -/
def P7765384203279553215.Spec : Prop :=
  ∀ n, (P7765384203279553215.a n : ℤ) = A101425 n

end A101425

/-! ## A101425.P3256562786191523867

`∑[a(n-2)+7]` with `a(0)=5, a(1)=7`
-/

namespace A101425.P3256562786191523867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 7] fun n f1 =>
  f1 (n - 2) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101425.P3256562786191523867

namespace A101425

/-- `∑[a(n-2)+7]` -/
def P3256562786191523867.Spec : Prop :=
  ∀ n, (P3256562786191523867.a n : ℤ) = A101425 n

end A101425

/-! ## A101425.P6749730059785593888

`∑[∑[5-3*n%2]]`
-/

namespace A101425.P6749730059785593888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - ((3 * (n % 2) : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101425.P6749730059785593888

namespace A101425

/-- `∑[∑[5-3*n%2]]` -/
def P6749730059785593888.Spec : Prop :=
  ∀ n, P6749730059785593888.a n = A101425 n

end A101425

/-! ## A101425.P5439402040064145

`∑[∑[gcd(6, 3*n)-1]]`
-/

namespace A101425.P5439402040064145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 6 (3 * n) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101425.P5439402040064145

namespace A101425

/-- `∑[∑[gcd(6, 3*n)-1]]` -/
def P5439402040064145.Spec : Prop :=
  ∀ n, P5439402040064145.a n = A101425 n

end A101425

/-! ## A101425.P14316446376898969525

`∑[∑[(3*n+5)%6]]`
-/

namespace A101425.P14316446376898969525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 5) % 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101425.P14316446376898969525

namespace A101425

/-- `∑[∑[(3*n+5)%6]]` -/
def P14316446376898969525.Spec : Prop :=
  ∀ n, (P14316446376898969525.a n : ℤ) = A101425 n

end A101425

/-! ## A101425.P85259309894669589

`∑[∑[6-4^and(1, n)]]`
-/

namespace A101425.P85259309894669589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - (4 ^ Nat.land 1 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101425.P85259309894669589

namespace A101425

/-- `∑[∑[6-4^and(1, n)]]` -/
def P85259309894669589.Spec : Prop :=
  ∀ n, P85259309894669589.a n = A101425 n

end A101425

/-! ## A101425.P1906407923395429228

`∑[∑[abs(a(n-2))]]` with `a(0)=5, a(1)=2`
-/

namespace A101425.P1906407923395429228
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5, 2] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101425.P1906407923395429228

namespace A101425

/-- `∑[∑[abs(a(n-2))]]` -/
def P1906407923395429228.Spec : Prop :=
  ∀ n, (P1906407923395429228.a n : ℤ) = A101425 n

end A101425

/-! ## A101425.P9432359224382421473

`∑[∑[7-a(n-1)]]` with `a(0)=5`
-/

namespace A101425.P9432359224382421473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  7 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101425.P9432359224382421473

namespace A101425

/-- `∑[∑[7-a(n-1)]]` -/
def P9432359224382421473.Spec : Prop :=
  ∀ n, P9432359224382421473.a n = A101425 n

end A101425

/-! ## A101425.P12770655723426705405

`∑[∑[∑[ogf((5+2x)/(1+x))]]]`
-/

namespace A101425.P12770655723426705405
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 2] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101425.P12770655723426705405

namespace A101425

/-- `∑[∑[∑[ogf((5+2x)/(1+x))]]]` -/
def P12770655723426705405.Spec : Prop :=
  ∀ n, P12770655723426705405.a n = A101425 n

end A101425

/-! ## A101425.P2347406945806601577

`ogf((5+2x)/(1-2x+2x^3-x^4))`
-/

namespace A101425.P2347406945806601577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 2] [1, -2, 0, 2, -1] n

end

end A101425.P2347406945806601577

namespace A101425

/-- `ogf((5+2x)/(1-2x+2x^3-x^4))` -/
def P2347406945806601577.Spec : Prop :=
  ∀ n, P2347406945806601577.a n = A101425 n

end A101425

/-! ## A101425.P5061802010089953536

`∑[A047288(n+1)+1]`
-/

namespace A101425.P5061802010089953536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047288 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101425.P5061802010089953536

namespace A101425

/-- `∑[A047288(n+1)+1]` -/
def P5061802010089953536.Spec : Prop :=
  ∀ n, P5061802010089953536.a n = A101425 n

end A101425

/-! ## A101425.P12680269341035259139

`∑[A047389(n+1)+2]`
-/

namespace A101425.P12680269341035259139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047389 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101425.P12680269341035259139

namespace A101425

/-- `∑[A047389(n+1)+2]` -/
def P12680269341035259139.Spec : Prop :=
  ∀ n, P12680269341035259139.a n = A101425 n

end A101425

/-! ## A101425.P2947675924235022556

`∑[A047348(n+1)+3]`
-/

namespace A101425.P2947675924235022556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047348 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101425.P2947675924235022556

namespace A101425

/-- `∑[A047348(n+1)+3]` -/
def P2947675924235022556.Spec : Prop :=
  ∀ n, P2947675924235022556.a n = A101425 n

end A101425

/-! ## A101425.P12627591448134682899

`∑[A047356(n+1)+4]`
-/

namespace A101425.P12627591448134682899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047356 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101425.P12627591448134682899

namespace A101425

/-- `∑[A047356(n+1)+4]` -/
def P12627591448134682899.Spec : Prop :=
  ∀ n, P12627591448134682899.a n = A101425 n

end A101425

/-! ## A101425.P8267603366579329451

`∑[A047352(n+1)+5]`
-/

namespace A101425.P8267603366579329451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047352 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101425.P8267603366579329451

namespace A101425

/-- `∑[A047352(n+1)+5]` -/
def P8267603366579329451.Spec : Prop :=
  ∀ n, P8267603366579329451.a n = A101425 n

end A101425

/-! ## A101425.P5633621829069742704

`A101424(n)+∑[n+1]`
-/

namespace A101425.P5633621829069742704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101424 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A101425.P5633621829069742704

namespace A101425

/-- `A101424(n)+∑[n+1]` -/
def P5633621829069742704.Spec : Prop :=
  ∀ n, P5633621829069742704.a n = A101425 n

end A101425

/-! ## A101425.P15855185106875771265

`∑[A253195(n+1)-n]`
-/

namespace A101425.P15855185106875771265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253195 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101425.P15855185106875771265

namespace A101425

/-- `∑[A253195(n+1)-n]` -/
def P15855185106875771265.Spec : Prop :=
  ∀ n, P15855185106875771265.a n = A101425 n

end A101425

/-! ## A101425.P1217573022934049247

`A017041(n)+a(n-2)` with `a(0)=5, a(1)=12`
-/

namespace A101425.P1217573022934049247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 12] fun n a =>
  A017041 n + a (n - 2)

end

end A101425.P1217573022934049247

namespace A101425

/-- `A017041(n)+a(n-2)` -/
def P1217573022934049247.Spec : Prop :=
  ∀ n, P1217573022934049247.a n = A101425 n

end A101425

/-!
# A101426: Number of different cuboids with volume p^6 * q^n, where p,q are distinct prime numbers.

The programs for A101426, the canonical program `A101426.P5465213273708075333` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101426 has offset 0).

The definition of A101426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101426.P5465213273708075333

`∑[∑[xor(4, a(n-3))]]` with `a(0)=7, a(1)=2, a(2)=7`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101426

/-- `∑[∑[xor(4, a(n-3))]]` -/
def P5465213273708075333.Spec : Prop :=
  ∀ n, (P5465213273708075333.a n : ℤ) = A101426 n

theorem P5465213273708075333.correct : P5465213273708075333.Spec := by
  intro n
  simp only [A101426]

end A101426

/-! ## A101426.P2438469920357652424

`round(4/3*∑[∑[gcd(2, n)²+1]])`
-/

namespace A101426.P2438469920357652424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))

end

end A101426.P2438469920357652424

namespace A101426

/-- `round(4/3*∑[∑[gcd(2, n)²+1]])` -/
def P2438469920357652424.Spec : Prop :=
  ∀ n, P2438469920357652424.a n = A101426 n

end A101426

/-! ## A101426.P16146847329845545067

`A035106(A028310(3*n+4))+A001399(n)`
-/

namespace A101426.P16146847329845545067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (A028310 (3 * n + 4)).toNat + A001399 n

end

end A101426.P16146847329845545067

namespace A101426

/-- `A035106(A028310(3*n+4))+A001399(n)` -/
def P16146847329845545067.Spec : Prop :=
  ∀ n, P16146847329845545067.a n = A101426 n

end A101426

/-! ## A101426.P13125968896180891396

`A325691(2*n+3)+Δ[A175724(3*(n+1))]`
-/

namespace A101426.P13125968896180891396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175724 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325691 (2 * n + 3) + (f1 (n + 1) - f1 n)

end

end A101426.P13125968896180891396

namespace A101426

/-- `A325691(2*n+3)+Δ[A175724(3*(n+1))]` -/
def P13125968896180891396.Spec : Prop :=
  ∀ n, P13125968896180891396.a n = A101426 n

end A101426

/-! ## A101426.P2223585389909422498

`A008486(A001399(3*n+2))+A001399(n)`
-/

namespace A101426.P2223585389909422498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A001399 (3 * n + 2)).toNat + A001399 n

end

end A101426.P2223585389909422498

namespace A101426

/-- `A008486(A001399(3*n+2))+A001399(n)` -/
def P2223585389909422498.Spec : Prop :=
  ∀ n, P2223585389909422498.a n = A101426 n

end A101426

/-! ## A101426.P4177176796242907354

`A042965(∑[∑[gcd(2, n)²+1]]+1)`
-/

namespace A101426.P4177176796242907354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A101426.P4177176796242907354

namespace A101426

/-- `A042965(∑[∑[gcd(2, n)²+1]]+1)` -/
def P4177176796242907354.Spec : Prop :=
  ∀ n, P4177176796242907354.a n = A101426 n

end A101426

/-! ## A101426.P6710510240667262658

`A042965(∑[∑[7-a(n-1)]])` with `a(0)=6, a(1)=1, a(2)=5`
-/

namespace A101426.P6710510240667262658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6, 1, 5] fun n f2 =>
  7 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A101426.P6710510240667262658

namespace A101426

/-- `A042965(∑[∑[7-a(n-1)]])` -/
def P6710510240667262658.Spec : Prop :=
  ∀ n, P6710510240667262658.a n = A101426 n

end A101426

/-! ## A101426.P3998447306720117821

`A098003(A101425(n))`
-/

namespace A101426.P3998447306720117821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098003 (A101425 n).toNat

end

end A101426.P3998447306720117821

namespace A101426

/-- `A098003(A101425(n))` -/
def P3998447306720117821.Spec : Prop :=
  ∀ n, P3998447306720117821.a n = A101426 n

end A101426

/-! ## A101426.P15995161639101466180

`A004396(∑[∑[14-a(n-1)]])` with `a(0)=10`
-/

namespace A101426.P15995161639101466180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f2 =>
  14 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A101426.P15995161639101466180

namespace A101426

/-- `A004396(∑[∑[14-a(n-1)]])` -/
def P15995161639101466180.Spec : Prop :=
  ∀ n, P15995161639101466180.a n = A101426 n

end A101426

/-!
# A101427: Number of different cuboids with volume (pq)^n, where p,q are distinct prime numbers.

The programs for A101427, the canonical program `A101427.P12585664161864066347` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101427 has offset 0).

The definition of A101427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101427.P12585664161864066347

`∑[A059329(n)]-A001840(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A101427

/-- `∑[A059329(n)]-A001840(n)` -/
def P12585664161864066347.Spec : Prop :=
  ∀ n, P12585664161864066347.a n = A101427 n

theorem P12585664161864066347.correct : P12585664161864066347.Spec := by
  intro n
  simp only [A101427]

end A101427

/-! ## A101427.P10200747296746014885

`2*A257464(n)-A008796(n)`
-/

namespace A101427.P10200747296746014885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257464 n - A008796 n

end

end A101427.P10200747296746014885

namespace A101427

/-- `2*A257464(n)-A008796(n)` -/
def P10200747296746014885.Spec : Prop :=
  ∀ n, P10200747296746014885.a n = A101427 n

end A101427

/-! ## A101427.P1841835104813702180

`A001399(n)+∑[∑[A266725(n)]]`
-/

namespace A101427.P1841835104813702180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266725 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101427.P1841835104813702180

namespace A101427

/-- `A001399(n)+∑[∑[A266725(n)]]` -/
def P1841835104813702180.Spec : Prop :=
  ∀ n, P1841835104813702180.a n = A101427 n

end A101427

/-! ## A101427.P15896294906694569481

`∑[A103221(n)+∑[A266725(n)]]`
-/

namespace A101427.P15896294906694569481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266725 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101427.P15896294906694569481

namespace A101427

/-- `∑[A103221(n)+∑[A266725(n)]]` -/
def P15896294906694569481.Spec : Prop :=
  ∀ n, P15896294906694569481.a n = A101427 n

end A101427

/-! ## A101427.P1039989817328677916

`A058389(n)-A230723(n+1)`
-/

namespace A101427.P1039989817328677916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058389 n - A230723 (n + 1)

end

end A101427.P1039989817328677916

namespace A101427

/-- `A058389(n)-A230723(n+1)` -/
def P1039989817328677916.Spec : Prop :=
  ∀ n, P1039989817328677916.a n = A101427 n

end A101427

/-! ## A101427.P6573260969238641659

`A001840(A000217(n+1))-A000217(A004526(n+1))`
-/

namespace A101427.P6573260969238641659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (A000217 (n + 1)).toNat - A000217 (A004526 (n + 1)).toNat

end

end A101427.P6573260969238641659

namespace A101427

/-- `A001840(A000217(n+1))-A000217(A004526(n+1))` -/
def P6573260969238641659.Spec : Prop :=
  ∀ n, P6573260969238641659.a n = A101427 n

end A101427

/-! ## A101427.P14183654942222523793

`A001399(n*(n+2))-a(n-1)` with `a(0)=1`
-/

namespace A101427.P14183654942222523793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001399 (n * (n + 2)) - a (n - 1)

end

end A101427.P14183654942222523793

namespace A101427

/-- `A001399(n*(n+2))-a(n-1)` -/
def P14183654942222523793.Spec : Prop :=
  ∀ n, P14183654942222523793.a n = A101427 n

end A101427

/-! ## A101427.P11962297031799210022

`A005044(A005563(n+1))+A005044(A005563(n))`
-/

namespace A101427.P11962297031799210022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A005563 (n + 1)).toNat + A005044 (A005563 n).toNat

end

end A101427.P11962297031799210022

namespace A101427

/-- `A005044(A005563(n+1))+A005044(A005563(n))` -/
def P11962297031799210022.Spec : Prop :=
  ∀ n, P11962297031799210022.a n = A101427 n

end A101427

/-!
# A101428: Number of ways to write n as an ordered sum of a triangular number (A000217) and a square (A000290).

The programs for A101428, the canonical program `A101428.P10351250407509594824` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101428 has offset 0).

The definition of A101428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101428.P3070286636801249846

`ceil(A112603(n)/2)`
-/

namespace A101428.P3070286636801249846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112603 n : ℚ) / 2⌉

end

end A101428.P3070286636801249846

namespace A101428

/-- `ceil(A112603(n)/2)` -/
def P3070286636801249846.Spec : Prop :=
  ∀ n, P3070286636801249846.a n = A101428 n

end A101428

/-! ## A101428.P1045698628430801154

`A004526(A112603(n)+1)`
-/

namespace A101428.P1045698628430801154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A112603 n + 1).toNat

end

end A101428.P1045698628430801154

namespace A101428

/-- `A004526(A112603(n)+1)` -/
def P1045698628430801154.Spec : Prop :=
  ∀ n, P1045698628430801154.a n = A101428 n

end A101428

/-! ## A101428.P15026838124858436820

`A002265(2*(A112603(n)+1))`
-/

namespace A101428.P15026838124858436820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A112603 n + 1)).toNat

end

end A101428.P15026838124858436820

namespace A101428

/-- `A002265(2*(A112603(n)+1))` -/
def P15026838124858436820.Spec : Prop :=
  ∀ n, P15026838124858436820.a n = A101428 n

end A101428

/-! ## A101428.P3825957807878908599

`(A112603(n)+A010054(n))/2`
-/

namespace A101428.P3825957807878908599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112603 n + A010054 n : ℚ) / 2

end

end A101428.P3825957807878908599

namespace A101428

/-- `(A112603(n)+A010054(n))/2` -/
def P3825957807878908599.Spec : Prop :=
  ∀ n, P3825957807878908599.a n = (A101428 n : ℚ)

end A101428

/-! ## A101428.P1063775176181239132

`A002265(A112603(n)+A112603(n)+2)`
-/

namespace A101428.P1063775176181239132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A112603 n + (A112603 n + 2)).toNat

end

end A101428.P1063775176181239132

namespace A101428

/-- `A002265(A112603(n)+A112603(n)+2)` -/
def P1063775176181239132.Spec : Prop :=
  ∀ n, P1063775176181239132.a n = A101428 n

end A101428

/-! ## A101428.P13959302057762752272

`A112603(n)-A002265(2*A112603(n))`
-/

namespace A101428.P13959302057762752272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112603 n - A002265 (2 * A112603 n).toNat

end

end A101428.P13959302057762752272

namespace A101428

/-- `A112603(n)-A002265(2*A112603(n))` -/
def P13959302057762752272.Spec : Prop :=
  ∀ n, P13959302057762752272.a n = A101428 n

end A101428

/-! ## A101428.P10351250407509594824

`A216282(8*n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A101428

/-- `A216282(8*n+1)` -/
def P10351250407509594824.Spec : Prop :=
  ∀ n, P10351250407509594824.a n = A101428 n

theorem P10351250407509594824.correct : P10351250407509594824.Spec := by
  intro n
  simp only [A101428]

end A101428

/-!
# A101429: Sum of digits of (2^(10^n)).

The programs for A101429, there is no canonical definition to state claims against.
-/

/-! ## A101429.P10976973076879531826

`A001370(10^n)`
-/

namespace A101429.P10976973076879531826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (10 ^ n)

end

end A101429.P10976973076879531826

/-!
# A101432: Each term is the number of letters in the Spanish name of the previous term.

The programs for A101432, the canonical program `A101432.P15795474963028315883` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101432 has offset 0).

The definition of A101432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101432.P15795474963028315883

`a(n-2)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=6`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101432

/-- `a(n-2)` -/
def P15795474963028315883.Spec : Prop :=
  ∀ n, (P15795474963028315883.a n : ℤ) = A101432 n

theorem P15795474963028315883.correct : P15795474963028315883.Spec := by
  intro n
  simp only [A101432]

end A101432

/-!
# A101433: Partial sums of A101402.

The programs for A101433, the canonical program `A101433.P9572966156324699386` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101433 has offset 0).

The definition of A101433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101433.P3603256964699915598

`∑[A101402(n)]`
-/

namespace A101433.P3603256964699915598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101433.P3603256964699915598

namespace A101433

/-- `∑[A101402(n)]` -/
def P3603256964699915598.Spec : Prop :=
  ∀ n, P3603256964699915598.a n = A101433 n

end A101433

/-! ## A101433.P9572966156324699386

`∑[∑[A164349(n)]]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A101433

/-- `∑[∑[A164349(n)]]` -/
def P9572966156324699386.Spec : Prop :=
  ∀ n, P9572966156324699386.a n = A101433 n

theorem P9572966156324699386.correct : P9572966156324699386.Spec := by
  intro n
  simp only [A101433]

end A101433

/-! ## A101433.P12720273039372006309

`∑[∑[char[∑[A101403(n)]]]]`
-/

namespace A101433.P12720273039372006309
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101403 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101433.P12720273039372006309

namespace A101433

/-- `∑[∑[char[∑[A101403(n)]]]]` -/
def P12720273039372006309.Spec : Prop :=
  ∀ n, (P12720273039372006309.a n : ℤ) = A101433 n

end A101433

/-! ## A101433.P17401201747551658966

`∑[∑[A101266(abs(1-n))]]`
-/

namespace A101433.P17401201747551658966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101266 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101433.P17401201747551658966

namespace A101433

/-- `∑[∑[A101266(abs(1-n))]]` -/
def P17401201747551658966.Spec : Prop :=
  ∀ n, P17401201747551658966.a n = A101433 n

end A101433

/-! ## A101433.P15279475760678043412

`∑[∑[char[A246439(n+1)]]]`
-/

namespace A101433.P15279475760678043412
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246439 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101433.P15279475760678043412

namespace A101433

/-- `∑[∑[char[A246439(n+1)]]]` -/
def P15279475760678043412.Spec : Prop :=
  ∀ n, (P15279475760678043412.a n : ℤ) = A101433 n

end A101433

/-! ## A101433.P8136333763982425508

`∑[∑[A101266(n)]-A101266(n)]`
-/

namespace A101433.P8136333763982425508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101266 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A101266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101433.P8136333763982425508

namespace A101433

/-- `∑[∑[A101266(n)]-A101266(n)]` -/
def P8136333763982425508.Spec : Prop :=
  ∀ n, P8136333763982425508.a n = A101433 n

end A101433

/-! ## A101433.P2405960486831728967

`A101402(n)+a(A000027(n+1)-2)` with `a(0)=0`
-/

namespace A101433.P2405960486831728967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A101402 n + a (A000027 (n + 1) - 2).toNat

end

end A101433.P2405960486831728967

namespace A101433

/-- `A101402(n)+a(A000027(n+1)-2)` -/
def P2405960486831728967.Spec : Prop :=
  ∀ n, P2405960486831728967.a n = A101433 n

end A101433

/-! ## A101433.P1345893198572360389

`∑[∑[log2(A293838(n+1))]]`
-/

namespace A101433.P1345893198572360389
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A293838 (n + 1) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101433.P1345893198572360389

namespace A101433

/-- `∑[∑[log2(A293838(n+1))]]` -/
def P1345893198572360389.Spec : Prop :=
  ∀ n, P1345893198572360389.a n = (A101433 n : ℝ)

end A101433

/-!
# A101434: Composite numbers which are the product of non-twin primes.

The programs for A101434, there is no canonical definition to state claims against.
-/

/-! ## A101434.P14686666336304947470

`record[A135684(A062729(n+3))]`
-/

namespace A101434.P14686666336304947470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135684 (A062729 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101434.P14686666336304947470

/-! ## A101434.P8821365214839180079

`filter[A062729(n+1), A066247(#)]`
-/

namespace A101434.P8821365214839180079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A101434.P8821365214839180079

/-! ## A101434.P17993365117619751269

`filter[A062729(n+2), A005171(#)]`
-/

namespace A101434.P17993365117619751269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A101434.P17993365117619751269

/-! ## A101434.P1474815509948336856

`filter[A062729(n+3), A354034(#)]`
-/

namespace A101434.P1474815509948336856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A101434.P1474815509948336856

/-! ## A101434.P6137985594465840537

`∩[A002808(n+1), A062729(n+1)]`
-/

namespace A101434.P6137985594465840537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101434.P6137985594465840537

/-! ## A101434.P7174248253263094272

`∩[A060679(n+1), A062729(n+1)]`
-/

namespace A101434.P7174248253263094272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101434.P7174248253263094272

/-! ## A101434.P4010365178364657940

`∩[A062729(n+1), A078542(n+1)]`
-/

namespace A101434.P4010365178364657940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101434.P4010365178364657940

/-! ## A101434.P3300650498910284183

`∩[A062729(n+1), A110087(n+1)]`
-/

namespace A101434.P3300650498910284183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101434.P3300650498910284183

/-! ## A101434.P2297475233627055711

`∩[A062729(n+1), A132858(n+1)]`
-/

namespace A101434.P2297475233627055711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101434.P2297475233627055711

/-! ## A101434.P15087389949836049669

`∩[A062729(n+1), A175526(n+1)]`
-/

namespace A101434.P15087389949836049669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101434.P15087389949836049669

/-!
# A101435: Dimension of a certain space of modular forms of weight 2 and level p^2, where p runs through the primes > 3 that are == 3 mod 4. See reference for precise definition.

The programs for A101435, there is no canonical definition to state claims against.
-/

/-! ## A101435.P15615478932345937971

`A051274(A005099(n+2))`
-/

namespace A101435.P15615478932345937971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 (A005099 (n + 2)).toNat

end

end A101435.P15615478932345937971

/-! ## A101435.P2363151988592027878

`A063276(A089193(n+2))`
-/

namespace A101435.P2363151988592027878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063276 (A089193 (n + 2)).toNat

end

end A101435.P2363151988592027878

/-! ## A101435.P13242489574179269334

`A063279(A090670(n+2))`
-/

namespace A101435.P13242489574179269334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063279 (A090670 (n + 2)).toNat

end

end A101435.P13242489574179269334

/-! ## A101435.P11521518562640434699

`A267806(A089986(n+2))`
-/

namespace A101435.P11521518562640434699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267806 (A089986 (n + 2)).toNat

end

end A101435.P11521518562640434699

/-! ## A101435.P10187372648806890732

`A051274(A095278(n+2)+1)`
-/

namespace A101435.P10187372648806890732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 (A095278 (n + 2) + 1).toNat

end

end A101435.P10187372648806890732

/-! ## A101435.P5830321054601323832

`A063195(A095278(n+2)+1)`
-/

namespace A101435.P5830321054601323832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (A095278 (n + 2) + 1).toNat

end

end A101435.P5830321054601323832

/-! ## A101435.P17665898752377179166

`A063195(A156287(n+2)+1)`
-/

namespace A101435.P17665898752377179166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (A156287 (n + 2) + 1).toNat

end

end A101435.P17665898752377179166

/-! ## A101435.P10375450822704500539

`A063195(A005099(n+2)+2)`
-/

namespace A101435.P10375450822704500539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (A005099 (n + 2) + 2).toNat

end

end A101435.P10375450822704500539

/-! ## A101435.P16800372783533632104

`A051274(A156287(n+2)-1)`
-/

namespace A101435.P16800372783533632104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 (A156287 (n + 2) - 1).toNat

end

end A101435.P16800372783533632104

/-! ## A101435.P14461976463630606480

`or(1, A001617(A002145(n+2)))`
-/

namespace A101435.P14461976463630606480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001617 (A002145 (n + 2)).toNat)

end

end A101435.P14461976463630606480

/-!
# A101436: Number of exponents in prime factorization of n which are primes.

The programs for A101436, the canonical program `A101436.P2181373059902386332` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101436 has offset 1).

The definition of A101436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101436.P2181373059902386332

`val(A049599(n+1), 3)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A101436

/-- `val(A049599(n+1), 3)` -/
def P2181373059902386332.Spec : Prop :=
  ∀ n, (P2181373059902386332.a n : ℤ) = A101436 (n + 1)

theorem P2181373059902386332.correct : P2181373059902386332.Spec := by
  intro n
  simp only [A101436, Nat.add_sub_cancel]

end A101436

/-! ## A101436.P13896055536027153708

`val(A369015(n+1), 3)`
-/

namespace A101436.P13896055536027153708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A369015 (n + 1)).toNat 3

end

end A101436.P13896055536027153708

namespace A101436

/-- `val(A369015(n+1), 3)` -/
def P13896055536027153708.Spec : Prop :=
  ∀ n, (P13896055536027153708.a n : ℤ) = A101436 (n + 1)

end A101436

/-! ## A101436.P17421755420107654498

`∑{e}[n+1, A010051(#)]`
-/

namespace A101436.P17421755420107654498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A010051 (Nat.factorization (f1 n) p)

end

end A101436.P17421755420107654498

namespace A101436

/-- `∑{e}[n+1, A010051(#)]` -/
def P17421755420107654498.Spec : Prop :=
  ∀ n, P17421755420107654498.a n = A101436 (n + 1)

end A101436

/-! ## A101436.P7516919058515681539

`∑{e}[n+1, A257000(#)]`
-/

namespace A101436.P7516919058515681539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A257000 (Nat.factorization (f1 n) p)

end

end A101436.P7516919058515681539

namespace A101436

/-- `∑{e}[n+1, A257000(#)]` -/
def P7516919058515681539.Spec : Prop :=
  ∀ n, P7516919058515681539.a n = A101436 (n + 1)

end A101436

/-! ## A101436.P61153191968440581

`∑{e}[n+1, A283991(#)]`
-/

namespace A101436.P61153191968440581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A283991 (Nat.factorization (f1 n) p)

end

end A101436.P61153191968440581

namespace A101436

/-- `∑{e}[n+1, A283991(#)]` -/
def P61153191968440581.Spec : Prop :=
  ∀ n, P61153191968440581.a n = A101436 (n + 1)

end A101436

/-! ## A101436.P17825253292384394986

`val(∏{e}[n+1, A000005(#)+1], 3)`
-/

namespace A101436.P17825253292384394986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), (A000005 (Nat.factorization (f1 n) p) + 1)).toNat 3

end

end A101436.P17825253292384394986

namespace A101436

/-- `val(∏{e}[n+1, A000005(#)+1], 3)` -/
def P17825253292384394986.Spec : Prop :=
  ∀ n, (P17825253292384394986.a n : ℤ) = A101436 (n + 1)

end A101436

/-! ## A101436.P12715130933360295897

`A007949(A049599(n+1))`
-/

namespace A101436.P12715130933360295897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A049599 (n + 1)).toNat

end

end A101436.P12715130933360295897

namespace A101436

/-- `A007949(A049599(n+1))` -/
def P12715130933360295897.Spec : Prop :=
  ∀ n, P12715130933360295897.a n = A101436 (n + 1)

end A101436

/-! ## A101436.P10085233881263504190

`A125029(A057521(n+1))`
-/

namespace A101436.P10085233881263504190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125029 (A057521 (n + 1)).toNat

end

end A101436.P10085233881263504190

namespace A101436

/-- `A125029(A057521(n+1))` -/
def P10085233881263504190.Spec : Prop :=
  ∀ n, P10085233881263504190.a n = A101436 (n + 1)

end A101436

/-! ## A101436.P1308791218178598510

`A257994(A181819(n+1))`
-/

namespace A101436.P1308791218178598510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A181819 (n + 1)).toNat

end

end A101436.P1308791218178598510

namespace A101436

/-- `A257994(A181819(n+1))` -/
def P1308791218178598510.Spec : Prop :=
  ∀ n, P1308791218178598510.a n = A101436 (n + 1)

end A101436

/-! ## A101436.P16448796570381976864

`A001221(n+1)-A125070(n+1)`
-/

namespace A101436.P16448796570381976864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A125070 (n + 1)

end

end A101436.P16448796570381976864

namespace A101436

/-- `A001221(n+1)-A125070(n+1)` -/
def P16448796570381976864.Spec : Prop :=
  ∀ n, P16448796570381976864.a n = A101436 (n + 1)

end A101436

/-! ## A101436.P4516629980051823581

`A125029(n+1)-A056169(n+1)`
-/

namespace A101436.P4516629980051823581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125029 (n + 1) - A056169 (n + 1)

end

end A101436.P4516629980051823581

namespace A101436

/-- `A125029(n+1)-A056169(n+1)` -/
def P4516629980051823581.Spec : Prop :=
  ∀ n, P4516629980051823581.a n = A101436 (n + 1)

end A101436

/-! ## A101436.P13174102332026584199

`A381401(n+1)-A001221(n+1)`
-/

namespace A101436.P13174102332026584199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381401 (n + 1) - A001221 (n + 1)

end

end A101436.P13174102332026584199

namespace A101436

/-- `A381401(n+1)-A001221(n+1)` -/
def P13174102332026584199.Spec : Prop :=
  ∀ n, P13174102332026584199.a n = A101436 (n + 1)

end A101436

/-! ## A101436.P8745027771405781789

`val(∏{e}[n+1, A005900(A000005(#))], 3)`
-/

namespace A101436.P8745027771405781789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), A005900 (A000005 (Nat.factorization (f1 n) p)).toNat).toNat 3

end

end A101436.P8745027771405781789

namespace A101436

/-- `val(∏{e}[n+1, A005900(A000005(#))], 3)` -/
def P8745027771405781789.Spec : Prop :=
  ∀ n, (P8745027771405781789.a n : ℤ) = A101436 (n + 1)

end A101436

/-! ## A101436.P2841115426138498948

`A123391(n+1)+A125029(n+1)-A125030(n+1)`
-/

namespace A101436.P2841115426138498948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123391 (n + 1) + (A125029 (n + 1) - A125030 (n + 1))

end

end A101436.P2841115426138498948

namespace A101436

/-- `A123391(n+1)+A125029(n+1)-A125030(n+1)` -/
def P2841115426138498948.Spec : Prop :=
  ∀ n, P2841115426138498948.a n = A101436 (n + 1)

end A101436

/-! ## A101436.P12829787749979151530

`A293439(n+1)+A367512(n+1)-A125070(n+1)`
-/

namespace A101436.P12829787749979151530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293439 (n + 1) + (A367512 (n + 1) - A125070 (n + 1))

end

end A101436.P12829787749979151530

namespace A101436

/-- `A293439(n+1)+A367512(n+1)-A125070(n+1)` -/
def P12829787749979151530.Spec : Prop :=
  ∀ n, P12829787749979151530.a n = A101436 (n + 1)

end A101436

/-! ## A101436.P11981278552977890859

`A349326(A336643((n+1)*A368170(n+1)))`
-/

namespace A101436.P11981278552977890859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349326 (A336643 ((n + 1 : ℤ) * A368170 (n + 1)).toNat).toNat

end

end A101436.P11981278552977890859

namespace A101436

/-- `A349326(A336643((n+1)*A368170(n+1)))` -/
def P11981278552977890859.Spec : Prop :=
  ∀ n, P11981278552977890859.a n = A101436 (n + 1)

end A101436

/-! ## A101436.P10209762317185894759

`and(A191825(n), A391900(n+1))`
-/

namespace A101436.P10209762317185894759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A191825 n) (A391900 (n + 1))

end

end A101436.P10209762317185894759

namespace A101436

/-- `and(A191825(n), A391900(n+1))` -/
def P10209762317185894759.Spec : Prop :=
  ∀ n, P10209762317185894759.a n = A101436 (n + 1)

end A101436

/-! ## A101436.P7089240072719177228

`A125070(A011262(n+1))`
-/

namespace A101436.P7089240072719177228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125070 (A011262 (n + 1)).toNat

end

end A101436.P7089240072719177228

namespace A101436

/-- `A125070(A011262(n+1))` -/
def P7089240072719177228.Spec : Prop :=
  ∀ n, P7089240072719177228.a n = A101436 (n + 1)

end A101436

/-!
# A101438: Inverse permutation to A101369.

The programs for A101438, there is no canonical definition to state claims against.
-/

/-! ## A101438.P15151689833695467768

`A114112(A355506(n+1))`
-/

namespace A101438.P15151689833695467768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114112 (A355506 (n + 1)).toNat

end

end A101438.P15151689833695467768

/-! ## A101438.P2929442401151064397

`xor(A060576(A030040(n)), A118316(n+1))`
-/

namespace A101438.P2929442401151064397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060576 (A030040 n).toNat) (A118316 (n + 1))

end

end A101438.P2929442401151064397

/-! ## A101438.P5789424740030856378

`xor(A060576(A145778(n+1)), A118316(n+1))`
-/

namespace A101438.P5789424740030856378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060576 (A145778 (n + 1)).toNat) (A118316 (n + 1))

end

end A101438.P5789424740030856378

/-! ## A101438.P4869924608192347003

`xor(A060576(A003432(n)), A118316(n+1))`
-/

namespace A101438.P4869924608192347003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060576 (A003432 n).toNat) (A118316 (n + 1))

end

end A101438.P4869924608192347003

/-! ## A101438.P5222195053672854009

`xor(A006369(n+1), A008437(A287850(n)))`
-/

namespace A101438.P5222195053672854009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006369 (n + 1)) (A008437 (A287850 n).toNat)

end

end A101438.P5222195053672854009

/-!
# A101440: Replace each digit of n with 1 followed by n 0's: 0 -> 1, 1 -> 10, 2 -> 100, ..., 9 -> 1000000000, 10 -> 101, 11 -> 1010, 12 -> 10100, etc. Expanded number is then converted from binary to decimal: 0 -> 1 -> 1, 1 -> 10 -> 2, 2 -> 100 -> 4, 9 -> 1000000000 -> 512, 10 -> 101 -> 5, etc.

The programs for A101440, there is no canonical definition to state claims against.
-/

/-! ## A101440.P606461054339115675

`A178729(A054842(n))/A067018(A006222(n))`
-/

namespace A101440.P606461054339115675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178729 (A054842 n).toNat : ℚ) / (A067018 (A006222 n).toNat : ℚ)

end

end A101440.P606461054339115675

/-! ## A101440.P12814970861251505935

`A184617(A054842(n))%A001621(A139582(n))`
-/

namespace A101440.P12814970861251505935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184617 (A054842 n).toNat) (A001621 (A139582 n).toNat)

end

end A101440.P12814970861251505935

/-! ## A101440.P13190800962679717202

`A178729(A054842(n))/A000005(A000043(n+1))`
-/

namespace A101440.P13190800962679717202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178729 (A054842 n).toNat : ℚ) / (A000005 (A000043 (n + 1)).toNat : ℚ)

end

end A101440.P13190800962679717202

/-! ## A101440.P9294172657465510358

`A184617(A054842(n))*A290105(A017910(n))`
-/

namespace A101440.P9294172657465510358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184617 (A054842 n).toNat * A290105 (A017910 n).toNat

end

end A101440.P9294172657465510358

/-! ## A101440.P9986392557493035179

`A184617(A054842(n)%A000043(2*n+3))`
-/

namespace A101440.P9986392557493035179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184617 (Int.tmod (A054842 n) (A000043 (2 * n + 3))).toNat

end

end A101440.P9986392557493035179

/-!
# A101441: n^prime(n+1).

The programs for A101441, the canonical program `A101441.P617761949717749119` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101441 has offset 0).

The definition of A101441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101441.P617761949717749119

`n^A000040(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A101441

/-- `n^A000040(n+1)` -/
def P617761949717749119.Spec : Prop :=
  ∀ n, P617761949717749119.a n = (A101441 n : ℚ)

end A101441

/-! ## A101441.P10816837712552990618

`n^p?[xor(1, n)]`
-/

namespace A101441.P10816837712552990618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A101441.P10816837712552990618

namespace A101441

/-- `n^p?[xor(1, n)]` -/
def P10816837712552990618.Spec : Prop :=
  ∀ n, (P10816837712552990618.a n : ℤ) = A101441 n

end A101441

/-! ## A101441.P9803439916429449949

`n^p?[comp[n²]]`
-/

namespace A101441.P9803439916429449949
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A101441.P9803439916429449949

namespace A101441

/-- `n^p?[comp[n²]]` -/
def P9803439916429449949.Spec : Prop :=
  ∀ n, (P9803439916429449949.a n : ℤ) = A101441 n

end A101441

/-! ## A101441.P14732933820938172160

`n^eq[1, ∑{e}[n, #]]`
-/

namespace A101441.P14732933820938172160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101441.P14732933820938172160

namespace A101441

/-- `n^eq[1, ∑{e}[n, #]]` -/
def P14732933820938172160.Spec : Prop :=
  ∀ n, (P14732933820938172160.a n : ℤ) = A101441 n

end A101441

/-! ## A101441.P4619448706803979379

`n^record[∑{p}[n+2, #]]`
-/

namespace A101441.P4619448706803979379
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101441.P4619448706803979379

namespace A101441

/-- `n^record[∑{p}[n+2, #]]` -/
def P4619448706803979379.Spec : Prop :=
  ∀ n, (P4619448706803979379.a n : ℤ) = A101441 n

end A101441

/-!
# A101443: Continued fraction expansion of (I_0(1/2)/I_1(1/2)-1)/2 = 1.56185896... (where I_n is the modified Bessel function of the first kind).

The programs for A101443, the canonical program `A101443.P6165119519852410918` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101443 has offset 0).

The definition of A101443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101443.P6165119519852410918

`or(1, Δ[ceil(n/3)²])`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101443

/-- `or(1, Δ[ceil(n/3)²])` -/
def P6165119519852410918.Spec : Prop :=
  ∀ n, P6165119519852410918.a n = A101443 n

theorem P6165119519852410918.correct : P6165119519852410918.Spec := by
  intro n
  simp only [A101443]

end A101443

/-! ## A101443.P4863147698115933545

`1-lcm(3, n)/3+n`
-/

namespace A101443.P4863147698115933545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (Nat.lcm 3 n : ℚ) / 3 + (n : ℚ)

end

end A101443.P4863147698115933545

namespace A101443

/-- `1-lcm(3, n)/3+n` -/
def P4863147698115933545.Spec : Prop :=
  ∀ n, P4863147698115933545.a n = (A101443 n : ℚ)

end A101443

/-! ## A101443.P521981413404728903

`1-n/gcd(3, n)+n`
-/

namespace A101443.P521981413404728903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (n : ℚ) / (Nat.gcd 3 n : ℚ) + (n : ℚ)

end

end A101443.P521981413404728903

namespace A101443

/-- `1-n/gcd(3, n)+n` -/
def P521981413404728903.Spec : Prop :=
  ∀ n, P521981413404728903.a n = (A101443 n : ℚ)

end A101443

/-! ## A101443.P2841454130041583553

`Δ[2*C(ceil(n/3), 2)]+1`
-/

namespace A101443.P2841454130041583553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose ⌈(n : ℚ) / 3⌉.toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A101443.P2841454130041583553

namespace A101443

/-- `Δ[2*C(ceil(n/3), 2)]+1` -/
def P2841454130041583553.Spec : Prop :=
  ∀ n, P2841454130041583553.a n = A101443 n

end A101443

/-! ## A101443.P5621503351372503651

`gcd(comp[4*n]+1, 2*n+3)`
-/

namespace A101443.P5621503351372503651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) (2 * n + 3)

end

end A101443.P5621503351372503651

namespace A101443

/-- `gcd(comp[4*n]+1, 2*n+3)` -/
def P5621503351372503651.Spec : Prop :=
  ∀ n, (P5621503351372503651.a n : ℤ) = A101443 n

end A101443

/-! ## A101443.P16674606015340594620

`n+1-gcd(∑[2*n²], n²)`
-/

namespace A101443.P16674606015340594620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (n ^ 2) : ℤ)

end

end A101443.P16674606015340594620

namespace A101443

/-- `n+1-gcd(∑[2*n²], n²)` -/
def P16674606015340594620.Spec : Prop :=
  ∀ n, P16674606015340594620.a n = A101443 n

end A101443

/-! ## A101443.P6077197765763393632

`abs(n/3-n)*char[3*n]+1`
-/

namespace A101443.P6077197765763393632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n : ℚ) / 3 - (n : ℚ)| * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + 1

end

end A101443.P6077197765763393632

namespace A101443

/-- `abs(n/3-n)*char[3*n]+1` -/
def P6077197765763393632.Spec : Prop :=
  ∀ n, P6077197765763393632.a n = (A101443 n : ℚ)

end A101443

/-! ## A101443.P1173996529148842650

`ceil(A058281(n+1)/2)`
-/

namespace A101443.P1173996529148842650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A058281 (n + 1) : ℚ) / 2⌉

end

end A101443.P1173996529148842650

namespace A101443

/-- `ceil(A058281(n+1)/2)` -/
def P1173996529148842650.Spec : Prop :=
  ∀ n, P1173996529148842650.a n = A101443 n

end A101443

/-! ## A101443.P8260619586533465527

`A110091(A088439(n))`
-/

namespace A101443.P8260619586533465527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110091 (A088439 n).toNat

end

end A101443.P8260619586533465527

namespace A101443

/-- `A110091(A088439(n))` -/
def P8260619586533465527.Spec : Prop :=
  ∀ n, P8260619586533465527.a n = A101443 n

end A101443

/-! ## A101443.P13184003286000823046

`A093178(A117909(n))`
-/

namespace A101443.P13184003286000823046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A117909 n).toNat

end

end A101443.P13184003286000823046

namespace A101443

/-- `A093178(A117909(n))` -/
def P13184003286000823046.Spec : Prop :=
  ∀ n, P13184003286000823046.a n = A101443 n

end A101443

/-! ## A101443.P8123221055623633665

`A093178(A026166(n+1))`
-/

namespace A101443.P8123221055623633665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A026166 (n + 1)).toNat

end

end A101443.P8123221055623633665

namespace A101443

/-- `A093178(A026166(n+1))` -/
def P8123221055623633665.Spec : Prop :=
  ∀ n, P8123221055623633665.a n = A101443 n

end A101443

/-! ## A101443.P6999886866870518152

`A093178(A026177(n+1))`
-/

namespace A101443.P6999886866870518152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A026177 (n + 1)).toNat

end

end A101443.P6999886866870518152

namespace A101443

/-- `A093178(A026177(n+1))` -/
def P6999886866870518152.Spec : Prop :=
  ∀ n, P6999886866870518152.a n = A101443 n

end A101443

/-! ## A101443.P13093248423653891364

`A093178(A026191(n+1))`
-/

namespace A101443.P13093248423653891364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A026191 (n + 1)).toNat

end

end A101443.P13093248423653891364

namespace A101443

/-- `A093178(A026191(n+1))` -/
def P13093248423653891364.Spec : Prop :=
  ∀ n, P13093248423653891364.a n = A101443 n

end A101443

/-! ## A101443.P3926654666869500998

`A093178(A026203(n+1))`
-/

namespace A101443.P3926654666869500998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A026203 (n + 1)).toNat

end

end A101443.P3926654666869500998

namespace A101443

/-- `A093178(A026203(n+1))` -/
def P3926654666869500998.Spec : Prop :=
  ∀ n, P3926654666869500998.a n = A101443 n

end A101443

/-! ## A101443.P18366600651285396826

`A093178(A026215(n+2))`
-/

namespace A101443.P18366600651285396826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A026215 (n + 2)).toNat

end

end A101443.P18366600651285396826

namespace A101443

/-- `A093178(A026215(n+2))` -/
def P18366600651285396826.Spec : Prop :=
  ∀ n, P18366600651285396826.a n = A101443 n

end A101443

/-! ## A101443.P14241714741916954589

`A109613(n-A051176(n))`
-/

namespace A101443.P14241714741916954589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 ((n : ℤ) - A051176 n).toNat

end

end A101443.P14241714741916954589

namespace A101443

/-- `A109613(n-A051176(n))` -/
def P14241714741916954589.Spec : Prop :=
  ∀ n, P14241714741916954589.a n = A101443 n

end A101443

/-! ## A101443.P12362873189569375477

`A000265(n+1-A051176(n))`
-/

namespace A101443.P12362873189569375477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((n + 1 : ℤ) - A051176 n).toNat

end

end A101443.P12362873189569375477

namespace A101443

/-- `A000265(n+1-A051176(n))` -/
def P12362873189569375477.Spec : Prop :=
  ∀ n, P12362873189569375477.a n = A101443 n

end A101443

/-! ## A101443.P10198500109135183455

`A022998(1-A051176(n)+n)`
-/

namespace A101443.P10198500109135183455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (1 - A051176 n + (n : ℤ)).toNat

end

end A101443.P10198500109135183455

namespace A101443

/-- `A022998(1-A051176(n)+n)` -/
def P10198500109135183455.Spec : Prop :=
  ∀ n, P10198500109135183455.a n = A101443 n

end A101443

/-! ## A101443.P14788594070076173488

`A026741(1-A051176(n)+n)`
-/

namespace A101443.P14788594070076173488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (1 - A051176 n + (n : ℤ)).toNat

end

end A101443.P14788594070076173488

namespace A101443

/-- `A026741(1-A051176(n)+n)` -/
def P14788594070076173488.Spec : Prop :=
  ∀ n, P14788594070076173488.a n = A101443 n

end A101443

/-! ## A101443.P11629238198563446812

`A004396(1-A091684(n)+n)`
-/

namespace A101443.P11629238198563446812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (1 - A091684 n + (n : ℤ)).toNat

end

end A101443.P11629238198563446812

namespace A101443

/-- `A004396(1-A091684(n)+n)` -/
def P11629238198563446812.Spec : Prop :=
  ∀ n, P11629238198563446812.a n = A101443 n

end A101443

/-!
# A101447: Triangle read by rows: T(n,k) = (2*k+1)*(n+1-k), 0 <= k < n.

The programs for A101447, the canonical program `A101447.P4489853314784773764` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101447 has offset 0).

The definition of A101447 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*col(n)+1)*(row(n)+1-col(n))` (program `A101447.P4489853314784773764`, by `A101447.P4489853314784773764.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101447.P4489853314784773764

`(2*col(n)+1)*(row(n)+1-col(n))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101447

/-- `(2*col(n)+1)*(row(n)+1-col(n))` -/
def P4489853314784773764.Spec : Prop :=
  ∀ n, P4489853314784773764.a n = A101447 n

theorem P4489853314784773764.correct : P4489853314784773764.Spec := by
  intro n
  simp only [A101447]

end A101447

/-! ## A101447.P8243924602918838640

`(2*col(n)+1)*(row(n)-col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101447.P8243924602918838640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1)

end

end A101447.P8243924602918838640

namespace A101447

/-- `(2*col(n)+1)*(row(n)-col(n)+1)` -/
def P8243924602918838640.Spec : Prop :=
  ∀ n, P8243924602918838640.a n = A101447 n

theorem P8243924602918838640.correct : P8243924602918838640.Spec := by
  intro n
  simp only [A101447, Nat.add_sub_cancel, A101447.P8243924602918838640.a, A101447.P4489853314784773764.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A101447

/-! ## A101447.P8433128500170277375

`(C(comp[∑[n]]-n, 2)-n)*A158405(n+1)`
-/

namespace A101447.P8433128500170277375
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A158405 (n + 1)

end

end A101447.P8433128500170277375

namespace A101447

/-- `(C(comp[∑[n]]-n, 2)-n)*A158405(n+1)` -/
def P8433128500170277375.Spec : Prop :=
  ∀ n, P8433128500170277375.a n = A101447 n

end A101447

/-! ## A101447.P5426945598865266561

`A128139(n)+A059036(n)`
-/

namespace A101447.P5426945598865266561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128139 n + A059036 n

end

end A101447.P5426945598865266561

namespace A101447

/-- `A128139(n)+A059036(n)` -/
def P5426945598865266561.Spec : Prop :=
  ∀ n, P5426945598865266561.a n = A101447 n

theorem P5426945598865266561.correct : P5426945598865266561.Spec := by
  intro n
  simp only [A101447, Nat.add_sub_cancel, A101447.P5426945598865266561.a, A101447.P4489853314784773764.a, A059036, A059036.P14090632459187506294.a, A128139, A128139.P11791759487030447530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101447

/-! ## A101447.P10277476935798838709

`A332790(n)-A083381(n)`
-/

namespace A101447.P10277476935798838709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332790 n - A083381 n

end

end A101447.P10277476935798838709

namespace A101447

/-- `A332790(n)-A083381(n)` -/
def P10277476935798838709.Spec : Prop :=
  ∀ n, P10277476935798838709.a n = A101447 n

theorem P10277476935798838709.correct : P10277476935798838709.Spec := by
  intro n
  simp only [A101447, Nat.add_sub_cancel, A101447.P10277476935798838709.a, A101447.P4489853314784773764.a, A083381, A083381.P10137055261221379271.a, A332790, A332790.P5329249181625158832.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101447

/-! ## A101447.P6601273371000566028

`A129312(n+1)+A002262(n)`
-/

namespace A101447.P6601273371000566028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129312 (n + 1) + A002262 n

end

end A101447.P6601273371000566028

namespace A101447

/-- `A129312(n+1)+A002262(n)` -/
def P6601273371000566028.Spec : Prop :=
  ∀ n, P6601273371000566028.a n = A101447 n

theorem P6601273371000566028.correct : P6601273371000566028.Spec := by
  intro n
  simp only [A101447, Nat.add_sub_cancel, A101447.P6601273371000566028.a, A101447.P4489853314784773764.a, A002262, A002262.P17823619022233514403.a, A129312, A129312.P198002191961826283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101447

/-! ## A101447.P7036804537640438245

`A002262(n)+A141387(n)+1`
-/

namespace A101447.P7036804537640438245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (A141387 n + 1)

end

end A101447.P7036804537640438245

namespace A101447

/-- `A002262(n)+A141387(n)+1` -/
def P7036804537640438245.Spec : Prop :=
  ∀ n, P7036804537640438245.a n = A101447 n

theorem P7036804537640438245.correct : P7036804537640438245.Spec := by
  intro n
  simp only [A101447, Nat.add_sub_cancel, A101447.P7036804537640438245.a, A101447.P4489853314784773764.a, A002262, A002262.P17823619022233514403.a, A141387, A141387.P5238259369822402056.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101447

/-! ## A101447.P698174194693119898

`A141387(n)+A002260(n+1)`
-/

namespace A101447.P698174194693119898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141387 n + A002260 (n + 1)

end

end A101447.P698174194693119898

namespace A101447

/-- `A141387(n)+A002260(n+1)` -/
def P698174194693119898.Spec : Prop :=
  ∀ n, P698174194693119898.a n = A101447 n

theorem P698174194693119898.correct : P698174194693119898.Spec := by
  intro n
  simp only [A101447, Nat.add_sub_cancel, A101447.P698174194693119898.a, A101447.P4489853314784773764.a, A002260, A002260.P9170571874073898642.a, A141387, A141387.P5238259369822402056.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101447

/-! ## A101447.P17709393656162690810

`A130154(n+1)+A051162(n)`
-/

namespace A101447.P17709393656162690810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130154 (n + 1) + A051162 n

end

end A101447.P17709393656162690810

namespace A101447

/-- `A130154(n+1)+A051162(n)` -/
def P17709393656162690810.Spec : Prop :=
  ∀ n, P17709393656162690810.a n = A101447 n

theorem P17709393656162690810.correct : P17709393656162690810.Spec := by
  intro n
  simp only [A101447, Nat.add_sub_cancel, A101447.P17709393656162690810.a, A101447.P4489853314784773764.a, A051162, A051162.P4484969187050632534.a, A130154, A130154.P10522574722174175207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101447

/-! ## A101447.P11235603012627650056

`A004201(n+1)-A048147(n)`
-/

namespace A101447.P11235603012627650056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (n + 1) - A048147 n

end

end A101447.P11235603012627650056

namespace A101447

/-- `A004201(n+1)-A048147(n)` -/
def P11235603012627650056.Spec : Prop :=
  ∀ n, P11235603012627650056.a n = A101447 n

end A101447

/-! ## A101447.P2705012525598367723

`A127739(n+1)-A335262(n)`
-/

namespace A101447.P2705012525598367723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) - A335262 n

end

end A101447.P2705012525598367723

namespace A101447

/-- `A127739(n+1)-A335262(n)` -/
def P2705012525598367723.Spec : Prop :=
  ∀ n, P2705012525598367723.a n = A101447 n

end A101447

/-! ## A101447.P3990058638214490088

`A215630(n+1)-A349039(n)`
-/

namespace A101447.P3990058638214490088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215630 (n + 1) - A349039 n

end

end A101447.P3990058638214490088

namespace A101447

/-- `A215630(n+1)-A349039(n)` -/
def P3990058638214490088.Spec : Prop :=
  ∀ n, P3990058638214490088.a n = A101447 n

theorem P3990058638214490088.correct : P3990058638214490088.Spec := by
  intro n
  simp only [A101447, Nat.add_sub_cancel, A101447.P3990058638214490088.a, A101447.P4489853314784773764.a, A215630, A215630.P11031320249152060517.a, A349039, A349039.P8937323776347289677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101447

/-! ## A101447.P7733116113493895528

`(A056944(n)+1)*A193592(n)`
-/

namespace A101447.P7733116113493895528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056944 n + 1) * A193592 n

end

end A101447.P7733116113493895528

namespace A101447

/-- `(A056944(n)+1)*A193592(n)` -/
def P7733116113493895528.Spec : Prop :=
  ∀ n, P7733116113493895528.a n = A101447 n

end A101447

/-! ## A101447.P17873141272546040773

`A103218(n)/A004736(n+1)`
-/

namespace A101447.P17873141272546040773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103218 n : ℚ) / (A004736 (n + 1) : ℚ)

end

end A101447.P17873141272546040773

namespace A101447

/-- `A103218(n)/A004736(n+1)` -/
def P17873141272546040773.Spec : Prop :=
  ∀ n, P17873141272546040773.a n = (A101447 n : ℚ)

end A101447

/-! ## A101447.P12356507860875136400

`A003991(n+1)+A128139(n)-1`
-/

namespace A101447.P12356507860875136400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A128139 n - 1)

end

end A101447.P12356507860875136400

namespace A101447

/-- `A003991(n+1)+A128139(n)-1` -/
def P12356507860875136400.Spec : Prop :=
  ∀ n, P12356507860875136400.a n = A101447 n

theorem P12356507860875136400.correct : P12356507860875136400.Spec := by
  intro n
  simp only [A101447, Nat.add_sub_cancel, A101447.P12356507860875136400.a, A101447.P4489853314784773764.a, A003991, A003991.P6365127437582401781.a, A128139, A128139.P11791759487030447530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101447

/-! ## A101447.P7035250077566171266

`A094728(n+1)-A095832(n+1)`
-/

namespace A101447.P7035250077566171266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094728 (n + 1) - A095832 (n + 1)

end

end A101447.P7035250077566171266

namespace A101447

/-- `A094728(n+1)-A095832(n+1)` -/
def P7035250077566171266.Spec : Prop :=
  ∀ n, P7035250077566171266.a n = A101447 n

theorem P7035250077566171266.correct : P7035250077566171266.Spec := by
  intro n
  simp only [A101447, Nat.add_sub_cancel, A101447.P7035250077566171266.a, A101447.P4489853314784773764.a, A094728, A094728.P15119429803493593113.a, A095832, A095832.P7706533872419013118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101447

/-! ## A101447.P6905971019398164400

`A096037(n+1)-A128116(n+1)`
-/

namespace A101447.P6905971019398164400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) - A128116 (n + 1)

end

end A101447.P6905971019398164400

namespace A101447

/-- `A096037(n+1)-A128116(n+1)` -/
def P6905971019398164400.Spec : Prop :=
  ∀ n, P6905971019398164400.a n = A101447 n

theorem P6905971019398164400.correct : P6905971019398164400.Spec := by
  intro n
  simp only [A101447, Nat.add_sub_cancel, A101447.P6905971019398164400.a, A101447.P4489853314784773764.a, A096037, A096037.P3181478143696326318.a, A128116, A128116.P12706371843886189910.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101447

/-! ## A101447.P9417559052180371355

`A004736(n+1)*A158405(n+1)`
-/

namespace A101447.P9417559052180371355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A158405 (n + 1)

end

end A101447.P9417559052180371355

namespace A101447

/-- `A004736(n+1)*A158405(n+1)` -/
def P9417559052180371355.Spec : Prop :=
  ∀ n, P9417559052180371355.a n = A101447 n

end A101447

/-! ## A101447.P2941128288072862118

`(A025581(n)+1)*A158405(n+1)`
-/

namespace A101447.P2941128288072862118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A158405 (n + 1)

end

end A101447.P2941128288072862118

namespace A101447

/-- `(A025581(n)+1)*A158405(n+1)` -/
def P2941128288072862118.Spec : Prop :=
  ∀ n, P2941128288072862118.a n = A101447 n

theorem P2941128288072862118.correct : P2941128288072862118.Spec := by
  intro n
  simp only [A101447, Nat.add_sub_cancel, A101447.P2941128288072862118.a, A101447.P4489853314784773764.a, A025581, A025581.P16112744757063613497.a, A158405, A158405.P5173674940907569791.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101447

/-! ## A101447.P749442006157734257

`A094727(n+1)+2*A004247(n)`
-/

namespace A101447.P749442006157734257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) + 2 * A004247 n

end

end A101447.P749442006157734257

namespace A101447

/-- `A094727(n+1)+2*A004247(n)` -/
def P749442006157734257.Spec : Prop :=
  ∀ n, P749442006157734257.a n = A101447 n

theorem P749442006157734257.correct : P749442006157734257.Spec := by
  intro n
  simp only [A101447, Nat.add_sub_cancel, A101447.P749442006157734257.a, A101447.P4489853314784773764.a, A004247, A004247.P2751605162508615148.a, A094727, A094727.P1041695477673985807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101447

/-!
# A101448: Nonnegative numbers k such that 2k + 11 is prime.

The programs for A101448, the canonical program `A101448.P1558543184600313031` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101448 has offset 1).

The definition of A101448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101448.P6590599425900311587

`A155722(n+1)-1`
-/

namespace A101448.P6590599425900311587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1) - 1

end

end A101448.P6590599425900311587

namespace A101448

/-- `A155722(n+1)-1` -/
def P6590599425900311587.Spec : Prop :=
  ∀ n, P6590599425900311587.a n = A101448 (n + 1)

end A101448

/-! ## A101448.P1558543184600313031

`A088967(n+1)/2-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A101448

/-- `A088967(n+1)/2-1` -/
def P1558543184600313031.Spec : Prop :=
  ∀ n, P1558543184600313031.a n = (A101448 (n + 1) : ℚ)

end A101448

/-! ## A101448.P5772134232374183541

`(A172407(n+1)-1)/2`
-/

namespace A101448.P5772134232374183541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172407 (n + 1) - 1 : ℚ) / 2

end

end A101448.P5772134232374183541

namespace A101448

/-- `(A172407(n+1)-1)/2` -/
def P5772134232374183541.Spec : Prop :=
  ∀ n, P5772134232374183541.a n = (A101448 (n + 1) : ℚ)

end A101448

/-! ## A101448.P14782762755711226909

`∑[A001223(n+4)]/2-2`
-/

namespace A101448.P14782762755711226909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2 - 2

end

end A101448.P14782762755711226909

namespace A101448

/-- `∑[A001223(n+4)]/2-2` -/
def P14782762755711226909.Spec : Prop :=
  ∀ n, P14782762755711226909.a n = (A101448 (n + 1) : ℚ)

end A101448

/-! ## A101448.P162698498472367028

`A273943(∑[A001223(n+4)])-2`
-/

namespace A101448.P162698498472367028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 2

end

end A101448.P162698498472367028

namespace A101448

/-- `A273943(∑[A001223(n+4)])-2` -/
def P162698498472367028.Spec : Prop :=
  ∀ n, P162698498472367028.a n = A101448 (n + 1)

end A101448

/-! ## A101448.P11567362377134547016

`A172407(n+1)%A155722(n+1)`
-/

namespace A101448.P11567362377134547016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172407 (n + 1)) (A155722 (n + 1))

end

end A101448.P11567362377134547016

namespace A101448

/-- `A172407(n+1)%A155722(n+1)` -/
def P11567362377134547016.Spec : Prop :=
  ∀ n, P11567362377134547016.a n = A101448 (n + 1)

end A101448

/-! ## A101448.P2621396750724849641

`A321800(A057515(n))+A155722(n+1)`
-/

namespace A101448.P2621396750724849641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A057515 n).toNat + A155722 (n + 1)

end

end A101448.P2621396750724849641

namespace A101448

/-- `A321800(A057515(n))+A155722(n+1)` -/
def P2621396750724849641.Spec : Prop :=
  ∀ n, P2621396750724849641.a n = A101448 (n + 1)

end A101448

/-! ## A101448.P7845658264089263839

`A348951(A199423(n+1))+A155722(n+1)`
-/

namespace A101448.P7845658264089263839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348951 (A199423 (n + 1)).toNat + A155722 (n + 1)

end

end A101448.P7845658264089263839

namespace A101448

/-- `A348951(A199423(n+1))+A155722(n+1)` -/
def P7845658264089263839.Spec : Prop :=
  ∀ n, P7845658264089263839.a n = A101448 (n + 1)

end A101448

/-! ## A101448.P5954180123053208089

`A105760(n+2)-2`
-/

namespace A101448.P5954180123053208089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 2) - 2

end

end A101448.P5954180123053208089

namespace A101448

/-- `A105760(n+2)-2` -/
def P5954180123053208089.Spec : Prop :=
  ∀ n, P5954180123053208089.a n = A101448 (n + 1)

end A101448

/-! ## A101448.P215749037967445983

`A089038(n+3)-3`
-/

namespace A101448.P215749037967445983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 3) - 3

end

end A101448.P215749037967445983

namespace A101448

/-- `A089038(n+3)-3` -/
def P215749037967445983.Spec : Prop :=
  ∀ n, P215749037967445983.a n = A101448 (n + 1)

end A101448

/-! ## A101448.P7156978603102513211

`A161720(n+5)-2`
-/

namespace A101448.P7156978603102513211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 5) - 2

end

end A101448.P7156978603102513211

namespace A101448

/-- `A161720(n+5)-2` -/
def P7156978603102513211.Spec : Prop :=
  ∀ n, P7156978603102513211.a n = A101448 (n + 1)

end A101448

/-! ## A101448.P6852095776275645827

`A073273(n+3)-A097069(n+2)`
-/

namespace A101448.P6852095776275645827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 3) - A097069 (n + 2)

end

end A101448.P6852095776275645827

namespace A101448

/-- `A073273(n+3)-A097069(n+2)` -/
def P6852095776275645827.Spec : Prop :=
  ∀ n, P6852095776275645827.a n = A101448 (n + 1)

end A101448

/-! ## A101448.P13402777732266398230

`A024675(n+3)-A097338(n+3)`
-/

namespace A101448.P13402777732266398230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 3) - A097338 (n + 3)

end

end A101448.P13402777732266398230

namespace A101448

/-- `A024675(n+3)-A097338(n+3)` -/
def P13402777732266398230.Spec : Prop :=
  ∀ n, P13402777732266398230.a n = A101448 (n + 1)

end A101448

/-! ## A101448.P1826134515259192701

`A067076(n+4)-4`
-/

namespace A101448.P1826134515259192701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 4) - 4

end

end A101448.P1826134515259192701

namespace A101448

/-- `A067076(n+4)-4` -/
def P1826134515259192701.Spec : Prop :=
  ∀ n, P1826134515259192701.a n = A101448 (n + 1)

end A101448

/-! ## A101448.P8091270215790590564

`A005097(n+4)-5`
-/

namespace A101448.P8091270215790590564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 4) - 5

end

end A101448.P8091270215790590564

namespace A101448

/-- `A005097(n+4)-5` -/
def P8091270215790590564.Spec : Prop :=
  ∀ n, P8091270215790590564.a n = A101448 (n + 1)

end A101448

/-! ## A101448.P7971366756890976367

`A006254(n+4)-6`
-/

namespace A101448.P7971366756890976367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 4) - 6

end

end A101448.P7971366756890976367

namespace A101448

/-- `A006254(n+4)-6` -/
def P7971366756890976367.Spec : Prop :=
  ∀ n, P7971366756890976367.a n = A101448 (n + 1)

end A101448

/-! ## A101448.P2581394787888677247

`A098090(n+4)-7`
-/

namespace A101448.P2581394787888677247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 4) - 7

end

end A101448.P2581394787888677247

namespace A101448

/-- `A098090(n+4)-7` -/
def P2581394787888677247.Spec : Prop :=
  ∀ n, P2581394787888677247.a n = A101448 (n + 1)

end A101448

/-! ## A101448.P18325362333440151584

`A089253(n+4)-8`
-/

namespace A101448.P18325362333440151584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 4) - 8

end

end A101448.P18325362333440151584

namespace A101448

/-- `A089253(n+4)-8` -/
def P18325362333440151584.Spec : Prop :=
  ∀ n, P18325362333440151584.a n = A101448 (n + 1)

end A101448

/-! ## A101448.P8560143318585567754

`A008507(A020705(n))-1+n`
-/

namespace A101448.P8560143318585567754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008507 (A020705 n).toNat - 1 + (n : ℤ)

end

end A101448.P8560143318585567754

namespace A101448

/-- `A008507(A020705(n))-1+n` -/
def P8560143318585567754.Spec : Prop :=
  ∀ n, P8560143318585567754.a n = A101448 (n + 1)

end A101448

/-! ## A101448.P16881970923833195118

`A078444(n+4)-A097069(n+3)`
-/

namespace A101448.P16881970923833195118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078444 (n + 4) - A097069 (n + 3)

end

end A101448.P16881970923833195118

namespace A101448

/-- `A078444(n+4)-A097069(n+3)` -/
def P16881970923833195118.Spec : Prop :=
  ∀ n, P16881970923833195118.a n = A101448 (n + 1)

end A101448

/-!
# A101449: Triangle read by rows: T(n,k) is number of noncrossing trees with n edges and having k nonroot nodes of degree 1.

The programs for A101449, there is no canonical definition to state claims against.
-/

/-! ## A101449.P8418376230797074727

`2^col(n)*C(row(n), col(n))*A030981(row(n)+1-col(n))`
-/

namespace A101449.P8418376230797074727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.triCol n * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A030981 (SequenceMachineLib.triRow n + 1 - SequenceMachineLib.triCol n)

end

end A101449.P8418376230797074727

/-! ## A101449.P1991987668337727219

`A013609(n)*A030981(A004736(n+1))`
-/

namespace A101449.P1991987668337727219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A030981 (A004736 (n + 1)).toNat

end

end A101449.P1991987668337727219

/-! ## A101449.P17600512008287872753

`A101452(∑[char[∑[n]]]²-n)`
-/

namespace A101449.P17600512008287872753
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101452 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A101449.P17600512008287872753

/-! ## A101449.P12562620013975925657

`or(char[1], A101452(A038722(n+1)))`
-/

namespace A101449.P12562620013975925657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A101452 (A038722 (n + 1)).toNat)

end

end A101449.P12562620013975925657

/-! ## A101449.P15253847182622201273

`abs(1-A101452(A038722(C(n+1, n))))+1`
-/

namespace A101449.P15253847182622201273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A101452 (A038722 (Nat.choose (n + 1) n)).toNat| + 1

end

end A101449.P15253847182622201273

/-! ## A101449.P957222620447079031

`lcm(A033999(n), A101452(A038722(n+1)))`
-/

namespace A101449.P957222620447079031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A101452 (A038722 (n + 1)).toNat)

end

end A101449.P957222620447079031

/-! ## A101449.P5241645732650339786

`A087960(n)²*A101452(A038722(n+1))`
-/

namespace A101449.P5241645732650339786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n ^ 2 * A101452 (A038722 (n + 1)).toNat

end

end A101449.P5241645732650339786

/-! ## A101449.P15624053935574629575

`A101452(A038722(n+1))%A000045(n+4)`
-/

namespace A101449.P15624053935574629575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101452 (A038722 (n + 1)).toNat) (A000045 (n + 4))

end

end A101449.P15624053935574629575

/-! ## A101449.P6926260941090034128

`A007318(C(2, n))*A101452(A038722(n+1))`
-/

namespace A101449.P6926260941090034128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A101452 (A038722 (n + 1)).toNat

end

end A101449.P6926260941090034128

/-! ## A101449.P16720500867530830223

`A101452(A038722(n+1))^A007318(floor(n/16))`
-/

namespace A101449.P16720500867530830223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101452 (A038722 (n + 1)).toNat : ℚ) ^ (A007318 ⌊(n : ℚ) / 16⌋.toNat : ℤ)

end

end A101449.P16720500867530830223

/-!
# A101452: Triangle read by rows: T(n,k) is number of noncrossing trees with n edges and having k branches.

The programs for A101452, there is no canonical definition to state claims against.
-/

/-! ## A101452.P10807297866180098292

`A101449(∑[char[∑[n]]]²-n)`
-/

namespace A101452.P10807297866180098292
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101449 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A101452.P10807297866180098292

/-! ## A101452.P4563467832383699548

`or(char[2], A101449(A038722(n+1)))`
-/

namespace A101452.P4563467832383699548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A101449 (A038722 (n + 1)).toNat)

end

end A101452.P4563467832383699548

/-! ## A101452.P4926552058745215586

`Δ[A101449(A038722(n))+a(n-1)]` with `a(0)=1`
-/

namespace A101452.P4926552058745215586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A101449 (A038722 n).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101452.P4926552058745215586

/-! ## A101452.P13492486173827026041

`gcd(A000038(n), A101449(A038722(n+1)))`
-/

namespace A101452.P13492486173827026041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A101449 (A038722 (n + 1)).toNat)

end

end A101452.P13492486173827026041

/-! ## A101452.P8633173798018998657

`lcm(A007318(n), A101449(A038722(n+1)))`
-/

namespace A101452.P8633173798018998657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A101449 (A038722 (n + 1)).toNat)

end

end A101452.P8633173798018998657

/-! ## A101452.P12423339963439345787

`A007318(∑[n])*A101449(A038722(n+1))`
-/

namespace A101452.P12423339963439345787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A101449 (A038722 (n + 1)).toNat

end

end A101452.P12423339963439345787

/-! ## A101452.P7212907512193490846

`A101449(A038722(n+1))%∑[A000032(n)]`
-/

namespace A101452.P7212907512193490846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101449 (A038722 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101452.P7212907512193490846

/-! ## A101452.P3737829000654600909

`A101449(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A101452.P3737829000654600909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101449 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A101452.P3737829000654600909

/-! ## A101452.P5430125080044635464

`A014963(10*(n+1))*A101449(A038722(n+1))`
-/

namespace A101452.P5430125080044635464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A101449 (A038722 (n + 1)).toNat

end

end A101452.P5430125080044635464

/-! ## A101452.P9800017009098459128

`gcd(n+1, A006530(n+2))*A101449(A038722(n+1))`
-/

namespace A101452.P9800017009098459128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A006530 (n + 2)) : ℤ) * A101449 (A038722 (n + 1)).toNat

end

end A101452.P9800017009098459128

/-!
# A101453: Number of inequivalent solutions to toroidal (8n+1)-queen problem under the symmetry operator R45(x,y)=( (x-y)/sqrt(2), (x+y)/sqrt(2) ).

The programs for A101453, there is no canonical definition to state claims against.
-/

/-! ## A101453.P15887926878681038693

`2^n*A101454(n)`
-/

namespace A101453.P15887926878681038693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A101454 n

end

end A101453.P15887926878681038693

/-! ## A101453.P4610297755804785699

`abs(A101454(n)*A122803(n))`
-/

namespace A101453.P4610297755804785699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A101454 n * A122803 n|

end

end A101453.P4610297755804785699

/-! ## A101453.P11629964448582069184

`A101454(n)*A316545(∑[n+1])`
-/

namespace A101453.P11629964448582069184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101454 n * A316545 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101453.P11629964448582069184

/-! ## A101453.P12207246375668008293

`A101454(n)*A102363(A000217(n))`
-/

namespace A101453.P12207246375668008293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101454 n * A102363 (A000217 n).toNat

end

end A101453.P12207246375668008293

/-! ## A101453.P2053124562985022090

`A101454(n)*A108738(A000079(n))`
-/

namespace A101453.P2053124562985022090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101454 n * A108738 (A000079 n).toNat

end

end A101453.P2053124562985022090

/-!
# A101454: Number of inequivalent solutions to toroidal (8n+1)-queen problem under the symmetry operator R45(x,y)=( (x-y)/sqrt(2), (x+y)/sqrt(2) ), divided by 2^n.

The programs for A101454, there is no canonical definition to state claims against.
-/

/-! ## A101454.P198378150433352256

`A101453(n)/2^n`
-/

namespace A101454.P198378150433352256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101453 n : ℚ) / (2 ^ n : ℚ)

end

end A101454.P198378150433352256

/-! ## A101454.P3804256197637855399

`abs(A101453(n)/A122803(n))`
-/

namespace A101454.P3804256197637855399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A101453 n : ℚ) / (A122803 n : ℚ)|

end

end A101454.P3804256197637855399

/-! ## A101454.P6126496199409385371

`floor(A101453(n)/A000079(n))`
-/

namespace A101454.P6126496199409385371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101453 n : ℚ) / (A000079 n : ℚ)⌋

end

end A101454.P6126496199409385371

/-! ## A101454.P9191816695788438701

`floor(A101453(n)/record[A130321(n)])`
-/

namespace A101454.P9191816695788438701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101453 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A101454.P9191816695788438701

/-! ## A101454.P7341046576271964445

`floor(A101453(n)/A011782(n+1))`
-/

namespace A101454.P7341046576271964445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101453 n : ℚ) / (A011782 (n + 1) : ℚ)⌋

end

end A101454.P7341046576271964445

/-!
# A101455: a(n) = 0 for even n, a(n) = (-1)^((n-1)/2) for odd n. Periodic sequence 1,0,-1,0,...

The programs for A101455, there is no canonical definition to state claims against.
-/

/-! ## A101455.P2589970632824058813

`A091337(n)*A188510(n)`
-/

namespace A101455.P2589970632824058813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 n * A188510 n

end

end A101455.P2589970632824058813

/-!
# A101456: Prime digits in the decimal expansion of Euler's constant (or Euler-Mascheroni constant) gamma.

The programs for A101456, there is no canonical definition to state claims against.
-/

/-! ## A101456.P1000619011596792221

`p?[A001620(n)]`
-/

namespace A101456.P1000619011596792221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101456.P1000619011596792221

/-! ## A101456.P6538450750984273821

`p?[Δ[A093084(n)]]`
-/

namespace A101456.P6538450750984273821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093084 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101456.P6538450750984273821

/-! ## A101456.P6313104855143032112

`p?[A093084(n+1)-A093084(n)]`
-/

namespace A101456.P6313104855143032112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093084 (n + 1) - A093084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101456.P6313104855143032112

/-! ## A101456.P9364922185342271643

`p?[9-A153810(n)]`
-/

namespace A101456.P9364922185342271643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101456.P9364922185342271643

/-! ## A101456.P15103042865334167524

`p?[A093084(A000027(n+1))+A001489(A093084(n))]`
-/

namespace A101456.P15103042865334167524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093084 (A000027 (n + 1)).toNat + A001489 (A093084 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101456.P15103042865334167524

/-! ## A101456.P4312992406379251598

`p?[A139261(∑[n+1])]`
-/

namespace A101456.P4312992406379251598
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139261 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101456.P4312992406379251598

/-! ## A101456.P9079653372854826431

`p?[A098368(A155212(n)+12)]`
-/

namespace A101456.P9079653372854826431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098368 (A155212 n + 12).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101456.P9079653372854826431

/-! ## A101456.P13183506175716378827

`p?[A098368(A000124(n+4)+3)]`
-/

namespace A101456.P13183506175716378827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098368 (A000124 (n + 4) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101456.P13183506175716378827

/-! ## A101456.P4340608948305805289

`p?[A098368(A055999(n)+10)%(4*(n+1))]`
-/

namespace A101456.P4340608948305805289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098368 (A055999 n + 10).toNat) (4 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101456.P4340608948305805289

/-!
# A101457: Prime digits in the decimal expansion of golden ratio phi = (1 + sqrt 5 )/2.

The programs for A101457, there is no canonical definition to state claims against.
-/

/-! ## A101457.P12734745633862808124

`p?[A001622(n)]`
-/

namespace A101457.P12734745633862808124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101457.P12734745633862808124

/-! ## A101457.P9136700977437698292

`p?[A020837(n)]`
-/

namespace A101457.P9136700977437698292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101457.P9136700977437698292

/-! ## A101457.P3844375514551097046

`p?[A094214(n)]`
-/

namespace A101457.P3844375514551097046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101457.P3844375514551097046

/-! ## A101457.P9751916570086679867

`p?[A385446(n)]`
-/

namespace A101457.P9751916570086679867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101457.P9751916570086679867

/-! ## A101457.P9218985068052148493

`p?[Δ[A093083(n)]]`
-/

namespace A101457.P9218985068052148493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093083 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101457.P9218985068052148493

/-! ## A101457.P4826360206515413160

`p?[A104457(n+1)]`
-/

namespace A101457.P4826360206515413160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101457.P4826360206515413160

/-! ## A101457.P8551188848720941517

`p?[A176055(n+1)]`
-/

namespace A101457.P8551188848720941517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176055 (n + 1 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101457.P8551188848720941517

/-! ## A101457.P13455099076523951466

`p?[A296184(n+1)]`
-/

namespace A101457.P13455099076523951466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296184 (n + 1 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101457.P13455099076523951466

/-! ## A101457.P5863723656810927658

`p?[A377797(n+1)]`
-/

namespace A101457.P5863723656810927658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377797 (n + 1 + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101457.P5863723656810927658

/-! ## A101457.P109096770243806856

`p?[9-A094874(n)]`
-/

namespace A101457.P109096770243806856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A094874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101457.P109096770243806856

/-! ## A101457.P12525615984845248160

`p?[9-A132338(n)]`
-/

namespace A101457.P12525615984845248160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A132338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101457.P12525615984845248160

/-! ## A101457.P10300024182545725972

`p?[A382130(2*n+1)]`
-/

namespace A101457.P10300024182545725972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382130 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101457.P10300024182545725972

/-! ## A101457.P16334763754096457012

`p?[9-A079585(n+1)]`
-/

namespace A101457.P16334763754096457012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A079585 (n + 1 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101457.P16334763754096457012

/-! ## A101457.P6191220514803312403

`p?[9-A109866(n+1)]`
-/

namespace A101457.P6191220514803312403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A109866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101457.P6191220514803312403

/-! ## A101457.P16311835658338047210

`p?[A104457(n)-floor(acot(n))]`
-/

namespace A101457.P16311835658338047210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101457.P16311835658338047210

/-! ## A101457.P419839872784853622

`p?[A057427(n)*A104457(n)]`
-/

namespace A101457.P419839872784853622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A104457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101457.P419839872784853622

/-! ## A101457.P373004518232565583

`p?[A093083(n+1)-A093083(n)]`
-/

namespace A101457.P373004518232565583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093083 (n + 1) - A093083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101457.P373004518232565583

/-!
# A101458: Prime digits in the decimal expansion of Khinchin's constant.

The programs for A101458, there is no canonical definition to state claims against.
-/

/-! ## A101458.P14038759378404284445

`p?[A002210(n)]`
-/

namespace A101458.P14038759378404284445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101458.P14038759378404284445

/-! ## A101458.P14374348176804991436

`p?[Δ[A175819(n+1)]%(n+5)]`
-/

namespace A101458.P14374348176804991436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175819 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (n + 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101458.P14374348176804991436

/-!
# A101459: a(k) = card { i*j, i <= k, j <= lcm(1,2,3...,k) }.

The programs for A101459, there is no canonical definition to state claims against.
-/

/-! ## A101459.P3985056596931654651

`A126959(n+1)/A025527(n+1)`
-/

namespace A101459.P3985056596931654651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126959 (n + 1) : ℚ) / (A025527 (n + 1) : ℚ)

end

end A101459.P3985056596931654651

/-! ## A101459.P9773068288749874687

`A126959(n+1)/∏[A048671(n+1)]`
-/

namespace A101459.P9773068288749874687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126959 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A101459.P9773068288749874687

/-! ## A101459.P7676579430519909738

`A126959(n+1)/∏[(n+1)/A014963(n+1)]`
-/

namespace A101459.P7676579430519909738
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A014963 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126959 (n + 1) : ℚ) / (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A101459.P7676579430519909738

/-! ## A101459.P18124958459939500837

`A126959(n+1)/A024419(n)*A025534(n)`
-/

namespace A101459.P18124958459939500837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126959 (n + 1) : ℚ) / (A024419 n : ℚ) * (A025534 n : ℚ)

end

end A101459.P18124958459939500837

/-! ## A101459.P3696842741660749757

`A126959(n+1)/gcd(A025562(n+1), A056612(n+1))`
-/

namespace A101459.P3696842741660749757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126959 (n + 1) : ℚ) / (Int.gcd (A025562 (n + 1)) (A056612 (n + 1)) : ℚ)

end

end A101459.P3696842741660749757

/-!
# A101460: Number of connected antisymmetric relations on n unlabeled nodes.

The programs for A101460, there is no canonical definition to state claims against.
-/

/-! ## A101460.P5105273695123528947

`A325692(A142999(n)+1)`
-/

namespace A101460.P5105273695123528947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325692 (A142999 n + 1).toNat

end

end A101460.P5105273695123528947

/-!
# A101461: Row maximum of Catalan triangle with zeros (A053121), i.e., maximum value of (m+1)*binomial(n+1,(n-m)/2)/(n+1) for given n with m same parity as n.

The programs for A101461, the canonical program `A101461.P9231644673703143155` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101461 has offset 0).

The definition of A101461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101461.P9231644673703143155

`A156644(A000096(n)-A336861(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A101461

/-- `A156644(A000096(n)-A336861(n+1))` -/
def P9231644673703143155.Spec : Prop :=
  ∀ n, P9231644673703143155.a n = A101461 n

theorem P9231644673703143155.correct : P9231644673703143155.Spec := by
  intro n
  simp only [A101461]

end A101461

/-! ## A101461.P17208940248363064722

`A008482(∑[A071028(n)+1+n])`
-/

namespace A101461.P17208940248363064722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A101461.P17208940248363064722

namespace A101461

/-- `A008482(∑[A071028(n)+1+n])` -/
def P17208940248363064722.Spec : Prop :=
  ∀ n, P17208940248363064722.a n = A101461 n

end A101461

/-! ## A101461.P9012592757096806237

`A008482(∑[n+2]-A336861(n+1))`
-/

namespace A101461.P9012592757096806237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A336861 (n + 1)).toNat

end

end A101461.P9012592757096806237

namespace A101461

/-- `A008482(∑[n+2]-A336861(n+1))` -/
def P9012592757096806237.Spec : Prop :=
  ∀ n, P9012592757096806237.a n = A101461 n

end A101461

/-! ## A101461.P10412443568624699561

`A112467(∑[n+2]-A336861(n+1))`
-/

namespace A101461.P10412443568624699561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A336861 (n + 1)).toNat

end

end A101461.P10412443568624699561

namespace A101461

/-- `A112467(∑[n+2]-A336861(n+1))` -/
def P10412443568624699561.Spec : Prop :=
  ∀ n, P10412443568624699561.a n = A101461 n

end A101461

/-! ## A101461.P15616509452669452907

`A053121(A257564(n)+A000217(n))`
-/

namespace A101461.P15616509452669452907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (A257564 n + A000217 n).toNat

end

end A101461.P15616509452669452907

namespace A101461

/-- `A053121(A257564(n)+A000217(n))` -/
def P15616509452669452907.Spec : Prop :=
  ∀ n, P15616509452669452907.a n = A101461 n

end A101461

/-! ## A101461.P14320925028082603294

`A208101(A000096(n)-A257564(n))`
-/

namespace A101461.P14320925028082603294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208101 (A000096 n - A257564 n).toNat

end

end A101461.P14320925028082603294

namespace A101461

/-- `A208101(A000096(n)-A257564(n))` -/
def P14320925028082603294.Spec : Prop :=
  ∀ n, P14320925028082603294.a n = A101461 n

end A101461

/-! ## A101461.P15693804246425573203

`A118344(A336861(n+1)+∑[n])`
-/

namespace A101461.P15693804246425573203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118344 (A336861 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A101461.P15693804246425573203

namespace A101461

/-- `A118344(A336861(n+1)+∑[n])` -/
def P15693804246425573203.Spec : Prop :=
  ∀ n, P15693804246425573203.a n = A101461 n

end A101461

/-!
# A101462: Smallest k such that 2^k-prime(n) is prime.

The programs for A101462, there is no canonical definition to state claims against.
-/

/-! ## A101462.P8869835612342191167

`A096502(A102781(n+1))%p?[A213491(n)]`
-/

namespace A101462.P8869835612342191167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096502 (A102781 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A101462.P8869835612342191167

/-! ## A101462.P15157659580097123513

`A096502(A102781(n+1))+A000007(A004914(n+2))`
-/

namespace A101462.P15157659580097123513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096502 (A102781 (n + 1)).toNat + A000007 (A004914 (n + 2)).toNat

end

end A101462.P15157659580097123513

/-! ## A101462.P17291328743807532318

`A002828(A001248(n+1))*A096502(A102781(n+1))`
-/

namespace A101462.P17291328743807532318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A001248 (n + 1)).toNat * A096502 (A102781 (n + 1)).toNat

end

end A101462.P17291328743807532318

/-! ## A101462.P4610212119963729506

`A096502(A102781(n+1))+A080545(A054436(n+3))`
-/

namespace A101462.P4610212119963729506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096502 (A102781 (n + 1)).toNat + A080545 (A054436 (n + 3)).toNat

end

end A101462.P4610212119963729506

/-! ## A101462.P16062643464474861842

`A096502(A102781(n+1))^A014963(A025413(n+1))`
-/

namespace A101462.P16062643464474861842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096502 (A102781 (n + 1)).toNat : ℚ) ^ (A014963 (A025413 (n + 1)).toNat : ℤ)

end

end A101462.P16062643464474861842

/-!
# A101463: Expansion of g.f. (x^3+x^2+2*x+1)/(x^4+5*x^2+1).

The programs for A101463, the canonical program `A101463.P5538574597025904179` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101463 has offset 0).

The definition of A101463 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2+x^3)/(1+5x^2+x^4))` (program `A101463.P5538574597025904179`, by `A101463.P5538574597025904179.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101463.P5538574597025904179

`ogf((1+2x+x^2+x^3)/(1+5x^2+x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101463

/-- `ogf((1+2x+x^2+x^3)/(1+5x^2+x^4))` -/
def P5538574597025904179.Spec : Prop :=
  ∀ n, P5538574597025904179.a n = A101463 n

theorem P5538574597025904179.correct : P5538574597025904179.Spec := by
  intro n
  simp only [A101463]

end A101463

/-! ## A101463.P1762575670874682738

`A217787(∑[3-a(n-1)]+1)/(1-and(2, n))` with `a(0)=2`
-/

namespace A101463.P1762575670874682738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217787 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat : ℚ) / (1 - (Nat.land 2 n : ℤ) : ℚ)

end

end A101463.P1762575670874682738

namespace A101463

/-- `A217787(∑[3-a(n-1)]+1)/(1-and(2, n))` -/
def P1762575670874682738.Spec : Prop :=
  ∀ n, P1762575670874682738.a n = (A101463 n : ℚ)

end A101463

/-!
# A101465: Decimal expansion of 2-sqrt(2), square of the edge length of a regular octagon with circumradius 1.

The programs for A101465, there is no canonical definition to state claims against.
-/

/-! ## A101465.P1017864599675874110

`9-A188582(n)`
-/

namespace A101465.P1017864599675874110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A188582 n

end

end A101465.P1017864599675874110

/-! ## A101465.P1380975304609889922

`9-A002193(n+1)`
-/

namespace A101465.P1380975304609889922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A002193 (n + 1 + 1)

end

end A101465.P1380975304609889922

/-! ## A101465.P5717058547095263685

`9-A014176(n+1)`
-/

namespace A101465.P5717058547095263685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A014176 (n + 1 + 1)

end

end A101465.P5717058547095263685

/-! ## A101465.P14566794711958863161

`9-Δ[A099538(n+1)]`
-/

namespace A101465.P14566794711958863161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (f1 (n + 1) - f1 n)

end

end A101465.P14566794711958863161

/-! ## A101465.P7329380171478764197

`9-A120731(n+2)`
-/

namespace A101465.P7329380171478764197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A120731 (n + 2 + 1)

end

end A101465.P7329380171478764197

/-! ## A101465.P13698999288078992625

`a(n-1)-A153012(n+1)` with `a(0)=5`
-/

namespace A101465.P13698999288078992625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) - A153012 (n + 1)

end

end A101465.P13698999288078992625

/-!
# A101468: Triangle read by rows: T(n,k)=(n+1-k)*(3*k+1).

The programs for A101468, the canonical program `A101468.P1561965042302062757` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101468 has offset 0).

The definition of A101468 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1-col(n))*(3*col(n)+1)` (program `A101468.P1561965042302062757`, by `A101468.P1561965042302062757.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101468.P1561965042302062757

`(row(n)+1-col(n))*(3*col(n)+1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101468

/-- `(row(n)+1-col(n))*(3*col(n)+1)` -/
def P1561965042302062757.Spec : Prop :=
  ∀ n, P1561965042302062757.a n = A101468 n

theorem P1561965042302062757.correct : P1561965042302062757.Spec := by
  intro n
  simp only [A101468]

end A101468

/-! ## A101468.P15673648842662865892

`Δ[n²]-A349039(n)`
-/

namespace A101468.P15673648842662865892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A349039 n

end

end A101468.P15673648842662865892

namespace A101468

/-- `Δ[n²]-A349039(n)` -/
def P15673648842662865892.Spec : Prop :=
  ∀ n, P15673648842662865892.a n = A101468 n

end A101468

/-! ## A101468.P3582758950229152735

`A158405(n+1)+A083381(n)`
-/

namespace A101468.P3582758950229152735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1) + A083381 n

end

end A101468.P3582758950229152735

namespace A101468

/-- `A158405(n+1)+A083381(n)` -/
def P3582758950229152735.Spec : Prop :=
  ∀ n, P3582758950229152735.a n = A101468 n

theorem P3582758950229152735.correct : P3582758950229152735.Spec := by
  intro n
  simp only [A101468, Nat.add_sub_cancel, A101468.P3582758950229152735.a, A101468.P1561965042302062757.a, A083381, A083381.P10137055261221379271.a, A158405, A158405.P5173674940907569791.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101468

/-! ## A101468.P5175924845543759860

`A101447(n)+A128139(n)-1`
-/

namespace A101468.P5175924845543759860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101447 n + (A128139 n - 1)

end

end A101468.P5175924845543759860

namespace A101468

/-- `A101447(n)+A128139(n)-1` -/
def P5175924845543759860.Spec : Prop :=
  ∀ n, P5175924845543759860.a n = A101468 n

theorem P5175924845543759860.correct : P5175924845543759860.Spec := by
  intro n
  simp only [A101468, Nat.add_sub_cancel, A101468.P5175924845543759860.a, A101468.P1561965042302062757.a, A101447, A101447.P4489853314784773764.a, A128139, A128139.P11791759487030447530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101468

/-! ## A101468.P1121530755972116063

`A096037(n+1)-A104572(n+1)`
-/

namespace A101468.P1121530755972116063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) - A104572 (n + 1)

end

end A101468.P1121530755972116063

namespace A101468

/-- `A096037(n+1)-A104572(n+1)` -/
def P1121530755972116063.Spec : Prop :=
  ∀ n, P1121530755972116063.a n = A101468 n

end A101468

/-! ## A101468.P16882463436611646516

`2*n+1-(A004247(n)+A049581(n)²)`
-/

namespace A101468.P16882463436611646516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (A004247 n + A049581 n ^ 2)

end

end A101468.P16882463436611646516

namespace A101468

/-- `2*n+1-(A004247(n)+A049581(n)²)` -/
def P16882463436611646516.Spec : Prop :=
  ∀ n, P16882463436611646516.a n = A101468 n

end A101468

/-! ## A101468.P1912955354862614368

`(3*A002260(n+1)-2)*A004736(n+1)`
-/

namespace A101468.P1912955354862614368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A002260 (n + 1) - 2) * A004736 (n + 1)

end

end A101468.P1912955354862614368

namespace A101468

/-- `(3*A002260(n+1)-2)*A004736(n+1)` -/
def P1912955354862614368.Spec : Prop :=
  ∀ n, P1912955354862614368.a n = A101468 n

end A101468

/-! ## A101468.P2633838028189861258

`A004736(n+1)*A016777(A002262(n))`
-/

namespace A101468.P2633838028189861258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A016777 (A002262 n).toNat

end

end A101468.P2633838028189861258

namespace A101468

/-- `A004736(n+1)*A016777(A002262(n))` -/
def P2633838028189861258.Spec : Prop :=
  ∀ n, P2633838028189861258.a n = A101468 n

end A101468

/-! ## A101468.P3083663605109670581

`(A025581(n)+1)*A016777(A002262(n))`
-/

namespace A101468.P3083663605109670581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A016777 (A002262 n).toNat

end

end A101468.P3083663605109670581

namespace A101468

/-- `(A025581(n)+1)*A016777(A002262(n))` -/
def P3083663605109670581.Spec : Prop :=
  ∀ n, P3083663605109670581.a n = A101468 n

end A101468

/-! ## A101468.P4234751027451509739

`A004736(n+1)*A032766(A158405(n+1))`
-/

namespace A101468.P4234751027451509739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A032766 (A158405 (n + 1)).toNat

end

end A101468.P4234751027451509739

namespace A101468

/-- `A004736(n+1)*A032766(A158405(n+1))` -/
def P4234751027451509739.Spec : Prop :=
  ∀ n, P4234751027451509739.a n = A101468 n

end A101468

/-! ## A101468.P15127178178987370429

`A003991(n+1)+A141387(n)-A114327(n)`
-/

namespace A101468.P15127178178987370429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A141387 n - A114327 n)

end

end A101468.P15127178178987370429

namespace A101468

/-- `A003991(n+1)+A141387(n)-A114327(n)` -/
def P15127178178987370429.Spec : Prop :=
  ∀ n, P15127178178987370429.a n = A101468 n

theorem P15127178178987370429.correct : P15127178178987370429.Spec := by
  intro n
  simp only [A101468, Nat.add_sub_cancel, A101468.P15127178178987370429.a, A101468.P1561965042302062757.a, A003991, A003991.P6365127437582401781.a, A114327, A114327.P12930942860764139837.a, A141387, A141387.P5238259369822402056.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101468

/-! ## A101468.P821572550583795586

`(A057554(2*n+1)*A157532(n+1)+1)*A004736(n+1)`
-/

namespace A101468.P821572550583795586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057554 (2 * n + 1) * A157532 (n + 1) + 1) * A004736 (n + 1)

end

end A101468.P821572550583795586

namespace A101468

/-- `(A057554(2*n+1)*A157532(n+1)+1)*A004736(n+1)` -/
def P821572550583795586.Spec : Prop :=
  ∀ n, P821572550583795586.a n = A101468 n

end A101468

/-! ## A101468.P15837811317742706670

`A144693(A080036(n+1))`
-/

namespace A101468.P15837811317742706670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144693 (A080036 (n + 1)).toNat

end

end A101468.P15837811317742706670

namespace A101468

/-- `A144693(A080036(n+1))` -/
def P15837811317742706670.Spec : Prop :=
  ∀ n, P15837811317742706670.a n = A101468 n

end A101468

/-! ## A101468.P1372261643216631047

`(A074294(2*n+1)+A057554(2*n+1))*A057555(2*(n+1))`
-/

namespace A101468.P1372261643216631047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074294 (2 * n + 1) + A057554 (2 * n + 1)) * A057555 (2 * (n + 1))

end

end A101468.P1372261643216631047

namespace A101468

/-- `(A074294(2*n+1)+A057554(2*n+1))*A057555(2*(n+1))` -/
def P1372261643216631047.Spec : Prop :=
  ∀ n, P1372261643216631047.a n = A101468 n

end A101468

/-! ## A101468.P16436378848014995672

`A003991(A185869(n+1))-A003991(n+1)`
-/

namespace A101468.P16436378848014995672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A185869 (n + 1)).toNat - A003991 (n + 1)

end

end A101468.P16436378848014995672

namespace A101468

/-- `A003991(A185869(n+1))-A003991(n+1)` -/
def P16436378848014995672.Spec : Prop :=
  ∀ n, P16436378848014995672.a n = A101468 n

end A101468

/-! ## A101468.P11035583199281752534

`A004736(n+1)*A048785(A059268(n))`
-/

namespace A101468.P11035583199281752534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A048785 (A059268 n).toNat

end

end A101468.P11035583199281752534

namespace A101468

/-- `A004736(n+1)*A048785(A059268(n))` -/
def P11035583199281752534.Spec : Prop :=
  ∀ n, P11035583199281752534.a n = A101468 n

end A101468

/-! ## A101468.P9464652044758776488

`∑{d}[A036561(n), gcd(3, #)]`
-/

namespace A101468.P9464652044758776488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.gcd 3 d

end

end A101468.P9464652044758776488

namespace A101468

/-- `∑{d}[A036561(n), gcd(3, #)]` -/
def P9464652044758776488.Spec : Prop :=
  ∀ n, (P9464652044758776488.a n : ℤ) = A101468 n

end A101468

/-!
# A101471: Numbers k such that the number k11 is prime.

The programs for A101471, the canonical program `A101471.P3271450895035044751` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101471 has offset 1).

The definition of A101471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101471.P3271450895035044751

`floor(floor(A167442(n+1)/10)/10)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A101471

/-- `floor(floor(A167442(n+1)/10)/10)` -/
def P3271450895035044751.Spec : Prop :=
  ∀ n, P3271450895035044751.a n = A101471 (n + 1)

theorem P3271450895035044751.correct : P3271450895035044751.Spec := by
  intro n
  simp only [A101471, Nat.add_sub_cancel]

end A101471

/-! ## A101471.P16238467816760879614

`eq[1, A068695(10*n+1)]`
-/

namespace A101471.P16238467816760879614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (10 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101471.P16238467816760879614

namespace A101471

/-- `eq[1, A068695(10*n+1)]` -/
def P16238467816760879614.Spec : Prop :=
  ∀ n, (P16238467816760879614.a n : ℤ) = A101471 (n + 1)

end A101471

/-! ## A101471.P6970245904470909982

`eq[1, A091088(10*n+1)]`
-/

namespace A101471.P6970245904470909982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (10 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101471.P6970245904470909982

namespace A101471

/-- `eq[1, A091088(10*n+1)]` -/
def P6970245904470909982.Spec : Prop :=
  ∀ n, (P6970245904470909982.a n : ℤ) = A101471 (n + 1)

end A101471

/-! ## A101471.P8638111127985621483

`eq[1, A001221(10*10*n+11)]`
-/

namespace A101471.P8638111127985621483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (10 * (10 * n) + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101471.P8638111127985621483

namespace A101471

/-- `eq[1, A001221(10*10*n+11)]` -/
def P8638111127985621483.Spec : Prop :=
  ∀ n, (P8638111127985621483.a n : ℤ) = A101471 (n + 1)

end A101471

/-! ## A101471.P5226892633053631992

`eq[1, A001222(10*10*n+11)]`
-/

namespace A101471.P5226892633053631992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * (10 * n) + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101471.P5226892633053631992

namespace A101471

/-- `eq[1, A001222(10*10*n+11)]` -/
def P5226892633053631992.Spec : Prop :=
  ∀ n, (P5226892633053631992.a n : ℤ) = A101471 (n + 1)

end A101471

/-! ## A101471.P9976733206339968923

`eq[2, A000005(10*10*n+11)]`
-/

namespace A101471.P9976733206339968923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * (10 * n) + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101471.P9976733206339968923

namespace A101471

/-- `eq[2, A000005(10*10*n+11)]` -/
def P9976733206339968923.Spec : Prop :=
  ∀ n, (P9976733206339968923.a n : ℤ) = A101471 (n + 1)

end A101471

/-! ## A101471.P9790157646258463327

`eq[10*10*n+11, A006530(10*10*n+11)]`
-/

namespace A101471.P9790157646258463327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (10 * n) + 11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (10 * (10 * n) + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101471.P9790157646258463327

namespace A101471

/-- `eq[10*10*n+11, A006530(10*10*n+11)]` -/
def P9790157646258463327.Spec : Prop :=
  ∀ n, (P9790157646258463327.a n : ℤ) = A101471 (n + 1)

end A101471

/-! ## A101471.P9551118664473567478

`eq[10*10*n+11, A020639(10*10*n+11)]`
-/

namespace A101471.P9551118664473567478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (10 * n) + 11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (10 * (10 * n) + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101471.P9551118664473567478

namespace A101471

/-- `eq[10*10*n+11, A020639(10*10*n+11)]` -/
def P9551118664473567478.Spec : Prop :=
  ∀ n, (P9551118664473567478.a n : ℤ) = A101471 (n + 1)

end A101471

/-! ## A101471.P7029272883201954782

`lt[A091088(A008592(n)+1), 2]`
-/

namespace A101471.P7029272883201954782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (A008592 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A101471.P7029272883201954782

namespace A101471

/-- `lt[A091088(A008592(n)+1), 2]` -/
def P7029272883201954782.Spec : Prop :=
  ∀ n, (P7029272883201954782.a n : ℤ) = A101471 (n + 1)

end A101471

/-!
# A101472: Numbers k such that the number k33 is prime.

The programs for A101472, the canonical program `A101472.P2445389395897336608` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101472 has offset 1).

The definition of A101472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101472.P16892392084482175314

`eq[3, A096915(10*n+3)]`
-/

namespace A101472.P16892392084482175314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (10 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101472.P16892392084482175314

namespace A101472

/-- `eq[3, A096915(10*n+3)]` -/
def P16892392084482175314.Spec : Prop :=
  ∀ n, (P16892392084482175314.a n : ℤ) = A101472 (n + 1)

end A101472

/-! ## A101472.P17189766862249796408

`lt[A096915(A017305(n)), 4]`
-/

namespace A101472.P17189766862249796408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (A017305 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A101472.P17189766862249796408

namespace A101472

/-- `lt[A096915(A017305(n)), 4]` -/
def P17189766862249796408.Spec : Prop :=
  ∀ n, (P17189766862249796408.a n : ℤ) = A101472 (n + 1)

end A101472

/-! ## A101472.P2445389395897336608

`eq[1, A001222(A045803(4*(n+1)))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A101472

/-- `eq[1, A001222(A045803(4*(n+1)))]` -/
def P2445389395897336608.Spec : Prop :=
  ∀ n, (P2445389395897336608.a n : ℤ) = A101472 (n + 1)

theorem P2445389395897336608.correct : P2445389395897336608.Spec := by
  intro n
  simp only [A101472, Nat.add_sub_cancel]

end A101472

/-! ## A101472.P12914718766237422183

`eq[2, A000005(A053742(2*n)+8)]`
-/

namespace A101472.P12914718766237422183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053742 (2 * n) + 8).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101472.P12914718766237422183

namespace A101472

/-- `eq[2, A000005(A053742(2*n)+8)]` -/
def P12914718766237422183.Spec : Prop :=
  ∀ n, (P12914718766237422183.a n : ℤ) = A101472 (n + 1)

end A101472

/-! ## A101472.P17314793607726084034

`lt[A001222(A053742(2*n)+8), 2]`
-/

namespace A101472.P17314793607726084034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A053742 (2 * n) + 8).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A101472.P17314793607726084034

namespace A101472

/-- `lt[A001222(A053742(2*n)+8), 2]` -/
def P17314793607726084034.Spec : Prop :=
  ∀ n, (P17314793607726084034.a n : ℤ) = A101472 (n + 1)

end A101472

/-! ## A101472.P18038296434576300994

`eq[2, A001222(2*A017305(A017305(n)))]`
-/

namespace A101472.P18038296434576300994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A017305 (A017305 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101472.P18038296434576300994

namespace A101472

/-- `eq[2, A001222(2*A017305(A017305(n)))]` -/
def P18038296434576300994.Spec : Prop :=
  ∀ n, (P18038296434576300994.a n : ℤ) = A101472 (n + 1)

end A101472

/-! ## A101472.P17940525507565807182

`eq[2, A001222(A017341(A017341(2*n)))]`
-/

namespace A101472.P17940525507565807182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A017341 (A017341 (2 * n)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101472.P17940525507565807182

namespace A101472

/-- `eq[2, A001222(A017341(A017341(2*n)))]` -/
def P17940525507565807182.Spec : Prop :=
  ∀ n, (P17940525507565807182.a n : ℤ) = A101472 (n + 1)

end A101472

/-! ## A101472.P2409003645167724861

`eq[3, A345468(A215146(n)+A016813(n+1))]`
-/

namespace A101472.P2409003645167724861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345468 (A215146 n + A016813 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101472.P2409003645167724861

namespace A101472

/-- `eq[3, A345468(A215146(n)+A016813(n+1))]` -/
def P2409003645167724861.Spec : Prop :=
  ∀ n, (P2409003645167724861.a n : ℤ) = A101472 (n + 1)

end A101472

/-!
# A101473: Boustrophedon transform of the Jacobsthal numbers.

The programs for A101473, there is no canonical definition to state claims against.
-/

/-! ## A101473.P4672288793231505073

`(A000752(n)-A062162(n))/3`
-/

namespace A101473.P4672288793231505073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000752 n - A062162 n : ℚ) / 3

end

end A101473.P4672288793231505073

/-! ## A101473.P1687756789452056854

`A002264(A000752(n)-A062162(n))`
-/

namespace A101473.P1687756789452056854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A000752 n - A062162 n).toNat

end

end A101473.P1687756789452056854

/-! ## A101473.P10843659800329816946

`A002264(A292975(∑[n+3])-A062162(n))`
-/

namespace A101473.P10843659800329816946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A292975 (∑ j ∈ Finset.range (n + 1), f1 j) - A062162 n).toNat

end

end A101473.P10843659800329816946

/-! ## A101473.P2845652673557223535

`A002264(A000752(n)+A062161(n)-A062272(n))`
-/

namespace A101473.P2845652673557223535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A000752 n + (A062161 n - A062272 n)).toNat

end

end A101473.P2845652673557223535

/-!
# A101474: Boustrophedon transform of the signed Jacobsthal numbers.

The programs for A101474, there is no canonical definition to state claims against.
-/

/-! ## A101474.P3053659083797388293

`or(A105518(A026593(n+1)), A191754(n))`
-/

namespace A101474.P3053659083797388293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A105518 (A026593 (n + 1)).toNat) (A191754 n)

end

end A101474.P3053659083797388293

/-! ## A101474.P9556850950971036102

`A087731(A212444(n))-2`
-/

namespace A101474.P9556850950971036102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087731 (A212444 n).toNat - 2

end

end A101474.P9556850950971036102

/-! ## A101474.P4799739923836763148

`A291615(A259757(n)+n)`
-/

namespace A101474.P4799739923836763148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291615 (A259757 n + (n : ℤ)).toNat

end

end A101474.P4799739923836763148

/-!
# A101476: Sum[k=0..n, Sum[i>=0, C(2n,n-i(k+2))-C(2n,n+i(k+2)+k+1) ]].

The programs for A101476, there is no canonical definition to state claims against.
-/

/-! ## A101476.P13927474831290483928

`A057354(A288452(4^n))`
-/

namespace A101476.P13927474831290483928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A288452 (4 ^ n)).toNat

end

end A101476.P13927474831290483928

/-! ## A101476.P9393113287258055478

`A276798(A344228(n+1)-1)`
-/

namespace A101476.P9393113287258055478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A344228 (n + 1) - 1).toNat

end

end A101476.P9393113287258055478

/-!
# A101478: G.f. satisfies A(x) = x*(1+A(x))^4/(1+A(x)^2).

The programs for A101478, there is no canonical definition to state claims against.
-/

/-! ## A101478.P10768835582470713715

`A028310(A153291(n))-A008651(n)`
-/

namespace A101478.P10768835582470713715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A153291 n).toNat - A008651 n

end

end A101478.P10768835582470713715

/-! ## A101478.P2092784833643611792

`A028310(A153291(n))-A267417(n)`
-/

namespace A101478.P2092784833643611792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A153291 n).toNat - A267417 n

end

end A101478.P2092784833643611792

/-! ## A101478.P758215246011930055

`A153291(n)-A047999(A202406(n+1))`
-/

namespace A101478.P758215246011930055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153291 n - A047999 (A202406 (n + 1)).toNat

end

end A101478.P758215246011930055

/-!
# A101481: Column 0 of triangular matrix T=A101479, in which row n equals row (n-1) of T^(n-1) followed by '1'.

The programs for A101481, there is no canonical definition to state claims against.
-/

/-! ## A101481.P10239009277714740737

`A101479(∑[n])`
-/

namespace A101481.P10239009277714740737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101479 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101481.P10239009277714740737

/-! ## A101481.P12805018018885266351

`lcm(A033999(n), A101479(A000217(n)))`
-/

namespace A101481.P12805018018885266351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A101479 (A000217 n).toNat)

end

end A101481.P12805018018885266351

/-! ## A101481.P12929375367458921466

`or(A063524(n), A101479(A000217(n)))`
-/

namespace A101481.P12929375367458921466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A101479 (A000217 n).toNat)

end

end A101481.P12929375367458921466

/-! ## A101481.P11282379580924661745

`or(A025466(n), A101479(A179865(n+1)))`
-/

namespace A101481.P11282379580924661745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025466 n) (A101479 (A179865 (n + 1)).toNat)

end

end A101481.P11282379580924661745

/-! ## A101481.P8296004383420298116

`A101479(A000096(n))*A101479(A000217(n))`
-/

namespace A101481.P8296004383420298116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101479 (A000096 n).toNat * A101479 (A000217 n).toNat

end

end A101481.P8296004383420298116

/-!
# A101482: Column 1 of triangular matrix T=A101479, in which row n equals row (n-1) of T^(n-1) followed by '1'.

The programs for A101482, there is no canonical definition to state claims against.
-/

/-! ## A101482.P10217291278143627173

`A101479(∑[n+1]+1)`
-/

namespace A101482.P10217291278143627173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101479 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A101482.P10217291278143627173

/-! ## A101482.P7689324788585802927

`gcd(A000038(n), A101479(A134869(n+1)))`
-/

namespace A101482.P7689324788585802927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A101479 (A134869 (n + 1)).toNat)

end

end A101482.P7689324788585802927

/-! ## A101482.P14380881828660059729

`lcm(A033999(n), A101479(A134869(n+1)))`
-/

namespace A101482.P14380881828660059729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A101479 (A134869 (n + 1)).toNat)

end

end A101482.P14380881828660059729

/-! ## A101482.P2515910430929808661

`or(A000007(n), A101479(A134869(n+1)))`
-/

namespace A101482.P2515910430929808661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A101479 (A134869 (n + 1)).toNat)

end

end A101482.P2515910430929808661

/-! ## A101482.P443826613656343055

`and(A101479(A134869(n+1)), A153881(n+1))`
-/

namespace A101482.P443826613656343055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101479 (A134869 (n + 1)).toNat) (A153881 (n + 1))

end

end A101482.P443826613656343055

/-!
# A101483: Column 2 of triangular matrix T=A101479, in which row n equals row (n-1) of T^(n-1) followed by '1'.

The programs for A101483, there is no canonical definition to state claims against.
-/

/-! ## A101483.P10689695378664322718

`A101479(∑[n+2]+3)`
-/

namespace A101483.P10689695378664322718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101479 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A101483.P10689695378664322718

/-! ## A101483.P916260149265070390

`A121412(∑[n])`
-/

namespace A101483.P916260149265070390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121412 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101483.P916260149265070390

/-! ## A101483.P17766055328017583934

`A121412(A000217(n))+A025444(n)`
-/

namespace A101483.P17766055328017583934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121412 (A000217 n).toNat + A025444 n

end

end A101483.P17766055328017583934

/-! ## A101483.P78037336446916651

`A121412(A161680(n+1))+A025444(n)`
-/

namespace A101483.P78037336446916651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121412 (A161680 (n + 1)).toNat + A025444 n

end

end A101483.P78037336446916651

/-! ## A101483.P9257126749163447445

`lcm(A121412(A161680(n+1)), A134824(n+1))`
-/

namespace A101483.P9257126749163447445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A121412 (A161680 (n + 1)).toNat) (A134824 (n + 1))

end

end A101483.P9257126749163447445

/-!
# A101484: Row sums of triangular matrix A101479, in which row n equals row (n-1) of A101479^(n-1) followed by '1'.

The programs for A101484, there is no canonical definition to state claims against.
-/

/-! ## A101484.P12688482154789827016

`A056761(a(n-1)+2)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=7`
-/

namespace A101484.P12688482154789827016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 7] fun n a =>
  A056761 (a (n - 1) + 2).toNat

end

end A101484.P12688482154789827016

/-! ## A101484.P17174059884442808309

`A054899(abs(∑[(-2)^n])*n!)+n+1`
-/

namespace A101484.P17174059884442808309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (|∑ j ∈ Finset.range (n + 1), f1 j| * (Nat.factorial n : ℤ)).toNat + (n + 1 : ℤ)

end

end A101484.P17174059884442808309

/-!
# A101485: a(n) = (4n)! / ( 4^n * (2n)! ).

The programs for A101485, the canonical program `A101485.P13510965900802631736` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101485 has offset 0).

The definition of A101485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101485.P13510965900802631736

`(4*n-1)*(4*n-3)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101485

/-- `(4*n-1)*(4*n-3)*a(n-1)` -/
def P13510965900802631736.Spec : Prop :=
  ∀ n, P13510965900802631736.a n = A101485 n

theorem P13510965900802631736.correct : P13510965900802631736.Spec := by
  intro n
  simp only [A101485]

end A101485

/-! ## A101485.P15589644361435302576

`(4*n)!/(4^n*(2*n)!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101485.P15589644361435302576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (4 * n) : ℚ) / (4 ^ n * Nat.factorial (2 * n) : ℚ)

end

end A101485.P15589644361435302576

namespace A101485

/-- `(4*n)!/(4^n*(2*n)!)` -/
def P15589644361435302576.Spec : Prop :=
  ∀ n, P15589644361435302576.a n = (A101485 n : ℚ)

end A101485

/-! ## A101485.P13423612744453685785

`record[∏[1-2*n]]`
-/

namespace A101485.P13423612744453685785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101485.P13423612744453685785

namespace A101485

/-- `record[∏[1-2*n]]` -/
def P13423612744453685785.Spec : Prop :=
  ∀ n, P13423612744453685785.a n = A101485 n

end A101485

/-! ## A101485.P2905222387449012679

`record[∏[-sqrt(2*n+1)]]²`
-/

namespace A101485.P2905222387449012679
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -Real.sqrt (2 * n + 1 : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A101485.P2905222387449012679

namespace A101485

/-- `record[∏[-sqrt(2*n+1)]]²` -/
def P2905222387449012679.Spec : Prop :=
  ∀ n, P2905222387449012679.a n = (A101485 n : ℝ)

end A101485

/-! ## A101485.P5262287565191636011

`A001147(2*n)`
-/

namespace A101485.P5262287565191636011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (2 * n)

end

end A101485.P5262287565191636011

namespace A101485

/-- `A001147(2*n)` -/
def P5262287565191636011.Spec : Prop :=
  ∀ n, P5262287565191636011.a n = A101485 n

end A101485

/-!
# A101487: G.f. satisfies A(x) = x*(1+4A+A^2)^2/(1+A+A^2).

The programs for A101487, there is no canonical definition to state claims against.
-/

/-! ## A101487.P12050393138297991290

`A230257(5*A292419(n))`
-/

namespace A101487.P12050393138297991290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230257 (5 * A292419 n).toNat

end

end A101487.P12050393138297991290

/-!
# A101488: Number of naturally embedded binary trees with n nodes that have no label greater than 0.

The programs for A101488, the canonical program `A101488.P1693039392814745994` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101488 has offset 0).

The definition of A101488 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101488.P1693039392814745994

`A091712(n+1)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A101488

/-- `A091712(n+1)-a(n-1)` -/
def P1693039392814745994.Spec : Prop :=
  ∀ n, P1693039392814745994.a n = A101488 n

theorem P1693039392814745994.correct : P1693039392814745994.Spec := by
  intro n
  simp only [A101488]

end A101488

/-! ## A101488.P11775797921006546449

`A007054(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A101488.P11775797921006546449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A007054 (n - 1) - a (n - 1)

end

end A101488.P11775797921006546449

namespace A101488

/-- `A007054(n-1)-a(n-1)` -/
def P11775797921006546449.Spec : Prop :=
  ∀ n, P11775797921006546449.a n = A101488 n

end A101488

/-! ## A101488.P5105726225877125523

`abs(A057427(n)+∑[A184881(n)])`
-/

namespace A101488.P5105726225877125523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057427 n + ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A101488.P5105726225877125523

namespace A101488

/-- `abs(A057427(n)+∑[A184881(n)])` -/
def P5105726225877125523.Spec : Prop :=
  ∀ n, P5105726225877125523.a n = A101488 n

end A101488

/-! ## A101488.P8816319754444175169

`(A057427(n)+∑[A184881(n)])*A033999(n)`
-/

namespace A101488.P8816319754444175169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + ∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A101488.P8816319754444175169

namespace A101488

/-- `(A057427(n)+∑[A184881(n)])*A033999(n)` -/
def P8816319754444175169.Spec : Prop :=
  ∀ n, P8816319754444175169.a n = A101488 n

end A101488

/-! ## A101488.P9453787636555077337

`(A057427(n)+∑[A184881(n)])*A056594(2*n)`
-/

namespace A101488.P9453787636555077337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + ∑ j ∈ Finset.range (n + 1), f1 j) * A056594 (2 * n)

end

end A101488.P9453787636555077337

namespace A101488

/-- `(A057427(n)+∑[A184881(n)])*A056594(2*n)` -/
def P9453787636555077337.Spec : Prop :=
  ∀ n, P9453787636555077337.a n = A101488 n

end A101488

/-! ## A101488.P11718971136331666144

`(A057427(n)+∑[A184881(n)])*(A004442(n)-n)`
-/

namespace A101488.P11718971136331666144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + ∑ j ∈ Finset.range (n + 1), f1 j) * (A004442 n - (n : ℤ))

end

end A101488.P11718971136331666144

namespace A101488

/-- `(A057427(n)+∑[A184881(n)])*(A004442(n)-n)` -/
def P11718971136331666144.Spec : Prop :=
  ∀ n, P11718971136331666144.a n = A101488 n

end A101488

/-! ## A101488.P13545588494329129332

`(A057427(n)+∑[A184881(n)])*A094267(n²)`
-/

namespace A101488.P13545588494329129332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + ∑ j ∈ Finset.range (n + 1), f1 j) * A094267 (n ^ 2)

end

end A101488.P13545588494329129332

namespace A101488

/-- `(A057427(n)+∑[A184881(n)])*A094267(n²)` -/
def P13545588494329129332.Spec : Prop :=
  ∀ n, P13545588494329129332.a n = A101488 n

end A101488

/-!
# A101489: Square array T(n,k), read by antidiagonals: number of binary trees, with n nodes that have no label greater than k.

The programs for A101489, there is no canonical definition to state claims against.
-/

/-! ## A101489.P2905854216761625246

`A079726(A380367(n)%A049054(n+2))`
-/

namespace A101489.P2905854216761625246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079726 (Int.tmod (A380367 n) (A049054 (n + 2))).toNat

end

end A101489.P2905854216761625246

/-! ## A101489.P8242862624708120953

`A115392(A136605(n+1)%A326004(3*n+1))`
-/

namespace A101489.P8242862624708120953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115392 (Int.tmod (A136605 (n + 1)) (A326004 (3 * n + 1))).toNat

end

end A101489.P8242862624708120953

/-!
# A101490: G.f. satisfies A(x) = x*(1+A^2)^2/(1-A+A^2).

The programs for A101490, there is no canonical definition to state claims against.
-/

/-! ## A101490.P14309651833052512741

`A071840(A149012(n+1))`
-/

namespace A101490.P14309651833052512741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071840 (A149012 (n + 1)).toNat

end

end A101490.P14309651833052512741

/-! ## A101490.P13497936360613706265

`A071840(A149040(n+1))`
-/

namespace A101490.P13497936360613706265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071840 (A149040 (n + 1)).toNat

end

end A101490.P13497936360613706265

/-! ## A101490.P14032010343369273907

`A008679(A024744(n+1)+n)`
-/

namespace A101490.P14032010343369273907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A024744 (n + 1) + (n : ℤ)).toNat

end

end A101490.P14032010343369273907

/-! ## A101490.P14379107099645275585

`A008618(A080925(n)+A071732(n))`
-/

namespace A101490.P14379107099645275585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A080925 n + A071732 n).toNat

end

end A101490.P14379107099645275585

/-!
# A101491: Triangle T(n,k), read by rows: number of Knödel walks starting at 0, ending at k, with n steps.

The programs for A101491, there is no canonical definition to state claims against.
-/

/-! ## A101491.P17734756111055384801

`and(p?[A284697(n+1)], A054450(n))`
-/

namespace A101491.P17734756111055384801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A054450 n)

end

end A101491.P17734756111055384801

/-! ## A101491.P912587585127010817

`and(A005475(A078008(n)), A054450(n))`
-/

namespace A101491.P912587585127010817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005475 (A078008 n).toNat) (A054450 n)

end

end A101491.P912587585127010817

/-! ## A101491.P12356345198866659309

`and(A054450(n), A242419(A122225(n+3)))`
-/

namespace A101491.P12356345198866659309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054450 n) (A242419 (A122225 (n + 3)).toNat)

end

end A101491.P12356345198866659309

/-! ## A101491.P4597733001766003824

`A054450(n)%A334204(A051014(3*(n+1)))`
-/

namespace A101491.P4597733001766003824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054450 n) (A334204 (A051014 (3 * (n + 1))).toNat)

end

end A101491.P4597733001766003824

/-! ## A101491.P13278989108803243244

`A275314(A154982(2*(n+1)))%A142972(2*n+1)`
-/

namespace A101491.P13278989108803243244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275314 (A154982 (2 * (n + 1))).toNat) (A142972 (2 * n + 1))

end

end A101491.P13278989108803243244

/-!
# A101492: Triangle read by rows: T(n,k) = (n-k+1)*(4*k+1).

The programs for A101492, the canonical program `A101492.P4383159737431497936` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101492 has offset 0).

The definition of A101492 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)-col(n)+1)*(4*col(n)+1)` (program `A101492.P4383159737431497936`, by `A101492.P4383159737431497936.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101492.P4383159737431497936

`(row(n)-col(n)+1)*(4*col(n)+1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101492

/-- `(row(n)-col(n)+1)*(4*col(n)+1)` -/
def P4383159737431497936.Spec : Prop :=
  ∀ n, P4383159737431497936.a n = A101492 n

theorem P4383159737431497936.correct : P4383159737431497936.Spec := by
  intro n
  simp only [A101492]

end A101492

/-! ## A101492.P5125240408007596130

`2*A101447(n)-A004736(n+1)`
-/

namespace A101492.P5125240408007596130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101447 n - A004736 (n + 1)

end

end A101492.P5125240408007596130

namespace A101492

/-- `2*A101447(n)-A004736(n+1)` -/
def P5125240408007596130.Spec : Prop :=
  ∀ n, P5125240408007596130.a n = A101492 n

end A101492

/-! ## A101492.P2386521871748269219

`2*A101447(n)-sqrt(A055461(n+1))`
-/

namespace A101492.P2386521871748269219
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A101447 n : ℝ) - Real.sqrt (A055461 (n + 1) : ℝ)

end

end A101492.P2386521871748269219

namespace A101492

/-- `2*A101447(n)-sqrt(A055461(n+1))` -/
def P2386521871748269219.Spec : Prop :=
  ∀ n, P2386521871748269219.a n = (A101492 n : ℝ)

end A101492

/-! ## A101492.P17639175981980126610

`(4*A002262(n)+1)*A004736(n+1)`
-/

namespace A101492.P17639175981980126610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A002262 n + 1) * A004736 (n + 1)

end

end A101492.P17639175981980126610

namespace A101492

/-- `(4*A002262(n)+1)*A004736(n+1)` -/
def P17639175981980126610.Spec : Prop :=
  ∀ n, P17639175981980126610.a n = A101492 n

end A101492

/-! ## A101492.P6458389656761615713

`(4*A057554(2*n+1)+1)*A004736(n+1)`
-/

namespace A101492.P6458389656761615713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A057554 (2 * n + 1) + 1) * A004736 (n + 1)

end

end A101492.P6458389656761615713

namespace A101492

/-- `(4*A057554(2*n+1)+1)*A004736(n+1)` -/
def P6458389656761615713.Spec : Prop :=
  ∀ n, P6458389656761615713.a n = A101492 n

end A101492

/-! ## A101492.P11912093997925081379

`A004736(n+1)*A016813(A002262(n))`
-/

namespace A101492.P11912093997925081379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A016813 (A002262 n).toNat

end

end A101492.P11912093997925081379

namespace A101492

/-- `A004736(n+1)*A016813(A002262(n))` -/
def P11912093997925081379.Spec : Prop :=
  ∀ n, P11912093997925081379.a n = A101492 n

end A101492

/-! ## A101492.P5665559319453427769

`2*A101447(n)-A000463(A099375(n))`
-/

namespace A101492.P5665559319453427769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101447 n - A000463 (A099375 n).toNat

end

end A101492.P5665559319453427769

namespace A101492

/-- `2*A101447(n)-A000463(A099375(n))` -/
def P5665559319453427769.Spec : Prop :=
  ∀ n, P5665559319453427769.a n = A101492 n

end A101492

/-! ## A101492.P14321599642511310162

`A098352(n+1)-A008585(A004736(n+1))`
-/

namespace A101492.P14321599642511310162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098352 (n + 1) - A008585 (A004736 (n + 1)).toNat

end

end A101492.P14321599642511310162

namespace A101492

/-- `A098352(n+1)-A008585(A004736(n+1))` -/
def P14321599642511310162.Spec : Prop :=
  ∀ n, P14321599642511310162.a n = A101492 n

end A101492

/-! ## A101492.P13416207038177880530

`A004273(A158405(n+1))*A004736(n+1)`
-/

namespace A101492.P13416207038177880530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A158405 (n + 1)).toNat * A004736 (n + 1)

end

end A101492.P13416207038177880530

namespace A101492

/-- `A004273(A158405(n+1))*A004736(n+1)` -/
def P13416207038177880530.Spec : Prop :=
  ∀ n, P13416207038177880530.a n = A101492 n

end A101492

/-! ## A101492.P845072015224553483

`A004736(n+1)*A005408(2*A002262(n))`
-/

namespace A101492.P845072015224553483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A005408 (2 * A002262 n).toNat

end

end A101492.P845072015224553483

namespace A101492

/-- `A004736(n+1)*A005408(2*A002262(n))` -/
def P845072015224553483.Spec : Prop :=
  ∀ n, P845072015224553483.a n = A101492 n

end A101492

/-! ## A101492.P12359434486155129319

`2*A141387(n)+A002260(n+1)-A114327(n)`
-/

namespace A101492.P12359434486155129319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141387 n + (A002260 (n + 1) - A114327 n)

end

end A101492.P12359434486155129319

namespace A101492

/-- `2*A141387(n)+A002260(n+1)-A114327(n)` -/
def P12359434486155129319.Spec : Prop :=
  ∀ n, P12359434486155129319.a n = A101492 n

theorem P12359434486155129319.correct : P12359434486155129319.Spec := by
  intro n
  simp only [A101492, Nat.add_sub_cancel, A101492.P12359434486155129319.a, A101492.P4383159737431497936.a, A002260, A002260.P9170571874073898642.a, A114327, A114327.P12930942860764139837.a, A141387, A141387.P5238259369822402056.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101492

/-! ## A101492.P7386528683328122279

`A094728(n+1)+A101447(n)-A004736(n+1)²`
-/

namespace A101492.P7386528683328122279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094728 (n + 1) + (A101447 n - A004736 (n + 1) ^ 2)

end

end A101492.P7386528683328122279

namespace A101492

/-- `A094728(n+1)+A101447(n)-A004736(n+1)²` -/
def P7386528683328122279.Spec : Prop :=
  ∀ n, P7386528683328122279.a n = A101492 n

end A101492

/-! ## A101492.P4009897882574534528

`A004736(n+1)*A158405(A002260(n+1)*A158405(n+1))`
-/

namespace A101492.P4009897882574534528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A158405 (A002260 (n + 1) * A158405 (n + 1)).toNat

end

end A101492.P4009897882574534528

namespace A101492

/-- `A004736(n+1)*A158405(A002260(n+1)*A158405(n+1))` -/
def P4009897882574534528.Spec : Prop :=
  ∀ n, P4009897882574534528.a n = A101492 n

end A101492

/-! ## A101492.P878577122544093898

`A003991(A185869(n+1))-A004736(n+1)`
-/

namespace A101492.P878577122544093898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A185869 (n + 1)).toNat - A004736 (n + 1)

end

end A101492.P878577122544093898

namespace A101492

/-- `A003991(A185869(n+1))-A004736(n+1)` -/
def P878577122544093898.Spec : Prop :=
  ∀ n, P878577122544093898.a n = A101492 n

end A101492

/-! ## A101492.P8211019507121114084

`2*A101447(n)-A000005(A130321(n))`
-/

namespace A101492.P8211019507121114084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101447 n - A000005 (A130321 n).toNat

end

end A101492.P8211019507121114084

namespace A101492

/-- `2*A101447(n)-A000005(A130321(n))` -/
def P8211019507121114084.Spec : Prop :=
  ∀ n, P8211019507121114084.a n = A101492 n

end A101492

/-! ## A101492.P11132602461708348118

`A004736(n+1)*A158405(A158405(n+1)+A000217(n))`
-/

namespace A101492.P11132602461708348118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A158405 (A158405 (n + 1) + A000217 n).toNat

end

end A101492.P11132602461708348118

namespace A101492

/-- `A004736(n+1)*A158405(A158405(n+1)+A000217(n))` -/
def P11132602461708348118.Spec : Prop :=
  ∀ n, P11132602461708348118.a n = A101492 n

end A101492

/-! ## A101492.P6687399994602297948

`A327259(A185869(n+1))/2`
-/

namespace A101492.P6687399994602297948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327259 (A185869 (n + 1)).toNat : ℚ) / 2

end

end A101492.P6687399994602297948

namespace A101492

/-- `A327259(A185869(n+1))/2` -/
def P6687399994602297948.Spec : Prop :=
  ∀ n, P6687399994602297948.a n = (A101492 n : ℚ)

end A101492

/-!
# A101493: Triangle read by rows: T(n,k) = (n+1)*(2*(n+1)-1) - k*(2*k-1).

The programs for A101493, the canonical program `A101493.P9325782317319428844` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101493 has offset 0).

The definition of A101493 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1)*(2*(row(n)+1)-1)-col(n)*(2*col(n)-1)` (program `A101493.P9325782317319428844`, by `A101493.P9325782317319428844.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101493.P9325782317319428844

`(row(n)+1)*(2*(row(n)+1)-1)-col(n)*(2*col(n)-1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101493

/-- `(row(n)+1)*(2*(row(n)+1)-1)-col(n)*(2*col(n)-1)` -/
def P9325782317319428844.Spec : Prop :=
  ∀ n, P9325782317319428844.a n = A101493 n

theorem P9325782317319428844.correct : P9325782317319428844.Spec := by
  intro n
  simp only [A101493]

end A101493

/-! ## A101493.P11314955745359332570

`A004736(n+1)*A131421(n+1)`
-/

namespace A101493.P11314955745359332570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A131421 (n + 1)

end

end A101493.P11314955745359332570

namespace A101493

/-- `A004736(n+1)*A131421(n+1)` -/
def P11314955745359332570.Spec : Prop :=
  ∀ n, P11314955745359332570.a n = A101493 n

end A101493

/-! ## A101493.P4031805434739763916

`(A025581(n)+1)*A131421(n+1)`
-/

namespace A101493.P4031805434739763916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A131421 (n + 1)

end

end A101493.P4031805434739763916

namespace A101493

/-- `(A025581(n)+1)*A131421(n+1)` -/
def P4031805434739763916.Spec : Prop :=
  ∀ n, P4031805434739763916.a n = A101493 n

theorem P4031805434739763916.correct : P4031805434739763916.Spec := by
  intro n
  simp only [A101493, Nat.add_sub_cancel, A101493.P4031805434739763916.a, A101493.P9325782317319428844.a, A025581, A025581.P16112744757063613497.a, A131421, A131421.P16745487656165401881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A101493

/-! ## A101493.P1051141641876732388

`2*A104587(n)-A004736(n+1)²`
-/

namespace A101493.P1051141641876732388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104587 n - A004736 (n + 1) ^ 2

end

end A101493.P1051141641876732388

namespace A101493

/-- `2*A104587(n)-A004736(n+1)²` -/
def P1051141641876732388.Spec : Prop :=
  ∀ n, P1051141641876732388.a n = A101493 n

end A101493

/-! ## A101493.P3235187119619857054

`2*A094728(n+1)-A004736(n+1)`
-/

namespace A101493.P3235187119619857054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094728 (n + 1) - A004736 (n + 1)

end

end A101493.P3235187119619857054

namespace A101493

/-- `2*A094728(n+1)-A004736(n+1)` -/
def P3235187119619857054.Spec : Prop :=
  ∀ n, P3235187119619857054.a n = A101493 n

end A101493

/-! ## A101493.P8158236979830607107

`2*A095871(n+1)-A094728(n+1)`
-/

namespace A101493.P8158236979830607107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095871 (n + 1) - A094728 (n + 1)

end

end A101493.P8158236979830607107

namespace A101493

/-- `2*A095871(n+1)-A094728(n+1)` -/
def P8158236979830607107.Spec : Prop :=
  ∀ n, P8158236979830607107.a n = A101493 n

end A101493

/-! ## A101493.P15570798167796665320

`(2*A051162(n)+1)*A004736(n+1)`
-/

namespace A101493.P15570798167796665320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A051162 n + 1) * A004736 (n + 1)

end

end A101493.P15570798167796665320

namespace A101493

/-- `(2*A051162(n)+1)*A004736(n+1)` -/
def P15570798167796665320.Spec : Prop :=
  ∀ n, P15570798167796665320.a n = A101493 n

end A101493

/-! ## A101493.P12209287561752510974

`A008619(A099375(n))*A131421(n+1)`
-/

namespace A101493.P12209287561752510974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A099375 n).toNat * A131421 (n + 1)

end

end A101493.P12209287561752510974

namespace A101493

/-- `A008619(A099375(n))*A131421(n+1)` -/
def P12209287561752510974.Spec : Prop :=
  ∀ n, P12209287561752510974.a n = A101493 n

end A101493

/-! ## A101493.P17832350434263786927

`A000384(A002024(n+1))-A000384(A002262(n))`
-/

namespace A101493.P17832350434263786927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A002024 (n + 1)).toNat - A000384 (A002262 n).toNat

end

end A101493.P17832350434263786927

namespace A101493

/-- `A000384(A002024(n+1))-A000384(A002262(n))` -/
def P17832350434263786927.Spec : Prop :=
  ∀ n, P17832350434263786927.a n = A101493 n

end A101493

/-! ## A101493.P8729462127285357161

`A049777(n+1)+A008585(A049777(n+1)-A004736(n+1))`
-/

namespace A101493.P8729462127285357161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) + A008585 (A049777 (n + 1) - A004736 (n + 1)).toNat

end

end A101493.P8729462127285357161

namespace A101493

/-- `A049777(n+1)+A008585(A049777(n+1)-A004736(n+1))` -/
def P8729462127285357161.Spec : Prop :=
  ∀ n, P8729462127285357161.a n = A101493 n

end A101493

/-! ## A101493.P8875610658777302134

`A004736(n+1)*A131507(A245300(n))`
-/

namespace A101493.P8875610658777302134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A131507 (A245300 n).toNat

end

end A101493.P8875610658777302134

namespace A101493

/-- `A004736(n+1)*A131507(A245300(n))` -/
def P8875610658777302134.Spec : Prop :=
  ∀ n, P8875610658777302134.a n = A101493 n

end A101493

/-!
# A101494: Triangle, read by rows, where T(n,k) = Sum_{j=0..n-k-1} C(j+k,j)*T(n-1,j+k) for n>k>=0 with T(n,n)=1.

The programs for A101494, there is no canonical definition to state claims against.
-/

/-! ## A101494.P10025432288043759191

`A124460(A061579(n+1))+A118917((9*n)²)`
-/

namespace A101494.P10025432288043759191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124460 (A061579 (n + 1)).toNat + A118917 ((9 * n) ^ 2)

end

end A101494.P10025432288043759191

/-! ## A101494.P9301721790083154754

`A124460(A061579(n+1))^gcd(19, A058137(n+1))`
-/

namespace A101494.P9301721790083154754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124460 (A061579 (n + 1)).toNat ^ Int.gcd 19 (A058137 (n + 1))

end

end A101494.P9301721790083154754

/-! ## A101494.P3890765661492996131

`A124460(A061579(n+1))^A014963(A106587(n+1))`
-/

namespace A101494.P3890765661492996131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124460 (A061579 (n + 1)).toNat : ℚ) ^ (A014963 (A106587 (n + 1)).toNat : ℤ)

end

end A101494.P3890765661492996131

/-! ## A101494.P14193242264413406814

`A124460(A061579(n+1))^A014963(A050543(n+1))`
-/

namespace A101494.P14193242264413406814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124460 (A061579 (n + 1)).toNat : ℚ) ^ (A014963 (A050543 (n + 1)).toNat : ℤ)

end

end A101494.P14193242264413406814

/-! ## A101494.P11015073703908005307

`A091491(n+1)%A285738(3*n+2)`
-/

namespace A101494.P11015073703908005307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091491 (n + 1)) (A285738 (3 * n + 2))

end

end A101494.P11015073703908005307

/-!
# A101495: Column 1 of triangle A101494.

The programs for A101495, there is no canonical definition to state claims against.
-/

/-! ## A101495.P8247435705946248077

`A101494(∑[n+1]+1)`
-/

namespace A101495.P8247435705946248077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101494 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A101495.P8247435705946248077

/-! ## A101495.P2924998236304712401

`abs(A101494(A134869(n+1))-1)+1`
-/

namespace A101495.P2924998236304712401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A101494 (A134869 (n + 1)).toNat - 1| + 1

end

end A101495.P2924998236304712401

/-! ## A101495.P3341649803466491520

`lcm(A101494(A134869(n+1)), A158388(n))`
-/

namespace A101495.P3341649803466491520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A101494 (A134869 (n + 1)).toNat) (A158388 n)

end

end A101495.P3341649803466491520

/-! ## A101495.P9239376340974148172

`or(A005369(n), A101494(A134869(n+1)))`
-/

namespace A101495.P9239376340974148172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005369 n) (A101494 (A134869 (n + 1)).toNat)

end

end A101495.P9239376340974148172

/-! ## A101495.P8413180670621979980

`A101494(A134869(n+1))+A000035(2*n)`
-/

namespace A101495.P8413180670621979980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101494 (A134869 (n + 1)).toNat + A000035 (2 * n)

end

end A101495.P8413180670621979980

/-! ## A101495.P12163487542027475402

`or(A000035(n+1), A101494(A134869(n+1)))`
-/

namespace A101495.P12163487542027475402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (n + 1)) (A101494 (A134869 (n + 1)).toNat)

end

end A101495.P12163487542027475402

/-! ## A101495.P8565937774392462181

`A101494(A134869(n+1))+A000212(val(n+1, 12))`
-/

namespace A101495.P8565937774392462181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101494 (A134869 (n + 1)).toNat + A000212 (SequenceMachineLib.valuation (n + 1) 12)

end

end A101495.P8565937774392462181

/-! ## A101495.P6254323744028523950

`A101494(A134869(n+1))%A000747(n)`
-/

namespace A101495.P6254323744028523950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101494 (A134869 (n + 1)).toNat) (A000747 n)

end

end A101495.P6254323744028523950

/-!
# A101496: Expansion of (1-x^2)/(1-x-x^2+x^3+x^4).

The programs for A101496, the canonical program `A101496.P8409245159284991448` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101496 has offset 0).

The definition of A101496 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-x-x^2+x^3+x^4))` (program `A101496.P8409245159284991448`, by `A101496.P8409245159284991448.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101496.P8409245159284991448

`ogf((1-x^2)/(1-x-x^2+x^3+x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101496

/-- `ogf((1-x^2)/(1-x-x^2+x^3+x^4))` -/
def P8409245159284991448.Spec : Prop :=
  ∀ n, P8409245159284991448.a n = A101496 n

theorem P8409245159284991448.correct : P8409245159284991448.Spec := by
  intro n
  simp only [A101496]

end A101496

/-! ## A101496.P12072013177249050804

`a(n-1)+a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A101496.P12072013177249050804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3) - a (n - 4)

end

end A101496.P12072013177249050804

namespace A101496

/-- `a(n-1)+a(n-2)-a(n-3)-a(n-4)` -/
def P12072013177249050804.Spec : Prop :=
  ∀ n, P12072013177249050804.a n = A101496 n

end A101496

/-! ## A101496.P3278208645889489946

`a(n-1)-(a(n-3)-(a(n-2)-a(n-4)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A101496.P3278208645889489946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 1) - (a (n - 3) - (a (n - 2) - a (n - 4)))

end

end A101496.P3278208645889489946

namespace A101496

/-- `a(n-1)-(a(n-3)-(a(n-2)-a(n-4)))` -/
def P3278208645889489946.Spec : Prop :=
  ∀ n, P3278208645889489946.a n = A101496 n

end A101496

/-! ## A101496.P16157017090917423863

`∑[-A199803(n+1)]/A033999(n)`
-/

namespace A101496.P16157017090917423863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A199803 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A033999 n : ℚ)

end

end A101496.P16157017090917423863

namespace A101496

/-- `∑[-A199803(n+1)]/A033999(n)` -/
def P16157017090917423863.Spec : Prop :=
  ∀ n, P16157017090917423863.a n = (A101496 n : ℚ)

end A101496

/-! ## A101496.P4005899744085206458

`∑[A199803(n+1)]*A033999(n+1)`
-/

namespace A101496.P4005899744085206458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 (n + 1)

end

end A101496.P4005899744085206458

namespace A101496

/-- `∑[A199803(n+1)]*A033999(n+1)` -/
def P4005899744085206458.Spec : Prop :=
  ∀ n, P4005899744085206458.a n = A101496 n

end A101496

/-! ## A101496.P8794420314184330922

`∑[-A199803(n+1)]*A009001(2*n)`
-/

namespace A101496.P8794420314184330922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A199803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A009001 (2 * n)

end

end A101496.P8794420314184330922

namespace A101496

/-- `∑[-A199803(n+1)]*A009001(2*n)` -/
def P8794420314184330922.Spec : Prop :=
  ∀ n, P8794420314184330922.a n = A101496 n

end A101496

/-! ## A101496.P7920794598991877502

`∑[-A199803(n+1)]*A056594(2*n)`
-/

namespace A101496.P7920794598991877502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A199803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A056594 (2 * n)

end

end A101496.P7920794598991877502

namespace A101496

/-- `∑[-A199803(n+1)]*A056594(2*n)` -/
def P7920794598991877502.Spec : Prop :=
  ∀ n, P7920794598991877502.a n = A101496 n

end A101496

/-! ## A101496.P11631097966876749056

`(A004442(n)-n)*∑[-A199803(n+1)]`
-/

namespace A101496.P11631097966876749056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A199803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101496.P11631097966876749056

namespace A101496

/-- `(A004442(n)-n)*∑[-A199803(n+1)]` -/
def P11631097966876749056.Spec : Prop :=
  ∀ n, P11631097966876749056.a n = A101496 n

end A101496

/-! ## A101496.P6732351585315338971

`∑[-A199803(n+1)]*A010892(A008585(n))`
-/

namespace A101496.P6732351585315338971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A199803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A010892 (A008585 n).toNat

end

end A101496.P6732351585315338971

namespace A101496

/-- `∑[-A199803(n+1)]*A010892(A008585(n))` -/
def P6732351585315338971.Spec : Prop :=
  ∀ n, P6732351585315338971.a n = A101496 n

end A101496

/-! ## A101496.P3456249914289859830

`∑[A199803(n+1)]*A010892(A008585(n+1))`
-/

namespace A101496.P3456249914289859830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A010892 (A008585 (n + 1)).toNat

end

end A101496.P3456249914289859830

namespace A101496

/-- `∑[A199803(n+1)]*A010892(A008585(n+1))` -/
def P3456249914289859830.Spec : Prop :=
  ∀ n, P3456249914289859830.a n = A101496 n

end A101496

/-! ## A101496.P132749838842463596

`∑[-A199803(n+1)]*A015923(A038387((n+1)²))`
-/

namespace A101496.P132749838842463596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A199803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A015923 (A038387 ((n + 1) ^ 2)).toNat

end

end A101496.P132749838842463596

namespace A101496

/-- `∑[-A199803(n+1)]*A015923(A038387((n+1)²))` -/
def P132749838842463596.Spec : Prop :=
  ∀ n, P132749838842463596.a n = A101496 n

end A101496

/-!
# A101497: Expansion of (1-x^2)/(1-2x+2x^3+x^4).

The programs for A101497, the canonical program `A101497.P622035957517550650` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101497 has offset 0).

The definition of A101497 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-2x+2x^3+x^4))` (program `A101497.P622035957517550650`, by `A101497.P622035957517550650.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101497.P622035957517550650

`ogf((1-x^2)/(1-2x+2x^3+x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101497

/-- `ogf((1-x^2)/(1-2x+2x^3+x^4))` -/
def P622035957517550650.Spec : Prop :=
  ∀ n, P622035957517550650.a n = A101497 n

theorem P622035957517550650.correct : P622035957517550650.Spec := by
  intro n
  simp only [A101497]

end A101497

/-! ## A101497.P2409653134413395937

`2*a(n-1)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A101497.P2409653134413395937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) - a (n - 4)

end

end A101497.P2409653134413395937

namespace A101497

/-- `2*a(n-1)-2*a(n-3)-a(n-4)` -/
def P2409653134413395937.Spec : Prop :=
  ∀ n, P2409653134413395937.a n = A101497 n

end A101497

/-! ## A101497.P5233677344930763863

`A272665(n+2)+A143056(n+2)`
-/

namespace A101497.P5233677344930763863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272665 (n + 2) + A143056 (n + 2)

end

end A101497.P5233677344930763863

namespace A101497

/-- `A272665(n+2)+A143056(n+2)` -/
def P5233677344930763863.Spec : Prop :=
  ∀ n, P5233677344930763863.a n = A101497 n

end A101497

/-! ## A101497.P2240518093630024914

`A272665(n+3)-A272665(n+1)`
-/

namespace A101497.P2240518093630024914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272665 (n + 3) - A272665 (n + 1)

end

end A101497.P2240518093630024914

namespace A101497

/-- `A272665(n+3)-A272665(n+1)` -/
def P2240518093630024914.Spec : Prop :=
  ∀ n, P2240518093630024914.a n = A101497 n

end A101497

/-! ## A101497.P11080847948594017306

`Δ[Δ[-A143056(n+3)]]`
-/

namespace A101497.P11080847948594017306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A143056 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101497.P11080847948594017306

namespace A101497

/-- `Δ[Δ[-A143056(n+3)]]` -/
def P11080847948594017306.Spec : Prop :=
  ∀ n, P11080847948594017306.a n = A101497 n

end A101497

/-! ## A101497.P6623942792889078501

`Δ[A272665(n+1)+A272665(n+2)]`
-/

namespace A101497.P6623942792889078501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272665 (n + 1) + A272665 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101497.P6623942792889078501

namespace A101497

/-- `Δ[A272665(n+1)+A272665(n+2)]` -/
def P6623942792889078501.Spec : Prop :=
  ∀ n, P6623942792889078501.a n = A101497 n

end A101497

/-! ## A101497.P1477884104792266179

`Δ[A143056(n+3)-A143056(n+4)]`
-/

namespace A101497.P1477884104792266179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143056 (n + 3) - A143056 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101497.P1477884104792266179

namespace A101497

/-- `Δ[A143056(n+3)-A143056(n+4)]` -/
def P1477884104792266179.Spec : Prop :=
  ∀ n, P1477884104792266179.a n = A101497 n

end A101497

/-!
# A101498: Expansion of (1-x^2)/(1-3x+x^2+3x^3+x^4).

The programs for A101498, the canonical program `A101498.P8864375569620926398` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101498 has offset 0).

The definition of A101498 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-3x+x^2+3x^3+x^4))` (program `A101498.P8864375569620926398`, by `A101498.P8864375569620926398.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101498.P8864375569620926398

`ogf((1-x^2)/(1-3x+x^2+3x^3+x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A101498

/-- `ogf((1-x^2)/(1-3x+x^2+3x^3+x^4))` -/
def P8864375569620926398.Spec : Prop :=
  ∀ n, P8864375569620926398.a n = A101498 n

theorem P8864375569620926398.correct : P8864375569620926398.Spec := by
  intro n
  simp only [A101498]

end A101498

/-! ## A101498.P8578494653367848829

`3*a(n-1)-a(n-2)-3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=15`
-/

namespace A101498.P8578494653367848829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7, 15] fun n a =>
  3 * a (n - 1) - a (n - 2) - 3 * a (n - 3) - a (n - 4)

end

end A101498.P8578494653367848829

namespace A101498

/-- `3*a(n-1)-a(n-2)-3*a(n-3)-a(n-4)` -/
def P8578494653367848829.Spec : Prop :=
  ∀ n, P8578494653367848829.a n = A101498 n

end A101498

/-!
# A101499: A Chebyshev transform of the Catalan numbers.

The programs for A101499, there is no canonical definition to state claims against.
-/

/-! ## A101499.P778558545641999271

`A102880(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A101499.P778558545641999271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A102880 n + a (n - 2)

end

end A101499.P778558545641999271

/-! ## A101499.P14229260440393721047

`2*A101500(n)-A124431(n)`
-/

namespace A101499.P14229260440393721047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101500 n - A124431 n

end

end A101499.P14229260440393721047

/-! ## A101499.P9344408009257182099

`A187182(A085449(n)+A027423(n))`
-/

namespace A101499.P9344408009257182099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187182 (A085449 n + A027423 n).toNat

end

end A101499.P9344408009257182099

/-! ## A101499.P3303601623378557344

`A004277(A101500(n))-A124431(n)`
-/

namespace A101499.P3303601623378557344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A101500 n).toNat - A124431 n

end

end A101499.P3303601623378557344

/-! ## A101499.P7430326598971861523

`A129756(lcm(A028234(n+1), A032161(n+1)))`
-/

namespace A101499.P7430326598971861523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (Int.lcm (A028234 (n + 1)) (A032161 (n + 1)))

end

end A101499.P7430326598971861523

