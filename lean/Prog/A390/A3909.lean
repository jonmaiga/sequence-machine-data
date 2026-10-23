import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C001
import Seq.B007.C002
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
# A390903: a(n) is the permanent of the n X n matrix M(n) whose generic entry M(i, j, n) is 2*n - (i + j) with 1 <= i,j <= n.

The programs for A390903, there is no canonical definition to state claims against.
-/

/-! ## A390903.P12803978246667401396

`A054238(A367772(n)^A136400(n))`
-/

namespace A390903.P12803978246667401396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054238 (SequenceMachineLib.roundAway ((A367772 n : ℚ) ^ (A136400 n : ℤ))).toNat

end

end A390903.P12803978246667401396

/-!
# A390904: a(n) is the number of 3 X 3 matrices with elements 1..n where at least one row is strictly increasing.

The programs for A390904, the canonical program `A390904.P6495065465937336164` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390904 has offset 0).

The definition of A390904 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390904.P6495065465937336164

`n^9-(n^3-C(n, 3))^3`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A390904

/-- `n^9-(n^3-C(n, 3))^3` -/
def P6495065465937336164.Spec : Prop :=
  ∀ n, P6495065465937336164.a n = A390904 n

theorem P6495065465937336164.correct : P6495065465937336164.Spec := by
  intro n
  simp only [A390904]

end A390904

/-! ## A390904.P3562649124874760029

`n^9-n^3*(1+n)^3*(5*n-2)^3/216`
-/

namespace A390904.P3562649124874760029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 9 : ℚ) - ((n ^ 3 * (1 + n) ^ 3 : ℤ) * ((5 * n : ℤ) - 2) ^ 3 : ℚ) / 216

end

end A390904.P3562649124874760029

namespace A390904

/-- `n^9-n^3*(1+n)^3*(5*n-2)^3/216` -/
def P3562649124874760029.Spec : Prop :=
  ∀ n, P3562649124874760029.a n = (A390904 n : ℚ)

end A390904

/-!
# A390905: Powers k^m, m > 2, of numbers k that are neither prime powers nor powerful.

The programs for A390905, there is no canonical definition to state claims against.
-/

/-! ## A390905.P9613836777055357475

`∩[A072413(n+1), A076467(n+1)]`
-/

namespace A390905.P9613836777055357475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390905.P9613836777055357475

/-! ## A390905.P12215043886269363083

`∩[A076467(n+1), A286708(n+1)]`
-/

namespace A390905.P12215043886269363083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390905.P12215043886269363083

/-! ## A390905.P13973572419056161734

`∩[A036966(n+1), A390823(n+1)]`
-/

namespace A390905.P13973572419056161734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390905.P13973572419056161734

/-! ## A390905.P3677641168485540702

`∩[A076467(n+1), A370266(n+1)]`
-/

namespace A390905.P3677641168485540702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390905.P3677641168485540702

/-! ## A390905.P15278836303471173408

`∩[A076467(n+1), A372404(n+1)]`
-/

namespace A390905.P15278836303471173408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390905.P15278836303471173408

/-!
# A390907: Number of sets of noncrossing paths whose nodes are a subset of n nodes arranged in a circle with one node paths allowed.

The programs for A390907, there is no canonical definition to state claims against.
-/

/-! ## A390907.P14191244550195313695

`A350355(A000079(n))+A000699(n)`
-/

namespace A390907.P14191244550195313695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350355 (A000079 n).toNat + A000699 n

end

end A390907.P14191244550195313695

/-!
# A390909: Triangle read by rows: T(n,k) is the number of noncrossing path sets on n nodes with k paths and isolated vertices allowed, 0 <= k <= n.

The programs for A390909, there is no canonical definition to state claims against.
-/

/-! ## A390909.P12156819744667293719

`A122342(A390894(n))`
-/

namespace A390909.P12156819744667293719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122342 (A390894 n).toNat

end

end A390909.P12156819744667293719

/-!
# A390910: Number of noncrossing path sets on n nodes with isolated vertices allowed.

The programs for A390910, there is no canonical definition to state claims against.
-/

/-! ## A390910.P244631046238174558

`A020909(A049163(n))`
-/

namespace A390910.P244631046238174558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020909 (A049163 n).toNat

end

end A390910.P244631046238174558

/-! ## A390910.P12647223477208986254

`A060384(A382187(n))`
-/

namespace A390910.P12647223477208986254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A382187 n).toNat

end

end A390910.P12647223477208986254

/-!
# A390913: Largest positive integer k such that exactly 1/n of the integers from 1 to k are divisors of k, or 0 if no solution exists.

The programs for A390913, there is no canonical definition to state claims against.
-/

/-! ## A390913.P18028958007690417439

`A368523(A390862(n+1))`
-/

namespace A390913.P18028958007690417439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368523 (A390862 (n + 1)).toNat

end

end A390913.P18028958007690417439

/-!
# A390914: a(n) is the maximum number of divisors (A000005) among all unique, nonzero numbers formed by permuting subsets of the digits of n.

The programs for A390914, there is no canonical definition to state claims against.
-/

/-! ## A390914.P11209323366894319857

`∑{d}[n+1, ceil(1/#)]*A061704(A000032(n))`
-/

namespace A390914.P11209323366894319857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉) * A061704 (A000032 n).toNat

end

end A390914.P11209323366894319857

/-! ## A390914.P6348543556665163861

`A338868(A216621(n+1))+∏{e}[n+1, #+1]`
-/

namespace A390914.P6348543556665163861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338868 (A216621 (n + 1)).toNat + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A390914.P6348543556665163861

/-! ## A390914.P17947735171490696084

`A000122(A298754(n+5))+∏{e}[n+1, #+1]`
-/

namespace A390914.P17947735171490696084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A298754 (n + 5)).toNat + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A390914.P17947735171490696084

/-! ## A390914.P4957763388872625646

`(val(n+1, 2)+1)*∑{d}[n+1, #%2]*A263343(A111528(n))`
-/

namespace A390914.P4957763388872625646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.valuation (n + 1) 2 + 1) * (∑ d ∈ Nat.divisors (f1 n), d % 2) : ℕ) : ℤ) * A263343 (A111528 n).toNat

end

end A390914.P4957763388872625646

/-! ## A390914.P17821438137047248139

`Δ[A006218(n)]*A115570(A294105(n))`
-/

namespace A390914.P17821438137047248139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A115570 (A294105 n).toNat

end

end A390914.P17821438137047248139

/-!
# A390915: Number of elements of the ring of n-adic integers that satisfy y^k = y for at least one integer k > 1.

The programs for A390915, the canonical program `A390915.P6633462256444884451` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390915 has offset 2).

The definition of A390915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390915.P6633462256444884451

`∏{p}[n+2, or(1, #)]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A390915

/-- `∏{p}[n+2, or(1, #)]` -/
def P6633462256444884451.Spec : Prop :=
  ∀ n, (P6633462256444884451.a n : ℤ) = A390915 (n + 2)

theorem P6633462256444884451.correct : P6633462256444884451.Spec := by
  intro n
  simp only [A390915, Nat.add_sub_cancel]

end A390915

/-! ## A390915.P14879813063687910967

`∏{p}[n+2, val(#, 2)+#]`
-/

namespace A390915.P14879813063687910967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation p 2 + p)

end

end A390915.P14879813063687910967

namespace A390915

/-- `∏{p}[n+2, val(#, 2)+#]` -/
def P14879813063687910967.Spec : Prop :=
  ∀ n, (P14879813063687910967.a n : ℤ) = A390915 (n + 2)

end A390915

/-! ## A390915.P10832830236347246289

`∏{p}[n+2, C(2, #)+#]`
-/

namespace A390915.P10832830236347246289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.choose 2 p + p)

end

end A390915.P10832830236347246289

namespace A390915

/-- `∏{p}[n+2, C(2, #)+#]` -/
def P10832830236347246289.Spec : Prop :=
  ∀ n, (P10832830236347246289.a n : ℤ) = A390915 (n + 2)

end A390915

/-! ## A390915.P10467788766869001095

`∏{p}[n+2, and(#, -2)+1]`
-/

namespace A390915.P10467788766869001095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Int.land (p : ℤ) (-2) + 1)

end

end A390915.P10467788766869001095

namespace A390915

/-- `∏{p}[n+2, and(#, -2)+1]` -/
def P10467788766869001095.Spec : Prop :=
  ∀ n, P10467788766869001095.a n = A390915 (n + 2)

end A390915

/-! ## A390915.P10078844715376389703

`∏{p}[n+2, floor(2/#+#)]`
-/

namespace A390915.P10078844715376389703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊2 / (p : ℚ) + (p : ℚ)⌋

end

end A390915.P10078844715376389703

namespace A390915

/-- `∏{p}[n+2, floor(2/#+#)]` -/
def P10078844715376389703.Spec : Prop :=
  ∀ n, P10078844715376389703.a n = A390915 (n + 2)

end A390915

/-! ## A390915.P232363479627134004

`A080512(∏{p}[n+2, #])`
-/

namespace A390915.P232363479627134004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A390915.P232363479627134004

namespace A390915

/-- `A080512(∏{p}[n+2, #])` -/
def P232363479627134004.Spec : Prop :=
  ∀ n, P232363479627134004.a n = A390915 (n + 2)

end A390915

/-! ## A390915.P3664575825630098911

`A129527(∏{p}[n+2, #])`
-/

namespace A390915.P3664575825630098911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129527 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A390915.P3664575825630098911

namespace A390915

/-- `A129527(∏{p}[n+2, #])` -/
def P3664575825630098911.Spec : Prop :=
  ∀ n, P3664575825630098911.a n = A390915 (n + 2)

end A390915

/-! ## A390915.P4896358475385407731

`A186813(∏{p}[n+2, #])`
-/

namespace A390915.P4896358475385407731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186813 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A390915.P4896358475385407731

namespace A390915

