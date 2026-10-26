import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
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
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A281000: Triangle read by rows: T(n,k) = binomial(2*n+1, 2*k+1)*binomial(2*n-2*k, n-k)/(n+1-k) for 0 <= k <= n.

The programs for A281000, the canonical program `A281000.P18283104190879742990` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281000 has offset 0).

The definition of A281000 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281000.P18283104190879742990

`C(2*row(n)+1, 2*col(n)+1)*A000108(row(n)-col(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A281000

/-- `C(2*row(n)+1, 2*col(n)+1)*A000108(row(n)-col(n))` -/
def P18283104190879742990.Spec : Prop :=
  ∀ n, P18283104190879742990.a n = A281000 n

theorem P18283104190879742990.correct : P18283104190879742990.Spec := by
  intro n
  simp only [A281000]

end A281000

/-! ## A281000.P384265330079404776

`A097610(A185869(n+1))`
-/

namespace A281000.P384265330079404776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097610 (A185869 (n + 1)).toNat

end

end A281000.P384265330079404776

namespace A281000

/-- `A097610(A185869(n+1))` -/
def P384265330079404776.Spec : Prop :=
  ∀ n, P384265330079404776.a n = A281000 n

end A281000

/-! ## A281000.P5952683596222273266

`A097610(Δ[n²]+A002024(n+1)²)`
-/

namespace A281000.P5952683596222273266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097610 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + A002024 (n + 1) ^ 2).toNat

end

end A281000.P5952683596222273266

namespace A281000

/-- `A097610(Δ[n²]+A002024(n+1)²)` -/
def P5952683596222273266.Spec : Prop :=
  ∀ n, P5952683596222273266.a n = A281000 n

end A281000

/-! ## A281000.P14973985308174493677

`A097610(n+1+A002024(n+1)²+n)`
-/

namespace A281000.P14973985308174493677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097610 ((n + 1 : ℤ) + (A002024 (n + 1) ^ 2 + (n : ℤ))).toNat

end

end A281000.P14973985308174493677

namespace A281000

/-- `A097610(n+1+A002024(n+1)²+n)` -/
def P14973985308174493677.Spec : Prop :=
  ∀ n, P14973985308174493677.a n = A281000 n

end A281000

/-! ## A281000.P8325977624319647777

`A097610(eq[A049310(n), A053118(n+1)]+1)`
-/

namespace A281000.P8325977624319647777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097610 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A281000.P8325977624319647777

namespace A281000

/-- `A097610(eq[A049310(n), A053118(n+1)]+1)` -/
def P8325977624319647777.Spec : Prop :=
  ∀ n, P8325977624319647777.a n = A281000 n

end A281000

/-! ## A281000.P1788465246322820961

`A097610(eq[A053118(n+1), A097610(n)]+1)`
-/

namespace A281000.P1788465246322820961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097610 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A281000.P1788465246322820961

namespace A281000

/-- `A097610(eq[A053118(n+1), A097610(n)]+1)` -/
def P1788465246322820961.Spec : Prop :=
  ∀ n, P1788465246322820961.a n = A281000 n

end A281000

/-!
# A281001: Square array read by antidiagonals downwards: A(n, 1) = smallest Wieferich prime to base n and A(n, k) = smallest Wieferich prime to base A(n, k-1) for k > 1.

The programs for A281001, there is no canonical definition to state claims against.
-/

/-! ## A281001.P1123594833309646241

`A288097(C(record[∏{e}[n+1, #+1]], n))`
-/

namespace A281001.P1123594833309646241
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288097 (Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) n)

end

end A281001.P1123594833309646241

/-! ## A281001.P12852595559312581605

`A288097(A037401(n+1))`
-/

namespace A281001.P12852595559312581605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288097 (A037401 (n + 1)).toNat

end

end A281001.P12852595559312581605

/-!
# A281003: a(n) is the number of unlabeled simple graphs with n vertices that have no automorphisms of odd parity.

The programs for A281003, there is no canonical definition to state claims against.
-/

/-! ## A281003.P5811050307614052724

`C(comp[2*n+3], ∑{e}[A000538(3*n+1), #])`
-/

namespace A281003.P5811050307614052724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (3 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

end

end A281003.P5811050307614052724

/-! ## A281003.P4762630790379897417

`A358373(A003407(n))-n`
-/

namespace A281003.P4762630790379897417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358373 (A003407 n).toNat - (n : ℤ)

end

end A281003.P4762630790379897417

/-! ## A281003.P8230421440952753651

`A008617(xor(n, A263785(n+2)))`
-/

namespace A281003.P8230421440952753651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (Int.xor (n : ℤ) (A263785 (n + 2))).toNat

end

end A281003.P8230421440952753651

/-!
# A281004: Numbers with exactly 3 ones in both binary and ternary representations.

The programs for A281004, there is no canonical definition to state claims against.
-/

/-! ## A281004.P13652309431802215649

`∩[A014311(n+1), A230597(n+1)]`
-/

namespace A281004.P13652309431802215649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281004.P13652309431802215649

/-! ## A281004.P17958558331523089963

`∩[A084468(n+1), A230597(n+1)]`
-/

namespace A281004.P17958558331523089963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281004.P17958558331523089963

/-! ## A281004.P11653793357612897294

`∩[A023694(n+1), A340161(n)]`
-/

namespace A281004.P11653793357612897294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340161 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281004.P11653793357612897294

/-! ## A281004.P1627924495257325331

`∩[A014311(n+1), A023694(n+1)]`
-/

namespace A281004.P1627924495257325331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281004.P1627924495257325331

/-! ## A281004.P16348539353255474083

`∩[A023694(n+1), A084468(n+1)]`
-/

namespace A281004.P16348539353255474083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281004.P16348539353255474083

/-! ## A281004.P17311161868901377541

`∩[A023694(n+1), A151757(n+1)]`
-/

namespace A281004.P17311161868901377541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281004.P17311161868901377541

/-! ## A281004.P4552704306456198844

`∩[A023694(n+1), A230597(n+1)]`
-/

namespace A281004.P4552704306456198844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281004.P4552704306456198844

/-!
# A281005: Numbers n having at least one odd divisor greater than sqrt(2*n).

The programs for A281005, the canonical program `A281005.P6495373514250291741` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281005 has offset 1).

The definition of A281005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281005.P6495373514250291741

`lt[2*and(n, -n)², n]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281005

/-- `lt[2*and(n, -n)², n]` -/
def P6495373514250291741.Spec : Prop :=
  ∀ n, (P6495373514250291741.a n : ℤ) = A281005 (n + 1)

theorem P6495373514250291741.correct : P6495373514250291741.Spec := by
  intro n
  simp only [A281005, Nat.add_sub_cancel]

end A281005

/-! ## A281005.P4097274355962751273

`lt[xor(n, -n)², 2*n]`
-/

namespace A281005.P4097274355962751273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A281005.P4097274355962751273

namespace A281005

/-- `lt[xor(n, -n)², 2*n]` -/
def P4097274355962751273.Spec : Prop :=
  ∀ n, (P4097274355962751273.a n : ℤ) = A281005 (n + 1)

end A281005

/-! ## A281005.P11629945551539635780

`lt[(xor(n, n-1)+1)², 2*n]`
-/

namespace A281005.P11629945551539635780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor (n : ℤ) ((n : ℤ) - 1) + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A281005.P11629945551539635780

namespace A281005

/-- `lt[(xor(n, n-1)+1)², 2*n]` -/
def P11629945551539635780.Spec : Prop :=
  ∀ n, (P11629945551539635780.a n : ℤ) = A281005 (n + 1)

end A281005

/-! ## A281005.P12227329206814302821

`lt[or(2*n, -(2*n))², 2*n]`
-/

namespace A281005.P12227329206814302821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (-(2 * n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A281005.P12227329206814302821

namespace A281005

/-- `lt[or(2*n, -(2*n))², 2*n]` -/
def P12227329206814302821.Spec : Prop :=
  ∀ n, (P12227329206814302821.a n : ℤ) = A281005 (n + 1)

end A281005

/-! ## A281005.P16333994713457827543

`lt[and(1-2*n, 2*n)², 2*n]`
-/

namespace A281005.P16333994713457827543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (2 * n : ℤ)) (2 * n : ℤ) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A281005.P16333994713457827543

namespace A281005

/-- `lt[and(1-2*n, 2*n)², 2*n]` -/
def P16333994713457827543.Spec : Prop :=
  ∀ n, (P16333994713457827543.a n : ℤ) = A281005 (n + 1)

end A281005

/-! ## A281005.P3428693827568796671

`lt[xor(n, n+1), (n+1)/and(n+1, -(n+1))]+1`
-/

namespace A281005.P3428693827568796671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A281005.P3428693827568796671

namespace A281005

/-- `lt[xor(n, n+1), (n+1)/and(n+1, -(n+1))]+1` -/
def P3428693827568796671.Spec : Prop :=
  ∀ n, (P3428693827568796671.a n : ℤ) = A281005 (n + 1)

end A281005

/-! ## A281005.P15817868784122971098

`A115036(n+1)/2`
-/

namespace A281005.P15817868784122971098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115036 (n + 1) : ℚ) / 2

end

end A281005.P15817868784122971098

namespace A281005

/-- `A115036(n+1)/2` -/
def P15817868784122971098.Spec : Prop :=
  ∀ n, P15817868784122971098.a n = (A281005 (n + 1) : ℚ)

end A281005

/-! ## A281005.P2422880915760911722

`comp[A082662(n+1)-1]+1`
-/

namespace A281005.P2422880915760911722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082662 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A281005.P2422880915760911722

namespace A281005

/-- `comp[A082662(n+1)-1]+1` -/
def P2422880915760911722.Spec : Prop :=
  ∀ n, (P2422880915760911722.a n : ℤ) = A281005 (n + 1)

end A281005

/-! ## A281005.P5197043202287380575

`comp[∑[A072376(A072376(n)+n)]]`
-/

namespace A281005.P5197043202287380575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 (A072376 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A281005.P5197043202287380575

namespace A281005

/-- `comp[∑[A072376(A072376(n)+n)]]` -/
def P5197043202287380575.Spec : Prop :=
  ∀ n, (P5197043202287380575.a n : ℤ) = A281005 (n + 1)

end A281005

/-! ## A281005.P5167970753566890785

`comp[A053645(n+1)*A072376(n)]`
-/

namespace A281005.P5167970753566890785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (n + 1) * A072376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A281005.P5167970753566890785

namespace A281005

/-- `comp[A053645(n+1)*A072376(n)]` -/
def P5167970753566890785.Spec : Prop :=
  ∀ n, (P5167970753566890785.a n : ℤ) = A281005 (n + 1)

end A281005

/-! ## A281005.P15480330376544425982

`comp[A061392(2*n)*A061392(n)]`
-/

namespace A281005.P15480330376544425982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (2 * n) * A061392 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A281005.P15480330376544425982

namespace A281005

/-- `comp[A061392(2*n)*A061392(n)]` -/
def P15480330376544425982.Spec : Prop :=
  ∀ n, (P15480330376544425982.a n : ℤ) = A281005 (n + 1)

end A281005

/-! ## A281005.P3821649198788542575

`lt[2*n, A191871(n)]`
-/

namespace A281005.P3821649198788542575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191871 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A281005.P3821649198788542575

namespace A281005

/-- `lt[2*n, A191871(n)]` -/
def P3821649198788542575.Spec : Prop :=
  ∀ n, (P3821649198788542575.a n : ℤ) = A281005 (n + 1)

end A281005

/-! ## A281005.P1116096743207220470

`lt[0, A327188(n)]`
-/

namespace A281005.P1116096743207220470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327188 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A281005.P1116096743207220470

namespace A281005

/-- `lt[0, A327188(n)]` -/
def P1116096743207220470.Spec : Prop :=
  ∀ n, (P1116096743207220470.a n : ℤ) = A281005 (n + 1)

end A281005

/-! ## A281005.P3149092307420124755

`comp[lcm(n, A053644(n))]`
-/

namespace A281005.P3149092307420124755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A053644 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A281005.P3149092307420124755

namespace A281005

/-- `comp[lcm(n, A053644(n))]` -/
def P3149092307420124755.Spec : Prop :=
  ∀ n, (P3149092307420124755.a n : ℤ) = A281005 (n + 1)

end A281005

/-! ## A281005.P9487300504465127219

`comp[A006257(n)*A053644(n)]`
-/

namespace A281005.P9487300504465127219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n * A053644 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A281005.P9487300504465127219

namespace A281005

/-- `comp[A006257(n)*A053644(n)]` -/
def P9487300504465127219.Spec : Prop :=
  ∀ n, (P9487300504465127219.a n : ℤ) = A281005 (n + 1)

end A281005

/-! ## A281005.P9561421182952243681

`eq[2*A000007(n), A000007(A327188(n))]`
-/

namespace A281005.P9561421182952243681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A327188 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281005.P9561421182952243681

namespace A281005

/-- `eq[2*A000007(n), A000007(A327188(n))]` -/
def P9561421182952243681.Spec : Prop :=
  ∀ n, (P9561421182952243681.a n : ℤ) = A281005 (n + 1)

end A281005

/-! ## A281005.P12545543339812353847

`lt[0, A344851(2*n)]`
-/

namespace A281005.P12545543339812353847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344851 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A281005.P12545543339812353847

namespace A281005

/-- `lt[0, A344851(2*n)]` -/
def P12545543339812353847.Spec : Prop :=
  ∀ n, (P12545543339812353847.a n : ℤ) = A281005 (n + 1)

end A281005

/-! ## A281005.P117334520231857161

`A001281(A115036(n+1))`
-/

namespace A281005.P117334520231857161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A115036 (n + 1)).toNat

end

end A281005.P117334520231857161

namespace A281005

/-- `A001281(A115036(n+1))` -/
def P117334520231857161.Spec : Prop :=
  ∀ n, P117334520231857161.a n = A281005 (n + 1)

end A281005

/-! ## A281005.P10256633258575933820

`lt[A305989(2*n+1), A305989(n)²]`
-/

namespace A281005.P10256633258575933820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A281005.P10256633258575933820

namespace A281005

/-- `lt[A305989(2*n+1), A305989(n)²]` -/
def P10256633258575933820.Spec : Prop :=
  ∀ n, (P10256633258575933820.a n : ℤ) = A281005 (n + 1)

end A281005

/-! ## A281005.P14089551251648113800

`A106609(2*2*A115036(n+1))`
-/

namespace A281005.P14089551251648113800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (2 * (2 * A115036 (n + 1))).toNat

end

end A281005.P14089551251648113800

namespace A281005

/-- `A106609(2*2*A115036(n+1))` -/
def P14089551251648113800.Spec : Prop :=
  ∀ n, P14089551251648113800.a n = A281005 (n + 1)

end A281005

/-!
# A281006: a(n) = A000203(n) - A052928(n-1).

The programs for A281006, the canonical program `A281006.P4753203276795461863` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281006 has offset 1).

The definition of A281006 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A052928(n)` (program `A281006.P4753203276795461863`, by `A281006.P4753203276795461863.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A281006.P1074915721482183217

`A000203(n+1)-2*floor(n/2)`
-/

namespace A281006.P1074915721482183217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 2 * ⌊(n : ℚ) / 2⌋

end

end A281006.P1074915721482183217

namespace A281006

/-- `A000203(n+1)-2*floor(n/2)` -/
def P1074915721482183217.Spec : Prop :=
  ∀ n, P1074915721482183217.a n = A281006 (n + 1)

end A281006

/-! ## A281006.P4753203276795461863

`A000203(n+1)-A052928(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A281006

/-- `A000203(n+1)-A052928(n)` -/
def P4753203276795461863.Spec : Prop :=
  ∀ n, P4753203276795461863.a n = A281006 (n + 1)

theorem P4753203276795461863.correct : P4753203276795461863.Spec := by
  intro n
  simp only [A281006, Nat.add_sub_cancel]

end A281006

/-! ## A281006.P7615654056192510272

`∑{d}[n+1, #]-and(n, -2)`
-/

namespace A281006.P7615654056192510272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - Int.land (n : ℤ) (-2)

end

end A281006.P7615654056192510272

namespace A281006

/-- `∑{d}[n+1, #]-and(n, -2)` -/
def P7615654056192510272.Spec : Prop :=
  ∀ n, P7615654056192510272.a n = A281006 (n + 1)

end A281006

/-! ## A281006.P2738938970857146187

`∑{d}[n+1, #]-or(1, n)+1`
-/

namespace A281006.P2738938970857146187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (Nat.lor 1 n : ℤ) + 1

end

end A281006.P2738938970857146187

namespace A281006

/-- `∑{d}[n+1, #]-or(1, n)+1` -/
def P2738938970857146187.Spec : Prop :=
  ∀ n, P2738938970857146187.a n = A281006 (n + 1)

end A281006

/-! ## A281006.P4281470123896802214

`∑{d}[n+1, #]+n%2-n`
-/

namespace A281006.P4281470123896802214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d + n % 2 : ℕ) : ℤ) - (n : ℤ)

end

end A281006.P4281470123896802214

namespace A281006

/-- `∑{d}[n+1, #]+n%2-n` -/
def P4281470123896802214.Spec : Prop :=
  ∀ n, P4281470123896802214.a n = A281006 (n + 1)

end A281006

/-! ## A281006.P13809453761488624716

`∑{d}[n+1, #]-(n-and(1, n))`
-/

namespace A281006.P13809453761488624716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((n : ℤ) - (Nat.land 1 n : ℤ))

end

end A281006.P13809453761488624716

namespace A281006

/-- `∑{d}[n+1, #]-(n-and(1, n))` -/
def P13809453761488624716.Spec : Prop :=
  ∀ n, P13809453761488624716.a n = A281006 (n + 1)

end A281006

/-! ## A281006.P10521453937193786953

`∑{d}[n+1, round((n+2)/#)]-(n+1)`
-/

namespace A281006.P10521453937193786953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway ((n + 2 : ℚ) / (d : ℚ)) - (n + 1 : ℤ)

end

end A281006.P10521453937193786953

namespace A281006

/-- `∑{d}[n+1, round((n+2)/#)]-(n+1)` -/
def P10521453937193786953.Spec : Prop :=
  ∀ n, P10521453937193786953.a n = A281006 (n + 1)

end A281006

/-! ## A281006.P10186774065571970506

`char[2*n+1]-(n-∑{d}[n+1, #])`
-/

namespace A281006.P10186774065571970506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - ((n : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ))

end

end A281006.P10186774065571970506

namespace A281006

/-- `char[2*n+1]-(n-∑{d}[n+1, #])` -/
def P10186774065571970506.Spec : Prop :=
  ∀ n, P10186774065571970506.a n = A281006 (n + 1)

end A281006

/-! ## A281006.P9384182035676244319

`A088580(n+1)-or(1, n)`
-/

namespace A281006.P9384182035676244319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (Nat.lor 1 n : ℤ)

end

end A281006.P9384182035676244319

namespace A281006

/-- `A088580(n+1)-or(1, n)` -/
def P9384182035676244319.Spec : Prop :=
  ∀ n, P9384182035676244319.a n = A281006 (n + 1)

end A281006

/-! ## A281006.P4659125335075333662

`A001065(n+1)+gcd(2, n+1)`
-/

namespace A281006.P4659125335075333662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (Nat.gcd 2 (n + 1) : ℤ)

end

end A281006.P4659125335075333662

namespace A281006

/-- `A001065(n+1)+gcd(2, n+1)` -/
def P4659125335075333662.Spec : Prop :=
  ∀ n, P4659125335075333662.a n = A281006 (n + 1)

end A281006

/-! ## A281006.P17584665671290050211

`A001065(n+1)+A000034(n)`
-/

namespace A281006.P17584665671290050211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + A000034 n

end

end A281006.P17584665671290050211

namespace A281006

/-- `A001065(n+1)+A000034(n)` -/
def P17584665671290050211.Spec : Prop :=
  ∀ n, P17584665671290050211.a n = A281006 (n + 1)

end A281006

/-! ## A281006.P13121126303191103957

`A088580(n+1)-A109613(n)`
-/

namespace A281006.P13121126303191103957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A109613 n

end

end A281006.P13121126303191103957

namespace A281006

/-- `A088580(n+1)-A109613(n)` -/
def P13121126303191103957.Spec : Prop :=
  ∀ n, P13121126303191103957.a n = A281006 (n + 1)

theorem P13121126303191103957.correct : P13121126303191103957.Spec := by
  intro n
  simp only [A281006, Nat.add_sub_cancel, A281006.P13121126303191103957.a, A281006.P4753203276795461863.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A052928, A052928.P15665125645728880594.a, A088580, A088580.P3089093194242277422.a, A109613, A109613.P11033607296544520888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A281006

/-! ## A281006.P10232730838027301662

`A236453(n)-A024816(n+1)`
-/

namespace A281006.P10232730838027301662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n - A024816 (n + 1)

end

end A281006.P10232730838027301662

namespace A281006

/-- `A236453(n)-A024816(n+1)` -/
def P10232730838027301662.Spec : Prop :=
  ∀ n, P10232730838027301662.a n = A281006 (n + 1)

end A281006

/-! ## A281006.P8158723461929441223

`A163163(n+1)-A023645(n+1)`
-/

namespace A281006.P8158723461929441223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163163 (n + 1) - A023645 (n + 1)

end

end A281006.P8158723461929441223

namespace A281006

/-- `A163163(n+1)-A023645(n+1)` -/
def P8158723461929441223.Spec : Prop :=
  ∀ n, P8158723461929441223.a n = A281006 (n + 1)

end A281006

/-! ## A281006.P1891276474483745208

`A155085(n+1)-A042963(n+1)`
-/

namespace A281006.P1891276474483745208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - A042963 (n + 1)

end

end A281006.P1891276474483745208

namespace A281006

/-- `A155085(n+1)-A042963(n+1)` -/
def P1891276474483745208.Spec : Prop :=
  ∀ n, P1891276474483745208.a n = A281006 (n + 1)

end A281006

/-! ## A281006.P1582394475582104307

`A224880(n+1)-A047235(n+1)`
-/

namespace A281006.P1582394475582104307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224880 (n + 1) - A047235 (n + 1)

end

end A281006.P1582394475582104307

namespace A281006

/-- `A224880(n+1)-A047235(n+1)` -/
def P1582394475582104307.Spec : Prop :=
  ∀ n, P1582394475582104307.a n = A281006 (n + 1)

end A281006

/-! ## A281006.P13949938628875821455

`A387001(n+1)-A047270(n+1)`
-/

namespace A281006.P13949938628875821455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387001 (n + 1) - A047270 (n + 1)

end

end A281006.P13949938628875821455

namespace A281006

/-- `A387001(n+1)-A047270(n+1)` -/
def P13949938628875821455.Spec : Prop :=
  ∀ n, P13949938628875821455.a n = A281006 (n + 1)

end A281006

/-! ## A281006.P1484579200337040458

`A245092(2*n+1)-A052928(n)`
-/

namespace A281006.P1484579200337040458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - A052928 n

end

end A281006.P1484579200337040458

namespace A281006

/-- `A245092(2*n+1)-A052928(n)` -/
def P1484579200337040458.Spec : Prop :=
  ∀ n, P1484579200337040458.a n = A281006 (n + 1)

end A281006

/-!
# A281007: Number of middle divisors of the n-th number that has middle divisors.

The programs for A281007, there is no canonical definition to state claims against.
-/

/-! ## A281007.P16484767950011971462

`A067742(A071562(n+1))`
-/

namespace A281007.P16484767950011971462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (A071562 (n + 1)).toNat

end

end A281007.P16484767950011971462

/-! ## A281007.P9004536741886324462

`53%p?[A000041(A348406(n+1))]`
-/

namespace A281007.P9004536741886324462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A348406 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 53 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A281007.P9004536741886324462

/-! ## A281007.P8144534624505937210

`A067742(lt[0, A067742(n+1)]+1)`
-/

namespace A281007.P8144534624505937210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A281007.P8144534624505937210

/-! ## A281007.P6115290958795392098

`A067742(eq[1, A347950(n+1)]+1)`
-/

namespace A281007.P6115290958795392098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A281007.P6115290958795392098

/-! ## A281007.P12689867478100377139

`A067742(eq[2, A348364(n+1)]+1)`
-/

namespace A281007.P12689867478100377139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A281007.P12689867478100377139

/-! ## A281007.P4947081132749991299

`A348406(lt[A348327(n+1), 1]+1)-1`
-/

namespace A281007.P4947081132749991299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348327 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348406 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) - 1

end

end A281007.P4947081132749991299

/-! ## A281007.P16455946778427517372

`A067742(A244367(A282131(n+1)))`
-/

namespace A281007.P16455946778427517372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (A244367 (A282131 (n + 1)).toNat).toNat

end

end A281007.P16455946778427517372

/-! ## A281007.P16130214937964353874

`A000463(p?[A000041(A348406(n+1))])`
-/

namespace A281007.P16130214937964353874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A348406 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A281007.P16130214937964353874

/-! ## A281007.P6265750923358871978

`A000720(p?[A000041(A348406(n+1))])`
-/

namespace A281007.P6265750923358871978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A348406 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A281007.P6265750923358871978

/-! ## A281007.P13831593321505415716

`A002033(p?[A000041(A348406(n+1))])`
-/

namespace A281007.P13831593321505415716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A348406 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A281007.P13831593321505415716

/-! ## A281007.P5889982641859684500

`A003602(p?[A000041(A348406(n+1))])`
-/

namespace A281007.P5889982641859684500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A348406 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A281007.P5889982641859684500

/-! ## A281007.P9084667807154071906

`A003963(p?[A000041(A348406(n+1))])`
-/

namespace A281007.P9084667807154071906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A348406 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A281007.P9084667807154071906

/-! ## A281007.P13725635622884095289

`A004001(p?[A000041(A348406(n+1))])`
-/

namespace A281007.P13725635622884095289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A348406 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A281007.P13725635622884095289

/-! ## A281007.P16512681486909193323

`A000720(p?[A004280(A348406(n+1))])`
-/

namespace A281007.P16512681486909193323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A348406 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A281007.P16512681486909193323

/-! ## A281007.P2009823243207910636

`A000720(p?[A008578(A348406(n+1))])`
-/

namespace A281007.P2009823243207910636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A348406 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A281007.P2009823243207910636

/-! ## A281007.P8823663875684278758

`A034807(p?[A000041(A348406(n+1))])`
-/

namespace A281007.P8823663875684278758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A348406 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034807 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A281007.P8823663875684278758

/-! ## A281007.P3529171482060906338

`A049980(p?[A000041(A348406(n+1))])`
-/

namespace A281007.P3529171482060906338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A348406 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A281007.P3529171482060906338

/-! ## A281007.P7606515160795004489

`A055396(p?[A000041(A348406(n+1))])`
-/

namespace A281007.P7606515160795004489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A348406 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A281007.P7606515160795004489

/-! ## A281007.P708474492049058075

`A061395(p?[A000041(A348406(n+1))])`
-/

namespace A281007.P708474492049058075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A348406 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A281007.P708474492049058075

/-!
# A281008: Least positive integer k with exactly n odd divisors greater than sqrt(2*k).

The programs for A281008, there is no canonical definition to state claims against.
-/

/-! ## A281008.P11100788585427343521

`A280849(∑[n+1])`
-/

namespace A281008.P11100788585427343521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280849 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A281008.P11100788585427343521

/-! ## A281008.P17201311114667164102

`or(1, A280849(A025747(n)))`
-/

namespace A281008.P17201311114667164102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A280849 (A025747 n).toNat)

end

end A281008.P17201311114667164102

/-! ## A281008.P11281789942187913236

`record[A280849(∑[A028356(n)])]`
-/

namespace A281008.P11281789942187913236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028356 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280849 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281008.P11281789942187913236

/-! ## A281008.P17907097750091875776

`record[A280849(∑[A222210(n)])]`
-/

namespace A281008.P17907097750091875776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280849 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281008.P17907097750091875776

/-!
# A281009: Number of odd divisors of n minus the number of middle divisors of n.

The programs for A281009, there is no canonical definition to state claims against.
-/

/-! ## A281009.P4036852405777082958

`A001227(n+1)-A067742(n+1)`
-/

namespace A281009.P4036852405777082958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A067742 (n + 1)

end

end A281009.P4036852405777082958

/-! ## A281009.P7486408681677531407

`2*A131576(n+1)`
-/

namespace A281009.P7486408681677531407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131576 (n + 1)

end

end A281009.P7486408681677531407

/-! ## A281009.P8758151979909214204

`2*A341594(2*(n+1))`
-/

namespace A281009.P8758151979909214204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341594 (2 * (n + 1))

end

end A281009.P8758151979909214204

/-! ## A281009.P17200076268448236065

`2*A341675(2*(n+1))`
-/

namespace A281009.P17200076268448236065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341675 (2 * (n + 1))

end

end A281009.P17200076268448236065

/-! ## A281009.P5961091562454271626

`A005843(A131576(n+1))`
-/

namespace A281009.P5961091562454271626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A131576 (n + 1)).toNat

end

end A281009.P5961091562454271626

/-! ## A281009.P14930384055446677977

`A005843(A341594(2*(n+1)))`
-/

namespace A281009.P14930384055446677977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A341594 (2 * (n + 1))).toNat

