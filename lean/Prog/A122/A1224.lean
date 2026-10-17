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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A122400: Number of square (0,1)-matrices without zero rows and with exactly n entries equal to 1.

The programs for A122400, there is no canonical definition to state claims against.
-/

/-! ## A122400.P5296044751509449567

`A214700((2-char[1])^n)`
-/

namespace A122400.P5296044751509449567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214700 ((2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ n).toNat

end

end A122400.P5296044751509449567

/-!
# A122404: Number of preferential arrangements of n labeled elements where the exchange of elements among the levels is restricted to levels of different occupation numbers.

The programs for A122404, there is no canonical definition to state claims against.
-/

/-! ## A122404.P15085910613646740482

`A267302(A041281(n))`
-/

namespace A122404.P15085910613646740482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267302 (A041281 n).toNat

end

end A122404.P15085910613646740482

/-! ## A122404.P1106753213352518459

`eq[A176506(n+1), A260736(n)]`
-/

namespace A122404.P1106753213352518459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260736 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122404.P1106753213352518459

/-!
# A122405: Numbers of the form Product_i b_i^e_i, where the b_i are all distinct values > 1 and the e_i are a permutation of the b_i.

The programs for A122405, there is no canonical definition to state claims against.
-/

/-! ## A122405.P7363067724194843743

`record[A003963(A048768(n+1))]`
-/

namespace A122405.P7363067724194843743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A048768 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122405.P7363067724194843743

/-! ## A122405.P10826373406557520557

`record[A003963(A109297(n+1))]`
-/

namespace A122405.P10826373406557520557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A109297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122405.P10826373406557520557

/-!
# A122406: Numbers of the form Product_i p_i^e_i, where the p_i are distinct primes and the e_i are a permutation of the p_i.

The programs for A122406, there is no canonical definition to state claims against.
-/

/-! ## A122406.P14510518609488813131

`∩[A054412(n+1), A272818(n+1)]`
-/

namespace A122406.P14510518609488813131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122406.P14510518609488813131

/-! ## A122406.P14035367838577864071

`∩[A054412(n+1), A272858(n+1)]`
-/

namespace A122406.P14035367838577864071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122406.P14035367838577864071

/-! ## A122406.P6670950779402537750

`∩[A054411(n+1), A054412(n+1)]`
-/

namespace A122406.P6670950779402537750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122406.P6670950779402537750

/-! ## A122406.P324909588423355162

`∩[A054411(n+1), A272818(n+1)]`
-/

namespace A122406.P324909588423355162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122406.P324909588423355162

/-! ## A122406.P4553521468576242505

`∩[A054412(n+1), A377819(n+1)]`
-/

namespace A122406.P4553521468576242505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122406.P4553521468576242505

/-!
# A122407: Expansion of q^(-2/3) * b(q) * b(q^2) * c(q^2) / 3 in powers of q where b(), c() are cubic AGM theta functions.

The programs for A122407, there is no canonical definition to state claims against.
-/

/-! ## A122407.P11045901037399340096

`A208384(3*n+2)`
-/

namespace A122407.P11045901037399340096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208384 (3 * n + 2)

end

end A122407.P11045901037399340096

/-! ## A122407.P4990256659868037520

`A116418(2*n+1)/2-A116418(2*n+1)`
-/

namespace A122407.P4990256659868037520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116418 (2 * n + 1) : ℚ) / 2 - (A116418 (2 * n + 1) : ℚ)

end

end A122407.P4990256659868037520

/-! ## A122407.P4552344883973810769

`A208384(A016789(n))%(n+2)²²`
-/

namespace A122407.P4552344883973810769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208384 (A016789 n).toNat) (((n + 2) ^ 2) ^ 2 : ℤ)

end

end A122407.P4552344883973810769

/-! ## A122407.P7959355200940448038

`A208384(A016789(n))+A000007(n+1)`
-/

namespace A122407.P7959355200940448038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208384 (A016789 n).toNat + A000007 (n + 1)

end

end A122407.P7959355200940448038

/-! ## A122407.P15559140849067909878

`A208384(A016789(n))+A011379(n)%2`
-/

namespace A122407.P15559140849067909878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208384 (A016789 n).toNat + Int.tmod (A011379 n) 2

end

end A122407.P15559140849067909878

/-! ## A122407.P9363758070375594912

`A208384(A016789(n))+A212683(n)%2`
-/

namespace A122407.P9363758070375594912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208384 (A016789 n).toNat + Int.tmod (A212683 n) 2

end

end A122407.P9363758070375594912

/-! ## A122407.P214093999800651340

`A208384(A016789(n))+2%A008836(n+1)`
-/

namespace A122407.P214093999800651340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208384 (A016789 n).toNat + Int.tmod 2 (A008836 (n + 1))

end

end A122407.P214093999800651340

/-!
# A122408: Numbers n such that A067824(n) = n.

The programs for A122408, there is no canonical definition to state claims against.
-/

/-! ## A122408.P6400554534925787583

`eq[n, A067824(abs(1-n)+1)]`
-/

namespace A122408.P6400554534925787583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A122408.P6400554534925787583

/-! ## A122408.P15720087800174122153

`eq[n+1, A067824(n+1)]+1`
-/

namespace A122408.P15720087800174122153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A122408.P15720087800174122153

/-! ## A122408.P11460387578333817955

`eq[A065033(n), A074206(n)]`
-/

namespace A122408.P11460387578333817955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122408.P11460387578333817955

/-! ## A122408.P17308873939049223464

`eq[A056039(n+1), A074206(n)]`
-/

namespace A122408.P17308873939049223464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122408.P17308873939049223464

/-! ## A122408.P14233059731336628917

`eq[A074206(n), A249038(n+1)]`
-/

namespace A122408.P14233059731336628917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249038 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122408.P14233059731336628917

/-!
# A122409: Numbers k such that there is no cube between k^2 and (k+1)^2.

The programs for A122409, there is no canonical definition to state claims against.
-/

/-! ## A122409.P17820041207502073803

`comp[floor(sqrt(comp[(n+1)²]^3))]`
-/

namespace A122409.P17820041207502073803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n ^ 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A122409.P17820041207502073803

/-! ## A122409.P8221794422510284305

`lt[ceil((n+1)/γ), ceil(root(n²+1, 3))^3-n²]`
-/

namespace A122409.P8221794422510284305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.eulerMascheroniConstant⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 + 1 : ℝ) ^ (1 / (3 : ℝ))⌉ ^ 3 - (n ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A122409.P8221794422510284305

/-! ## A122409.P14379362800095060750

`comp[A000093(comp[n²])-1]+1`
-/

namespace A122409.P14379362800095060750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A122409.P14379362800095060750

/-! ## A122409.P8028731222415973793

`∪[(n+1)^3, comp[A000093(n)]]`
-/

namespace A122409.P8028731222415973793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A122409.P8028731222415973793

/-! ## A122409.P6885187986840079372

`floor((record[A075052(n+3)]-1)/2)`
-/

namespace A122409.P6885187986840079372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075052 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1 : ℚ) / 2⌋

end

end A122409.P6885187986840079372

/-! ## A122409.P14822772038951248843

`∪[(n+1)^3, A185543(n+1)]`
-/

namespace A122409.P14822772038951248843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122409.P14822772038951248843

/-! ## A122409.P7540800676378383035

`record[A101279(A075052(n+1))]`
-/

namespace A122409.P7540800676378383035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A075052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122409.P7540800676378383035

/-! ## A122409.P15322949588537694971

`record[A028242(A075052(n+2))]`
-/

namespace A122409.P15322949588537694971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A075052 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122409.P15322949588537694971

/-! ## A122409.P1844746004427041110

`A057979(record[A075052(n+3)])`
-/

namespace A122409.P1844746004427041110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075052 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A122409.P1844746004427041110

/-! ## A122409.P15679723183350615907

`∪[A185543(n+1), A213491(n)]`
-/

namespace A122409.P15679723183350615907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213491 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122409.P15679723183350615907

/-!
# A122410: a(n) is the sum of j's for those k's, 1 <= k <= n, where gcd(k,n) = p^j, p = prime.

The programs for A122410, the canonical program `A122410.P12302092588494273292` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122410 has offset 1).

The definition of A122410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122410.P12302092588494273292

`∑{d}[n+1, A000010(#)*A100995((n+1)/#)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A122410

/-- `∑{d}[n+1, A000010(#)*A100995((n+1)/#)]` -/
def P12302092588494273292.Spec : Prop :=
  ∀ n, P12302092588494273292.a n = A122410 (n + 1)

theorem P12302092588494273292.correct : P12302092588494273292.Spec := by
  intro n
  simp only [A122410, Nat.add_sub_cancel]

end A122410

/-! ## A122410.P4199208798565113574

`A001222(A067911(n+1))-A001222(A183092(n+1))`
-/

namespace A122410.P4199208798565113574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A067911 (n + 1)).toNat - A001222 (A183092 (n + 1)).toNat

end

end A122410.P4199208798565113574

namespace A122410

/-- `A001222(A067911(n+1))-A001222(A183092(n+1))` -/
def P4199208798565113574.Spec : Prop :=
  ∀ n, P4199208798565113574.a n = A122410 (n + 1)

end A122410

/-! ## A122410.P10525795438417852320

`A300251(n+1)-A000035(A035039(n))`
-/

namespace A122410.P10525795438417852320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300251 (n + 1) - A000035 (A035039 n).toNat

end

end A122410.P10525795438417852320

namespace A122410

/-- `A300251(n+1)-A000035(A035039(n))` -/
def P10525795438417852320.Spec : Prop :=
  ∀ n, P10525795438417852320.a n = A122410 (n + 1)

end A122410

/-! ## A122410.P8354847634111717054

`A300251(n+1)-A350251(A038622(n))`
-/

namespace A122410.P8354847634111717054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300251 (n + 1) - A350251 (A038622 n).toNat

end

end A122410.P8354847634111717054

namespace A122410

/-- `A300251(n+1)-A350251(A038622(n))` -/
def P8354847634111717054.Spec : Prop :=
  ∀ n, P8354847634111717054.a n = A122410 (n + 1)

end A122410

/-!
# A122411: a(n) is the sum of primes p for those k's, 2 <= k <= n, where gcd(k,n) = p^j > 1. (a(1) = 0.)

The programs for A122411, the canonical program `A122411.P10607431199644283672` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122411 has offset 1).

The definition of A122411 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116512, A390608, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A122411.P10607431199644283672

`A390608(n+1)+A116512(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A122411

/-- `A390608(n+1)+A116512(n+1)` -/
def P10607431199644283672.Spec : Prop :=
  ∀ n, P10607431199644283672.a n = A122411 (n + 1)

theorem P10607431199644283672.correct : P10607431199644283672.Spec := by
  intro n
  simp only [A122411, Nat.add_sub_cancel]

end A122411

/-! ## A122411.P3962449061371089520

`∑{d}[n+1, A001414(#)*A007431((n+1)/#)]`
-/

namespace A122411.P3962449061371089520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001414 d * A007431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A122411.P3962449061371089520

namespace A122411

/-- `∑{d}[n+1, A001414(#)*A007431((n+1)/#)]` -/
def P3962449061371089520.Spec : Prop :=
  ∀ n, P3962449061371089520.a n = A122411 (n + 1)

end A122411

/-! ## A122411.P8660781582616038524

`∑{d}[n+1, A000010(#)*A120007((n+1)/#)]`
-/

namespace A122411.P8660781582616038524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A120007 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A122411.P8660781582616038524

namespace A122411

/-- `∑{d}[n+1, A000010(#)*A120007((n+1)/#)]` -/
def P8660781582616038524.Spec : Prop :=
  ∀ n, P8660781582616038524.a n = A122411 (n + 1)

end A122411

/-! ## A122411.P8763625361533520015

`A003557(n+1)*A347104(A007947(n+1))`
-/

namespace A122411.P8763625361533520015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A347104 (A007947 (n + 1)).toNat

end

end A122411.P8763625361533520015

namespace A122411

/-- `A003557(n+1)*A347104(A007947(n+1))` -/
def P8763625361533520015.Spec : Prop :=
  ∀ n, P8763625361533520015.a n = A122411 (n + 1)

end A122411

/-! ## A122411.P9957114853856761217

`A116512(n+1)+A000010(n+1)*A001221(n+1)`
-/

namespace A122411.P9957114853856761217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116512 (n + 1) + A000010 (n + 1) * A001221 (n + 1)

end

end A122411.P9957114853856761217

namespace A122411

/-- `A116512(n+1)+A000010(n+1)*A001221(n+1)` -/
def P9957114853856761217.Spec : Prop :=
  ∀ n, P9957114853856761217.a n = A122411 (n + 1)

end A122411

/-! ## A122411.P13994638050119031897

`∑{p}[n+1, A000010(#*(n+1))/A000010(#)]`
-/

namespace A122411.P13994638050119031897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (A000010 (p * (n + 1)) : ℚ) / (A000010 p : ℚ)

end

end A122411.P13994638050119031897

namespace A122411

/-- `∑{p}[n+1, A000010(#*(n+1))/A000010(#)]` -/
def P13994638050119031897.Spec : Prop :=
  ∀ n, P13994638050119031897.a n = (A122411 (n + 1) : ℚ)

end A122411

/-!
# A122412: Indices of primes occurring in A031133.

The programs for A122412, there is no canonical definition to state claims against.
-/

/-! ## A122412.P15436470013101846863

`A122413(n+1)-2`
-/

namespace A122412.P15436470013101846863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122413 (n + 1) - 2

end

end A122412.P15436470013101846863

/-! ## A122412.P11215831674378442606

`record[A122413(A152271(n))-2]`
-/

namespace A122412.P11215831674378442606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122413 (A152271 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122412.P11215831674378442606

/-! ## A122412.P6291417746474140676

`A280560(Δ[n²])+A122413(n+1)`
-/

namespace A122412.P6291417746474140676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A122413 (n + 1)

end

end A122412.P6291417746474140676

/-! ## A122412.P15301516195201819770

`A303306(gcd(n, n+1))+A122413(n+1)`
-/

namespace A122412.P15301516195201819770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303306 (Nat.gcd n (n + 1)) + A122413 (n + 1)

end

end A122412.P15301516195201819770

/-! ## A122412.P2008269254476264334

`A303306(Δ[floor(ϕ*(n+1))])+A122413(n+1)`
-/

namespace A122412.P2008269254476264334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303306 (f1 (n + 1) - f1 n).toNat + A122413 (n + 1)

end

end A122412.P2008269254476264334

/-!
# A122413: Indices of primes occurring in A031134.

The programs for A122413, there is no canonical definition to state claims against.
-/

/-! ## A122413.P10259923258738992341

`A122412(n+1)+2`
-/

namespace A122413.P10259923258738992341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122412 (n + 1) + 2

end

end A122413.P10259923258738992341

/-! ## A122413.P7564374304336350598

`A098969(n+1)+A057427(A106323(n+1))`
-/

namespace A122413.P7564374304336350598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098969 (n + 1) + A057427 (A106323 (n + 1)).toNat

end

end A122413.P7564374304336350598

/-! ## A122413.P287986102211828303

`A098969(n+1)+A001222(A098973(2*n+1))`
-/

namespace A122413.P287986102211828303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098969 (n + 1) + A001222 (A098973 (2 * n + 1)).toNat

end

end A122413.P287986102211828303

/-! ## A122413.P13513502311025155162

`A098969(n+1)+A083259(A098974(n+1))`
-/

namespace A122413.P13513502311025155162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098969 (n + 1) + A083259 (A098974 (n + 1)).toNat

end

end A122413.P13513502311025155162

/-! ## A122413.P12930158152390408981

`A000720(A031134(n+1))`
-/

namespace A122413.P12930158152390408981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A031134 (n + 1)).toNat

end

end A122413.P12930158152390408981

/-!
# A122414: Triangle T(n,k) for 1 <= k <= n read by rows, where T(n,k) = 1 if gcd(n,k) is prime, 0 otherwise.

The programs for A122414, the canonical program `A122414.P2301085849404796156` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122414 has offset 1).

The definition of A122414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122414.P13681978829480696213

`char[eq[2, A051194(n+1)]]`
-/

namespace A122414.P13681978829480696213
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051194 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A122414.P13681978829480696213

namespace A122414

/-- `char[eq[2, A051194(n+1)]]` -/
def P13681978829480696213.Spec : Prop :=
  ∀ n, (P13681978829480696213.a n : ℤ) = A122414 (n + 1)

end A122414

/-! ## A122414.P346585998055041871

`char[eq[1, ∑{e}[A050873(n+1), #]]]`
-/

namespace A122414.P346585998055041871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n).natAbs, Nat.factorization (f4 n).natAbs p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A122414.P346585998055041871

namespace A122414

/-- `char[eq[1, ∑{e}[A050873(n+1), #]]]` -/
def P346585998055041871.Spec : Prop :=
  ∀ n, (P346585998055041871.a n : ℤ) = A122414 (n + 1)

end A122414

/-! ## A122414.P2301085849404796156

`A010051(A050873(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A122414

/-- `A010051(A050873(n+1))` -/
def P2301085849404796156.Spec : Prop :=
  ∀ n, P2301085849404796156.a n = A122414 (n + 1)

theorem P2301085849404796156.correct : P2301085849404796156.Spec := by
  intro n
  simp only [A122414, Nat.add_sub_cancel]

end A122414

/-! ## A122414.P14653329356283477264

`A014061(A051194(n+1))`
-/

namespace A122414.P14653329356283477264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014061 (A051194 (n + 1)).toNat

end

end A122414.P14653329356283477264

namespace A122414

/-- `A014061(A051194(n+1))` -/
def P14653329356283477264.Spec : Prop :=
  ∀ n, P14653329356283477264.a n = A122414 (n + 1)

end A122414

/-! ## A122414.P573355698713565913

`A064911(A050873(n+1)²)`
-/

namespace A122414.P573355698713565913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A050873 (n + 1) ^ 2).toNat

end

end A122414.P573355698713565913

namespace A122414

/-- `A064911(A050873(n+1)²)` -/
def P573355698713565913.Spec : Prop :=
  ∀ n, P573355698713565913.a n = A122414 (n + 1)

end A122414

/-! ## A122414.P5672772383011626449

`A101040(A050873(n+1)²)`
-/

namespace A122414.P5672772383011626449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (A050873 (n + 1) ^ 2).toNat

end

end A122414.P5672772383011626449

namespace A122414

/-- `A101040(A050873(n+1)²)` -/
def P5672772383011626449.Spec : Prop :=
  ∀ n, P5672772383011626449.a n = A122414 (n + 1)

end A122414

/-! ## A122414.P7549345041650897691

`A064911(2*A050873(n+1))`
-/

namespace A122414.P7549345041650897691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (2 * A050873 (n + 1)).toNat

end

end A122414.P7549345041650897691

namespace A122414

/-- `A064911(2*A050873(n+1))` -/
def P7549345041650897691.Spec : Prop :=
  ∀ n, P7549345041650897691.a n = A122414 (n + 1)

end A122414

/-! ## A122414.P7103788338718337426

`A000007(xor(2, A051194(n+1)))`
-/

namespace A122414.P7103788338718337426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 2 (A051194 (n + 1))).toNat

end

end A122414.P7103788338718337426

namespace A122414

/-- `A000007(xor(2, A051194(n+1)))` -/
def P7103788338718337426.Spec : Prop :=
  ∀ n, P7103788338718337426.a n = A122414 (n + 1)

end A122414

/-! ## A122414.P15492944409060844722

`A010051(A109004(comp[∑[n]]))`
-/

namespace A122414.P15492944409060844722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A109004 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A122414.P15492944409060844722

namespace A122414

/-- `A010051(A109004(comp[∑[n]]))` -/
def P15492944409060844722.Spec : Prop :=
  ∀ n, P15492944409060844722.a n = A122414 (n + 1)

end A122414

/-! ## A122414.P3338390601493504656

`A143538(A286146(n+1))`
-/

namespace A122414.P3338390601493504656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143538 (A286146 (n + 1)).toNat

end

end A122414.P3338390601493504656

namespace A122414

/-- `A143538(A286146(n+1))` -/
def P3338390601493504656.Spec : Prop :=
  ∀ n, P3338390601493504656.a n = A122414 (n + 1)

end A122414

/-!
# A122415: Triangle T(n,k) for 1 < k < n read by rows, where T(n,k) = 1 if gcd(n,k) is prime, 0 otherwise.

The programs for A122415, the canonical program `A122415.P16839992297758686135` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122415 has offset 3).

The definition of A122415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122415.P16839992297758686135

`val(A077478(comp[∑[n]]+1)+1, 3)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A122415

/-- `val(A077478(comp[∑[n]]+1)+1, 3)` -/
def P16839992297758686135.Spec : Prop :=
  ∀ n, (P16839992297758686135.a n : ℤ) = A122415 (n + 3)

theorem P16839992297758686135.correct : P16839992297758686135.Spec := by
  intro n
  simp only [A122415, Nat.add_sub_cancel]

end A122415

/-! ## A122415.P14820763715918302050