/-- `A186813(∏{p}[n+2, #])` -/
def P4896358475385407731.Spec : Prop :=
  ∀ n, P4896358475385407731.a n = A390915 (n + 2)

end A390915

/-! ## A390915.P9530528252660856032

`A080512(A007947(n+2))`
-/

namespace A390915.P9530528252660856032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (A007947 (n + 2)).toNat

end

end A390915.P9530528252660856032

namespace A390915

/-- `A080512(A007947(n+2))` -/
def P9530528252660856032.Spec : Prop :=
  ∀ n, P9530528252660856032.a n = A390915 (n + 2)

end A390915

/-! ## A390915.P11554517560445708056

`A176040(n)*A204455(n+2)`
-/

namespace A390915.P11554517560445708056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 n * A204455 (n + 2)

end

end A390915.P11554517560445708056

namespace A390915

/-- `A176040(n)*A204455(n+2)` -/
def P11554517560445708056.Spec : Prop :=
  ∀ n, P11554517560445708056.a n = A390915 (n + 2)

end A390915

/-! ## A390915.P11703530023314630866

`A181797(n+2)/A159634(n+2)`
-/

namespace A390915.P11703530023314630866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181797 (n + 2) : ℚ) / (A159634 (n + 2) : ℚ)

end

end A390915.P11703530023314630866

namespace A390915

/-- `A181797(n+2)/A159634(n+2)` -/
def P11703530023314630866.Spec : Prop :=
  ∀ n, P11703530023314630866.a n = (A390915 (n + 2) : ℚ)

end A390915

/-! ## A390915.P16742636414044839806

`A007947(n+2)+A007947(n+2)-A204455(n+2)`
-/

namespace A390915.P16742636414044839806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2) + (A007947 (n + 2) - A204455 (n + 2))

end

end A390915.P16742636414044839806

namespace A390915

/-- `A007947(n+2)+A007947(n+2)-A204455(n+2)` -/
def P16742636414044839806.Spec : Prop :=
  ∀ n, P16742636414044839806.a n = A390915 (n + 2)

end A390915

/-!
# A390917: Numbers k such that prime(k) * prime(k+1) * prime(k+2) * prime(k+3) - (prime(k) + prime(k+1) + prime(k+2) + prime(k+3)) is prime.

The programs for A390917, there is no canonical definition to state claims against.
-/

/-! ## A390917.P17441093654244581885

`A000720(A390918(n+1))`
-/

namespace A390917.P17441093654244581885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A390918 (n + 1)).toNat

end

end A390917.P17441093654244581885

/-! ## A390917.P17970803276558846685

`A061395(A390918(n+1)%A061779(n+1))`
-/

namespace A390917.P17970803276558846685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A390918 (n + 1)) (A061779 (n + 1))).toNat

end

end A390917.P17970803276558846685

/-! ## A390917.P17874769531244845775

`A061395(A390918(n+1))%A202821(n+3)`
-/

namespace A390917.P17874769531244845775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A390918 (n + 1)).toNat) (A202821 (n + 3))

end

end A390917.P17874769531244845775

/-! ## A390917.P5156496954374834917

`A297113(A390918(n+1))%A014574(n+1)`
-/

namespace A390917.P5156496954374834917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297113 (A390918 (n + 1)).toNat) (A014574 (n + 1))

end

end A390917.P5156496954374834917

/-! ## A390917.P14922731396756257034

`∑{d}[A390918(n+1), A056239(#)]`
-/

namespace A390917.P14922731396756257034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A390917.P14922731396756257034

/-! ## A390917.P4342447792549018332

`A056239(lcm(A102283(3*n+2), A390918(n+1)))`
-/

namespace A390917.P4342447792549018332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lcm (A102283 (3 * n + 2)) (A390918 (n + 1)))

end

end A390917.P4342447792549018332

/-! ## A390917.P4577273483722678689

`A056239(and(A102283(3*n+2), A390918(n+1)))`
-/

namespace A390917.P4577273483722678689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.land (A102283 (3 * n + 2)) (A390918 (n + 1))).toNat

end

end A390917.P4577273483722678689

/-!
# A390918: Primes p such that the difference of the product of 4 consecutive primes starting with p and the sum of those 4 primes is a prime.

The programs for A390918, there is no canonical definition to state claims against.
-/

/-! ## A390918.P6815219629665077550

`A000040(A390917(n+1))`
-/

namespace A390918.P6815219629665077550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A390917 (n + 1)).toNat

end

end A390918.P6815219629665077550

/-! ## A390918.P15084183506843504173

`A008578(A390917(n+1)+1)`
-/

namespace A390918.P15084183506843504173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A390917 (n + 1) + 1).toNat

end

end A390918.P15084183506843504173

/-! ## A390918.P10917665899916093734

`A360006(2*A390917(n+1))`
-/

namespace A390918.P10917665899916093734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360006 (2 * A390917 (n + 1)).toNat

end

end A390918.P10917665899916093734

/-!
# A390919: Number of graphs with n vertices that have no induced regular subgraph of order 5 or greater.

The programs for A390919, there is no canonical definition to state claims against.
-/

/-! ## A390919.P2530420504142312271

`A366188(A039300(n))`
-/

namespace A390919.P2530420504142312271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366188 (A039300 n).toNat

end

end A390919.P2530420504142312271

/-! ## A390919.P10135518000848188585

`A051162(∑[A316828(n)]+n^n)`
-/

namespace A390919.P10135518000848188585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (∑ j ∈ Finset.range (n + 1), f1 j + (n ^ n : ℤ)).toNat

end

end A390919.P10135518000848188585

/-!
# A390920: Number of n X n grids with 5 non-attacking kings on each row.

The programs for A390920, there is no canonical definition to state claims against.
-/

/-! ## A390920.P7789553820359301316

`A078898(A080953(n))`
-/

namespace A390920.P7789553820359301316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A080953 n).toNat

end

end A390920.P7789553820359301316

/-! ## A390920.P11849478462061906313

`A151713(A050610(n))`
-/

namespace A390920.P11849478462061906313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151713 (A050610 n).toNat

end

end A390920.P11849478462061906313

/-! ## A390920.P11113602087711794518

`A323525(A311879(n))`
-/

namespace A390920.P11113602087711794518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323525 (A311879 n).toNat

end

end A390920.P11113602087711794518

/-! ## A390920.P387165711840866836

`A323525(A311949(n))`
-/

namespace A390920.P387165711840866836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323525 (A311949 n).toNat

end

end A390920.P387165711840866836

/-! ## A390920.P5939301564699148375

`A323525(A312339(n))`
-/

namespace A390920.P5939301564699148375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323525 (A312339 n).toNat

end

end A390920.P5939301564699148375

/-!
# A390921: Expansion of 1/((1-x) * sqrt(1-12*x)).

The programs for A390921, the canonical program `A390921.P4802921319269334055` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390921 has offset 0).

The definition of A390921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390921.P4802921319269334055

`a(n-1)+A098658(n)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A390921

/-- `a(n-1)+A098658(n)` -/
def P4802921319269334055.Spec : Prop :=
  ∀ n, P4802921319269334055.a n = A390921 n

theorem P4802921319269334055.correct : P4802921319269334055.Spec := by
  intro n
  simp only [A390921]

end A390921

/-! ## A390921.P2425409207669268901

`∑[3^n*C(2*n, n)]`
-/

namespace A390921.P2425409207669268901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * Nat.choose (2 * n) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390921.P2425409207669268901

namespace A390921

/-- `∑[3^n*C(2*n, n)]` -/
def P2425409207669268901.Spec : Prop :=
  ∀ n, (P2425409207669268901.a n : ℤ) = A390921 n

end A390921

/-! ## A390921.P8311106383422731573

`∑[A098658(n)]`
-/

namespace A390921.P8311106383422731573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390921.P8311106383422731573

namespace A390921

/-- `∑[A098658(n)]` -/
def P8311106383422731573.Spec : Prop :=
  ∀ n, P8311106383422731573.a n = A390921 n

end A390921

/-! ## A390921.P17941379042814784820

`∑[A386825(∑[n])]`
-/

namespace A390921.P17941379042814784820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386825 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390921.P17941379042814784820

namespace A390921

/-- `∑[A386825(∑[n])]` -/
def P17941379042814784820.Spec : Prop :=
  ∀ n, P17941379042814784820.a n = A390921 n

end A390921

/-! ## A390921.P9896418367456290817

`∑[A098662(2*n)]`
-/

namespace A390921.P9896418367456290817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098662 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390921.P9896418367456290817

namespace A390921

/-- `∑[A098662(2*n)]` -/
def P9896418367456290817.Spec : Prop :=
  ∀ n, P9896418367456290817.a n = A390921 n

end A390921

/-! ## A390921.P9301889811264315985

`∑[A103978(2*n)]`
-/

namespace A390921.P9301889811264315985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103978 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390921.P9301889811264315985

namespace A390921

/-- `∑[A103978(2*n)]` -/
def P9301889811264315985.Spec : Prop :=
  ∀ n, P9301889811264315985.a n = A390921 n

end A390921

/-!
# A390922: a(n) is the number of 2 X 2 matrices with elements 1..n where at least one row and at least one column is strictly increasing.

The programs for A390922, the canonical program `A390922.P1410402099005325727` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390922 has offset 0).

The definition of A390922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390922.P632607870678178187

`n*(n-1)*(n*(7*n-1)-2)/12`
-/

namespace A390922.P632607870678178187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) * ((7 * n : ℤ) - 1) - 2) : ℚ) / 12

end

end A390922.P632607870678178187

namespace A390922

/-- `n*(n-1)*(n*(7*n-1)-2)/12` -/
def P632607870678178187.Spec : Prop :=
  ∀ n, P632607870678178187.a n = (A390922 n : ℚ)

theorem P632607870678178187.correct : P632607870678178187.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A390922, Nat.add_sub_cancel, A390922.P632607870678178187.a, A390922.P1410402099005325727.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A390922, Nat.add_sub_cancel, A390922.P632607870678178187.a, A390922.P1410402099005325727.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A390922

/-! ## A390922.P1410402099005325727

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=29, a(4)=106`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A390922

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P1410402099005325727.Spec : Prop :=
  ∀ n, P1410402099005325727.a n = A390922 n