end

end A281009.P14930384055446677977

/-! ## A281009.P17055562155775890707

`A067743(n+1)-A183063(n+1)`
-/

namespace A281009.P17055562155775890707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067743 (n + 1) - A183063 (n + 1)

end

end A281009.P17055562155775890707

/-! ## A281009.P13276403609024239472

`A001227(n+1)+1-A348406(n+1)`
-/

namespace A281009.P13276403609024239472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + (1 - A348406 (n + 1))

end

end A281009.P13276403609024239472

/-! ## A281009.P4322843656465332341

`2*(A001227(n+1)-A082647(n+1))`
-/

namespace A281009.P4322843656465332341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001227 (n + 1) - A082647 (n + 1))

end

end A281009.P4322843656465332341

/-! ## A281009.P8698966467639570464

`A054844(n+1)-2*A082647(n+1)`
-/

namespace A281009.P8698966467639570464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1) - 2 * A082647 (n + 1)

end

end A281009.P8698966467639570464

/-! ## A281009.P1966553688442202607

`2*(A082647(n+1)-A067742(n+1))`
-/

namespace A281009.P1966553688442202607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A082647 (n + 1) - A067742 (n + 1))

end

end A281009.P1966553688442202607

/-! ## A281009.P11299893937816242314

`A054844(n+1)/2-A067742(n+1)`
-/

namespace A281009.P11299893937816242314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054844 (n + 1) : ℚ) / 2 - (A067742 (n + 1) : ℚ)

end

end A281009.P11299893937816242314

/-! ## A281009.P1401660768715939841

`A245092(A131576(n+1)+A131576(n+1))`
-/

namespace A281009.P1401660768715939841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A131576 (n + 1) + A131576 (n + 1)).toNat

end

end A281009.P1401660768715939841

/-! ## A281009.P8734158336839354348

`A005843(A001227(n+1)-A082647(n+1))`
-/

namespace A281009.P8734158336839354348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A001227 (n + 1) - A082647 (n + 1)).toNat

end

end A281009.P8734158336839354348

/-! ## A281009.P12082886944190206879

`A005843(A082647(n+1)-A067742(n+1))`
-/

namespace A281009.P12082886944190206879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A082647 (n + 1) - A067742 (n + 1)).toNat

end

end A281009.P12082886944190206879

/-! ## A281009.P10098755076486562612

`A001227(n+1)+A131576(n+1)-A082647(n+1)`
-/

namespace A281009.P10098755076486562612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + (A131576 (n + 1) - A082647 (n + 1))

end

end A281009.P10098755076486562612

/-! ## A281009.P7364668871294853998

`A082647(n+1)+A131576(n+1)-A067742(n+1)`
-/

namespace A281009.P7364668871294853998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (n + 1) + (A131576 (n + 1) - A067742 (n + 1))

end

end A281009.P7364668871294853998

/-! ## A281009.P6388356580818382143

`A060831(n+1)-(A067742(n+1)+A060831(n))`
-/

namespace A281009.P6388356580818382143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (n + 1) - (A067742 (n + 1) + A060831 n)

end

end A281009.P6388356580818382143

/-! ## A281009.P9169170672215912466

`2/(n+1)*A352505(n+1)`
-/

namespace A281009.P9169170672215912466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A352505 (n + 1) : ℚ)

end

end A281009.P9169170672215912466

/-! ## A281009.P5576847320140588852

`A348515(2*(n+1))+A038548(2*(n+1))`
-/

namespace A281009.P5576847320140588852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348515 (2 * (n + 1)) + A038548 (2 * (n + 1))

end

end A281009.P5576847320140588852

/-!
# A281010: Triangle read by rows in which row 2n-1 lists the widths of the symmetric representation of sigma(n), and row 2n lists a finite sequence S together with -1, with the property that the partial sums of S give the row 2n-1.

The programs for A281010, there is no canonical definition to state claims against.
-/

/-! ## A281010.P18257600857121315316

`A038498(C(A252463(n+1), A078898(2*n+3)))`
-/

namespace A281010.P18257600857121315316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (Nat.choose (A252463 (n + 1)).toNat (A078898 (2 * n + 3)).toNat)

end

end A281010.P18257600857121315316

/-!
# A281011: Triangle read by rows in which row n lists the boundaries of the subparts of the symmetric representation of sigma(n). (See Comments for precise definition).

The programs for A281011, there is no canonical definition to state claims against.
-/

/-! ## A281011.P13223099456401152740

`A281010(round(sqrt(n+1))²+1+n)`
-/

namespace A281011.P13223099456401152740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281010 (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + 1 + (n : ℤ)).toNat

end

end A281011.P13223099456401152740

/-! ## A281011.P5921972804147211865

`A281010(A007607(n+1))^3`
-/

namespace A281011.P5921972804147211865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281010 (A007607 (n + 1)).toNat ^ 3

end

end A281011.P5921972804147211865

/-! ## A281011.P16826952316113957894

`A281010(A007607(2*n-n+1))%2`
-/

namespace A281011.P16826952316113957894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281010 (A007607 ((2 * n : ℤ) - (n : ℤ) + 1).toNat).toNat) 2

end

end A281011.P16826952316113957894

/-! ## A281011.P16630316852315495908

`or(A000007(n), A281010(A007607(n+1)))`
-/

namespace A281011.P16630316852315495908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A281010 (A007607 (n + 1)).toNat)

end

end A281011.P16630316852315495908

/-! ## A281011.P14509451262551714666

`abs(A033999(n))*A281010(A007607(n+1))`
-/

namespace A281011.P14509451262551714666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n| * A281010 (A007607 (n + 1)).toNat

end

end A281011.P14509451262551714666

/-! ## A281011.P11740049660531129496

`A281010(A007607(n+1))+A000007(n+1)`
-/

namespace A281011.P11740049660531129496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281010 (A007607 (n + 1)).toNat + A000007 (n + 1)

end

end A281011.P11740049660531129496

/-! ## A281011.P17243334773989482978

`A281010(A007607(n+1))+A008683(4*(n+1))`
-/

namespace A281011.P17243334773989482978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281010 (A007607 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A281011.P17243334773989482978

/-! ## A281011.P2572716752340631807

`A281010(A007607(n+1))+A142150(2*n+3)`
-/

namespace A281011.P2572716752340631807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281010 (A007607 (n + 1)).toNat + A142150 (2 * n + 3)

end

end A281011.P2572716752340631807

/-!
# A281012: Zig-zag path that we can find descending by the main diagonal of the pyramid described in A245092.

The programs for A281012, there is no canonical definition to state claims against.
-/

/-! ## A281012.P6594304384885810629

`gcd(A016727(n), A038722(A289249(n)))`
-/

namespace A281012.P6594304384885810629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016727 n) (A038722 (A289249 n).toNat)

end

end A281012.P6594304384885810629

/-! ## A281012.P3681266547451532211

`A001221(A163511(n)+A134274(n+1))`
-/

namespace A281012.P3681266547451532211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A163511 n + A134274 (n + 1)).toNat

end

end A281012.P3681266547451532211

/-! ## A281012.P11517878063992812235

`A269971(A280098(n+1)*A329317(n+1))`
-/

namespace A281012.P11517878063992812235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269971 (A280098 (n + 1) * A329317 (n + 1)).toNat

end

end A281012.P11517878063992812235

/-! ## A281012.P7513523611267141798

`A237442(or(A144274(n+1), A182850(3*(n+1))))`
-/

namespace A281012.P7513523611267141798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237442 (Int.lor (A144274 (n + 1)) (A182850 (3 * (n + 1)))).toNat

end

end A281012.P7513523611267141798

/-! ## A281012.P1025042916967110800

`A073058(A062378(3*n+1)*A188843(3*n+5))`
-/

namespace A281012.P1025042916967110800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073058 (A062378 (3 * n + 1) * A188843 (3 * n + 5)).toNat

end

end A281012.P1025042916967110800

/-!
# A281013: Tetrangle T(n,k,i) = i-th part of k-th prime composition of n.

The programs for A281013, there is no canonical definition to state claims against.
-/

/-! ## A281013.P3577207212863463413

`gcd(A031780(n+1), A200406(∏{p}[n+1, #]))`
-/

namespace A281013.P3577207212863463413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A031780 (n + 1)) (A200406 (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A281013.P3577207212863463413

/-! ## A281013.P14606116586802452764

`gcd(A031780(n+1), A102659(A289000(n)))`
-/

namespace A281013.P14606116586802452764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A031780 (n + 1)) (A102659 (A289000 n).toNat)

end

end A281013.P14606116586802452764

/-! ## A281013.P16789885219022330122

`A001511(A273880(3*n+4)-A273916(n))`
-/

namespace A281013.P16789885219022330122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A273880 (3 * n + 4) - A273916 n).toNat

end

end A281013.P16789885219022330122

/-! ## A281013.P5669859742034605971

`gcd(A039900(xor(1, n)), A200406(n+1))`
-/

namespace A281013.P5669859742034605971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039900 (Nat.xor 1 n)) (A200406 (n + 1))

end

end A281013.P5669859742034605971

/-! ## A281013.P2981090705620993902

`A279387(A006530((4*n+1)²*Δ[n²]))`
-/

