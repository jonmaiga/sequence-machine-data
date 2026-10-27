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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
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
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A383401: Index of the largest odd divisor in the list of divisors of n.

The programs for A383401, there is no canonical definition to state claims against.
-/

/-! ## A383401.P6719741323523132362

`A383962(A060831(n+1))`
-/

namespace A383401.P6719741323523132362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383962 (A060831 (n + 1)).toNat

end

end A383401.P6719741323523132362

/-! ## A383401.P6898383018448953725

`A383962(∑[A001227(n+1)])`
-/

namespace A383401.P6898383018448953725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383962 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A383401.P6898383018448953725

/-! ## A383401.P1599278418383018490

`A243987(A000217(n)+(n+1)/2^val(n+1, 2))`
-/

namespace A383401.P1599278418383018490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243987 (SequenceMachineLib.roundAway ((A000217 n : ℚ) + (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A383401.P1599278418383018490

/-! ## A383401.P3073377612602827438

`A070940(A295368(n+1))`
-/

namespace A383401.P3073377612602827438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (A295368 (n + 1)).toNat

end

end A383401.P3073377612602827438

/-! ## A383401.P8808201882893516500

`A299701(n+1)-A007814(A027468(2*(n+1)))`
-/

namespace A383401.P8808201882893516500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (n + 1) - A007814 (A027468 (2 * (n + 1))).toNat

end

end A383401.P8808201882893516500

/-!
# A383402: Smallest number whose largest odd divisor is its n-th divisor.

The programs for A383402, there is no canonical definition to state claims against.
-/

/-! ## A383402.P11678570078293238453

`A383961(∑[n+1])`
-/

namespace A383402.P11678570078293238453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383961 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383402.P11678570078293238453

/-!
# A383403: Partial sums of the sum of the divisors of the numbers of the form 6*k + 3, k >= 0.

The programs for A383403, the canonical program `A383403.P5235216327975457174` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383403 has offset 0).

The definition of A383403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383403.P5235216327975457174

`∑[∑{d}[6*n+3, #]]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383403

/-- `∑[∑{d}[6*n+3, #]]` -/
def P5235216327975457174.Spec : Prop :=
  ∀ n, (P5235216327975457174.a n : ℤ) = A383403 n

theorem P5235216327975457174.correct : P5235216327975457174.Spec := by
  intro n
  simp only [A383403]

end A383403

/-! ## A383403.P18123632575724231921

`∑{d}[3*(2*n+1), #]+a(n-1)` with `a(0)=4`
-/

namespace A383403.P18123632575724231921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), d + a (n - 1)

end

end A383403.P18123632575724231921

namespace A383403

/-- `∑{d}[3*(2*n+1), #]+a(n-1)` -/
def P18123632575724231921.Spec : Prop :=
  ∀ n, (P18123632575724231921.a n : ℤ) = A383403 n

end A383403

/-! ## A383403.P522704791730639354

`∑[A000203(6*n+3)]`
-/

namespace A383403.P522704791730639354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (6 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383403.P522704791730639354

namespace A383403

/-- `∑[A000203(6*n+3)]` -/
def P522704791730639354.Spec : Prop :=
  ∀ n, P522704791730639354.a n = A383403 n

theorem P522704791730639354.correct : P522704791730639354.Spec := by
  intro n
  simp only [A383403, Nat.add_sub_cancel, A383403.P522704791730639354.f1, A383403.P522704791730639354.a, A383403.P5235216327975457174.f2, A383403.P5235216327975457174.f1, A383403.P5235216327975457174.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A383403

/-! ## A383403.P8195806184652134601

`∑[A008438(3*n+1)]`
-/

namespace A383403.P8195806184652134601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383403.P8195806184652134601

namespace A383403

/-- `∑[A008438(3*n+1)]` -/
def P8195806184652134601.Spec : Prop :=
  ∀ n, P8195806184652134601.a n = A383403 n

end A383403

/-! ## A383403.P8145473244686114696

`∑[A144613(2*n+1)]`
-/

namespace A383403.P8145473244686114696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144613 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383403.P8145473244686114696

namespace A383403

/-- `∑[A144613(2*n+1)]` -/
def P8145473244686114696.Spec : Prop :=
  ∀ n, P8145473244686114696.a n = A383403 n

end A383403

/-!
# A383405: Partial sums of the sum of the divisors of the numbers of the form 6*k + 5, k >= 0.

The programs for A383405, the canonical program `A383405.P2988743065066636869` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383405 has offset 0).

The definition of A383405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383405.P2988743065066636869

`∑[∑{d}[6*n+5, #]]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383405

/-- `∑[∑{d}[6*n+5, #]]` -/
def P2988743065066636869.Spec : Prop :=
  ∀ n, (P2988743065066636869.a n : ℤ) = A383405 n

theorem P2988743065066636869.correct : P2988743065066636869.Spec := by
  intro n
  simp only [A383405]

end A383405

/-! ## A383405.P9525107653344030692

`∑[6*A098098(n)]`
-/

namespace A383405.P9525107653344030692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A098098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383405.P9525107653344030692

namespace A383405

/-- `∑[6*A098098(n)]` -/
def P9525107653344030692.Spec : Prop :=
  ∀ n, P9525107653344030692.a n = A383405 n

end A383405

/-! ## A383405.P12205597494851588933

`∑[A000203(A016969(n))]`
-/

namespace A383405.P12205597494851588933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A016969 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383405.P12205597494851588933

namespace A383405

/-- `∑[A000203(A016969(n))]` -/
def P12205597494851588933.Spec : Prop :=
  ∀ n, P12205597494851588933.a n = A383405 n

end A383405

/-! ## A383405.P10201282274001758432

`∑[A000203(A101328(n+3))]`
-/

namespace A383405.P10201282274001758432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A101328 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383405.P10201282274001758432

namespace A383405

/-- `∑[A000203(A101328(n+3))]` -/
def P10201282274001758432.Spec : Prop :=
  ∀ n, P10201282274001758432.a n = A383405 n

end A383405

/-! ## A383405.P17817390184899380409

`∑[A008438(3*n+2)]`
-/

namespace A383405.P17817390184899380409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383405.P17817390184899380409

namespace A383405

/-- `∑[A008438(3*n+2)]` -/
def P17817390184899380409.Spec : Prop :=
  ∀ n, P17817390184899380409.a n = A383405 n

end A383405

/-! ## A383405.P5296256981766100803

`∑[A144615(2*n+1)]`
-/

namespace A383405.P5296256981766100803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144615 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383405.P5296256981766100803

namespace A383405

/-- `∑[A144615(2*n+1)]` -/
def P5296256981766100803.Spec : Prop :=
  ∀ n, P5296256981766100803.a n = A383405 n

theorem P5296256981766100803.correct : P5296256981766100803.Spec := by
  intro n
  simp only [A383405, Nat.add_sub_cancel, A383405.P5296256981766100803.f1, A383405.P5296256981766100803.a, A383405.P2988743065066636869.f2, A383405.P2988743065066636869.f1, A383405.P2988743065066636869.a, A144615, A144615.P1433595682718935894.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A383405

/-! ## A383405.P1139916242719161983

`∑[A366442(2*(n+1))]`
-/

namespace A383405.P1139916242719161983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366442 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383405.P1139916242719161983

namespace A383405

/-- `∑[A366442(2*(n+1))]` -/
def P1139916242719161983.Spec : Prop :=
  ∀ n, P1139916242719161983.a n = A383405 n

end A383405

/-! ## A383405.P17413922619763202523

`∑[lcm(2, A121613(3*n+2))]`
-/

namespace A383405.P17413922619763202523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A121613 (3 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383405.P17413922619763202523

namespace A383405

/-- `∑[lcm(2, A121613(3*n+2))]` -/
def P17413922619763202523.Spec : Prop :=
  ∀ n, (P17413922619763202523.a n : ℤ) = A383405 n

end A383405

/-!
# A383406: Number of king permutations on n elements avoiding the mesh pattern (12, {(0,0),(0,1),(1,0),(1,2),(2,1),(2,2)}).

The programs for A383406, there is no canonical definition to state claims against.
-/

/-! ## A383406.P2792707777989210918

`A023443(A383408(n)+1)`
-/

namespace A383406.P2792707777989210918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A383408 n + 1).toNat

end

end A383406.P2792707777989210918

/-!
# A383409: Expansion of e.g.f. (exp(x)-1)*(exp(x)-x)*(exp(x)-x^2/2)*(exp(x)-x^3/6).

The programs for A383409, there is no canonical definition to state claims against.
-/

/-! ## A383409.P6867324396502351467

`A284313(A000009(n+2))+A087504(A372414(n+1))`
-/

namespace A383409.P6867324396502351467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284313 (A000009 (n + 2)).toNat + A087504 (A372414 (n + 1)).toNat

end

end A383409.P6867324396502351467

/-! ## A383409.P2656692386757066726

`A247176(A150212(n))`
-/

namespace A383409.P2656692386757066726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247176 (A150212 n).toNat

end

end A383409.P2656692386757066726

/-!
# A383413: Area A of triangles such that the sides are distinct integers and A is an integer.

The programs for A383413, there is no canonical definition to state claims against.
-/

/-! ## A383413.P11763130252984508602

`∩[A122806(n+1), A188158(n+1)]`
-/

namespace A383413.P11763130252984508602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383413.P11763130252984508602

/-! ## A383413.P12825519685435812468

`A188158(lt[A274777(n+1), A236335(n+1)])`
-/

namespace A383413.P12825519685435812468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188158 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A383413.P12825519685435812468

/-! ## A383413.P18059157084353708683

`A188158(lt[A049404(2*(n+2)), A086642(2*n+3)])`
-/

namespace A383413.P18059157084353708683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049404 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086642 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188158 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A383413.P18059157084353708683

/-! ## A383413.P7984647841367306117

`A002328(n+1)*A007947(A008776(n))`
-/

namespace A383413.P7984647841367306117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) * A007947 (A008776 n).toNat

end

end A383413.P7984647841367306117

/-! ## A383413.P6300678903452297927

`eq[A113517(n+2), A276397(n)]`
-/

namespace A383413.P6300678903452297927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113517 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276397 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383413.P6300678903452297927

/-!
# A383414: Array read by ascending antidiagonals: A(n,k) = 4^n*(8*k + 7).

The programs for A383414, the canonical program `A383414.P16717646191007434327` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383414 has offset 0).

The definition of A383414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383414.P5204604449393165482

`4^(row(n)-col(n))*(8*col(n)+7)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A383414.P5204604449393165482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (8 * SequenceMachineLib.triCol n + 7 : ℚ)

end

end A383414.P5204604449393165482

namespace A383414

/-- `4^(row(n)-col(n))*(8*col(n)+7)` -/
def P5204604449393165482.Spec : Prop :=
  ∀ n, P5204604449393165482.a n = (A383414 n : ℚ)

end A383414

/-! ## A383414.P16717646191007434327

`A000302(row(n)-col(n))*A004771(col(n))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A383414

/-- `A000302(row(n)-col(n))*A004771(col(n))` -/
def P16717646191007434327.Spec : Prop :=
  ∀ n, P16717646191007434327.a n = A383414 n

theorem P16717646191007434327.correct : P16717646191007434327.Spec := by
  intro n
  simp only [A383414]

end A383414

/-!
# A383415: Antidiagonal sums of A383414.

The programs for A383415, the canonical program `A383415.P7677584161759970372` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383415 has offset 0).

The definition of A383415 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383415.P7677584161759970372

`(29*4^(n+1)-24*n-53)/9`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383415

/-- `(29*4^(n+1)-24*n-53)/9` -/
def P7677584161759970372.Spec : Prop :=
  ∀ n, P7677584161759970372.a n = (A383415 n : ℚ)

end A383415

/-! ## A383415.P2175810302077822002

`∑[ogf((7+x)/(1-5x+4x^2))]`
-/

namespace A383415.P2175810302077822002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 1] [1, -5, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383415.P2175810302077822002

namespace A383415

/-- `∑[ogf((7+x)/(1-5x+4x^2))]` -/
def P2175810302077822002.Spec : Prop :=
  ∀ n, P2175810302077822002.a n = A383415 n

end A383415

/-! ## A383415.P18301514081703031424

`ogf((7+x)/(1-6x+9x^2-4x^3))`
-/

namespace A383415.P18301514081703031424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 1] [1, -6, 9, -4] n

end

end A383415.P18301514081703031424

namespace A383415

/-- `ogf((7+x)/(1-6x+9x^2-4x^3))` -/
def P18301514081703031424.Spec : Prop :=
  ∀ n, P18301514081703031424.a n = A383415 n

end A383415

/-! ## A383415.P11674678683915508825

`∑[4*(a(n-1)+2)]` with `a(0)=7`
-/

namespace A383415.P11674678683915508825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  4 * (f1 (n - 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383415.P11674678683915508825

namespace A383415

/-- `∑[4*(a(n-1)+2)]` -/
def P11674678683915508825.Spec : Prop :=
  ∀ n, (P11674678683915508825.a n : ℤ) = A383415 n

end A383415

/-! ## A383415.P12817820825828316960

`∑[5*a(n-1)-(a(n-1)-8)]` with `a(0)=7`
-/

namespace A383415.P12817820825828316960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  5 * f1 (n - 1) - (f1 (n - 1) - 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383415.P12817820825828316960

namespace A383415

/-- `∑[5*a(n-1)-(a(n-1)-8)]` -/
def P12817820825828316960.Spec : Prop :=
  ∀ n, P12817820825828316960.a n = A383415 n

end A383415

/-!
# A383416: Population of elementary triangular automaton rule 186 at generation n, starting from a lone 1 cell at generation 0.

The programs for A383416, there is no canonical definition to state claims against.
-/

/-! ## A383416.P4420352836234745293

`A100115(A384188(n))`
-/

namespace A383416.P4420352836234745293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100115 (A384188 n).toNat

end

end A383416.P4420352836234745293

/-! ## A383416.P205379347879101332

`A384188(A227549(n+1))`
-/

namespace A383416.P205379347879101332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384188 (A227549 (n + 1)).toNat

end

end A383416.P205379347879101332

/-! ## A383416.P915919070010880389

`A384188(A396204(n+1))`
-/

namespace A383416.P915919070010880389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384188 (A396204 (n + 1)).toNat

end

end A383416.P915919070010880389

/-!
# A383418: Third center column of elementary triangular automaton rule 2, starting from a lone 1 cell.

The programs for A383418, there is no canonical definition to state claims against.
-/

/-! ## A383418.P6087264003558666434

`A000007(and(A072366(2*(n+2)), A097110(n+3)))`
-/

namespace A383418.P6087264003558666434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.land (A072366 (2 * (n + 2))) (A097110 (n + 3))).toNat

end

end A383418.P6087264003558666434

/-! ## A383418.P14328457304218249356

`A095792(A035444(2*n)+A000002(n+1))`
-/

namespace A383418.P14328457304218249356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095792 (A035444 (2 * n) + A000002 (n + 1)).toNat

end

end A383418.P14328457304218249356

/-! ## A383418.P5576564685684180471

`((n+1)*A051965(n+2))%2`
-/

namespace A383418.P5576564685684180471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A051965 (n + 2)) 2

end

end A383418.P5576564685684180471

/-! ## A383418.P14678175290531907373

`A380534(A255654(n+1))`
-/

namespace A383418.P14678175290531907373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380534 (A255654 (n + 1)).toNat

end

end A383418.P14678175290531907373

/-! ## A383418.P5113238636884972782

`and(A007814(A020639(3*n+2)), A051965(n+2))`
-/

namespace A383418.P5113238636884972782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007814 (A020639 (3 * n + 2)).toNat) (A051965 (n + 2))

end

end A383418.P5113238636884972782

/-! ## A383418.P11018708574548847076

`A000035(A007504(n)%A323196(n+1))`
-/

namespace A383418.P11018708574548847076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.tmod (A007504 n) (A323196 (n + 1))).toNat

end

end A383418.P11018708574548847076

/-!
# A383419: a(n) = A378762(A381968(n)).

The programs for A383419, there is no canonical definition to state claims against.
-/

/-! ## A383419.P709653505711296184

`A378762(A381968(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A383419.P709653505711296184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378762 (A381968 (n + 1)).toNat

end

end A383419.P709653505711296184

/-! ## A383419.P9420788824549281556

`A382680(A056023(n+1))`
-/

namespace A383419.P9420788824549281556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382680 (A056023 (n + 1)).toNat

end

end A383419.P9420788824549281556

/-! ## A383419.P16632431649816628700

`A056023(A382679(n+1))`
-/

namespace A383419.P16632431649816628700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A382679 (n + 1)).toNat

end

end A383419.P16632431649816628700

/-! ## A383419.P11485126103734972716

`A383724(A376214(n+1))`
-/

namespace A383419.P11485126103734972716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383724 (A376214 (n + 1)).toNat

end

end A383419.P11485126103734972716

/-! ## A383419.P17676471326375888336

`A376214(A383722(n+1))`
-/

namespace A383419.P17676471326375888336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A383722 (n + 1)).toNat

end

end A383419.P17676471326375888336

/-! ## A383419.P1351768071493141861

`A383722(A380817(n+1))`
-/

namespace A383419.P1351768071493141861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383722 (A380817 (n + 1)).toNat

end

end A383419.P1351768071493141861

/-! ## A383419.P15214543497523953672

`A380817(A383724(n+1))`
-/

namespace A383419.P15214543497523953672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A383724 (n + 1)).toNat

end

end A383419.P15214543497523953672

/-! ## A383419.P16453723425016726960

`A383590(A381662(n+1))`
-/

namespace A383419.P16453723425016726960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383590 (A381662 (n + 1)).toNat

end

end A383419.P16453723425016726960

/-! ## A383419.P10123096207989405905

`A383589(A382499(n+1))`
-/

namespace A383419.P10123096207989405905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383589 (A382499 (n + 1)).toNat

end

end A383419.P10123096207989405905

/-! ## A383419.P4070352528907565913

`A383723(A382680(n+1))`
-/

namespace A383419.P4070352528907565913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383723 (A382680 (n + 1)).toNat

end

end A383419.P4070352528907565913

/-! ## A383419.P17349313883792848272

`A382679(A383723(n+1))`
-/

namespace A383419.P17349313883792848272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382679 (A383723 (n + 1)).toNat

end

end A383419.P17349313883792848272

/-! ## A383419.P2510982697197111625

`A381968(A378684(A378200(n+1)))`
-/

namespace A383419.P2510982697197111625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381968 (A378684 (A378200 (n + 1)).toNat).toNat

end

end A383419.P2510982697197111625

/-! ## A383419.P338464819222991158

`A381968(A379342(A378705(n+1)))`
-/

namespace A383419.P338464819222991158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381968 (A379342 (A378705 (n + 1)).toNat).toNat

end

end A383419.P338464819222991158

/-! ## A383419.P15429342957406648467

`A378705(A381968(A379343(n+1)))`
-/

namespace A383419.P15429342957406648467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378705 (A381968 (A379343 (n + 1)).toNat).toNat

end

end A383419.P15429342957406648467

/-! ## A383419.P14588865571498160169

`A378200(A381968(A380200(n+1)))`
-/

namespace A383419.P14588865571498160169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A381968 (A380200 (n + 1)).toNat).toNat

end

end A383419.P14588865571498160169

/-! ## A383419.P14001099879036513203

`A380817(A376214(A383590(n+1)))`
-/

namespace A383419.P14001099879036513203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A376214 (A383590 (n + 1)).toNat).toNat

end

end A383419.P14001099879036513203

/-! ## A383419.P326914544106767053

`A378200(A382499(A380245(n+1)))`
-/

namespace A383419.P326914544106767053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A382499 (A380245 (n + 1)).toNat).toNat

end

end A383419.P326914544106767053

/-! ## A383419.P1264893464138529488

`A378684(A383590(A378684(n+1)))`
-/

namespace A383419.P1264893464138529488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A383590 (A378684 (n + 1)).toNat).toNat

end

end A383419.P1264893464138529488

/-! ## A383419.P9906399529038160230

`A378200(A382680(A380815(n+1)))`
-/

namespace A383419.P9906399529038160230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A382680 (A380815 (n + 1)).toNat).toNat

end

end A383419.P9906399529038160230

/-! ## A383419.P904227881308648871

`A379342(A383724(A379342(n+1)))`
-/

namespace A383419.P904227881308648871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379342 (A383724 (A379342 (n + 1)).toNat).toNat

end

end A383419.P904227881308648871

/-!
# A383422: The infinite Lucas word; the limiting word generated by s(0) = 0, s(1) = 011, and s(n) = s(n-1)s(n-2).

The programs for A383422, the canonical program `A383422.P18234050156390555465` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383422 has offset 0).

The definition of A383422 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287772, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A383422.P18234050156390555465

`1-A287772(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A383422

/-- `1-A287772(n+1)` -/
def P18234050156390555465.Spec : Prop :=
  ∀ n, P18234050156390555465.a n = A383422 n

theorem P18234050156390555465.correct : P18234050156390555465.Spec := by
  intro n
  simp only [A383422]

end A383422

/-! ## A383422.P9119830087922865902

`A000007(A294203(n))`
-/

namespace A383422.P9119830087922865902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A294203 n).toNat

end

end A383422.P9119830087922865902

namespace A383422

/-- `A000007(A294203(n))` -/
def P9119830087922865902.Spec : Prop :=
  ∀ n, P9119830087922865902.a n = A383422 n

end A383422

/-! ## A383422.P999230584527865243

`A221150(A230603(n)+n)`
-/

namespace A383422.P999230584527865243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221150 (A230603 n + (n : ℤ)).toNat

end

end A383422.P999230584527865243

namespace A383422

/-- `A221150(A230603(n)+n)` -/
def P999230584527865243.Spec : Prop :=
  ∀ n, P999230584527865243.a n = A383422 n

end A383422

/-! ## A383422.P12505647305087723183

`A287727(n+1)-A287770(n+1)`
-/

namespace A383422.P12505647305087723183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287727 (n + 1) - A287770 (n + 1)

end

end A383422.P12505647305087723183

namespace A383422

/-- `A287727(n+1)-A287770(n+1)` -/
def P12505647305087723183.Spec : Prop :=
  ∀ n, P12505647305087723183.a n = A383422 n

theorem P12505647305087723183.correct : P12505647305087723183.Spec := by
  intro n
  simp only [A383422, Nat.add_sub_cancel, A383422.P12505647305087723183.a, A383422.P18234050156390555465.a, A287727, A287727.P18038201456973574914.a, A287770, A287770.P11237212306429765726.a, A287772, A287772.P12816254190753866578.a, A195121, A195121.P14500461516378876145.a, A230603, A230603.P2271851094965990060.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A383422

/-! ## A383422.P7270430115456076717

`A294203((n+2)*A287772(n+1))`
-/

namespace A383422.P7270430115456076717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294203 ((n + 2 : ℤ) * A287772 (n + 1)).toNat

end

end A383422.P7270430115456076717

namespace A383422

/-- `A294203((n+2)*A287772(n+1))` -/
def P7270430115456076717.Spec : Prop :=
  ∀ n, P7270430115456076717.a n = A383422 n

end A383422

/-! ## A383422.P16547014282393570863

`Δ[Δ[floor((n+1)/(ϕ+2))]]²`
-/

namespace A383422.P16547014282393570863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (Real.goldenRatio + 2)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A383422.P16547014282393570863

namespace A383422

/-- `Δ[Δ[floor((n+1)/(ϕ+2))]]²` -/
def P16547014282393570863.Spec : Prop :=
  ∀ n, P16547014282393570863.a n = A383422 n

end A383422

/-! ## A383422.P3264657429592007116

`abs(Δ[A221150(n)])`
-/

namespace A383422.P3264657429592007116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A383422.P3264657429592007116

namespace A383422

/-- `abs(Δ[A221150(n)])` -/
def P3264657429592007116.Spec : Prop :=
  ∀ n, P3264657429592007116.a n = A383422 n

end A383422

/-! ## A383422.P16757479762112569451

`abs(Δ[A230603(n)])`
-/

namespace A383422.P16757479762112569451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A383422.P16757479762112569451

namespace A383422

/-- `abs(Δ[A230603(n)])` -/
def P16757479762112569451.Spec : Prop :=
  ∀ n, P16757479762112569451.a n = A383422 n

end A383422

/-! ## A383422.P9880554843582886153

`A221150(A221150(n+1)+n)`
-/

namespace A383422.P9880554843582886153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221150 (A221150 (n + 1) + (n : ℤ)).toNat

end

end A383422.P9880554843582886153

namespace A383422

/-- `A221150(A221150(n+1)+n)` -/
def P9880554843582886153.Spec : Prop :=
  ∀ n, P9880554843582886153.a n = A383422 n

end A383422

/-! ## A383422.P827761308652948562

`abs(Δ[A286746(n+2)])`
-/

namespace A383422.P827761308652948562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286746 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A383422.P827761308652948562

namespace A383422

/-- `abs(Δ[A286746(n+2)])` -/
def P827761308652948562.Spec : Prop :=
  ∀ n, P827761308652948562.a n = A383422 n

end A383422

/-! ## A383422.P17038233252359650504

`A230603(n+2)*A286746(n+1)`
-/

namespace A383422.P17038233252359650504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230603 (n + 2) * A286746 (n + 1)

end

end A383422.P17038233252359650504

namespace A383422

/-- `A230603(n+2)*A286746(n+1)` -/
def P17038233252359650504.Spec : Prop :=
  ∀ n, P17038233252359650504.a n = A383422 n

end A383422

/-! ## A383422.P5859120423093423376

`A005614(A187945(n+1))`
-/

namespace A383422.P5859120423093423376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A187945 (n + 1)).toNat

end

end A383422.P5859120423093423376

namespace A383422

/-- `A005614(A187945(n+1))` -/
def P5859120423093423376.Spec : Prop :=
  ∀ n, P5859120423093423376.a n = A383422 n

end A383422

/-! ## A383422.P10164639918654279478

`A114986(A287777(n+1)-n)`
-/

namespace A383422.P10164639918654279478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (A287777 (n + 1) - (n : ℤ)).toNat

end

end A383422.P10164639918654279478

namespace A383422

/-- `A114986(A287777(n+1)-n)` -/
def P10164639918654279478.Spec : Prop :=
  ∀ n, P10164639918654279478.a n = A383422 n

end A383422

/-! ## A383422.P7201277466214667821

`1-A287663(A287770(n+1))`
-/

namespace A383422.P7201277466214667821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A287663 (A287770 (n + 1)).toNat

end

end A383422.P7201277466214667821

namespace A383422

/-- `1-A287663(A287770(n+1))` -/
def P7201277466214667821.Spec : Prop :=
  ∀ n, P7201277466214667821.a n = A383422 n

end A383422

/-! ## A383422.P15620610450442550327

`1-A287663(A287727(n+1))`
-/

namespace A383422.P15620610450442550327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A287663 (A287727 (n + 1)).toNat

end

end A383422.P15620610450442550327

namespace A383422

/-- `1-A287663(A287727(n+1))` -/
def P15620610450442550327.Spec : Prop :=
  ∀ n, P15620610450442550327.a n = A383422 n

end A383422

/-! ## A383422.P10737033139563454337

`A230603(A111202(n+1))`
-/

namespace A383422.P10737033139563454337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230603 (A111202 (n + 1)).toNat

end

end A383422.P10737033139563454337

namespace A383422

/-- `A230603(A111202(n+1))` -/
def P10737033139563454337.Spec : Prop :=
  ∀ n, P10737033139563454337.a n = A383422 n

end A383422

/-! ## A383422.P12775924399038133179

`A005713(A187951(n+1))`
-/

namespace A383422.P12775924399038133179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 (A187951 (n + 1)).toNat

end

end A383422.P12775924399038133179

namespace A383422

/-- `A005713(A187951(n+1))` -/
def P12775924399038133179.Spec : Prop :=
  ∀ n, P12775924399038133179.a n = A383422 n

end A383422

/-! ## A383422.P3560587583564763061

`1-A187950(A188258(n+1))`
-/

namespace A383422.P3560587583564763061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A187950 (A188258 (n + 1)).toNat

end

end A383422.P3560587583564763061

namespace A383422

/-- `1-A187950(A188258(n+1))` -/
def P3560587583564763061.Spec : Prop :=
  ∀ n, P3560587583564763061.a n = A383422 n

end A383422

/-! ## A383422.P14231591233305714745

`A296135(A188190(n+2))`
-/

namespace A383422.P14231591233305714745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296135 (A188190 (n + 2)).toNat

end

end A383422.P14231591233305714745

namespace A383422

/-- `A296135(A188190(n+2))` -/
def P14231591233305714745.Spec : Prop :=
  ∀ n, P14231591233305714745.a n = A383422 n

end A383422

/-! ## A383422.P7551300627600850192

`A011655(A287792(n+1))`
-/

namespace A383422.P7551300627600850192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A287792 (n + 1)).toNat

end

end A383422.P7551300627600850192

namespace A383422

/-- `A011655(A287792(n+1))` -/
def P7551300627600850192.Spec : Prop :=
  ∀ n, P7551300627600850192.a n = A383422 n

end A383422

/-!
# A383423: Indices k such that A003849(k) = 0 and A383422(k) = 0.

The programs for A383423, the canonical program `A383423.P11431245251035309516` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383423 has offset 1).