theorem P1410402099005325727.correct : P1410402099005325727.Spec := by
  intro n
  simp only [A390922]

end A390922

/-! ## A390922.P12122729048982314812

`n²²-A185355(n+1)`
-/

namespace A390922.P12122729048982314812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A185355 (n + 1)

end

end A390922.P12122729048982314812

namespace A390922

/-- `n²²-A185355(n+1)` -/
def P12122729048982314812.Spec : Prop :=
  ∀ n, P12122729048982314812.a n = A390922 n

end A390922

/-! ## A390922.P5722582581817274659

`A264850(n)-A007588(n)`
-/

namespace A390922.P5722582581817274659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264850 n - A007588 n

end

end A390922.P5722582581817274659

namespace A390922

/-- `A264850(n)-A007588(n)` -/
def P5722582581817274659.Spec : Prop :=
  ∀ n, P5722582581817274659.a n = A390922 n

end A390922

/-! ## A390922.P818000370117794988

`A212090(n)-A236770(n)`
-/

namespace A390922.P818000370117794988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212090 n - A236770 n

end

end A390922.P818000370117794988

namespace A390922

/-- `A212090(n)-A236770(n)` -/
def P818000370117794988.Spec : Prop :=
  ∀ n, P818000370117794988.a n = A390922 n

end A390922

/-! ## A390922.P17475345835090503484

`A000332(2*n+1)-A002415(n)`
-/

namespace A390922.P17475345835090503484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (2 * n + 1) - A002415 n

end

end A390922.P17475345835090503484

namespace A390922

/-- `A000332(2*n+1)-A002415(n)` -/
def P17475345835090503484.Spec : Prop :=
  ∀ n, P17475345835090503484.a n = A390922 n

end A390922

/-!
# A390923: Expansion of 1/((1-3*x) * sqrt(1-8*x)).

The programs for A390923, the canonical program `A390923.P6565390993815220059` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390923 has offset 0).

The definition of A390923 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390923.P6565390993815220059

`3*a(n-1)+A059304(n)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A390923

/-- `3*a(n-1)+A059304(n)` -/
def P6565390993815220059.Spec : Prop :=
  ∀ n, P6565390993815220059.a n = A390923 n

theorem P6565390993815220059.correct : P6565390993815220059.Spec := by
  intro n
  simp only [A390923]

end A390923

/-!
# A390924: Expansion of 1/((1-2*x) * sqrt(1-12*x)).

The programs for A390924, the canonical program `A390924.P5803395581487017869` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390924 has offset 0).

The definition of A390924 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390924.P5803395581487017869

`2*a(n-1)+A098658(n)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A390924

/-- `2*a(n-1)+A098658(n)` -/
def P5803395581487017869.Spec : Prop :=
  ∀ n, P5803395581487017869.a n = A390924 n

theorem P5803395581487017869.correct : P5803395581487017869.Spec := by
  intro n
  simp only [A390924]

end A390924

/-!
# A390929: Primes p such that, if q,r,s are the next three primes, both p*q*r*s - (p+q+r+s) and p*q*r*s + (p+q+r+s) are primes.

The programs for A390929, there is no canonical definition to state claims against.
-/

/-! ## A390929.P15577058353896196611

`∩[A390918(n+1), A390930(n+1)]`
-/

namespace A390929.P15577058353896196611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390929.P15577058353896196611

/-!
# A390930: Primes p such that the sum of four consecutive primes starting with p and their product is a prime.

The programs for A390930, there is no canonical definition to state claims against.
-/

/-! ## A390930.P15431038717859122181

`A000040(A284550(n+1))`
-/

namespace A390930.P15431038717859122181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A284550 (n + 1)).toNat

end

end A390930.P15431038717859122181

/-!
# A390933: Primes that are (product minus sum) of a sequence of consecutive primes.

The programs for A390933, there is no canonical definition to state claims against.
-/

/-! ## A390933.P12092493203205776165

`p?[A387946(n+1)]`
-/

namespace A390933.P12092493203205776165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A390933.P12092493203205776165

/-! ## A390933.P7250668158100640782

`∩[A009087(n+1), A387946(n+1)]`
-/

namespace A390933.P7250668158100640782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390933.P7250668158100640782

/-! ## A390933.P18309832087684871004

`∩[A040116(n+1), A387946(n+1)]`
-/

namespace A390933.P18309832087684871004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390933.P18309832087684871004

/-! ## A390933.P2385405610787073681

`∩[A075430(n+1), A387946(n+1)]`
-/

namespace A390933.P2385405610787073681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390933.P2385405610787073681

/-! ## A390933.P9734100714066572763

`∩[A140562(n+1), A387946(n+1)]`
-/

namespace A390933.P9734100714066572763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390933.P9734100714066572763

/-!
# A390937: Number of entries in the map T after the n-th iteration, when initially T[1] = 1 is the only entry, and in subsequent iterations, T[v] := k + (T[v] if defined else 0) for each key-value pair (k, v) in the map.

The programs for A390937, there is no canonical definition to state claims against.
-/

/-! ## A390937.P18051560835011324007

`∑[A390938(n)]`
-/

namespace A390937.P18051560835011324007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390937.P18051560835011324007

/-!
# A390938: Number of new keys inserted at iteration n in a map initialized with T[1] := 1, then iterate: for each (key, value) already in T, T[value] := T[value]+key if T[value] already exists, else T[value] := key.

The programs for A390938, there is no canonical definition to state claims against.
-/

/-! ## A390938.P8541391155299222167

`A160381(∑[∑[A374697(n)]])`
-/

namespace A390938.P8541391155299222167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374697 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A390938.P8541391155299222167

/-!
# A390939: Keys added to a map T initialized with T[1] = 1 and updated at each iteration according to T[value] := (T[value] if defined else 0) + key, for all (key, value) pairs already in T; listed in order the keys are added to the map (cf. comments for details).

The programs for A390939, there is no canonical definition to state claims against.
-/

/-! ## A390939.P17378955252788931948

`A000005(A293993(n))*A037445(n+1)`
-/

namespace A390939.P17378955252788931948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A293993 n).toNat * A037445 (n + 1)

end

end A390939.P17378955252788931948

/-!
# A390940: Terms of A390939 sorted in increasing order, where A390939 lists the keys added in the map initialized with T[1] = 1 and repeatedly T[v] := k + (T[v] if defined else 0) for all key-value pairs (k, v) in T.

The programs for A390940, there is no canonical definition to state claims against.
-/

/-! ## A390940.P10183436197206474577

`eq[1, char[A390939(n)]]`
-/

namespace A390940.P10183436197206474577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390939 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A390940.P10183436197206474577

/-! ## A390940.P18097132980157008979

`lt[A007678(A278243(n)), A060590(n)]`
-/

namespace A390940.P18097132980157008979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007678 (A278243 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060590 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390940.P18097132980157008979

/-!
# A390944: Value of T[4] after the n-th iteration, when the map T is initialized with T[1] = 1 and in subsequent iterations, T[v] = k + (T[v] if defined else 0) for all key-value pairs (k, v) in T; a(n) = 0 if T[4] isn't defined yet.

The programs for A390944, there is no canonical definition to state claims against.
-/

/-! ## A390944.P16873710296476478430

`A344452(A003522(n))`
-/

namespace A390944.P16873710296476478430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344452 (A003522 n).toNat

end

end A390944.P16873710296476478430

/-!
# A390945: Burning number of the n-necklace graph.

The programs for A390945, the canonical program `A390945.P3952073079316062166` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390945 has offset 1).

The definition of A390945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390945.P14231077421961861841

`ceil(sqrt(3*(n+1)))`
-/

namespace A390945.P14231077421961861841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (3 * (n + 1) : ℝ)⌉

end

end A390945.P14231077421961861841

namespace A390945

/-- `ceil(sqrt(3*(n+1)))` -/
def P14231077421961861841.Spec : Prop :=
  ∀ n, P14231077421961861841.a n = A390945 (n + 1)

end A390945

/-! ## A390945.P3952073079316062166