namespace A281013.P2981090705620993902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279387 (A006530 (((4 * n + 1) ^ 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat).toNat

end

end A281013.P2981090705620993902

/-!
# A281014: Numbers with both prime number of 0's and prime number of 1's in their binary reflected Gray code representation.

The programs for A281014, the canonical program `A281014.P10699821202680531726` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281014 has offset 1).

The definition of A281014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3400 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281014.P10699821202680531726

`∩[A280998(n+1), A280999(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A281014

/-- `∩[A280998(n+1), A280999(n+1)]` -/
def P10699821202680531726.Spec : Prop :=
  ∀ n, (P10699821202680531726.a n : ℤ) = A281014 (n + 1)

theorem P10699821202680531726.correct : P10699821202680531726.Spec := by
  intro n
  simp only [A281014, Nat.add_sub_cancel]

end A281014

/-!
# A281015: Numbers with a prime number of dots in their International Morse numeral representation.

The programs for A281015, the canonical program `A281015.P10066570336643123850` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281015 has offset 1).

The definition of A281015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3444 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281015.P10066570336643123850

`eq[1, ∑{e}[∑{digits}[n, 5-abs(5-#)], #]]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281015

/-- `eq[1, ∑{e}[∑{digits}[n, 5-abs(5-#)], #]]` -/
def P10066570336643123850.Spec : Prop :=
  ∀ n, (P10066570336643123850.a n : ℤ) = A281015 (n + 1)

theorem P10066570336643123850.correct : P10066570336643123850.Spec := by
  intro n
  simp only [A281015, Nat.add_sub_cancel]

end A281015

/-! ## A281015.P1067700733655564183

`eq[2, A005128(∑{digits}[n, 5-abs(5-#)])]`
-/

namespace A281015.P1067700733655564183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => 5 - |5 - (x : ℤ)|).sum.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281015.P1067700733655564183

namespace A281015

/-- `eq[2, A005128(∑{digits}[n, 5-abs(5-#)])]` -/
def P1067700733655564183.Spec : Prop :=
  ∀ n, (P1067700733655564183.a n : ℤ) = A281015 (n + 1)

end A281015

/-! ## A281015.P17298169828694116413

`eq[0, A051699(A280913(n))]`
-/

namespace A281015.P17298169828694116413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A280913 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281015.P17298169828694116413

namespace A281015

/-- `eq[0, A051699(A280913(n))]` -/
def P17298169828694116413.Spec : Prop :=
  ∀ n, (P17298169828694116413.a n : ℤ) = A281015 (n + 1)

end A281015

/-! ## A281015.P2173752082857357295

`eq[2, A074206(A280913(n)²)]`
-/

namespace A281015.P2173752082857357295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A280913 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281015.P2173752082857357295

namespace A281015

/-- `eq[2, A074206(A280913(n)²)]` -/
def P2173752082857357295.Spec : Prop :=
  ∀ n, (P2173752082857357295.a n : ℤ) = A281015 (n + 1)

end A281015

/-! ## A281015.P11944990952994300334

`eq[3, ∑{d}[A280913(n), A347087(#)]]`
-/

namespace A281015.P11944990952994300334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280913 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n).natAbs, A347087 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281015.P11944990952994300334

namespace A281015

/-- `eq[3, ∑{d}[A280913(n), A347087(#)]]` -/
def P11944990952994300334.Spec : Prop :=
  ∀ n, (P11944990952994300334.a n : ℤ) = A281015 (n + 1)

end A281015

/-! ## A281015.P12987787849338788931

`eq[1, A001222(A280913(n+1))]+1`
-/

namespace A281015.P12987787849338788931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A280913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A281015.P12987787849338788931

namespace A281015

/-- `eq[1, A001222(A280913(n+1))]+1` -/
def P12987787849338788931.Spec : Prop :=
  ∀ n, (P12987787849338788931.a n : ℤ) = A281015 (n + 1)

end A281015

/-! ## A281015.P13774007035613915140

`eq[A077462(A280913(n)), A178815(n+1)]`
-/

namespace A281015.P13774007035613915140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A280913 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281015.P13774007035613915140

namespace A281015

/-- `eq[A077462(A280913(n)), A178815(n+1)]` -/
def P13774007035613915140.Spec : Prop :=
  ∀ n, (P13774007035613915140.a n : ℤ) = A281015 (n + 1)

end A281015

/-!
# A281016: Numbers k such that k, phi(k) and cototient(k) are all perfect powers.

The programs for A281016, there is no canonical definition to state claims against.
-/

/-! ## A281016.P18336942811873096958

`∩[A025475(n+1), A065528(n+1)]`
-/

namespace A281016.P18336942811873096958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281016.P18336942811873096958

/-! ## A281016.P17677029858829072724

`∩[A065528(n+1), A134611(n+1)]`
-/

namespace A281016.P17677029858829072724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281016.P17677029858829072724

/-! ## A281016.P8278642867159993405

`∩[A065528(n+1), A134612(n+1)]`
-/

namespace A281016.P8278642867159993405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281016.P8278642867159993405

/-! ## A281016.P242898613723664471

`∩[A134612(n+1), A166955(n+1)]`
-/

namespace A281016.P242898613723664471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281016.P242898613723664471

/-! ## A281016.P16289660763894984528

`∩[A065528(n+1), A246067(n+1)]`
-/

namespace A281016.P16289660763894984528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281016.P16289660763894984528

/-!
# A281017: Numbers with a prime number of dashes in their International Morse numeral representation.

The programs for A281017, the canonical program `A281017.P7289956237185605220` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281017 has offset 1).

The definition of A281017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3511 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281017.P1967633108966113822

`eq[1, A003415(A280916(n))]`
-/

namespace A281017.P1967633108966113822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A280916 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281017.P1967633108966113822

namespace A281017

/-- `eq[1, A003415(A280916(n))]` -/
def P1967633108966113822.Spec : Prop :=
  ∀ n, (P1967633108966113822.a n : ℤ) = A281017 (n + 1)

end A281017

/-! ## A281017.P7289956237185605220

`eq[2, A032741(A280916(n)²)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A281017

/-- `eq[2, A032741(A280916(n)²)]` -/
def P7289956237185605220.Spec : Prop :=
  ∀ n, (P7289956237185605220.a n : ℤ) = A281017 (n + 1)

theorem P7289956237185605220.correct : P7289956237185605220.Spec := by
  intro n
  simp only [A281017, Nat.add_sub_cancel]

end A281017

/-! ## A281017.P5853077171494458125

`eq[2, A074206(A280916(n)²)]`
-/

namespace A281017.P5853077171494458125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A280916 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281017.P5853077171494458125

namespace A281017

/-- `eq[2, A074206(A280916(n)²)]` -/
def P5853077171494458125.Spec : Prop :=
  ∀ n, (P5853077171494458125.a n : ℤ) = A281017 (n + 1)

end A281017

/-! ## A281017.P1451244165801386387

`eq[3, A077462(A280916(n)²)]`
-/

namespace A281017.P1451244165801386387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A280916 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281017.P1451244165801386387

namespace A281017

/-- `eq[3, A077462(A280916(n)²)]` -/
def P1451244165801386387.Spec : Prop :=
  ∀ n, (P1451244165801386387.a n : ℤ) = A281017 (n + 1)

end A281017

/-! ## A281017.P2823545567252642500

`eq[0, A051699(5*A055642(n)-A280913(n))]`
-/

namespace A281017.P2823545567252642500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (5 * A055642 n - A280913 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281017.P2823545567252642500

namespace A281017

/-- `eq[0, A051699(5*A055642(n)-A280913(n))]` -/
def P2823545567252642500.Spec : Prop :=
  ∀ n, (P2823545567252642500.a n : ℤ) = A281017 (n + 1)

end A281017

/-!
# A281018: Numbers with a prime number of dots and a prime number of dashes in their International Morse numeral representation.

The programs for A281018, the canonical program `A281018.P7272843195360736797` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281018 has offset 1).

The definition of A281018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1704 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281018.P7272843195360736797

`∩[A281015(n+1), A281017(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A281018

/-- `∩[A281015(n+1), A281017(n+1)]` -/
def P7272843195360736797.Spec : Prop :=
  ∀ n, (P7272843195360736797.a n : ℤ) = A281018 (n + 1)

theorem P7272843195360736797.correct : P7272843195360736797.Spec := by
  intro n
  simp only [A281018, Nat.add_sub_cancel]

end A281018

/-! ## A281018.P6222185927536908647

`A281017(n+2)-A014031(A056759(n+1))`
-/

namespace A281018.P6222185927536908647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281017 (n + 2) - A014031 (A056759 (n + 1)).toNat

end

end A281018.P6222185927536908647

namespace A281018

/-- `A281017(n+2)-A014031(A056759(n+1))` -/
def P6222185927536908647.Spec : Prop :=
  ∀ n, P6222185927536908647.a n = A281018 (n + 1)

end A281018

/-! ## A281018.P9455899877314466136

`A281017(n+2)%p?[A087065(n)]`
-/

namespace A281018.P9455899877314466136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281017 (n + 2)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A281018.P9455899877314466136

namespace A281018

/-- `A281017(n+2)%p?[A087065(n)]` -/
def P9455899877314466136.Spec : Prop :=
  ∀ n, P9455899877314466136.a n = A281018 (n + 1)

end A281018

/-! ## A281018.P5112767310708198844

`A001222(A066195(n))*A281017(n+2)`
-/

namespace A281018.P5112767310708198844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A066195 n).toNat * A281017 (n + 2)

end

end A281018.P5112767310708198844

namespace A281018

/-- `A001222(A066195(n))*A281017(n+2)` -/
def P5112767310708198844.Spec : Prop :=
  ∀ n, P5112767310708198844.a n = A281018 (n + 1)

end A281018

/-! ## A281018.P11623810717690568312

`A281017(n+2)*A293810(A011782(n))`
-/

namespace A281018.P11623810717690568312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281017 (n + 2) * A293810 (A011782 n).toNat

end

end A281018.P11623810717690568312

namespace A281018

/-- `A281017(n+2)*A293810(A011782(n))` -/
def P11623810717690568312.Spec : Prop :=
  ∀ n, P11623810717690568312.a n = A281018 (n + 1)

end A281018

/-!
# A281019: Partial products of A051953; a(1) = 1.

The programs for A281019, the canonical program `A281019.P3294416278922020862` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281019 has offset 1).

The definition of A281019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281019.P18037598348424886161

`(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)*a(n-1)` with `a(0)=1`
-/

namespace A281019.P18037598348424886161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ)) * a (n - 1)

end

end A281019.P18037598348424886161

namespace A281019

/-- `(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)*a(n-1)` -/
def P18037598348424886161.Spec : Prop :=
  ∀ n, P18037598348424886161.a n = (A281019 (n + 1) : ℚ)

end A281019

/-! ## A281019.P3294416278922020862

`∏[A016035(n+1)+1]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A281019

/-- `∏[A016035(n+1)+1]` -/
def P3294416278922020862.Spec : Prop :=
  ∀ n, P3294416278922020862.a n = A281019 (n + 1)

theorem P3294416278922020862.correct : P3294416278922020862.Spec := by
  intro n
  simp only [A281019, Nat.add_sub_cancel]

end A281019

/-! ## A281019.P6697286025142200321

`a(n-2)*A082849(n)` with `a(0)=1, a(1)=1`
-/

namespace A281019.P6697286025142200321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A082849 n

end

end A281019.P6697286025142200321

namespace A281019

/-- `a(n-2)*A082849(n)` -/
def P6697286025142200321.Spec : Prop :=
  ∀ n, P6697286025142200321.a n = A281019 (n + 1)

end A281019

/-! ## A281019.P12500046869212093919

`∏[floor(A051953(n+1)+acot(n))]`
-/

namespace A281019.P12500046869212093919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051953 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A281019.P12500046869212093919

namespace A281019

/-- `∏[floor(A051953(n+1)+acot(n))]` -/
def P12500046869212093919.Spec : Prop :=
  ∀ n, P12500046869212093919.a n = A281019 (n + 1)

end A281019

/-! ## A281019.P5789589545646567366

`(A219428(n+1)+1)*a(n-1)` with `a(0)=1`
-/

namespace A281019.P5789589545646567366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A219428 (n + 1) + 1) * a (n - 1)

end

end A281019.P5789589545646567366

namespace A281019

/-- `(A219428(n+1)+1)*a(n-1)` -/
def P5789589545646567366.Spec : Prop :=
  ∀ n, P5789589545646567366.a n = A281019 (n + 1)

end A281019

/-! ## A281019.P2222143394632763175

`(A062830(n+1)-1)*a(n-1)` with `a(0)=1`
-/

namespace A281019.P2222143394632763175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A062830 (n + 1) - 1) * a (n - 1)

end

end A281019.P2222143394632763175

namespace A281019

/-- `(A062830(n+1)-1)*a(n-1)` -/
def P2222143394632763175.Spec : Prop :=
  ∀ n, P2222143394632763175.a n = A281019 (n + 1)

end A281019

/-! ## A281019.P12732833046583521152

`a(n-1)*A319700(2*(n+1))` with `a(0)=1`
-/

namespace A281019.P12732833046583521152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A319700 (2 * (n + 1))

end

end A281019.P12732833046583521152

namespace A281019

/-- `a(n-1)*A319700(2*(n+1))` -/
def P12732833046583521152.Spec : Prop :=
  ∀ n, P12732833046583521152.a n = A281019 (n + 1)

end A281019

/-! ## A281019.P6008230598440803957

`(n-A109606(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A281019.P6008230598440803957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - A109606 (n + 1)) * a (n - 1)

end

end A281019.P6008230598440803957

namespace A281019

/-- `(n-A109606(n+1))*a(n-1)` -/
def P6008230598440803957.Spec : Prop :=
  ∀ n, P6008230598440803957.a n = A281019 (n + 1)

end A281019

/-! ## A281019.P5133965977688919273

`∏[n+1-A000010(n+1)%(n+1)]`
-/

namespace A281019.P5133965977688919273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A000010 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A281019.P5133965977688919273

namespace A281019

/-- `∏[n+1-A000010(n+1)%(n+1)]` -/
def P5133965977688919273.Spec : Prop :=
  ∀ n, P5133965977688919273.a n = A281019 (n + 1)

end A281019

/-! ## A281019.P10000598021929924124

`(2-A039649(n+1)+n)*a(n-1)` with `a(0)=1`
-/

namespace A281019.P10000598021929924124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 - A039649 (n + 1) + (n : ℤ)) * a (n - 1)

end

end A281019.P10000598021929924124

namespace A281019

/-- `(2-A039649(n+1)+n)*a(n-1)` -/
def P10000598021929924124.Spec : Prop :=
  ∀ n, P10000598021929924124.a n = A281019 (n + 1)

end A281019

/-! ## A281019.P17268706985671567640

`(n+1-A000010(lcm(2, n+1)))*a(n-1)` with `a(0)=1`
-/

namespace A281019.P17268706985671567640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1 : ℤ) - A000010 (Nat.lcm 2 (n + 1))) * a (n - 1)

end

end A281019.P17268706985671567640

namespace A281019

/-- `(n+1-A000010(lcm(2, n+1)))*a(n-1)` -/
def P17268706985671567640.Spec : Prop :=
  ∀ n, P17268706985671567640.a n = A281019 (n + 1)

end A281019

/-! ## A281019.P12945333272752922156

`(n+1-A000010(C(n+1, n)))*a(n-1)` with `a(0)=1`
-/

namespace A281019.P12945333272752922156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1 : ℤ) - A000010 (Nat.choose (n + 1) n)) * a (n - 1)

end

end A281019.P12945333272752922156

namespace A281019

/-- `(n+1-A000010(C(n+1, n)))*a(n-1)` -/
def P12945333272752922156.Spec : Prop :=
  ∀ n, P12945333272752922156.a n = A281019 (n + 1)

end A281019

/-! ## A281019.P633021141203214436

`(n+1-A000010(2*n+1-n))*a(n-1)` with `a(0)=1`
-/

namespace A281019.P633021141203214436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1 : ℤ) - A000010 (2 * n + 1 - n)) * a (n - 1)

end

end A281019.P633021141203214436

namespace A281019

/-- `(n+1-A000010(2*n+1-n))*a(n-1)` -/
def P633021141203214436.Spec : Prop :=
  ∀ n, P633021141203214436.a n = A281019 (n + 1)

end A281019

/-! ## A281019.P4725490843720082257

`∏[A028310(A051953(n+1))]`
-/

namespace A281019.P4725490843720082257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A051953 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A281019.P4725490843720082257

namespace A281019

/-- `∏[A028310(A051953(n+1))]` -/
def P4725490843720082257.Spec : Prop :=
  ∀ n, P4725490843720082257.a n = A281019 (n + 1)

end A281019

/-! ## A281019.P2637970430526289470

`∏[A137735(A051953(n+1)²)]`
-/

namespace A281019.P2637970430526289470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A051953 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A281019.P2637970430526289470

namespace A281019

/-- `∏[A137735(A051953(n+1)²)]` -/
def P2637970430526289470.Spec : Prop :=
  ∀ n, P2637970430526289470.a n = A281019 (n + 1)

end A281019

/-! ## A281019.P332517045074595151

`∏[A051953(n+1)+A000007(n)]`
-/

namespace A281019.P332517045074595151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A281019.P332517045074595151

namespace A281019

/-- `∏[A051953(n+1)+A000007(n)]` -/
def P332517045074595151.Spec : Prop :=
  ∀ n, P332517045074595151.a n = A281019 (n + 1)

end A281019

/-! ## A281019.P9674254361088842578

`∏[A028310(n-A109606(n+1))]`
-/

namespace A281019.P9674254361088842578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) - A109606 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A281019.P9674254361088842578

namespace A281019

/-- `∏[A028310(n-A109606(n+1))]` -/
def P9674254361088842578.Spec : Prop :=
  ∀ n, P9674254361088842578.a n = A281019 (n + 1)

end A281019

/-! ## A281019.P6328544836502423344

`∏[A028310(n)+1-A000010(n+1)]`
-/

namespace A281019.P6328544836502423344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (1 - A000010 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A281019.P6328544836502423344

namespace A281019

/-- `∏[A028310(n)+1-A000010(n+1)]` -/
def P6328544836502423344.Spec : Prop :=
  ∀ n, P6328544836502423344.a n = A281019 (n + 1)

end A281019

/-! ## A281019.P90501302623372856

`∏[A263997(2*(n+1))-A000010(n+1)]`
-/

namespace A281019.P90501302623372856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263997 (2 * (n + 1)) - A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A281019.P90501302623372856

namespace A281019

/-- `∏[A263997(2*(n+1))-A000010(n+1)]` -/
def P90501302623372856.Spec : Prop :=
  ∀ n, P90501302623372856.a n = A281019 (n + 1)

end A281019

/-! ## A281019.P4199513626250571774

`∏[A004280(n+2)-(A000010(n+1)+n)]`
-/

namespace A281019.P4199513626250571774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 2) - (A000010 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A281019.P4199513626250571774

namespace A281019

/-- `∏[A004280(n+2)-(A000010(n+1)+n)]` -/
def P4199513626250571774.Spec : Prop :=
  ∀ n, P4199513626250571774.a n = A281019 (n + 1)

end A281019

/-!
# A281020: Numbers with a prime number of raised dots in their Braille representation.

The programs for A281020, the canonical program `A281020.P16220256379266101386` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281020 has offset 1).

The definition of A281020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281020.P2604737517606787470

`eq[1, A001055(A072283(n))]`
-/

namespace A281020.P2604737517606787470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A072283 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281020.P2604737517606787470

namespace A281020

/-- `eq[1, A001055(A072283(n))]` -/
def P2604737517606787470.Spec : Prop :=
  ∀ n, (P2604737517606787470.a n : ℤ) = A281020 (n + 1)

end A281020

/-! ## A281020.P1911016173855430202

`eq[2, A038548(A072283(n)²)]`
-/

namespace A281020.P1911016173855430202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A072283 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281020.P1911016173855430202

namespace A281020

/-- `eq[2, A038548(A072283(n)²)]` -/
def P1911016173855430202.Spec : Prop :=
  ∀ n, (P1911016173855430202.a n : ℤ) = A281020 (n + 1)

end A281020

/-! ## A281020.P7934760881579023710

`eq[2, A290085(A072283(n)²)]`
-/