The definition of A383423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4766 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383423.P11431245251035309516

`∩[A022342(n+1), A383427(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A383423

/-- `∩[A022342(n+1), A383427(n+1)]` -/
def P11431245251035309516.Spec : Prop :=
  ∀ n, (P11431245251035309516.a n : ℤ) = A383423 (n + 1)

theorem P11431245251035309516.correct : P11431245251035309516.Spec := by
  intro n
  simp only [A383423, Nat.add_sub_cancel]

end A383423

/-! ## A383423.P5614961364066715553

`filter[A383427(n+1), A005614(#)]`
-/

namespace A383423.P5614961364066715553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005614 (f1 j).toNat = 1) n)

end

end A383423.P5614961364066715553

namespace A383423

/-- `filter[A383427(n+1), A005614(#)]` -/
def P5614961364066715553.Spec : Prop :=
  ∀ n, P5614961364066715553.a n = A383423 (n + 1)

end A383423

/-! ## A383423.P16179545695954406166

`eq[A003842(n), A287772(n+1)]`
-/

namespace A383423.P16179545695954406166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287772 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383423.P16179545695954406166

namespace A383423

/-- `eq[A003842(n), A287772(n+1)]` -/
def P16179545695954406166.Spec : Prop :=
  ∀ n, (P16179545695954406166.a n : ℤ) = A383423 (n + 1)