`a(A077478(comp[C(n, 2)]+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A122415.P14820763715918302050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A077478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - 1).toNat

end

end A122415.P14820763715918302050

namespace A122415

/-- `a(A077478(comp[C(n, 2)]+1)-1)` -/
def P14820763715918302050.Spec : Prop :=
  ∀ n, (P14820763715918302050.a n : ℤ) = A122415 (n + 3)

end A122415

/-! ## A122415.P14383147434247468127

`A010051(A003989(comp[∑[n]]+1))`
-/

namespace A122415.P14383147434247468127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A003989 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A122415.P14383147434247468127

namespace A122415

/-- `A010051(A003989(comp[∑[n]]+1))` -/
def P14383147434247468127.Spec : Prop :=
  ∀ n, P14383147434247468127.a n = A122415 (n + 3)

end A122415

/-! ## A122415.P13517075517420470981

`A111593(A077478(comp[∑[n]]+1))`
-/

namespace A122415.P13517075517420470981
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111593 (A077478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A122415.P13517075517420470981

namespace A122415

/-- `A111593(A077478(comp[∑[n]]+1))` -/
def P13517075517420470981.Spec : Prop :=
  ∀ n, P13517075517420470981.a n = A122415 (n + 3)

end A122415

/-! ## A122415.P9386329847041966046

`A055029(A077478(comp[C(n, 2)]+1))`
-/

namespace A122415.P9386329847041966046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (A077478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A122415.P9386329847041966046

namespace A122415

/-- `A055029(A077478(comp[C(n, 2)]+1))` -/
def P9386329847041966046.Spec : Prop :=
  ∀ n, P9386329847041966046.a n = A122415 (n + 3)

end A122415

/-! ## A122415.P9117582920225254393

`A004539(A003989(comp[∑[n]]+1)+1)`
-/

namespace A122415.P9117582920225254393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (A003989 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 1).toNat

end

end A122415.P9117582920225254393

namespace A122415

/-- `A004539(A003989(comp[∑[n]]+1)+1)` -/
def P9117582920225254393.Spec : Prop :=
  ∀ n, P9117582920225254393.a n = A122415 (n + 3)

end A122415

/-! ## A122415.P5302706588650597951

`A210703(A077478(comp[∑[n]]+1)+8)`
-/

namespace A122415.P5302706588650597951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210703 (A077478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 8).toNat

end

end A122415.P5302706588650597951

namespace A122415

/-- `A210703(A077478(comp[∑[n]]+1)+8)` -/
def P5302706588650597951.Spec : Prop :=
  ∀ n, P5302706588650597951.a n = A122415 (n + 3)

end A122415

/-! ## A122415.P11555687485975006266

`A010054(A077478(comp[C(n, 2)]+1)+1)`
-/

namespace A122415.P11555687485975006266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A077478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 1).toNat

end

end A122415.P11555687485975006266

namespace A122415

/-- `A010054(A077478(comp[C(n, 2)]+1)+1)` -/
def P11555687485975006266.Spec : Prop :=
  ∀ n, P11555687485975006266.a n = A122415 (n + 3)

end A122415

/-! ## A122415.P3643732481818769318

`A289165(A077478(comp[C(n, 2)]+1)+1)`
-/

namespace A122415.P3643732481818769318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289165 (A077478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 1).toNat

end

end A122415.P3643732481818769318

namespace A122415

/-- `A289165(A077478(comp[C(n, 2)]+1)+1)` -/
def P3643732481818769318.Spec : Prop :=
  ∀ n, P3643732481818769318.a n = A122415 (n + 3)

end A122415

/-! ## A122415.P11974661879680149747

`A010060(A077478(comp[C(n, 2)]+1)+2)`
-/

namespace A122415.P11974661879680149747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A077478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 2).toNat

end

end A122415.P11974661879680149747

namespace A122415

/-- `A010060(A077478(comp[C(n, 2)]+1)+2)` -/
def P11974661879680149747.Spec : Prop :=
  ∀ n, P11974661879680149747.a n = A122415 (n + 3)

end A122415

/-! ## A122415.P1000690056422958476

`A134667(A077478(comp[C(n, 2)]+1)-1)`
-/

namespace A122415.P1000690056422958476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 (A077478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - 1).toNat

end

end A122415.P1000690056422958476

namespace A122415

/-- `A134667(A077478(comp[C(n, 2)]+1)-1)` -/
def P1000690056422958476.Spec : Prop :=
  ∀ n, P1000690056422958476.a n = A122415 (n + 3)

end A122415

/-! ## A122415.P128509732768397122

`A004601(A077478(comp[C(n, 2)]+1)+4)`
-/

namespace A122415.P128509732768397122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (A077478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 4).toNat

end

end A122415.P128509732768397122

namespace A122415

/-- `A004601(A077478(comp[C(n, 2)]+1)+4)` -/
def P128509732768397122.Spec : Prop :=
  ∀ n, P128509732768397122.a n = A122415 (n + 3)

end A122415

/-! ## A122415.P1778540092673960774

`A046522(2*A077478(comp[C(n, 2)]+1))`
-/

namespace A122415.P1778540092673960774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046522 (2 * A077478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A122415.P1778540092673960774

namespace A122415

/-- `A046522(2*A077478(comp[C(n, 2)]+1))` -/
def P1778540092673960774.Spec : Prop :=
  ∀ n, P1778540092673960774.a n = A122415 (n + 3)

end A122415

/-! ## A122415.P6256914548119697125

`A010051(A077478(comp[C(n, 2)]+1)+5)`
-/

namespace A122415.P6256914548119697125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A077478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 5).toNat

end

end A122415.P6256914548119697125

namespace A122415

/-- `A010051(A077478(comp[C(n, 2)]+1)+5)` -/
def P6256914548119697125.Spec : Prop :=
  ∀ n, P6256914548119697125.a n = A122415 (n + 3)

end A122415

/-! ## A122415.P17837320658651170939

`A011693(A077478(comp[C(n, 2)]+1)+5)`
-/

namespace A122415.P17837320658651170939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011693 (A077478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 5).toNat

end

end A122415.P17837320658651170939

namespace A122415

/-- `A011693(A077478(comp[C(n, 2)]+1)+5)` -/
def P17837320658651170939.Spec : Prop :=
  ∀ n, P17837320658651170939.a n = A122415 (n + 3)

end A122415

/-! ## A122415.P6115992097201848228

`A108788(3*A077478(comp[C(n, 2)]+1))`
-/

namespace A122415.P6115992097201848228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108788 (3 * A077478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A122415.P6115992097201848228

namespace A122415

/-- `A108788(3*A077478(comp[C(n, 2)]+1))` -/
def P6115992097201848228.Spec : Prop :=
  ∀ n, P6115992097201848228.a n = A122415 (n + 3)

end A122415

/-! ## A122415.P17058090658348753156

`A109264(7*A077478(comp[C(n, 2)]+1))`
-/

namespace A122415.P17058090658348753156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109264 (7 * A077478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A122415.P17058090658348753156

namespace A122415

/-- `A109264(7*A077478(comp[C(n, 2)]+1))` -/
def P17058090658348753156.Spec : Prop :=
  ∀ n, P17058090658348753156.a n = A122415 (n + 3)

end A122415

/-! ## A122415.P12107907073639916151

`A010059(A077478(comp[C(n, 2)]+1)+10)`
-/

namespace A122415.P12107907073639916151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A077478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 10).toNat

end

end A122415.P12107907073639916151

namespace A122415

/-- `A010059(A077478(comp[C(n, 2)]+1)+10)` -/
def P12107907073639916151.Spec : Prop :=
  ∀ n, P12107907073639916151.a n = A122415 (n + 3)

end A122415

/-! ## A122415.P1616030825927927118

`A193474(10*A077478(comp[C(n, 2)]+1))`
-/

namespace A122415.P1616030825927927118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193474 (10 * A077478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A122415.P1616030825927927118

namespace A122415

/-- `A193474(10*A077478(comp[C(n, 2)]+1))` -/
def P1616030825927927118.Spec : Prop :=
  ∀ n, P1616030825927927118.a n = A122415 (n + 3)

end A122415

/-! ## A122415.P377432659535062599

`A014667(7^A077478(comp[C(n, 2)]+1))`
-/

namespace A122415.P377432659535062599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014667 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A077478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℤ))).toNat

end

end A122415.P377432659535062599

namespace A122415

/-- `A014667(7^A077478(comp[C(n, 2)]+1))` -/
def P377432659535062599.Spec : Prop :=
  ∀ n, P377432659535062599.a n = A122415 (n + 3)

end A122415

/-!
# A122416: Numbers from an irrationality measure for e, with a(1) = 2.

The programs for A122416, there is no canonical definition to state claims against.
-/

/-! ## A122416.P10476050515408632222

`A002034(n+1)+1`
-/

namespace A122416.P10476050515408632222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1) + 1

end

end A122416.P10476050515408632222

/-! ## A122416.P6234609192995320317

`A061243(n+1)-n`
-/

namespace A122416.P6234609192995320317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061243 (n + 1) - (n : ℤ)

end

end A122416.P6234609192995320317

/-! ## A122416.P11283779031344979403

`A029717(n)+a(n-1)` with `a(0)=2`
-/

namespace A122416.P11283779031344979403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A029717 n + a (n - 1)

end

end A122416.P11283779031344979403

/-! ## A122416.P17943145898320046395

`∑[A029717(C(2, n)+n)]+1`
-/

namespace A122416.P17943145898320046395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029717 (Nat.choose 2 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A122416.P17943145898320046395

/-! ## A122416.P6744780254585903609

`A002034(Δ[n²]-n)-xor(n, -1)-n`
-/

namespace A122416.P6744780254585903609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - Int.xor (n : ℤ) (-1) - (n : ℤ)

end

end A122416.P6744780254585903609

/-! ## A122416.P15324748737723144922

`A020725(A002034(n+1))`
-/

namespace A122416.P15324748737723144922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A002034 (n + 1)).toNat

end

end A122416.P15324748737723144922

/-! ## A122416.P12464276087503347339

`∑[A029717(A028310(n))]+1`
-/

namespace A122416.P12464276087503347339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029717 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A122416.P12464276087503347339

/-! ## A122416.P12405921429701344291

`A028310(A064760(n+1))+1`
-/

namespace A122416.P12405921429701344291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A064760 (n + 1)).toNat + 1

end

end A122416.P12405921429701344291

/-! ## A122416.P10112592162393642351

`A064760(n+1)+A054977(n)`
-/

namespace A122416.P10112592162393642351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064760 (n + 1) + A054977 n

end

end A122416.P10112592162393642351

/-! ## A122416.P17343313900096109720

`A064760(n+1)+A000007(n)+1`
-/

namespace A122416.P17343313900096109720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064760 (n + 1) + (A000007 n + 1)

end

end A122416.P17343313900096109720

/-! ## A122416.P9584755373221317861

`1-A001478(A002034(ϕ²-(ϕ-n)))`
-/

namespace A122416.P9584755373221317861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001478 (A002034 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat).toNat

end

end A122416.P9584755373221317861

/-! ## A122416.P15464611672451858775

`A001478(n+1)+A061243(n+1)+1`
-/

namespace A122416.P15464611672451858775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A061243 (n + 1) + 1)

end

end A122416.P15464611672451858775

/-! ## A122416.P12287852082775141026

`A006530(n+1)+A057108(n+1)+1`
-/

namespace A122416.P12287852082775141026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + (A057108 (n + 1) + 1)

end

end A122416.P12287852082775141026

/-! ## A122416.P8132921794456221531

`A034699(n+1)+1-A057110(n+1)`
-/

namespace A122416.P8132921794456221531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1) + (1 - A057110 (n + 1))

end

end A122416.P8132921794456221531

/-! ## A122416.P13481666226313511336

`A345931(n+1)*A345932(n+1)+1`
-/

namespace A122416.P13481666226313511336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 (n + 1) * A345932 (n + 1) + 1

end

end A122416.P13481666226313511336

/-! ## A122416.P6957684317527201965

`A057108(n+1)+A070229(n+1)-n`
-/

namespace A122416.P6957684317527201965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057108 (n + 1) + (A070229 (n + 1) - (n : ℤ))

end

end A122416.P6957684317527201965

/-! ## A122416.P5732328980375323481

`gcd(A002444(n), A064760(n+1))+1`
-/

namespace A122416.P5732328980375323481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002444 n) (A064760 (n + 1)) + 1

end

end A122416.P5732328980375323481

/-! ## A122416.P52031687676768699

`A081472(n+1)-(A057110(n+1)+n)`
-/

namespace A122416.P52031687676768699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081472 (n + 1) - (A057110 (n + 1) + (n : ℤ))

end

end A122416.P52031687676768699

/-! ## A122416.P3664050894593655250

`A002260(A061243(n+1)+∑[n]+1)`
-/

namespace A122416.P3664050894593655250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A061243 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A122416.P3664050894593655250

/-!
# A122417: Factorials from an irrationality measure for e, with a(1) = 2.

The programs for A122417, there is no canonical definition to state claims against.
-/

/-! ## A122417.P5561878579885586888

`A122416(n+1)!`
-/

namespace A122417.P5561878579885586888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A122416 (n + 1)).toNat

end

end A122417.P5561878579885586888

/-! ## A122417.P16207239060506387743

`(A002034(n+1)+1)!`
-/

namespace A122417.P16207239060506387743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A002034 (n + 1) + 1).toNat

end

end A122417.P16207239060506387743

/-! ## A122417.P7831779936741044769

`(A061243(n+1)-n)!`
-/

namespace A122417.P7831779936741044769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A061243 (n + 1) - (n : ℤ)).toNat

end

end A122417.P7831779936741044769

/-! ## A122417.P13982508215083381539

`A020725(A002034(n+1))!`
-/

namespace A122417.P13982508215083381539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A020725 (A002034 (n + 1)).toNat).toNat

end

end A122417.P13982508215083381539

/-! ## A122417.P12620646220516887566

`A000142(A002034(n+1)+1)`
-/

namespace A122417.P12620646220516887566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A002034 (n + 1) + 1).toNat

end

end A122417.P12620646220516887566

/-! ## A122417.P16763139076053129417

`A000142(A061243(n+1)-n)`
-/

namespace A122417.P16763139076053129417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A061243 (n + 1) - (n : ℤ)).toNat

end

end A122417.P16763139076053129417

/-! ## A122417.P6649429640052273637

`A214080((A002034(n+1)+1)²)`
-/

namespace A122417.P6649429640052273637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214080 ((A002034 (n + 1) + 1) ^ 2).toNat

end

end A122417.P6649429640052273637

/-! ## A122417.P15327332588935107245

`A092495(n+1)*A122416(n+1)`
-/

namespace A122417.P15327332588935107245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092495 (n + 1) * A122416 (n + 1)

end

end A122417.P15327332588935107245

/-! ## A122417.P6576537350408850933

`(A002034(n+1)+1)*A092495(n+1)`
-/

namespace A122417.P6576537350408850933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002034 (n + 1) + 1) * A092495 (n + 1)

end

end A122417.P6576537350408850933

/-!
# A122419: Number of labeled digraphs with n arcs and with no vertex of indegree 0.

The programs for A122419, there is no canonical definition to state claims against.
-/

/-! ## A122419.P8611109583968614257

`A319630(lcm(a(n-1), Δ[n²]))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A122419.P8611109583968614257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A319630 (Int.lcm (a (n - 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A122419.P8611109583968614257

/-! ## A122419.P12503388380277453290

`A319630((2*n+1)*a(n-1))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A122419.P12503388380277453290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A319630 ((2 * n + 1 : ℤ) * a (n - 1)).toNat

end

end A122419.P12503388380277453290

/-!
# A122420: Number of labeled directed multigraphs with n arcs and with no vertex of indegree 0.

The programs for A122420, there is no canonical definition to state claims against.
-/

/-! ## A122420.P13817825659919818109

`A194964(A316972(n))-n`
-/

namespace A122420.P13817825659919818109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194964 (A316972 n).toNat - (n : ℤ)

end

end A122420.P13817825659919818109

/-! ## A122420.P10729277565480103696

`A006057(n)-A000196(A138240(n))`
-/

namespace A122420.P10729277565480103696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006057 n - A000196 (A138240 n).toNat

end

end A122420.P10729277565480103696

/-!
# A122423: Number of unigraphic degree sequences among all graphs (connected or otherwise) on n vertices.

The programs for A122423, there is no canonical definition to state claims against.
-/

/-! ## A122423.P17010260498779262952

`∑[A085089((n+1)^(n-1))]`
-/

namespace A122423.P17010260498779262952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122423.P17010260498779262952

/-! ## A122423.P8594346687842843216

`A364316(n+1)-and(n, floor(n/2))`
-/

namespace A122423.P8594346687842843216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364316 (n + 1) - Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋

end

end A122423.P8594346687842843216

/-! ## A122423.P4784909176371688286

`A051742(A149719(n+1))`
-/

namespace A122423.P4784909176371688286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051742 (A149719 (n + 1)).toNat

end

end A122423.P4784909176371688286

/-!
# A122424: Primes p such that q = 4p^2 + 1 and r = 4q^2 + 1 are also prime.

The programs for A122424, there is no canonical definition to state claims against.
-/

/-! ## A122424.P3727856056889438895

`p?[floor(sqrt(A121834(n+1))/2)]`
-/

namespace A122424.P3727856056889438895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A121834 (n + 1) : ℝ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122424.P3727856056889438895

/-!
# A122425: a(n) = lexicographically greatest divisor of n in decimal representation.

The programs for A122425, there is no canonical definition to state claims against.
-/

/-! ## A122425.P13015114849733163874

`A254679(A006218(n+1))`
-/

namespace A122425.P13015114849733163874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254679 (A006218 (n + 1)).toNat

end

end A122425.P13015114849733163874

/-! ## A122425.P1026698868898154358

`A254679(∑[A000005(n+1)])`
-/

namespace A122425.P1026698868898154358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254679 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A122425.P1026698868898154358

/-! ## A122425.P13871636409920732074

`A254679(A054519(n+1)-1)`
-/

namespace A122425.P13871636409920732074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254679 (A054519 (n + 1) - 1).toNat

end

end A122425.P13871636409920732074

/-! ## A122425.P9743220639873363155

`A254679(A350102(n+2)-2)`
-/

namespace A122425.P9743220639873363155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254679 (A350102 (n + 2) - 2).toNat

end

end A122425.P9743220639873363155

/-! ## A122425.P7949211825253477682

`A254679(eq[6, 6*A254679(n+2)]+1)`
-/

namespace A122425.P7949211825253477682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A254679 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254679 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A122425.P7949211825253477682

/-! ## A122425.P2712075337108520147

`A254679(record[floor(n/A254679(n+2))]+1)`
-/

namespace A122425.P2712075337108520147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A254679 (n + 2) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254679 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A122425.P2712075337108520147

/-! ## A122425.P13902081493285590336

`A254679(record[n*(2-A254679(n+2))]+1)`
-/

namespace A122425.P13902081493285590336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - A254679 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254679 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A122425.P13902081493285590336

/-!
# A122426: Numbers m such that in decimal representation the lexicographically greatest divisor of m is smaller than m.

The programs for A122426, there is no canonical definition to state claims against.
-/

/-! ## A122426.P3133852039917612104

`comp[A122427(n+1)-1]+1`
-/

namespace A122426.P3133852039917612104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122427 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A122426.P3133852039917612104

/-! ## A122426.P1778283781213247811

`lt[A122425(n+1), n]+1`
-/

namespace A122426.P1778283781213247811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122425 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A122426.P1778283781213247811

/-! ## A122426.P1199202847581354993

`A065475(lt[A122425(n+1), n])`
-/

namespace A122426.P1199202847581354993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122425 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A122426.P1199202847581354993

/-! ## A122426.P4438168891071768405

`lt[A122425(A000038(n)+n), n]`
-/

namespace A122426.P4438168891071768405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122425 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A122426.P4438168891071768405

/-! ## A122426.P9432184831911203478

`lt[A122425(A000007(n)+n), n]`
-/

namespace A122426.P9432184831911203478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122425 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A122426.P9432184831911203478

/-! ## A122426.P7359368721686858076

`lt[A254679(A006218(n+1)), n]+1`
-/

namespace A122426.P7359368721686858076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254679 (A006218 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A122426.P7359368721686858076

/-!
# A122427: Numbers m such that in decimal representation m equals the lexicographically greatest divisor of m.

The programs for A122427, there is no canonical definition to state claims against.
-/

/-! ## A122427.P14137801543358033989

`record[A122425(n+1)]`
-/

namespace A122427.P14137801543358033989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122427.P14137801543358033989

/-! ## A122427.P4885157655557229770

`A122425(eq[n+1, A122425(n+1)]+1)`
-/

namespace A122427.P4885157655557229770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122425 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A122427.P4885157655557229770

/-! ## A122427.P5334549968616406915

`record[A254679(A006218(n+1))]`
-/

namespace A122427.P5334549968616406915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254679 (A006218 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122427.P5334549968616406915

/-! ## A122427.P3834252195529777700

`record[A254679(eq[1, A254679(n+2)]+1)]`
-/

namespace A122427.P3834252195529777700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254679 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254679 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122427.P3834252195529777700

/-! ## A122427.P1002618351663024734

`record[A254679(n+1)/A254679(n+2)]`
-/

namespace A122427.P1002618351663024734
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254679 (n + 1) : ℚ) / (A254679 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122427.P1002618351663024734

/-!
# A122428: Numbers m such that in decimal representation the lexicographically greatest divisor of m equals the greatest prime factor of m.

The programs for A122428, there is no canonical definition to state claims against.
-/

/-! ## A122428.P14573336540942308371

`eq[A006530(n+1), A122425(n+1)]+1`
-/

namespace A122428.P14573336540942308371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122425 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A122428.P14573336540942308371

/-! ## A122428.P15564667703080916580

`record[(n+1)/A204848(A122425(n+1))]`
-/

namespace A122428.P15564667703080916580
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A204848 (A122425 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122428.P15564667703080916580

/-! ## A122428.P15395012004014700623

`∑[A135010(2*A299337(n))]`
-/

namespace A122428.P15395012004014700623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (2 * A299337 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122428.P15395012004014700623

/-! ## A122428.P16226518912151702830

`∑[A135010(A005843(A299337(n)))]`
-/

namespace A122428.P16226518912151702830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (A005843 (A299337 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122428.P16226518912151702830

/-! ## A122428.P4095322539818705528

`A087246(n+1)-A285133(A022112(n))`
-/

namespace A122428.P4095322539818705528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087246 (n + 1) - A285133 (A022112 n).toNat

end

end A122428.P4095322539818705528

/-!
# A122430: Primes of the form 1+2*n+3*n^2.

The programs for A122430, there is no canonical definition to state claims against.
-/

/-! ## A122430.P4966105120481209976

`A056109(A086285(n+1))`
-/

namespace A122430.P4966105120481209976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 (A086285 (n + 1)).toNat

end

end A122430.P4966105120481209976

/-! ## A122430.P12031043061369677464

`A086285(A028242(2*n))+A056108(A086285(n+1))`
-/

namespace A122430.P12031043061369677464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086285 (A028242 (2 * n)).toNat + A056108 (A086285 (n + 1)).toNat

end

end A122430.P12031043061369677464

/-! ## A122430.P16902924333706111208

`A257083(2*A086285(n+1))`
-/

namespace A122430.P16902924333706111208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257083 (2 * A086285 (n + 1)).toNat

end

end A122430.P16902924333706111208

/-! ## A122430.P3909135368376120511

`A087483(3*A086285(n+1))`
-/

namespace A122430.P3909135368376120511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087483 (3 * A086285 (n + 1)).toNat

end

end A122430.P3909135368376120511

/-! ## A122430.P15943079829535639723

`A008810(3*A086285(n+1)+1)`
-/

namespace A122430.P15943079829535639723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (3 * A086285 (n + 1) + 1).toNat

end

end A122430.P15943079829535639723

/-! ## A122430.P18397408615755242616

`p?[Δ[n^3]-n]`
-/

namespace A122430.P18397408615755242616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122430.P18397408615755242616

/-! ## A122430.P6158594272005334266

`∏{d}[p?[A056109(n)], #]`
-/

namespace A122430.P6158594272005334266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A122430.P6158594272005334266

/-! ## A122430.P12540358534126130499

`∑{p}[p?[A003215(n)-n], #]`
-/

namespace A122430.P12540358534126130499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A122430.P12540358534126130499

/-! ## A122430.P6206820780196893158

`record[p?[A264827(n+1)+1]]`
-/

namespace A122430.P6206820780196893158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264827 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122430.P6206820780196893158

/-! ## A122430.P2877822518316575373

`abs(p?[A179741(n)+2]-n)+n`
-/

namespace A122430.P2877822518316575373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179741 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ)| + (n : ℤ)

end

end A122430.P2877822518316575373

/-!
# A122431: Riordan array ((1+x)^3,x).

The programs for A122431, the canonical program `A122431.P16038384963788621526` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122431 has offset 0).

The definition of A122431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122431.P11948820119160073446

`C(3, C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A122431.P11948820119160073446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat

end

end A122431.P11948820119160073446

namespace A122431

/-- `C(3, C(comp[∑[n]]-n, 2)-(n+1))` -/
def P11948820119160073446.Spec : Prop :=
  ∀ n, (P11948820119160073446.a n : ℤ) = A122431 n

end A122431

/-! ## A122431.P16038384963788621526

`C(3, A025581(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A122431

/-- `C(3, A025581(n))` -/
def P16038384963788621526.Spec : Prop :=
  ∀ n, (P16038384963788621526.a n : ℤ) = A122431 n

theorem P16038384963788621526.correct : P16038384963788621526.Spec := by
  intro n
  simp only [A122431]

end A122431

/-! ## A122431.P10076344817975270583

`C(3, log2(A130321(n)))`
-/

namespace A122431.P10076344817975270583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A122431.P10076344817975270583

namespace A122431

/-- `C(3, log2(A130321(n)))` -/
def P10076344817975270583.Spec : Prop :=
  ∀ n, (P10076344817975270583.a n : ℤ) = A122431 n

end A122431

/-! ## A122431.P7801222861259954280

`C(3, A392681(n+1))`
-/

namespace A122431.P7801222861259954280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A392681 (n + 1)).toNat

end

end A122431.P7801222861259954280

namespace A122431

/-- `C(3, A392681(n+1))` -/
def P7801222861259954280.Spec : Prop :=
  ∀ n, (P7801222861259954280.a n : ℤ) = A122431 n

end A122431

/-! ## A122431.P15340485497427339200

`C(3, A004736(n+1)-1)`
-/

namespace A122431.P15340485497427339200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A004736 (n + 1) - 1).toNat

end

end A122431.P15340485497427339200

namespace A122431

/-- `C(3, A004736(n+1)-1)` -/
def P15340485497427339200.Spec : Prop :=
  ∀ n, (P15340485497427339200.a n : ℤ) = A122431 n

end A122431

/-! ## A122431.P3869050824363964620

`C(3, A004202(n+1)%(n+1))`
-/

namespace A122431.P3869050824363964620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (Int.tmod (A004202 (n + 1)) (n + 1 : ℤ)).toNat

end

end A122431.P3869050824363964620

namespace A122431

/-- `C(3, A004202(n+1)%(n+1))` -/
def P3869050824363964620.Spec : Prop :=
  ∀ n, (P3869050824363964620.a n : ℤ) = A122431 n

end A122431

/-! ## A122431.P5976476499052057990

`C(3, A000217(round(sqrt(2*n+1)))-(n+1))`
-/

namespace A122431.P5976476499052057990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A000217 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat - (n + 1 : ℤ)).toNat

end

end A122431.P5976476499052057990

namespace A122431

/-- `C(3, A000217(round(sqrt(2*n+1)))-(n+1))` -/
def P5976476499052057990.Spec : Prop :=
  ∀ n, (P5976476499052057990.a n : ℤ) = A122431 n

end A122431

/-! ## A122431.P7395791552626239837

`C(3, round(sqrt(2*n+1))-A002260(n+1))`
-/

namespace A122431.P7395791552626239837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) - A002260 (n + 1)).toNat