namespace A281020.P7934760881579023710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290085 (A072283 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281020.P7934760881579023710

namespace A281020

/-- `eq[2, A290085(A072283(n)²)]` -/
def P7934760881579023710.Spec : Prop :=
  ∀ n, (P7934760881579023710.a n : ℤ) = A281020 (n + 1)

end A281020

/-! ## A281020.P3736548867521673903

`eq[2, A038548(2*A072283(n))]`
-/

namespace A281020.P3736548867521673903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (2 * A072283 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281020.P3736548867521673903

namespace A281020

/-- `eq[2, A038548(2*A072283(n))]` -/
def P3736548867521673903.Spec : Prop :=
  ∀ n, (P3736548867521673903.a n : ℤ) = A281020 (n + 1)

end A281020

/-! ## A281020.P16220256379266101386

`eq[A006530(A072283(n)²), A072283(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A281020

/-- `eq[A006530(A072283(n)²), A072283(n)]` -/
def P16220256379266101386.Spec : Prop :=
  ∀ n, (P16220256379266101386.a n : ℤ) = A281020 (n + 1)

theorem P16220256379266101386.correct : P16220256379266101386.Spec := by
  intro n
  simp only [A281020, Nat.add_sub_cancel]

end A281020

/-! ## A281020.P10167195427647936358

`eq[A006530(2*A072283(n)), A072283(n)]`
-/

namespace A281020.P10167195427647936358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A072283 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281020.P10167195427647936358

namespace A281020

/-- `eq[A006530(2*A072283(n)), A072283(n)]` -/
def P10167195427647936358.Spec : Prop :=
  ∀ n, (P10167195427647936358.a n : ℤ) = A281020 (n + 1)

end A281020

/-!
# A281021: Primes k with (say) j digits that produce two other primes, x and y, from the sums x = Sum_{i=1..j} (k mod 10^i) and y = Sum_{i=0..j-1} (floor(k/10^i)).

The programs for A281021, there is no canonical definition to state claims against.
-/

/-! ## A281021.P16109022136244239693

`A197300(A300902(n+1))`
-/

namespace A281021.P16109022136244239693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197300 (A300902 (n + 1)).toNat

end

end A281021.P16109022136244239693

/-! ## A281021.P11330570269200749654

`p?[∑[A001222(A023426(n))!]]`
-/

namespace A281021.P11330570269200749654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001222 (A023426 n).toNat).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A281021.P11330570269200749654

/-!
# A281022: Single (or isolated or non-twin) primes that are also safe primes.

The programs for A281022, the canonical program `A281022.P5626948431027533782` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281022 has offset 1).

The definition of A281022 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230117, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A281022.P5626948431027533782

`2*A230117(n+2)+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A281022

/-- `2*A230117(n+2)+1` -/
def P5626948431027533782.Spec : Prop :=
  ∀ n, P5626948431027533782.a n = A281022 (n + 1)

theorem P5626948431027533782.correct : P5626948431027533782.Spec := by
  intro n
  simp only [A281022, Nat.add_sub_cancel]

end A281022

/-! ## A281022.P2269342749638970988

`∩[A005385(n+1), A090191(n+1)]`
-/

namespace A281022.P2269342749638970988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281022.P2269342749638970988

namespace A281022

/-- `∩[A005385(n+1), A090191(n+1)]` -/
def P2269342749638970988.Spec : Prop :=
  ∀ n, (P2269342749638970988.a n : ℤ) = A281022 (n + 1)

end A281022

/-! ## A281022.P18078671029198703417

`∩[A005385(n+1), A121762(n+1)]`
-/

namespace A281022.P18078671029198703417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281022.P18078671029198703417

namespace A281022

/-- `∩[A005385(n+1), A121762(n+1)]` -/
def P18078671029198703417.Spec : Prop :=
  ∀ n, (P18078671029198703417.a n : ℤ) = A281022 (n + 1)

end A281022

/-! ## A281022.P9174268944713633408

`∩[A065966(n+1), A090191(n+1)]`
-/

namespace A281022.P9174268944713633408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281022.P9174268944713633408

namespace A281022

/-- `∩[A065966(n+1), A090191(n+1)]` -/
def P9174268944713633408.Spec : Prop :=
  ∀ n, (P9174268944713633408.a n : ℤ) = A281022 (n + 1)

end A281022

/-! ## A281022.P7672647655877326807

`∩[A079148(n+1), A090191(n+1)]`
-/

namespace A281022.P7672647655877326807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281022.P7672647655877326807

namespace A281022

/-- `∩[A079148(n+1), A090191(n+1)]` -/
def P7672647655877326807.Spec : Prop :=
  ∀ n, (P7672647655877326807.a n : ℤ) = A281022 (n + 1)

end A281022

/-! ## A281022.P7404443156882799962

`∩[A079149(n+1), A090191(n+1)]`
-/

namespace A281022.P7404443156882799962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281022.P7404443156882799962

namespace A281022

/-- `∩[A079149(n+1), A090191(n+1)]` -/
def P7404443156882799962.Spec : Prop :=
  ∀ n, (P7404443156882799962.a n : ℤ) = A281022 (n + 1)

end A281022

/-! ## A281022.P13930537002477651427

`∩[A084441(n+1), A090191(n+1)]`
-/

namespace A281022.P13930537002477651427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281022.P13930537002477651427

namespace A281022

/-- `∩[A084441(n+1), A090191(n+1)]` -/
def P13930537002477651427.Spec : Prop :=
  ∀ n, (P13930537002477651427.a n : ℤ) = A281022 (n + 1)

end A281022

/-! ## A281022.P15288990001312429353

`∩[A084442(n+1), A090191(n+1)]`
-/

namespace A281022.P15288990001312429353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281022.P15288990001312429353

namespace A281022

/-- `∩[A084442(n+1), A090191(n+1)]` -/
def P15288990001312429353.Spec : Prop :=
  ∀ n, (P15288990001312429353.a n : ℤ) = A281022 (n + 1)

end A281022

/-! ## A281022.P14209016520743057441

`∩[A065966(n+1), A121762(n+1)]`
-/

namespace A281022.P14209016520743057441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281022.P14209016520743057441

namespace A281022

/-- `∩[A065966(n+1), A121762(n+1)]` -/
def P14209016520743057441.Spec : Prop :=
  ∀ n, (P14209016520743057441.a n : ℤ) = A281022 (n + 1)

end A281022

/-! ## A281022.P4582910113592934866

`∩[A079148(n+1), A121762(n+1)]`
-/

namespace A281022.P4582910113592934866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281022.P4582910113592934866

namespace A281022

/-- `∩[A079148(n+1), A121762(n+1)]` -/
def P4582910113592934866.Spec : Prop :=
  ∀ n, (P4582910113592934866.a n : ℤ) = A281022 (n + 1)

end A281022

/-! ## A281022.P7374708874510266893

`∩[A079149(n+1), A121762(n+1)]`
-/

namespace A281022.P7374708874510266893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281022.P7374708874510266893

namespace A281022

/-- `∩[A079149(n+1), A121762(n+1)]` -/
def P7374708874510266893.Spec : Prop :=
  ∀ n, (P7374708874510266893.a n : ℤ) = A281022 (n + 1)

end A281022

/-! ## A281022.P6080707933132091641

`∩[A090191(n+1), A161897(n+1)]`
-/

namespace A281022.P6080707933132091641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281022.P6080707933132091641

namespace A281022

/-- `∩[A090191(n+1), A161897(n+1)]` -/
def P6080707933132091641.Spec : Prop :=
  ∀ n, (P6080707933132091641.a n : ℤ) = A281022 (n + 1)

end A281022

/-! ## A281022.P15586336876828905361

`∩[A090191(n+1), A167609(n+1)]`
-/

namespace A281022.P15586336876828905361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281022.P15586336876828905361

namespace A281022

/-- `∩[A090191(n+1), A167609(n+1)]` -/
def P15586336876828905361.Spec : Prop :=
  ∀ n, (P15586336876828905361.a n : ℤ) = A281022 (n + 1)

end A281022

/-! ## A281022.P12089828352508114032

`∩[A121762(n+1), A167609(n+1)]`
-/

namespace A281022.P12089828352508114032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281022.P12089828352508114032

namespace A281022

/-- `∩[A121762(n+1), A167609(n+1)]` -/
def P12089828352508114032.Spec : Prop :=
  ∀ n, (P12089828352508114032.a n : ℤ) = A281022 (n + 1)

end A281022

/-! ## A281022.P15449349066861493575

`∩[A090191(n+1), A391049(n+1)]`
-/

namespace A281022.P15449349066861493575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281022.P15449349066861493575

namespace A281022

/-- `∩[A090191(n+1), A391049(n+1)]` -/
def P15449349066861493575.Spec : Prop :=
  ∀ n, (P15449349066861493575.a n : ℤ) = A281022 (n + 1)

end A281022

/-! ## A281022.P6387127671274220819

`∩[A090191(n+1), A395563(n+1)]`
-/

namespace A281022.P6387127671274220819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281022.P6387127671274220819

namespace A281022

/-- `∩[A090191(n+1), A395563(n+1)]` -/
def P6387127671274220819.Spec : Prop :=
  ∀ n, (P6387127671274220819.a n : ℤ) = A281022 (n + 1)

end A281022

/-! ## A281022.P14612875778756846115

`∩[A121762(n+1), A391049(n+1)]`
-/

namespace A281022.P14612875778756846115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281022.P14612875778756846115

namespace A281022

/-- `∩[A121762(n+1), A391049(n+1)]` -/
def P14612875778756846115.Spec : Prop :=
  ∀ n, (P14612875778756846115.a n : ℤ) = A281022 (n + 1)

end A281022

/-! ## A281022.P7908921163023320663

`∩[A121762(n+1), A395563(n+1)]`
-/

namespace A281022.P7908921163023320663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281022.P7908921163023320663

namespace A281022

/-- `∩[A121762(n+1), A395563(n+1)]` -/
def P7908921163023320663.Spec : Prop :=
  ∀ n, (P7908921163023320663.a n : ℤ) = A281022 (n + 1)

end A281022

/-! ## A281022.P13180409087135047920

`∩[A072055(n+1), A090191(n+1)]`
-/

namespace A281022.P13180409087135047920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281022.P13180409087135047920

namespace A281022

/-- `∩[A072055(n+1), A090191(n+1)]` -/
def P13180409087135047920.Spec : Prop :=
  ∀ n, (P13180409087135047920.a n : ℤ) = A281022 (n + 1)

end A281022

/-! ## A281022.P8796492870602933595

`∩[A072055(n+1), A121762(n+1)]`
-/

namespace A281022.P8796492870602933595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281022.P8796492870602933595

namespace A281022

/-- `∩[A072055(n+1), A121762(n+1)]` -/
def P8796492870602933595.Spec : Prop :=
  ∀ n, (P8796492870602933595.a n : ℤ) = A281022 (n + 1)

end A281022

/-!
# A281023: Partial sums of A067392.

The programs for A281023, the canonical program `A281023.P5406655693289314768` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281023 has offset 1).

The definition of A281023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281023.P5406655693289314768

`∑[A067392(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A281023

/-- `∑[A067392(n+1)]` -/
def P5406655693289314768.Spec : Prop :=
  ∀ n, P5406655693289314768.a n = A281023 (n + 1)

theorem P5406655693289314768.correct : P5406655693289314768.Spec := by
  intro n
  simp only [A281023, Nat.add_sub_cancel]

end A281023

/-! ## A281023.P12399025096256947012

`∑[A308473(n+1)+n]+n`
-/

namespace A281023.P12399025096256947012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308473 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A281023.P12399025096256947012

namespace A281023

/-- `∑[A308473(n+1)+n]+n` -/
def P12399025096256947012.Spec : Prop :=
  ∀ n, P12399025096256947012.a n = A281023 (n + 1)

end A281023

/-! ## A281023.P1971150125172538374

`∑[∑[n+1]-A023896(n+1)]`
-/

namespace A281023.P1971150125172538374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A023896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281023.P1971150125172538374

namespace A281023

/-- `∑[∑[n+1]-A023896(n+1)]` -/
def P1971150125172538374.Spec : Prop :=
  ∀ n, P1971150125172538374.a n = A281023 (n + 1)

end A281023

/-! ## A281023.P4371729642593070827

`∑[floor((n+1)*(n+2-A000010(n+1))/2)]`
-/

namespace A281023.P4371729642593070827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * (((n + 2 : ℤ) - A000010 (n + 1) : ℚ) / 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281023.P4371729642593070827

namespace A281023

/-- `∑[floor((n+1)*(n+2-A000010(n+1))/2)]` -/
def P4371729642593070827.Spec : Prop :=
  ∀ n, P4371729642593070827.a n = A281023 (n + 1)

end A281023

/-! ## A281023.P11805921648585115667

`∑[A349679(n+1)-A000010(n+1)]`
-/

namespace A281023.P11805921648585115667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349679 (n + 1) - A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281023.P11805921648585115667

namespace A281023

/-- `∑[A349679(n+1)-A000010(n+1)]` -/
def P11805921648585115667.Spec : Prop :=
  ∀ n, P11805921648585115667.a n = A281023 (n + 1)

end A281023

/-! ## A281023.P11190153805720351631

`∑[floor(∑[n+1]-A000010((n+1)²)/2)]`
-/

namespace A281023.P11190153805720351631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) - (A000010 ((n + 1) ^ 2) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281023.P11190153805720351631

namespace A281023

/-- `∑[floor(∑[n+1]-A000010((n+1)²)/2)]` -/
def P11190153805720351631.Spec : Prop :=
  ∀ n, P11190153805720351631.a n = A281023 (n + 1)

end A281023

/-!
# A281024: Partial products of A067392; a(1) = 1.

The programs for A281024, there is no canonical definition to state claims against.
-/

/-! ## A281024.P950240973538491017

`∏[A308473(n+1)+1+n]`
-/

namespace A281024.P950240973538491017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308473 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A281024.P950240973538491017

/-! ## A281024.P5999098025274720940

`a(n-1)*A067392(n+1)` with `a(0)=1`
-/

namespace A281024.P5999098025274720940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A067392 (n + 1)

end

end A281024.P5999098025274720940

/-! ## A281024.P15709162919406662860

`∏[A028310(A067392(n+1))]`
-/

namespace A281024.P15709162919406662860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A067392 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A281024.P15709162919406662860

/-! ## A281024.P2975018172344228948

`∏[A067392(n+1)+A000007(n)]`
-/

namespace A281024.P2975018172344228948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067392 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A281024.P2975018172344228948

/-! ## A281024.P13542419775943714912

`∏[A067392(n+1)^A178334(n)]`
-/

namespace A281024.P13542419775943714912
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067392 (n + 1) : ℚ) ^ (A178334 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A281024.P13542419775943714912

/-! ## A281024.P8931503503861008425

`∏[A067392(n+2)]/A067392(n+2)`
-/

namespace A281024.P8931503503861008425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067392 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A067392 (n + 2) : ℚ)

end

end A281024.P8931503503861008425

/-!
# A281025: Partial sums of A066570.

The programs for A281025, there is no canonical definition to state claims against.
-/

/-! ## A281025.P13822176956165681961

`∑[A066570(n+1)]`
-/

namespace A281025.P13822176956165681961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281025.P13822176956165681961

/-! ## A281025.P17273516086953250268

`∑[A007955(n+1)*A070251(n+1)]`
-/

namespace A281025.P17273516086953250268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) * A070251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281025.P17273516086953250268

/-! ## A281025.P2185390895989984869

`A066570(A028310(n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A281025.P2185390895989984869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066570 (A028310 n + 1).toNat + a (n - 1)

end

end A281025.P2185390895989984869

/-! ## A281025.P6757212516193548639

`a(n-1)+A066570(n+1)+A000007(n)` with `a(0)=1`
-/

namespace A281025.P6757212516193548639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A066570 (n + 1) + A000007 n)

end

end A281025.P6757212516193548639

/-! ## A281025.P3019424709017451361

`∑[(n+1)!/A001783(n+1)]`
-/

namespace A281025.P3019424709017451361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A001783 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281025.P3019424709017451361

/-!
# A281026: a(n) = floor(3*n*(n+1)/4).

The programs for A281026, the canonical program `A281026.P4446117746492074995` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281026 has offset 0).

The definition of A281026 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*n*(n+1)/4)` (program `A281026.P4446117746492074995`, by `A281026.P4446117746492074995.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A281026.P4446117746492074995

`floor(3*n*(n+1)/4)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281026

/-- `floor(3*n*(n+1)/4)` -/
def P4446117746492074995.Spec : Prop :=
  ∀ n, P4446117746492074995.a n = A281026 n

theorem P4446117746492074995.correct : P4446117746492074995.Spec := by
  intro n
  simp only [A281026]

end A281026

/-! ## A281026.P6917122764184022382

`a(n-4)+6*n-9` with `a(0)=0, a(1)=1, a(2)=4, a(3)=9`
-/

namespace A281026.P6917122764184022382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 9] fun n a =>
  a (n - 4) + (6 * n : ℤ) - 9

end

end A281026.P6917122764184022382

namespace A281026

/-- `a(n-4)+6*n-9` -/
def P6917122764184022382.Spec : Prop :=
  ∀ n, P6917122764184022382.a n = A281026 n

end A281026

/-! ## A281026.P8064794168286480518

`A011865(3*n+2)`
-/

namespace A281026.P8064794168286480518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 (3 * n + 2)

end

end A281026.P8064794168286480518

namespace A281026

/-- `A011865(3*n+2)` -/
def P8064794168286480518.Spec : Prop :=
  ∀ n, P8064794168286480518.a n = A281026 n

end A281026

/-! ## A281026.P11291898586442880

`∑[∑[and(2, n)!]-1]`
-/

namespace A281026.P11291898586442880
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 2 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281026.P11291898586442880

namespace A281026

/-- `∑[∑[and(2, n)!]-1]` -/
def P11291898586442880.Spec : Prop :=
  ∀ n, P11291898586442880.a n = A281026 n

end A281026

/-! ## A281026.P10042925429977847071

`∑[comp[2*comp[lcm(3, n)]]]`
-/

namespace A281026.P10042925429977847071
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281026.P10042925429977847071

namespace A281026

/-- `∑[comp[2*comp[lcm(3, n)]]]` -/
def P10042925429977847071.Spec : Prop :=
  ∀ n, (P10042925429977847071.a n : ℤ) = A281026 n

end A281026

/-! ## A281026.P5917404327490061451

`∑[∑[char[or(2, n)]]+n]`
-/

namespace A281026.P5917404327490061451
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281026.P5917404327490061451

namespace A281026

/-- `∑[∑[char[or(2, n)]]+n]` -/
def P5917404327490061451.Spec : Prop :=
  ∀ n, (P5917404327490061451.a n : ℤ) = A281026 n

end A281026

/-! ## A281026.P196225154047642467

`∑[∪[3*n, Δ[n²]]]`
-/

namespace A281026.P196225154047642467
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f4 (n + 1) : ℤ) - (f4 n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281026.P196225154047642467

namespace A281026

/-- `∑[∪[3*n, Δ[n²]]]` -/
def P196225154047642467.Spec : Prop :=
  ∀ n, (P196225154047642467.a n : ℤ) = A281026 n

end A281026

/-! ## A281026.P5074288974840224661

`and(-2, ∑[3*n])/2`
-/

namespace A281026.P5074288974840224661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2

end

end A281026.P5074288974840224661

namespace A281026

/-- `and(-2, ∑[3*n])/2` -/
def P5074288974840224661.Spec : Prop :=
  ∀ n, P5074288974840224661.a n = (A281026 n : ℚ)

end A281026

/-! ## A281026.P12560587705014646251

`∑[∑[and(2, n)/2]+n]`
-/

namespace A281026.P12560587705014646251
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281026.P12560587705014646251

namespace A281026

/-- `∑[∑[and(2, n)/2]+n]` -/
def P12560587705014646251.Spec : Prop :=
  ∀ n, P12560587705014646251.a n = (A281026 n : ℚ)

end A281026

/-! ## A281026.P12604322122081219298

`(or(1, ∑[3*n])-1)/2`
-/

namespace A281026.P12604322122081219298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1 : ℚ) / 2

end

end A281026.P12604322122081219298

namespace A281026

/-- `(or(1, ∑[3*n])-1)/2` -/
def P12604322122081219298.Spec : Prop :=
  ∀ n, P12604322122081219298.a n = (A281026 n : ℚ)

end A281026

/-! ## A281026.P13156880937882057453

`∑[∑[gcd(2, ∑[n+1])]-1]`
-/

namespace A281026.P13156880937882057453
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281026.P13156880937882057453

namespace A281026

/-- `∑[∑[gcd(2, ∑[n+1])]-1]` -/
def P13156880937882057453.Spec : Prop :=
  ∀ n, P13156880937882057453.a n = A281026 n

end A281026

/-! ## A281026.P3529808800304748079

`∑[∑[(∑[n]+n)%2]+n]`
-/

namespace A281026.P3529808800304748079
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j + n) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281026.P3529808800304748079

namespace A281026

/-- `∑[∑[(∑[n]+n)%2]+n]` -/
def P3529808800304748079.Spec : Prop :=
  ∀ n, (P3529808800304748079.a n : ℤ) = A281026 n

end A281026

/-! ## A281026.P3232025844477108429

`∑[n-∑[(n-∑[n])%2]]`
-/

namespace A281026.P3232025844477108429
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281026.P3232025844477108429

namespace A281026

/-- `∑[n-∑[(n-∑[n])%2]]` -/
def P3232025844477108429.Spec : Prop :=
  ∀ n, P3232025844477108429.a n = A281026 n

end A281026

/-! ## A281026.P17939734858265315204

`∑[a(n-4)+6]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A281026.P17939734858265315204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 5] fun n f1 =>
  f1 (n - 4) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281026.P17939734858265315204

namespace A281026

/-- `∑[a(n-4)+6]` -/
def P17939734858265315204.Spec : Prop :=
  ∀ n, (P17939734858265315204.a n : ℤ) = A281026 n

end A281026

/-! ## A281026.P2277149406865423045