end A383423

/-! ## A383423.P1187044711564151007

`lt[A383422(n), 1-A003849(n)]`
-/

namespace A383423.P1187044711564151007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383422 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A003849 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383423.P1187044711564151007

namespace A383423

/-- `lt[A383422(n), 1-A003849(n)]` -/
def P1187044711564151007.Spec : Prop :=
  ∀ n, (P1187044711564151007.a n : ℤ) = A383423 (n + 1)

end A383423

/-! ## A383423.P5454730009257942732

`lt[record[or(2*n+1, n+2)²]%3, A005614(n)]`
-/

namespace A383423.P5454730009257942732
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n + 1) (n + 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) % 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A383423.P5454730009257942732

namespace A383423

/-- `lt[record[or(2*n+1, n+2)²]%3, A005614(n)]` -/
def P5454730009257942732.Spec : Prop :=
  ∀ n, (P5454730009257942732.a n : ℤ) = A383423 (n + 1)

end A383423

/-!
# A383424: Indices k such that A003849(k) = 1 and A383422(k) = 1.

The programs for A383424, the canonical program `A383424.P17133997064317184709` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383424 has offset 1).

The definition of A383424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4377 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383424.P17133997064317184709

`∩[A003622(n+1), A383427(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A383424

/-- `∩[A003622(n+1), A383427(n+1)]` -/
def P17133997064317184709.Spec : Prop :=
  ∀ n, (P17133997064317184709.a n : ℤ) = A383424 (n + 1)

theorem P17133997064317184709.correct : P17133997064317184709.Spec := by
  intro n
  simp only [A383424, Nat.add_sub_cancel]

end A383424

/-! ## A383424.P3258473720169825108

`filter[A383427(n+1), A003849(#)]`
-/

namespace A383424.P3258473720169825108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A003849 (f1 j).toNat = 1) n)

end

end A383424.P3258473720169825108

namespace A383424

/-- `filter[A383427(n+1), A003849(#)]` -/
def P3258473720169825108.Spec : Prop :=
  ∀ n, P3258473720169825108.a n = A383424 (n + 1)

end A383424

/-! ## A383424.P10419272586760921974

`eq[A014675(n), A383422(n)]`
-/

namespace A383424.P10419272586760921974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383422 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383424.P10419272586760921974

namespace A383424

/-- `eq[A014675(n), A383422(n)]` -/
def P10419272586760921974.Spec : Prop :=
  ∀ n, (P10419272586760921974.a n : ℤ) = A383424 (n + 1)

end A383424

/-! ## A383424.P11247153767408633716

`lt[A294203(n), A003849(n)]`
-/

namespace A383424.P11247153767408633716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294203 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383424.P11247153767408633716

namespace A383424

/-- `lt[A294203(n), A003849(n)]` -/
def P11247153767408633716.Spec : Prop :=
  ∀ n, (P11247153767408633716.a n : ℤ) = A383424 (n + 1)

end A383424

/-! ## A383424.P14617090476201698770

`filter[A003622(n+1), A383422(#)]`
-/

namespace A383424.P14617090476201698770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383422 (f1 j).toNat = 1) n)

end

end A383424.P14617090476201698770

namespace A383424

/-- `filter[A003622(n+1), A383422(#)]` -/
def P14617090476201698770.Spec : Prop :=
  ∀ n, P14617090476201698770.a n = A383424 (n + 1)

end A383424

/-! ## A383424.P13689269222822733384

`filter[A383427(n+1), A383422(#)]`
-/

namespace A383424.P13689269222822733384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383422 (f1 j).toNat = 1) n)

end

end A383424.P13689269222822733384

namespace A383424

/-- `filter[A383427(n+1), A383422(#)]` -/
def P13689269222822733384.Spec : Prop :=
  ∀ n, P13689269222822733384.a n = A383424 (n + 1)

end A383424

/-! ## A383424.P7067114086803665087

`eq[A050141(n+1), A383422(n)]`
-/

namespace A383424.P7067114086803665087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383422 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383424.P7067114086803665087

namespace A383424

/-- `eq[A050141(n+1), A383422(n)]` -/
def P7067114086803665087.Spec : Prop :=
  ∀ n, (P7067114086803665087.a n : ℤ) = A383424 (n + 1)

end A383424

/-! ## A383424.P18178092708352579606

`eq[A356400(n+1), A383422(n)]`
-/

namespace A383424.P18178092708352579606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383422 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383424.P18178092708352579606

namespace A383424

/-- `eq[A356400(n+1), A383422(n)]` -/
def P18178092708352579606.Spec : Prop :=
  ∀ n, (P18178092708352579606.a n : ℤ) = A383424 (n + 1)

end A383424

/-! ## A383424.P4257548924748327696

`eq[1, A383422(n*A003849(n))]`
-/

namespace A383424.P4257548924748327696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383422 ((n : ℤ) * A003849 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A383424.P4257548924748327696

namespace A383424

/-- `eq[1, A383422(n*A003849(n))]` -/
def P4257548924748327696.Spec : Prop :=
  ∀ n, (P4257548924748327696.a n : ℤ) = A383424 (n + 1)

end A383424

/-! ## A383424.P13800218060426496584

`filter[A187485(2*n+1), A383422(#)]`
-/

namespace A383424.P13800218060426496584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383422 (f1 j).toNat = 1) n)

end

end A383424.P13800218060426496584

namespace A383424

/-- `filter[A187485(2*n+1), A383422(#)]` -/
def P13800218060426496584.Spec : Prop :=
  ∀ n, P13800218060426496584.a n = A383424 (n + 1)

end A383424

/-! ## A383424.P2647687885088184032

`filter[A219636(2*(n+1)), A383422(#)]`
-/

namespace A383424.P2647687885088184032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219636 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383422 (f1 j).toNat = 1) n)

end

end A383424.P2647687885088184032

namespace A383424

/-- `filter[A219636(2*(n+1)), A383422(#)]` -/
def P2647687885088184032.Spec : Prop :=
  ∀ n, P2647687885088184032.a n = A383424 (n + 1)

end A383424

/-!
# A383425: Indices k such that A003849(k) = 0 and A383422(k) = 1.

The programs for A383425, the canonical program `A383425.P7132039530282739650` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383425 has offset 1).

The definition of A383425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3234 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383425.P2405472559970513861

`eq[A003842(n), A383422(n)]`
-/

namespace A383425.P2405472559970513861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383422 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383425.P2405472559970513861

namespace A383425

/-- `eq[A003842(n), A383422(n)]` -/
def P2405472559970513861.Spec : Prop :=
  ∀ n, (P2405472559970513861.a n : ℤ) = A383425 (n + 1)

end A383425

/-! ## A383425.P17506813296716667403

`lt[A294203(n), A005614(n)]`
-/

namespace A383425.P17506813296716667403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294203 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383425.P17506813296716667403

namespace A383425

/-- `lt[A294203(n), A005614(n)]` -/
def P17506813296716667403.Spec : Prop :=
  ∀ n, (P17506813296716667403.a n : ℤ) = A383425 (n + 1)

end A383425

/-! ## A383425.P7132039530282739650

`filter[A022342(n+1), A383422(#)]`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A383425

/-- `filter[A022342(n+1), A383422(#)]` -/
def P7132039530282739650.Spec : Prop :=
  ∀ n, P7132039530282739650.a n = A383425 (n + 1)

theorem P7132039530282739650.correct : P7132039530282739650.Spec := by
  intro n
  simp only [A383425, Nat.add_sub_cancel]

end A383425

/-! ## A383425.P8992064457991244046

`lt[A294203(n), A114986(n+1)]`
-/

namespace A383425.P8992064457991244046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294203 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383425.P8992064457991244046

namespace A383425

/-- `lt[A294203(n), A114986(n+1)]` -/
def P8992064457991244046.Spec : Prop :=
  ∀ n, (P8992064457991244046.a n : ℤ) = A383425 (n + 1)

end A383425

/-! ## A383425.P11236397380359271019

`lt[A026644(A294203(n)), A014675(n)]`
-/

namespace A383425.P11236397380359271019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026644 (A294203 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383425.P11236397380359271019

namespace A383425

/-- `lt[A026644(A294203(n)), A014675(n)]` -/
def P11236397380359271019.Spec : Prop :=
  ∀ n, (P11236397380359271019.a n : ℤ) = A383425 (n + 1)

end A383425

/-! ## A383425.P1820523499966797411

`lt[A003849(n), record[or(2*n+1, n+2)²]%3]`
-/

namespace A383425.P1820523499966797411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n + 1) (n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A383425.P1820523499966797411

namespace A383425

/-- `lt[A003849(n), record[or(2*n+1, n+2)²]%3]` -/
def P1820523499966797411.Spec : Prop :=
  ∀ n, (P1820523499966797411.a n : ℤ) = A383425 (n + 1)

end A383425

/-!
# A383426: Indices k such that A003849(k) = 1 and A383422(k) = 0.

The programs for A383426, the canonical program `A383426.P17980230647925148357` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383426 has offset 1).

The definition of A383426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1526 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383426.P17980230647925148357

`lt[A383422(n), A003849(n)]`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A383426

/-- `lt[A383422(n), A003849(n)]` -/
def P17980230647925148357.Spec : Prop :=
  ∀ n, (P17980230647925148357.a n : ℤ) = A383426 (n + 1)

theorem P17980230647925148357.correct : P17980230647925148357.Spec := by
  intro n
  simp only [A383426, Nat.add_sub_cancel]

end A383426

/-! ## A383426.P3708630396585607177

`lt[A383422(n), log2(A003842(n))]`
-/

namespace A383426.P3708630396585607177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383422 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A003842 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A383426.P3708630396585607177

namespace A383426

/-- `lt[A383422(n), log2(A003842(n))]` -/
def P3708630396585607177.Spec : Prop :=
  ∀ n, (P3708630396585607177.a n : ℤ) = A383426 (n + 1)

end A383426

/-! ## A383426.P17355099621357066164

`eq[A014675(n), A287772(n+1)]`
-/

namespace A383426.P17355099621357066164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287772 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383426.P17355099621357066164

namespace A383426

/-- `eq[A014675(n), A287772(n+1)]` -/
def P17355099621357066164.Spec : Prop :=
  ∀ n, (P17355099621357066164.a n : ℤ) = A383426 (n + 1)

end A383426

/-! ## A383426.P12980929499038362776

`lt[A005614(n), A287772(n+1)]`
-/

namespace A383426.P12980929499038362776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287772 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383426.P12980929499038362776

namespace A383426

/-- `lt[A005614(n), A287772(n+1)]` -/
def P12980929499038362776.Spec : Prop :=
  ∀ n, (P12980929499038362776.a n : ℤ) = A383426 (n + 1)

end A383426

/-! ## A383426.P1901528089175434871

`eq[A050141(n+1), A287772(n+1)]`
-/

namespace A383426.P1901528089175434871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287772 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383426.P1901528089175434871

namespace A383426

/-- `eq[A050141(n+1), A287772(n+1)]` -/
def P1901528089175434871.Spec : Prop :=
  ∀ n, (P1901528089175434871.a n : ℤ) = A383426 (n + 1)

end A383426

/-! ## A383426.P655223792409175633

`eq[A287772(n+1), A356400(n+1)]`
-/

namespace A383426.P655223792409175633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383426.P655223792409175633

namespace A383426

/-- `eq[A287772(n+1), A356400(n+1)]` -/
def P655223792409175633.Spec : Prop :=
  ∀ n, (P655223792409175633.a n : ℤ) = A383426 (n + 1)

end A383426

/-!
# A383427: Indices k such that A003849(k) = A383422(k).

The programs for A383427, the canonical program `A383427.P11284326733180387964` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383427 has offset 1).

The definition of A383427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383427.P13531583657970940599

`∪[A383423(n+1), A383424(n+1)]`
-/

namespace A383427.P13531583657970940599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383427.P13531583657970940599

namespace A383427

/-- `∪[A383423(n+1), A383424(n+1)]` -/
def P13531583657970940599.Spec : Prop :=
  ∀ n, (P13531583657970940599.a n : ℤ) = A383427 (n + 1)

end A383427

/-! ## A383427.P11284326733180387964