`A003059(3*(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A390945

/-- `A003059(3*(n+1))` -/
def P3952073079316062166.Spec : Prop :=
  ∀ n, P3952073079316062166.a n = A390945 (n + 1)

theorem P3952073079316062166.correct : P3952073079316062166.Spec := by
  intro n
  simp only [A390945, Nat.add_sub_cancel]

end A390945

/-! ## A390945.P11443627764175347829

`a(n-1)+3-floor(a(n-1)²/(n+1))` with `a(0)=2`
-/

namespace A390945.P11443627764175347829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (3 - ⌊(a (n - 1) ^ 2 : ℚ) / (n + 1 : ℚ)⌋)

end

end A390945.P11443627764175347829

namespace A390945

/-- `a(n-1)+3-floor(a(n-1)²/(n+1))` -/
def P11443627764175347829.Spec : Prop :=
  ∀ n, P11443627764175347829.a n = A390945 (n + 1)

end A390945

/-! ## A390945.P14906390420398008556

`a(n-floor(a(n-1)-n/a(n-1)))+1` with `a(0)=2`
-/

namespace A390945.P14906390420398008556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a ((n : ℤ) - ⌊(a (n - 1) : ℚ) - (n : ℚ) / (a (n - 1) : ℚ)⌋).toNat + 1

end

end A390945.P14906390420398008556

namespace A390945

/-- `a(n-floor(a(n-1)-n/a(n-1)))+1` -/
def P14906390420398008556.Spec : Prop :=
  ∀ n, (P14906390420398008556.a n : ℤ) = A390945 (n + 1)

end A390945

/-! ## A390945.P17398846407565445863

`A183856(n+1)-n`
-/

namespace A390945.P17398846407565445863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183856 (n + 1) - (n : ℤ)

end

end A390945.P17398846407565445863

namespace A390945

/-- `A183856(n+1)-n` -/
def P17398846407565445863.Spec : Prop :=
  ∀ n, P17398846407565445863.a n = A390945 (n + 1)

end A390945

/-! ## A390945.P6210047733219394756

`floor(sqrt(A135708(n+1)))`
-/

namespace A390945.P6210047733219394756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A135708 (n + 1))

end

end A390945.P6210047733219394756

namespace A390945

/-- `floor(sqrt(A135708(n+1)))` -/
def P6210047733219394756.Spec : Prop :=
  ∀ n, P6210047733219394756.a n = A390945 (n + 1)

end A390945

/-! ## A390945.P3185103350820945950

`A027434(A066530(n))`
-/

namespace A390945.P3185103350820945950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (A066530 n).toNat

end

end A390945.P3185103350820945950

namespace A390945

/-- `A027434(A066530(n))` -/
def P3185103350820945950.Spec : Prop :=
  ∀ n, P3185103350820945950.a n = A390945 (n + 1)

end A390945

/-! ## A390945.P4221975605349668442

`A278814(A098180(n))`
-/

namespace A390945.P4221975605349668442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278814 (A098180 n).toNat

end

end A390945.P4221975605349668442

namespace A390945

/-- `A278814(A098180(n))` -/
def P4221975605349668442.Spec : Prop :=
  ∀ n, P4221975605349668442.a n = A390945 (n + 1)

end A390945

/-! ## A390945.P11202459268431748264

`A278814(A089801(n)+n)`
-/

namespace A390945.P11202459268431748264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278814 (A089801 n + (n : ℤ)).toNat

end

end A390945.P11202459268431748264

namespace A390945

/-- `A278814(A089801(n)+n)` -/
def P11202459268431748264.Spec : Prop :=
  ∀ n, P11202459268431748264.a n = A390945 (n + 1)

end A390945

/-! ## A390945.P3187913957031111616

`A102515(A007494(n))`
-/

namespace A390945.P3187913957031111616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102515 (A007494 n).toNat

end

end A390945.P3187913957031111616

namespace A390945

/-- `A102515(A007494(n))` -/
def P3187913957031111616.Spec : Prop :=
  ∀ n, P3187913957031111616.a n = A390945 (n + 1)

end A390945

/-! ## A390945.P18104594365902190827

`A101776(A293990(n))`
-/

namespace A390945.P18104594365902190827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 (A293990 n).toNat

end

end A390945.P18104594365902190827

namespace A390945

/-- `A101776(A293990(n))` -/
def P18104594365902190827.Spec : Prop :=
  ∀ n, P18104594365902190827.a n = A390945 (n + 1)

end A390945

/-! ## A390945.P5018283536065232092

`A067628(2*(n+1))/2`
-/

namespace A390945.P5018283536065232092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067628 (2 * (n + 1)) : ℚ) / 2

end

end A390945.P5018283536065232092

namespace A390945

/-- `A067628(2*(n+1))/2` -/
def P5018283536065232092.Spec : Prop :=
  ∀ n, P5018283536065232092.a n = (A390945 (n + 1) : ℚ)

end A390945

/-! ## A390945.P5365042014343927303

`A183874(2*n+1)-2*n`
-/

namespace A390945.P5365042014343927303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183874 (2 * n + 1) - (2 * n : ℤ)

end

end A390945.P5365042014343927303

namespace A390945

/-- `A183874(2*n+1)-2*n` -/
def P5365042014343927303.Spec : Prop :=
  ∀ n, P5365042014343927303.a n = A390945 (n + 1)

end A390945

/-! ## A390945.P13189160686110301307

`A008619(A000267(2*n+1+n))`
-/

namespace A390945.P13189160686110301307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000267 (2 * n + 1 + n)).toNat

end

end A390945.P13189160686110301307

namespace A390945

/-- `A008619(A000267(2*n+1+n))` -/
def P13189160686110301307.Spec : Prop :=
  ∀ n, P13189160686110301307.a n = A390945 (n + 1)

end A390945

/-! ## A390945.P5253254665094007429

`A135034(3*(n+1))`
-/

namespace A390945.P5253254665094007429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (3 * (n + 1))

end

end A390945.P5253254665094007429

namespace A390945

/-- `A135034(3*(n+1))` -/
def P5253254665094007429.Spec : Prop :=
  ∀ n, P5253254665094007429.a n = A390945 (n + 1)

end A390945

/-! ## A390945.P4188246231350356562

`sqrt(A048761(3*(n+1)))`
-/

namespace A390945.P4188246231350356562
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A048761 (3 * (n + 1)) : ℝ)

end

end A390945.P4188246231350356562

namespace A390945

/-- `sqrt(A048761(3*(n+1)))` -/
def P4188246231350356562.Spec : Prop :=
  ∀ n, P4188246231350356562.a n = (A390945 (n + 1) : ℝ)

end A390945

/-! ## A390945.P13188384335594314887

`A130819(3*(n+1))/2`
-/

namespace A390945.P13188384335594314887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130819 (3 * (n + 1)) : ℚ) / 2

end

end A390945.P13188384335594314887

namespace A390945

/-- `A130819(3*(n+1))/2` -/
def P13188384335594314887.Spec : Prop :=
  ∀ n, P13188384335594314887.a n = (A390945 (n + 1) : ℚ)

end A390945

/-! ## A390945.P204291351543932430

`A000196(A007310(n+1))+1`
-/

namespace A390945.P204291351543932430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A007310 (n + 1)).toNat + 1

end

end A390945.P204291351543932430

namespace A390945

/-- `A000196(A007310(n+1))+1` -/
def P204291351543932430.Spec : Prop :=
  ∀ n, P204291351543932430.a n = A390945 (n + 1)

end A390945

/-! ## A390945.P16027321596146547145

`A000196(A038179(n+2))+1`
-/

namespace A390945.P16027321596146547145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A038179 (n + 2)).toNat + 1

end

end A390945.P16027321596146547145

namespace A390945

/-- `A000196(A038179(n+2))+1` -/
def P16027321596146547145.Spec : Prop :=
  ∀ n, P16027321596146547145.a n = A390945 (n + 1)

end A390945

/-! ## A390945.P13171162758865190959

`A004526(A307136(2*n+n+2))`
-/

namespace A390945.P13171162758865190959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A307136 (2 * n + (n + 2))).toNat

end

end A390945.P13171162758865190959

namespace A390945

/-- `A004526(A307136(2*n+n+2))` -/
def P13171162758865190959.Spec : Prop :=
  ∀ n, P13171162758865190959.a n = A390945 (n + 1)

end A390945

/-!
# A390949: 

The programs for A390949, there is no canonical definition to state claims against.
-/

/-! ## A390949.P11160070474055468419

`filter[A320632(n+2), A389905(#)]`
-/

namespace A390949.P11160070474055468419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320632 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A390949.P11160070474055468419

/-! ## A390949.P1077680350166409051

`filter[A332785(n+1), A379958(#)]`
-/

namespace A390949.P1077680350166409051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A390949.P1077680350166409051

/-! ## A390949.P486756482814633250

`∩[A320632(n+1), A332785(n+1)]`
-/

namespace A390949.P486756482814633250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390949.P486756482814633250

/-! ## A390949.P417794862228505898

`filter[A000977(n+1), A389905(#)]`
-/

namespace A390949.P417794862228505898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A390949.P417794862228505898

/-! ## A390949.P7209300829925738419

`∩[A000977(n+1), A332785(n+1)]`
-/

namespace A390949.P7209300829925738419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390949.P7209300829925738419

/-!
# A390950: Powerful numbers with more than 2 distinct prime factors.

The programs for A390950, there is no canonical definition to state claims against.
-/

/-! ## A390950.P9858187459176120244

`∪[A391320(n+1), A395197(n+1)]`
-/

namespace A390950.P9858187459176120244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390950.P9858187459176120244

/-! ## A390950.P3616973476610595411

`∪[A392741(n+1), A395197(n+1)]`
-/

namespace A390950.P3616973476610595411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390950.P3616973476610595411

/-! ## A390950.P11731486411062927604

`∩[A001694(n+1), A318720(n+1)]`
-/

namespace A390950.P11731486411062927604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390950.P11731486411062927604

/-! ## A390950.P17859759484471788191

`∩[A192636(n+1), A318720(n+1)]`
-/

namespace A390950.P17859759484471788191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390950.P17859759484471788191

/-! ## A390950.P1892251112648103063

`∩[A286708(n+1), A318720(n+1)]`
-/

namespace A390950.P1892251112648103063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390950.P1892251112648103063

/-! ## A390950.P13027672080944063189

`∩[A001694(n+1), A378430(n+1)]`
-/

namespace A390950.P13027672080944063189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390950.P13027672080944063189

/-! ## A390950.P6329846202904040061

`∩[A192636(n+1), A378430(n+1)]`
-/

namespace A390950.P6329846202904040061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390950.P6329846202904040061

/-! ## A390950.P8435462131291030523

`∩[A286708(n+1), A378430(n+1)]`
-/

namespace A390950.P8435462131291030523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390950.P8435462131291030523

/-!
# A390952: Even Achilles numbers.

The programs for A390952, there is no canonical definition to state claims against.
-/

/-! ## A390952.P1751453799677779815

`∩[A052486(n+1), A395067(n+1)]`
-/

namespace A390952.P1751453799677779815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390952.P1751453799677779815

/-! ## A390952.P11379511045226743865

`∩[A052486(n+1), A363216(n+1)]`
-/

namespace A390952.P11379511045226743865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390952.P11379511045226743865

/-! ## A390952.P11336747459687523798

`∩[A052486(n+1), A390010(n+1)]`
-/

namespace A390952.P11336747459687523798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390952.P11336747459687523798

/-! ## A390952.P6123788363269598278

`∩[A363216(n+1), A389753(n+1)]`
-/

namespace A390952.P6123788363269598278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390952.P6123788363269598278

/-! ## A390952.P2894074987959229672

`∩[A389753(n+1), A390010(n+1)]`
-/

namespace A390952.P2894074987959229672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390952.P2894074987959229672

/-! ## A390952.P9216145373226349121

`∩[A389753(n+1), A395067(n+1)]`
-/

namespace A390952.P9216145373226349121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390952.P9216145373226349121

/-! ## A390952.P11490814863846225898

`filter[A052486(n+1), A374036(#)]`
-/

namespace A390952.P11490814863846225898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A390952.P11490814863846225898

/-! ## A390952.P13807434726819117929

`filter[A052486(n+1), A121262(#)]`
-/

namespace A390952.P13807434726819117929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A390952.P13807434726819117929

/-! ## A390952.P14203480800502129600

`filter[A052486(n+1), A353494(#)]`
-/

namespace A390952.P14203480800502129600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353494 (f1 j).toNat = 1) n)