end

end A122431.P7395791552626239837

namespace A122431

/-- `C(3, round(sqrt(2*n+1))-A002260(n+1))` -/
def P7395791552626239837.Spec : Prop :=
  ∀ n, (P7395791552626239837.a n : ℤ) = A122431 n

end A122431

/-! ## A122431.P6110107177321872654

`A034188(A099375(n))`
-/

namespace A122431.P6110107177321872654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034188 (A099375 n).toNat

end

end A122431.P6110107177321872654

namespace A122431

/-- `A034188(A099375(n))` -/
def P6110107177321872654.Spec : Prop :=
  ∀ n, P6110107177321872654.a n = A122431 n

end A122431

/-! ## A122431.P967616356368381515

`A203162(A004736(n+1))%4`
-/

namespace A122431.P967616356368381515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203162 (A004736 (n + 1)).toNat) 4

end

end A122431.P967616356368381515

namespace A122431

/-- `A203162(A004736(n+1))%4` -/
def P967616356368381515.Spec : Prop :=
  ∀ n, P967616356368381515.a n = A122431 n

end A122431

/-! ## A122431.P6435097111154731586

`A113128(n)/A002260(n+1)`
-/

namespace A122431.P6435097111154731586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113128 n : ℚ) / (A002260 (n + 1) : ℚ)

end

end A122431.P6435097111154731586

namespace A122431

/-- `A113128(n)/A002260(n+1)` -/
def P6435097111154731586.Spec : Prop :=
  ∀ n, P6435097111154731586.a n = (A122431 n : ℚ)

end A122431

/-! ## A122431.P556502618619176238

`C(3, A000096(A003056(n))-n)`
-/

namespace A122431.P556502618619176238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A000096 (A003056 n).toNat - (n : ℤ)).toNat

end

end A122431.P556502618619176238

namespace A122431

/-- `C(3, A000096(A003056(n))-n)` -/
def P556502618619176238.Spec : Prop :=
  ∀ n, (P556502618619176238.a n : ℤ) = A122431 n

end A122431

/-! ## A122431.P177307678891920804

`C(3, A003056(n)-A002262(n))`
-/

namespace A122431.P177307678891920804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A003056 n - A002262 n).toNat

end

end A122431.P177307678891920804

namespace A122431

/-- `C(3, A003056(n)-A002262(n))` -/
def P177307678891920804.Spec : Prop :=
  ∀ n, (P177307678891920804.a n : ℤ) = A122431 n

end A122431

/-! ## A122431.P14490196472081613570

`A106472(A004736(n+1)-1)%4`
-/

namespace A122431.P14490196472081613570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106472 (A004736 (n + 1) - 1).toNat) 4

end

end A122431.P14490196472081613570

namespace A122431

/-- `A106472(A004736(n+1)-1)%4` -/
def P14490196472081613570.Spec : Prop :=
  ∀ n, P14490196472081613570.a n = A122431 n

end A122431

/-! ## A122431.P6512428437023860574

`C(3, A004736(n+2)%A004736(n+1))`
-/

namespace A122431.P6512428437023860574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (Int.tmod (A004736 (n + 2)) (A004736 (n + 1))).toNat

end

end A122431.P6512428437023860574

namespace A122431

/-- `C(3, A004736(n+2)%A004736(n+1))` -/
def P6512428437023860574.Spec : Prop :=
  ∀ n, (P6512428437023860574.a n : ℤ) = A122431 n

end A122431

/-! ## A122431.P4545801448048707126

`C(3, A057555(2*(n+1))-1)`
-/

namespace A122431.P4545801448048707126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A057555 (2 * (n + 1)) - 1).toNat

end

end A122431.P4545801448048707126

namespace A122431

/-- `C(3, A057555(2*(n+1))-1)` -/
def P4545801448048707126.Spec : Prop :=
  ∀ n, (P4545801448048707126.a n : ℤ) = A122431 n

end A122431

/-! ## A122431.P1504048998203899521

`round(A235706(n)/A056857(n+1))`
-/

namespace A122431.P1504048998203899521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A235706 n : ℚ) / (A056857 (n + 1) : ℚ))

end

end A122431.P1504048998203899521

namespace A122431

/-- `round(A235706(n)/A056857(n+1))` -/
def P1504048998203899521.Spec : Prop :=
  ∀ n, P1504048998203899521.a n = A122431 n

end A122431

/-! ## A122431.P17996039101544906708

`A235706(n)/A094587(n)`
-/

namespace A122431.P17996039101544906708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235706 n : ℚ) / (A094587 n : ℚ)

end

end A122431.P17996039101544906708

namespace A122431

/-- `A235706(n)/A094587(n)` -/
def P17996039101544906708.Spec : Prop :=
  ∀ n, P17996039101544906708.a n = (A122431 n : ℚ)

end A122431

/-! ## A122431.P15903051931970372230

`abs(A007428(A130321(n)))`
-/

namespace A122431.P15903051931970372230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007428 (A130321 n).toNat|

end

end A122431.P15903051931970372230

namespace A122431

/-- `abs(A007428(A130321(n)))` -/
def P15903051931970372230.Spec : Prop :=
  ∀ n, P15903051931970372230.a n = A122431 n

end A122431

/-!
# A122432: Riordan array (1/(1+x)^3,x).

The programs for A122432, the canonical program `A122432.P16515211422386222308` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122432 has offset 0).

The definition of A122432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122432.P430274992809735025

`-A089594(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A122432.P430274992809735025
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A089594 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A122432.P430274992809735025

namespace A122432

/-- `-A089594(C(comp[∑[n]]-n, 2)-n)` -/
def P430274992809735025.Spec : Prop :=
  ∀ n, P430274992809735025.a n = A122432 n

end A122432

/-! ## A122432.P5828685766911201171

`A145063(2*A025581(n))`
-/

namespace A122432.P5828685766911201171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145063 (2 * A025581 n).toNat

end

end A122432.P5828685766911201171

namespace A122432

/-- `A145063(2*A025581(n))` -/
def P5828685766911201171.Spec : Prop :=
  ∀ n, P5828685766911201171.a n = A122432 n

end A122432

/-! ## A122432.P4223521946343835887

`A145063(log2(A130321(n)²))`
-/

namespace A122432.P4223521946343835887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145063 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n ^ 2 : ℝ))).toNat

end

end A122432.P4223521946343835887

namespace A122432

/-- `A145063(log2(A130321(n)²))` -/
def P4223521946343835887.Spec : Prop :=
  ∀ n, P4223521946343835887.a n = A122432 n

end A122432

/-! ## A122432.P16515211422386222308

`-A089594(A004736(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A122432

/-- `-A089594(A004736(n+1))` -/
def P16515211422386222308.Spec : Prop :=
  ∀ n, P16515211422386222308.a n = A122432 n

theorem P16515211422386222308.correct : P16515211422386222308.Spec := by
  intro n
  simp only [A122432]

end A122432

/-! ## A122432.P16747510957249408229

`-A089594(A025581(n)+1)`
-/

namespace A122432.P16747510957249408229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A089594 (A025581 n + 1).toNat

end

end A122432.P16747510957249408229

namespace A122432

/-- `-A089594(A025581(n)+1)` -/
def P16747510957249408229.Spec : Prop :=
  ∀ n, P16747510957249408229.a n = A122432 n

end A122432

/-! ## A122432.P17594551113699184110

`A145063(2*log2(A130321(n)))`
-/

namespace A122432.P17594551113699184110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145063 (SequenceMachineLib.roundAway (2 * Real.logb 2 (A130321 n : ℝ))).toNat

end

end A122432.P17594551113699184110

namespace A122432

/-- `A145063(2*log2(A130321(n)))` -/
def P17594551113699184110.Spec : Prop :=
  ∀ n, P17594551113699184110.a n = A122432 n

end A122432

/-! ## A122432.P14836306700663445270

`A104633(n+1)/A140756(n+1)`
-/

namespace A122432.P14836306700663445270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104633 (n + 1) : ℚ) / (A140756 (n + 1) : ℚ)

end

end A122432.P14836306700663445270

namespace A122432

/-- `A104633(n+1)/A140756(n+1)` -/
def P14836306700663445270.Spec : Prop :=
  ∀ n, P14836306700663445270.a n = (A122432 n : ℚ)

end A122432

/-! ## A122432.P9355532189080621641

`A000217(A004736(n+1))*A033999(A025581(n))`
-/

namespace A122432.P9355532189080621641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004736 (n + 1)).toNat * A033999 (A025581 n).toNat

end

end A122432.P9355532189080621641

namespace A122432

/-- `A000217(A004736(n+1))*A033999(A025581(n))` -/
def P9355532189080621641.Spec : Prop :=
  ∀ n, P9355532189080621641.a n = A122432 n

end A122432

/-! ## A122432.P3595505053409087891

`A002260(n+1)/A140756(n+1)*A000217(A004736(n+1))`
-/

namespace A122432.P3595505053409087891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A140756 (n + 1) : ℚ) * (A000217 (A004736 (n + 1)).toNat : ℚ)

end

end A122432.P3595505053409087891

namespace A122432

/-- `A002260(n+1)/A140756(n+1)*A000217(A004736(n+1))` -/
def P3595505053409087891.Spec : Prop :=
  ∀ n, P3595505053409087891.a n = (A122432 n : ℚ)

end A122432

/-! ## A122432.P1454696604441914546

`A115139((A004736(n+1)+2)*A004736(n+1))`
-/

namespace A122432.P1454696604441914546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115139 ((A004736 (n + 1) + 2) * A004736 (n + 1)).toNat

end

end A122432.P1454696604441914546

namespace A122432

/-- `A115139((A004736(n+1)+2)*A004736(n+1))` -/
def P1454696604441914546.Spec : Prop :=
  ∀ n, P1454696604441914546.a n = A122432 n

end A122432

/-!
# A122433: Riordan array ((1 + x)^2, x/(1 + x)).

The programs for A122433, there is no canonical definition to state claims against.
-/

/-! ## A122433.P17648807010389157544

`(A215064(n)*A233427(A152151(n))*A097807(n)+3)%3`
-/

namespace A122433.P17648807010389157544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215064 n * A233427 (A152151 n).toNat * A097807 n + 3) 3

end

end A122433.P17648807010389157544

/-!
# A122437: Allowable values of the "dropping time" of the Collatz (3x+1) iteration.

The programs for A122437, the canonical program `A122437.P144688731878267021` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122437 has offset 1).

The definition of A122437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122437.P15104939669152041230

`floor(n*log2(6))+1`
-/

namespace A122437.P15104939669152041230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (6 : ℝ)⌋ + 1

end

end A122437.P15104939669152041230

namespace A122437

/-- `floor(n*log2(6))+1` -/
def P15104939669152041230.Spec : Prop :=
  ∀ n, P15104939669152041230.a n = A122437 (n + 1)

end A122437

/-! ## A122437.P144688731878267021