`comp[∪[A383425(n+1), A383426(n+1)]]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A383427

/-- `comp[∪[A383425(n+1), A383426(n+1)]]` -/
def P11284326733180387964.Spec : Prop :=
  ∀ n, (P11284326733180387964.a n : ℤ) = A383427 (n + 1)

theorem P11284326733180387964.correct : P11284326733180387964.Spec := by
  intro n
  simp only [A383427, Nat.add_sub_cancel]

end A383427

/-! ## A383427.P6818174342750227545

`eq[A003849(n), A383422(n)]`
-/

namespace A383427.P6818174342750227545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383422 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383427.P6818174342750227545

namespace A383427

/-- `eq[A003849(n), A383422(n)]` -/
def P6818174342750227545.Spec : Prop :=
  ∀ n, (P6818174342750227545.a n : ℤ) = A383427 (n + 1)

end A383427

/-! ## A383427.P18416186888046760134

`eq[A005614(n), A287772(n+1)]`
-/

namespace A383427.P18416186888046760134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287772 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383427.P18416186888046760134

namespace A383427

/-- `eq[A005614(n), A287772(n+1)]` -/
def P18416186888046760134.Spec : Prop :=
  ∀ n, (P18416186888046760134.a n : ℤ) = A383427 (n + 1)

end A383427

/-! ## A383427.P6170752644609393884

`lt[A013609(n), A001316(A005169(n))]`
-/

namespace A383427.P6170752644609393884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A005169 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383427.P6170752644609393884

namespace A383427

/-- `lt[A013609(n), A001316(A005169(n))]` -/
def P6170752644609393884.Spec : Prop :=
  ∀ n, (P6170752644609393884.a n : ℤ) = A383427 (n + 1)

end A383427

/-!
# A383428: Primitive terms in A066192: number k such that k is a term of A066192 and k/2 is not.

The programs for A383428, there is no canonical definition to state claims against.
-/

/-! ## A383428.P800832329850335659

`A053213(A118918(n+1))`
-/

namespace A383428.P800832329850335659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053213 (A118918 (n + 1)).toNat

end

end A383428.P800832329850335659

/-!
# A383429: a(1)=1, and for n>1, a(n) = a(n-1) concatenated with the length of the decimal representation of a(n-1).

The programs for A383429, there is no canonical definition to state claims against.
-/

/-! ## A383429.P7574326569182840851

`A244159(A014143(n)-A014138(n))`
-/

namespace A383429.P7574326569182840851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244159 (A014143 n - A014138 n).toNat

end

end A383429.P7574326569182840851

/-! ## A383429.P7448672915104888830

`A239903(A131428(n+1))`
-/

namespace A383429.P7448672915104888830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239903 (A131428 (n + 1)).toNat

end

end A383429.P7448672915104888830

/-! ## A383429.P16314684836391241027

`∑[A178361(A000984(n))]`
-/

namespace A383429.P16314684836391241027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178361 (A000984 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383429.P16314684836391241027

/-! ## A383429.P15031248665814623189

`A014824(n)+A007623(A000142(n+1))`
-/

namespace A383429.P15031248665814623189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014824 n + A007623 (A000142 (n + 1)).toNat

end

end A383429.P15031248665814623189

/-!
# A383431: a(n) is the denominator of tanh(Sum_{k=1..n-1} artanh(k/n)), where artanh is the inverse hyperbolic tangent function.

The programs for A383431, the canonical program `A383431.P12354164242503902528` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383431 has offset 1).

The definition of A383431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383431.P12354164242503902528

`A051920(2*n+1)/A000034(∏{p}[n+1, #-1])`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A383431

/-- `A051920(2*n+1)/A000034(∏{p}[n+1, #-1])` -/
def P12354164242503902528.Spec : Prop :=
  ∀ n, P12354164242503902528.a n = (A383431 (n + 1) : ℚ)

end A383431

/-! ## A383431.P15598254274615201881

`lcm(2, C(2*n+1, n)+1)/2`
-/

namespace A383431.P15598254274615201881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (Nat.choose (2 * n + 1) n + 1) : ℚ) / 2

end

end A383431.P15598254274615201881

namespace A383431

/-- `lcm(2, C(2*n+1, n)+1)/2` -/
def P15598254274615201881.Spec : Prop :=
  ∀ n, P15598254274615201881.a n = (A383431 (n + 1) : ℚ)

end A383431

/-! ## A383431.P16689791658678982162

`A382257(n+1)+A043529(n)`
-/

namespace A383431.P16689791658678982162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382257 (n + 1) + A043529 n

end

end A383431.P16689791658678982162

namespace A383431

/-- `A382257(n+1)+A043529(n)` -/
def P16689791658678982162.Spec : Prop :=
  ∀ n, P16689791658678982162.a n = A383431 (n + 1)

end A383431

/-! ## A383431.P5777506162288804619

`A382257(n+1)+A071625(A105321(2*n+3))`
-/

namespace A383431.P5777506162288804619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382257 (n + 1) + A071625 (A105321 (2 * n + 3)).toNat

end

end A383431.P5777506162288804619

namespace A383431

/-- `A382257(n+1)+A071625(A105321(2*n+3))` -/
def P5777506162288804619.Spec : Prop :=
  ∀ n, P5777506162288804619.a n = A383431 (n + 1)

end A383431

/-!
# A383434: Number of king permutations on n elements avoiding the mesh pattern (12, {(0,2),(1,0),(1,1),(2,0),(2,1)}).

The programs for A383434, there is no canonical definition to state claims against.
-/

/-! ## A383434.P8699470880015035694

`A382645(C(n, A286582(n+5)))`
-/

namespace A383434.P8699470880015035694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382645 (Nat.choose n (A286582 (n + 5)).toNat)

end

end A383434.P8699470880015035694

/-! ## A383434.P11162896671242603554

`A382651(n)-A121373(4*(3^n-2^n)+3)`
-/

namespace A383434.P11162896671242603554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382651 n - A121373 (4 * ((3 ^ n : ℤ) - (2 ^ n : ℤ)) + 3).toNat

end

end A383434.P11162896671242603554

/-! ## A383434.P3150718540722888794

`A382645(n)+A000007(A000166(n))`
-/

namespace A383434.P3150718540722888794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382645 n + A000007 (A000166 n).toNat

end

end A383434.P3150718540722888794

/-! ## A383434.P585739722455847353

`A382651(n)+A049084(A000984(n))`
-/

namespace A383434.P585739722455847353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382651 n + A049084 (A000984 n).toNat

end

end A383434.P585739722455847353

/-!
# A383436: a(1) = 1; a(n) = 2 + n * Sum_{k=1..n-1} a(k).

The programs for A383436, the canonical program `A383436.P18293518426457744560` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383436 has offset 1).

The definition of A383436 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383436.P18293518426457744560

`(n+3)*a(n-1)-n*a(n-2)` with `a(0)=1, a(1)=4, a(2)=17`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383436

/-- `(n+3)*a(n-1)-n*a(n-2)` -/
def P18293518426457744560.Spec : Prop :=
  ∀ n, P18293518426457744560.a n = A383436 (n + 1)

theorem P18293518426457744560.correct : P18293518426457744560.Spec := by
  intro n
  simp only [A383436, Nat.add_sub_cancel]

end A383436

/-! ## A383436.P796495311426353109

`((n+1)²*a(n-1)-2)/n` with `a(0)=1, a(1)=4`
-/

namespace A383436.P796495311426353109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  (((n + 1) ^ 2 : ℚ) * a (n - 1) - 2) / (n : ℚ)

end

end A383436.P796495311426353109

namespace A383436

/-- `((n+1)²*a(n-1)-2)/n` -/
def P796495311426353109.Spec : Prop :=
  ∀ n, P796495311426353109.a n = (A383436 (n + 1) : ℚ)

end A383436

/-! ## A383436.P4171984157805680589

`abs(Δ[(a(n-1)-2)*(ϕ²-(ϕ-n))])` with `a(0)=0, a(1)=1`
-/

namespace A383436.P4171984157805680589
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (f1 (n - 1) - 2) * (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A383436.P4171984157805680589

namespace A383436

/-- `abs(Δ[(a(n-1)-2)*(ϕ²-(ϕ-n))])` -/
def P4171984157805680589.Spec : Prop :=
  ∀ n, P4171984157805680589.a n = (A383436 (n + 1) : ℝ)

end A383436

/-! ## A383436.P13882241128197357636

`A007808(n+1)+A007808(n+1)-A074143(n+1)`
-/

namespace A383436.P13882241128197357636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007808 (n + 1) + (A007808 (n + 1) - A074143 (n + 1))

end

end A383436.P13882241128197357636

namespace A383436

/-- `A007808(n+1)+A007808(n+1)-A074143(n+1)` -/
def P13882241128197357636.Spec : Prop :=
  ∀ n, P13882241128197357636.a n = A383436 (n + 1)

end A383436

/-! ## A383436.P3132981815229038305

`A074143(n+1)+A074143(n+1)-A082427(n+1)`
-/

namespace A383436.P3132981815229038305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074143 (n + 1) + (A074143 (n + 1) - A082427 (n + 1))

end

end A383436.P3132981815229038305

namespace A383436

/-- `A074143(n+1)+A074143(n+1)-A082427(n+1)` -/
def P3132981815229038305.Spec : Prop :=
  ∀ n, P3132981815229038305.a n = A383436 (n + 1)

end A383436

/-!
# A383437: a(1) = 1; a(n) = 5 + n * Sum_{k=1..n-1} a(k).

The programs for A383437, the canonical program `A383437.P13203128361434579031` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383437 has offset 1).

The definition of A383437 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383437.P13203128361434579031

`(n+3)*a(n-1)-n*a(n-2)` with `a(0)=1, a(1)=7, a(2)=29`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383437

/-- `(n+3)*a(n-1)-n*a(n-2)` -/
def P13203128361434579031.Spec : Prop :=
  ∀ n, P13203128361434579031.a n = A383437 (n + 1)

theorem P13203128361434579031.correct : P13203128361434579031.Spec := by
  intro n
  simp only [A383437, Nat.add_sub_cancel]

end A383437

/-! ## A383437.P13678364956373896781

`((n+1)²*a(n-1)-5)/n` with `a(0)=1, a(1)=7`
-/

namespace A383437.P13678364956373896781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 7] fun n a =>
  (((n + 1) ^ 2 : ℚ) * a (n - 1) - 5) / (n : ℚ)

end

end A383437.P13678364956373896781

namespace A383437

/-- `((n+1)²*a(n-1)-5)/n` -/
def P13678364956373896781.Spec : Prop :=
  ∀ n, P13678364956373896781.a n = (A383437 (n + 1) : ℚ)

end A383437

/-!
# A383438: a(n) = Sum_{k=1..n} Product_{p|k, p prime} k/p.

The programs for A383438, the canonical program `A383438.P14593775883819678079` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383438 has offset 1).

The definition of A383438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383438.P14593775883819678079

`∑[∏{p}[n+1, ceil(n/#)]]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383438

/-- `∑[∏{p}[n+1, ceil(n/#)]]` -/
def P14593775883819678079.Spec : Prop :=
  ∀ n, P14593775883819678079.a n = A383438 (n + 1)

theorem P14593775883819678079.correct : P14593775883819678079.Spec := by
  intro n
  simp only [A383438, Nat.add_sub_cancel]

end A383438

/-! ## A383438.P9977668720650631989

`∑[floor(∏{p}[n+1, (n+1)/#])]`
-/

namespace A383438.P9977668720650631989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383438.P9977668720650631989

namespace A383438

/-- `∑[floor(∏{p}[n+1, (n+1)/#])]` -/
def P9977668720650631989.Spec : Prop :=
  ∀ n, P9977668720650631989.a n = A383438 (n + 1)

end A383438

/-! ## A383438.P11460723200381933999

`∑[round(∏{p}[n+1, (n+1)/#])]`
-/

namespace A383438.P11460723200381933999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383438.P11460723200381933999

namespace A383438

/-- `∑[round(∏{p}[n+1, (n+1)/#])]` -/
def P11460723200381933999.Spec : Prop :=
  ∀ n, P11460723200381933999.a n = A383438 (n + 1)

end A383438

/-! ## A383438.P14341274407837520078

`∑[1/∏{p}[n+1, #/(n+1)]]`
-/

namespace A383438.P14341274407837520078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (∏ p ∈ Nat.primeFactors (f2 n), (p : ℚ) / (n + 1 : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383438.P14341274407837520078

namespace A383438

/-- `∑[1/∏{p}[n+1, #/(n+1)]]` -/
def P14341274407837520078.Spec : Prop :=
  ∀ n, P14341274407837520078.a n = (A383438 (n + 1) : ℚ)

end A383438

/-! ## A383438.P5273039578335675002

`∏{p}[n+1, ceil(n/#)]+a(n-1)` with `a(0)=1`
-/

namespace A383438.P5273039578335675002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉ + a (n - 1)

end

end A383438.P5273039578335675002

namespace A383438

/-- `∏{p}[n+1, ceil(n/#)]+a(n-1)` -/
def P5273039578335675002.Spec : Prop :=
  ∀ n, P5273039578335675002.a n = A383438 (n + 1)

end A383438

/-! ## A383438.P13023714866570432991

`∑[A205959(n+1)]`
-/

namespace A383438.P13023714866570432991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383438.P13023714866570432991

namespace A383438

/-- `∑[A205959(n+1)]` -/
def P13023714866570432991.Spec : Prop :=
  ∀ n, P13023714866570432991.a n = A383438 (n + 1)

end A383438

/-! ## A383438.P17164052061475932605

`∑[ratio[A205957(n)]]`
-/

namespace A383438.P17164052061475932605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205957 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383438.P17164052061475932605

namespace A383438

/-- `∑[ratio[A205957(n)]]` -/
def P17164052061475932605.Spec : Prop :=
  ∀ n, P17164052061475932605.a n = (A383438 (n + 1) : ℚ)

end A383438

/-!
# A383439: a(n) = (5*n)!/((n!)^2*(3*n + 1)!).

The programs for A383439, there is no canonical definition to state claims against.
-/

/-! ## A383439.P2425551340493219938

`A104978(∑[4*n])`
-/

namespace A383439.P2425551340493219938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104978 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383439.P2425551340493219938

/-! ## A383439.P9829021012109263130

`C(5*n, n)*A002293(n)`
-/

namespace A383439.P9829021012109263130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (5 * n) n : ℤ) * A002293 n

end

end A383439.P9829021012109263130

/-! ## A383439.P8599474736859706996

`C(5*n, n)*A124753(3*n)`
-/

namespace A383439.P8599474736859706996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (5 * n) n : ℤ) * A124753 (3 * n)

end

end A383439.P8599474736859706996

/-! ## A383439.P8777917616948311419

`A001449(n)*A002293(n)`
-/

namespace A383439.P8777917616948311419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001449 n * A002293 n

end

end A383439.P8777917616948311419

/-! ## A383439.P246916616419050944

`A001449(n)*A188108(A133263(n))`
-/

namespace A383439.P246916616419050944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001449 n * A188108 (A133263 n).toNat

end

end A383439.P246916616419050944

/-!
# A383440: a(n) = (5*n + 3)!/((8*n^2 + 10*n + 3)*(n!)^2*(3*n + 2)!).

The programs for A383440, there is no canonical definition to state claims against.
-/

/-! ## A383440.P1076094009946410188

`A243660((n+1)²+n²)`
-/

namespace A383440.P1076094009946410188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243660 ((n + 1) ^ 2 + n ^ 2)

end

end A383440.P1076094009946410188

/-! ## A383440.P7372584285772220157

`gcd(floor(1/(n+1)), A243660(A001844(n)))`
-/

namespace A383440.P7372584285772220157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A243660 (A001844 n).toNat)

end

end A383440.P7372584285772220157

/-!
# A383442: a(0) = 0; thereafter a(n) is the least integer (in absolute value) not yet in the sequence such that the absolute difference between a(n-1) and a(n) is a triangular number; in case of a tie, preference is given to the positive value.

The programs for A383442, there is no canonical definition to state claims against.
-/

/-! ## A383442.P14394946309707851726

`∑[A383443(n)]-A383443(n)`
-/

namespace A383442.P14394946309707851726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A383443 n

end

end A383442.P14394946309707851726

/-! ## A383442.P10851493793246013643

`Δ[A383688(n)]-A383443(n)`
-/

namespace A383442.P10851493793246013643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A383443 n

end

end A383442.P10851493793246013643

/-! ## A383442.P13779711791656302245

`A383688(n+1)-(A383688(n)+A383443(n))`
-/

namespace A383442.P13779711791656302245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383688 (n + 1) - (A383688 n + A383443 n)

end

end A383442.P13779711791656302245

/-!
# A383443: First differences of A383442.

The programs for A383443, there is no canonical definition to state claims against.
-/

/-! ## A383443.P2177025200054895085

`Δ[A383442(n)]`
-/

namespace A383443.P2177025200054895085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A383443.P2177025200054895085

/-! ## A383443.P2385249200360535053

`A383442(n+1)-A383442(n)`
-/

namespace A383443.P2385249200360535053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383442 (n + 1) - A383442 n

end

end A383443.P2385249200360535053

/-!
# A383444: First differences of A377090.

The programs for A383444, there is no canonical definition to state claims against.
-/

/-! ## A383444.P11149149719454936569

`Δ[A377090(n)]`
-/

namespace A383444.P11149149719454936569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A383444.P11149149719454936569

/-! ## A383444.P1230955796671724031

`A377090(n+1)-A377090(n)`
-/

namespace A383444.P1230955796671724031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377090 (n + 1) - A377090 n

end

end A383444.P1230955796671724031

/-!
# A383447: Number of "peerless" trees on n nodes.

The programs for A383447, there is no canonical definition to state claims against.
-/

/-! ## A383447.P773540119301780831

`A368279(n)-A284524(A168596(n))`
-/

namespace A383447.P773540119301780831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368279 n - A284524 (A168596 n).toNat

end

end A383447.P773540119301780831

/-! ## A383447.P14061494733905168973

`A368279(n)-A284524(A374732(n+1))`
-/

namespace A383447.P14061494733905168973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368279 n - A284524 (A374732 (n + 1)).toNat

end

end A383447.P14061494733905168973

/-! ## A383447.P4510234250666646487

`A165920(n+1)-A102683(A000045(2*(n+1)))`
-/

namespace A383447.P4510234250666646487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165920 (n + 1) - A102683 (A000045 (2 * (n + 1))).toNat

end

end A383447.P4510234250666646487

/-!
# A383448: Irregular triangle read by rows: T(n,k) (n>=1, k>=0) is the number of trees with n nodes in which there are k edges whose end-vertices have the same degree.

The programs for A383448, there is no canonical definition to state claims against.
-/

/-! ## A383448.P15503003295377283149

`A229312(∑[n-3]+9)%A058071(n+3)`
-/

namespace A383448.P15503003295377283149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229312 (∑ j ∈ Finset.range (n + 1), f1 j + 9).toNat) (A058071 (n + 3))

end

end A383448.P15503003295377283149

/-! ## A383448.P6227809740052271553

`A108731(A245815(n+1)+A014417(n))`
-/

namespace A383448.P6227809740052271553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108731 (A245815 (n + 1) + A014417 n).toNat

end

end A383448.P6227809740052271553

/-! ## A383448.P17443031817114917727

`A080545(A286115(n)+1)+A034374(n+1)`
-/

namespace A383448.P17443031817114917727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (A286115 n + 1).toNat + A034374 (n + 1)

end

end A383448.P17443031817114917727

/-! ## A383448.P15119845160012921219

`A250205(A259691(2*(n+2))+A259691(n))`
-/

namespace A383448.P15119845160012921219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250205 (A259691 (2 * (n + 2)) + A259691 n).toNat

end

end A383448.P15119845160012921219

/-! ## A383448.P13701758266181712117

`A065120(A269742(2*n+3))-A010060(n)`
-/

namespace A383448.P13701758266181712117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A269742 (2 * n + 3)).toNat - A010060 n