end

end A390952.P14203480800502129600

/-! ## A390952.P1232270799559536081

`filter[A052486(n+1), A354034(#)]`
-/

namespace A390952.P1232270799559536081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A390952.P1232270799559536081

/-! ## A390952.P2748091659997475555

`filter[A052486(n+1), A354097(#)]`
-/

namespace A390952.P2748091659997475555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A390952.P2748091659997475555

/-! ## A390952.P17197605687341231305

`∩[A363216(n+1), A391415(n+1)]`
-/

namespace A390952.P17197605687341231305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390952.P17197605687341231305

/-! ## A390952.P2611360014472053319

`∩[A390010(n+1), A391415(n+1)]`
-/

namespace A390952.P2611360014472053319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390952.P2611360014472053319

/-! ## A390952.P17302870056623913380

`∩[A052486(n+1), A188633(n+1)]`
-/

namespace A390952.P17302870056623913380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390952.P17302870056623913380

/-! ## A390952.P3179113989358535867

`∩[A052486(n+1), A008574(n)]`
-/

namespace A390952.P3179113989358535867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390952.P3179113989358535867

/-! ## A390952.P3985661761438997487

`∩[A052486(n+1), A008586(n)]`
-/

namespace A390952.P3985661761438997487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390952.P3985661761438997487

/-! ## A390952.P10735635170422089399

`∩[A052486(n+1), A173035(n)]`
-/

namespace A390952.P10735635170422089399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173035 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390952.P10735635170422089399

/-! ## A390952.P11595408393158434796

`∩[A052486(n+1), A265045(n)]`
-/

namespace A390952.P11595408393158434796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265045 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390952.P11595408393158434796

/-! ## A390952.P5862759602497436069

`∩[A052486(n+1), A265046(n)]`
-/

namespace A390952.P5862759602497436069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265046 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390952.P5862759602497436069

/-! ## A390952.P15774536330627973672

`∩[A052486(n+1), A336705(n)]`
-/

namespace A390952.P15774536330627973672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390952.P15774536330627973672

/-!
# A390953: Odd Achilles numbers.

The programs for A390953, there is no canonical definition to state claims against.
-/

/-! ## A390953.P14155274774047061443

`∩[A062739(n+1), A386434(n+1)]`
-/

namespace A390953.P14155274774047061443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390953.P14155274774047061443

/-! ## A390953.P6907685408766970768

`∩[A363217(n+1), A386434(n+1)]`
-/

namespace A390953.P6907685408766970768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390953.P6907685408766970768

/-! ## A390953.P7046448333444171633

`∩[A386434(n+1), A395674(n+1)]`
-/

namespace A390953.P7046448333444171633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390953.P7046448333444171633

/-! ## A390953.P1851286709817702665

`∩[A062739(n+1), A387958(n+1)]`
-/

namespace A390953.P1851286709817702665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390953.P1851286709817702665

/-! ## A390953.P4107947787560374577

`∩[A363217(n+1), A387958(n+1)]`
-/

namespace A390953.P4107947787560374577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390953.P4107947787560374577

/-! ## A390953.P15414109616467312457

`∩[A387958(n+1), A395674(n+1)]`
-/

namespace A390953.P15414109616467312457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390953.P15414109616467312457

/-! ## A390953.P15815107133385338168

`∩[A052486(n+1), A062739(n+1)]`
-/

namespace A390953.P15815107133385338168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390953.P15815107133385338168

/-! ## A390953.P13992412865644743013

`∩[A052486(n+1), A363217(n+1)]`
-/

namespace A390953.P13992412865644743013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390953.P13992412865644743013

/-! ## A390953.P17937413723391503721

`∩[A052486(n+1), A395674(n+1)]`
-/

namespace A390953.P17937413723391503721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390953.P17937413723391503721

/-! ## A390953.P15919855869998873176

`∩[A062739(n+1), A389753(n+1)]`
-/

namespace A390953.P15919855869998873176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390953.P15919855869998873176

/-! ## A390953.P1561384297603477818

`∩[A363217(n+1), A389753(n+1)]`
-/

namespace A390953.P1561384297603477818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390953.P1561384297603477818

/-! ## A390953.P11725740728346121001

`∩[A389753(n+1), A395674(n+1)]`
-/

namespace A390953.P11725740728346121001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390953.P11725740728346121001

/-! ## A390953.P16471845936245399390

`∩[A062739(n+1), A072412(n+1)]`
-/

namespace A390953.P16471845936245399390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390953.P16471845936245399390

/-! ## A390953.P12767955133428055886

`∩[A072412(n+1), A363217(n+1)]`
-/

namespace A390953.P12767955133428055886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390953.P12767955133428055886

/-! ## A390953.P14948358038221553999

`∩[A072412(n+1), A395674(n+1)]`
-/

namespace A390953.P14948358038221553999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390953.P14948358038221553999

/-! ## A390953.P2876545817495532163

`∩[A052486(n+1), A361487(n+1)]`
-/

namespace A390953.P2876545817495532163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390953.P2876545817495532163

/-! ## A390953.P5080609340131129959

`∩[A361487(n+1), A386434(n+1)]`
-/

namespace A390953.P5080609340131129959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390953.P5080609340131129959

/-! ## A390953.P9088939546959258659

`∩[A361487(n+1), A387958(n+1)]`
-/

namespace A390953.P9088939546959258659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390953.P9088939546959258659

/-! ## A390953.P6730373292409259465

`∩[A361487(n+1), A389959(n+1)]`
-/

namespace A390953.P6730373292409259465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390953.P6730373292409259465

/-!
# A390954: Dirichlet convolution of A390554 and A328254.

The programs for A390954, there is no canonical definition to state claims against.
-/

/-! ## A390954.P6202897047478684223

`∑{d}[n+1, A328254(#)*A390554((n+1)/#)]`
-/

namespace A390954.P6202897047478684223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328254 d * A390554 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390954.P6202897047478684223

/-!
# A390955: Powers k^m, m > 1, where k is an odd squarefree composite.

The programs for A390955, there is no canonical definition to state claims against.
-/

/-! ## A390955.P3955878635681300635

`∩[A072777(n+1), A216419(n+1)]`
-/

namespace A390955.P3955878635681300635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390955.P3955878635681300635

/-! ## A390955.P173546301900354654

`∩[A216419(n+1), A365745(n+1)]`
-/

namespace A390955.P173546301900354654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390955.P173546301900354654

/-! ## A390955.P10994928505775948350

`∩[A216419(n+1), A303606(n+1)]`
-/

namespace A390955.P10994928505775948350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390955.P10994928505775948350

/-! ## A390955.P9529116145309096806

`∩[A075109(n+1), A303606(n+1)]`
-/

namespace A390955.P9529116145309096806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390955.P9529116145309096806

/-! ## A390955.P7390141560717584355

`∩[A075109(n+1), A365745(n+1)]`
-/

namespace A390955.P7390141560717584355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390955.P7390141560717584355

/-! ## A390955.P7511353473076556184

`∩[A076292(n+1), A216419(n+1)]`
-/

namespace A390955.P7511353473076556184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390955.P7511353473076556184

/-! ## A390955.P1427208156486038863

`∩[A072777(n+1), A363217(n+1)]`
-/

namespace A390955.P1427208156486038863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390955.P1427208156486038863

/-! ## A390955.P16205580456340342306

`∩[A076292(n+1), A363217(n+1)]`
-/

namespace A390955.P16205580456340342306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390955.P16205580456340342306

/-! ## A390955.P18180674696218884672

`∩[A303606(n+1), A363217(n+1)]`
-/

namespace A390955.P18180674696218884672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390955.P18180674696218884672

/-! ## A390955.P1895435107823419679

`∩[A363217(n+1), A365745(n+1)]`
-/

namespace A390955.P1895435107823419679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390955.P1895435107823419679

/-! ## A390955.P841069403193795897

`∩[A062739(n+1), A303606(n+1)]`
-/

namespace A390955.P841069403193795897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390955.P841069403193795897

/-! ## A390955.P6707499096570570755

`∩[A062739(n+1), A365745(n+1)]`
-/

namespace A390955.P6707499096570570755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390955.P6707499096570570755

/-! ## A390955.P8843305212105595777

`∩[A072777(n+1), A361487(n+1)]`
-/

namespace A390955.P8843305212105595777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390955.P8843305212105595777

/-! ## A390955.P14257158913331484104

`∩[A076292(n+1), A361487(n+1)]`
-/

namespace A390955.P14257158913331484104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390955.P14257158913331484104

/-! ## A390955.P5028108470375325519

`∩[A303606(n+1), A361487(n+1)]`
-/

namespace A390955.P5028108470375325519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390955.P5028108470375325519

/-! ## A390955.P9799994140519109417

`∩[A361487(n+1), A365745(n+1)]`
-/