`∑[∑[3-a(n-2)]]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A281026.P2277149406865423045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  3 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281026.P2277149406865423045

namespace A281026

/-- `∑[∑[3-a(n-2)]]` -/
def P2277149406865423045.Spec : Prop :=
  ∀ n, P2277149406865423045.a n = A281026 n

end A281026

/-! ## A281026.P11970401891279528439

`floor(∑[n/2])+C(n+1, 2)`
-/

namespace A281026.P11970401891279528439
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + (Nat.choose (n + 1) 2 : ℤ)

end

end A281026.P11970401891279528439

namespace A281026

/-- `floor(∑[n/2])+C(n+1, 2)` -/
def P11970401891279528439.Spec : Prop :=
  ∀ n, P11970401891279528439.a n = A281026 n

end A281026

/-! ## A281026.P9132803162072887709

`n²-floor(a(n-2)/3)` with `a(0)=0, a(1)=1`
-/

namespace A281026.P9132803162072887709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n ^ 2 : ℤ) - ⌊(a (n - 2) : ℚ) / 3⌋

end

end A281026.P9132803162072887709

namespace A281026

/-- `n²-floor(a(n-2)/3)` -/
def P9132803162072887709.Spec : Prop :=
  ∀ n, P9132803162072887709.a n = A281026 n

end A281026

/-! ## A281026.P5837447551664793324

`∑[ogf((x+x^2+x^3)/(1-2x+2x^2-2x^3+x^4))]`
-/

namespace A281026.P5837447551664793324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1] [1, -2, 2, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281026.P5837447551664793324

namespace A281026

/-- `∑[ogf((x+x^2+x^3)/(1-2x+2x^2-2x^3+x^4))]` -/
def P5837447551664793324.Spec : Prop :=
  ∀ n, P5837447551664793324.a n = A281026 n

end A281026

/-! ## A281026.P13878661398808437587

`(n+1)²-floor(C(n+3, 2)/2)`
-/

namespace A281026.P13878661398808437587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ⌊(Nat.choose (n + 3) 2 : ℚ) / 2⌋

end

end A281026.P13878661398808437587

namespace A281026

/-- `(n+1)²-floor(C(n+3, 2)/2)` -/
def P13878661398808437587.Spec : Prop :=
  ∀ n, P13878661398808437587.a n = A281026 n

end A281026

/-!
# A281027: Partial products of A066570.

The programs for A281027, there is no canonical definition to state claims against.
-/

/-! ## A281027.P3994964519521705583

`A000178(n+1)/A280821(n+1)`
-/

namespace A281027.P3994964519521705583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000178 (n + 1) : ℚ) / (A280821 (n + 1) : ℚ)

end

end A281027.P3994964519521705583

/-! ## A281027.P4157470815606951545

`∏[A066570(n+1)]`
-/

namespace A281027.P4157470815606951545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A281027.P4157470815606951545

/-! ## A281027.P6127316583316601470

`∏[∏[n+1]/A001783(n+1)]`
-/

namespace A281027.P6127316583316601470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (A001783 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A281027.P6127316583316601470

/-! ## A281027.P1143878137049912098

`∏[A007955(n+1)*A070251(n+1)]`
-/

namespace A281027.P1143878137049912098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) * A070251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A281027.P1143878137049912098

/-! ## A281027.P10986983582418375942

`∏[A110376(n+1)/A056855(n+1)]`
-/

namespace A281027.P10986983582418375942
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110376 (n + 1) : ℚ) / (A056855 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A281027.P10986983582418375942

/-!
# A281028: Number of n X 2 0..1 arrays with no element equal to more than three of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281028, there is no canonical definition to state claims against.
-/

/-! ## A281028.P4171854438173741635

`A281034(∑[n+1]+2)`
-/

namespace A281028.P4171854438173741635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281034 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281028.P4171854438173741635

/-! ## A281028.P1778341877461060924

`lcm(2, A281034(A000096(n)+3))`
-/

namespace A281028.P1778341877461060924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A281034 (A000096 n + 3).toNat)

end

end A281028.P1778341877461060924

/-! ## A281028.P10159815635763408048

`char[A007318(n)]*A281034(A000096(n)+3)`
-/

namespace A281028.P10159815635763408048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A281034 (A000096 n + 3).toNat

end

end A281028.P10159815635763408048

/-! ## A281028.P17509770014700667423

`A281034(A000096(n)+3)%A000108(n+3)`
-/

namespace A281028.P17509770014700667423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281034 (A000096 n + 3).toNat) (A000108 (n + 3))

end

end A281028.P17509770014700667423

/-! ## A281028.P18106231340756310264

`A281034(A000096(n)+3)/A007318(C(2, n))`
-/

namespace A281028.P18106231340756310264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281034 (A000096 n + 3).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A281028.P18106231340756310264

/-!
# A281029: Number of nX3 0..1 arrays with no element equal to more than three of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281029, there is no canonical definition to state claims against.
-/

/-! ## A281029.P848407111943589702

`A281034(∑[n+2]+4)`
-/

namespace A281029.P848407111943589702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281034 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A281029.P848407111943589702

/-! ## A281029.P16010636086493336598

`A281034(A167614(n+1))+char[20]`
-/

namespace A281029.P16010636086493336598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281034 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281029.P16010636086493336598

/-! ## A281029.P279722843324560616

`record[A010054(n+1)*A281034(n+4)]`
-/

namespace A281029.P279722843324560616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A281034 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281029.P279722843324560616

/-! ## A281029.P7306168698322067595

`lcm(A033999(n), A281034(A167614(n+1)))`
-/

namespace A281029.P7306168698322067595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A281034 (A167614 (n + 1)).toNat)

end

end A281029.P7306168698322067595

/-! ## A281029.P11812274461196021093

`A281034(A167614(n+1))%A067980(n)²`
-/

namespace A281029.P11812274461196021093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281034 (A167614 (n + 1)).toNat) (A067980 n ^ 2)

end

end A281029.P11812274461196021093

/-!
# A281030: Number of nX4 0..1 arrays with no element equal to more than three of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281030, there is no canonical definition to state claims against.
-/

/-! ## A281030.P5736997426142978730

`A281034(∑[n+3]+7)`
-/

namespace A281030.P5736997426142978730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281034 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A281030.P5736997426142978730

/-! ## A281030.P7537015635219411147

`lcm(2, A281034(A141214(n)+7))`
-/

namespace A281030.P7537015635219411147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A281034 (A141214 n + 7).toNat)

end

end A281030.P7537015635219411147

/-! ## A281030.P2184069642977066653

`record[A010054(n)*A281034(n+4)]`
-/

namespace A281030.P2184069642977066653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A281034 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281030.P2184069642977066653

/-! ## A281030.P15069074407001862103

`A007318(C(2, n))*A281034(A141214(n)+7)`
-/

namespace A281030.P15069074407001862103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A281034 (A141214 n + 7).toNat

end

end A281030.P15069074407001862103

/-! ## A281030.P5604251106788982789

`A281034(A141214(n)+7)/A007318(C(n, 2))`
-/

namespace A281030.P5604251106788982789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281034 (A141214 n + 7).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A281030.P5604251106788982789

/-!
# A281031: Number of nX5 0..1 arrays with no element equal to more than three of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281031, there is no canonical definition to state claims against.
-/

/-! ## A281031.P3822923275045640821

`A281034(A167499(n+3))`
-/

namespace A281031.P3822923275045640821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281034 (A167499 (n + 3)).toNat

end

end A281031.P3822923275045640821

/-! ## A281031.P8596280029949826939

`A281034(A155212(n)+13)`
-/

namespace A281031.P8596280029949826939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281034 (A155212 n + 13).toNat

end

end A281031.P8596280029949826939

/-! ## A281031.P17864478765447998236

`A281034(A056000(n)+15)`
-/

namespace A281031.P17864478765447998236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281034 (A056000 n + 15).toNat

end

end A281031.P17864478765447998236

/-! ## A281031.P2056052284183534335

`A281034(eq[7, A066657(n)])`
-/

namespace A281031.P2056052284183534335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281031.P2056052284183534335

/-! ## A281031.P5572629689661550219

`A281034(A000124(n+4)+4)`
-/

namespace A281031.P5572629689661550219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281034 (A000124 (n + 4) + 4).toNat

end

end A281031.P5572629689661550219

/-!
# A281032: Number of nX6 0..1 arrays with no element equal to more than three of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281032, there is no canonical definition to state claims against.
-/

/-! ## A281032.P12664899433988866446

`A281034(A166136(n+4))`
-/

namespace A281032.P12664899433988866446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281034 (A166136 (n + 4)).toNat

end

end A281032.P12664899433988866446

/-! ## A281032.P3656052362566385944

`A281034(A056115(n)+21)`
-/

namespace A281032.P3656052362566385944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281034 (A056115 n + 21).toNat

end

end A281032.P3656052362566385944

/-! ## A281032.P11048241478932394651

`A281034(A167499(n+4)+1)`
-/

namespace A281032.P11048241478932394651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281034 (A167499 (n + 4) + 1).toNat

end

end A281032.P11048241478932394651

/-! ## A281032.P6144258412094235237

`A281034(A000096(n+4)+7)`
-/

namespace A281032.P6144258412094235237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281034 (A000096 (n + 4) + 7).toNat

end

end A281032.P6144258412094235237

/-! ## A281032.P15928576234747269141

`A281034(A000217(n+5)+6)`
-/

namespace A281032.P15928576234747269141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281034 (A000217 (n + 5) + 6).toNat

end

end A281032.P15928576234747269141

/-!
# A281033: Number of nX7 0..1 arrays with no element equal to more than three of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281033, there is no canonical definition to state claims against.
-/

/-! ## A281033.P2829965795158045533

`A281034(A056119(n)+28)`
-/

namespace A281033.P2829965795158045533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281034 (A056119 n + 28).toNat

end

end A281033.P2829965795158045533

/-! ## A281033.P1993150885960341624

`A281034(eq[11, A066657(n)])`
-/

namespace A281033.P1993150885960341624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281033.P1993150885960341624

/-! ## A281033.P14756281739246085112

`A281034(A166136(n+5)+1)`
-/

namespace A281033.P14756281739246085112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281034 (A166136 (n + 5) + 1).toNat

end

end A281033.P14756281739246085112

/-! ## A281033.P16649353694223819802

`A281034(A167499(n+5)+2)`
-/

namespace A281033.P16649353694223819802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281034 (A167499 (n + 5) + 2).toNat

end

end A281033.P16649353694223819802

/-! ## A281033.P6308220025302370745

`A281034(A167614(n+5)+4)`
-/

namespace A281033.P6308220025302370745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281034 (A167614 (n + 5) + 4).toNat

end

end A281033.P6308220025302370745

/-!
# A281034: T(n,k)=Number of nXk 0..1 arrays with no element equal to more than three of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281034, there is no canonical definition to state claims against.
-/

/-! ## A281034.P6354506626596409700

`A118759(A282441(n+1))`
-/

namespace A281034.P6354506626596409700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A282441 (n + 1)).toNat

end

end A281034.P6354506626596409700

/-! ## A281034.P17213782046759152497

`A282441(A000005(2^n))`
-/

namespace A281034.P17213782046759152497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282441 (A000005 (2 ^ n)).toNat

end

end A281034.P17213782046759152497

/-! ## A281034.P9644465589077396747

`A282441(∑[A059117(n)!])`
-/

namespace A281034.P9644465589077396747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A059117 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282441 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A281034.P9644465589077396747

/-! ## A281034.P14918592669928478517

`A000196(A282441(n+1)²)`
-/

namespace A281034.P14918592669928478517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A282441 (n + 1) ^ 2).toNat

end

end A281034.P14918592669928478517

/-! ## A281034.P11670842564453088955

`A130734(A282441(n+1)+1)`
-/

namespace A281034.P11670842564453088955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (A282441 (n + 1) + 1).toNat

end

end A281034.P11670842564453088955

/-!
# A281035: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 310", based on the 5-celled von Neumann neighborhood.

The programs for A281035, there is no canonical definition to state claims against.
-/

/-! ## A281035.P6444504957833777393

`A283590(n+2)%A283171(n+1)`
-/

namespace A281035.P6444504957833777393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283590 (n + 2)) (A283171 (n + 1))

end

end A281035.P6444504957833777393

/-! ## A281035.P15740269126402658912

`A007088(A281037(n))`
-/

namespace A281035.P15740269126402658912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281037 n).toNat

end

end A281035.P15740269126402658912

/-! ## A281035.P6648632477726855053

`A007088(∑[2^(n+1)-Δ[A283173(n)]])`
-/

namespace A281035.P6648632477726855053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283173 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A281035.P6648632477726855053

/-! ## A281035.P16322696711834273512

`A007088(A126646(n+1)-A283173(n+1))`
-/

namespace A281035.P16322696711834273512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A126646 (n + 1) - A283173 (n + 1)).toNat

end

end A281035.P16322696711834273512

/-! ## A281035.P964424718489407344

`A007088(A000225(n+2)-A283173(n+1))`
-/

namespace A281035.P964424718489407344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000225 (n + 2) - A283173 (n + 1)).toNat

end

end A281035.P964424718489407344

/-!
# A281036: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 310", based on the 5-celled von Neumann neighborhood.

The programs for A281036, there is no canonical definition to state claims against.
-/

/-! ## A281036.P8540435029755165269

`A007088(A281038(n))`
-/

namespace A281036.P8540435029755165269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281038 n).toNat

end

end A281036.P8540435029755165269

/-! ## A281036.P9828720500027859622

`A305989(A281037(n))`
-/

namespace A281036.P9828720500027859622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A281037 n).toNat

end

end A281036.P9828720500027859622

/-! ## A281036.P1415471939722268845

`A185544(2*A281038(n))`
-/

namespace A281036.P1415471939722268845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281038 n).toNat

end

end A281036.P1415471939722268845

/-! ## A281036.P14202089236888971115

`A185544(lcm(2, A281038(n)))`
-/

namespace A281036.P14202089236888971115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A281038 n))

end

end A281036.P14202089236888971115

/-! ## A281036.P1042984064441690818

`A305989(∑[2^(n+1)-Δ[A283173(n)]])`
-/

namespace A281036.P1042984064441690818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283173 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A281036.P1042984064441690818

/-!
# A281037: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 310", based on the 5-celled von Neumann neighborhood.

The programs for A281037, there is no canonical definition to state claims against.
-/

/-! ## A281037.P17535080629902244772

`∑[2^(n+1)-Δ[A283173(n)]]`
-/

namespace A281037.P17535080629902244772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283173 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281037.P17535080629902244772

/-! ## A281037.P11806004587674651767

`A126646(n+1)-A283173(n+1)`
-/

namespace A281037.P11806004587674651767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (n + 1) - A283173 (n + 1)

end

end A281037.P11806004587674651767

/-! ## A281037.P12267488333568320705

`A000225(n+2)-A283173(n+1)`
-/

namespace A281037.P12267488333568320705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) - A283173 (n + 1)

end

end A281037.P12267488333568320705

/-! ## A281037.P7201762967572851069

`A000225(A028310(n)+2)%A283173(n+1)`
-/

namespace A281037.P7201762967572851069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (A028310 n + 2).toNat) (A283173 (n + 1))

end

end A281037.P7201762967572851069

/-! ## A281037.P4539687661122209088

`A000225(A023443(n)+3)%A283173(n+1)`
-/

namespace A281037.P4539687661122209088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (A023443 n + 3).toNat) (A283173 (n + 1))

end

end A281037.P4539687661122209088

/-!
# A281038: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 310", based on the 5-celled von Neumann neighborhood.

The programs for A281038, there is no canonical definition to state claims against.
-/

/-! ## A281038.P9866097153672527982

`A281037(n)-A055945(A281037(n))`
-/

namespace A281038.P9866097153672527982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281037 n - A055945 (A281037 n).toNat

end

end A281038.P9866097153672527982

/-! ## A281038.P16416735100321102055

`A030101(A281037(n))`
-/

namespace A281038.P16416735100321102055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A281037 n).toNat

end

end A281038.P16416735100321102055

/-! ## A281038.P14049881511647718599

`A325401(2*A281037(n))`
-/

namespace A281038.P14049881511647718599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A281037 n).toNat

end

end A281038.P14049881511647718599

/-! ## A281038.P7938386934122917959

`A342122(2*A281037(n))`
-/

namespace A281038.P7938386934122917959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342122 (2 * A281037 n).toNat

end

end A281038.P7938386934122917959

/-! ## A281038.P3531163828044659421

`A342122(lcm(2, A281037(n)))`
-/

namespace A281038.P3531163828044659421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342122 (Int.lcm 2 (A281037 n))

end

end A281038.P3531163828044659421

/-!
# A281039: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 313", based on the 5-celled von Neumann neighborhood.

The programs for A281039, there is no canonical definition to state claims against.
-/

/-! ## A281039.P16394163973951765667

`A007088(A281041(n))`
-/

namespace A281039.P16394163973951765667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281041 n).toNat

end

end A281039.P16394163973951765667

/-! ## A281039.P3754382974805162056

`A185544(2*A281041(n))`
-/

namespace A281039.P3754382974805162056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281041 n).toNat

end

end A281039.P3754382974805162056

/-!
# A281040: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 313", based on the 5-celled von Neumann neighborhood.

The programs for A281040, there is no canonical definition to state claims against.
-/

/-! ## A281040.P15888438545762007730

`A007088(A281042(n))`
-/

namespace A281040.P15888438545762007730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281042 n).toNat

end

end A281040.P15888438545762007730

/-! ## A281040.P15558192662038062651

`A185544(2*A281042(n))`
-/

namespace A281040.P15558192662038062651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281042 n).toNat

end

end A281040.P15558192662038062651

/-!
# A281041: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 313", based on the 5-celled von Neumann neighborhood.

The programs for A281041, there is no canonical definition to state claims against.
-/

/-! ## A281041.P11943804868443379732

`A308583(A058843(n+1))+A280614(n)`
-/

namespace A281041.P11943804868443379732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308583 (A058843 (n + 1)).toNat + A280614 n

end

end A281041.P11943804868443379732

/-!
# A281043: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 315", based on the 5-celled von Neumann neighborhood.

The programs for A281043, there is no canonical definition to state claims against.
-/

/-! ## A281043.P13046660201925830132

`A007088(A281045(n))`
-/

namespace A281043.P13046660201925830132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281045 n).toNat

end

end A281043.P13046660201925830132

/-! ## A281043.P4143406977241676891

`A185544(2*A281045(n))`
-/

namespace A281043.P4143406977241676891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281045 n).toNat

end

end A281043.P4143406977241676891

/-!
# A281044: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 315", based on the 5-celled von Neumann neighborhood.

The programs for A281044, there is no canonical definition to state claims against.
-/

/-! ## A281044.P13230777892708401631

`A007088(A281046(n))`
-/

namespace A281044.P13230777892708401631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281046 n).toNat

end

end A281044.P13230777892708401631

/-! ## A281044.P13295268880820877959

`A185544(2*A281046(n))`
-/

namespace A281044.P13295268880820877959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281046 n).toNat

end

end A281044.P13295268880820877959

/-!
# A281048: Expansion of x*(1 - x)*Product_{k>=0} (1 + x^(2^k) - x^(2^(k+1))).

The programs for A281048, the canonical program `A281048.P3938855718998279442` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281048 has offset 1).

The definition of A281048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281048.P3938855718998279442

`Δ[A005590(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A281048

/-- `Δ[A005590(n)]` -/
def P3938855718998279442.Spec : Prop :=
  ∀ n, P3938855718998279442.a n = A281048 (n + 1)

theorem P3938855718998279442.correct : P3938855718998279442.Spec := by
  intro n
  simp only [A281048, Nat.add_sub_cancel]

end A281048

/-! ## A281048.P13907377278833502993

`A005590(n+1)-A005590(n)`
-/

namespace A281048.P13907377278833502993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (n + 1) - A005590 n

end

end A281048.P13907377278833502993

namespace A281048

/-- `A005590(n+1)-A005590(n)` -/
def P13907377278833502993.Spec : Prop :=
  ∀ n, P13907377278833502993.a n = A281048 (n + 1)

theorem P13907377278833502993.correct : P13907377278833502993.Spec := by
  intro n
  simp only [A281048, Nat.add_sub_cancel, A281048.P13907377278833502993.a, A281048.P3938855718998279442.f1, A281048.P3938855718998279442.a, SequenceMachineLib.memo_apply]

end A281048

/-! ## A281048.P12235390571975100596

`Δ[A182093(n)-A182093(A029578(n))]`
-/

namespace A281048.P12235390571975100596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182093 n - A182093 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281048.P12235390571975100596

namespace A281048

/-- `Δ[A182093(n)-A182093(A029578(n))]` -/
def P12235390571975100596.Spec : Prop :=
  ∀ n, P12235390571975100596.a n = A281048 (n + 1)

end A281048

/-! ## A281048.P15937404326248224080

`Δ[Δ[A182093(A029578(n))]]`
-/

namespace A281048.P15937404326248224080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182093 (A029578 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281048.P15937404326248224080

namespace A281048

/-- `Δ[Δ[A182093(A029578(n))]]` -/
def P15937404326248224080.Spec : Prop :=
  ∀ n, P15937404326248224080.a n = A281048 (n + 1)

end A281048

/-! ## A281048.P4458181573560075670

`Δ[A182093(n)-A182093(n-A057427(n))]`
-/

namespace A281048.P4458181573560075670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182093 n - A182093 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281048.P4458181573560075670

namespace A281048

/-- `Δ[A182093(n)-A182093(n-A057427(n))]` -/
def P4458181573560075670.Spec : Prop :=
  ∀ n, P4458181573560075670.a n = A281048 (n + 1)

end A281048

/-! ## A281048.P17987929803252959789

`Δ[Δ[A182093(n-A057427(n))]]`
-/

namespace A281048.P17987929803252959789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182093 ((n : ℤ) - A057427 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281048.P17987929803252959789

namespace A281048

/-- `Δ[Δ[A182093(n-A057427(n))]]` -/
def P17987929803252959789.Spec : Prop :=
  ∀ n, P17987929803252959789.a n = A281048 (n + 1)

end A281048

/-! ## A281048.P9370411892934682815

`A005590(A331166(2*n+1))`
-/

namespace A281048.P9370411892934682815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (A331166 (2 * n + 1)).toNat

end

end A281048.P9370411892934682815

namespace A281048

/-- `A005590(A331166(2*n+1))` -/
def P9370411892934682815.Spec : Prop :=
  ∀ n, P9370411892934682815.a n = A281048 (n + 1)

end A281048

/-! ## A281048.P1969658400094332868

`A182093(n+1)-A182093(2*n)`
-/

namespace A281048.P1969658400094332868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182093 (n + 1) - A182093 (2 * n)

end

end A281048.P1969658400094332868

namespace A281048

/-- `A182093(n+1)-A182093(2*n)` -/
def P1969658400094332868.Spec : Prop :=
  ∀ n, P1969658400094332868.a n = A281048 (n + 1)

end A281048

/-! ## A281048.P468562894369167878

`A005590(2*n+1)`
-/

namespace A281048.P468562894369167878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (2 * n + 1)

end

end A281048.P468562894369167878

namespace A281048

/-- `A005590(2*n+1)` -/
def P468562894369167878.Spec : Prop :=
  ∀ n, P468562894369167878.a n = A281048 (n + 1)

end A281048

/-! ## A281048.P11564230980399071419

`Δ[A182093(2*n)-A182093(n)]`
-/

namespace A281048.P11564230980399071419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182093 (2 * n) - A182093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281048.P11564230980399071419

namespace A281048

/-- `Δ[A182093(2*n)-A182093(n)]` -/
def P11564230980399071419.Spec : Prop :=
  ∀ n, P11564230980399071419.a n = A281048 (n + 1)

end A281048

/-! ## A281048.P11080193886112646152

`A145865(A345401(n))`
-/

namespace A281048.P11080193886112646152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145865 (A345401 n).toNat

end

end A281048.P11080193886112646152

namespace A281048

/-- `A145865(A345401(n))` -/
def P11080193886112646152.Spec : Prop :=
  ∀ n, P11080193886112646152.a n = A281048 (n + 1)

end A281048

/-! ## A281048.P10514900013237998120

`A145865(A122155(2*n+1))`
-/

namespace A281048.P10514900013237998120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145865 (A122155 (2 * n + 1)).toNat

end

end A281048.P10514900013237998120

namespace A281048

/-- `A145865(A122155(2*n+1))` -/
def P10514900013237998120.Spec : Prop :=
  ∀ n, P10514900013237998120.a n = A281048 (n + 1)

end A281048

/-! ## A281048.P15236453280907209024

`A145865(A054429(2*n+1)+1)`
-/

namespace A281048.P15236453280907209024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145865 (A054429 (2 * n + 1) + 1).toNat

end

end A281048.P15236453280907209024

namespace A281048

/-- `A145865(A054429(2*n+1)+1)` -/
def P15236453280907209024.Spec : Prop :=
  ∀ n, P15236453280907209024.a n = A281048 (n + 1)

end A281048

/-! ## A281048.P17079172845286331268

`A005590(A008619(4*n))%comp[C(n, 2)]`
-/

namespace A281048.P17079172845286331268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005590 (A008619 (4 * n)).toNat) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A281048.P17079172845286331268

namespace A281048

/-- `A005590(A008619(4*n))%comp[C(n, 2)]` -/
def P17079172845286331268.Spec : Prop :=
  ∀ n, P17079172845286331268.a n = A281048 (n + 1)

end A281048

/-! ## A281048.P16537454310849096119

`A005590(A005408(n))*A269906(2*n)`
-/

namespace A281048.P16537454310849096119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (A005408 n).toNat * A269906 (2 * n)

end

end A281048.P16537454310849096119

namespace A281048

/-- `A005590(A005408(n))*A269906(2*n)` -/
def P16537454310849096119.Spec : Prop :=
  ∀ n, P16537454310849096119.a n = A281048 (n + 1)

end A281048

/-!
# A281049: Number of n X n 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281049, there is no canonical definition to state claims against.
-/

/-! ## A281049.P942178698908034486

`A281056(∑[4*n]+1)`
-/

namespace A281049.P942178698908034486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A281049.P942178698908034486

/-! ## A281049.P16383692708787865664

`record[A281056(∑[A266981(n)])]`
-/

namespace A281049.P16383692708787865664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281049.P16383692708787865664

/-! ## A281049.P7962183140250628672

`record[A281056(A330613(n+1))]`
-/

namespace A281049.P7962183140250628672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281049.P7962183140250628672

/-! ## A281049.P4765771826670490151

`A281056(A001844(n))+char[13]`
-/

namespace A281049.P4765771826670490151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281049.P4765771826670490151

/-! ## A281049.P2789470694779622109

`A281056(A001844(n))%A013974(n)`
-/

namespace A281049.P2789470694779622109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281056 (A001844 n).toNat) (A013974 n)

end

end A281049.P2789470694779622109

/-!
# A281050: Number of n X 2 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281050, the canonical program `A281050.P15094595003626402173` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281050 has offset 1).

The definition of A281050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281050.P15094595003626402173

`record[A000035(n)*A055243(A052928(n))]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A281050

/-- `record[A000035(n)*A055243(A052928(n))]` -/
def P15094595003626402173.Spec : Prop :=
  ∀ n, P15094595003626402173.a n = A281050 (n + 1)

theorem P15094595003626402173.correct : P15094595003626402173.Spec := by
  intro n
  simp only [A281050, Nat.add_sub_cancel]

end A281050

/-! ## A281050.P12647897527389552604

`record[A055243(A052928(n))%A055243(n)]`
-/

namespace A281050.P12647897527389552604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055243 (A052928 n).toNat) (A055243 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281050.P12647897527389552604

namespace A281050

/-- `record[A055243(A052928(n))%A055243(n)]` -/
def P12647897527389552604.Spec : Prop :=
  ∀ n, P12647897527389552604.a n = A281050 (n + 1)

end A281050

/-! ## A281050.P13824117559195268839

`record[A055243(n)-A277929(n)]`
-/

namespace A281050.P13824117559195268839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055243 n - A277929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281050.P13824117559195268839

namespace A281050

/-- `record[A055243(n)-A277929(n)]` -/
def P13824117559195268839.Spec : Prop :=
  ∀ n, P13824117559195268839.a n = A281050 (n + 1)

end A281050

/-! ## A281050.P11171404714774947728

`A208343(A027379(2*n)+1)`
-/

namespace A281050.P11171404714774947728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208343 (A027379 (2 * n) + 1).toNat

end

end A281050.P11171404714774947728

namespace A281050

/-- `A208343(A027379(2*n)+1)` -/
def P11171404714774947728.Spec : Prop :=
  ∀ n, P11171404714774947728.a n = A281050 (n + 1)

end A281050

/-! ## A281050.P17965887521516781486

`A208343(A008486(n)+A001844(n))`
-/

namespace A281050.P17965887521516781486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208343 (A008486 n + A001844 n).toNat

end

end A281050.P17965887521516781486

namespace A281050

/-- `A208343(A008486(n)+A001844(n))` -/
def P17965887521516781486.Spec : Prop :=
  ∀ n, P17965887521516781486.a n = A281050 (n + 1)

end A281050

/-!
# A281051: Number of n X 3 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281051, there is no canonical definition to state claims against.
-/

/-! ## A281051.P7036017819365925032

`A281056(∑[n+3]+1)`
-/

namespace A281051.P7036017819365925032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A281051.P7036017819365925032

/-! ## A281051.P14255283116969307510

`record[A281056(A198464(n+1))]`
-/

namespace A281051.P14255283116969307510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281051.P14255283116969307510

/-! ## A281051.P1122630894237500459

`record[A281056(A347633(n+1))]`
-/

namespace A281051.P1122630894237500459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281051.P1122630894237500459

/-! ## A281051.P11723702943119719681

`record[A281056(gcd(n, A055137(n)))]`
-/

namespace A281051.P11723702943119719681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (Int.gcd (n : ℤ) (A055137 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281051.P11723702943119719681

/-! ## A281051.P2188920356785759756

`lcm(2, A281056(A034856(n+2)))`
-/

namespace A281051.P2188920356785759756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A281056 (A034856 (n + 2)).toNat)

end

end A281051.P2188920356785759756

/-!
# A281052: Number of nX4 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281052, there is no canonical definition to state claims against.
-/

/-! ## A281052.P15167903760668624745

`A281056(∑[n+4]+3)`
-/

namespace A281052.P15167903760668624745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A281052.P15167903760668624745

/-! ## A281052.P15962568996318410431

`or(char[2], A281056(A141214(n+1)))`
-/

namespace A281052.P15962568996318410431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A281056 (A141214 (n + 1)).toNat)

end

end A281052.P15962568996318410431

/-! ## A281052.P5107740244135877054

`A007318(C(2, n+1))*A281056(A141214(n+1))`
-/

namespace A281052.P5107740244135877054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A281056 (A141214 (n + 1)).toNat

end

end A281052.P5107740244135877054

/-! ## A281052.P10483428369016018002

`and(1, A000040(n+2))*A281056(A141214(n+1))`
-/

namespace A281052.P10483428369016018002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 2)) * A281056 (A141214 (n + 1)).toNat

end

end A281052.P10483428369016018002

/-! ## A281052.P691633931904661611

`A000041(C(2, n+2))*A281056(A141214(n+1))`
-/

namespace A281052.P691633931904661611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A281056 (A141214 (n + 1)).toNat

end

end A281052.P691633931904661611

/-!
# A281053: Number of nX5 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281053, there is no canonical definition to state claims against.
-/

/-! ## A281053.P4069299171877505635

`A281056(∑[n+5]+6)`
-/

namespace A281053.P4069299171877505635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A281053.P4069299171877505635

/-! ## A281053.P4261483155616036511

`A281056(A046691(n+3))+char[23]`
-/

namespace A281053.P4261483155616036511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (A046691 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281053.P4261483155616036511

/-! ## A281053.P13908102049245732392

`A281056(Δ[A023545(n+1)])+char[25]`
-/

namespace A281053.P13908102049245732392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281053.P13908102049245732392

/-! ## A281053.P331668132716330757

`A007318(C(2, n))*A281056(A046691(n+3))`
-/

namespace A281053.P331668132716330757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A281056 (A046691 (n + 3)).toNat

end

end A281053.P331668132716330757

/-! ## A281053.P3629915242108947897

`A000041(C(2, 2*n))*A281056(A046691(n+3))`
-/

namespace A281053.P3629915242108947897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A281056 (A046691 (n + 3)).toNat

end

end A281053.P3629915242108947897

/-!
# A281054: Number of nX6 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281054, there is no canonical definition to state claims against.
-/

/-! ## A281054.P5508906444045508563

`A281056(C(n+6, 2)+n+1)`
-/

namespace A281054.P5508906444045508563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (Nat.choose (n + 6) 2 + (n + 1))

end

end A281054.P5508906444045508563

/-! ## A281054.P17175887846231955354

`A281056(A052905(n+3))`
-/

namespace A281054.P17175887846231955354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (A052905 (n + 3)).toNat

end

end A281054.P17175887846231955354

/-! ## A281054.P10766621546485071475

`A281056(eq[3, A219347(n)])`
-/

namespace A281054.P10766621546485071475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281054.P10766621546485071475

/-! ## A281054.P14672598180475861921

`A281056(eq[5, A193592(n)])`
-/

namespace A281054.P14672598180475861921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281054.P14672598180475861921

/-! ## A281054.P2137645830121472257

`A281056(A055999(n+3)+1)`
-/

namespace A281054.P2137645830121472257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (A055999 (n + 3) + 1).toNat

end

end A281054.P2137645830121472257

/-!
# A281055: Number of nX7 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281055, there is no canonical definition to state claims against.
-/

/-! ## A281055.P5957416307144508276

`A281056(A055999(n+4))`
-/

namespace A281055.P5957416307144508276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (A055999 (n + 4)).toNat

end

end A281055.P5957416307144508276

/-! ## A281055.P2801132296620313987

`A281056(eq[4, A219347(n)])`
-/

namespace A281055.P2801132296620313987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281055.P2801132296620313987

/-! ## A281055.P13107981137555893663

`A281056(eq[6, A193592(n)])`
-/

namespace A281055.P13107981137555893663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281055.P13107981137555893663

/-! ## A281055.P13184621610119183604

`A281056(Δ[A023551(n+2)])`
-/

namespace A281055.P13184621610119183604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (f1 (n + 1) - f1 n).toNat

end

end A281055.P13184621610119183604

/-! ## A281055.P11879806791097298950

`A281056(A155212(n+3)+2)`
-/

namespace A281055.P11879806791097298950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (A155212 (n + 3) + 2).toNat

end

end A281055.P11879806791097298950

/-!
# A281056: T(n,k)=Number of nXk 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281056, there is no canonical definition to state claims against.
-/

/-! ## A281056.P8888695832581119200

`A240866(A300362(n)+A240406(n+1))`
-/

namespace A281056.P8888695832581119200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240866 (A300362 n + A240406 (n + 1)).toNat

end

end A281056.P8888695832581119200

/-! ## A281056.P12268373836316022522

`A240866(A347456(3*n+2)+A240406(n+1))`
-/

namespace A281056.P12268373836316022522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240866 (A347456 (3 * n + 2) + A240406 (n + 1)).toNat

end

end A281056.P12268373836316022522

/-!
# A281057: Number of 2 X n 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281057, there is no canonical definition to state claims against.
-/

/-! ## A281057.P14350935559780516582

`A281056(∑[n+1]+2)`
-/

namespace A281057.P14350935559780516582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281057.P14350935559780516582

/-! ## A281057.P17401807758434170969

`record[A281056(A255548(n+1)+2)]`
-/

namespace A281057.P17401807758434170969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (A255548 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281057.P17401807758434170969

/-! ## A281057.P7227222334850624505

`record[A281056(n+1)/A099573(n)]`
-/

namespace A281057.P7227222334850624505
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281056 (n + 1) : ℚ) / (A099573 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281057.P7227222334850624505

/-! ## A281057.P11984400567679985609

`record[A281056(n+1)/A099575(n)]`
-/

namespace A281057.P11984400567679985609
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281056 (n + 1) : ℚ) / (A099575 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281057.P11984400567679985609

/-! ## A281057.P5398271601150212324

`record[A281056(n+1)/A143632(n)]`
-/

namespace A281057.P5398271601150212324
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281056 (n + 1) : ℚ) / (A143632 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281057.P5398271601150212324

/-!
# A281058: Number of 3 X n 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281058, there is no canonical definition to state claims against.
-/

/-! ## A281058.P2576697598670481455

`A281056(∑[n+2]+4)`
-/

namespace A281058.P2576697598670481455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A281058.P2576697598670481455

/-! ## A281058.P2041949300126460522

`record[A010054(n)*A281056(n+3)]`
-/

namespace A281058.P2041949300126460522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A281056 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281058.P2041949300126460522

/-! ## A281058.P8226025415695286230

`and(log2(1/2), A281056(A046691(n)+7))`
-/

namespace A281058.P8226025415695286230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A281056 (A046691 n + 7).toNat)

end

end A281058.P8226025415695286230

/-! ## A281058.P8194356057943422787

`record[A281056(n+1)/(A143632(n)-2)]`
-/

namespace A281058.P8194356057943422787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281056 (n + 1) : ℚ) / (A143632 n - 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281058.P8194356057943422787

/-! ## A281058.P8752262333949260732

`gcd(n, n+1)*A281056(A167614(n+1))`
-/

namespace A281058.P8752262333949260732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A281056 (A167614 (n + 1)).toNat

end

end A281058.P8752262333949260732

/-!
# A281059: Number of 4Xn 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281059, there is no canonical definition to state claims against.
-/

/-! ## A281059.P9913498257544917834

`A281056(∑[n+3]+7)`
-/

namespace A281059.P9913498257544917834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A281059.P9913498257544917834

/-! ## A281059.P17713295869474059622

`or(char[1], A281056(A055999(n)+10))`
-/

namespace A281059.P17713295869474059622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A281056 (A055999 n + 10).toNat)

end

end A281059.P17713295869474059622

/-! ## A281059.P7390441439671712321

`A281056(A055999(n)+10)%A000108(n+6)`
-/

namespace A281059.P7390441439671712321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281056 (A055999 n + 10).toNat) (A000108 (n + 6))

end

end A281059.P7390441439671712321

/-! ## A281059.P17389009718793386603

`and(1, A000045(n))!*A281056(A055999(n)+10)`
-/

namespace A281059.P17389009718793386603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000045 n)).toNat : ℤ) * A281056 (A055999 n + 10).toNat

end

end A281059.P17389009718793386603

/-! ## A281059.P89687852343035601

`A281056(A055999(n)+10)/A007318(C(n, n²))`
-/

namespace A281059.P89687852343035601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281056 (A055999 n + 10).toNat : ℚ) / (A007318 (Nat.choose n (n ^ 2)) : ℚ)

end

end A281059.P89687852343035601

/-!
# A281060: Number of 5Xn 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281060, there is no canonical definition to state claims against.
-/

/-! ## A281060.P10925371301911123706

`A281056(∑[n+4]+11)`
-/

namespace A281060.P10925371301911123706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A281060.P10925371301911123706

/-!
# A281061: Number of 6Xn 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281061, there is no canonical definition to state claims against.
-/

/-! ## A281061.P2687313422428904749

`A281056(A166136(n+4))`
-/

namespace A281061.P2687313422428904749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (A166136 (n + 4)).toNat

end

end A281061.P2687313422428904749

/-! ## A281061.P7168407953401045972

`A281056(A056115(n)+21)`
-/

namespace A281061.P7168407953401045972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (A056115 n + 21).toNat

end

end A281061.P7168407953401045972

/-! ## A281061.P15180226449675168462

`A281056(A167499(n+4)+1)`
-/

namespace A281061.P15180226449675168462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (A167499 (n + 4) + 1).toNat

end

end A281061.P15180226449675168462

/-! ## A281061.P5090670425834914665

`A281056(A167614(n+4)+3)`
-/

namespace A281061.P5090670425834914665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (A167614 (n + 4) + 3).toNat

end

end A281061.P5090670425834914665

/-! ## A281061.P17688043124391375296

`A281056(A000124(n+5)+5)`
-/

namespace A281061.P17688043124391375296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (A000124 (n + 5) + 5).toNat

end

end A281061.P17688043124391375296

/-!
# A281062: Number of 7Xn 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A281062, there is no canonical definition to state claims against.
-/

/-! ## A281062.P4425621137840996512

`A281056(A167487(n+5))`
-/

namespace A281062.P4425621137840996512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (A167487 (n + 5)).toNat

end

end A281062.P4425621137840996512

/-! ## A281062.P14316990730478542553

`A281056(A056119(n)+28)`
-/

namespace A281062.P14316990730478542553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (A056119 n + 28).toNat

end

end A281062.P14316990730478542553

/-! ## A281062.P17512268604060715908

`A281056(eq[11, A066657(n)])`
-/

namespace A281062.P17512268604060715908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281062.P17512268604060715908

/-! ## A281062.P15230299208339292042

`A281056(A167499(n+5)+2)`
-/

namespace A281062.P15230299208339292042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (A167499 (n + 5) + 2).toNat

end

end A281062.P15230299208339292042

/-! ## A281062.P5009084199530990972

`A281056(A167614(n+5)+4)`
-/

namespace A281062.P5009084199530990972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281056 (A167614 (n + 5) + 4).toNat

end

end A281062.P5009084199530990972

/-!
# A281064: Values of x such that x^2 = 5*y^2 + 11, where x and y are positive integers.

The programs for A281064, the canonical program `A281064.P15765095487053629447` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281064 has offset 1).

The definition of A281064 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281064.P15765095487053629447

`18*a(n-2)-a(n-4)` with `a(0)=4, a(1)=16, a(2)=56, a(3)=284`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281064

/-- `18*a(n-2)-a(n-4)` -/
def P15765095487053629447.Spec : Prop :=
  ∀ n, P15765095487053629447.a n = A281064 (n + 1)

theorem P15765095487053629447.correct : P15765095487053629447.Spec := by
  intro n
  simp only [A281064, Nat.add_sub_cancel]

end A281064

/-! ## A281064.P16298582882057327227

`A228210(3*n+2)/2`
-/

namespace A281064.P16298582882057327227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228210 (3 * n + 2) : ℚ) / 2

end

end A281064.P16298582882057327227

namespace A281064

/-- `A228210(3*n+2)/2` -/
def P16298582882057327227.Spec : Prop :=
  ∀ n, P16298582882057327227.a n = (A281064 (n + 1) : ℚ)

end A281064

/-! ## A281064.P13552565960038547696

`abs(Δ[A001077(n)*A228826(n)])`
-/

namespace A281064.P13552565960038547696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 n * A228826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A281064.P13552565960038547696

namespace A281064

/-- `abs(Δ[A001077(n)*A228826(n)])` -/
def P13552565960038547696.Spec : Prop :=
  ∀ n, P13552565960038547696.a n = A281064 (n + 1)

end A281064

/-! ## A281064.P6197492384479965089

`floor(A228210(A008585(n)+2)/2)`
-/

namespace A281064.P6197492384479965089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A228210 (A008585 n + 2).toNat : ℚ) / 2⌋

end

end A281064.P6197492384479965089

namespace A281064

/-- `floor(A228210(A008585(n)+2)/2)` -/
def P6197492384479965089.Spec : Prop :=
  ∀ n, P6197492384479965089.a n = A281064 (n + 1)

end A281064

/-! ## A281064.P15431134044382090251

`lcm(Δ[A001077(n)*A228826(n)], A054977(n))`
-/

namespace A281064.P15431134044382090251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 n * A228826 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A054977 n)

end

end A281064.P15431134044382090251

namespace A281064

/-- `lcm(Δ[A001077(n)*A228826(n)], A054977(n))` -/
def P15431134044382090251.Spec : Prop :=
  ∀ n, (P15431134044382090251.a n : ℤ) = A281064 (n + 1)

end A281064

/-! ## A281064.P15550017490202684161

`A228207(3*n+2)/4`
-/

namespace A281064.P15550017490202684161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228207 (3 * n + 2) : ℚ) / 4

end

end A281064.P15550017490202684161

namespace A281064

/-- `A228207(3*n+2)/4` -/
def P15550017490202684161.Spec : Prop :=
  ∀ n, P15550017490202684161.a n = (A281064 (n + 1) : ℚ)

end A281064

/-!
# A281066: Concatenation R(n)R(n-1)R(n-2)...R(2)R(1) read mod n, where R(x) is the digit-reversal of x (with leading zeros not omitted).

The programs for A281066, there is no canonical definition to state claims against.
-/

/-! ## A281066.P4463238308095925346

`A138793(n+1)%(n+1)`
-/

namespace A281066.P4463238308095925346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138793 (n + 1)) (n + 1 : ℤ)

end

end A281066.P4463238308095925346

/-! ## A281066.P12410964602477109542

`A104759(A033061(n+1))%(n+1)`
-/

namespace A281066.P12410964602477109542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104759 (A033061 (n + 1)).toNat) (n + 1 : ℤ)

end

end A281066.P12410964602477109542

/-! ## A281066.P9027888669819948758

`A104759(A058183(n+1))%(n+1)`
-/

namespace A281066.P9027888669819948758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104759 (A058183 (n + 1)).toNat) (n + 1 : ℤ)

end

end A281066.P9027888669819948758

/-! ## A281066.P7850027717424785171

`A104759(lt[A285311(n), n+1])%(n+1)`
-/

namespace A281066.P7850027717424785171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285311 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104759 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)) (n + 1 : ℤ)

end

end A281066.P7850027717424785171

/-! ## A281066.P16224112828124203720

`A057610(A352380(n+1)%A001478(n+1))%A001478(n+1)`
-/

namespace A281066.P16224112828124203720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057610 (Int.tmod (A352380 (n + 1)) (A001478 (n + 1))).toNat) (A001478 (n + 1))

end

end A281066.P16224112828124203720

/-!
# A281071: Largest number k such that b - r is even or r = 0 for all b = 1..k where r = n mod b.

The programs for A281071, there is no canonical definition to state claims against.
-/

/-! ## A281071.P10116760726122649806

`gcd(A005843(A001630(n)), A161953(n+1))`
-/

namespace A281071.P10116760726122649806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 (A001630 n).toNat) (A161953 (n + 1))

end

end A281071.P10116760726122649806

/-! ## A281071.P10877422346929031400

`gcd(A000005(A286700(n)), A039698(n+1))`
-/

namespace A281071.P10877422346929031400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A286700 n).toNat) (A039698 (n + 1))

end

end A281071.P10877422346929031400

/-! ## A281071.P7182482876269098834

`A002181(A047977(n+1))%A020639(n+2)`
-/

namespace A281071.P7182482876269098834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002181 (A047977 (n + 1)).toNat) (A020639 (n + 2))

end

end A281071.P7182482876269098834

/-! ## A281071.P1765910890404683139

`gcd((n+1)*3^(n%2), A222972(n+1))`
-/

namespace A281071.P1765910890404683139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) * 3 ^ (n % 2) : ℤ) (A222972 (n + 1))

end

end A281071.P1765910890404683139

/-! ## A281071.P14046164308214847916

`A057237(A128091(n+2))`
-/

namespace A281071.P14046164308214847916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (A128091 (n + 2)).toNat

end

end A281071.P14046164308214847916

/-!
# A281072: Smallest number k > 0 such that b - r is even or r = 0 for all b = 1..n, r == k mod b.

The programs for A281072, there is no canonical definition to state claims against.
-/

/-! ## A281072.P11584922484196072672

`∏{e}[A117965(A048656(n+1)), #+1]`
-/

namespace A281072.P11584922484196072672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117965 (A048656 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A281072.P11584922484196072672

/-! ## A281072.P9249065783780717820

`A000010(A005555(∑[2*a(n-2)]))` with `a(0)=1, a(1)=2, a(2)=1, a(3)=0`
-/

namespace A281072.P9249065783780717820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 0] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A005555 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A281072.P9249065783780717820

/-! ## A281072.P14012719238654350475

`A114806(A351870(n)+A123317(n+1))`
-/

namespace A281072.P14012719238654350475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114806 (A351870 n + A123317 (n + 1)).toNat

end

end A281072.P14012719238654350475

/-!
# A281073: Number of n X n 0..1 arrays with no element equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281073, there is no canonical definition to state claims against.
-/

/-! ## A281073.P2154526649198490567

`A281080(∑[4*n]+1)`
-/

namespace A281073.P2154526649198490567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281080 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A281073.P2154526649198490567

/-! ## A281073.P11444227618341608189

`A281080(A001844(n))+char[16]`
-/

namespace A281073.P11444227618341608189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281080 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281073.P11444227618341608189

/-! ## A281073.P8130184753261960175

`A057427(n)*A281080(A001844(n))`
-/

namespace A281073.P8130184753261960175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A281080 (A001844 n).toNat

end

end A281073.P8130184753261960175

/-! ## A281073.P8568722435776460526

`A178334(n)*A281080(A001844(n))`
-/

namespace A281073.P8568722435776460526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A281080 (A001844 n).toNat

end

end A281073.P8568722435776460526

/-! ## A281073.P3853552634163731121

`A281080(A001844(n))%A013974(n)`
-/

namespace A281073.P3853552634163731121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281080 (A001844 n).toNat) (A013974 n)

end

end A281073.P3853552634163731121

/-!
# A281074: Number of n X 2 0..1 arrays with no element equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281074, there is no canonical definition to state claims against.
-/

/-! ## A281074.P14296035333407203013

`A281080(∑[n+1]+2)`
-/

namespace A281074.P14296035333407203013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281080 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281074.P14296035333407203013

/-! ## A281074.P8711502810014317597

`lcm(2, A281080(A000096(n)+3))`
-/

namespace A281074.P8711502810014317597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A281080 (A000096 n + 3).toNat)

end

end A281074.P8711502810014317597

/-! ## A281074.P11488828033704385402

`char[A007318(n)]*A281080(A000096(n)+3)`
-/

namespace A281074.P11488828033704385402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A281080 (A000096 n + 3).toNat

end

end A281074.P11488828033704385402

/-! ## A281074.P4635137224033228967

`A007318(C(2, n))*A281080(A000096(n)+3)`
-/

namespace A281074.P4635137224033228967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A281080 (A000096 n + 3).toNat

end

end A281074.P4635137224033228967

/-! ## A281074.P2123269082762817166

`A281080(A000096(n)+3)^A007318(C(n, 2))`
-/

namespace A281074.P2123269082762817166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281080 (A000096 n + 3).toNat : ℚ) ^ (A007318 (Nat.choose n 2) : ℤ)