`abs(A056576(n)+2*n+1-n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A122437

/-- `abs(A056576(n)+2*n+1-n)` -/
def P144688731878267021.Spec : Prop :=
  ∀ n, P144688731878267021.a n = A122437 (n + 1)

theorem P144688731878267021.correct : P144688731878267021.Spec := by
  intro n
  simp only [A122437, Nat.add_sub_cancel]

end A122437

/-! ## A122437.P10597774705510568644

`A000027(A020914(n)+n)`
-/

namespace A122437.P10597774705510568644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A020914 n + (n : ℤ)).toNat

end

end A122437.P10597774705510568644

namespace A122437

/-- `A000027(A020914(n)+n)` -/
def P10597774705510568644.Spec : Prop :=
  ∀ n, P10597774705510568644.a n = A122437 (n + 1)

end A122437

/-! ## A122437.P2793620703284192386

`A000027(A056576(n)+1+n)`
-/

namespace A122437.P2793620703284192386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A056576 n + 1 + (n : ℤ)).toNat

end

end A122437.P2793620703284192386

namespace A122437

/-- `A000027(A056576(n)+1+n)` -/
def P2793620703284192386.Spec : Prop :=
  ∀ n, P2793620703284192386.a n = A122437 (n + 1)

end A122437

/-! ## A122437.P10645161247287384374

`record[Δ[n*A020915(n)]]`
-/

namespace A122437.P10645161247287384374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A020915 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122437.P10645161247287384374

namespace A122437

/-- `record[Δ[n*A020915(n)]]` -/
def P10645161247287384374.Spec : Prop :=
  ∀ n, P10645161247287384374.a n = A122437 (n + 1)

end A122437

/-! ## A122437.P17774303850723720319

`record[A020915(n)%A020915(n+1)+n+1]`
-/

namespace A122437.P17774303850723720319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020915 n) (A020915 (n + 1)) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122437.P17774303850723720319

namespace A122437

/-- `record[A020915(n)%A020915(n+1)+n+1]` -/
def P17774303850723720319.Spec : Prop :=
  ∀ n, P17774303850723720319.a n = A122437 (n + 1)

end A122437

/-! ## A122437.P16961819158547337753

`record[A156301(n)%A156301(n+1)+n+1]`
-/

namespace A122437.P16961819158547337753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156301 n) (A156301 (n + 1)) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122437.P16961819158547337753

namespace A122437

/-- `record[A156301(n)%A156301(n+1)+n+1]` -/
def P16961819158547337753.Spec : Prop :=
  ∀ n, P16961819158547337753.a n = A122437 (n + 1)

end A122437

/-! ## A122437.P16682188501117666735

`A028310(A020914(n)+n)`
-/

namespace A122437.P16682188501117666735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A020914 n + (n : ℤ)).toNat

end

end A122437.P16682188501117666735

namespace A122437

/-- `A028310(A020914(n)+n)` -/
def P16682188501117666735.Spec : Prop :=
  ∀ n, P16682188501117666735.a n = A122437 (n + 1)

end A122437

/-! ## A122437.P11672800184784276388

`A028310(A204399(n)+n)`
-/

namespace A122437.P11672800184784276388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A204399 n + (n : ℤ)).toNat

end

end A122437.P11672800184784276388

namespace A122437

/-- `A028310(A204399(n)+n)` -/
def P11672800184784276388.Spec : Prop :=
  ∀ n, P11672800184784276388.a n = A122437 (n + 1)

end A122437

/-! ## A122437.P14608685898893583611

`A020915(A204399(A056576(n)+n))`
-/

namespace A122437.P14608685898893583611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A204399 (A056576 n + (n : ℤ)).toNat).toNat

end

end A122437.P14608685898893583611

namespace A122437

/-- `A020915(A204399(A056576(n)+n))` -/
def P14608685898893583611.Spec : Prop :=
  ∀ n, P14608685898893583611.a n = A122437 (n + 1)

end A122437

/-! ## A122437.P10692601579735024695

`A020915(A056576(A020914(n)+n))`
-/

namespace A122437.P10692601579735024695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A056576 (A020914 n + (n : ℤ)).toNat).toNat

end

end A122437.P10692601579735024695

namespace A122437

/-- `A020915(A056576(A020914(n)+n))` -/
def P10692601579735024695.Spec : Prop :=
  ∀ n, P10692601579735024695.a n = A122437 (n + 1)

end A122437

/-! ## A122437.P17527503746186683788

`A136409(A020914(A020914(n)+n))`
-/

namespace A122437.P17527503746186683788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136409 (A020914 (A020914 n + (n : ℤ)).toNat).toNat

end

end A122437.P17527503746186683788

namespace A122437

/-- `A136409(A020914(A020914(n)+n))` -/
def P17527503746186683788.Spec : Prop :=
  ∀ n, P17527503746186683788.a n = A122437 (n + 1)

end A122437

/-! ## A122437.P7359758321003900653

`A020915(A056576(A056576(n)+1+n))`
-/

namespace A122437.P7359758321003900653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A056576 (A056576 n + 1 + (n : ℤ)).toNat).toNat

end

end A122437.P7359758321003900653

namespace A122437

/-- `A020915(A056576(A056576(n)+1+n))` -/
def P7359758321003900653.Spec : Prop :=
  ∀ n, P7359758321003900653.a n = A122437 (n + 1)

end A122437

/-! ## A122437.P3221383067281019566

`A206805(A056576(n)+1)`
-/

namespace A122437.P3221383067281019566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206805 (A056576 n + 1).toNat

end

end A122437.P3221383067281019566

namespace A122437

/-- `A206805(A056576(n)+1)` -/
def P3221383067281019566.Spec : Prop :=
  ∀ n, P3221383067281019566.a n = A122437 (n + 1)

end A122437

/-! ## A122437.P7573180789010069667

`ceil(log2(A034472(n))+n)`
-/

namespace A122437.P7573180789010069667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A034472 n : ℝ) + (n : ℝ)⌉

end

end A122437.P7573180789010069667

namespace A122437

/-- `ceil(log2(A034472(n))+n)` -/
def P7573180789010069667.Spec : Prop :=
  ∀ n, P7573180789010069667.a n = A122437 (n + 1)

end A122437

/-! ## A122437.P924848379182927347

`ceil(log2(A052929(n))+n)`
-/

namespace A122437.P924848379182927347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A052929 n : ℝ) + (n : ℝ)⌉

end

end A122437.P924848379182927347

namespace A122437

/-- `ceil(log2(A052929(n))+n)` -/
def P924848379182927347.Spec : Prop :=
  ∀ n, P924848379182927347.a n = A122437 (n + 1)

end A122437

/-! ## A122437.P6126972055479644139

`ceil(log2(A104081(n))+n)`
-/

namespace A122437.P6126972055479644139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A104081 n : ℝ) + (n : ℝ)⌉

end

end A122437.P6126972055479644139

namespace A122437

/-- `ceil(log2(A104081(n))+n)` -/
def P6126972055479644139.Spec : Prop :=
  ∀ n, P6126972055479644139.a n = A122437 (n + 1)

end A122437

/-! ## A122437.P14077429254425491689

`ceil(log2(A092236(n+1))+n)`
-/

namespace A122437.P14077429254425491689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A092236 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A122437.P14077429254425491689

namespace A122437

/-- `ceil(log2(A092236(n+1))+n)` -/
def P14077429254425491689.Spec : Prop :=
  ∀ n, P14077429254425491689.a n = A122437 (n + 1)

end A122437

/-! ## A122437.P14780382686638934653

`ceil(log2(A094388(n+1))+n)`
-/

namespace A122437.P14780382686638934653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A094388 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A122437.P14780382686638934653

namespace A122437

/-- `ceil(log2(A094388(n+1))+n)` -/
def P14780382686638934653.Spec : Prop :=
  ∀ n, P14780382686638934653.a n = A122437 (n + 1)

end A122437

/-! ## A122437.P2504309227465416217

`floor(log2(A199317(n)))`
-/

namespace A122437.P2504309227465416217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A199317 n).toNat

end

end A122437.P2504309227465416217

namespace A122437

/-- `floor(log2(A199317(n)))` -/
def P2504309227465416217.Spec : Prop :=
  ∀ n, (P2504309227465416217.a n : ℤ) = A122437 (n + 1)

end A122437

/-!
# A122438: Riordan array (1/(1-2x), x(1+2x)).

The programs for A122438, there is no canonical definition to state claims against.
-/

/-! ## A122438.P8626470969284343702

`A004070(n)*A130321(n)`
-/

namespace A122438.P8626470969284343702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 n * A130321 n

end

end A122438.P8626470969284343702

/-! ## A122438.P7194610795994919587

`sqrt(A262616(n))*A004070(n)`
-/

namespace A122438.P7194610795994919587
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A004070 n : ℝ)

end

end A122438.P7194610795994919587

/-! ## A122438.P11341221072095476482

`A000079(A025581(n))*A004070(n)`
-/

namespace A122438.P11341221072095476482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A004070 n

end

end A122438.P11341221072095476482

/-! ## A122438.P4109211478888222585

`A004070(n)*A016116(A099375(n))`
-/

namespace A122438.P4109211478888222585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 n * A016116 (A099375 n).toNat

end

end A122438.P4109211478888222585

/-! ## A122438.P13802350594598830455

`A004070(n)*A059268(A061579(n))`
-/

namespace A122438.P13802350594598830455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 n * A059268 (A061579 n).toNat

end

end A122438.P13802350594598830455

/-! ## A122438.P15673795112154403861

`A004070(n)*A011782(A004736(n+1))`
-/

namespace A122438.P15673795112154403861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 n * A011782 (A004736 (n + 1)).toNat

end

end A122438.P15673795112154403861

/-! ## A122438.P5151835067942622662

`A052509(A038722(n+2))*A059268(A038722(n+2))`
-/

namespace A122438.P5151835067942622662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (A038722 (n + 2)).toNat * A059268 (A038722 (n + 2)).toNat

end

end A122438.P5151835067942622662

/-! ## A122438.P902995575971907407

`A058393(A014132(n+1))*A130321(n)`
-/

namespace A122438.P902995575971907407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058393 (A014132 (n + 1)).toNat * A130321 n

end

end A122438.P902995575971907407

/-! ## A122438.P5724757333372662165

`A004070(n)*A006519(A054582(n))`
-/

namespace A122438.P5724757333372662165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 n * A006519 (A054582 n).toNat

end

end A122438.P5724757333372662165

/-!
# A122439: Expansion of 1/(1-2x-x^2+4x^4).

The programs for A122439, the canonical program `A122439.P7332562686488176912` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122439 has offset 0).

The definition of A122439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122439.P7332562686488176912

`∑[A134270(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A122439

/-- `∑[A134270(n)]` -/
def P7332562686488176912.Spec : Prop :=
  ∀ n, P7332562686488176912.a n = A122439 n

theorem P7332562686488176912.correct : P7332562686488176912.Spec := by
  intro n
  simp only [A122439]

end A122439

/-! ## A122439.P3127870744663560694

`∑[2^n-A159284(n)]`
-/

namespace A122439.P3127870744663560694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A159284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122439.P3127870744663560694

namespace A122439

/-- `∑[2^n-A159284(n)]` -/
def P3127870744663560694.Spec : Prop :=
  ∀ n, P3127870744663560694.a n = A122439 n

end A122439

/-! ## A122439.P17436599861445329034

`2^(n+1)-A159288(n+1)`
-/

namespace A122439.P17436599861445329034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A159288 (n + 1)

end

end A122439.P17436599861445329034

namespace A122439

/-- `2^(n+1)-A159288(n+1)` -/
def P17436599861445329034.Spec : Prop :=
  ∀ n, P17436599861445329034.a n = A122439 n

end A122439

/-! ## A122439.P17609786722089928917

`A052947(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A122439.P17609786722089928917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052947 n + 2 * a (n - 1)

end

end A122439.P17609786722089928917

namespace A122439

/-- `A052947(n)+2*a(n-1)` -/
def P17609786722089928917.Spec : Prop :=
  ∀ n, P17609786722089928917.a n = A122439 n

end A122439

/-! ## A122439.P1330345542846865638

`A134270(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A122439.P1330345542846865638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134270 n + a (A023443 n).toNat

end

end A122439.P1330345542846865638

namespace A122439

/-- `A134270(n)+a(A023443(n))` -/
def P1330345542846865638.Spec : Prop :=
  ∀ n, P1330345542846865638.a n = A122439 n

end A122439

/-!
# A122440: Riordan array ((3-sqrt(1+8x))/2, (sqrt(1+8x)-1)/4).

The programs for A122440, the canonical program `A122440.P10548338091317533155` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122440 has offset 0).

The definition of A122440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6557 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122440.P10548338091317533155

`Δ[-A099039(n)]*A130321(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A122440

/-- `Δ[-A099039(n)]*A130321(n)` -/
def P10548338091317533155.Spec : Prop :=
  ∀ n, P10548338091317533155.a n = A122440 n

theorem P10548338091317533155.correct : P10548338091317533155.Spec := by
  intro n
  simp only [A122440]

end A122440

/-! ## A122440.P3923560768427902346

`A110292(n)+∑[A110292(n)]-1`
-/

namespace A122440.P3923560768427902346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110292 n + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A122440.P3923560768427902346

namespace A122440

/-- `A110292(n)+∑[A110292(n)]-1` -/
def P3923560768427902346.Spec : Prop :=
  ∀ n, P3923560768427902346.a n = A122440 n

end A122440

/-! ## A122440.P16672147838207258535

`(A099039(n)-A099039(n+1))*A130321(n)`
-/

namespace A122440.P16672147838207258535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099039 n - A099039 (n + 1)) * A130321 n

end

end A122440.P16672147838207258535

namespace A122440

/-- `(A099039(n)-A099039(n+1))*A130321(n)` -/
def P16672147838207258535.Spec : Prop :=
  ∀ n, P16672147838207258535.a n = A122440 n

theorem P16672147838207258535.correct : P16672147838207258535.Spec := by
  intro n
  simp only [A122440, Nat.add_sub_cancel, A122440.P16672147838207258535.a, A122440.P10548338091317533155.f1, A122440.P10548338091317533155.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A122440

/-!
# A122441: Expansion of 2*(sqrt(1+8x)-3)/(sqrt(1+8x)-5).

The programs for A122441, there is no canonical definition to state claims against.
-/

/-! ## A122441.P12101530624281473887

`abs(A064311(n))*(-1)^n`
-/

namespace A122441.P12101530624281473887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A064311 n| * (-1) ^ n

end

end A122441.P12101530624281473887

/-! ## A122441.P12501659828037916809

`A000038(n)-A064311(n)`
-/

namespace A122441.P12501659828037916809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A064311 n

end

end A122441.P12501659828037916809

/-! ## A122441.P13741719480616747149

`A011600(2-C(2, n+2))*A064311(n)`
-/

namespace A122441.P13741719480616747149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 (2 - Nat.choose 2 (n + 2)) * A064311 n

end

end A122441.P13741719480616747149

/-! ## A122441.P14453868272395547474

`(-A064311(n))^A001511(A000040(n+1))`
-/

namespace A122441.P14453868272395547474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A064311 n : ℚ) ^ (A001511 (A000040 (n + 1)).toNat : ℤ)

end

end A122441.P14453868272395547474

/-! ## A122441.P8261725438539241782

`A000122(n²+1)-A064311(n)`
-/

namespace A122441.P8261725438539241782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2 + 1) - A064311 n

end

end A122441.P8261725438539241782

/-!
# A122443: Least prime factor of powers of semiprimes.

The programs for A122443, there is no canonical definition to state claims against.
-/

/-! ## A122443.P16080062903644638498

`A020639(A085155(n+1))`
-/

namespace A122443.P16080062903644638498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A085155 (n + 1)).toNat

end

end A122443.P16080062903644638498

/-! ## A122443.P13164987047639051325

`A074828(A085155(n+1)%A017305(n))`
-/

namespace A122443.P13164987047639051325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (Int.tmod (A085155 (n + 1)) (A017305 n)).toNat

end

end A122443.P13164987047639051325

/-! ## A122443.P17409905736346638364

`gcd(A000038(n), A074828(A085155(n+1)))`
-/

namespace A122443.P17409905736346638364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A074828 (A085155 (n + 1)).toNat)

end

end A122443.P17409905736346638364

/-! ## A122443.P8117051388121020953

`A074828(A085155(n+1))%A004957(n+1)`
-/

namespace A122443.P8117051388121020953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074828 (A085155 (n + 1)).toNat) (A004957 (n + 1))

end

end A122443.P8117051388121020953

/-! ## A122443.P7289803102344869749

`A028233(∏{p}[A085155(n+1), #])`
-/

namespace A122443.P7289803102344869749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A122443.P7289803102344869749

/-! ## A122443.P10815003425815208188

`A014673(2*A085155(n+1))`
-/

namespace A122443.P10815003425815208188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A085155 (n + 1)).toNat

end

end A122443.P10815003425815208188

/-! ## A122443.P6039435178666031601

`A006530(A323130(A085155(n+1))²)`
-/

namespace A122443.P6039435178666031601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A323130 (A085155 (n + 1)).toNat ^ 2).toNat

end

end A122443.P6039435178666031601

/-! ## A122443.P11852741923577256946

`A074828(A085155(n+1)²)`
-/

namespace A122443.P11852741923577256946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A085155 (n + 1) ^ 2).toNat

end

end A122443.P11852741923577256946

/-!
# A122444: Greatest prime factor of powers of semiprimes.

The programs for A122444, the canonical program `A122444.P13311351632682091971` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122444 has offset 1).

The definition of A122444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122444.P13311351632682091971