end

end A383448.P13701758266181712117

/-!
# A383450: 2nd diagonal (from right) in A104978.

The programs for A383450, the canonical program `A383450.P16092379635389378674` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383450 has offset 0).

The definition of A383450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383450.P16092379635389378674

`(3*n+4)!/(2*n!*(3+2*n)!)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383450

/-- `(3*n+4)!/(2*n!*(3+2*n)!)` -/
def P16092379635389378674.Spec : Prop :=
  ∀ n, P16092379635389378674.a n = (A383450 n : ℚ)

end A383450

/-! ## A383450.P676192323936442868

`(n+2)*A236194(n+1)`
-/

namespace A383450.P676192323936442868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A236194 (n + 1)

end

end A383450.P676192323936442868

namespace A383450

/-- `(n+2)*A236194(n+1)` -/
def P676192323936442868.Spec : Prop :=
  ∀ n, P676192323936442868.a n = A383450 n

end A383450

/-! ## A383450.P10184938276221419968

`A090816(n+1)-A090763(n+1)`
-/

namespace A383450.P10184938276221419968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090816 (n + 1) - A090763 (n + 1)

end

end A383450.P10184938276221419968

namespace A383450

/-- `A090816(n+1)-A090763(n+1)` -/
def P10184938276221419968.Spec : Prop :=
  ∀ n, P10184938276221419968.a n = A383450 n

end A383450

/-! ## A383450.P7820638762958994223

`(n+2)*C(2*(n+2)+n, n)`
-/

namespace A383450.P7820638762958994223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.choose (2 * (n + 2) + n) n

end

end A383450.P7820638762958994223

namespace A383450

/-- `(n+2)*C(2*(n+2)+n, n)` -/
def P7820638762958994223.Spec : Prop :=
  ∀ n, (P7820638762958994223.a n : ℤ) = A383450 n

end A383450

/-! ## A383450.P10668958559101084168

`A104978(∑[n+3])`
-/

namespace A383450.P10668958559101084168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104978 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383450.P10668958559101084168

namespace A383450

/-- `A104978(∑[n+3])` -/
def P10668958559101084168.Spec : Prop :=
  ∀ n, P10668958559101084168.a n = A383450 n

end A383450

/-! ## A383450.P9505605789866857733

`A091958(A001651((n+1)*(n+2)))`
-/

namespace A383450.P9505605789866857733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091958 (A001651 ((n + 1) * (n + 2))).toNat

end

end A383450.P9505605789866857733

namespace A383450

/-- `A091958(A001651((n+1)*(n+2)))` -/
def P9505605789866857733.Spec : Prop :=
  ∀ n, P9505605789866857733.a n = A383450 n

end A383450

/-! ## A383450.P595385926463094656

`A073187(∑[3*(n+1)])`
-/

namespace A383450.P595385926463094656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073187 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383450.P595385926463094656

namespace A383450

/-- `A073187(∑[3*(n+1)])` -/
def P595385926463094656.Spec : Prop :=
  ∀ n, P595385926463094656.a n = A383450 n

end A383450

/-!
# A383451: 3rd diagonal (from right) in A104978.

The programs for A383451, the canonical program `A383451.P5284204674195403316` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383451 has offset 0).

The definition of A383451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383451.P10103869970876962200

`(n+1)/2*A090763(n+1)`
-/

namespace A383451.P10103869970876962200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A090763 (n + 1) : ℚ)

end

end A383451.P10103869970876962200

namespace A383451

/-- `(n+1)/2*A090763(n+1)` -/
def P10103869970876962200.Spec : Prop :=
  ∀ n, P10103869970876962200.a n = (A383451 n : ℚ)

end A383451

/-! ## A383451.P5284204674195403316

`A000217(n+1)*A025174(n+2)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A383451

/-- `A000217(n+1)*A025174(n+2)` -/
def P5284204674195403316.Spec : Prop :=
  ∀ n, P5284204674195403316.a n = A383451 n

theorem P5284204674195403316.correct : P5284204674195403316.Spec := by
  intro n
  simp only [A383451]

end A383451

/-! ## A383451.P788703471371352216

`A104978(A155212(n)+4)`
-/

namespace A383451.P788703471371352216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104978 (A155212 n + 4).toNat

end

end A383451.P788703471371352216

namespace A383451

/-- `A104978(A155212(n)+4)` -/
def P788703471371352216.Spec : Prop :=
  ∀ n, P788703471371352216.a n = A383451 n

end A383451

/-! ## A383451.P14551466913200785676

`A104978(A056000(n)+6)`
-/

namespace A383451.P14551466913200785676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104978 (A056000 n + 6).toNat

end

end A383451.P14551466913200785676

namespace A383451

/-- `A104978(A056000(n)+6)` -/
def P14551466913200785676.Spec : Prop :=
  ∀ n, P14551466913200785676.a n = A383451 n

end A383451

/-! ## A383451.P5234152461284899337

`A073187(A115067(n+2))`
-/

namespace A383451.P5234152461284899337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073187 (A115067 (n + 2)).toNat

end

end A383451.P5234152461284899337

namespace A383451

/-- `A073187(A115067(n+2))` -/
def P5234152461284899337.Spec : Prop :=
  ∀ n, P5234152461284899337.a n = A383451 n

end A383451

/-!
# A383452: Column 3 in A104978.

The programs for A383452, there is no canonical definition to state claims against.
-/

/-! ## A383452.P13635098214211406109

`A108429(A348338(n))`
-/

namespace A383452.P13635098214211406109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108429 (A348338 n).toNat

end

end A383452.P13635098214211406109

/-!
# A383453: The Geode Bi-Tri infinite rectangular array, read by upward antidiagonals.

The programs for A383453, there is no canonical definition to state claims against.
-/

/-! ## A383453.P17218026842796225499

`A243660(∑[char[∑[n]]]²-n)`
-/

namespace A383453.P17218026842796225499
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243660 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A383453.P17218026842796225499

/-!
# A383454: Row 1 of the array in A383453.

The programs for A383454, there is no canonical definition to state claims against.
-/

/-! ## A383454.P15015331260391050156

`ogf(2/(1-8x+9x^2+4x^3+5x^4))`
-/

namespace A383454.P15015331260391050156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -8, 9, 4, 5] n

end

end A383454.P15015331260391050156

/-!
# A383455: Row 2 of the array in A383453.

The programs for A383455, there is no canonical definition to state claims against.
-/

/-! ## A383455.P16233393855867703225

`A383453(∑[n+3])`
-/

namespace A383455.P16233393855867703225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383453 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383455.P16233393855867703225

/-!
# A383456: a(n) = 2*binomial(2*n+4,n)*(n+3)/(n+2).

The programs for A383456, the canonical program `A383456.P17191460844707071880` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383456 has offset 0).

The definition of A383456 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383456.P17191460844707071880

`2*C(2*n+4, n)*(n+3)/(n+2)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383456

/-- `2*C(2*n+4, n)*(n+3)/(n+2)` -/
def P17191460844707071880.Spec : Prop :=
  ∀ n, P17191460844707071880.a n = (A383456 n : ℚ)

end A383456

/-! ## A383456.P11716198456630283490

`(n+3)*A002057(n)`
-/

namespace A383456.P11716198456630283490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A002057 n

end

end A383456.P11716198456630283490

namespace A383456

/-- `(n+3)*A002057(n)` -/
def P11716198456630283490.Spec : Prop :=
  ∀ n, P11716198456630283490.a n = A383456 n

end A383456

/-! ## A383456.P7003358202167848211

`(n+3)*A099376(n+1)`
-/

namespace A383456.P7003358202167848211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A099376 (n + 1)

end

end A383456.P7003358202167848211

namespace A383456

/-- `(n+3)*A099376(n+1)` -/
def P7003358202167848211.Spec : Prop :=
  ∀ n, P7003358202167848211.a n = A383456 n

end A383456

/-! ## A383456.P1695668777851622525

`A006659(n+1)+A002057(n)`
-/

namespace A383456.P1695668777851622525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006659 (n + 1) + A002057 n

end

end A383456.P1695668777851622525

namespace A383456

/-- `A006659(n+1)+A002057(n)` -/
def P1695668777851622525.Spec : Prop :=
  ∀ n, P1695668777851622525.a n = A383456 n

end A383456

/-! ## A383456.P5633998707090085634

`A120989(n+1)+A003516(n+2)`
-/

namespace A383456.P5633998707090085634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120989 (n + 1) + A003516 (n + 2)

end

end A383456.P5633998707090085634

namespace A383456

/-- `A120989(n+1)+A003516(n+2)` -/
def P5633998707090085634.Spec : Prop :=
  ∀ n, P5633998707090085634.a n = A383456 n

end A383456

/-! ## A383456.P4107384766532556778

`A265610(n+2)+A002054(n+1)`
-/

namespace A383456.P4107384766532556778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265610 (n + 2) + A002054 (n + 1)

end

end A383456.P4107384766532556778

namespace A383456

/-- `A265610(n+2)+A002054(n+1)` -/
def P4107384766532556778.Spec : Prop :=
  ∀ n, P4107384766532556778.a n = A383456 n

end A383456

/-! ## A383456.P14748251761161588564

`A007946(n+1)-A000984(n+2)`
-/

namespace A383456.P14748251761161588564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007946 (n + 1) - A000984 (n + 2)

end

end A383456.P14748251761161588564

namespace A383456

/-- `A007946(n+1)-A000984(n+2)` -/
def P14748251761161588564.Spec : Prop :=
  ∀ n, P14748251761161588564.a n = A383456 n

end A383456

/-! ## A383456.P8270497855783130281

`A262768(n+2)-A001791(n+1)`
-/

namespace A383456.P8270497855783130281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262768 (n + 2) - A001791 (n + 1)

end

end A383456.P8270497855783130281

namespace A383456

/-- `A262768(n+2)-A001791(n+1)` -/
def P8270497855783130281.Spec : Prop :=
  ∀ n, P8270497855783130281.a n = A383456 n

end A383456

/-! ## A383456.P4812031724947347481

`A002054(n+2)-A000108(n+2)`
-/

namespace A383456.P4812031724947347481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 2) - A000108 (n + 2)

end

end A383456.P4812031724947347481

namespace A383456

/-- `A002054(n+2)-A000108(n+2)` -/
def P4812031724947347481.Spec : Prop :=
  ∀ n, P4812031724947347481.a n = A383456 n

end A383456

/-! ## A383456.P6794196509916930205

`A246434(n+3)+A071724(n+2)`
-/

namespace A383456.P6794196509916930205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246434 (n + 3) + A071724 (n + 2)

end

end A383456.P6794196509916930205

namespace A383456

/-- `A246434(n+3)+A071724(n+2)` -/
def P6794196509916930205.Spec : Prop :=
  ∀ n, P6794196509916930205.a n = A383456 n

end A383456

/-! ## A383456.P4279428272411792094

`A078820(n)-(A001791(n+1)+A001791(n+1))`
-/

namespace A383456.P4279428272411792094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078820 n - (A001791 (n + 1) + A001791 (n + 1))

end

end A383456.P4279428272411792094

namespace A383456

/-- `A078820(n)-(A001791(n+1)+A001791(n+1))` -/
def P4279428272411792094.Spec : Prop :=
  ∀ n, P4279428272411792094.a n = A383456 n

end A383456

/-! ## A383456.P8850415547620595730

`A002694(n+2)+A002694(n+2)+A002057(n)`
-/

namespace A383456.P8850415547620595730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002694 (n + 2) + (A002694 (n + 2) + A002057 n)

end

end A383456.P8850415547620595730

namespace A383456

/-- `A002694(n+2)+A002694(n+2)+A002057(n)` -/
def P8850415547620595730.Spec : Prop :=
  ∀ n, P8850415547620595730.a n = A383456 n

end A383456

/-! ## A383456.P5546800336253700577

`A002054(n+1)+A002694(n+2)+A002054(n+1)`
-/

namespace A383456.P5546800336253700577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 1) + (A002694 (n + 2) + A002054 (n + 1))

end

end A383456.P5546800336253700577

namespace A383456

/-- `A002054(n+1)+A002694(n+2)+A002054(n+1)` -/
def P5546800336253700577.Spec : Prop :=
  ∀ n, P5546800336253700577.a n = A383456 n

end A383456

/-! ## A383456.P465864252683397072

`A002054(n+1)+A002054(n+2)-A001700(n+1)`
-/

namespace A383456.P465864252683397072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 1) + (A002054 (n + 2) - A001700 (n + 1))

end

end A383456.P465864252683397072

namespace A383456

/-- `A002054(n+1)+A002054(n+2)-A001700(n+1)` -/
def P465864252683397072.Spec : Prop :=
  ∀ n, P465864252683397072.a n = A383456 n

end A383456

/-!
# A383457: Column 2 of the array in A383453.

The programs for A383457, there is no canonical definition to state claims against.
-/

/-! ## A383457.P2946588774483769746

`A243660(A141214(n)+1)`
-/

namespace A383457.P2946588774483769746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243660 (A141214 n + 1).toNat

end

end A383457.P2946588774483769746

/-! ## A383457.P4291268507415485990

`A243660(A034856(n+2))`
-/

namespace A383457.P4291268507415485990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243660 (A034856 (n + 2)).toNat

end

end A383457.P4291268507415485990

/-! ## A383457.P10483608580555390977

`A243660(A000096(n+2)-1)`
-/

namespace A383457.P10483608580555390977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243660 (A000096 (n + 2) - 1).toNat

end

end A383457.P10483608580555390977

/-! ## A383457.P4811168828199556866

`A243660(A101881(2*(n+1)))`
-/

namespace A383457.P4811168828199556866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243660 (A101881 (2 * (n + 1))).toNat

end

end A383457.P4811168828199556866

/-!
# A383458: Maximum number of cycles in any permutation in S_n of the highest order (A000793(n)).

The programs for A383458, there is no canonical definition to state claims against.
-/

/-! ## A383458.P17485000812606696300

`A383459((n+1)*A074064(n+1))`
-/

namespace A383458.P17485000812606696300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383459 ((n + 1 : ℤ) * A074064 (n + 1)).toNat

end

end A383458.P17485000812606696300

/-!
# A383459: Minimum number of cycles in any permutation in S_n of the highest order (A000793(n)).

The programs for A383459, there is no canonical definition to state claims against.
-/

/-! ## A383459.P12610755928376219504

`A124767(A265466(n+1)+or(n, floor(n/2)))`
-/

namespace A383459.P12610755928376219504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A265466 (n + 1) + Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A383459.P12610755928376219504

/-! ## A383459.P13020629896100899104

`A055642(C(A083044(n), A012265(n)))`
-/

namespace A383459.P13020629896100899104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Nat.choose (A083044 n).toNat (A012265 n).toNat)

end

end A383459.P13020629896100899104

/-! ## A383459.P4487049553537159174

`A103921(A239330(n+1)+A049891(n+1))`
-/

namespace A383459.P4487049553537159174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (A239330 (n + 1) + A049891 (n + 1)).toNat

end

end A383459.P4487049553537159174

/-!
# A383461: Number of vertices in graph G_n formed by taking a regular n-gon with all its chords extended to infinity (the n-th graph in A344857) and inverting it in its circumscribing circle.

The programs for A383461, there is no canonical definition to state claims against.
-/

/-! ## A383461.P12674934062967745638

`A146212(n+3)+(n+3)%2`
-/

namespace A383461.P12674934062967745638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146212 (n + 3) + (((n + 3) % 2 : ℕ) : ℤ)

end

end A383461.P12674934062967745638

/-! ## A383461.P10642533761870987714

`A146212(n+3)+char[2*n]`
-/

namespace A383461.P10642533761870987714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146212 (n + 3) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A383461.P10642533761870987714

/-! ## A383461.P8517881317671387180

`A374134(n+1)+A146212(n+3)`
-/

namespace A383461.P8517881317671387180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374134 (n + 1) + A146212 (n + 3)

end

end A383461.P8517881317671387180

/-!
# A383464: a(n) = 8*n^2 - 5*n + 1.

The programs for A383464, the canonical program `A383464.P11239286275469596508` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383464 has offset 0).

The definition of A383464 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n²-5*n+1` (program `A383464.P11239286275469596508`, by `A383464.P11239286275469596508.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383464.P11239286275469596508

`8*n²-5*n+1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383464

/-- `8*n²-5*n+1` -/
def P11239286275469596508.Spec : Prop :=
  ∀ n, P11239286275469596508.a n = A383464 n

theorem P11239286275469596508.correct : P11239286275469596508.Spec := by
  intro n
  simp only [A383464]

end A383464

/-! ## A383464.P4883580028941807670

`∑[a(n-1)+16]` with `a(0)=1, a(1)=3`
-/

namespace A383464.P4883580028941807670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383464.P4883580028941807670

namespace A383464

/-- `∑[a(n-1)+16]` -/
def P4883580028941807670.Spec : Prop :=
  ∀ n, (P4883580028941807670.a n : ℤ) = A383464 n

end A383464

/-! ## A383464.P6110887705321070445

`abs(n-A080856(n))`
-/

namespace A383464.P6110887705321070445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A080856 n|

end

end A383464.P6110887705321070445

namespace A383464

/-- `abs(n-A080856(n))` -/
def P6110887705321070445.Spec : Prop :=
  ∀ n, P6110887705321070445.a n = A383464 n

end A383464

/-! ## A383464.P4425668768397691419

`abs(A085250(n)-n+1)`
-/

namespace A383464.P4425668768397691419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A085250 n - (n : ℤ) + 1|

end

end A383464.P4425668768397691419

namespace A383464

/-- `abs(A085250(n)-n+1)` -/
def P4425668768397691419.Spec : Prop :=
  ∀ n, P4425668768397691419.a n = A383464 n

end A383464

/-! ## A383464.P6828946366140926983

`A213399(A004273(n))`
-/

namespace A383464.P6828946366140926983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213399 (A004273 n).toNat

end

end A383464.P6828946366140926983

namespace A383464

/-- `A213399(A004273(n))` -/
def P6828946366140926983.Spec : Prop :=
  ∀ n, P6828946366140926983.a n = A383464 n

end A383464

/-! ## A383464.P655038308706670112

`A213399(A131055(2*n+1)-1)`
-/

namespace A383464.P655038308706670112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213399 (A131055 (2 * n + 1) - 1).toNat

end

end A383464.P655038308706670112

namespace A383464

/-- `A213399(A131055(2*n+1)-1)` -/
def P655038308706670112.Spec : Prop :=
  ∀ n, P655038308706670112.a n = A383464 n

end A383464

/-! ## A383464.P12428551706775895713

`A000027(A033567(n)+n)`
-/

namespace A383464.P12428551706775895713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A033567 n + (n : ℤ)).toNat