end

end A281074.P2123269082762817166

/-!
# A281075: Number of nX3 0..1 arrays with no element equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281075, there is no canonical definition to state claims against.
-/

/-! ## A281075.P18445457951139984647

`A281080(∑[n+2]+4)`
-/

namespace A281075.P18445457951139984647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281080 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A281075.P18445457951139984647

/-! ## A281075.P6626419000905827121

`and(-1, A281080(A167614(n+1)))`
-/

namespace A281075.P6626419000905827121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A281080 (A167614 (n + 1)).toNat)

end

end A281075.P6626419000905827121

/-! ## A281075.P15229155855211175485

`record[A010054(n)*A281080(n+3)]`
-/

namespace A281075.P15229155855211175485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A281080 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281075.P15229155855211175485

/-! ## A281075.P5522371574621908326

`or(char[2], A281080(A340266(n+1)+1))`
-/

namespace A281075.P5522371574621908326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A281080 (A340266 (n + 1) + 1).toNat)

end

end A281075.P5522371574621908326

/-! ## A281075.P212499956926332810

`A281080(A167614(n+1))+A185284(n)`
-/

namespace A281075.P212499956926332810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281080 (A167614 (n + 1)).toNat + A185284 n

end

end A281075.P212499956926332810

/-!
# A281076: Number of nX4 0..1 arrays with no element equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281076, there is no canonical definition to state claims against.
-/