`A006530(A085155(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A122444

/-- `A006530(A085155(n+1))` -/
def P13311351632682091971.Spec : Prop :=
  ∀ n, P13311351632682091971.a n = A122444 (n + 1)

theorem P13311351632682091971.correct : P13311351632682091971.Spec := by
  intro n
  simp only [A122444, Nat.add_sub_cancel]

end A122444

/-! ## A122444.P1085090815847347141

`A085392(A085155(n+1)+A000007(n))`
-/

namespace A122444.P1085090815847347141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A085155 (n + 1) + A000007 n).toNat

end

end A122444.P1085090815847347141

namespace A122444

/-- `A085392(A085155(n+1)+A000007(n))` -/
def P1085090815847347141.Spec : Prop :=
  ∀ n, P1085090815847347141.a n = A122444 (n + 1)

end A122444

/-! ## A122444.P15631958041013636263

`A085392(A085155(n+1)%A016957(n))`
-/

namespace A122444.P15631958041013636263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (Int.tmod (A085155 (n + 1)) (A016957 n)).toNat

end

end A122444.P15631958041013636263

namespace A122444

/-- `A085392(A085155(n+1)%A016957(n))` -/
def P15631958041013636263.Spec : Prop :=
  ∀ n, P15631958041013636263.a n = A122444 (n + 1)

end A122444

/-! ## A122444.P7269072581747653850

`A085392(A085155(n+1))%A000217(n+5)`
-/

namespace A122444.P7269072581747653850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085392 (A085155 (n + 1)).toNat) (A000217 (n + 5))

end

end A122444.P7269072581747653850

namespace A122444

/-- `A085392(A085155(n+1))%A000217(n+5)` -/
def P7269072581747653850.Spec : Prop :=
  ∀ n, P7269072581747653850.a n = A122444 (n + 1)

end A122444

/-! ## A122444.P5814284110310240217

`A085392(2*A085155(n+1))`
-/

namespace A122444.P5814284110310240217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * A085155 (n + 1)).toNat

end

end A122444.P5814284110310240217

namespace A122444

/-- `A085392(2*A085155(n+1))` -/
def P5814284110310240217.Spec : Prop :=
  ∀ n, P5814284110310240217.a n = A122444 (n + 1)

end A122444

/-! ## A122444.P12169132654639355808

`A020639(A323129(A085155(n+1))²)`
-/

namespace A122444.P12169132654639355808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A323129 (A085155 (n + 1)).toNat ^ 2).toNat

end

end A122444.P12169132654639355808

namespace A122444

/-- `A020639(A323129(A085155(n+1))²)` -/
def P12169132654639355808.Spec : Prop :=
  ∀ n, P12169132654639355808.a n = A122444 (n + 1)

end A122444

/-!
# A122445: Pendular trinomial triangle, read by rows of 2n+1 terms (n>=0), defined by the recurrence: if 0 < k < n, T(n,k) = T(n-1,k) + 2*T(n,2n-1-k); otherwise, if n-1 < k < 2n-1, T(n,k) = T(n-1,k) + T(n,2n-2-k); with T(n,0) = T(n+1,2n) = 1 and T(n+1,2n+1) = T(n+1,2n+2) = 0.

The programs for A122445, there is no canonical definition to state claims against.
-/

/-! ## A122445.P6297462433730825069

`A273294(A182492(n)²)+A037474(A119369(n))`
-/

namespace A122445.P6297462433730825069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273294 (A182492 n ^ 2).toNat + A037474 (A119369 n).toNat

end

end A122445.P6297462433730825069

/-! ## A122445.P10810757427900279562

`A037474(A119369(n))*A119369(A182492(n)²)`
-/

namespace A122445.P10810757427900279562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A119369 n).toNat * A119369 (A182492 n ^ 2).toNat

end

end A122445.P10810757427900279562

/-! ## A122445.P11136941625265149476

`A128975(A235213(n+2))+A037474(A119369(n))`
-/

namespace A122445.P11136941625265149476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128975 (A235213 (n + 2)).toNat + A037474 (A119369 n).toNat

end

end A122445.P11136941625265149476

/-! ## A122445.P17816357173949132763

`A005171(A076014(n+1))*A037474(A119369(n))`
-/

namespace A122445.P17816357173949132763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A076014 (n + 1)).toNat * A037474 (A119369 n).toNat

end

end A122445.P17816357173949132763

/-! ## A122445.P1754097834046884167

`A185284(A004273(n))+A119369(n)`
-/

namespace A122445.P1754097834046884167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A004273 n).toNat + A119369 n

end

end A122445.P1754097834046884167

/-!
# A122446: G.f. satisfies: A(x) = 1 + x*A(x)^2 + 2*x^2*(A(x)^2 - A(x)); equals the base sequence of pendular trinomial triangle A122445.

The programs for A122446, there is no canonical definition to state claims against.
-/

/-! ## A122446.P10155229231483588864

`A259845(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A122446.P10155229231483588864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A259845 n - 2 * a (n - 1)

end

end A122446.P10155229231483588864

/-! ## A122446.P3881520743552271597

`A122448(n)-A122445(A002061(n+2))`
-/

namespace A122446.P3881520743552271597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122448 n - A122445 (A002061 (n + 2)).toNat

end

end A122446.P3881520743552271597

/-! ## A122446.P1233049455849458997

`A049129(n+1)+A008651(A039648(n))`
-/

namespace A122446.P1233049455849458997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049129 (n + 1) + A008651 (A039648 n).toNat

end

end A122446.P1233049455849458997

/-! ## A122446.P17891203391107947143

`A337335(A025535(n))+A282710(n+1)`
-/

namespace A122446.P17891203391107947143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337335 (A025535 n).toNat + A282710 (n + 1)

end

end A122446.P17891203391107947143

/-!
# A122447: Central terms of pendular trinomial triangle A122445.

The programs for A122447, there is no canonical definition to state claims against.
-/

/-! ## A122447.P14493104007128200713

`A122448(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A122447.P14493104007128200713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122448 (n - 1) - a (n - 1)

end

end A122447.P14493104007128200713

/-! ## A122447.P3789311254565111332

`A122445(∑[2*n])`
-/

namespace A122447.P3789311254565111332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122445 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122447.P3789311254565111332

/-! ## A122447.P15505482458567518920

`or(char[2], A122445(n²+n))`
-/

namespace A122447.P15505482458567518920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A122445 (n ^ 2 + n))

end

end A122447.P15505482458567518920

/-! ## A122447.P14230106897525932453

`A122445(n²+n)*A122445(n²)`
-/

namespace A122447.P14230106897525932453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122445 (n ^ 2 + n) * A122445 (n ^ 2)

end

end A122447.P14230106897525932453

/-! ## A122447.P14370795829640443714

`A122445(A002378(n))%A006862(n)`
-/

namespace A122447.P14370795829640443714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122445 (A002378 n).toNat) (A006862 n)

end

end A122447.P14370795829640443714

/-! ## A122447.P13612997075814504431

`gcd(A000038(n), A122445(A002378(n)))`
-/

namespace A122447.P13612997075814504431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A122445 (A002378 n).toNat)

end

end A122447.P13612997075814504431

/-! ## A122447.P15730581557653629198

`A236765(A236765(n+2)+1)+A122445(n²+n)`
-/

namespace A122447.P15730581557653629198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236765 (A236765 (n + 2) + 1).toNat + A122445 (n ^ 2 + n)

end

end A122447.P15730581557653629198

/-!
# A122448: Diagonal elements A122445(n+1,n) of the pendular trinomial triangle A122445.

The programs for A122448, there is no canonical definition to state claims against.
-/

/-! ## A122448.P2365356277418951932

`A122447(n+1)+A122447(n)`
-/

namespace A122448.P2365356277418951932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122447 (n + 1) + A122447 n

end

end A122448.P2365356277418951932

/-! ## A122448.P12811525851258038930

`A122445((n+1)²+n)`
-/

namespace A122448.P12811525851258038930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122445 ((n + 1) ^ 2 + n)

end

end A122448.P12811525851258038930

/-! ## A122448.P8446309467170394101

`A122445(A028387(n))%A006862(n)`
-/

namespace A122448.P8446309467170394101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122445 (A028387 n).toNat) (A006862 n)

end

end A122448.P8446309467170394101

/-! ## A122448.P3697643312008240269

`gcd(A000038(n), A122445(A028387(n)))`
-/

namespace A122448.P3697643312008240269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A122445 (A028387 n).toNat)

end

end A122448.P3697643312008240269

/-! ## A122448.P9267475539299758226

`lcm(A020985(n), A122445(A028387(n)))`
-/

namespace A122448.P9267475539299758226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A122445 (A028387 n).toNat)

end

end A122448.P9267475539299758226

/-! ## A122448.P438620343123703333

`or(A000007(n), A122445(A028387(n)))`
-/

namespace A122448.P438620343123703333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A122445 (A028387 n).toNat)

end

end A122448.P438620343123703333

/-! ## A122448.P17756971187531292484

`A122445(A028387(n))*A133707(n+1)`
-/

namespace A122448.P17756971187531292484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122445 (A028387 n).toNat * A133707 (n + 1)

end

end A122448.P17756971187531292484

/-! ## A122448.P5431927203556718270

`A122445(A028387(n))^A007318(C(2, n))`
-/

namespace A122448.P5431927203556718270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122445 (A028387 n).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A122448.P5431927203556718270

/-! ## A122448.P6886382380505788928

`A158924(and(1, n-1)+1)+A122445(A028387(n))`
-/

namespace A122448.P6886382380505788928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158924 (Int.land 1 ((n : ℤ) - 1) + 1).toNat + A122445 (A028387 n).toNat

end

end A122448.P6886382380505788928

/-!
# A122449: Diagonal elements A122445(n+2,n) of the pendular trinomial triangle A122445.

The programs for A122449, there is no canonical definition to state claims against.
-/

/-! ## A122449.P11107654196925896734

`A122448(n+1)+A122448(n)-A122446(n+1)`
-/

namespace A122449.P11107654196925896734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122448 (n + 1) + (A122448 n - A122446 (n + 1))

end

end A122449.P11107654196925896734

/-! ## A122449.P191190263968205533

`A122445(∑[2*(n+2)])`
-/

namespace A122449.P191190263968205533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122445 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122449.P191190263968205533

/-! ## A122449.P3554856646370614602

`record[A122445(A265611(n))]`
-/

namespace A122449.P3554856646370614602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122445 (A265611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122449.P3554856646370614602

/-! ## A122449.P8211097137278449563

`record[A122445(∑[A052938(n)])]`
-/

namespace A122449.P8211097137278449563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122445 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122449.P8211097137278449563

/-! ## A122449.P5007655575706212401

`record[A122445(A193422(n+1))]`
-/

namespace A122449.P5007655575706212401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122445 (A193422 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122449.P5007655575706212401

/-!
# A122450: Diagonal above central terms of pendular trinomial triangle A122445, ignoring leading zeros.

The programs for A122450, there is no canonical definition to state claims against.
-/

/-! ## A122450.P17596853603877242619

`A122449(n+1)-A122448(n+1)`
-/

namespace A122450.P17596853603877242619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122449 (n + 1) - A122448 (n + 1)

end

end A122450.P17596853603877242619

/-! ## A122450.P13780607731643798081

`A122448(n+2)-A122446(n+2)`
-/

namespace A122450.P13780607731643798081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122448 (n + 2) - A122446 (n + 2)

end

end A122450.P13780607731643798081

/-! ## A122450.P15119570913454105932

`record[A122445(A002061(n))]`
-/

namespace A122450.P15119570913454105932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122445 (A002061 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122450.P15119570913454105932

/-! ## A122450.P1858741399336323659

`record[A122445(A004652(n))]`
-/

namespace A122450.P1858741399336323659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122445 (A004652 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122450.P1858741399336323659

/-! ## A122450.P1005331515189809831

`record[A122445(∑[A052938(n)]-n)]`
-/

namespace A122450.P1005331515189809831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122445 (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122450.P1005331515189809831

/-!
# A122451: A diagonal above central terms of pendular trinomial triangle A122445, ignoring leading zeros.

The programs for A122451, there is no canonical definition to state claims against.
-/

/-! ## A122451.P14730787844129463229

`A122445(A003682(n+5))`
-/

namespace A122451.P14730787844129463229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122445 (A003682 (n + 5)).toNat

end

end A122451.P14730787844129463229

/-! ## A122451.P4281149619381449518

`A122445(A028552(n+3)+4)`
-/

namespace A122451.P4281149619381449518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122445 (A028552 (n + 3) + 4).toNat

end

end A122451.P4281149619381449518

/-! ## A122451.P15095944399258413996

`A122445(2*A000124(n+4))`
-/

namespace A122451.P15095944399258413996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122445 (2 * A000124 (n + 4)).toNat

end

end A122451.P15095944399258413996

/-! ## A122451.P12568421240715639393

`record[A122445(A003682(A008621(n)))]`
-/

namespace A122451.P12568421240715639393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122445 (A003682 (A008621 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122451.P12568421240715639393

/-! ## A122451.P11255389954032213689

`record[A122445(A003682(A329048(n)))]`
-/

namespace A122451.P11255389954032213689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122445 (A003682 (A329048 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122451.P11255389954032213689

/-!
# A122452: Row sums of pendular triangle A122445.

The programs for A122452, there is no canonical definition to state claims against.
-/

/-! ## A122452.P14437871883230085969

`ceil(A288863(4^n+n)/10)`
-/

namespace A122452.P14437871883230085969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A288863 (4 ^ n + n) : ℚ) / 10⌉

end

end A122452.P14437871883230085969

/-! ## A122452.P4450915143600457298

`Δ[A053645(A105284(n))]`
-/

namespace A122452.P4450915143600457298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A105284 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122452.P4450915143600457298

/-! ## A122452.P3621671175460161234

`A195174(A149996(n+1))`
-/

namespace A122452.P3621671175460161234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A149996 (n + 1)).toNat

end

end A122452.P3621671175460161234

/-!
# A122454: Irregular triangle T(n,k) = A098546(n,k) * A036040(n,k), read by rows, 1 <= k <= A000041(n).

The programs for A122454, there is no canonical definition to state claims against.
-/

/-! ## A122454.P8435835809482521295

`A049009(n)/A178803(n)`
-/

namespace A122454.P8435835809482521295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049009 n : ℚ) / (A178803 n : ℚ)

end

end A122454.P8435835809482521295

/-! ## A122454.P12476950385294951689

`A179236(n)/A178883(n)`
-/

namespace A122454.P12476950385294951689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179236 n : ℚ) / (A178883 n : ℚ)

end

end A122454.P12476950385294951689

/-! ## A122454.P14347683744612249680

`A049009(n)*A098546(n)/A178888(n)`
-/

namespace A122454.P14347683744612249680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049009 n * A098546 n : ℚ) / (A178888 n : ℚ)

end

end A122454.P14347683744612249680

/-!
# A122455: a(n) = Sum_{k=0..n} C(n,k)*S2(n,k). Binomial convolution of the Stirling numbers of the 2nd kind. Also sum of the rows of A122454.

The programs for A122455, there is no canonical definition to state claims against.
-/

/-! ## A122455.P5638406718691557678

`A271702(∑[n]+n)`
-/

namespace A122455.P5638406718691557678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271702 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A122455.P5638406718691557678

/-! ## A122455.P5010213347636073259

`A134090(∑[n])`
-/

namespace A122455.P5010213347636073259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134090 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122455.P5010213347636073259

/-! ## A122455.P14389722311493914644

`A134090(A000217(n))+char[10]`
-/

namespace A122455.P14389722311493914644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134090 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A122455.P14389722311493914644

/-! ## A122455.P1603497955430544943

`A134090(C(n+1, 2))%A050284(n+1)`
-/

namespace A122455.P1603497955430544943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134090 (Nat.choose (n + 1) 2)) (A050284 (n + 1))

end

end A122455.P1603497955430544943

/-! ## A122455.P8323786659453063068

`lcm(A134090(n*(n+1)/2), A152847(n))`
-/

namespace A122455.P8323786659453063068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A134090 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat) (A152847 n)

end

end A122455.P8323786659453063068

/-!
# A122457: a(1)=1, a(2)=1. a(n) = the sum of the two largest earlier terms which are both coprime to n.

The programs for A122457, there is no canonical definition to state claims against.
-/

/-! ## A122457.P15218431885822715105

`A210445(A089226(n+1))`
-/

namespace A122457.P15218431885822715105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210445 (A089226 (n + 1)).toNat

end

end A122457.P15218431885822715105

/-! ## A122457.P14903107998752589087

`A210445(A140330(n+1))`
-/

namespace A122457.P14903107998752589087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210445 (A140330 (n + 1)).toNat

end

end A122457.P14903107998752589087

/-! ## A122457.P10585176411366895513

`A128982(A261279(n+2))`
-/

namespace A122457.P10585176411366895513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128982 (A261279 (n + 2)).toNat

end

end A122457.P10585176411366895513

/-! ## A122457.P15359922253704763071

`∏{e}[∑[A006374(A117555(n))]-n, #+1]`
-/

namespace A122457.P15359922253704763071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006374 (A117555 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A122457.P15359922253704763071

/-! ## A122457.P9448234501991833005

`A001223(A076221(n+4)^(A000010(n+1)-1))`
-/

namespace A122457.P9448234501991833005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.roundAway ((A076221 (n + 4) : ℚ) ^ (A000010 (n + 1) - 1 : ℤ))).toNat

end

end A122457.P9448234501991833005

/-!
# A122458: "Dropping time" of the reduced Collatz iteration starting with 2n+1.

The programs for A122458, there is no canonical definition to state claims against.
-/

/-! ## A122458.P3555066649382124162

`A085238(A060445(n)+A000007(n))`
-/

namespace A122458.P3555066649382124162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085238 (A060445 n + A000007 n).toNat

end

end A122458.P3555066649382124162

/-! ## A122458.P14230317121786638690

`A060445(n)-A085238(A060445(n)+1)`
-/

namespace A122458.P14230317121786638690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060445 n - A085238 (A060445 n + 1).toNat

end

end A122458.P14230317121786638690

/-! ## A122458.P4064307321576367789

`A136409(A126241(2*n+1))`
-/

namespace A122458.P4064307321576367789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136409 (A126241 (2 * n + 1)).toNat

end

end A122458.P4064307321576367789

/-! ## A122458.P13991393372629729633

`A060445(n)-A126241(2*n+1)`
-/

namespace A122458.P13991393372629729633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060445 n - A126241 (2 * n + 1)

end

end A122458.P13991393372629729633

/-! ## A122458.P7064628001404165894

`A102419(2*n+1)-A126241(2*n+1)`
-/

namespace A122458.P7064628001404165894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102419 (2 * n + 1) - A126241 (2 * n + 1)

end

end A122458.P7064628001404165894

/-! ## A122458.P6883484556068469221

`A074473(2*n+1)-(A126241(2*n+1)+1)`
-/

namespace A122458.P6883484556068469221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (2 * n + 1) - (A126241 (2 * n + 1) + 1)

end

end A122458.P6883484556068469221

/-!
# A122459: Triangular array of sums of two odd primes.

The programs for A122459, there is no canonical definition to state claims against.
-/

/-! ## A122459.P7703584036800064394

`2*A122460(n+1)`
-/

namespace A122459.P7703584036800064394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122460 (n + 1)

end

end A122459.P7703584036800064394

/-! ## A122459.P8163278429467307463

`A004277(A122460(n+1))`
-/

namespace A122459.P8163278429467307463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A122460 (n + 1)).toNat

end

end A122459.P8163278429467307463

/-! ## A122459.P9124448647924459492

`A000267(A122460(n+1)²)`
-/

namespace A122459.P9124448647924459492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A122460 (n + 1) ^ 2).toNat

end

end A122459.P9124448647924459492

/-! ## A122459.P3889476542588418016

`A027434(A122460(n+1)²)`
-/

namespace A122459.P3889476542588418016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (A122460 (n + 1) ^ 2).toNat

end

end A122459.P3889476542588418016

/-! ## A122459.P15076470759955177744

`A004275(A122460(n+1)+1)`
-/

namespace A122459.P15076470759955177744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A122460 (n + 1) + 1).toNat

end

end A122459.P15076470759955177744

/-! ## A122459.P5338584090696341679

`A122460(n+1)+A122460(n-or(n, -1))`
-/

namespace A122459.P5338584090696341679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122460 (n + 1) + A122460 ((n : ℤ) - Int.lor (n : ℤ) (-1)).toNat

end

end A122459.P5338584090696341679

/-! ## A122459.P6881428446412820976

`A122460(A000027(n+1))+A122460(n+1)`
-/

namespace A122459.P6881428446412820976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122460 (A000027 (n + 1)).toNat + A122460 (n + 1)

end

end A122459.P6881428446412820976

/-! ## A122459.P8532099671425302224

`A122460(n+1)/2^A008683(A092627(n+1))`
-/

namespace A122459.P8532099671425302224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122460 (n + 1) : ℚ) / (2 : ℚ) ^ (A008683 (A092627 (n + 1)).toNat : ℤ)

end

end A122459.P8532099671425302224

/-!
# A122460: Triangular array of averages of two odd primes.

The programs for A122460, there is no canonical definition to state claims against.
-/

/-! ## A122460.P8564541991362389639

`A122459(n+1)/2`
-/

namespace A122460.P8564541991362389639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122459 (n + 1) : ℚ) / 2

end

end A122460.P8564541991362389639

/-! ## A122460.P2564500331805178227

`floor(A122459(n-or(n, -1))/2)`
-/

namespace A122460.P2564500331805178227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A122459 ((n : ℤ) - Int.lor (n : ℤ) (-1)).toNat : ℚ) / 2⌋

end

end A122460.P2564500331805178227

/-! ## A122460.P181857947272805138

`floor(A122459(2*n-(n-1))/2)`
-/

namespace A122460.P181857947272805138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A122459 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ) / 2⌋

end

end A122460.P181857947272805138

/-! ## A122460.P15632343828066745219

`A001281(A122459(n+1))`
-/

namespace A122460.P15632343828066745219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A122459 (n + 1)).toNat

end

end A122460.P15632343828066745219

/-! ## A122460.P11075677066065215790

`A122921(A122459(n+1)²)`
-/

namespace A122460.P11075677066065215790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A122459 (n + 1) ^ 2).toNat

end

end A122460.P11075677066065215790

/-! ## A122460.P9545598900479955410

`A004524(A122459(n+1)+1)`
-/

namespace A122460.P9545598900479955410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A122459 (n + 1) + 1).toNat

end

end A122460.P9545598900479955410

/-! ## A122460.P707320168816214066

`A004526(A122459(n+1)+1)`
-/

namespace A122460.P707320168816214066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A122459 (n + 1) + 1).toNat

end

end A122460.P707320168816214066

/-! ## A122460.P1392974081048911139

`A001057(A122459(n+1)-1)`
-/

namespace A122460.P1392974081048911139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A122459 (n + 1) - 1).toNat

end

end A122460.P1392974081048911139

/-! ## A122460.P10003088420522593226

`A003602(A122459(n+1)-1)`
-/

namespace A122460.P10003088420522593226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A122459 (n + 1) - 1).toNat

end

end A122460.P10003088420522593226

/-! ## A122460.P11957648719249558533

`A002265(2*A122459(n+1))`
-/

namespace A122460.P11957648719249558533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A122459 (n + 1)).toNat

end

end A122460.P11957648719249558533

/-!
# A122461: Repetitions of even numbers four times.

The programs for A122461, the canonical program `A122461.P3987586547876267003` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122461 has offset 0).

The definition of A122461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122461.P3987586547876267003

`2*floor(n/4)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A122461

/-- `2*floor(n/4)` -/
def P3987586547876267003.Spec : Prop :=
  ∀ n, P3987586547876267003.a n = A122461 n

theorem P3987586547876267003.correct : P3987586547876267003.Spec := by
  intro n
  simp only [A122461]

end A122461

/-! ## A122461.P9702416666572673411

`and(n, -4)/2`
-/

namespace A122461.P9702416666572673411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-4) : ℚ) / 2

end

end A122461.P9702416666572673411

namespace A122461

/-- `and(n, -4)/2` -/
def P9702416666572673411.Spec : Prop :=
  ∀ n, P9702416666572673411.a n = (A122461 n : ℚ)

end A122461

/-! ## A122461.P7193827348685279952

`and(floor(n/2), -2)`
-/

namespace A122461.P7193827348685279952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊(n : ℚ) / 2⌋ (-2)

end

end A122461.P7193827348685279952

namespace A122461

/-- `and(floor(n/2), -2)` -/
def P7193827348685279952.Spec : Prop :=
  ∀ n, P7193827348685279952.a n = A122461 n

end A122461

/-! ## A122461.P14154477555757009539

`(or(3, n)-3)/2`
-/

namespace A122461.P14154477555757009539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 3 n : ℤ) - 3 : ℚ) / 2

end

end A122461.P14154477555757009539

namespace A122461

/-- `(or(3, n)-3)/2` -/
def P14154477555757009539.Spec : Prop :=
  ∀ n, P14154477555757009539.a n = (A122461 n : ℚ)

end A122461

/-! ## A122461.P8667252784916827128

`xor(3, or(3, n))/2`
-/

namespace A122461.P8667252784916827128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 (Nat.lor 3 n) : ℚ) / 2

end

end A122461.P8667252784916827128

namespace A122461

/-- `xor(3, or(3, n))/2` -/
def P8667252784916827128.Spec : Prop :=
  ∀ n, P8667252784916827128.a n = (A122461 n : ℚ)

end A122461

/-! ## A122461.P9901691505007351815

`(n-n%4)/2`
-/

namespace A122461.P9901691505007351815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((n % 4 : ℕ) : ℤ) : ℚ) / 2

end

end A122461.P9901691505007351815

namespace A122461

/-- `(n-n%4)/2` -/
def P9901691505007351815.Spec : Prop :=
  ∀ n, P9901691505007351815.a n = (A122461 n : ℚ)

end A122461

/-! ## A122461.P5182606084037779699

`(n-and(3, n))/2`
-/

namespace A122461.P5182606084037779699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.land 3 n : ℤ) : ℚ) / 2

end

end A122461.P5182606084037779699

namespace A122461

/-- `(n-and(3, n))/2` -/
def P5182606084037779699.Spec : Prop :=
  ∀ n, P5182606084037779699.a n = (A122461 n : ℚ)

end A122461

/-! ## A122461.P1104616482565380382

`xor(n, and(3, n))/2`
-/

namespace A122461.P1104616482565380382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (Nat.land 3 n) : ℚ) / 2

end

end A122461.P1104616482565380382

namespace A122461

/-- `xor(n, and(3, n))/2` -/
def P1104616482565380382.Spec : Prop :=
  ∀ n, P1104616482565380382.a n = (A122461 n : ℚ)

end A122461

/-! ## A122461.P16266109737049938299

`floor((xor(3, n)+n)/4)`
-/

namespace A122461.P16266109737049938299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 3 n + n : ℚ) / 4⌋

end

end A122461.P16266109737049938299

namespace A122461

/-- `floor((xor(3, n)+n)/4)` -/
def P16266109737049938299.Spec : Prop :=
  ∀ n, P16266109737049938299.a n = A122461 n

end A122461

/-! ## A122461.P1612454508300383900

`(xor(3, n)+n-3)/4`
-/

namespace A122461.P1612454508300383900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 3 n : ℤ) + ((n : ℤ) - 3) : ℚ) / 4

end

end A122461.P1612454508300383900

namespace A122461

/-- `(xor(3, n)+n-3)/4` -/
def P1612454508300383900.Spec : Prop :=
  ∀ n, P1612454508300383900.a n = (A122461 n : ℚ)

end A122461

/-! ## A122461.P3557610766862727025

`2+a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A122461.P3557610766862727025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  2 + a (n - 4)

end

end A122461.P3557610766862727025

namespace A122461

/-- `2+a(n-4)` -/
def P3557610766862727025.Spec : Prop :=
  ∀ n, (P3557610766862727025.a n : ℤ) = A122461 n

end A122461

/-! ## A122461.P10817446649918874451

`lcm(2, 2*ceil((n-3)/4))`
-/

namespace A122461.P10817446649918874451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (2 * ⌈((n : ℤ) - 3 : ℚ) / 4⌉)

end

end A122461.P10817446649918874451

namespace A122461

/-- `lcm(2, 2*ceil((n-3)/4))` -/
def P10817446649918874451.Spec : Prop :=
  ∀ n, (P10817446649918874451.a n : ℤ) = A122461 n

end A122461

/-! ## A122461.P13089855539033984532

`∑[and(2, (n-1)^3)]-2`
-/