end

end A383464.P12428551706775895713

namespace A383464

/-- `A000027(A033567(n)+n)` -/
def P12428551706775895713.Spec : Prop :=
  ∀ n, P12428551706775895713.a n = A383464 n

end A383464

/-! ## A383464.P11003299220943384759

`A000027(A080856(n)-n)`
-/

namespace A383464.P11003299220943384759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A080856 n - (n : ℤ)).toNat

end

end A383464.P11003299220943384759

namespace A383464

/-- `A000027(A080856(n)-n)` -/
def P11003299220943384759.Spec : Prop :=
  ∀ n, P11003299220943384759.a n = A383464 n

end A383464

/-! ## A383464.P15816040228494269400

`A000027(A051870(n)+A000027(2*n+1))`
-/

namespace A383464.P15816040228494269400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A051870 n + A000027 (2 * n + 1)).toNat

end

end A383464.P15816040228494269400

namespace A383464

/-- `A000027(A051870(n)+A000027(2*n+1))` -/
def P15816040228494269400.Spec : Prop :=
  ∀ n, P15816040228494269400.a n = A383464 n

end A383464

/-! ## A383464.P11109143923041035390

`∑[A274602(∑[n+3])]`
-/

namespace A383464.P11109143923041035390
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274602 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383464.P11109143923041035390

namespace A383464

/-- `∑[A274602(∑[n+3])]` -/
def P11109143923041035390.Spec : Prop :=
  ∀ n, P11109143923041035390.a n = A383464 n

end A383464

/-!
# A383465: a(n) = 25*n^2/2 - 11*n/2 + 1.

The programs for A383465, the canonical program `A383465.P16665089904642577621` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383465 has offset 0).

The definition of A383465 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383465.P16665089904642577621

`25*n²/2-11*n/2+1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383465

/-- `25*n²/2-11*n/2+1` -/
def P16665089904642577621.Spec : Prop :=
  ∀ n, P16665089904642577621.a n = (A383465 n : ℚ)

end A383465

/-! ## A383465.P9777438287194481485

`∑[a(n-1)+25]` with `a(0)=1, a(1)=7`
-/

namespace A383465.P9777438287194481485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 1) + 25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383465.P9777438287194481485

namespace A383465

/-- `∑[a(n-1)+25]` -/
def P9777438287194481485.Spec : Prop :=
  ∀ n, (P9777438287194481485.a n : ℤ) = A383465 n

end A383465

/-! ## A383465.P16230146847469419721

`A000027(A051873(n)+A003215(n))`
-/

namespace A383465.P16230146847469419721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A051873 n + A003215 n).toNat

end

end A383465.P16230146847469419721

namespace A383465

/-- `A000027(A051873(n)+A003215(n))` -/
def P16230146847469419721.Spec : Prop :=
  ∀ n, P16230146847469419721.a n = A383465 n

end A383465

/-! ## A383465.P15645977857866363075

`A000027(A152746(n)+A000124(n))`
-/

namespace A383465.P15645977857866363075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A152746 n + A000124 n).toNat

end

end A383465.P15645977857866363075

namespace A383465

/-- `A000027(A152746(n)+A000124(n))` -/
def P15645977857866363075.Spec : Prop :=
  ∀ n, P15645977857866363075.a n = A383465 n

end A383465

/-! ## A383465.P15114312885280024657

`A000027(A002061(3*n)+A001106(n))`
-/

namespace A383465.P15114312885280024657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A002061 (3 * n) + A001106 n).toNat

end

end A383465.P15114312885280024657

namespace A383465

/-- `A000027(A002061(3*n)+A001106(n))` -/
def P15114312885280024657.Spec : Prop :=
  ∀ n, P15114312885280024657.a n = A383465 n

end A383465

/-! ## A383465.P17265032663815110131

`A000027(A139272(n)+A006137(n)-n)`
-/

namespace A383465.P17265032663815110131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A139272 n + (A006137 n - (n : ℤ))).toNat

end

end A383465.P17265032663815110131

namespace A383465

/-- `A000027(A139272(n)+A006137(n)-n)` -/
def P17265032663815110131.Spec : Prop :=
  ∀ n, P17265032663815110131.a n = A383465 n

end A383465

/-! ## A383465.P17599183711756537696

`A000027(A139272(n)+ceil((A010002(n)-n)/2))`
-/

namespace A383465.P17599183711756537696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A139272 n + ⌈(A010002 n - (n : ℤ) : ℚ) / 2⌉).toNat

end

end A383465.P17599183711756537696

namespace A383465

/-- `A000027(A139272(n)+ceil((A010002(n)-n)/2))` -/
def P17599183711756537696.Spec : Prop :=
  ∀ n, P17599183711756537696.a n = A383465 n

end A383465

/-!
# A383466: a(0) = 1; thereafter a(n) = 10*n^2 - 5*n + 2.

The programs for A383466, the canonical program `A383466.P239325731920527265` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383466 has offset 0).

The definition of A383466 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383466.P239325731920527265

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=7, a(2)=32, a(3)=77`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383466

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P239325731920527265.Spec : Prop :=
  ∀ n, P239325731920527265.a n = A383466 n

theorem P239325731920527265.correct : P239325731920527265.Spec := by
  intro n
  simp only [A383466]

end A383466

/-! ## A383466.P16144169570745708165

`A005901(n)-5*n`
-/

namespace A383466.P16144169570745708165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 n - (5 * n : ℤ)

end

end A383466.P16144169570745708165

namespace A383466

/-- `A005901(n)-5*n` -/
def P16144169570745708165.Spec : Prop :=
  ∀ n, P16144169570745708165.a n = A383466 n

end A383466

/-! ## A383466.P2135053596757686312

`A051866(n)+A005899(n)`
-/

namespace A383466.P2135053596757686312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051866 n + A005899 n

end

end A383466.P2135053596757686312

namespace A383466

/-- `A051866(n)+A005899(n)` -/
def P2135053596757686312.Spec : Prop :=
  ∀ n, P2135053596757686312.a n = A383466 n

end A383466

/-! ## A383466.P6710020525269887380

`A077591(n)+A014106(n)`
-/

namespace A383466.P6710020525269887380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077591 n + A014106 n

end

end A383466.P6710020525269887380

namespace A383466

/-- `A077591(n)+A014106(n)` -/
def P6710020525269887380.Spec : Prop :=
  ∀ n, P6710020525269887380.a n = A383466 n

end A383466

/-! ## A383466.P6549196686937182450

`A139272(n)+A005893(n)`
-/

namespace A383466.P6549196686937182450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139272 n + A005893 n

end

end A383466.P6549196686937182450

namespace A383466

/-- `A139272(n)+A005893(n)` -/
def P6549196686937182450.Spec : Prop :=
  ∀ n, P6549196686937182450.a n = A383466 n

end A383466

/-! ## A383466.P11421653570916023890

`A139268(n)+A005918(n)`
-/

namespace A383466.P11421653570916023890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139268 n + A005918 n

end

end A383466.P11421653570916023890

namespace A383466

/-- `A139268(n)+A005918(n)` -/
def P11421653570916023890.Spec : Prop :=
  ∀ n, P11421653570916023890.a n = A383466 n

end A383466

/-! ## A383466.P10909351390371876071

`A135703(n)+A077588(n)`
-/

namespace A383466.P10909351390371876071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135703 n + A077588 n

end

end A383466.P10909351390371876071

namespace A383466

/-- `A135703(n)+A077588(n)` -/
def P10909351390371876071.Spec : Prop :=
  ∀ n, P10909351390371876071.a n = A383466 n

end A383466

/-! ## A383466.P7750088745122307441

`A389625(n)+A022266(n)`
-/

namespace A383466.P7750088745122307441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389625 n + A022266 n

end

end A383466.P7750088745122307441

namespace A383466

/-- `A389625(n)+A022266(n)` -/
def P7750088745122307441.Spec : Prop :=
  ∀ n, P7750088745122307441.a n = A383466 n

end A383466

/-! ## A383466.P11826352651862554827

`A386485(n)+A033429(n)`
-/

namespace A383466.P11826352651862554827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386485 n + A033429 n

end

end A383466.P11826352651862554827

namespace A383466

/-- `A386485(n)+A033429(n)` -/
def P11826352651862554827.Spec : Prop :=
  ∀ n, P11826352651862554827.a n = A383466 n

end A383466

/-! ## A383466.P1463636396843140285

`A386486(n)+A033579(n)`
-/

namespace A383466.P1463636396843140285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386486 n + A033579 n

end

end A383466.P1463636396843140285

namespace A383466

/-- `A386486(n)+A033579(n)` -/
def P1463636396843140285.Spec : Prop :=
  ∀ n, P1463636396843140285.a n = A383466 n

end A383466

/-! ## A383466.P14712706185077219212

`A010003(n)-A028557(n)`
-/

namespace A383466.P14712706185077219212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010003 n - A028557 n

end

end A383466.P14712706185077219212

namespace A383466

/-- `A010003(n)-A028557(n)` -/
def P14712706185077219212.Spec : Prop :=
  ∀ n, P14712706185077219212.a n = A383466 n

end A383466

/-! ## A383466.P3700037281231300624

`A005914(n)-A033537(n)`
-/

namespace A383466.P3700037281231300624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005914 n - A033537 n

end

end A383466.P3700037281231300624

namespace A383466

/-- `A005914(n)-A033537(n)` -/
def P3700037281231300624.Spec : Prop :=
  ∀ n, P3700037281231300624.a n = A383466 n

end A383466

/-! ## A383466.P16880848430080086988

`A010005(n)-A124080(n)`
-/

namespace A383466.P16880848430080086988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010005 n - A124080 n

end

end A383466.P16880848430080086988

namespace A383466

/-- `A010005(n)-A124080(n)` -/
def P16880848430080086988.Spec : Prop :=
  ∀ n, P16880848430080086988.a n = A383466 n

end A383466

/-! ## A383466.P1027273781000967069

`A010008(n)-A139277(n)`
-/

namespace A383466.P1027273781000967069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010008 n - A139277 n

end

end A383466.P1027273781000967069

namespace A383466

/-- `A010008(n)-A139277(n)` -/
def P1027273781000967069.Spec : Prop :=
  ∀ n, P1027273781000967069.a n = A383466 n

end A383466

/-! ## A383466.P4540036494603309383

`A010006(n)-A211014(n)`
-/

namespace A383466.P4540036494603309383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010006 n - A211014 n

end

end A383466.P4540036494603309383

namespace A383466