namespace A390955.P9799994140519109417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390955.P9799994140519109417

/-!
# A390956: Powers k^m, m > 1, of even squarefree composite k.

The programs for A390956, there is no canonical definition to state claims against.
-/

/-! ## A390956.P1298734604723158818

`∩[A072777(n+1), A391756(n+1)]`
-/

namespace A390956.P1298734604723158818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390956.P1298734604723158818

/-! ## A390956.P7411064179801958030

`∩[A303606(n+1), A391756(n+1)]`
-/

namespace A390956.P7411064179801958030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390956.P7411064179801958030

/-! ## A390956.P8428801076139641398

`∩[A075090(n+1), A303606(n+1)]`
-/

namespace A390956.P8428801076139641398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390956.P8428801076139641398

/-! ## A390956.P880319303950858808

`∩[A076292(n+1), A391756(n+1)]`
-/

namespace A390956.P880319303950858808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390956.P880319303950858808

/-! ## A390956.P10878522861955169551

`∩[A072777(n+1), A363216(n+1)]`
-/

namespace A390956.P10878522861955169551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390956.P10878522861955169551

/-! ## A390956.P6391211718421756784

`∩[A076292(n+1), A363216(n+1)]`
-/

namespace A390956.P6391211718421756784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390956.P6391211718421756784

/-! ## A390956.P5818732141942950376

`∩[A303606(n+1), A363216(n+1)]`
-/

namespace A390956.P5818732141942950376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390956.P5818732141942950376

/-! ## A390956.P2813466720880789862

`∩[A303606(n+1), A390010(n+1)]`
-/

namespace A390956.P2813466720880789862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390956.P2813466720880789862

/-! ## A390956.P7077014185341445718

`filter[A075090(n+1), A354353(#)]`
-/

namespace A390956.P7077014185341445718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A390956.P7077014185341445718

/-! ## A390956.P3489610402686599999

`filter[A303606(n+1), A358227(#)]`
-/

namespace A390956.P3489610402686599999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358227 (f1 j).toNat = 1) n)

end

end A390956.P3489610402686599999

/-!
# A390957: The number of non-bi-unitary divisors of n.

The programs for A390957, the canonical program `A390957.P13897140593149333572` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390957 has offset 1).

The definition of A390957 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A286324, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390957.P13897140593149333572

`A000005(n+1)-A286324(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A390957

/-- `A000005(n+1)-A286324(n+1)` -/
def P13897140593149333572.Spec : Prop :=
  ∀ n, P13897140593149333572.a n = A390957 (n + 1)

theorem P13897140593149333572.correct : P13897140593149333572.Spec := by
  intro n
  simp only [A390957, Nat.add_sub_cancel]

end A390957

/-! ## A390957.P13842346091495166765

`A000005(n+1)-A000005(A350390(n+1))`
-/

namespace A390957.P13842346091495166765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A000005 (A350390 (n + 1)).toNat

end

end A390957.P13842346091495166765

namespace A390957

/-- `A000005(n+1)-A000005(A350390(n+1))` -/
def P13842346091495166765.Spec : Prop :=
  ∀ n, P13842346091495166765.a n = A390957 (n + 1)

end A390957

/-! ## A390957.P1657354206654572681

`A034444(n+1)+A048105(n+1)-A286324(n+1)`
-/

namespace A390957.P1657354206654572681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) + (A048105 (n + 1) - A286324 (n + 1))

end

end A390957.P1657354206654572681

namespace A390957

/-- `A034444(n+1)+A048105(n+1)-A286324(n+1)` -/
def P1657354206654572681.Spec : Prop :=
  ∀ n, P1657354206654572681.a n = A390957 (n + 1)

end A390957

/-! ## A390957.P10791942826071050608

`A000005(n+1)-A365498(n+1)*A368172(n+1)`
-/

namespace A390957.P10791942826071050608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A365498 (n + 1) * A368172 (n + 1)

end

end A390957.P10791942826071050608

namespace A390957

/-- `A000005(n+1)-A365498(n+1)*A368172(n+1)` -/
def P10791942826071050608.Spec : Prop :=
  ∀ n, P10791942826071050608.a n = A390957 (n + 1)

end A390957

/-! ## A390957.P14904214811119078148

`A355731(A100484(n+1))-A286324(n+1)`
-/

namespace A390957.P14904214811119078148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355731 (A100484 (n + 1)).toNat - A286324 (n + 1)

end

end A390957.P14904214811119078148

namespace A390957

/-- `A355731(A100484(n+1))-A286324(n+1)` -/
def P14904214811119078148.Spec : Prop :=
  ∀ n, P14904214811119078148.a n = A390957 (n + 1)

end A390957

/-! ## A390957.P15566050514697311187

`A070939(A100587(n+1))-A286324(n+1)`
-/

namespace A390957.P15566050514697311187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A100587 (n + 1)).toNat - A286324 (n + 1)

end

end A390957.P15566050514697311187

namespace A390957

/-- `A070939(A100587(n+1))-A286324(n+1)` -/
def P15566050514697311187.Spec : Prop :=
  ∀ n, P15566050514697311187.a n = A390957 (n + 1)

end A390957

/-! ## A390957.P3368415342455210648

`and(A098176(n+1), A348341(n+1))`
-/

namespace A390957.P3368415342455210648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098176 (n + 1)) (A348341 (n + 1))

end

end A390957.P3368415342455210648

namespace A390957

/-- `and(A098176(n+1), A348341(n+1))` -/
def P3368415342455210648.Spec : Prop :=
  ∀ n, P3368415342455210648.a n = A390957 (n + 1)

end A390957

/-!
# A390958: The number of non-bi-unitary divisors of the numbers that are not exponentially odd.

The programs for A390958, the canonical program `A390958.P3512256824104388828` is in `Seq.B007.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390958 has offset 1).

The definition of A390958 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072587, A390957, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390958.P3512256824104388828

`A390957(A072587(n+1))`

The canonical program, it is in `Seq.B007.C002`.
-/

namespace A390958

/-- `A390957(A072587(n+1))` -/
def P3512256824104388828.Spec : Prop :=
  ∀ n, P3512256824104388828.a n = A390958 (n + 1)

theorem P3512256824104388828.correct : P3512256824104388828.Spec := by
  intro n
  simp only [A390958, Nat.add_sub_cancel]

end A390958

/-! ## A390958.P13938911305801859875

`A327521(A038116(n))`
-/

namespace A390958.P13938911305801859875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327521 (A038116 n).toNat

end

end A390958.P13938911305801859875

namespace A390958

/-- `A327521(A038116(n))` -/
def P13938911305801859875.Spec : Prop :=
  ∀ n, P13938911305801859875.a n = A390958 (n + 1)

end A390958

/-! ## A390958.P7111457912691524130

`A050320(A124757(n)+A000041(2*(n+2)))`
-/

namespace A390958.P7111457912691524130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (A124757 n + A000041 (2 * (n + 2))).toNat

end

end A390958.P7111457912691524130

namespace A390958

/-- `A050320(A124757(n)+A000041(2*(n+2)))` -/
def P7111457912691524130.Spec : Prop :=
  ∀ n, P7111457912691524130.a n = A390958 (n + 1)

end A390958

/-! ## A390958.P11302077525994795457

`A050326(A130784(n)*A138841(3*n+4))`
-/

namespace A390958.P11302077525994795457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (A130784 n * A138841 (3 * n + 4)).toNat

end

end A390958.P11302077525994795457

namespace A390958

/-- `A050326(A130784(n)*A138841(3*n+4))` -/
def P11302077525994795457.Spec : Prop :=
  ∀ n, P11302077525994795457.a n = A390958 (n + 1)

end A390958

/-! ## A390958.P8228374866721475950

`A118807((A089215(n+1)-1)%A122853(n+1))`
-/

namespace A390958.P8228374866721475950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118807 (Int.tmod (A089215 (n + 1) - 1) (A122853 (n + 1))).toNat

end

end A390958.P8228374866721475950

namespace A390958

/-- `A118807((A089215(n+1)-1)%A122853(n+1))` -/
def P8228374866721475950.Spec : Prop :=
  ∀ n, P8228374866721475950.a n = A390958 (n + 1)

end A390958

/-!
# A390959: The sum of the non-bi-unitary divisors of the numbers that are not exponentially odd.

The programs for A390959, there is no canonical definition to state claims against.
-/

/-! ## A390959.P5121514793460792983

`A319072(A072587(n+1))`
-/

namespace A390959.P5121514793460792983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319072 (A072587 (n + 1)).toNat

end

end A390959.P5121514793460792983

/-!
# A390960: The number of noninfinitary divisors of the numbers whose number of divisors is not a power of 2 (A162643).

The programs for A390960, the canonical program `A390960.P1725280362300566501` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390960 has offset 1).

The definition of A390960 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162643, A348341, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390960.P1725280362300566501