namespace A122461.P13089855539033984532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (((n : ℤ) - 1) ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A122461.P13089855539033984532

namespace A122461

/-- `∑[and(2, (n-1)^3)]-2` -/
def P13089855539033984532.Spec : Prop :=
  ∀ n, P13089855539033984532.a n = A122461 n

end A122461

/-! ## A122461.P14895391342539441177

`floor(-or(3, -(n+1))/2)`
-/

namespace A122461.P14895391342539441177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-((Int.lor 3 (-(n + 1 : ℤ)) : ℚ) / 2)⌋

end

end A122461.P14895391342539441177

namespace A122461

/-- `floor(-or(3, -(n+1))/2)` -/
def P14895391342539441177.Spec : Prop :=
  ∀ n, P14895391342539441177.a n = A122461 n

end A122461

/-! ## A122461.P13783469727942444414

`-ceil(or(3, -(n+1))/2)`
-/

namespace A122461.P13783469727942444414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(Int.lor 3 (-(n + 1 : ℤ)) : ℚ) / 2⌉

end

end A122461.P13783469727942444414

namespace A122461

/-- `-ceil(or(3, -(n+1))/2)` -/
def P13783469727942444414.Spec : Prop :=
  ∀ n, P13783469727942444414.a n = A122461 n

end A122461

/-! ## A122461.P7930982009688471361

`∑[abs(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=2`
-/

namespace A122461.P7930982009688471361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122461.P7930982009688471361

namespace A122461

/-- `∑[abs(a(n-4))]` -/
def P7930982009688471361.Spec : Prop :=
  ∀ n, (P7930982009688471361.a n : ℤ) = A122461 n

end A122461

/-! ## A122461.P12560871355835106945

`∑[dr(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=2`
-/

namespace A122461.P12560871355835106945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122461.P12560871355835106945

namespace A122461

/-- `∑[dr(a(n-4))]` -/
def P12560871355835106945.Spec : Prop :=
  ∀ n, (P12560871355835106945.a n : ℤ) = A122461 n

end A122461

/-! ## A122461.P7443743439304378583

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A122461.P7443743439304378583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122461.P7443743439304378583

namespace A122461

/-- `∑[floor(a(n-4))]` -/
def P7443743439304378583.Spec : Prop :=
  ∀ n, (P7443743439304378583.a n : ℤ) = A122461 n

end A122461

/-! ## A122461.P13970112647420723437

`∑[ceil(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A122461.P13970112647420723437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122461.P13970112647420723437

namespace A122461

/-- `∑[ceil(a(n-4))]` -/
def P13970112647420723437.Spec : Prop :=
  ∀ n, (P13970112647420723437.a n : ℤ) = A122461 n

end A122461

/-! ## A122461.P12464832013022507828

`∑[round(a(n-4))]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=2`

`round` is left out, it is the identity on integers.
-/

namespace A122461.P12464832013022507828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122461.P12464832013022507828

namespace A122461

/-- `∑[round(a(n-4))]` -/
def P12464832013022507828.Spec : Prop :=
  ∀ n, (P12464832013022507828.a n : ℤ) = A122461 n

end A122461

/-!
# A122462: a(n) = gcd(b(n-1),b(n)), where b(i) = A122280(i).

The programs for A122462, there is no canonical definition to state claims against.
-/

/-! ## A122462.P12625507558659034425

`gcd(A122280(n+2), A122280(n+3))`
-/

namespace A122462.P12625507558659034425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122280 (n + 2)) (A122280 (n + 3))

end

end A122462.P12625507558659034425

/-!
# A122466: Semiprimes written in base 2.

The programs for A122466, the canonical program `A122466.P11149009373863212890` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122466 has offset 1).

The definition of A122466 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A007088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A122466.P11149009373863212890

`A007088(A001358(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A122466

/-- `A007088(A001358(n+1))` -/
def P11149009373863212890.Spec : Prop :=
  ∀ n, P11149009373863212890.a n = A122466 (n + 1)

theorem P11149009373863212890.correct : P11149009373863212890.Spec := by
  intro n
  simp only [A122466, Nat.add_sub_cancel]

end A122466

/-! ## A122466.P7151547909481337862

`A007088(A176540(n+2))`
-/

namespace A122466.P7151547909481337862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A176540 (n + 2)).toNat

end

end A122466.P7151547909481337862

namespace A122466

/-- `A007088(A176540(n+2))` -/
def P7151547909481337862.Spec : Prop :=
  ∀ n, P7151547909481337862.a n = A122466 (n + 1)

end A122466

/-! ## A122466.P17000182323889574314

`A007088(sqrt(A074985(n+1)))`
-/

namespace A122466.P17000182323889574314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A122466.P17000182323889574314

namespace A122466

/-- `A007088(sqrt(A074985(n+1)))` -/
def P17000182323889574314.Spec : Prop :=
  ∀ n, P17000182323889574314.a n = A122466 (n + 1)

end A122466

/-! ## A122466.P10311966883927510564

`A007088(A186621(n+1)+1)`
-/

namespace A122466.P10311966883927510564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A186621 (n + 1) + 1).toNat

end

end A122466.P10311966883927510564

namespace A122466

/-- `A007088(A186621(n+1)+1)` -/
def P10311966883927510564.Spec : Prop :=
  ∀ n, P10311966883927510564.a n = A122466 (n + 1)

end A122466

/-! ## A122466.P12331847151650294898

`A007088(A088707(n+1)-1)`
-/

namespace A122466.P12331847151650294898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A088707 (n + 1) - 1).toNat

end

end A122466.P12331847151650294898

namespace A122466

/-- `A007088(A088707(n+1)-1)` -/
def P12331847151650294898.Spec : Prop :=
  ∀ n, P12331847151650294898.a n = A122466 (n + 1)

end A122466

/-! ## A122466.P6538310106222177217

`A007088(A075818(n+1)/2)`
-/

namespace A122466.P6538310106222177217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat

end

end A122466.P6538310106222177217

namespace A122466

/-- `A007088(A075818(n+1)/2)` -/
def P6538310106222177217.Spec : Prop :=
  ∀ n, P6538310106222177217.a n = A122466 (n + 1)

end A122466

/-! ## A122466.P4902989703352254193

`A007088(eq[2, A001222(n+1)]+1)`
-/

namespace A122466.P4902989703352254193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A122466.P4902989703352254193

namespace A122466

/-- `A007088(eq[2, A001222(n+1)]+1)` -/
def P4902989703352254193.Spec : Prop :=
  ∀ n, P4902989703352254193.a n = A122466 (n + 1)

end A122466

/-! ## A122466.P3039246889407102898

`A007088(A100493(n+1)-(n+1))`
-/

namespace A122466.P3039246889407102898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A100493 (n + 1) - (n + 1 : ℤ)).toNat

end

end A122466.P3039246889407102898

namespace A122466

/-- `A007088(A100493(n+1)-(n+1))` -/
def P3039246889407102898.Spec : Prop :=
  ∀ n, P3039246889407102898.a n = A122466 (n + 1)

end A122466

/-! ## A122466.P6270049243134554920

`A007088(record[n/a(A001222(n))])` with `a(0)=4, a(1)=2`
-/

namespace A122466.P6270049243134554920
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A122466.P6270049243134554920

namespace A122466

/-- `A007088(record[n/a(A001222(n))])` -/
def P6270049243134554920.Spec : Prop :=
  ∀ n, P6270049243134554920.a n = A122466 (n + 1)

end A122466

/-! ## A122466.P205270487318231412

`A007088(eq[4, a(A001222(n))²])` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A122466.P205270487318231412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f2 =>
  f2 (A001222 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A122466.P205270487318231412

namespace A122466

/-- `A007088(eq[4, a(A001222(n))²])` -/
def P205270487318231412.Spec : Prop :=
  ∀ n, P205270487318231412.a n = A122466 (n + 1)

end A122466

/-! ## A122466.P16564876253982656719

`A007088(A084126(n+1)*A084127(n+1))`
-/

namespace A122466.P16564876253982656719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A084126 (n + 1) * A084127 (n + 1)).toNat

end

end A122466.P16564876253982656719

namespace A122466

/-- `A007088(A084126(n+1)*A084127(n+1))` -/
def P16564876253982656719.Spec : Prop :=
  ∀ n, P16564876253982656719.a n = A122466 (n + 1)

end A122466

/-! ## A122466.P2191901789327227086

`A115454(A176193(n+1))`
-/

namespace A122466.P2191901789327227086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115454 (A176193 (n + 1)).toNat

end

end A122466.P2191901789327227086

namespace A122466

/-- `A115454(A176193(n+1))` -/
def P2191901789327227086.Spec : Prop :=
  ∀ n, P2191901789327227086.a n = A122466 (n + 1)

end A122466

/-! ## A122466.P1208249243372628293

`A007088(eq[2, ∑{e}[n, #]])`
-/

namespace A122466.P1208249243372628293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A122466.P1208249243372628293

namespace A122466

/-- `A007088(eq[2, ∑{e}[n, #]])` -/
def P1208249243372628293.Spec : Prop :=
  ∀ n, P1208249243372628293.a n = A122466 (n + 1)

end A122466

/-! ## A122466.P15592794836280186848

`A007088(eq[2, A105700(n)])`
-/

namespace A122466.P15592794836280186848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A122466.P15592794836280186848

namespace A122466

/-- `A007088(eq[2, A105700(n)])` -/
def P15592794836280186848.Spec : Prop :=
  ∀ n, P15592794836280186848.a n = A122466 (n + 1)

end A122466

/-! ## A122466.P3918552213329526255

`A007088(eq[2, A226378(n)])`
-/

namespace A122466.P3918552213329526255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A122466.P3918552213329526255

namespace A122466

/-- `A007088(eq[2, A226378(n)])` -/
def P3918552213329526255.Spec : Prop :=
  ∀ n, P3918552213329526255.a n = A122466 (n + 1)

end A122466

/-! ## A122466.P10202602751344544050

`A007088(eq[2, A001055(n+1)]+1)`
-/

namespace A122466.P10202602751344544050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A122466.P10202602751344544050

namespace A122466

/-- `A007088(eq[2, A001055(n+1)]+1)` -/
def P10202602751344544050.Spec : Prop :=
  ∀ n, P10202602751344544050.a n = A122466 (n + 1)

end A122466

/-! ## A122466.P5000429711691777404

`A007088(eq[2, A034836(n+1)]+1)`
-/

namespace A122466.P5000429711691777404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A122466.P5000429711691777404

namespace A122466

/-- `A007088(eq[2, A034836(n+1)]+1)` -/
def P5000429711691777404.Spec : Prop :=
  ∀ n, P5000429711691777404.a n = A122466 (n + 1)

end A122466

/-! ## A122466.P17629991564568294932

`A007088(A207790(4*n+3))`
-/

namespace A122466.P17629991564568294932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A207790 (4 * n + 3)).toNat

end

end A122466.P17629991564568294932

namespace A122466

/-- `A007088(A207790(4*n+3))` -/
def P17629991564568294932.Spec : Prop :=
  ∀ n, P17629991564568294932.a n = A122466 (n + 1)

end A122466

/-! ## A122466.P6138478496266876973

`A185544(A075818(n+1))`
-/

namespace A122466.P6138478496266876973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A075818 (n + 1)).toNat

end

end A122466.P6138478496266876973

namespace A122466

/-- `A185544(A075818(n+1))` -/
def P6138478496266876973.Spec : Prop :=
  ∀ n, P6138478496266876973.a n = A122466 (n + 1)

end A122466

/-! ## A122466.P11664235829381031280

`round(A099821(A001358(n+1)+1)/10)`
-/

namespace A122466.P11664235829381031280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A099821 (A001358 (n + 1) + 1).toNat : ℚ) / 10)

end

end A122466.P11664235829381031280

namespace A122466

/-- `round(A099821(A001358(n+1)+1)/10)` -/
def P11664235829381031280.Spec : Prop :=
  ∀ n, P11664235829381031280.a n = A122466 (n + 1)

end A122466

/-!
# A122467: Write n-th semiprime in binary, sum as if decimal numbers.

The programs for A122467, the canonical program `A122467.P8198560249124032750` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122467 has offset 1).

The definition of A122467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122467.P8198560249124032750

`∑[A122466(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A122467

/-- `∑[A122466(n+1)]` -/
def P8198560249124032750.Spec : Prop :=
  ∀ n, P8198560249124032750.a n = A122467 (n + 1)

theorem P8198560249124032750.correct : P8198560249124032750.Spec := by
  intro n
  simp only [A122467, Nat.add_sub_cancel]

end A122467

/-! ## A122467.P942395782541722891

`∑[A007088(A001358(n+1))]`
-/

namespace A122467.P942395782541722891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A001358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122467.P942395782541722891

namespace A122467

/-- `∑[A007088(A001358(n+1))]` -/
def P942395782541722891.Spec : Prop :=
  ∀ n, P942395782541722891.a n = A122467 (n + 1)

end A122467

/-! ## A122467.P17462102044093561670

`∑[A007088(A088707(n+1)-1)]`
-/

namespace A122467.P17462102044093561670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A088707 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122467.P17462102044093561670

namespace A122467

/-- `∑[A007088(A088707(n+1)-1)]` -/
def P17462102044093561670.Spec : Prop :=
  ∀ n, P17462102044093561670.a n = A122467 (n + 1)

end A122467

/-! ## A122467.P16856999796153939032

`∑[A007088(A075818(n+1)/2)]`
-/

namespace A122467.P16856999796153939032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122467.P16856999796153939032

namespace A122467

/-- `∑[A007088(A075818(n+1)/2)]` -/
def P16856999796153939032.Spec : Prop :=
  ∀ n, P16856999796153939032.a n = A122467 (n + 1)

end A122467

/-! ## A122467.P171360343990386739

`∑[A007088(eq[2, A001222(n+1)]+1)]`
-/

namespace A122467.P171360343990386739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122467.P171360343990386739

namespace A122467

/-- `∑[A007088(eq[2, A001222(n+1)]+1)]` -/
def P171360343990386739.Spec : Prop :=
  ∀ n, P171360343990386739.a n = A122467 (n + 1)

end A122467

/-! ## A122467.P11369038651457913187

`∑[A007088(eq[2, A317545(n+1)]+1)]`
-/

namespace A122467.P11369038651457913187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317545 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122467.P11369038651457913187

namespace A122467

/-- `∑[A007088(eq[2, A317545(n+1)]+1)]` -/
def P11369038651457913187.Spec : Prop :=
  ∀ n, P11369038651457913187.a n = A122467 (n + 1)

end A122467

/-! ## A122467.P4748086475381034021

`∑[A007088(eq[2, A226378(n)])]`
-/

namespace A122467.P4748086475381034021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122467.P4748086475381034021

namespace A122467

/-- `∑[A007088(eq[2, A226378(n)])]` -/
def P4748086475381034021.Spec : Prop :=
  ∀ n, P4748086475381034021.a n = A122467 (n + 1)

end A122467

/-! ## A122467.P422389737514318654

`∑[A007088(eq[2, A034836(n+1)]+1)]`
-/

namespace A122467.P422389737514318654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122467.P422389737514318654

namespace A122467

/-- `∑[A007088(eq[2, A034836(n+1)]+1)]` -/
def P422389737514318654.Spec : Prop :=
  ∀ n, P422389737514318654.a n = A122467 (n + 1)

end A122467

/-! ## A122467.P6470313190560711110

`∑[A007088(A207790(4*n+3))]`
-/

namespace A122467.P6470313190560711110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A207790 (4 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122467.P6470313190560711110

namespace A122467

/-- `∑[A007088(A207790(4*n+3))]` -/
def P6470313190560711110.Spec : Prop :=
  ∀ n, P6470313190560711110.a n = A122467 (n + 1)

end A122467

/-! ## A122467.P12638873747121635810

`∑[A185544(A075818(n+1))]`
-/

namespace A122467.P12638873747121635810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A075818 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122467.P12638873747121635810

namespace A122467

/-- `∑[A185544(A075818(n+1))]` -/
def P12638873747121635810.Spec : Prop :=
  ∀ n, P12638873747121635810.a n = A122467 (n + 1)

end A122467

/-! ## A122467.P15745174432387013286

`∑[record[A122466(A022446(n))]]`
-/

namespace A122467.P15745174432387013286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122466 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122467.P15745174432387013286

namespace A122467

/-- `∑[record[A122466(A022446(n))]]` -/
def P15745174432387013286.Spec : Prop :=
  ∀ n, P15745174432387013286.a n = A122467 (n + 1)

end A122467

/-! ## A122467.P14291099007704646437

`∑[A007088(record[A088740(n+1)])]`
-/

namespace A122467.P14291099007704646437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088740 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122467.P14291099007704646437

namespace A122467

/-- `∑[A007088(record[A088740(n+1)])]` -/
def P14291099007704646437.Spec : Prop :=
  ∀ n, P14291099007704646437.a n = A122467 (n + 1)

end A122467

/-! ## A122467.P578315352595975895

`∑[record[A122466(A020986(n))]]`
-/

namespace A122467.P578315352595975895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122466 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122467.P578315352595975895

namespace A122467

/-- `∑[record[A122466(A020986(n))]]` -/
def P578315352595975895.Spec : Prop :=
  ∀ n, P578315352595975895.a n = A122467 (n + 1)

end A122467

/-!
# A122471: a(n) = 7*a(n-1)-n for n> 0, a(0)=1.

The programs for A122471, the canonical program `A122471.P11162068097845124348` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122471 has offset 0).

The definition of A122471 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-n` (program `A122471.P11162068097845124348`, by `A122471.P11162068097845124348.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122471.P11162068097845124348

`7*a(n-1)-n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A122471

/-- `7*a(n-1)-n` -/
def P11162068097845124348.Spec : Prop :=
  ∀ n, P11162068097845124348.a n = A122471 n

theorem P11162068097845124348.correct : P11162068097845124348.Spec := by
  intro n
  simp only [A122471]

end A122471

/-! ## A122471.P12767150612840364918

`∑[lcm(7, a(n-1))-1]` with `a(0)=1, a(1)=5`
-/

namespace A122471.P12767150612840364918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  (Int.lcm 7 (f1 (n - 1)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122471.P12767150612840364918

namespace A122471

/-- `∑[lcm(7, a(n-1))-1]` -/
def P12767150612840364918.Spec : Prop :=
  ∀ n, P12767150612840364918.a n = A122471 n

end A122471

/-! ## A122471.P12695039266071712396

`7^n-∑[∑[floor(7^(n-1))]]`
-/

namespace A122471.P12695039266071712396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122471.P12695039266071712396

namespace A122471

/-- `7^n-∑[∑[floor(7^(n-1))]]` -/
def P12695039266071712396.Spec : Prop :=
  ∀ n, P12695039266071712396.a n = A122471 n

end A122471

/-! ## A122471.P11921345133369568284

`∑[A055272(n)-A023000(n)]`
-/

namespace A122471.P11921345133369568284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055272 n - A023000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122471.P11921345133369568284

namespace A122471

/-- `∑[A055272(n)-A023000(n)]` -/
def P11921345133369568284.Spec : Prop :=
  ∀ n, P11921345133369568284.a n = A122471 n

end A122471

/-!
# A122478: Minimum number k>0 such that ((2n+1)^k - (2n-1)^k)/2 is prime.

The programs for A122478, there is no canonical definition to state claims against.
-/

/-! ## A122478.P9014338952718885279

`p?[A247093(∑[n+2])]`
-/

namespace A122478.P9014338952718885279
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247093 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122478.P9014338952718885279

/-! ## A122478.P10653085764885888877

`A247093((n+2)*Δ[n²])`
-/

namespace A122478.P10653085764885888877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247093 ((n + 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A122478.P10653085764885888877

/-! ## A122478.P16352447640902690486

`p?[A025581(n)*A247093(n+1)]`
-/

namespace A122478.P16352447640902690486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n * A247093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122478.P16352447640902690486

/-! ## A122478.P11726552099961042107

`A052410(A247093((2*n+1)*(n+2)))`
-/

namespace A122478.P11726552099961042107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A247093 ((2 * n + 1) * (n + 2))).toNat

end

end A122478.P11726552099961042107

/-! ## A122478.P16988008866280712482

`p?[(A004736(n+1)-1)*A247093(n+1)]`
-/

namespace A122478.P16988008866280712482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - 1) * A247093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122478.P16988008866280712482

/-!
# A122479: Triangle T(n,k), 0<=k<=n, defined by T(n,k) = 0 if kn, T(0,0) = 1, T(n,k) = T(n,k-1)+T(n-1,k-1)+T(n-1,k)+T(n-1,k+1).

The programs for A122479, there is no canonical definition to state claims against.
-/

/-! ## A122479.P916318007775958036

`A377270(n+1)+A309891(A022493(n))`
-/

namespace A122479.P916318007775958036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377270 (n + 1) + A309891 (A022493 n).toNat

end

end A122479.P916318007775958036

/-!
# A122482: Primes p such that 1 + 4p + 12p^2 is prime.

The programs for A122482, there is no canonical definition to state claims against.
-/

/-! ## A122482.P2749958094490588146

`p?[round((sqrt(A122430(n+1)/3)-1)/2)]`
-/

namespace A122482.P2749958094490588146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sqrt ((A122430 (n + 1) : ℚ) / 3 : ℝ) - 1) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122482.P2749958094490588146

/-! ## A122482.P16397012305476151739

`record[A020639(A086285(n+3)/2)]`
-/

namespace A122482.P16397012305476151739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A086285 (n + 3) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122482.P16397012305476151739

/-! ## A122482.P4253433262980751714

`p?[A014682(A086285(n+1))]`
-/

namespace A122482.P4253433262980751714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A086285 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122482.P4253433262980751714

/-! ## A122482.P14167027651858401560

`record[A006530(A086285(n+3))]`
-/

namespace A122482.P14167027651858401560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A086285 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122482.P14167027651858401560

/-! ## A122482.P10977854605431656461

`record[A014963(A086285(n+3)/2)]`
-/

namespace A122482.P10977854605431656461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A086285 (n + 3) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122482.P10977854605431656461

/-! ## A122482.P11223547630528251265

`p?[A004525(A086285(n+2))]`
-/

namespace A122482.P11223547630528251265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A086285 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122482.P11223547630528251265

/-!
# A122484: Numbers k not ending in zero such that the sum of digits of k is >= the sum of digits of k^4 (in base 10).

The programs for A122484, there is no canonical definition to state claims against.
-/

/-! ## A122484.P3121390600370430836

`A064210(A084592(n+1))`
-/

namespace A122484.P3121390600370430836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064210 (A084592 (n + 1)).toNat

end

end A122484.P3121390600370430836

/-!
# A122485: Values of A083097(k) such that A083097(k) = A083097(k+1) - 1.

The programs for A122485, there is no canonical definition to state claims against.
-/

/-! ## A122485.P10200444147449962982

`ceil(9*A074938(n)/2)`
-/

namespace A122485.P10200444147449962982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(9 * A074938 n : ℚ) / 2⌉

end

end A122485.P10200444147449962982

/-! ## A122485.P257827199909866906

`lt[n+1, A067770(2*n)]`
-/

namespace A122485.P257827199909866906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067770 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A122485.P257827199909866906

/-! ## A122485.P9020053580871407217

`eq[(n+1)/3, A264992(n)]`
-/

namespace A122485.P9020053580871407217
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264992 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A122485.P9020053580871407217

/-! ## A122485.P16675704156562251469

`ceil(A019468(3*n+1)/2)`
-/

namespace A122485.P16675704156562251469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A019468 (3 * n + 1) : ℚ) / 2⌉

end

end A122485.P16675704156562251469

/-! ## A122485.P1040611442257005653

`(A019468(3*(n+1))-5)/2`
-/

namespace A122485.P1040611442257005653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019468 (3 * (n + 1)) - 5 : ℚ) / 2