/-- `A010006(n)-A211014(n)` -/
def P4540036494603309383.Spec : Prop :=
  ∀ n, P4540036494603309383.a n = A383466 n

end A383466

/-! ## A383466.P8701733995028629967

`A386477(n)-A000384(n)`
-/

namespace A383466.P8701733995028629967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386477 n - A000384 n

end

end A383466.P8701733995028629967

namespace A383466

/-- `A386477(n)-A000384(n)` -/
def P8701733995028629967.Spec : Prop :=
  ∀ n, P8701733995028629967.a n = A383466 n

end A383466

/-! ## A383466.P7717280878862015333

`A010012(n)-A396290(n)`
-/

namespace A383466.P7717280878862015333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010012 n - A396290 n

end

end A383466.P7717280878862015333

namespace A383466

/-- `A010012(n)-A396290(n)` -/
def P7717280878862015333.Spec : Prop :=
  ∀ n, P7717280878862015333.a n = A383466 n

end A383466

/-! ## A383466.P4967729374106300719

`A152751(n)+A003682(n+1)`
-/

namespace A383466.P4967729374106300719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152751 n + A003682 (n + 1)

end

end A383466.P4967729374106300719

namespace A383466

/-- `A152751(n)+A003682(n+1)` -/
def P4967729374106300719.Spec : Prop :=
  ∀ n, P4967729374106300719.a n = A383466 n

end A383466

/-! ## A383466.P5984905338823144295

`A133653(n+1)+A051874(n)`
-/

namespace A383466.P5984905338823144295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133653 (n + 1) + A051874 n

end

end A383466.P5984905338823144295

namespace A383466

/-- `A133653(n+1)+A051874(n)` -/
def P5984905338823144295.Spec : Prop :=
  ∀ n, P5984905338823144295.a n = A383466 n

end A383466

/-!
# A383468: Semiprimes s = A001358(k) such that k, s - k and s + k are also semiprimes.

The programs for A383468, there is no canonical definition to state claims against.
-/

/-! ## A383468.P17101522999080005028

`A001358(A383469(n+1))`
-/

namespace A383468.P17101522999080005028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A383469 (n + 1)).toNat

end

end A383468.P17101522999080005028

/-!
# A383469: Semiprimes k such that A001358(k) + k and A001358(k) - k are also semiprimes.

The programs for A383469, there is no canonical definition to state claims against.
-/

/-! ## A383469.P11901272835738813497

`A058933(A383468(n+1))`
-/

namespace A383469.P11901272835738813497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A383468 (n + 1)).toNat

end

end A383469.P11901272835738813497

/-!
# A383470: Numbers k which are divisible by the number of squares mod k.

The programs for A383470, there is no canonical definition to state claims against.
-/

/-! ## A383470.P11286513108001432702

`eq[A002487(n), A034444(A307855(n))]`
-/

namespace A383470.P11286513108001432702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A307855 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383470.P11286513108001432702

/-! ## A383470.P4079733662519906694

`A124765(A027741(n))*A333255(n+2)`
-/

namespace A383470.P4079733662519906694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A027741 n).toNat * A333255 (n + 2)

end

end A383470.P4079733662519906694

/-! ## A383470.P15359952377731498807

`A001221(A235684(2*(n+1)))*A181821(n+1)`
-/

namespace A383470.P15359952377731498807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A235684 (2 * (n + 1))).toNat * A181821 (n + 1)

end

end A383470.P15359952377731498807

/-! ## A383470.P18079289385915266918

`A243055(A002182(2*(n+2)))*A333255(n+2)`
-/

namespace A383470.P18079289385915266918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (A002182 (2 * (n + 2))).toNat * A333255 (n + 2)

end

end A383470.P18079289385915266918

/-! ## A383470.P14062983527451300277

`∑[A007814(A000045(2*n+3))]*A082662(n+1)`
-/

namespace A383470.P14062983527451300277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000045 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A082662 (n + 1)

end

end A383470.P14062983527451300277

/-!
# A383471: a(n) = round(Product_{k=1..n} (1 + 1/2^2^(-k))).

The programs for A383471, there is no canonical definition to state claims against.
-/

/-! ## A383471.P736376824801309332

`ceil(A383472(n+1)/4)`
-/

namespace A383471.P736376824801309332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A383472 (n + 1) : ℚ) / 4⌉

end

end A383471.P736376824801309332

/-! ## A383471.P13065945612405401713

`A065033(Δ[floor(2^n/log(2))])`
-/

namespace A383471.P13065945612405401713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℝ) / Real.log (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (n + 1) - f1 n).toNat

end

end A383471.P13065945612405401713

/-! ## A383471.P13576934520812686820

`A110655(A383472(n+1))`
-/

namespace A383471.P13576934520812686820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A383472 (n + 1)).toNat

end

end A383471.P13576934520812686820

/-! ## A383471.P10294606458155372452

`A187185(A372448(n+1))`
-/

namespace A383471.P10294606458155372452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (A372448 (n + 1)).toNat

end

end A383471.P10294606458155372452

/-! ## A383471.P2920294907390741984

`A008618(A168596(n))`
-/

namespace A383471.P2920294907390741984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A168596 n).toNat

end

end A383471.P2920294907390741984

/-!
# A383472: a(n) = round(Product_{k=1..n} 1 + 2^2^(-k)).

The programs for A383472, there is no canonical definition to state claims against.
-/

/-! ## A383472.P7093665365795681529

`floor(2^n/log(2))`
-/

namespace A383472.P7093665365795681529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℝ) / Real.log (2 : ℝ)⌋

end

end A383472.P7093665365795681529

/-! ## A383472.P7366773766662626241

`round(A000225(n)/log(2))+1`
-/

namespace A383472.P7366773766662626241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000225 n : ℝ) / Real.log (2 : ℝ)) + 1

end

end A383472.P7366773766662626241

/-! ## A383472.P3245259159244973440

`A078608(A011782(n))-floor(1/(n+1))`
-/

namespace A383472.P3245259159244973440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078608 (A011782 n).toNat - ⌊1 / (n + 1 : ℚ)⌋

end

end A383472.P3245259159244973440

/-! ## A383472.P13223313682770203904

`A307513(2^n)`
-/

namespace A383472.P13223313682770203904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307513 (2 ^ n)

end

end A383472.P13223313682770203904

/-! ## A383472.P6301986083755414221

`A326596(n)+A059539(A000079(n))`
-/

namespace A383472.P6301986083755414221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326596 n + A059539 (A000079 n).toNat

end

end A383472.P6301986083755414221

/-!
# A383474: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) is the number of lattice paths from (0,0) to (n,k) using steps (1,0),(2,0),(3,0),(0,1),(0,2),(0,3).

The programs for A383474, there is no canonical definition to state claims against.
-/

/-! ## A383474.P3288934570489148808

`A104705(A208050(n+1))`
-/

namespace A383474.P3288934570489148808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104705 (A208050 (n + 1)).toNat

end

end A383474.P3288934570489148808

/-!
# A383475: Numbers k such that k*2^d is the average of a twin prime pair for some divisor d of k.

The programs for A383475, there is no canonical definition to state claims against.
-/

/-! ## A383475.P11465746659793300339

`lt[A027187(A108615(2*n)), A108651(n)]`
-/

namespace A383475.P11465746659793300339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 (A108615 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383475.P11465746659793300339

/-!
# A383477: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) is the number of lattice paths from (0,0) to (n,k) using steps (1,0),(2,0),(3,0),(0,1).

The programs for A383477, there is no canonical definition to state claims against.
-/

/-! ## A383477.P13379182506206125512

`A104580(A061579(n))`
-/

namespace A383477.P13379182506206125512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104580 (A061579 n).toNat

end

end A383477.P13379182506206125512

/-! ## A383477.P4822410908806424570

`A104580(A093995(n+1)-(n+1))`
-/

namespace A383477.P4822410908806424570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104580 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A383477.P4822410908806424570

/-! ## A383477.P1228067014867037604

`A026300(n)-A235145(A074045(n))-A322358(n+1)`
-/

namespace A383477.P1228067014867037604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 n - A235145 (A074045 n).toNat - A322358 (n + 1)

end

end A383477.P1228067014867037604

/-! ## A383477.P8009252280171678599

`A026300(n)-A151795(A145596(n+3))-A322358(n+1)`
-/

namespace A383477.P8009252280171678599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 n - A151795 (A145596 (n + 3)).toNat - A322358 (n + 1)

end

end A383477.P8009252280171678599

/-!
# A383478: Number of lattice paths from (0,0) to (n,n) using steps (1,0),(2,0),(3,0),(0,1).

The programs for A383478, there is no canonical definition to state claims against.
-/

/-! ## A383478.P15061623736193854442

`(n+1)*A063018(n+1)`
-/

namespace A383478.P15061623736193854442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A063018 (n + 1)

end

end A383478.P15061623736193854442

/-! ## A383478.P1174393630190713656

`A104580(∑[4*n])`
-/

namespace A383478.P1174393630190713656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104580 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383478.P1174393630190713656

/-! ## A383478.P4477225609913201591

`record[gcd(A104580(n), A285721(n+1))]`
-/

namespace A383478.P4477225609913201591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A104580 n) (A285721 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383478.P4477225609913201591

/-! ## A383478.P11959310779196740223

`A361879(2*n+3)+A104580(A046092(n))`
-/

namespace A383478.P11959310779196740223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361879 (2 * n + 3) + A104580 (A046092 n).toNat

end

end A383478.P11959310779196740223

/-!
# A383479: Number of lattice paths from (0,0) to (n,n) using steps (1,0),(3,0),(0,1).

The programs for A383479, there is no canonical definition to state claims against.
-/

/-! ## A383479.P12889833561985850483

`(n+1)*A049140(n+1)`
-/

namespace A383479.P12889833561985850483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A049140 (n + 1)

end

end A383479.P12889833561985850483

/-! ## A383479.P10995353398957008350

`A144401((n+1)²+n²)`
-/

namespace A383479.P10995353398957008350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144401 ((n + 1) ^ 2 + n ^ 2)

end

end A383479.P10995353398957008350

/-! ## A383479.P3968741357451607847

`A202191((n+1)²+n²)`
-/

namespace A383479.P3968741357451607847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202191 ((n + 1) ^ 2 + n ^ 2)

end

end A383479.P3968741357451607847

/-! ## A383479.P14354716943034583584

`(n+1)*A052740(n+1)/record[A295381(n)]`
-/

namespace A383479.P14354716943034583584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295381 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A052740 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ))

end

end A383479.P14354716943034583584

/-! ## A383479.P9844024942245901317

`(n+1)*(A372526(n+1)+A010054(A207182(3*n+5)))`
-/

namespace A383479.P9844024942245901317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A372526 (n + 1) + A010054 (A207182 (3 * n + 5)).toNat)

end

end A383479.P9844024942245901317

/-!
# A383480: Number of lattice paths from (0,0) to (n,n) using steps (1,0),(4,0),(0,1).

The programs for A383480, there is no canonical definition to state claims against.
-/

/-! ## A383480.P5876359063921067251

`(n+1)*A063021(n+1)`
-/

namespace A383480.P5876359063921067251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A063021 (n + 1)

end

end A383480.P5876359063921067251

/-! ## A383480.P3571875619398683028

`A259074((n+1)²+n²)`
-/

namespace A383480.P3571875619398683028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259074 ((n + 1) ^ 2 + n ^ 2)

end

end A383480.P3571875619398683028

/-! ## A383480.P11506414445337147030

`A028310((n+1)*A366054(n))`
-/

namespace A383480.P11506414445337147030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n + 1 : ℤ) * A366054 n).toNat

end

end A383480.P11506414445337147030

/-! ## A383480.P10165065759988376241

`A000005(A000351(n))*A369631(n)`
-/

namespace A383480.P10165065759988376241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000351 n).toNat * A369631 n

end

end A383480.P10165065759988376241

/-!
# A383481: Coefficient of x^n in the expansion of 1 / (1-x-x^4)^n.

The programs for A383481, there is no canonical definition to state claims against.
-/

/-! ## A383481.P15216190986435958635

`A138999(A215076(n))`
-/

namespace A383481.P15216190986435958635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A215076 n).toNat

end

end A383481.P15216190986435958635

/-! ## A383481.P16990925770217586812

`A163463(A389411(n))`
-/

namespace A383481.P16990925770217586812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163463 (A389411 n).toNat

end

end A383481.P16990925770217586812

/-! ## A383481.P16236471790287684831

`A195174(A181879(n+1))`
-/

namespace A383481.P16236471790287684831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A181879 (n + 1)).toNat

end

end A383481.P16236471790287684831

/-!
# A383485: a(n) = 2*(2*(n - 1)! + n + 2) mod (n*(n + 2)).

The programs for A383485, the canonical program `A383485.P13555583204279278682` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383485 has offset 1).

The definition of A383485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383485.P13555583204279278682