/-! ## A281076.P2621187122714244332

`A281080(∑[n+2]+n+8)`
-/

namespace A281076.P2621187122714244332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281080 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 8))

end

end A281076.P2621187122714244332

/-! ## A281076.P2539393045476399028

`lcm(2, A281080(A000217(n+3)+4))`
-/

namespace A281076.P2539393045476399028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A281080 (A000217 (n + 3) + 4).toNat)

end

end A281076.P2539393045476399028

/-! ## A281076.P5764693130801345472

`A281080(A052905(n)+9)+A185284(n)`
-/

namespace A281076.P5764693130801345472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281080 (A052905 n + 9).toNat + A185284 n

end

end A281076.P5764693130801345472

/-! ## A281076.P494354396259783304

`char[A007318(n)]*A281080(A000217(n+3)+4)`
-/

namespace A281076.P494354396259783304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A281080 (A000217 (n + 3) + 4).toNat

end

end A281076.P494354396259783304

/-! ## A281076.P9598590544551172040

`A281080(A000217(n+3)+4)%A000108(n+6)`
-/

namespace A281076.P9598590544551172040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281080 (A000217 (n + 3) + 4).toNat) (A000108 (n + 6))

end

end A281076.P9598590544551172040

/-!
# A281077: Number of nX5 0..1 arrays with no element equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281077, there is no canonical definition to state claims against.
-/

/-! ## A281077.P13436698439164528416

`A281080(A374005(n+1))`
-/

namespace A281077.P13436698439164528416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281080 (A374005 (n + 1)).toNat

end

end A281077.P13436698439164528416

/-! ## A281077.P13981302002135694049

`A281080(A167499(n+3))`
-/

namespace A281077.P13981302002135694049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281080 (A167499 (n + 3)).toNat

end

end A281077.P13981302002135694049

/-! ## A281077.P9013618224738559637

`A281080(A077169(n+5))`
-/

namespace A281077.P9013618224738559637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281080 (A077169 (n + 5)).toNat

end

end A281077.P9013618224738559637

/-! ## A281077.P13371433496486262632

`A281080(A155212(n)+13)`
-/

namespace A281077.P13371433496486262632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281080 (A155212 n + 13).toNat

end

end A281077.P13371433496486262632

/-! ## A281077.P9239072745052036668

`A281080(A056000(n)+15)`
-/

namespace A281077.P9239072745052036668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281080 (A056000 n + 15).toNat

end

end A281077.P9239072745052036668

/-!
# A281078: Number of nX6 0..1 arrays with no element equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281078, there is no canonical definition to state claims against.
-/

/-! ## A281078.P3845258542105807563

`A281080(A374007(n+1))`
-/

namespace A281078.P3845258542105807563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281080 (A374007 (n + 1)).toNat

end

end A281078.P3845258542105807563

/-! ## A281078.P17253041341091509036

`A281080(A166136(n+4))`
-/

namespace A281078.P17253041341091509036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281080 (A166136 (n + 4)).toNat

end

end A281078.P17253041341091509036

/-! ## A281078.P18442778845850786827

`A281080(A056115(n)+21)`
-/

namespace A281078.P18442778845850786827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281080 (A056115 n + 21).toNat

end

end A281078.P18442778845850786827

/-! ## A281078.P4896517683091052626

`A281080(Δ[A224039(n+3)])`
-/

namespace A281078.P4896517683091052626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281080 (f1 (n + 1) - f1 n).toNat

end

end A281078.P4896517683091052626

/-! ## A281078.P15577347034074817253

`A281080(A340266(n+4)+4)`
-/

namespace A281078.P15577347034074817253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281080 (A340266 (n + 4) + 4).toNat

end

end A281078.P15577347034074817253

/-!
# A281079: Number of nX7 0..1 arrays with no element equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281079, there is no canonical definition to state claims against.
-/

/-! ## A281079.P9737173940422210904

`A281080(A374008(n+1))`
-/

namespace A281079.P9737173940422210904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281080 (A374008 (n + 1)).toNat

end

end A281079.P9737173940422210904

/-! ## A281079.P4372249043285832500

`A281080(A000124(n+6)+6)`
-/

namespace A281079.P4372249043285832500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281080 (A000124 (n + 6) + 6).toNat

end

end A281079.P4372249043285832500

/-! ## A281079.P8157820474790228867

`A281080(A000096(n+5)+8)`
-/

namespace A281079.P8157820474790228867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281080 (A000096 (n + 5) + 8).toNat

end

end A281079.P8157820474790228867

/-! ## A281079.P17099449878076559569

`A281080(A000217(n+6)+7)`
-/

namespace A281079.P17099449878076559569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281080 (A000217 (n + 6) + 7).toNat

end

end A281079.P17099449878076559569

/-! ## A281079.P9939381939764510758

`A281080(A052905(n+3)+12)`
-/

namespace A281079.P9939381939764510758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281080 (A052905 (n + 3) + 12).toNat

end

end A281079.P9939381939764510758

/-!
# A281080: T(n,k) = Number of n X k 0..1 arrays with no element equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281080, there is no canonical definition to state claims against.
-/

/-! ## A281080.P12431446717418440639

`A023108(A224281(n+5))%A174127(n)`
-/

namespace A281080.P12431446717418440639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023108 (A224281 (n + 5)).toNat) (A174127 n)

end

end A281080.P12431446717418440639

/-! ## A281080.P4938113170972291620

`A241828(A270890(n+1))%A241828(A075798(n+1))`
-/

namespace A281080.P4938113170972291620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241828 (A270890 (n + 1)).toNat) (A241828 (A075798 (n + 1)).toNat)

end

end A281080.P4938113170972291620

/-!
# A281081: Expansion of Product_{k>=0} (1 + x^(3*k*(k+1)/2+1)).

The programs for A281081, there is no canonical definition to state claims against.
-/

/-! ## A281081.P15466581356002096338

`A034968(A332005(n))`
-/

namespace A281081.P15466581356002096338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A332005 n).toNat

end

end A281081.P15466581356002096338

/-! ## A281081.P1591343693551812524

`A055091(and(-1, A332005(n)))`
-/

namespace A281081.P1591343693551812524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (Int.land (-1) (A332005 n)).toNat

end

end A281081.P1591343693551812524

/-! ## A281081.P1841492668791264588

`A055091(A332005(char[7]+n))`
-/

namespace A281081.P1841492668791264588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (A332005 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A281081.P1841492668791264588

/-! ## A281081.P7150367100663961085

`A055091(A332005(n)%∑[n+5])`
-/

namespace A281081.P7150367100663961085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (Int.tmod (A332005 n) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A281081.P7150367100663961085

/-! ## A281081.P10340734391441278707

`A055091(A332005(n)+C(n, n²))`
-/

namespace A281081.P10340734391441278707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (A332005 n + (Nat.choose n (n ^ 2) : ℤ)).toNat

end

end A281081.P10340734391441278707

/-! ## A281081.P14784205044239760519

`A055091(gcd(C(n, n²), A332005(n)))`
-/

namespace A281081.P14784205044239760519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (Int.gcd (Nat.choose n (n ^ 2) : ℤ) (A332005 n))

end

end A281081.P14784205044239760519

/-! ## A281081.P14386555115434172849

`A055091(A332005(n))/A007318(C(2, n))`
-/

namespace A281081.P14386555115434172849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055091 (A332005 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A281081.P14386555115434172849

/-! ## A281081.P17745227381746738157

`A055091(A332005(n))+A008683(4*(n+1))`
-/

namespace A281081.P17745227381746738157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (A332005 n).toNat + A008683 (4 * (n + 1))

end

end A281081.P17745227381746738157

/-! ## A281081.P6049736692735153146

`A000041(C(2, n+2))*A055091(A332005(n))`
-/

namespace A281081.P6049736692735153146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A055091 (A332005 n).toNat

end

end A281081.P6049736692735153146

/-! ## A281081.P3163293555649163305

`A000108(C(2, n+2))*A055091(A332005(n))`
-/

namespace A281081.P3163293555649163305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A055091 (A332005 n).toNat

end

end A281081.P3163293555649163305

/-!
# A281082: Expansion of Product_{k>=0} (1 + x^(2*k*(k+1)+1)).

The programs for A281082, there is no canonical definition to state claims against.
-/

/-! ## A281082.P5060749193946953591

`A034968(A332006(n))`
-/

namespace A281082.P5060749193946953591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A332006 n).toNat

end

end A281082.P5060749193946953591

/-! ## A281082.P16799258013803946823

`A055091(lcm(6, A332006(n)))`
-/

namespace A281082.P16799258013803946823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (Int.lcm 6 (A332006 n))

end

end A281082.P16799258013803946823

/-! ## A281082.P1635940353519525198

`A054868(∑{d}[A332006(n), #])`
-/

namespace A281082.P1635940353519525198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054868 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A281082.P1635940353519525198

/-! ## A281082.P17917708859832398558

`A006694(∑{digits}[A332006(n), #])`
-/

namespace A281082.P17917708859832398558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A281082.P17917708859832398558

/-! ## A281082.P5339522607984702447

`A055091(∑{digits}[A332006(n), #])`
-/

namespace A281082.P5339522607984702447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A281082.P5339522607984702447

/-! ## A281082.P958011299728173335

`A055091(A332006(n)%∑[n+2])`
-/

namespace A281082.P958011299728173335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (Int.tmod (A332006 n) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A281082.P958011299728173335

/-! ## A281082.P16425218984283222742

`A055091(A332006(n)+A000007(n))`
-/

namespace A281082.P16425218984283222742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (A332006 n + A000007 n).toNat

end

end A281082.P16425218984283222742

/-! ## A281082.P6847313458189040991

`A007318(C(2, n))*A055091(A332006(n))`
-/

namespace A281082.P6847313458189040991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A055091 (A332006 n).toNat

end

end A281082.P6847313458189040991

/-! ## A281082.P3198883323261859414

`A055091(A332006(n))^A014963(∑[n+3])`
-/

namespace A281082.P3198883323261859414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055091 (A332006 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A281082.P3198883323261859414

/-! ## A281082.P2489943593678811325

`ceil(A332006(n)/A181324(n))`
-/

namespace A281082.P2489943593678811325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A332006 n : ℚ) / (A181324 n : ℚ)⌉

end

end A281082.P2489943593678811325

/-!
# A281083: Expansion of Product_{k>=0} (1 + x^(5*k*(k+1)/2+1)).

The programs for A281083, there is no canonical definition to state claims against.
-/

/-! ## A281083.P3586118156970637234

`A281084(lt[A230405(2*n+1), A107437(n+3)])`
-/

namespace A281083.P3586118156970637234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230405 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107437 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281084 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A281083.P3586118156970637234

/-! ## A281083.P1606841795168455227

`A167700(A047534(n+1))^A093429(n+1)`
-/

namespace A281083.P1606841795168455227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167700 (A047534 (n + 1)).toNat : ℚ) ^ (A093429 (n + 1) : ℤ)

end

end A281083.P1606841795168455227

/-! ## A281083.P13393908343239956432

`A167700(A047534(n+1))^A160111(n+1)`
-/

namespace A281083.P13393908343239956432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167700 (A047534 (n + 1)).toNat : ℚ) ^ (A160111 (n + 1) : ℤ)

end

end A281083.P13393908343239956432

/-! ## A281083.P11064955453584983921

`A167700(A047534(n+1)+C(2, A093015(n)))`
-/

namespace A281083.P11064955453584983921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167700 (A047534 (n + 1) + (Nat.choose 2 (A093015 n).toNat : ℤ)).toNat

end

end A281083.P11064955453584983921

/-! ## A281083.P10203137798183440477

`A167700(A047534(n+1))^A332973(comp[∑[n]])`
-/

namespace A281083.P10203137798183440477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167700 (A047534 (n + 1)).toNat : ℚ) ^ (A332973 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ)