end

end A122485.P1040611442257005653

/-!
# A122486: a(n) = Sum_{k=0..n} |Stirling1(n,k)|*Bell(k)^2.

The programs for A122486, there is no canonical definition to state claims against.
-/

/-! ## A122486.P12786664460806041897

`A121210(n+2)+A004275(A006963(n+1))`
-/

namespace A122486.P12786664460806041897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121210 (n + 2) + A004275 (A006963 (n + 1)).toNat

end

end A122486.P12786664460806041897

/-! ## A122486.P8055396553537936872

`A054000(A008279(n))+A004273(A006963(n+1))`
-/

namespace A122486.P8055396553537936872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054000 (A008279 n).toNat + A004273 (A006963 (n + 1)).toNat

end

end A122486.P8055396553537936872

/-!
# A122487: 2 together with odd primes p that divide Fibonacci[(p+1)/2].

The programs for A122487, the canonical program `A122487.P16474642342128551526` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122487 has offset 1).

The definition of A122487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122487.P16474642342128551526

`p?[xor(1, a(n-2)+10)]` with `a(0)=2, a(1)=6`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A122487

/-- `p?[xor(1, a(n-2)+10)]` -/
def P16474642342128551526.Spec : Prop :=
  ∀ n, (P16474642342128551526.a n : ℤ) = A122487 (n + 1)

theorem P16474642342128551526.correct : P16474642342128551526.Spec := by
  intro n
  simp only [A122487, Nat.add_sub_cancel]

end A122487

/-! ## A122487.P4038637560739251569

`p?[10*n-a(n-2)]` with `a(0)=2, a(1)=13`
-/

namespace A122487.P4038637560739251569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 13] fun n f1 =>
  (10 * n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122487.P4038637560739251569

namespace A122487

/-- `p?[10*n-a(n-2)]` -/
def P4038637560739251569.Spec : Prop :=
  ∀ n, P4038637560739251569.a n = A122487 (n + 1)

end A122487

/-! ## A122487.P5547353127823556450

`p?[or(2*n, and(2, n+1)!)+3*n+1]`
-/

namespace A122487.P5547353127823556450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (Nat.factorial (Nat.land 2 (n + 1))) + (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A122487.P5547353127823556450

namespace A122487

/-- `p?[or(2*n, and(2, n+1)!)+3*n+1]` -/
def P5547353127823556450.Spec : Prop :=
  ∀ n, (P5547353127823556450.a n : ℤ) = A122487 (n + 1)

end A122487

/-! ## A122487.P11195029837260844162

`∩[A055025(n+1), A296923(n+1)]`
-/

namespace A122487.P11195029837260844162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122487.P11195029837260844162

namespace A122487

/-- `∩[A055025(n+1), A296923(n+1)]` -/
def P11195029837260844162.Spec : Prop :=
  ∀ n, (P11195029837260844162.a n : ℤ) = A122487 (n + 1)

end A122487

/-! ## A122487.P15242905752504216543

`∩[A002313(n+1), A003631(n+1)]`
-/

namespace A122487.P15242905752504216543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122487.P15242905752504216543

namespace A122487

/-- `∩[A002313(n+1), A003631(n+1)]` -/
def P15242905752504216543.Spec : Prop :=
  ∀ n, (P15242905752504216543.a n : ℤ) = A122487 (n + 1)

end A122487

/-! ## A122487.P7671299447959672402

`∩[A003631(n+1), A055025(n+1)]`
-/

namespace A122487.P7671299447959672402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122487.P7671299447959672402

namespace A122487

/-- `∩[A003631(n+1), A055025(n+1)]` -/
def P7671299447959672402.Spec : Prop :=
  ∀ n, (P7671299447959672402.a n : ℤ) = A122487 (n + 1)

end A122487

/-! ## A122487.P2839600260816185925

`∩[A042993(n+1), A296923(n+1)]`
-/

namespace A122487.P2839600260816185925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122487.P2839600260816185925

namespace A122487

/-- `∩[A042993(n+1), A296923(n+1)]` -/
def P2839600260816185925.Spec : Prop :=
  ∀ n, (P2839600260816185925.a n : ℤ) = A122487 (n + 1)

end A122487

/-! ## A122487.P11729820612541990776

`∩[A002313(n+1), A069104(n+1)]`
-/

namespace A122487.P11729820612541990776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122487.P11729820612541990776

namespace A122487

/-- `∩[A002313(n+1), A069104(n+1)]` -/
def P11729820612541990776.Spec : Prop :=
  ∀ n, (P11729820612541990776.a n : ℤ) = A122487 (n + 1)

end A122487

/-! ## A122487.P3550365856230573880

`∩[A055025(n+1), A069104(n+1)]`
-/

namespace A122487.P3550365856230573880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122487.P3550365856230573880

namespace A122487

/-- `∩[A055025(n+1), A069104(n+1)]` -/
def P3550365856230573880.Spec : Prop :=
  ∀ n, (P3550365856230573880.a n : ℤ) = A122487 (n + 1)

end A122487

/-! ## A122487.P15272260180767375933

`∩[A002313(n+1), A216277(n+1)]`
-/

namespace A122487.P15272260180767375933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122487.P15272260180767375933

namespace A122487

/-- `∩[A002313(n+1), A216277(n+1)]` -/
def P15272260180767375933.Spec : Prop :=
  ∀ n, (P15272260180767375933.a n : ℤ) = A122487 (n + 1)

end A122487

/-! ## A122487.P17440824644540074490

`∩[A003631(n+1), A281292(n+1)]`
-/

namespace A122487.P17440824644540074490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122487.P17440824644540074490

namespace A122487

/-- `∩[A003631(n+1), A281292(n+1)]` -/
def P17440824644540074490.Spec : Prop :=
  ∀ n, (P17440824644540074490.a n : ℤ) = A122487 (n + 1)

end A122487

/-! ## A122487.P15781123602783433253

`∩[A281292(n+1), A296923(n+1)]`
-/

namespace A122487.P15781123602783433253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122487.P15781123602783433253

namespace A122487

/-- `∩[A281292(n+1), A296923(n+1)]` -/
def P15781123602783433253.Spec : Prop :=
  ∀ n, (P15781123602783433253.a n : ℤ) = A122487 (n + 1)

end A122487

/-! ## A122487.P7363727079427906874

`∩[A003631(n+1), A224450(n+1)]`
-/

namespace A122487.P7363727079427906874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122487.P7363727079427906874

namespace A122487

/-- `∩[A003631(n+1), A224450(n+1)]` -/
def P7363727079427906874.Spec : Prop :=
  ∀ n, (P7363727079427906874.a n : ℤ) = A122487 (n + 1)

end A122487

/-! ## A122487.P12596263926066401465

`∩[A069104(n+1), A224450(n+1)]`
-/

namespace A122487.P12596263926066401465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122487.P12596263926066401465

namespace A122487

/-- `∩[A069104(n+1), A224450(n+1)]` -/
def P12596263926066401465.Spec : Prop :=
  ∀ n, (P12596263926066401465.a n : ℤ) = A122487 (n + 1)

end A122487

/-! ## A122487.P12471564863952530442

`∩[A224450(n+1), A296923(n+1)]`
-/

namespace A122487.P12471564863952530442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122487.P12471564863952530442

namespace A122487

/-- `∩[A224450(n+1), A296923(n+1)]` -/
def P12471564863952530442.Spec : Prop :=
  ∀ n, (P12471564863952530442.a n : ℤ) = A122487 (n + 1)

end A122487

/-! ## A122487.P12617383993626394906

`∩[A002313(n+1), A023162(n+1)]`
-/

namespace A122487.P12617383993626394906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122487.P12617383993626394906

namespace A122487

/-- `∩[A002313(n+1), A023162(n+1)]` -/
def P12617383993626394906.Spec : Prop :=
  ∀ n, (P12617383993626394906.a n : ℤ) = A122487 (n + 1)

end A122487

/-! ## A122487.P4787501367246592112

`∩[A023162(n+1), A055025(n+1)]`
-/

namespace A122487.P4787501367246592112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122487.P4787501367246592112

namespace A122487

/-- `∩[A023162(n+1), A055025(n+1)]` -/
def P4787501367246592112.Spec : Prop :=
  ∀ n, (P4787501367246592112.a n : ℤ) = A122487 (n + 1)

end A122487

/-! ## A122487.P14894188394989323331

`∩[A003631(n+1), A003654(n+1)]`
-/

namespace A122487.P14894188394989323331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122487.P14894188394989323331

namespace A122487

/-- `∩[A003631(n+1), A003654(n+1)]` -/
def P14894188394989323331.Spec : Prop :=
  ∀ n, (P14894188394989323331.a n : ℤ) = A122487 (n + 1)

end A122487

/-! ## A122487.P5412454527212200884

`∩[A003631(n+1), A003814(n+1)]`
-/

namespace A122487.P5412454527212200884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122487.P5412454527212200884

namespace A122487

/-- `∩[A003631(n+1), A003814(n+1)]` -/
def P5412454527212200884.Spec : Prop :=
  ∀ n, (P5412454527212200884.a n : ℤ) = A122487 (n + 1)

end A122487

/-! ## A122487.P861694471038284407

`∩[A003631(n+1), A031396(n+1)]`
-/

namespace A122487.P861694471038284407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122487.P861694471038284407

namespace A122487

/-- `∩[A003631(n+1), A031396(n+1)]` -/
def P861694471038284407.Spec : Prop :=
  ∀ n, (P861694471038284407.a n : ℤ) = A122487 (n + 1)

end A122487

/-!
# A122488: Numbers k such that 1 + 2k + 3k^2 is semiprime.

The programs for A122488, there is no canonical definition to state claims against.
-/

/-! ## A122488.P4714128649367144807

`floor(sqrt(A113528(n+1)/3))`
-/

namespace A122488.P4714128649367144807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A113528 (n + 1) : ℚ) / 3 : ℝ)⌋

end

end A122488.P4714128649367144807

/-! ## A122488.P11370128493325042608

`round(sqrt(A113528(n+1)/3-A020985(n)))`
-/

namespace A122488.P11370128493325042608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A113528 (n + 1) : ℚ) / 3 - (A020985 n : ℚ) : ℝ))

end

end A122488.P11370128493325042608

/-! ## A122488.P10333848892522032582

`round(sqrt(A113528(n+1)/3-A063691(n)))`
-/

namespace A122488.P10333848892522032582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A113528 (n + 1) : ℚ) / 3 - (A063691 n : ℚ) : ℝ))

end

end A122488.P10333848892522032582

/-! ## A122488.P8832934846624038284

`round(sqrt(A113528(n+1)/3-A151890(n)))`
-/

namespace A122488.P8832934846624038284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A113528 (n + 1) : ℚ) / 3 - (A151890 n : ℚ) : ℝ))

end

end A122488.P8832934846624038284

/-! ## A122488.P12616186797039463670

`round(sqrt(A113528(n+1)/3-A309603(n)+1))`
-/

namespace A122488.P12616186797039463670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A113528 (n + 1) : ℚ) / 3 - (A309603 n : ℚ) + 1 : ℝ))

end

end A122488.P12616186797039463670

/-! ## A122488.P7116182557008087081

`eq[2, ∑{e}[n*(3*n+2)+1, #]]`
-/

namespace A122488.P7116182557008087081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * n + 2) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122488.P7116182557008087081

/-! ## A122488.P13747506935839370630

`eq[2, A001222(n*(3*n+2)+1)]`
-/

namespace A122488.P13747506935839370630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n * (3 * n + 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A122488.P13747506935839370630

/-! ## A122488.P17679294837573416624

`eq[4, A001222(A056109(n))²]`
-/

namespace A122488.P17679294837573416624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A056109 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A122488.P17679294837573416624

/-! ## A122488.P16314465623490171657

`eq[4, A001222(A087483(3*n))²]`
-/

namespace A122488.P16314465623490171657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A087483 (3 * n)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A122488.P16314465623490171657

/-! ## A122488.P4903600744874293965

`eq[2, A001222(A056109(n+1))]+1`
-/

namespace A122488.P4903600744874293965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A056109 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A122488.P4903600744874293965

/-!
# A122489: Partial sums of A111939 (= number of primes < semiprime(n)).

The programs for A122489, the canonical program `A122489.P10033045030965678621` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122489 has offset 1).

The definition of A122489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122489.P10033045030965678621