`(2*(2*n!+n+1+2))%((n+1)*(n+3))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A383485

/-- `(2*(2*n!+n+1+2))%((n+1)*(n+3))` -/
def P13555583204279278682.Spec : Prop :=
  ∀ n, (P13555583204279278682.a n : ℤ) = A383485 (n + 1)

theorem P13555583204279278682.correct : P13555583204279278682.Spec := by
  intro n
  simp only [A383485, Nat.add_sub_cancel]

end A383485

/-!
# A383487: Prime powers p^r such that p == 3 (mod 4) and r is even.

The programs for A383487, the canonical program `A383487.P2708868646460127700` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383487 has offset 1).

The definition of A383487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383487.P2708868646460127700

`A197504(n+2)²`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A383487

/-- `A197504(n+2)²` -/
def P2708868646460127700.Spec : Prop :=
  ∀ n, P2708868646460127700.a n = A383487 (n + 1)

theorem P2708868646460127700.correct : P2708868646460127700.Spec := by
  intro n
  simp only [A383487, Nat.add_sub_cancel]

end A383487

/-! ## A383487.P12928503835209370862

`∩[A015713(n+1), A244623(n+1)]`
-/

namespace A383487.P12928503835209370862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383487.P12928503835209370862

namespace A383487

/-- `∩[A015713(n+1), A244623(n+1)]` -/
def P12928503835209370862.Spec : Prop :=
  ∀ n, (P12928503835209370862.a n : ℤ) = A383487 (n + 1)

end A383487

/-! ## A383487.P15654790370236880091

`∩[A015713(n+1), A225498(n+1)]`
-/

namespace A383487.P15654790370236880091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383487.P15654790370236880091

namespace A383487

/-- `∩[A015713(n+1), A225498(n+1)]` -/
def P15654790370236880091.Spec : Prop :=
  ∀ n, (P15654790370236880091.a n : ℤ) = A383487 (n + 1)

end A383487

/-! ## A383487.P2708876343574366405

`∩[A015713(n+1), A369564(n+1)]`
-/

namespace A383487.P2708876343574366405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383487.P2708876343574366405

namespace A383487

/-- `∩[A015713(n+1), A369564(n+1)]` -/
def P2708876343574366405.Spec : Prop :=
  ∀ n, (P2708876343574366405.a n : ℤ) = A383487 (n + 1)

end A383487

/-! ## A383487.P5060824031814275391

`∩[A015713(n+1), A372724(n+1)]`
-/

namespace A383487.P5060824031814275391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383487.P5060824031814275391

namespace A383487

/-- `∩[A015713(n+1), A372724(n+1)]` -/
def P5060824031814275391.Spec : Prop :=
  ∀ n, (P5060824031814275391.a n : ℤ) = A383487 (n + 1)

end A383487

/-! ## A383487.P1865250027392748201

`∩[A369564(n+1), A372724(n+1)]`
-/

namespace A383487.P1865250027392748201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383487.P1865250027392748201

namespace A383487

/-- `∩[A369564(n+1), A372724(n+1)]` -/
def P1865250027392748201.Spec : Prop :=
  ∀ n, (P1865250027392748201.a n : ℤ) = A383487 (n + 1)

end A383487

/-! ## A383487.P6719057659672875741

`∩[A015713(n+1), A028375(n+1)]`
-/

namespace A383487.P6719057659672875741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383487.P6719057659672875741

namespace A383487

/-- `∩[A015713(n+1), A028375(n+1)]` -/
def P6719057659672875741.Spec : Prop :=
  ∀ n, (P6719057659672875741.a n : ℤ) = A383487 (n + 1)

end A383487

/-! ## A383487.P5550748783616464838

`∩[A073540(n+1), A389205(n+1)]`
-/

namespace A383487.P5550748783616464838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383487.P5550748783616464838

namespace A383487

/-- `∩[A073540(n+1), A389205(n+1)]` -/
def P5550748783616464838.Spec : Prop :=
  ∀ n, (P5550748783616464838.a n : ℤ) = A383487 (n + 1)

end A383487

/-! ## A383487.P4304038982623168809

`∩[A080062(n+1), A389205(n+1)]`
-/

namespace A383487.P4304038982623168809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383487.P4304038982623168809

namespace A383487

/-- `∩[A080062(n+1), A389205(n+1)]` -/
def P4304038982623168809.Spec : Prop :=
  ∀ n, (P4304038982623168809.a n : ℤ) = A383487 (n + 1)

end A383487

/-! ## A383487.P5549673743610420362

`∩[A134612(n+1), A389205(n+1)]`
-/

namespace A383487.P5549673743610420362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383487.P5549673743610420362

namespace A383487

/-- `∩[A134612(n+1), A389205(n+1)]` -/
def P5549673743610420362.Spec : Prop :=
  ∀ n, (P5549673743610420362.a n : ℤ) = A383487 (n + 1)

end A383487

/-! ## A383487.P5296799885941547234

`∩[A225498(n+1), A389205(n+1)]`
-/

namespace A383487.P5296799885941547234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383487.P5296799885941547234

namespace A383487

/-- `∩[A225498(n+1), A389205(n+1)]` -/
def P5296799885941547234.Spec : Prop :=
  ∀ n, (P5296799885941547234.a n : ℤ) = A383487 (n + 1)

end A383487

/-! ## A383487.P16580354572712800129

`∩[A249125(n+1), A389205(n+1)]`
-/

namespace A383487.P16580354572712800129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383487.P16580354572712800129

namespace A383487

/-- `∩[A249125(n+1), A389205(n+1)]` -/
def P16580354572712800129.Spec : Prop :=
  ∀ n, (P16580354572712800129.a n : ℤ) = A383487 (n + 1)

end A383487

/-! ## A383487.P833888857187215382

`∩[A306531(n+1), A389205(n+1)]`
-/

namespace A383487.P833888857187215382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383487.P833888857187215382

namespace A383487

/-- `∩[A306531(n+1), A389205(n+1)]` -/
def P833888857187215382.Spec : Prop :=
  ∀ n, (P833888857187215382.a n : ℤ) = A383487 (n + 1)

end A383487

/-! ## A383487.P7194348381719810983

`A016754(lt[A333849(n), 2])`
-/

namespace A383487.P7194348381719810983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333849 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A383487.P7194348381719810983

namespace A383487

/-- `A016754(lt[A333849(n), 2])` -/
def P7194348381719810983.Spec : Prop :=
  ∀ n, P7194348381719810983.a n = A383487 (n + 1)

end A383487

/-! ## A383487.P572213730002970351

`∩[A015713(n+1), A016754(n)]`
-/

namespace A383487.P572213730002970351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383487.P572213730002970351

namespace A383487

/-- `∩[A015713(n+1), A016754(n)]` -/
def P572213730002970351.Spec : Prop :=
  ∀ n, (P572213730002970351.a n : ℤ) = A383487 (n + 1)

end A383487

/-! ## A383487.P10745826908725682671

`∩[A015713(n+1), A075109(n+1)]`
-/

namespace A383487.P10745826908725682671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383487.P10745826908725682671

namespace A383487

/-- `∩[A015713(n+1), A075109(n+1)]` -/
def P10745826908725682671.Spec : Prop :=
  ∀ n, (P10745826908725682671.a n : ℤ) = A383487 (n + 1)

end A383487

/-! ## A383487.P1620202705913984730

`∩[A015713(n+1), A124184(n+1)]`
-/

namespace A383487.P1620202705913984730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383487.P1620202705913984730

namespace A383487

/-- `∩[A015713(n+1), A124184(n+1)]` -/
def P1620202705913984730.Spec : Prop :=
  ∀ n, (P1620202705913984730.a n : ℤ) = A383487 (n + 1)

end A383487

/-! ## A383487.P14112100533301307896

`∩[A015713(n+1), A277925(n+1)]`
-/

namespace A383487.P14112100533301307896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383487.P14112100533301307896

namespace A383487

/-- `∩[A015713(n+1), A277925(n+1)]` -/
def P14112100533301307896.Spec : Prop :=
  ∀ n, (P14112100533301307896.a n : ℤ) = A383487 (n + 1)

end A383487

/-! ## A383487.P1317420476892911775

`∩[A015713(n+1), A062739(n+1)]`
-/

namespace A383487.P1317420476892911775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383487.P1317420476892911775

namespace A383487

/-- `∩[A015713(n+1), A062739(n+1)]` -/
def P1317420476892911775.Spec : Prop :=
  ∀ n, (P1317420476892911775.a n : ℤ) = A383487 (n + 1)

end A383487

/-!
# A383488: Numbers k that have at least one divisor d_i(k) for which a divisor d_j(k) exists such that d_i(k) < d_j(k) < sigma(d_i(k)).

The programs for A383488, there is no canonical definition to state claims against.
-/

/-! ## A383488.P6092695776568258537

`A010815(A320965(n+1))+A005101(n+1)`
-/

namespace A383488.P6092695776568258537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A320965 (n + 1)).toNat + A005101 (n + 1)

end

end A383488.P6092695776568258537

/-! ## A383488.P16486534425093619866

`A033676(A005101(n+1)*A112769(n+1))`
-/

namespace A383488.P16486534425093619866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A005101 (n + 1) * A112769 (n + 1)).toNat

end

end A383488.P16486534425093619866

/-! ## A383488.P6394881729774597956

`A005101(n+1)-A353477(A123346(2*n+1))`
-/

namespace A383488.P6394881729774597956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1) - A353477 (A123346 (2 * n + 1)).toNat

end

end A383488.P6394881729774597956

/-! ## A383488.P11454916903028297039

`A005101(n+1)-A124761(A320201(3*n+1))`
-/

namespace A383488.P11454916903028297039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1) - A124761 (A320201 (3 * n + 1)).toNat

end

end A383488.P11454916903028297039

/-!
# A383490: Number of polyforms with n cells on the faces of a rhombic triacontahedron up to rotation and reflection.

The programs for A383490, there is no canonical definition to state claims against.
-/

/-! ## A383490.P17448622350709053319

`A000577(n+1)-A086430(A324088(n+1))`
-/

namespace A383490.P17448622350709053319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000577 (n + 1) - A086430 (A324088 (n + 1)).toNat

end

end A383490.P17448622350709053319

/-!
# A383491: Number of polyforms with n cells on the faces of a rhombic triacontahedron up to rotation.

The programs for A383491, there is no canonical definition to state claims against.
-/

/-! ## A383491.P4701744267794453302

`A006534(n+1)-A379478(A099806(n))`
-/

namespace A383491.P4701744267794453302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006534 (n + 1) - A379478 (A099806 n).toNat

end

end A383491.P4701744267794453302

/-! ## A383491.P17452473395832456095

`A006534(n+1)-A010052(A030138(2*n+5))`
-/

namespace A383491.P17452473395832456095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006534 (n + 1) - A010052 (A030138 (2 * n + 5)).toNat

end

end A383491.P17452473395832456095

/-!
# A383492: Number of polyforms with n cells on the faces of a triakis icosahedron up to rotation and reflection.

The programs for A383492, there is no canonical definition to state claims against.
-/

/-! ## A383492.P7392052905609556650

`A088725(A364752(n))`
-/

namespace A383492.P7392052905609556650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088725 (A364752 n).toNat

end

end A383492.P7392052905609556650

/-! ## A383492.P17536077948396662549

`A057784(A250265(n+1))`
-/

namespace A383492.P17536077948396662549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057784 (A250265 (n + 1)).toNat

end

end A383492.P17536077948396662549

/-!
# A383493: Number of polyforms with n cells on the faces of a triakis icosahedron up to rotation.

The programs for A383493, there is no canonical definition to state claims against.
-/

/-! ## A383493.P14782557043128593268

`A151531(A250265(n+1))`
-/

namespace A383493.P14782557043128593268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151531 (A250265 (n + 1)).toNat

end

end A383493.P14782557043128593268

/-! ## A383493.P6334927073878491403

`A151531(A151513(n)+n)`
-/

namespace A383493.P6334927073878491403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151531 (A151513 n + (n : ℤ)).toNat

end

end A383493.P6334927073878491403

/-! ## A383493.P7395846080847956193

`A381018(A056354(n))`
-/

namespace A383493.P7395846080847956193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381018 (A056354 n).toNat

end

end A383493.P7395846080847956193

/-! ## A383493.P1662334010956391219

`A151531(A250264(n+1))`
-/

namespace A383493.P1662334010956391219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151531 (A250264 (n + 1)).toNat

end

end A383493.P1662334010956391219

/-! ## A383493.P3745591789171898691

`A151531(gcd(A000142(n), A051866(n)))`
-/

namespace A383493.P3745591789171898691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151531 (Int.gcd (A000142 n) (A051866 n))

end

end A383493.P3745591789171898691

/-!
# A383495: Number of polyforms with n cells on the faces of a pentakis dodecahedron up to rotation.

The programs for A383495, there is no canonical definition to state claims against.
-/

/-! ## A383495.P11485706806747867693

`A356137(A306575(n))`
-/

namespace A383495.P11485706806747867693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356137 (A306575 n).toNat

end

end A383495.P11485706806747867693

/-! ## A383495.P12635026204779637077

`A347645(record[A001678(n)])`
-/

namespace A383495.P12635026204779637077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347645 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A383495.P12635026204779637077

/-! ## A383495.P9815527138069641760

`A347645(A005833(n+1))`
-/

namespace A383495.P9815527138069641760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347645 (A005833 (n + 1)).toNat

end

end A383495.P9815527138069641760

/-! ## A383495.P10051535922132961085

`A347645(A054178(n+1))`
-/

namespace A383495.P10051535922132961085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347645 (A054178 (n + 1)).toNat

end

end A383495.P10051535922132961085

/-!
# A383496: Number of polyforms with n cells on the faces of a disdyakis triacontahedron up to rotation and reflection.

The programs for A383496, there is no canonical definition to state claims against.
-/

/-! ## A383496.P8172076612478546913

`A197462(A250265(n+1))`
-/

namespace A383496.P8172076612478546913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197462 (A250265 (n + 1)).toNat

end

end A383496.P8172076612478546913

/-! ## A383496.P7064918719377938389

`A197462(n*a(A056965(n)))` with `a(0)=1`
-/

namespace A383496.P7064918719377938389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A197462 ((n : ℤ) * a (A056965 n).toNat).toNat

end

end A383496.P7064918719377938389

/-! ## A383496.P11891662385667003225

`A197462(A180083(a(floor(n/5))+n))` with `a(0)=1`
-/

namespace A383496.P11891662385667003225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A197462 (A180083 (a ⌊(n : ℚ) / 5⌋.toNat + (n : ℤ)).toNat).toNat

end

end A383496.P11891662385667003225

/-! ## A383496.P4059756421765467929

`A197462(A209229(3*n+2)+A087051(n))`
-/

namespace A383496.P4059756421765467929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197462 (A209229 (3 * n + 2) + A087051 n).toNat

end

end A383496.P4059756421765467929

/-! ## A383496.P12336448773200124574

`A197462(A250264(n+1))`
-/

namespace A383496.P12336448773200124574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197462 (A250264 (n + 1)).toNat

end

end A383496.P12336448773200124574

/-!
# A383497: Number of polyforms with n cells on the faces of a disdyakis triacontahedron up to rotation.

The programs for A383497, there is no canonical definition to state claims against.
-/

/-! ## A383497.P14099559192336938304

`A383807(n)+A086016(A084509(n))`
-/

namespace A383497.P14099559192336938304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383807 n + A086016 (A084509 n).toNat

end

end A383497.P14099559192336938304

/-! ## A383497.P15110169626481019128

`A383807(n)+A010052(A003397(n+1))`
-/

namespace A383497.P15110169626481019128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383807 n + A010052 (A003397 (n + 1)).toNat

end

end A383497.P15110169626481019128

/-! ## A383497.P8587342015253283218

`A383807(n)+A375297(A179988(n+1))`
-/

namespace A383497.P8587342015253283218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383807 n + A375297 (A179988 (n + 1)).toNat

end

end A383497.P8587342015253283218

/-! ## A383497.P8010196648338654554

`A383807(n)+A241466(A383799(n+4))`
-/

namespace A383497.P8010196648338654554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383807 n + A241466 (A383799 (n + 4)).toNat

end

end A383497.P8010196648338654554

/-! ## A383497.P2732112825033593094

`A383807(n)+A079365(A045931(2*n+3))`
-/

namespace A383497.P2732112825033593094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383807 n + A079365 (A045931 (2 * n + 3)).toNat

end

end A383497.P2732112825033593094

/-!
# A383498: Number of polyforms with n cells on the faces of a deltoidal hexecontahedron up to rotation.

The programs for A383498, there is no canonical definition to state claims against.
-/

/-! ## A383498.P9971865309611471504

`A371587(A061815(n+1))`
-/

namespace A383498.P9971865309611471504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371587 (A061815 (n + 1)).toNat

end

end A383498.P9971865309611471504

/-! ## A383498.P7135426996999736810

`A070106(15-A078025(2*n+3))`
-/

namespace A383498.P7135426996999736810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070106 (15 - A078025 (2 * n + 3)).toNat

end

end A383498.P7135426996999736810

/-! ## A383498.P14656353456180200690

`A156261(A000105(n))+A000108(n)`
-/

namespace A383498.P14656353456180200690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156261 (A000105 n).toNat + A000108 n

end

end A383498.P14656353456180200690

/-!
# A383499: Expansion of 1/sqrt( (1-x) * (1-x-4*x^2)^3 ).

The programs for A383499, there is no canonical definition to state claims against.
-/

/-! ## A383499.P13313192937662487585

`∑[∑[A377204(n)]]`
-/

namespace A383499.P13313192937662487585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377204 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383499.P13313192937662487585

/-! ## A383499.P15559243859642951834

`A374394(A109546(n+1))`
-/

namespace A383499.P15559243859642951834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374394 (A109546 (n + 1)).toNat

end

end A383499.P15559243859642951834