`A348341(A162643(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A390960

/-- `A348341(A162643(n+1))` -/
def P1725280362300566501.Spec : Prop :=
  ∀ n, P1725280362300566501.a n = A390960 (n + 1)

theorem P1725280362300566501.correct : P1725280362300566501.Spec := by
  intro n
  simp only [A390960, Nat.add_sub_cancel]

end A390960

/-!
# A390961: The sum of the noninfinitary divisors of the numbers whose number of divisors is not a power of 2 (A162643).

The programs for A390961, there is no canonical definition to state claims against.
-/

/-! ## A390961.P9222302852192999867

`A348271(A162643(n+1))`
-/

namespace A390961.P9222302852192999867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348271 (A162643 (n + 1)).toNat

end

end A390961.P9222302852192999867

/-!
# A390962: The values of A390868(k) when k runs over the integers that are not exponentially odd.

The programs for A390962, there is no canonical definition to state claims against.
-/

/-! ## A390962.P7646030418083909554

`A390868(A072587(n+1))`
-/

namespace A390962.P7646030418083909554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390868 (A072587 (n + 1)).toNat

end

end A390962.P7646030418083909554

/-!
# A390965: a(n) = (1/(n+1)) * Sum_{k=0..n} k^2 * (k+1) * binomial(2*n-k,n-k).

The programs for A390965, the canonical program `A390965.P17095960951919550593` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390965 has offset 0).

The definition of A390965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390965.P17095960951919550593

`A070857(n)-A070031(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A390965

/-- `A070857(n)-A070031(n)` -/
def P17095960951919550593.Spec : Prop :=
  ∀ n, P17095960951919550593.a n = A390965 n

theorem P17095960951919550593.correct : P17095960951919550593.Spec := by
  intro n
  simp only [A390965]

end A390965

/-! ## A390965.P16057439305931590579

`A071723(n)-A000245(n+1)`
-/

namespace A390965.P16057439305931590579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071723 n - A000245 (n + 1)

end

end A390965.P16057439305931590579

namespace A390965

/-- `A071723(n)-A000245(n+1)` -/
def P16057439305931590579.Spec : Prop :=
  ∀ n, P16057439305931590579.a n = A390965 n

end A390965

/-! ## A390965.P3622740826732343110

`A071737(n)-A000782(n+1)`
-/

namespace A390965.P3622740826732343110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071737 n - A000782 (n + 1)

end

end A390965.P3622740826732343110

namespace A390965

/-- `A071737(n)-A000782(n+1)` -/
def P3622740826732343110.Spec : Prop :=
  ∀ n, P3622740826732343110.a n = A390965 n

end A390965

/-! ## A390965.P16318687322395293645

`A026012(n)+A071723(n)-A071735(n+1)`
-/

namespace A390965.P16318687322395293645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n + (A071723 n - A071735 (n + 1))

end

end A390965.P16318687322395293645

namespace A390965

/-- `A026012(n)+A071723(n)-A071735(n+1)` -/
def P16318687322395293645.Spec : Prop :=
  ∀ n, P16318687322395293645.a n = A390965 n

end A390965

/-! ## A390965.P637940498862826702

`A071723(n)-(A099376(n)+A000108(n+1))`
-/

namespace A390965.P637940498862826702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071723 n - (A099376 n + A000108 (n + 1))

end

end A390965.P637940498862826702

namespace A390965

/-- `A071723(n)-(A099376(n)+A000108(n+1))` -/
def P637940498862826702.Spec : Prop :=
  ∀ n, P637940498862826702.a n = A390965 n

end A390965

/-! ## A390965.P1966034503542531260

`A071722(n+1)-(A099376(n)+A000782(n+2))`
-/

namespace A390965.P1966034503542531260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071722 (n + 1) - (A099376 n + A000782 (n + 2))

end

end A390965.P1966034503542531260

namespace A390965

/-- `A071722(n+1)-(A099376(n)+A000782(n+2))` -/
def P1966034503542531260.Spec : Prop :=
  ∀ n, P1966034503542531260.a n = A390965 n

end A390965

/-! ## A390965.P15006390975262591234

`A000344(n+2)-A071741(n)`
-/

namespace A390965.P15006390975262591234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000344 (n + 2) - A071741 n

end

end A390965.P15006390975262591234

namespace A390965

/-- `A000344(n+2)-A071741(n)` -/
def P15006390975262591234.Spec : Prop :=
  ∀ n, P15006390975262591234.a n = A390965 n

end A390965

/-! ## A390965.P11016186904754940844

`A000344(n+2)+A026029(n)-A026029(n+1)`
-/

namespace A390965.P11016186904754940844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000344 (n + 2) + (A026029 n - A026029 (n + 1))

end

end A390965.P11016186904754940844

namespace A390965

/-- `A000344(n+2)+A026029(n)-A026029(n+1)` -/
def P11016186904754940844.Spec : Prop :=
  ∀ n, P11016186904754940844.a n = A390965 n

end A390965

/-! ## A390965.P4294557671048703282

`A265612(n)+A265612(n)-A265613(n)`
-/

namespace A390965.P4294557671048703282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265612 n + (A265612 n - A265613 n)

end

end A390965.P4294557671048703282

namespace A390965

/-- `A265612(n)+A265612(n)-A265613(n)` -/
def P4294557671048703282.Spec : Prop :=
  ∀ n, P4294557671048703282.a n = A390965 n

end A390965

/-!
# A390966: a(n) = (1/(n+1)) * Sum_{k=0..n} k^3 * (k+1) * binomial(2*n-k,n-k).

The programs for A390966, there is no canonical definition to state claims against.
-/

/-! ## A390966.P3442141715573590606

`A331669(A018019(n))`
-/

namespace A390966.P3442141715573590606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331669 (A018019 n).toNat

end

end A390966.P3442141715573590606

/-!
# A390968: a(n) = (1/(2*n+1)) * Sum_{k=0..n} (k+1)^2 * (2*k+1) * binomial(3*n-k,n-k).

The programs for A390968, the canonical program `A390968.P13054488988277425344` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390968 has offset 0).

The definition of A390968 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390968.P414642627696623928

`2*A006629(n)-A001764(n+1)`
-/

namespace A390968.P414642627696623928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006629 n - A001764 (n + 1)

end

end A390968.P414642627696623928

namespace A390968

/-- `2*A006629(n)-A001764(n+1)` -/
def P414642627696623928.Spec : Prop :=
  ∀ n, P414642627696623928.a n = A390968 n

end A390968

/-! ## A390968.P13054488988277425344

`(3*n+2)*(3*n+3)!/((n+2)!*(2*n+3)!)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A390968

/-- `(3*n+2)*(3*n+3)!/((n+2)!*(2*n+3)!)` -/
def P13054488988277425344.Spec : Prop :=
  ∀ n, P13054488988277425344.a n = (A390968 n : ℚ)

end A390968

/-! ## A390968.P15785738997981311013

`A084081(Δ[n²])`
-/

namespace A390968.P15785738997981311013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084081 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A390968.P15785738997981311013

namespace A390968

/-- `A084081(Δ[n²])` -/
def P15785738997981311013.Spec : Prop :=
  ∀ n, P15785738997981311013.a n = A390968 n

end A390968

/-! ## A390968.P3375157549862180895

`A006013(n+1)-A000139(n+1)`
-/

namespace A390968.P3375157549862180895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 (n + 1) - A000139 (n + 1)

end

end A390968.P3375157549862180895

namespace A390968

/-- `A006013(n+1)-A000139(n+1)` -/
def P3375157549862180895.Spec : Prop :=
  ∀ n, P3375157549862180895.a n = A390968 n

end A390968

/-! ## A390968.P15032186305833707696

`A093951(2*(n+1))-A001764(n+1)`
-/

namespace A390968.P15032186305833707696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093951 (2 * (n + 1)) - A001764 (n + 1)

end

end A390968.P15032186305833707696

namespace A390968

/-- `A093951(2*(n+1))-A001764(n+1)` -/
def P15032186305833707696.Spec : Prop :=
  ∀ n, P15032186305833707696.a n = A390968 n

end A390968

/-!
# A390969: a(n) = (1/(2*n+1)) * Sum_{k=0..n} (k+1)^3 * (2*k+1) * binomial(3*n-k,n-k).

The programs for A390969, the canonical program `A390969.P4739005397819330857` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390969 has offset 0).

The definition of A390969 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390969.P4739005397819330857

`6*(23*n²+30*n+10)*(3*n+2)!/((2*n+5)!*n!)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A390969

/-- `6*(23*n²+30*n+10)*(3*n+2)!/((2*n+5)!*n!)` -/
def P4739005397819330857.Spec : Prop :=
  ∀ n, P4739005397819330857.a n = (A390969 n : ℚ)

end A390969

/-!
# A390971: a(n) = (1/(2*n+1)) * Sum_{k=0..n} k^2 * (2*k+1) * binomial(3*n-k,n-k).

The programs for A390971, there is no canonical definition to state claims against.
-/

/-! ## A390971.P9351347453293997317

`A084081(2*n+1)-A093951(2*n+1)`
-/

namespace A390971.P9351347453293997317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084081 (2 * n + 1) - A093951 (2 * n + 1)

end

end A390971.P9351347453293997317

/-! ## A390971.P10777889093593041372

`A084081(2*n+1)-A056096(n+3)`
-/

namespace A390971.P10777889093593041372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084081 (2 * n + 1) - A056096 (n + 3)

end

end A390971.P10777889093593041372

/-!
# A390972: a(n) = (1/(2*n+1)) * Sum_{k=0..n} k^3 * (2*k+1) * binomial(3*n-k,n-k).

The programs for A390972, there is no canonical definition to state claims against.
-/

/-! ## A390972.P14905466311999658492

`A381881(n)-A381894(A381921(n+1))`
-/

namespace A390972.P14905466311999658492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381881 n - A381894 (A381921 (n + 1)).toNat

end

end A390972.P14905466311999658492

/-!
# A390984: Number of n X n grids with 7 non-attacking kings on each row.

The programs for A390984, there is no canonical definition to state claims against.
-/

/-! ## A390984.P4080135667225576678

`C(A297330(A243529(n+1)), A276086(n+3))`
-/

namespace A390984.P4080135667225576678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A297330 (A243529 (n + 1)).toNat).toNat (A276086 (n + 3)).toNat

end

end A390984.P4080135667225576678

/-!
# A390985: Number of n X n grids with 6 non-attacking kings on each row.

The programs for A390985, there is no canonical definition to state claims against.
-/

/-! ## A390985.P17010090805618984647

`C(A124758(A184945(n)), A008443(n))`
-/

namespace A390985.P17010090805618984647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A124758 (A184945 n).toNat).toNat (A008443 n).toNat

end

end A390985.P17010090805618984647

/-! ## A390985.P11785228718363736908

`C(A260088(A200763(n+1)), A090880(n+1))`
-/

namespace A390985.P11785228718363736908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A260088 (A200763 (n + 1)).toNat).toNat (A090880 (n + 1)).toNat