`∑[A111939(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A122489

/-- `∑[A111939(n+1)]` -/
def P10033045030965678621.Spec : Prop :=
  ∀ n, P10033045030965678621.a n = A122489 (n + 1)

theorem P10033045030965678621.correct : P10033045030965678621.Spec := by
  intro n
  simp only [A122489, Nat.add_sub_cancel]

end A122489

/-! ## A122489.P9046561583135489054

`∑[∑[A176451(n+1)]]`
-/

namespace A122489.P9046561583135489054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176451 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122489.P9046561583135489054

namespace A122489

/-- `∑[∑[A176451(n+1)]]` -/
def P9046561583135489054.Spec : Prop :=
  ∀ n, P9046561583135489054.a n = A122489 (n + 1)

end A122489

/-! ## A122489.P11932894294095673407

`∑[A088700(n)+a(n-1)]` with `a(0)=2`
-/

namespace A122489.P11932894294095673407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A088700 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122489.P11932894294095673407

namespace A122489

/-- `∑[A088700(n)+a(n-1)]` -/
def P11932894294095673407.Spec : Prop :=
  ∀ n, P11932894294095673407.a n = A122489 (n + 1)

end A122489

/-! ## A122489.P11625017183687137837

`∑[A000720(A001358(n+1))]`
-/

namespace A122489.P11625017183687137837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122489.P11625017183687137837

namespace A122489

/-- `∑[A000720(A001358(n+1))]` -/
def P11625017183687137837.Spec : Prop :=
  ∀ n, P11625017183687137837.a n = A122489 (n + 1)

end A122489

/-! ## A122489.P11300654085995472756

`∑[A000720(A088707(n+1)-1)]`
-/

namespace A122489.P11300654085995472756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A088707 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122489.P11300654085995472756

namespace A122489

/-- `∑[A000720(A088707(n+1)-1)]` -/
def P11300654085995472756.Spec : Prop :=
  ∀ n, P11300654085995472756.a n = A122489 (n + 1)

end A122489

/-! ## A122489.P5149072502364984119

`∑[A000720(eq[2, A001222(n+1)])]`
-/

namespace A122489.P5149072502364984119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122489.P5149072502364984119

namespace A122489

/-- `∑[A000720(eq[2, A001222(n+1)])]` -/
def P5149072502364984119.Spec : Prop :=
  ∀ n, P5149072502364984119.a n = A122489 (n + 1)

end A122489

/-! ## A122489.P16542407976352271755

`∑[eq[2, A001222(A037143(n+1))]-(n+1)]`
-/

namespace A122489.P16542407976352271755
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A037143 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122489.P16542407976352271755

namespace A122489

/-- `∑[eq[2, A001222(A037143(n+1))]-(n+1)]` -/
def P16542407976352271755.Spec : Prop :=
  ∀ n, P16542407976352271755.a n = A122489 (n + 1)

end A122489

/-! ## A122489.P7482052369751493278

`∑[A033270(eq[2, A001222(n+1)])+1]`
-/

namespace A122489.P7482052369751493278
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122489.P7482052369751493278

namespace A122489

/-- `∑[A033270(eq[2, A001222(n+1)])+1]` -/
def P7482052369751493278.Spec : Prop :=
  ∀ n, P7482052369751493278.a n = A122489 (n + 1)

end A122489

/-! ## A122489.P6652664173135748425

`∑[A036234(eq[2, A001222(n+1)])-1]`
-/

namespace A122489.P6652664173135748425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122489.P6652664173135748425

namespace A122489

/-- `∑[A036234(eq[2, A001222(n+1)])-1]` -/
def P6652664173135748425.Spec : Prop :=
  ∀ n, P6652664173135748425.a n = A122489 (n + 1)

end A122489

/-! ## A122489.P1318575337588656553

`∑[A000720(eq[2, A105700(n)])]`
-/

namespace A122489.P1318575337588656553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122489.P1318575337588656553

namespace A122489

/-- `∑[A000720(eq[2, A105700(n)])]` -/
def P1318575337588656553.Spec : Prop :=
  ∀ n, P1318575337588656553.a n = A122489 (n + 1)

end A122489

/-! ## A122489.P13665242714881973878

`∑[A230980(eq[2, A001222(n+1)])]`
-/

namespace A122489.P13665242714881973878
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122489.P13665242714881973878

namespace A122489

/-- `∑[A230980(eq[2, A001222(n+1)])]` -/
def P13665242714881973878.Spec : Prop :=
  ∀ n, P13665242714881973878.a n = A122489 (n + 1)

end A122489

/-! ## A122489.P16455177301349382687

`∑[A063084(eq[2, A001222(n+1)]+1)]`
-/

namespace A122489.P16455177301349382687
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063084 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122489.P16455177301349382687

namespace A122489

/-- `∑[A063084(eq[2, A001222(n+1)]+1)]` -/
def P16455177301349382687.Spec : Prop :=
  ∀ n, P16455177301349382687.a n = A122489 (n + 1)

end A122489

/-!
# A122490: Least number k>1 such that k+10^n is a symmetric prime with symmetric digits (i.e. such that k+10^n is in A007500).

The programs for A122490, there is no canonical definition to state claims against.
-/

/-! ## A122490.P10863628621755891781

`A127746(n+2)%A020714(n)`
-/

namespace A122490.P10863628621755891781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127746 (n + 2)) (A020714 n)

end

end A122490.P10863628621755891781

/-! ## A122490.P14331638990571166433

`A127746(n+2)+A168159(n+2)-A114018(n+2)`
-/

namespace A122490.P14331638990571166433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127746 (n + 2) + (A168159 (n + 2) - A114018 (n + 2))

end

end A122490.P14331638990571166433

/-!
# A122491: a(n) = n * Fibonacci(n) - Sum_{i=0..n} Fibonacci(i).

The programs for A122491, the canonical program `A122491.P12480394804218549413` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122491 has offset 0).

The definition of A122491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122491.P12480394804218549413

`A099920(n)-A001610(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A122491

/-- `A099920(n)-A001610(n)` -/
def P12480394804218549413.Spec : Prop :=
  ∀ n, P12480394804218549413.a n = A122491 n

theorem P12480394804218549413.correct : P12480394804218549413.Spec := by
  intro n
  simp only [A122491]

end A122491

/-! ## A122491.P12178169945641336497

`A190062(n)-A000045(n)`
-/

namespace A122491.P12178169945641336497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190062 n - A000045 n

end

end A122491.P12178169945641336497

namespace A122491

/-- `A190062(n)-A000045(n)` -/
def P12178169945641336497.Spec : Prop :=
  ∀ n, P12178169945641336497.a n = A122491 n

end A122491

/-! ## A122491.P5720641625147002687

`A324129(n)-A052952(n)`
-/

namespace A122491.P5720641625147002687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324129 n - A052952 n

end

end A122491.P5720641625147002687

namespace A122491

/-- `A324129(n)-A052952(n)` -/
def P5720641625147002687.Spec : Prop :=
  ∀ n, P5720641625147002687.a n = A122491 n

end A122491

/-! ## A122491.P229453963184738447

`A045925(n)-∑[A000045(n)]`
-/

namespace A122491.P229453963184738447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122491.P229453963184738447

namespace A122491

/-- `A045925(n)-∑[A000045(n)]` -/
def P229453963184738447.Spec : Prop :=
  ∀ n, P229453963184738447.a n = A122491 n

end A122491

/-! ## A122491.P17442945487255694953

`A324129(n)-A074331(n+1)`
-/

namespace A122491.P17442945487255694953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324129 n - A074331 (n + 1)

end

end A122491.P17442945487255694953

namespace A122491

/-- `A324129(n)-A074331(n+1)` -/
def P17442945487255694953.Spec : Prop :=
  ∀ n, P17442945487255694953.a n = A122491 n

end A122491

/-! ## A122491.P16574480346144367761

`A045925(n)-A000071(n+2)`
-/

namespace A122491.P16574480346144367761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n - A000071 (n + 2)

end

end A122491.P16574480346144367761

namespace A122491

/-- `A045925(n)-A000071(n+2)` -/
def P16574480346144367761.Spec : Prop :=
  ∀ n, P16574480346144367761.a n = A122491 n

end A122491

/-! ## A122491.P13051863877765439563

`A045925(n)+∑[1-A001611(n)]`
-/

namespace A122491.P13051863877765439563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122491.P13051863877765439563

namespace A122491

/-- `A045925(n)+∑[1-A001611(n)]` -/
def P13051863877765439563.Spec : Prop :=
  ∀ n, P13051863877765439563.a n = A122491 n

end A122491

/-! ## A122491.P5902023770852355219

`A045925(n)-∑[A212804(n+1)]`
-/

namespace A122491.P5902023770852355219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122491.P5902023770852355219

namespace A122491

/-- `A045925(n)-∑[A212804(n+1)]` -/
def P5902023770852355219.Spec : Prop :=
  ∀ n, P5902023770852355219.a n = A122491 n

end A122491

/-! ## A122491.P16630697324032397727

`A045925(n)+1-Δ[A001911(n)]`
-/

namespace A122491.P16630697324032397727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n + (1 - (f1 (n + 1) - f1 n))

end

end A122491.P16630697324032397727

namespace A122491

/-- `A045925(n)+1-Δ[A001911(n)]` -/
def P16630697324032397727.Spec : Prop :=
  ∀ n, P16630697324032397727.a n = A122491 n

end A122491

/-! ## A122491.P12650147073708441233

`A045925(n)+1-Δ[A018910(n)]`
-/

namespace A122491.P12650147073708441233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n + (1 - (f1 (n + 1) - f1 n))

end

end A122491.P12650147073708441233

namespace A122491

/-- `A045925(n)+1-Δ[A018910(n)]` -/
def P12650147073708441233.Spec : Prop :=
  ∀ n, P12650147073708441233.a n = A122491 n

end A122491

/-! ## A122491.P16682194148348192078

`A045925(n)+1-Δ[A020695(n)]`
-/

namespace A122491.P16682194148348192078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n + (1 - (f1 (n + 1) - f1 n))

end

end A122491.P16682194148348192078

namespace A122491

/-- `A045925(n)+1-Δ[A020695(n)]` -/
def P16682194148348192078.Spec : Prop :=
  ∀ n, P16682194148348192078.a n = A122491 n

end A122491

/-! ## A122491.P3472669595746870801

`A094588(n+1)-A001595(n+1)`
-/

namespace A122491.P3472669595746870801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 (n + 1) - A001595 (n + 1)

end

end A122491.P3472669595746870801

namespace A122491

/-- `A094588(n+1)-A001595(n+1)` -/
def P3472669595746870801.Spec : Prop :=
  ∀ n, P3472669595746870801.a n = A122491 n

end A122491

/-! ## A122491.P17815786567988991171

`A099920(n)+1-A000204(n+1)`
-/

namespace A122491.P17815786567988991171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 n + (1 - A000204 (n + 1))

end

end A122491.P17815786567988991171

namespace A122491

/-- `A099920(n)+1-A000204(n+1)` -/
def P17815786567988991171.Spec : Prop :=
  ∀ n, P17815786567988991171.a n = A122491 n

end A122491

/-! ## A122491.P4957498188409123739

`n*A000045(n)+1-A000045(n+2)`
-/

namespace A122491.P4957498188409123739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000045 n + (1 - A000045 (n + 2))

end

end A122491.P4957498188409123739

namespace A122491

/-- `n*A000045(n)+1-A000045(n+2)` -/
def P4957498188409123739.Spec : Prop :=
  ∀ n, P4957498188409123739.a n = A122491 n

end A122491

/-! ## A122491.P1714675446680862148

`A006478(n)+A010049(n)-A000045(n)`
-/

namespace A122491.P1714675446680862148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 n + (A010049 n - A000045 n)

end

end A122491.P1714675446680862148

namespace A122491

/-- `A006478(n)+A010049(n)-A000045(n)` -/
def P1714675446680862148.Spec : Prop :=
  ∀ n, P1714675446680862148.a n = A122491 n

end A122491

/-! ## A122491.P3076064680062081426

`A000032(n)+A099920(n)-∑[A000032(n)]`
-/

namespace A122491.P3076064680062081426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A099920 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122491.P3076064680062081426

namespace A122491

/-- `A000032(n)+A099920(n)-∑[A000032(n)]` -/
def P3076064680062081426.Spec : Prop :=
  ∀ n, P3076064680062081426.a n = A122491 n

end A122491

/-! ## A122491.P9276178180851077539

`A099920(n)-(A000045(n)+∑[A000045(n)])`
-/

namespace A122491.P9276178180851077539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 n - (A000045 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122491.P9276178180851077539

namespace A122491

/-- `A099920(n)-(A000045(n)+∑[A000045(n)])` -/
def P9276178180851077539.Spec : Prop :=
  ∀ n, P9276178180851077539.a n = A122491 n

end A122491

/-! ## A122491.P639242938836194462

`A007502(n+1)-(A001595(n)+A000045(n))`
-/

namespace A122491.P639242938836194462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007502 (n + 1) - (A001595 n + A000045 n)

end

end A122491.P639242938836194462

namespace A122491

/-- `A007502(n+1)-(A001595(n)+A000045(n))` -/
def P639242938836194462.Spec : Prop :=
  ∀ n, P639242938836194462.a n = A122491 n

end A122491

/-! ## A122491.P5293703736742730737

`A045925(n)-(A065220(n+1)+A002062(n))`
-/

namespace A122491.P5293703736742730737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n - (A065220 (n + 1) + A002062 n)

end

end A122491.P5293703736742730737

namespace A122491

/-- `A045925(n)-(A065220(n+1)+A002062(n))` -/
def P5293703736742730737.Spec : Prop :=
  ∀ n, P5293703736742730737.a n = A122491 n

end A122491

/-! ## A122491.P1894326963266479378

`A099920(n)-(A000071(n+2)+A000045(n))`
-/

namespace A122491.P1894326963266479378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 n - (A000071 (n + 2) + A000045 n)

end

end A122491.P1894326963266479378

namespace A122491

/-- `A099920(n)-(A000071(n+2)+A000045(n))` -/
def P1894326963266479378.Spec : Prop :=
  ∀ n, P1894326963266479378.a n = A122491 n

end A122491

/-!
# A122492: Semiprimes k such that 1 + 2k + 3k^2 is also semiprime.

The programs for A122492, there is no canonical definition to state claims against.
-/

/-! ## A122492.P7269666791073902418

`filter[A122488(n+1), A064911(#)]`
-/

namespace A122492.P7269666791073902418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A122492.P7269666791073902418

/-! ## A122492.P3616856207265888209

`∩[A001358(n+1), A122488(n+1)]`
-/

namespace A122492.P3616856207265888209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122492.P3616856207265888209

/-! ## A122492.P5056543341838934714

`∩[eq[1, A064911(n+1)]+1, A122488(n+1)]`
-/

namespace A122492.P5056543341838934714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A122492.P5056543341838934714

/-! ## A122492.P11948586244413012573

`∩[A000040(n+1)-A065870(n+1), A122488(n+1)]`
-/

namespace A122492.P11948586244413012573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A065870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122492.P11948586244413012573

/-!
# A122493: Union of Fibonacci and triangular numbers.

The programs for A122493, the canonical program `A122493.P2767452462493321461` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122493 has offset 0).

The definition of A122493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122493.P2767452462493321461

`eq[A127093(n*A010056(n)+1), A127093(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A122493

/-- `eq[A127093(n*A010056(n)+1), A127093(n+1)]` -/
def P2767452462493321461.Spec : Prop :=
  ∀ n, (P2767452462493321461.a n : ℤ) = A122493 n

theorem P2767452462493321461.correct : P2767452462493321461.Spec := by
  intro n
  simp only [A122493]

end A122493

/-! ## A122493.P8032961025743630908

`eq[A010056(n*A010054(n)), A010056(n)]`
-/

namespace A122493.P8032961025743630908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 ((n : ℤ) * A010054 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122493.P8032961025743630908

namespace A122493

/-- `eq[A010056(n*A010054(n)), A010056(n)]` -/
def P8032961025743630908.Spec : Prop :=
  ∀ n, (P8032961025743630908.a n : ℤ) = A122493 n

end A122493

/-! ## A122493.P17810210304361872423

`eq[A007895(n)*A061035(n+1), A061035(n+1)]`
-/

namespace A122493.P17810210304361872423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n * A061035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122493.P17810210304361872423

namespace A122493

/-- `eq[A007895(n)*A061035(n+1), A061035(n+1)]` -/
def P17810210304361872423.Spec : Prop :=
  ∀ n, (P17810210304361872423.a n : ℤ) = A122493 n

end A122493

/-! ## A122493.P4238577324869350924

`eq[A327622(n*A010056(n)), A327622(n)]`
-/

namespace A122493.P4238577324869350924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327622 ((n : ℤ) * A010056 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122493.P4238577324869350924

namespace A122493

/-- `eq[A327622(n*A010056(n)), A327622(n)]` -/
def P4238577324869350924.Spec : Prop :=
  ∀ n, (P4238577324869350924.a n : ℤ) = A122493 n

end A122493

/-! ## A122493.P2853924682090596475

`eq[A007895(n)^A002260(n+1), A007895(n)]`
-/

namespace A122493.P2853924682090596475
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007895 n : ℚ) ^ (A002260 (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A122493.P2853924682090596475

namespace A122493

/-- `eq[A007895(n)^A002260(n+1), A007895(n)]` -/
def P2853924682090596475.Spec : Prop :=
  ∀ n, (P2853924682090596475.a n : ℤ) = A122493 n

end A122493

/-! ## A122493.P3350006946815765594

`eq[1, A007895(n)^A007895(A061035(n+1))]`
-/

namespace A122493.P3350006946815765594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007895 n : ℚ) ^ (A007895 (A061035 (n + 1)).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A122493.P3350006946815765594

namespace A122493

/-- `eq[1, A007895(n)^A007895(A061035(n+1))]` -/
def P3350006946815765594.Spec : Prop :=
  ∀ n, (P3350006946815765594.a n : ℤ) = A122493 n

end A122493

/-!
# A122497: Let f(S) denote the interchange of 1's and 2's in S. Let S_0 = 1, S_{N+1} = f(S_N).S_N, where the dot indicates concatenation. Sequence gives S_0.S_1.S_2.S_3....

The programs for A122497, the canonical program `A122497.P1099217958447741762` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122497 has offset 1).

The definition of A122497 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A122497.P1099217958447741762

`A059448(n+1)+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A122497

/-- `A059448(n+1)+1` -/
def P1099217958447741762.Spec : Prop :=
  ∀ n, P1099217958447741762.a n = A122497 (n + 1)

theorem P1099217958447741762.correct : P1099217958447741762.Spec := by
  intro n
  simp only [A122497, Nat.add_sub_cancel]

end A122497

/-! ## A122497.P7950563534054900199

`a(∑[n%4-1])` with `a(0)=1, a(1)=2`
-/

namespace A122497.P7950563534054900199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 4 : ℕ) : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A122497.P7950563534054900199

namespace A122497

/-- `a(∑[n%4-1])` -/
def P7950563534054900199.Spec : Prop :=
  ∀ n, (P7950563534054900199.a n : ℤ) = A122497 (n + 1)

end A122497

/-! ## A122497.P6602661961128952193

`2/a(lcm(2, 1-n)/2)` with `a(0)=1`
-/

namespace A122497.P6602661961128952193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 / a (SequenceMachineLib.roundAway ((Int.lcm 2 (1 - (n : ℤ)) : ℚ) / 2)).toNat

end

end A122497.P6602661961128952193

namespace A122497

/-- `2/a(lcm(2, 1-n)/2)` -/
def P6602661961128952193.Spec : Prop :=
  ∀ n, P6602661961128952193.a n = (A122497 (n + 1) : ℚ)

end A122497

/-! ## A122497.P5959765485167640878

`2/a(gcd(n-1, C(n, 2)))` with `a(0)=1`
-/

namespace A122497.P5959765485167640878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 / a (Int.gcd ((n : ℤ) - 1) (Nat.choose n 2 : ℤ))

end

end A122497.P5959765485167640878

namespace A122497

/-- `2/a(gcd(n-1, C(n, 2)))` -/
def P5959765485167640878.Spec : Prop :=
  ∀ n, P5959765485167640878.a n = (A122497 (n + 1) : ℚ)

end A122497

/-! ## A122497.P13904041696810808156

`gcd(2, a(floor((n-1)/2))+n)` with `a(0)=1`
-/

namespace A122497.P13904041696810808156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd 2 (a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + n)

end

end A122497.P13904041696810808156

namespace A122497

/-- `gcd(2, a(floor((n-1)/2))+n)` -/
def P13904041696810808156.Spec : Prop :=
  ∀ n, (P13904041696810808156.a n : ℤ) = A122497 (n + 1)

end A122497

/-! ## A122497.P1552883126093533362

`gcd(2, ∑[A091090(n)])`
-/

namespace A122497.P1552883126093533362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122497.P1552883126093533362

namespace A122497

/-- `gcd(2, ∑[A091090(n)])` -/
def P1552883126093533362.Spec : Prop :=
  ∀ n, (P1552883126093533362.a n : ℤ) = A122497 (n + 1)

end A122497

/-! ## A122497.P7630551444152953261

`2-A298952(n+1)`
-/

namespace A122497.P7630551444152953261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A298952 (n + 1)

end

end A122497.P7630551444152953261

namespace A122497

/-- `2-A298952(n+1)` -/
def P7630551444152953261.Spec : Prop :=
  ∀ n, P7630551444152953261.a n = A122497 (n + 1)

end A122497

/-! ## A122497.P391487758132019213

`A261393(n+1)%3`
-/

namespace A122497.P391487758132019213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261393 (n + 1)) 3

end

end A122497.P391487758132019213

namespace A122497

/-- `A261393(n+1)%3` -/
def P391487758132019213.Spec : Prop :=
  ∀ n, P391487758132019213.a n = A122497 (n + 1)

end A122497

/-! ## A122497.P9838385310793695516

`gcd(6, A132140(n+1))`
-/

namespace A122497.P9838385310793695516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A132140 (n + 1))

end

end A122497.P9838385310793695516

namespace A122497

/-- `gcd(6, A132140(n+1))` -/
def P9838385310793695516.Spec : Prop :=
  ∀ n, (P9838385310793695516.a n : ℤ) = A122497 (n + 1)

end A122497

/-! ## A122497.P10482549214790948216

`a(A065261(n)-1)` with `a(0)=1, a(1)=2`
-/

namespace A122497.P10482549214790948216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A065261 n - 1).toNat

end

end A122497.P10482549214790948216

namespace A122497

/-- `a(A065261(n)-1)` -/
def P10482549214790948216.Spec : Prop :=
  ∀ n, (P10482549214790948216.a n : ℤ) = A122497 (n + 1)

end A122497

/-! ## A122497.P8229643001606939294

`char[A059009(n)-1]+1`
-/

namespace A122497.P8229643001606939294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A122497.P8229643001606939294

namespace A122497

/-- `char[A059009(n)-1]+1` -/
def P8229643001606939294.Spec : Prop :=
  ∀ n, (P8229643001606939294.a n : ℤ) = A122497 (n + 1)

end A122497

/-! ## A122497.P1364596796202950648

`2-char[A059010(n)-1]`
-/

namespace A122497.P1364596796202950648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122497.P1364596796202950648

namespace A122497

/-- `2-char[A059010(n)-1]` -/
def P1364596796202950648.Spec : Prop :=
  ∀ n, P1364596796202950648.a n = A122497 (n + 1)

end A122497

/-! ## A122497.P441751555333500529

`A023416(n+1)%2+1`
-/

namespace A122497.P441751555333500529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023416 (n + 1)) 2 + 1

end

end A122497.P441751555333500529

namespace A122497

/-- `A023416(n+1)%2+1` -/
def P441751555333500529.Spec : Prop :=
  ∀ n, P441751555333500529.a n = A122497 (n + 1)

end A122497

/-! ## A122497.P10331290955342120442

`and(1, A014701(n+1))+1`
-/

namespace A122497.P10331290955342120442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A014701 (n + 1)) + 1

end

end A122497.P10331290955342120442

namespace A122497

/-- `and(1, A014701(n+1))+1` -/
def P10331290955342120442.Spec : Prop :=
  ∀ n, P10331290955342120442.a n = A122497 (n + 1)

end A122497

/-! ## A122497.P16869147096946232913

`and(1, A059009(n+1))+1`
-/

namespace A122497.P16869147096946232913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A059009 (n + 1)) + 1

end

end A122497.P16869147096946232913

namespace A122497

/-- `and(1, A059009(n+1))+1` -/
def P16869147096946232913.Spec : Prop :=
  ∀ n, P16869147096946232913.a n = A122497 (n + 1)

end A122497

/-! ## A122497.P7788927540828623636

`and(1, A080791(n+1))+1`
-/

namespace A122497.P7788927540828623636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A080791 (n + 1)) + 1

end

end A122497.P7788927540828623636

namespace A122497

/-- `and(1, A080791(n+1))+1` -/
def P7788927540828623636.Spec : Prop :=
  ∀ n, P7788927540828623636.a n = A122497 (n + 1)

end A122497

/-! ## A122497.P17046243225491373297

`and(1, A083905(n+1))+1`
-/

namespace A122497.P17046243225491373297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A083905 (n + 1)) + 1

end

end A122497.P17046243225491373297

namespace A122497

/-- `and(1, A083905(n+1))+1` -/
def P17046243225491373297.Spec : Prop :=
  ∀ n, P17046243225491373297.a n = A122497 (n + 1)

end A122497

/-! ## A122497.P7542661627781452018

`and(1, A085144(n+1))+1`
-/

namespace A122497.P7542661627781452018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A085144 (n + 1)) + 1

end

end A122497.P7542661627781452018

namespace A122497

/-- `and(1, A085144(n+1))+1` -/
def P7542661627781452018.Spec : Prop :=
  ∀ n, P7542661627781452018.a n = A122497 (n + 1)

end A122497

/-! ## A122497.P13493869499415186179

`2-and(1, A335393(n+1))`
-/

namespace A122497.P13493869499415186179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.land 1 (A335393 (n + 1))

end

end A122497.P13493869499415186179

namespace A122497

/-- `2-and(1, A335393(n+1))` -/
def P13493869499415186179.Spec : Prop :=
  ∀ n, P13493869499415186179.a n = A122497 (n + 1)

end A122497

/-!
# A122498: Padovan numbers that are semiprimes.

The programs for A122498, there is no canonical definition to state claims against.
-/

/-! ## A122498.P12334332375363837547

`A000931(eq[2, ∑{e}[A000931(n), #]])`
-/

namespace A122498.P12334332375363837547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A122498.P12334332375363837547

/-! ## A122498.P5966038034763922800

`A228361(eq[2, ∑{e}[A228361(n), #]])`
-/

namespace A122498.P5966038034763922800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A122498.P5966038034763922800

/-! ## A122498.P7353030192319906797

`filter[A134816(n+1), A064911(#)]`
-/

namespace A122498.P7353030192319906797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A122498.P7353030192319906797

/-! ## A122498.P14190911109537960993

`filter[A164001(n+1), A064911(#)]`
-/

namespace A122498.P14190911109537960993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A122498.P14190911109537960993

/-! ## A122498.P8321373408024246186

`filter[A182097(n+2), A064911(#)]`
-/

namespace A122498.P8321373408024246186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A122498.P8321373408024246186

/-!
# A122499: Semiprimes in A006053.

The programs for A122499, there is no canonical definition to state claims against.
-/

/-! ## A122499.P8690694279222242962

`A006053(eq[2, ∑{e}[A006053(n), #]])`
-/

namespace A122499.P8690694279222242962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006053 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006053 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A122499.P8690694279222242962

/-! ## A122499.P1577987315533125336

`filter[A006053(n+2), A064911(#)]`
-/

namespace A122499.P1577987315533125336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006053 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A122499.P1577987315533125336