end

end A281083.P10203137798183440477

/-! ## A281083.P3677353637466119673

`A167700(A047534(n+1))%p?[A178220(n+1)]`
-/

namespace A281083.P3677353637466119673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167700 (A047534 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A281083.P3677353637466119673

/-!
# A281084: Expansion of Product_{k>=0} (1 + x^(3*k*(k+1)+1)).

The programs for A281084, there is no canonical definition to state claims against.
-/

/-! ## A281084.P13116206206575672041

`A167700(A005100(n+1)%A234899(n+1))`
-/

namespace A281084.P13116206206575672041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167700 (Int.tmod (A005100 (n + 1)) (A234899 (n + 1))).toNat

end

end A281084.P13116206206575672041

/-! ## A281084.P1171717589859974301

`A167700(lt[A158100(n+4), 7])`
-/

namespace A281084.P1171717589859974301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158100 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167700 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A281084.P1171717589859974301

/-! ## A281084.P8230942650931524568

`A027889(A195120(2*n+1))%3`
-/

namespace A281084.P8230942650931524568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027889 (A195120 (2 * n + 1)).toNat) 3

end

end A281084.P8230942650931524568

/-! ## A281084.P10951728875109280301

`lcm(A016310(A102595(n)), A016332(n))`
-/

namespace A281084.P10951728875109280301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016310 (A102595 n).toNat) (A016332 n)

end

end A281084.P10951728875109280301

/-! ## A281084.P12451602650191002161

`A280933(A322534(n+1))`
-/

namespace A281084.P12451602650191002161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280933 (A322534 (n + 1)).toNat

end

end A281084.P12451602650191002161

/-!
# A281085: Numerator of sum of reciprocals of numbers less than n that do not divide n.

The programs for A281085, there is no canonical definition to state claims against.
-/

/-! ## A281085.P4546187965941119893

`lcm(n+1, A079076(n+1))/(n+1)`
-/

namespace A281085.P4546187965941119893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A079076 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A281085.P4546187965941119893

/-!
# A281086: Denominator of sum of reciprocals of numbers less than n that do not divide n.

The programs for A281086, there is no canonical definition to state claims against.
-/

/-! ## A281086.P18284609803979647523

`A000027(gcd(A002805(n+1), A067391(n+1)))`
-/

namespace A281086.P18284609803979647523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.gcd (A002805 (n + 1)) (A067391 (n + 1)))

end

end A281086.P18284609803979647523

/-! ## A281086.P17521004887383018503

`A116417(2^(n+1)-∑{d}[n+1, 2^(#-1)])`
-/

namespace A281086.P17521004887383018503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 (SequenceMachineLib.roundAway ((2 ^ (n + 1) : ℚ) - ∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ))).toNat

end

end A281086.P17521004887383018503

/-! ## A281086.P11636791976187440060

`A116417(A000740(n+1)-floor(n/∏{p}[n+1, #]))`
-/

namespace A281086.P11636791976187440060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 (A000740 (n + 1) - ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋).toNat

end

end A281086.P11636791976187440060

/-! ## A281086.P3647367958332990138

`A116417(A000740(n+1)-(n+1)/∏{p}[n+1, #])`
-/

namespace A281086.P3647367958332990138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 (SequenceMachineLib.roundAway ((A000740 (n + 1) : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A281086.P3647367958332990138

/-! ## A281086.P17057072802478361874

`A116417(A000740(n+1)-A110654(n))`
-/

namespace A281086.P17057072802478361874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 (A000740 (n + 1) - A110654 n).toNat

end

end A281086.P17057072802478361874

/-!
# A281087: Numbers k such that Fibonacci(k) and Fibonacci(k+2) are both prime.

The programs for A281087, there is no canonical definition to state claims against.
-/

/-! ## A281087.P12750335058955908527

`A279795(n+1)-2`
-/

namespace A281087.P12750335058955908527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279795 (n + 1) - 2

end

end A281087.P12750335058955908527

/-!
# A281088: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 318", based on the 5-celled von Neumann neighborhood.

The programs for A281088, there is no canonical definition to state claims against.
-/

/-! ## A281088.P7854610157230252321

`A007088(A281100(n))`
-/

namespace A281088.P7854610157230252321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281100 n).toNat

end

end A281088.P7854610157230252321

/-! ## A281088.P2060094795818855280

`A007088(A000225(n+2)-A282909(n+1))`
-/

namespace A281088.P2060094795818855280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000225 (n + 2) - A282909 (n + 1)).toNat

end

end A281088.P2060094795818855280

/-! ## A281088.P9124434327836898743

`A256078(A282909(n+1))`
-/

namespace A281088.P9124434327836898743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256078 (A282909 (n + 1)).toNat

end

end A281088.P9124434327836898743

/-! ## A281088.P8436987227860086657

`A185544(2*A281100(n))`
-/

namespace A281088.P8436987227860086657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281100 n).toNat

end

end A281088.P8436987227860086657

/-! ## A281088.P13339890471617465325

`A185544(2*(A000225(n+2)-A282909(n+1)))`
-/

namespace A281088.P13339890471617465325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * (A000225 (n + 2) - A282909 (n + 1))).toNat

end

end A281088.P13339890471617465325

/-!
# A281090: Number of 2 X 2 matrices with all elements in {0,...,n} and prime permanent.

The programs for A281090, there is no canonical definition to state claims against.
-/

/-! ## A281090.P11750841892827057082

`eq[A314419(n), A314865(n)]`
-/

namespace A281090.P11750841892827057082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314419 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281090.P11750841892827057082

/-!
# A281091: Numbers beginning and ending with their digital root in decimal representation.

The programs for A281091, there is no canonical definition to state claims against.
-/

/-! ## A281091.P13706974985721114494

`∩[A280657(n+1), A280658(n+1)]`
-/

namespace A281091.P13706974985721114494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281091.P13706974985721114494

/-! ## A281091.P11936826982968223392

`A002113(∑[A003179(n-∑{digits}[n, #])])`
-/

namespace A281091.P11936826982968223392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003179 (n - ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A281091.P11936826982968223392

/-! ## A281091.P13175161717194827284

`A141033(A264979(n+1))`
-/

namespace A281091.P13175161717194827284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141033 (A264979 (n + 1)).toNat

end

end A281091.P13175161717194827284

/-! ## A281091.P8861130533614193890

`A141033(A319726(n+1))`
-/

namespace A281091.P8861130533614193890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141033 (A319726 (n + 1)).toNat

end

end A281091.P8861130533614193890

/-! ## A281091.P14670502943931660022

`filter[A317110(n+1), A136522(#)]`
-/

namespace A281091.P14670502943931660022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A281091.P14670502943931660022

/-!
# A281092: Position of the first occurrence of n in the decimal expansion of e.

The programs for A281092, there is no canonical definition to state claims against.
-/

/-! ## A281092.P7210417678721699938

`A088576(n)-1`
-/

namespace A281092.P7210417678721699938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088576 n - 1

end

end A281092.P7210417678721699938

/-! ## A281092.P3113115154160321265

`A023443(A088576(n))`
-/

namespace A281092.P3113115154160321265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A088576 n).toNat

end

end A281092.P3113115154160321265

/-! ## A281092.P10344414591175948431

`A023444(A088576(n)+1)`
-/

namespace A281092.P10344414591175948431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A088576 n + 1).toNat

end

end A281092.P10344414591175948431

/-! ## A281092.P6559722193008028721

`A289207(A088576(n)+1)`
-/

namespace A281092.P6559722193008028721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A088576 n + 1).toNat

end

end A281092.P6559722193008028721

/-! ## A281092.P11749495684623872390

`A023445(A088576(n)+2)`
-/

namespace A281092.P11749495684623872390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A088576 n + 2).toNat

end

end A281092.P11749495684623872390

/-! ## A281092.P17024796706433440178

`A065423(2*A088576(n))`
-/

namespace A281092.P17024796706433440178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A088576 n).toNat

end

end A281092.P17024796706433440178

/-! ## A281092.P949230600633044905

`A023457(A088576(n)+14)`
-/

namespace A281092.P949230600633044905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023457 (A088576 n + 14).toNat

end

end A281092.P949230600633044905

/-! ## A281092.P9887529197189419471

`A078197(n)%A088576(n)`
-/

namespace A281092.P9887529197189419471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078197 n) (A088576 n)

end

end A281092.P9887529197189419471

/-! ## A281092.P16004804667147595329

`A023444(2*A088576(n))/2`
-/

namespace A281092.P16004804667147595329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023444 (2 * A088576 n).toNat : ℚ) / 2

end

end A281092.P16004804667147595329

/-! ## A281092.P14629238809851175696

`A289207(2*A088576(n))/2`
-/

namespace A281092.P14629238809851175696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289207 (2 * A088576 n).toNat : ℚ) / 2

end

end A281092.P14629238809851175696

/-!
# A281093: Primes having only {3, 4, 7, 9} as digits.

The programs for A281093, there is no canonical definition to state claims against.
-/

/-! ## A281093.P6923214805734541710

`p?[A064770(A046034(n+1))+A046034(n+1)]`
-/

namespace A281093.P6923214805734541710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 (A046034 (n + 1)).toNat + A046034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A281093.P6923214805734541710

/-!
# A281094: Maximum number of nonisomorphic subtrees of a tree of order n.

The programs for A281094, there is no canonical definition to state claims against.
-/

/-! ## A281094.P13583747442180167620

`round(root(A323361(3*(n+1)), 4))`
-/

namespace A281094.P13583747442180167620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A323361 (3 * (n + 1)) : ℝ) ^ (1 / (4 : ℝ)))

end

end A281094.P13583747442180167620

/-! ## A281094.P15625950580988642708

`round(sqrt(sqrt(A323361(3*n+3))))`
-/

namespace A281094.P15625950580988642708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A323361 (3 * n + 3) : ℝ)))

end

end A281094.P15625950580988642708

/-! ## A281094.P11633104818117710791

`A083277(A300438(n))`
-/

namespace A281094.P11633104818117710791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (A300438 n).toNat

end

end A281094.P11633104818117710791

/-! ## A281094.P14310680370418621504

`∑[A048766(A134955(n))]`
-/

namespace A281094.P14310680370418621504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A134955 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281094.P14310680370418621504

/-! ## A281094.P11346449340801219683

`A335376(A208887(n+1))`
-/

namespace A281094.P11346449340801219683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335376 (A208887 (n + 1)).toNat

end

end A281094.P11346449340801219683

/-!
# A281095: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 406", based on the 5-celled von Neumann neighborhood.

The programs for A281095, there is no canonical definition to state claims against.
-/

/-! ## A281095.P2907139963450730824

`Δ[A014824(n)]-A283218(A028310(n))`
-/

namespace A281095.P2907139963450730824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A283218 (A028310 n).toNat

end

end A281095.P2907139963450730824

/-! ## A281095.P2176605696367537088

`A000042(n+1)-A283218(A028310(n))`
-/

namespace A281095.P2176605696367537088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A283218 (A028310 n).toNat

end

end A281095.P2176605696367537088

/-! ## A281095.P13698355046912199590

`A282218(n)+A283136(n)-A283218(n)`
-/

namespace A281095.P13698355046912199590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282218 n + (A283136 n - A283218 n)

end

end A281095.P13698355046912199590

/-! ## A281095.P13888923735932399029

`A000007(n)+Δ[A014824(n)]-A283218(n)`
-/

namespace A281095.P13888923735932399029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n - A283218 n)

end

end A281095.P13888923735932399029

/-! ## A281095.P15177865794619754312

`A000042(n+1)-A283218(A000007(n)+n)`
-/

namespace A281095.P15177865794619754312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A283218 (A000007 n + (n : ℤ)).toNat

end

end A281095.P15177865794619754312

/-! ## A281095.P9883044203473041639

`A000042(n+1)-A283218(n)%A047855(n)`
-/

namespace A281095.P9883044203473041639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - Int.tmod (A283218 n) (A047855 n)

end

end A281095.P9883044203473041639

/-!
# A281096: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 406", based on the 5-celled von Neumann neighborhood.

The programs for A281096, there is no canonical definition to state claims against.
-/

/-! ## A281096.P9392165877024350585

`or(1, A000042(n+1)-A283219(n))`
-/

namespace A281096.P9392165877024350585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000042 (n + 1) - A283219 n)

end

end A281096.P9392165877024350585

/-! ## A281096.P460651414911018988

`A000042(n+1)-A283219(round(sqrt(n²+1)))`
-/

namespace A281096.P460651414911018988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A283219 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A281096.P460651414911018988

/-! ## A281096.P9676063646029874066

`Δ[A014824(n)]-A283219(A028310(n))`
-/

namespace A281096.P9676063646029874066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A283219 (A028310 n).toNat

end

end A281096.P9676063646029874066

/-! ## A281096.P15748406156995576807

`A007088(A281893(n))`
-/

namespace A281096.P15748406156995576807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281893 n).toNat

end

end A281096.P15748406156995576807

/-! ## A281096.P9990364095232470753

`A007088(A095121(n)+1-A283221(n))`
-/

namespace A281096.P9990364095232470753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A283221 n)).toNat

end

end A281096.P9990364095232470753

/-!
# A281097: Number of group homomorphisms S_3 -> S_n, where S_n denotes the symmetric group on n letters.

The programs for A281097, there is no canonical definition to state claims against.
-/

/-! ## A281097.P16466253972248767056

`6*A378279(n+1)+A000085(n+1)`
-/

namespace A281097.P16466253972248767056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A378279 (n + 1) + A000085 (n + 1)

end

end A281097.P16466253972248767056

/-! ## A281097.P8209436434511445070

`A204430(n+1)+A046660(Δ[A204430(n+1)])`
-/

namespace A281097.P8209436434511445070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204430 (n + 1) + A046660 (f1 (n + 1) - f1 n).toNat

end

end A281097.P8209436434511445070

/-!
# A281098: a(n) is the GCD of the sequence d(n) = A261327(k+n) - A261327(k) for all k.

The programs for A281098, the canonical program `A281098.P15379473949176983312` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281098 has offset 0).

The definition of A281098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281098.P15379473949176983312

`gcd(n, ceil((n/2)²))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281098

/-- `gcd(n, ceil((n/2)²))` -/
def P15379473949176983312.Spec : Prop :=
  ∀ n, (P15379473949176983312.a n : ℤ) = A281098 n

theorem P15379473949176983312.correct : P15379473949176983312.Spec := by
  intro n
  simp only [A281098]

end A281098

/-! ## A281098.P5416742063926552639

`gcd(2*n, 3*n%2)/gcd(n+2, 2*n)`
-/

namespace A281098.P5416742063926552639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (2 * n) (3 * (n % 2)) : ℚ) / (Nat.gcd (n + 2) (2 * n) : ℚ)

end

end A281098.P5416742063926552639

namespace A281098

/-- `gcd(2*n, 3*n%2)/gcd(n+2, 2*n)` -/
def P5416742063926552639.Spec : Prop :=
  ∀ n, P5416742063926552639.a n = (A281098 n : ℚ)

end A281098

/-! ## A281098.P11397582530662969200

`A022998(gcd(n, A097140(n)))`
-/

namespace A281098.P11397582530662969200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (Int.gcd (n : ℤ) (A097140 n))

end

end A281098.P11397582530662969200

namespace A281098

/-- `A022998(gcd(n, A097140(n)))` -/
def P11397582530662969200.Spec : Prop :=
  ∀ n, P11397582530662969200.a n = A281098 n

end A281098

/-! ## A281098.P4104015183684781625

`A022998(gcd(C(n, 2), A213038(n)))`
-/

namespace A281098.P4104015183684781625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (Int.gcd (Nat.choose n 2 : ℤ) (A213038 n))

end

end A281098.P4104015183684781625

namespace A281098

/-- `A022998(gcd(C(n, 2), A213038(n)))` -/
def P4104015183684781625.Spec : Prop :=
  ∀ n, P4104015183684781625.a n = A281098 n

end A281098

/-! ## A281098.P4139048951594192541

`A022998(gcd(n-∑[n], A004652(n)))`
-/

namespace A281098.P4139048951594192541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (Int.gcd ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (A004652 n))

end

end A281098.P4139048951594192541

namespace A281098

/-- `A022998(gcd(n-∑[n], A004652(n)))` -/
def P4139048951594192541.Spec : Prop :=
  ∀ n, P4139048951594192541.a n = A281098 n

end A281098

/-! ## A281098.P6783022672294623015

`A014682(gcd(2*n, 2*A195041(n)))`
-/

namespace A281098.P6783022672294623015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.gcd (2 * n : ℤ) (2 * A195041 n))

end

end A281098.P6783022672294623015

namespace A281098

/-- `A014682(gcd(2*n, 2*A195041(n)))` -/
def P6783022672294623015.Spec : Prop :=
  ∀ n, P6783022672294623015.a n = A281098 n

end A281098

/-! ## A281098.P24308734212255691

`A022998(gcd(A006003(n), A265723(n)))`
-/

namespace A281098.P24308734212255691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (Int.gcd (A006003 n) (A265723 n))

end

end A281098.P24308734212255691

namespace A281098

/-- `A022998(gcd(A006003(n), A265723(n)))` -/
def P24308734212255691.Spec : Prop :=
  ∀ n, P24308734212255691.a n = A281098 n

end A281098

/-! ## A281098.P1310624831576225074

`A022998(gcd(A008851(n+1), A022998(n)))`
-/

namespace A281098.P1310624831576225074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (Int.gcd (A008851 (n + 1)) (A022998 n))

end

end A281098.P1310624831576225074

namespace A281098

/-- `A022998(gcd(A008851(n+1), A022998(n)))` -/
def P1310624831576225074.Spec : Prop :=
  ∀ n, P1310624831576225074.a n = A281098 n

end A281098

/-! ## A281098.P6580713358079724698

`A283971(gcd(A117794(n+1), A283971(n)))`
-/

namespace A281098.P6580713358079724698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 (Int.gcd (A117794 (n + 1)) (A283971 n))

end

end A281098.P6580713358079724698

namespace A281098

/-- `A283971(gcd(A117794(n+1), A283971(n)))` -/
def P6580713358079724698.Spec : Prop :=
  ∀ n, P6580713358079724698.a n = A281098 n

end A281098

/-! ## A281098.P3900383693492587991

`A026741(gcd(2*n, A195142(n)))`
-/

namespace A281098.P3900383693492587991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.gcd (2 * n : ℤ) (A195142 n))

end

end A281098.P3900383693492587991

namespace A281098

/-- `A026741(gcd(2*n, A195142(n)))` -/
def P3900383693492587991.Spec : Prop :=
  ∀ n, P3900383693492587991.a n = A281098 n

end A281098

/-! ## A281098.P17808165641846394032

`A004525(gcd(3*floor(n²/2), A005843(n)))`
-/

namespace A281098.P17808165641846394032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.gcd (3 * ⌊(n ^ 2 : ℚ) / 2⌋) (A005843 n))

end

end A281098.P17808165641846394032

namespace A281098

/-- `A004525(gcd(3*floor(n²/2), A005843(n)))` -/
def P17808165641846394032.Spec : Prop :=
  ∀ n, P17808165641846394032.a n = A281098 n

end A281098

/-!
# A281099: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 318", based on the 5-celled von Neumann neighborhood.

The programs for A281099, there is no canonical definition to state claims against.
-/

/-! ## A281099.P13300389694872720400

`A007088(A281101(n))`
-/

namespace A281099.P13300389694872720400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281101 n).toNat

end

end A281099.P13300389694872720400

/-! ## A281099.P3361538687249155468

`A305989(A281100(n)/A254524(n+1)²)`
-/

namespace A281099.P3361538687249155468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A281100 n : ℚ) / (A254524 (n + 1) ^ 2 : ℚ))).toNat

end

end A281099.P3361538687249155468

/-! ## A281099.P17507245814643545016

`A185544(2*A281101(n))`
-/

namespace A281099.P17507245814643545016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281101 n).toNat

end

end A281099.P17507245814643545016

/-! ## A281099.P4096571291741250614

`A185544(lcm(2, A281101(n)))`
-/

namespace A281099.P4096571291741250614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A281101 n))

end

end A281099.P4096571291741250614

/-! ## A281099.P8490504744381322885

`A305989(A281100(n)/A254524(n+1))`
-/

namespace A281099.P8490504744381322885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A281100 n : ℚ) / (A254524 (n + 1) : ℚ))).toNat

end

end A281099.P8490504744381322885