end

end A390985.P11785228718363736908

/-! ## A390985.P6444107926505392808

`C(A348940(A232023(n+1)), A033677(n+1))`
-/

namespace A390985.P6444107926505392808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A348940 (A232023 (n + 1)).toNat).toNat (A033677 (n + 1)).toNat

end

end A390985.P6444107926505392808

/-! ## A390985.P17787818161582466308

`C(A352523(n), A004709(A352525(2*(n+2))))`
-/

namespace A390985.P17787818161582466308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A352523 n).toNat (A004709 (A352525 (2 * (n + 2))).toNat).toNat

end

end A390985.P17787818161582466308

/-!
# A390988: Numbers k > 1 such that the least prime index of k plus the greatest prime index of k is odd.

The programs for A390988, there is no canonical definition to state claims against.
-/

/-! ## A390988.P16521834606606922946

`∩[A366322(n+1), A391229(n+1)]`
-/

namespace A390988.P16521834606606922946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390988.P16521834606606922946

/-! ## A390988.P2032862025865901565

`A360551(A043317(n+1))`
-/

namespace A390988.P2032862025865901565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360551 (A043317 (n + 1)).toNat

end

end A390988.P2032862025865901565

/-! ## A390988.P8323906790110661727

`A360551(A044914(n+1))`
-/

namespace A390988.P8323906790110661727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360551 (A044914 (n + 1)).toNat

end

end A390988.P8323906790110661727

/-! ## A390988.P1215797422363229321

`A360551(A055648(n+1))`
-/

namespace A390988.P1215797422363229321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360551 (A055648 (n + 1)).toNat

end

end A390988.P1215797422363229321

/-! ## A390988.P4060740387186086244

`A360551(A132378(n+1))`
-/

namespace A390988.P4060740387186086244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360551 (A132378 (n + 1)).toNat

end

end A390988.P4060740387186086244

/-!
# A390989: Triangle read by rows where T(n,k) is the number of integer partitions of n with first sums summing to k+n-1, where 0 <= k < n.

The programs for A390989, there is no canonical definition to state claims against.
-/

/-! ## A390989.P7278726013272266287

`A236859(A244137(n))`
-/

namespace A390989.P7278726013272266287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236859 (A244137 n).toNat

end

end A390989.P7278726013272266287

/-! ## A390989.P5621254068384249376

`A089293(A161552(n))`
-/

namespace A390989.P5621254068384249376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089293 (A161552 n).toNat

end

end A390989.P5621254068384249376

/-! ## A390989.P2550889883694063293

`A212193(A264954(n+2))`
-/

namespace A390989.P2550889883694063293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212193 (A264954 (n + 2)).toNat

end

end A390989.P2550889883694063293

/-! ## A390989.P7910081813275826064

`A124768(gcd(A120730(n), A257740(n)))`
-/

namespace A390989.P7910081813275826064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (Int.gcd (A120730 n) (A257740 n))

end

end A390989.P7910081813275826064

/-! ## A390989.P3949817876456092565

`A373029(n)+A335520(A104804(n+1))`
-/

namespace A390989.P3949817876456092565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373029 n + A335520 (A104804 (n + 1)).toNat

end

end A390989.P3949817876456092565

/-!
# A390990: Sum of first sums of the prime indices of n, with a(1) = 0.

The programs for A390990, the canonical program `A390990.P11391089079633860080` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390990 has offset 1).

The definition of A390990 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056239, A390430, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390990.P11391089079633860080

`2*A056239(n+1)-A390430(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A390990

/-- `2*A056239(n+1)-A390430(n+1)` -/
def P11391089079633860080.Spec : Prop :=
  ∀ n, P11391089079633860080.a n = A390990 (n + 1)

theorem P11391089079633860080.correct : P11391089079633860080.Spec := by
  intro n
  simp only [A390990, Nat.add_sub_cancel]

end A390990

/-! ## A390990.P11867269742722752642

`2*A056239(n+1)-A055396(n+1)-A061395(n+1)`
-/

namespace A390990.P11867269742722752642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056239 (n + 1) - A055396 (n + 1) - A061395 (n + 1)

end

end A390990.P11867269742722752642

namespace A390990

/-- `2*A056239(n+1)-A055396(n+1)-A061395(n+1)` -/
def P11867269742722752642.Spec : Prop :=
  ∀ n, P11867269742722752642.a n = A390990 (n + 1)

end A390990

/-! ## A390990.P3243783319406197940

`A056239(A390449(n+1))`
-/

namespace A390990.P3243783319406197940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A390449 (n + 1)).toNat

end

end A390990.P3243783319406197940

namespace A390990

/-- `A056239(A390449(n+1))` -/
def P3243783319406197940.Spec : Prop :=
  ∀ n, P3243783319406197940.a n = A390990 (n + 1)

end A390990

/-!
# A390991: Sum of first sums of the n-th composition in standard order.

The programs for A390991, there is no canonical definition to state claims against.
-/

/-! ## A390991.P9173861620708710726

`ceil(log2(A390568(n)+1))`
-/

namespace A390991.P9173861620708710726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A390568 n + 1 : ℝ)⌉

end

end A390991.P9173861620708710726

/-! ## A390991.P11640118629371106445

`round(log2(A390568(2*n)+1))`
-/

namespace A390991.P11640118629371106445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A390568 (2 * n) + 1 : ℝ))

end

end A390991.P11640118629371106445

/-! ## A390991.P4198686864844229346

`A130249(A390568(n))`
-/

namespace A390991.P4198686864844229346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130249 (A390568 n).toNat

end

end A390991.P4198686864844229346

/-! ## A390991.P8380894433360164234

`A029837(A390568(n)+1)`
-/

namespace A390991.P8380894433360164234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A390568 n + 1).toNat

end

end A390991.P8380894433360164234

/-! ## A390991.P6683170899136780445

`A063250(A390568(2*n))`
-/

namespace A390991.P6683170899136780445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063250 (A390568 (2 * n)).toNat

end

end A390991.P6683170899136780445

/-! ## A390991.P2422631205870200348

`A029837(or(1, A390568(n)))`
-/

namespace A390991.P2422631205870200348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (Int.lor 1 (A390568 n)).toNat

end

end A390991.P2422631205870200348

/-! ## A390991.P14285094107199499454

`A029837(xor(1, A390568(n)))`
-/

namespace A390991.P14285094107199499454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (Int.xor 1 (A390568 n)).toNat

end

end A390991.P14285094107199499454

/-!
# A390992: Sum of first sums of the binary indices of n.

The programs for A390992, there is no canonical definition to state claims against.
-/

/-! ## A390992.P12088034917733283634

`A390990(A019565(n))`
-/

namespace A390992.P12088034917733283634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390990 (A019565 n).toNat

end

end A390992.P12088034917733283634

/-! ## A390992.P8695679411252587048

`A390991(A395303(n))`
-/

namespace A390992.P8695679411252587048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390991 (A395303 n).toNat

end

end A390992.P8695679411252587048

/-!
# A390993: Number of free polyaboloes (or polytans) with n cells, where the orientation of two triangles sharing a hypotenuse (making up a square) matters.

The programs for A390993, there is no canonical definition to state claims against.
-/

/-! ## A390993.P6820253935004401563

`A391193(∑[n+1])`
-/

namespace A390993.P6820253935004401563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391193 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A390993.P6820253935004401563

/-! ## A390993.P13923267149995539291

`A333381(A000110(n))-A214283(2*n+1)`
-/

namespace A390993.P13923267149995539291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A000110 n).toNat - A214283 (2 * n + 1)

end

end A390993.P13923267149995539291

/-!
# A390994: Number of one-sided polyaboloes (or polytans) with n cells, where the orientation of two triangles sharing a hypotenuse (making up a square) matters.

The programs for A390994, there is no canonical definition to state claims against.
-/

/-! ## A390994.P9440226217627359851

`A105659(A026003(n+1))`
-/

namespace A390994.P9440226217627359851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105659 (A026003 (n + 1)).toNat

end

end A390994.P9440226217627359851

/-!
# A390995: Number of fixed polyaboloes (or polytans) with n cells, where the orientation of two triangles sharing a hypotenuse (making up a square) matters.

The programs for A390995, there is no canonical definition to state claims against.
-/

/-! ## A390995.P15705357033446482799

`A026441(A238940(n+1)+A026401(n+1))`
-/

namespace A390995.P15705357033446482799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026441 (A238940 (n + 1) + A026401 (n + 1)).toNat

end

end A390995.P15705357033446482799

/-!
# A390996: Number of free polyaboloes (or polytans) with n cells, where two triangles sharing a hypotenuse (making up a square) are counted as a single cell.

The programs for A390996, there is no canonical definition to state claims against.
-/

/-! ## A390996.P4416789220398299959

`A120450(A156894(n+1)+3)`
-/

namespace A390996.P4416789220398299959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120450 (A156894 (n + 1) + 3).toNat

end

end A390996.P4416789220398299959

/-!
# A390997: Number of one-sided polyaboloes (or polytans) with n cells, where two triangles sharing a hypotenuse (making up a square) are counted as a single cell.

The programs for A390997, there is no canonical definition to state claims against.
-/

/-! ## A390997.P7776875671958426380

`A210867(n+1)+A093848(A377113(n))`
-/

namespace A390997.P7776875671958426380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210867 (n + 1) + A093848 (A377113 n).toNat

end

end A390997.P7776875671958426380

/-!
# A390999: Number of free polyforms with n cells of two types: unit squares and isosceles right triangles whose short sides have unit length. Cells are joined along sides of equal lengths.

The programs for A390999, there is no canonical definition to state claims against.
-/

/-! ## A390999.P15164366633179924102

`A014085(A273585(n+5))+A010058(n+3)`
-/

namespace A390999.P15164366633179924102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A273585 (n + 5)).toNat + A010058 (n + 3)

end

end A390999.P15164366633179924102

