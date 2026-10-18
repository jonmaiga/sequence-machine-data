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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A224900: a(n) = n!*((n+1)!)^2.

The programs for A224900, the canonical program `A224900.P8975077508029939122` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224900 has offset 0).

The definition of A224900 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*(n+1)!²` (program `A224900.P8975077508029939122`, by `A224900.P8975077508029939122.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A224900.P8975077508029939122

`n!*(n+1)!²`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A224900

/-- `n!*(n+1)!²` -/
def P8975077508029939122.Spec : Prop :=
  ∀ n, (P8975077508029939122.a n : ℤ) = A224900 n

theorem P8975077508029939122.correct : P8975077508029939122.Spec := by
  intro n
  simp only [A224900]

end A224900

/-! ## A224900.P6056374377221749228

`n*(n+1)²*a(n-1)` with `a(0)=1`
-/

namespace A224900.P6056374377221749228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * (n + 1) ^ 2 * a (n - 1)

end

end A224900.P6056374377221749228

namespace A224900

/-- `n*(n+1)²*a(n-1)` -/
def P6056374377221749228.Spec : Prop :=
  ∀ n, (P6056374377221749228.a n : ℤ) = A224900 n

end A224900

/-! ## A224900.P7596821220274051875

`A172492(n)*(n+1)`
-/

namespace A224900.P7596821220274051875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172492 n * (n + 1 : ℤ)

end

end A224900.P7596821220274051875

namespace A224900

/-- `A172492(n)*(n+1)` -/
def P7596821220274051875.Spec : Prop :=
  ∀ n, P7596821220274051875.a n = A224900 n

end A224900

/-! ## A224900.P5506120009185401710

`(n+1)!^2*n!`
-/

namespace A224900.P5506120009185401710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) ^ 2 * Nat.factorial n

end

end A224900.P5506120009185401710

namespace A224900

/-- `(n+1)!^2*n!` -/
def P5506120009185401710.Spec : Prop :=
  ∀ n, (P5506120009185401710.a n : ℤ) = A224900 n

theorem P5506120009185401710.correct : P5506120009185401710.Spec := by
  intro n
  simp only [A224900, Nat.add_sub_cancel, A224900.P5506120009185401710.a, A224900.P8975077508029939122.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A224900

/-! ## A224900.P12564937624625220179

`n!*∏[record[(n-1)²]]`
-/

namespace A224900.P12564937624625220179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A224900.P12564937624625220179

namespace A224900

/-- `n!*∏[record[(n-1)²]]` -/
def P12564937624625220179.Spec : Prop :=
  ∀ n, P12564937624625220179.a n = A224900 n

end A224900

/-!
# A224901: Least positive integer k such that k*sigma(n) forms an increasing sequence.

The programs for A224901, there is no canonical definition to state claims against.
-/

/-! ## A224901.P10472654074805363668

`A261585(∑{d}[A295771(n), #])`
-/

namespace A224901.P10472654074805363668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A224901.P10472654074805363668

/-! ## A224901.P14920836171333275902

`A000120(A359576(n+1)+A070897(n+1))`
-/

namespace A224901.P14920836171333275902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A359576 (n + 1) + A070897 (n + 1)).toNat

end

end A224901.P14920836171333275902

/-!
# A224902: O.g.f.: exp( Sum_{n>=1} (sigma(2*n^4) - sigma(n^4)) * x^n/n ).

The programs for A224902, there is no canonical definition to state claims against.
-/

/-! ## A224902.P9483741934571611946

`A129603(comp[or(2, n)+n]²)+1`
-/

namespace A224902.P9483741934571611946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129603 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2) + 1

end

end A224902.P9483741934571611946

/-!
# A224903: a(n) = sigma(2*n^4) - sigma(n^4).

The programs for A224903, the canonical program `A224903.P10254843835854398111` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224903 has offset 1).

The definition of A224903 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224903.P10254843835854398111

`A054785((n+1)^4)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A224903

/-- `A054785((n+1)^4)` -/
def P10254843835854398111.Spec : Prop :=
  ∀ n, P10254843835854398111.a n = A224903 (n + 1)

theorem P10254843835854398111.correct : P10254843835854398111.Spec := by
  intro n
  simp only [A224903, Nat.add_sub_cancel]

end A224903

/-! ## A224903.P7925589527260054267

`A202994((n+1)/2^val(n+1, 2))+A202994(n+1)`
-/

namespace A224903.P7925589527260054267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202994 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat + A202994 (n + 1)

end

end A224903.P7925589527260054267

namespace A224903

/-- `A202994((n+1)/2^val(n+1, 2))+A202994(n+1)` -/
def P7925589527260054267.Spec : Prop :=
  ∀ n, P7925589527260054267.a n = A224903 (n + 1)

end A224903

/-! ## A224903.P773025527454876865

`A202994(A000265(n+1))+A202994(n+1)`
-/

namespace A224903.P773025527454876865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202994 (A000265 (n + 1)).toNat + A202994 (n + 1)

end

end A224903.P773025527454876865

namespace A224903

/-- `A202994(A000265(n+1))+A202994(n+1)` -/
def P773025527454876865.Spec : Prop :=
  ∀ n, P773025527454876865.a n = A224903 (n + 1)

end A224903

/-! ## A224903.P17963886795571833760

`A195585((n+1)²)`
-/

namespace A224903.P17963886795571833760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195585 ((n + 1) ^ 2)

end

end A224903.P17963886795571833760

namespace A224903

/-- `A195585((n+1)²)` -/
def P17963886795571833760.Spec : Prop :=
  ∀ n, P17963886795571833760.a n = A224903 (n + 1)

end A224903

/-! ## A224903.P16181316917899312892

`∑{d}[(n+1)^4, lcm(2, #)]`
-/

namespace A224903.P16181316917899312892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.lcm 2 d

end

end A224903.P16181316917899312892

namespace A224903

/-- `∑{d}[(n+1)^4, lcm(2, #)]` -/
def P16181316917899312892.Spec : Prop :=
  ∀ n, (P16181316917899312892.a n : ℤ) = A224903 (n + 1)

end A224903

/-!
# A224904: Primes p such that the decimal expansion of p^5 ends in p.

The programs for A224904, there is no canonical definition to state claims against.
-/

/-! ## A224904.P9349729802130732444

`p?[A068407(n+1)]`
-/

namespace A224904.P9349729802130732444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224904.P9349729802130732444

/-! ## A224904.P3788937714994245647

`p?[A056033(n+1)+char[2]]`
-/

namespace A224904.P3788937714994245647
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056033 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224904.P3788937714994245647

/-! ## A224904.P9407338880569966412

`p?[record[A068407(A133310(n))]]`
-/

namespace A224904.P9407338880569966412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068407 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224904.P9407338880569966412

/-! ## A224904.P3760837329246051298

`p?[record[A068407(A291769(n))]]`
-/

namespace A224904.P3760837329246051298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068407 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224904.P3760837329246051298

/-! ## A224904.P17814393339845351965

`p?[record[A068407(A324346(n))]]`
-/

namespace A224904.P17814393339845351965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068407 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224904.P17814393339845351965

/-!
# A224907: Numbers n such that the sum of reciprocals of even divisors of n > 1.

The programs for A224907, the canonical program `A224907.P17184024121669876912` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224907 has offset 1).

The definition of A224907 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A224907.P17184024121669876912

`2*A005101(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A224907

/-- `2*A005101(n+1)` -/
def P17184024121669876912.Spec : Prop :=
  ∀ n, P17184024121669876912.a n = A224907 (n + 1)

theorem P17184024121669876912.correct : P17184024121669876912.Spec := by
  intro n
  simp only [A224907, Nat.add_sub_cancel]

end A224907

/-! ## A224907.P12972986006265997322

`2*(eq[0, A294935(n+1)]+1)`
-/

namespace A224907.P12972986006265997322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294935 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A224907.P12972986006265997322

namespace A224907

/-- `2*(eq[0, A294935(n+1)]+1)` -/
def P12972986006265997322.Spec : Prop :=
  ∀ n, (P12972986006265997322.a n : ℤ) = A224907 (n + 1)

end A224907

/-! ## A224907.P13335553281701688706

`2*(eq[1, A060862(n+1)]+1)`
-/

namespace A224907.P13335553281701688706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A224907.P13335553281701688706

namespace A224907

/-- `2*(eq[1, A060862(n+1)]+1)` -/
def P13335553281701688706.Spec : Prop :=
  ∀ n, (P13335553281701688706.a n : ℤ) = A224907 (n + 1)

end A224907

/-! ## A224907.P3002111140270610335

`2*(eq[1, A082551(n+1)]+1)`
-/

namespace A224907.P3002111140270610335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A224907.P3002111140270610335

namespace A224907

/-- `2*(eq[1, A082551(n+1)]+1)` -/
def P3002111140270610335.Spec : Prop :=
  ∀ n, (P3002111140270610335.a n : ℤ) = A224907 (n + 1)

end A224907

/-! ## A224907.P12984495435547809360

`2*(lt[0, A318679(n+1)]+1)`
-/

namespace A224907.P12984495435547809360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318679 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A224907.P12984495435547809360

namespace A224907

/-- `2*(lt[0, A318679(n+1)]+1)` -/
def P12984495435547809360.Spec : Prop :=
  ∀ n, (P12984495435547809360.a n : ℤ) = A224907 (n + 1)

end A224907

/-! ## A224907.P16826212625482896420

`2*(lt[A341621(n+1)², 1]+1)`
-/

namespace A224907.P16826212625482896420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341621 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A224907.P16826212625482896420

namespace A224907

/-- `2*(lt[A341621(n+1)², 1]+1)` -/
def P16826212625482896420.Spec : Prop :=
  ∀ n, (P16826212625482896420.a n : ℤ) = A224907 (n + 1)

end A224907

/-! ## A224907.P9908002686166486411

`2*(lt[2*(n+1), A000203(n+1)]+1)`
-/

namespace A224907.P9908002686166486411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A224907.P9908002686166486411

namespace A224907

/-- `2*(lt[2*(n+1), A000203(n+1)]+1)` -/
def P9908002686166486411.Spec : Prop :=
  ∀ n, (P9908002686166486411.a n : ℤ) = A224907 (n + 1)

end A224907

/-! ## A224907.P6647429353849283984

`record[2*A005101(A305296(n))]`
-/

namespace A224907.P6647429353849283984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005101 (A305296 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224907.P6647429353849283984

namespace A224907

/-- `record[2*A005101(A305296(n))]` -/
def P6647429353849283984.Spec : Prop :=
  ∀ n, P6647429353849283984.a n = A224907 (n + 1)

end A224907

/-! ## A224907.P5106789162034734309

`record[2*A005101(A324346(n))]`
-/

namespace A224907.P5106789162034734309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005101 (A324346 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224907.P5106789162034734309

namespace A224907

/-- `record[2*A005101(A324346(n))]` -/
def P5106789162034734309.Spec : Prop :=
  ∀ n, P5106789162034734309.a n = A224907 (n + 1)

end A224907

/-! ## A224907.P6180677620826878311

`record[2*A005101(A324347(n))]`
-/

namespace A224907.P6180677620826878311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005101 (A324347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224907.P6180677620826878311

namespace A224907

/-- `record[2*A005101(A324347(n))]` -/
def P6180677620826878311.Spec : Prop :=
  ∀ n, P6180677620826878311.a n = A224907 (n + 1)

end A224907

/-! ## A224907.P8723576253491807420

`record[2*A005101(A324390(n))]`
-/

namespace A224907.P8723576253491807420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005101 (A324390 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224907.P8723576253491807420

namespace A224907

/-- `record[2*A005101(A324390(n))]` -/
def P8723576253491807420.Spec : Prop :=
  ∀ n, P8723576253491807420.a n = A224907 (n + 1)

end A224907

/-! ## A224907.P10350418223274038023

`record[2*A005101(A328399(n))]`
-/

namespace A224907.P10350418223274038023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005101 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224907.P10350418223274038023

namespace A224907

/-- `record[2*A005101(A328399(n))]` -/
def P10350418223274038023.Spec : Prop :=
  ∀ n, P10350418223274038023.a n = A224907 (n + 1)

end A224907

/-! ## A224907.P3451584728164381071

`A204822(n+1)-A033881(n+1)`
-/

namespace A224907.P3451584728164381071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204822 (n + 1) - A033881 (n + 1)

end

end A224907.P3451584728164381071

namespace A224907

/-- `A204822(n+1)-A033881(n+1)` -/
def P3451584728164381071.Spec : Prop :=
  ∀ n, P3451584728164381071.a n = A224907 (n + 1)

end A224907

/-! ## A224907.P2527703239078705597

`A000203(A005101(n+1))-A033881(n+1)`
-/

namespace A224907.P2527703239078705597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A005101 (n + 1)).toNat - A033881 (n + 1)

end

end A224907.P2527703239078705597

namespace A224907

/-- `A000203(A005101(n+1))-A033881(n+1)` -/
def P2527703239078705597.Spec : Prop :=
  ∀ n, P2527703239078705597.a n = A224907 (n + 1)

end A224907

/-! ## A224907.P8512260910809708484

`A005101(n+1)+∑{d}[A005101(n+1), A000010(#)]`
-/

namespace A224907.P8512260910809708484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1) + ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A224907.P8512260910809708484

namespace A224907

/-- `A005101(n+1)+∑{d}[A005101(n+1), A000010(#)]` -/
def P8512260910809708484.Spec : Prop :=
  ∀ n, P8512260910809708484.a n = A224907 (n + 1)

end A224907

/-! ## A224907.P10114705030753880853

`A005101(n+1)+A204822(n+1)-A205098(n+1)`
-/

namespace A224907.P10114705030753880853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1) + (A204822 (n + 1) - A205098 (n + 1))

end

end A224907.P10114705030753880853

namespace A224907

/-- `A005101(n+1)+A204822(n+1)-A205098(n+1)` -/
def P10114705030753880853.Spec : Prop :=
  ∀ n, P10114705030753880853.a n = A224907 (n + 1)

end A224907

/-! ## A224907.P4057051302492280544

`A005101(n+1)+A005101(n+2)-A125115(n+1)`
-/

namespace A224907.P4057051302492280544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1) + (A005101 (n + 2) - A125115 (n + 1))

end

end A224907.P4057051302492280544

namespace A224907

/-- `A005101(n+1)+A005101(n+2)-A125115(n+1)` -/
def P4057051302492280544.Spec : Prop :=
  ∀ n, P4057051302492280544.a n = A224907 (n + 1)

end A224907

/-! ## A224907.P8020008903833836584

`record[2*A005101(A133310(n))]`
-/

namespace A224907.P8020008903833836584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005101 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224907.P8020008903833836584

namespace A224907

/-- `record[2*A005101(A133310(n))]` -/
def P8020008903833836584.Spec : Prop :=
  ∀ n, P8020008903833836584.a n = A224907 (n + 1)

end A224907

/-! ## A224907.P15295899323877620818

`record[2*A005101(A246694(n))]`
-/

namespace A224907.P15295899323877620818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005101 (A246694 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224907.P15295899323877620818

namespace A224907

/-- `record[2*A005101(A246694(n))]` -/
def P15295899323877620818.Spec : Prop :=
  ∀ n, P15295899323877620818.a n = A224907 (n + 1)

end A224907

/-!
# A224908: Given n-th prime p, a(n)=number of primes of the form p+q+1 where q is any prime < p.

The programs for A224908, there is no canonical definition to state claims against.
-/

/-! ## A224908.P14180968238908435419

`A305866(n+1)-A079295(n+1)`
-/

namespace A224908.P14180968238908435419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305866 (n + 1) - A079295 (n + 1)

end

end A224908.P14180968238908435419

/-! ## A224908.P3307187700624538927

`A092953(A008864(n+1))-A079295(n+1)`
-/

namespace A224908.P3307187700624538927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A008864 (n + 1)).toNat - A079295 (n + 1)

end

end A224908.P3307187700624538927

/-! ## A224908.P9239663631216972900

`A305866(n+1)-A010051(A072055(n+1))`
-/

namespace A224908.P9239663631216972900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305866 (n + 1) - A010051 (A072055 (n + 1)).toNat

end

end A224908.P9239663631216972900

/-! ## A224908.P16442771841554110624

`A202472(A130291(n+1))-A079295(n+1)`
-/

namespace A224908.P16442771841554110624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202472 (A130291 (n + 1)).toNat - A079295 (n + 1)

end

end A224908.P16442771841554110624

/-! ## A224908.P8519270583442849128

`A092953(A008864(n+1))-A010051(A072055(n+1))`
-/

namespace A224908.P8519270583442849128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A008864 (n + 1)).toNat - A010051 (A072055 (n + 1)).toNat

end

end A224908.P8519270583442849128

/-! ## A224908.P6375708597916895022

`A092953(A175216(n+1))-A010051(A072055(n+1))`
-/

namespace A224908.P6375708597916895022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A175216 (n + 1)).toNat - A010051 (A072055 (n + 1)).toNat

end

end A224908.P6375708597916895022

/-! ## A224908.P10846311687402053828

`A202472(A130291(n+1))-A010051(A072055(n+1))`
-/

namespace A224908.P10846311687402053828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202472 (A130291 (n + 1)).toNat - A010051 (A072055 (n + 1)).toNat

end

end A224908.P10846311687402053828

/-! ## A224908.P4346695118779485488

`A092953(A000040(n+1)+1)-A010051(A072055(n+1))`
-/

namespace A224908.P4346695118779485488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (A000040 (n + 1) + 1).toNat - A010051 (A072055 (n + 1)).toNat

end

end A224908.P4346695118779485488

/-!
# A224909: a(1) = a(2) = 1; a(n) = (a(n-1) + a(n-2)) mod (n - a(n-1)).

The programs for A224909, the canonical program `A224909.P14683529990226286154` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224909 has offset 1).

The definition of A224909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224909.P14683529990226286154

`(a(n-2)+n+1)%(n+1-a(n-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A224909

/-- `(a(n-2)+n+1)%(n+1-a(n-1))` -/
def P14683529990226286154.Spec : Prop :=
  ∀ n, P14683529990226286154.a n = A224909 (n + 1)

theorem P14683529990226286154.correct : P14683529990226286154.Spec := by
  intro n
  simp only [A224909, Nat.add_sub_cancel]

end A224909

/-!
# A224912: Numbers m for which Sum_{i=1..k} (p(i)/(p(i)-1)) + Product_{i=1..k} (p(i)/(p(i)-1)) is an integer, where p(i) are the k prime factors of m (with multiplicity).

The programs for A224912, there is no canonical definition to state claims against.
-/

/-! ## A224912.P3850194302916561337

`record[A290104(A063174(2*n+1))]`
-/

namespace A224912.P3850194302916561337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (A063174 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224912.P3850194302916561337

/-! ## A224912.P2059817704050927693

`∩[A078829(n+1), A345914(n+1)]`
-/

namespace A224912.P2059817704050927693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224912.P2059817704050927693

/-! ## A224912.P540512193859683897

`∩[A078829(n+1), A374633(n+1)]`
-/

namespace A224912.P540512193859683897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224912.P540512193859683897

/-! ## A224912.P18041798667910212321

`∩[A078829(n+1), A374685(n+1)]`
-/

namespace A224912.P18041798667910212321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A224912.P18041798667910212321

/-!
# A224913: Number of different nonisomorphic antimatroids on n labeled items.

The programs for A224913, there is no canonical definition to state claims against.
-/

/-! ## A224913.P6682008382552522041

`A214701(A002473(n!))`
-/

namespace A224913.P6682008382552522041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A002473 (Nat.factorial n)).toNat

end

end A224913.P6682008382552522041

/-! ## A224913.P5265498074598803157

`A071670(∏[A076876(n)])`
-/

namespace A224913.P5265498074598803157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071670 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A224913.P5265498074598803157

/-!
# A224914: Partial sums of A217854.

The programs for A224914, the canonical program `A224914.P9818361932979528160` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224914 has offset 1).

The definition of A224914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224914.P9818361932979528160

`∑[∏{d}[n+1, -#²]]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A224914

/-- `∑[∏{d}[n+1, -#²]]` -/
def P9818361932979528160.Spec : Prop :=
  ∀ n, P9818361932979528160.a n = A224914 (n + 1)

theorem P9818361932979528160.correct : P9818361932979528160.Spec := by
  intro n
  simp only [A224914, Nat.add_sub_cancel]

end A224914

/-! ## A224914.P7299856395052775464

`∑[A217854(n+1)]`
-/

namespace A224914.P7299856395052775464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224914.P7299856395052775464

namespace A224914

/-- `∑[A217854(n+1)]` -/
def P7299856395052775464.Spec : Prop :=
  ∀ n, P7299856395052775464.a n = A224914 (n + 1)

end A224914

/-! ## A224914.P2587153463452957935

`∑[(-(n+1))^A000005(n+1)]`
-/

namespace A224914.P2587153463452957935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-(n + 1 : ℤ) : ℚ) ^ (A000005 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224914.P2587153463452957935

namespace A224914

/-- `∑[(-(n+1))^A000005(n+1)]` -/
def P2587153463452957935.Spec : Prop :=
  ∀ n, P2587153463452957935.a n = (A224914 (n + 1) : ℚ)

end A224914

/-! ## A224914.P7318714076898784214

`∑[(-(n+1))^(n+1-A049820(n+1))]`
-/

namespace A224914.P7318714076898784214
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-(n + 1 : ℤ) : ℚ) ^ ((n + 1 : ℤ) - A049820 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224914.P7318714076898784214

namespace A224914

/-- `∑[(-(n+1))^(n+1-A049820(n+1))]` -/
def P7318714076898784214.Spec : Prop :=
  ∀ n, P7318714076898784214.a n = (A224914 (n + 1) : ℚ)

end A224914

/-! ## A224914.P13800369550107971968

`∑[A130472(2*n+1)^∏{e}[n+1, #+1]]`
-/

namespace A224914.P13800369550107971968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (2 * n + 1) ^ (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224914.P13800369550107971968

namespace A224914

/-- `∑[A130472(2*n+1)^∏{e}[n+1, #+1]]` -/
def P13800369550107971968.Spec : Prop :=
  ∀ n, P13800369550107971968.a n = A224914 (n + 1)

end A224914

/-! ## A224914.P9146384598988043714

`∑[A062758(n+1)*A158387(n+1)]`
-/

namespace A224914.P9146384598988043714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062758 (n + 1) * A158387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224914.P9146384598988043714

namespace A224914

/-- `∑[A062758(n+1)*A158387(n+1)]` -/
def P9146384598988043714.Spec : Prop :=
  ∀ n, P9146384598988043714.a n = A224914 (n + 1)

end A224914

/-!
# A224915: a(n) = Sum_{k=0..n} n XOR k where XOR is the bitwise logical exclusive-or operator.

The programs for A224915, the canonical program `A224915.P15850589756246024201` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224915 has offset 0).

The definition of A224915 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001196, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A224915.P15850589756246024201

`(A001196(n)-n)/2`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A224915

/-- `(A001196(n)-n)/2` -/
def P15850589756246024201.Spec : Prop :=
  ∀ n, P15850589756246024201.a n = (A224915 n : ℚ)

end A224915

/-! ## A224915.P2135151162684005293

`A350093(n)-A222423(n)`
-/

namespace A224915.P2135151162684005293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350093 n - A222423 n

end

end A224915.P2135151162684005293

namespace A224915

/-- `A350093(n)-A222423(n)` -/
def P2135151162684005293.Spec : Prop :=
  ∀ n, P2135151162684005293.a n = A224915 n

end A224915

/-! ## A224915.P544058850016333072

`∑[and(n, -n)²]`
-/

namespace A224915.P544058850016333072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224915.P544058850016333072

namespace A224915

/-- `∑[and(n, -n)²]` -/
def P544058850016333072.Spec : Prop :=
  ∀ n, P544058850016333072.a n = A224915 n

end A224915

/-! ## A224915.P2709880619540039445

`∑[or(n, -n)²]`
-/

namespace A224915.P2709880619540039445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224915.P2709880619540039445

namespace A224915

/-- `∑[or(n, -n)²]` -/
def P2709880619540039445.Spec : Prop :=
  ∀ n, P2709880619540039445.a n = A224915 n

end A224915

/-! ## A224915.P17645342487417640757

`∑[(xor(n, -n)/2)²]`
-/

namespace A224915.P17645342487417640757
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.xor (n : ℤ) (-(n : ℤ)) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224915.P17645342487417640757

namespace A224915

/-- `∑[(xor(n, -n)/2)²]` -/
def P17645342487417640757.Spec : Prop :=
  ∀ n, P17645342487417640757.a n = (A224915 n : ℚ)

end A224915

/-! ## A224915.P18344954861861604310

`∑[(and(n, n-1)-n)²]`
-/

namespace A224915.P18344954861861604310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) ((n : ℤ) - 1) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224915.P18344954861861604310

namespace A224915

/-- `∑[(and(n, n-1)-n)²]` -/
def P18344954861861604310.Spec : Prop :=
  ∀ n, P18344954861861604310.a n = A224915 n

end A224915

/-! ## A224915.P17219272127485108879

`a(n-1)+4^val(n, 2)` with `a(0)=0`
-/

namespace A224915.P17219272127485108879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 4 ^ SequenceMachineLib.valuation n 2

end

end A224915.P17219272127485108879

namespace A224915

/-- `a(n-1)+4^val(n, 2)` -/
def P17219272127485108879.Spec : Prop :=
  ∀ n, (P17219272127485108879.a n : ℤ) = A224915 n

end A224915

/-! ## A224915.P14172131643132234825

`a(n-1)+and(n, -n)²` with `a(0)=0`
-/

namespace A224915.P14172131643132234825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.land (n : ℤ) (-(n : ℤ)) ^ 2

end

end A224915.P14172131643132234825

namespace A224915

/-- `a(n-1)+and(n, -n)²` -/
def P14172131643132234825.Spec : Prop :=
  ∀ n, P14172131643132234825.a n = A224915 n

end A224915

/-! ## A224915.P13132116841215600791

`a(n-1)+or(n, -n)²` with `a(0)=0`
-/

namespace A224915.P13132116841215600791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.lor (n : ℤ) (-(n : ℤ)) ^ 2

end

end A224915.P13132116841215600791

namespace A224915

/-- `a(n-1)+or(n, -n)²` -/
def P13132116841215600791.Spec : Prop :=
  ∀ n, P13132116841215600791.a n = A224915 n

end A224915

/-! ## A224915.P17154978368450360248

`∑[(n-1-or(n, n-1))²]`
-/

namespace A224915.P17154978368450360248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 - Int.lor (n : ℤ) ((n : ℤ) - 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224915.P17154978368450360248

namespace A224915

/-- `∑[(n-1-or(n, n-1))²]` -/
def P17154978368450360248.Spec : Prop :=
  ∀ n, P17154978368450360248.a n = A224915 n

end A224915

/-! ## A224915.P8840881816135826770

`∑[4^val(abs(1-n)+1, 2)]-4`
-/

namespace A224915.P8840881816135826770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A224915.P8840881816135826770

namespace A224915

/-- `∑[4^val(abs(1-n)+1, 2)]-4` -/
def P8840881816135826770.Spec : Prop :=
  ∀ n, P8840881816135826770.a n = A224915 n

end A224915

/-! ## A224915.P8753218188893410829

`a(n-1)+(and(n, n-1)-n)²` with `a(0)=0`
-/

namespace A224915.P8753218188893410829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (Int.land (n : ℤ) ((n : ℤ) - 1) - (n : ℤ)) ^ 2

end

end A224915.P8753218188893410829

namespace A224915

/-- `a(n-1)+(and(n, n-1)-n)²` -/
def P8753218188893410829.Spec : Prop :=
  ∀ n, P8753218188893410829.a n = A224915 n

end A224915

/-! ## A224915.P15130908194765381383

`∑[(n-A285326(n))²]`
-/

namespace A224915.P15130908194765381383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A285326 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224915.P15130908194765381383

namespace A224915

/-- `∑[(n-A285326(n))²]` -/
def P15130908194765381383.Spec : Prop :=
  ∀ n, P15130908194765381383.a n = A224915 n

end A224915

/-! ## A224915.P14014043604100817555

`∑[A000010(xor(n, abs(1-n))+1)²]-1`
-/

namespace A224915.P14014043604100817555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.xor (n : ℤ) |1 - (n : ℤ)| + 1).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A224915.P14014043604100817555

namespace A224915

/-- `∑[A000010(xor(n, abs(1-n))+1)²]-1` -/
def P14014043604100817555.Spec : Prop :=
  ∀ n, P14014043604100817555.a n = A224915 n

end A224915

/-! ## A224915.P11265573161500737674

`A045943(n)-2*A222423(n)`
-/

namespace A224915.P11265573161500737674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n - 2 * A222423 n

end

end A224915.P11265573161500737674

namespace A224915

/-- `A045943(n)-2*A222423(n)` -/
def P11265573161500737674.Spec : Prop :=
  ∀ n, P11265573161500737674.a n = A224915 n

end A224915

/-! ## A224915.P6679202216892128426

`2*A350093(n)-A045943(n)`
-/

namespace A224915.P6679202216892128426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A350093 n - A045943 n

end

end A224915.P6679202216892128426

namespace A224915

/-- `2*A350093(n)-A045943(n)` -/
def P6679202216892128426.Spec : Prop :=
  ∀ n, P6679202216892128426.a n = A224915 n

end A224915

/-! ## A224915.P13230673135955659514

`∑[A008585(n)]-2*A222423(n)`
-/

namespace A224915.P13230673135955659514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A222423 n

end

end A224915.P13230673135955659514

namespace A224915

/-- `∑[A008585(n)]-2*A222423(n)` -/
def P13230673135955659514.Spec : Prop :=
  ∀ n, P13230673135955659514.a n = A224915 n

end A224915

/-! ## A224915.P12308544086421008664

`∑[A006519(n+1)²]-A006519(n+1)²`
-/

namespace A224915.P12308544086421008664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006519 (n + 1) ^ 2

end

end A224915.P12308544086421008664

namespace A224915

/-- `∑[A006519(n+1)²]-A006519(n+1)²` -/
def P12308544086421008664.Spec : Prop :=
  ∀ n, P12308544086421008664.a n = A224915 n

end A224915

/-! ## A224915.P16752804453488888150

`∑[A055975(n+1)²]-A055975(n+1)²`
-/

namespace A224915.P16752804453488888150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A055975 (n + 1) ^ 2

end

end A224915.P16752804453488888150

namespace A224915

/-- `∑[A055975(n+1)²]-A055975(n+1)²` -/
def P16752804453488888150.Spec : Prop :=
  ∀ n, P16752804453488888150.a n = A224915 n

end A224915

/-! ## A224915.P14567208351481533199

`∑[A118827(n+1)²]-A118827(n+1)²`
-/

namespace A224915.P14567208351481533199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118827 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A118827 (n + 1) ^ 2

end

end A224915.P14567208351481533199

namespace A224915

/-- `∑[A118827(n+1)²]-A118827(n+1)²` -/
def P14567208351481533199.Spec : Prop :=
  ∀ n, P14567208351481533199.a n = A224915 n

end A224915

/-!
# A224916: Expansion of chi(x)^2 / chi(-x^2)^6 in powers of x where chi() is a Ramanujan theta function.

The programs for A224916, there is no canonical definition to state claims against.
-/

/-! ## A224916.P15765972416982483055

`A112160(2*n+1)/4`
-/

namespace A224916.P15765972416982483055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112160 (2 * n + 1) : ℚ) / 4

end

end A224916.P15765972416982483055

/-! ## A224916.P2209192013077677934

`abs(A022599(2*n+1)/4)`
-/

namespace A224916.P2209192013077677934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A022599 (2 * n + 1) : ℚ) / 4|

end

end A224916.P2209192013077677934

/-! ## A224916.P10765762597576395396

`-A022599(n+1+n)/4`
-/

namespace A224916.P10765762597576395396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A022599 (n + 1 + n) : ℚ) / 4)

end

end A224916.P10765762597576395396

/-! ## A224916.P9320911306838469338

`A227033(4*n+2)/4`
-/

namespace A224916.P9320911306838469338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227033 (4 * n + 2) : ℚ) / 4

end

end A224916.P9320911306838469338

/-! ## A224916.P12841917330084538499

`record[A022599(n)/A339719(A174354(2*n))]`
-/

namespace A224916.P12841917330084538499
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022599 n : ℚ) / (A339719 (A174354 (2 * n)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224916.P12841917330084538499

/-!
# A224917: Stable k-tree numbers.

The programs for A224917, there is no canonical definition to state claims against.
-/

/-! ## A224917.P7094661870395337539

`A370770(∑[4*n])`
-/

namespace A224917.P7094661870395337539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370770 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224917.P7094661870395337539

/-! ## A224917.P7397951440196715971

`A322754(A047842(n)-3)`
-/

namespace A224917.P7397951440196715971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322754 (A047842 n - 3).toNat

end

end A224917.P7397951440196715971

/-! ## A224917.P6298290610237666488

`A322754(A024664(n)+7)`
-/

namespace A224917.P6298290610237666488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322754 (A024664 n + 7).toNat

end

end A224917.P6298290610237666488

/-! ## A224917.P11548071426570517630

`A322754(A087051(n)+7)`
-/

namespace A224917.P11548071426570517630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322754 (A087051 n + 7).toNat

end

end A224917.P11548071426570517630

/-! ## A224917.P4529395942888804836

`A322754(A077168(n+4)+2)`
-/

namespace A224917.P4529395942888804836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322754 (A077168 (n + 4) + 2).toNat

end

end A224917.P4529395942888804836

/-!
# A224920: Fifth powers expressed in base 3.

The programs for A224920, there is no canonical definition to state claims against.
-/

/-! ## A224920.P17297328338795319802

`A007089((n+1)^5)`
-/

namespace A224920.P17297328338795319802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 ((n + 1) ^ 5)

end

end A224920.P17297328338795319802

/-! ## A224920.P5897824034806218878

`A343810((n+1)^5)/4`
-/

namespace A224920.P5897824034806218878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343810 ((n + 1) ^ 5) : ℚ) / 4

end

end A224920.P5897824034806218878

/-!
# A224921: Number of Pythagorean triples (a, b, c) with a^2 + b^2 = c^2 and 0 < a < b < c < n.

The programs for A224921, the canonical program `A224921.P7973326342640336391` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224921 has offset 1).

The definition of A224921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224921.P4369172576192839036

`∑[A063014(n)-1]`
-/

namespace A224921.P4369172576192839036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224921.P4369172576192839036

namespace A224921

/-- `∑[A063014(n)-1]` -/
def P4369172576192839036.Spec : Prop :=
  ∀ n, P4369172576192839036.a n = A224921 (n + 1)

end A224921

/-! ## A224921.P7278902211687308840

`∑[A046080(abs(1-n)+1)]`
-/

namespace A224921.P7278902211687308840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224921.P7278902211687308840

namespace A224921

/-- `∑[A046080(abs(1-n)+1)]` -/
def P7278902211687308840.Spec : Prop :=
  ∀ n, P7278902211687308840.a n = A224921 (n + 1)

end A224921

/-! ## A224921.P7973326342640336391

`A063468(A028310(n))/2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A224921

/-- `A063468(A028310(n))/2` -/
def P7973326342640336391.Spec : Prop :=
  ∀ n, P7973326342640336391.a n = (A224921 (n + 1) : ℚ)

end A224921

/-! ## A224921.P15840387652614269924

`∑[A046080(n+1)]-A046080(n+1)`
-/

namespace A224921.P15840387652614269924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A046080 (n + 1)

end

end A224921.P15840387652614269924

namespace A224921

/-- `∑[A046080(n+1)]-A046080(n+1)` -/
def P15840387652614269924.Spec : Prop :=
  ∀ n, P15840387652614269924.a n = A224921 (n + 1)

end A224921

/-! ## A224921.P14638270663476467403

`∑[A328712(2*(abs(1-n)+1))]`
-/

namespace A224921.P14638270663476467403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (2 * (|1 - (n : ℤ)| + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224921.P14638270663476467403

namespace A224921

/-- `∑[A328712(2*(abs(1-n)+1))]` -/
def P14638270663476467403.Spec : Prop :=
  ∀ n, P14638270663476467403.a n = A224921 (n + 1)

end A224921

/-! ## A224921.P5857166464950858186

`∑[A328712(2*(n+1))]-A328712(2*(n+1))`
-/

namespace A224921.P5857166464950858186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A328712 (2 * (n + 1))

end

end A224921.P5857166464950858186

namespace A224921

/-- `∑[A328712(2*(n+1))]-A328712(2*(n+1))` -/
def P5857166464950858186.Spec : Prop :=
  ∀ n, P5857166464950858186.a n = A224921 (n + 1)

end A224921

/-! ## A224921.P2358336971882851282

`∑[A004526(A256452(A008486(n)))]`
-/

namespace A224921.P2358336971882851282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A256452 (A008486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224921.P2358336971882851282

namespace A224921

/-- `∑[A004526(A256452(A008486(n)))]` -/
def P2358336971882851282.Spec : Prop :=
  ∀ n, P2358336971882851282.a n = A224921 (n + 1)

end A224921

/-! ## A224921.P10184032929158891719

`(A211636(n)-A211637(n))/2`
-/

namespace A224921.P10184032929158891719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211636 n - A211637 n : ℚ) / 2

end

end A224921.P10184032929158891719

namespace A224921

/-- `(A211636(n)-A211637(n))/2` -/
def P10184032929158891719.Spec : Prop :=
  ∀ n, P10184032929158891719.a n = (A224921 (n + 1) : ℚ)

end A224921

/-! ## A224921.P9744187074446545827

`(A211634(n)-A211635(n))/2`
-/

namespace A224921.P9744187074446545827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211634 n - A211635 n : ℚ) / 2

end

end A224921.P9744187074446545827

namespace A224921

/-- `(A211634(n)-A211635(n))/2` -/
def P9744187074446545827.Spec : Prop :=
  ∀ n, P9744187074446545827.a n = (A224921 (n + 1) : ℚ)

end A224921

/-! ## A224921.P12949125788631384021

`∑[A025426(n²)]`
-/

namespace A224921.P12949125788631384021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224921.P12949125788631384021

namespace A224921

/-- `∑[A025426(n²)]` -/
def P12949125788631384021.Spec : Prop :=
  ∀ n, P12949125788631384021.a n = A224921 (n + 1)

end A224921

/-! ## A224921.P8949099726017182886

`∑[A025441(n²)]`
-/

namespace A224921.P8949099726017182886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224921.P8949099726017182886

namespace A224921

/-- `∑[A025441(n²)]` -/
def P8949099726017182886.Spec : Prop :=
  ∀ n, P8949099726017182886.a n = A224921 (n + 1)

end A224921

/-! ## A224921.P15002904137535386752

`∑[A000161(n²)-1]`
-/

namespace A224921.P15002904137535386752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (n ^ 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224921.P15002904137535386752

namespace A224921

/-- `∑[A000161(n²)-1]` -/
def P15002904137535386752.Spec : Prop :=
  ∀ n, P15002904137535386752.a n = A224921 (n + 1)

end A224921

/-! ## A224921.P4299582882768370666

`∑[A063725(n²)/2]`
-/

namespace A224921.P4299582882768370666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063725 (n ^ 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224921.P4299582882768370666

namespace A224921

/-- `∑[A063725(n²)/2]` -/
def P4299582882768370666.Spec : Prop :=
  ∀ n, P4299582882768370666.a n = (A224921 (n + 1) : ℚ)

end A224921

/-! ## A224921.P88173718909450328

`∑[A025435(n²)]-n`
-/

namespace A224921.P88173718909450328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A224921.P88173718909450328

namespace A224921

/-- `∑[A025435(n²)]-n` -/
def P88173718909450328.Spec : Prop :=
  ∀ n, P88173718909450328.a n = A224921 (n + 1)

end A224921

/-! ## A224921.P4180798804374921663

`A110654(∑[A063725(n²)])`
-/

namespace A224921.P4180798804374921663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A224921.P4180798804374921663

namespace A224921

/-- `A110654(∑[A063725(n²)])` -/
def P4180798804374921663.Spec : Prop :=
  ∀ n, P4180798804374921663.a n = A224921 (n + 1)

end A224921

/-!
# A224922: O.g.f. satisfies: A(x) = Sum_{n>=0} A000110(n)*x^n*A(x)^n, where A000110 are the Bell numbers.

The programs for A224922, there is no canonical definition to state claims against.
-/

/-! ## A224922.P18038874616450406877

`A205574(A001105(n+1))/(n+1)`
-/

namespace A224922.P18038874616450406877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205574 (A001105 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A224922.P18038874616450406877

/-! ## A224922.P14824560635671338558

`A205574(A047838(2*(n+1))+1)/(n+1)`
-/

namespace A224922.P14824560635671338558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205574 (A047838 (2 * (n + 1)) + 1).toNat : ℚ) / (n + 1 : ℚ)

end

end A224922.P14824560635671338558

/-! ## A224922.P11423364575570909372

`A319759(A333147(n))+A000257(n)`
-/

namespace A224922.P11423364575570909372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319759 (A333147 n).toNat + A000257 n

end

end A224922.P11423364575570909372

/-!
# A224923: a(n) = Sum_{i=0..n} Sum_{j=0..n} (i XOR j), where XOR is the binary logical exclusive-or operator.

The programs for A224923, the canonical program `A224923.P7369053125030340470` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224923 has offset 0).

The definition of A224923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224923.P7369053125030340470

`∑[2*∑[and(n, -n)²]]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A224923

/-- `∑[2*∑[and(n, -n)²]]` -/
def P7369053125030340470.Spec : Prop :=
  ∀ n, P7369053125030340470.a n = A224923 n

theorem P7369053125030340470.correct : P7369053125030340470.Spec := by
  intro n
  simp only [A224923]

end A224923

/-! ## A224923.P8639720770055315786

`∑[2*A224915(n)]`
-/

namespace A224923.P8639720770055315786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A224915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224923.P8639720770055315786

namespace A224923

/-- `∑[2*A224915(n)]` -/
def P8639720770055315786.Spec : Prop :=
  ∀ n, P8639720770055315786.a n = A224923 n

end A224923

/-! ## A224923.P8832857851905665213

`∑[A001196(n)-n]`
-/

namespace A224923.P8832857851905665213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224923.P8832857851905665213

namespace A224923

/-- `∑[A001196(n)-n]` -/
def P8832857851905665213.Spec : Prop :=
  ∀ n, P8832857851905665213.a n = A224923 n

end A224923

/-! ## A224923.P8984701113845750662

`∑[A332206(2*n)-n]`
-/

namespace A224923.P8984701113845750662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332206 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224923.P8984701113845750662

namespace A224923

/-- `∑[A332206(2*n)-n]` -/
def P8984701113845750662.Spec : Prop :=
  ∀ n, P8984701113845750662.a n = A224923 n

end A224923

/-! ## A224923.P9212601287898030806

`∑[3*A000695(n)-n]`
-/

namespace A224923.P9212601287898030806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000695 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224923.P9212601287898030806

namespace A224923

/-- `∑[3*A000695(n)-n]` -/
def P9212601287898030806.Spec : Prop :=
  ∀ n, P9212601287898030806.a n = A224923 n

end A224923

/-! ## A224923.P9585414207505127203

`∑[∑[A001105(and(n, -n))]]`
-/

namespace A224923.P9585414207505127203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (Int.land (n : ℤ) (-(n : ℤ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224923.P9585414207505127203

namespace A224923

/-- `∑[∑[A001105(and(n, -n))]]` -/
def P9585414207505127203.Spec : Prop :=
  ∀ n, P9585414207505127203.a n = A224923 n

end A224923

/-! ## A224923.P4313816665273015258

`∑[∑[A001105(-or(n, -n))]]`
-/

namespace A224923.P4313816665273015258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (-Int.lor (n : ℤ) (-(n : ℤ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224923.P4313816665273015258

namespace A224923

/-- `∑[∑[A001105(-or(n, -n))]]` -/
def P4313816665273015258.Spec : Prop :=
  ∀ n, P4313816665273015258.a n = A224923 n

end A224923

/-! ## A224923.P12621003570302529727

`∑[A000695(n)+A062880(n)-n]`
-/

namespace A224923.P12621003570302529727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n + (A062880 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224923.P12621003570302529727

namespace A224923

/-- `∑[A000695(n)+A062880(n)-n]` -/
def P12621003570302529727.Spec : Prop :=
  ∀ n, P12621003570302529727.a n = A224923 n

end A224923

/-! ## A224923.P10312921057716105216

`∑[record[A006015(A006015(n))]-n]`
-/

namespace A224923.P10312921057716105216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A006015 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224923.P10312921057716105216

namespace A224923

/-- `∑[record[A006015(A006015(n))]-n]` -/
def P10312921057716105216.Spec : Prop :=
  ∀ n, P10312921057716105216.a n = A224923 n

end A224923

/-! ## A224923.P2016885436848479517

`2*∑[∑[A342410(n²)]]`
-/

namespace A224923.P2016885436848479517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342410 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224923.P2016885436848479517

namespace A224923

/-- `2*∑[∑[A342410(n²)]]` -/
def P2016885436848479517.Spec : Prop :=
  ∀ n, P2016885436848479517.a n = A224923 n

end A224923

/-!
# A224924: Sum_{i=0..n} Sum_{j=0..n} (i AND j), where AND is the binary logical AND operator.

The programs for A224924, the canonical program `A224924.P9265397642440561853` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224924 has offset 0).

The definition of A224924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2492 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224924.P13321297312786585210

`∑[A222423(2*n)/2]`
-/

namespace A224924.P13321297312786585210
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222423 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224924.P13321297312786585210

namespace A224924

/-- `∑[A222423(2*n)/2]` -/
def P13321297312786585210.Spec : Prop :=
  ∀ n, P13321297312786585210.a n = (A224924 n : ℚ)

end A224924

/-! ## A224924.P12094091290057308715

`∑[2*A222423(n)-n]`
-/

namespace A224924.P12094091290057308715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222423 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224924.P12094091290057308715

namespace A224924

/-- `∑[2*A222423(n)-n]` -/
def P12094091290057308715.Spec : Prop :=
  ∀ n, P12094091290057308715.a n = A224924 n

end A224924

/-! ## A224924.P9265397642440561853

`∑[6*A213673(n)+n]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A224924

/-- `∑[6*A213673(n)+n]` -/
def P9265397642440561853.Spec : Prop :=
  ∀ n, P9265397642440561853.a n = A224924 n

theorem P9265397642440561853.correct : P9265397642440561853.Spec := by
  intro n
  simp only [A224924]

end A224924

/-! ## A224924.P14981790872172223275

`(n+1)*∑[n]-∑[A224915(n)]`
-/

namespace A224924.P14981790872172223275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A224924.P14981790872172223275

namespace A224924

/-- `(n+1)*∑[n]-∑[A224915(n)]` -/
def P14981790872172223275.Spec : Prop :=
  ∀ n, P14981790872172223275.a n = A224924 n

end A224924

/-! ## A224924.P11573920778883683304

`A011379(n)-A258438(n)`
-/

namespace A224924.P11573920778883683304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n - A258438 n

end

end A224924.P11573920778883683304

namespace A224924

/-- `A011379(n)-A258438(n)` -/
def P11573920778883683304.Spec : Prop :=
  ∀ n, P11573920778883683304.a n = A224924 n

end A224924

/-!
# A224925: a(n) = number of primes of the form p*q-(p+q) where p = prime(n) and q is any prime < p.

The programs for A224925, there is no canonical definition to state claims against.
-/

/-! ## A224925.P275703187016707646

`A371571(or(A257612(n), A268295(n)))`
-/

namespace A224925.P275703187016707646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371571 (Int.lor (A257612 n) (A268295 n)).toNat

end

end A224925.P275703187016707646

/-! ## A224925.P16388597032669906309

`A326641(A128870(n+1)%A000079(n))`
-/

namespace A224925.P16388597032669906309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326641 (Int.tmod (A128870 (n + 1)) (A000079 n)).toNat

end

end A224925.P16388597032669906309

/-! ## A224925.P4611735589645693427

`A326641(A128870(n+1))%A003479(n)`
-/

namespace A224925.P4611735589645693427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326641 (A128870 (n + 1)).toNat) (A003479 n)

end

end A224925.P4611735589645693427

/-! ## A224925.P1666437756827104806

`lcm(A224965(n+1), A326641(A128870(n+1)))`
-/

namespace A224925.P1666437756827104806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A224965 (n + 1)) (A326641 (A128870 (n + 1)).toNat)

end

end A224925.P1666437756827104806

/-! ## A224925.P9447852868720333374

`A001222(13*A105755(n+1))%A370442(n)`
-/

namespace A224925.P9447852868720333374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (13 * A105755 (n + 1)).toNat) (A370442 n)

end

end A224925.P9447852868720333374

/-!
# A224926: Numerator of lexicographically least fraction f satisfying floor(f * 10^A055642(n)) = n.

The programs for A224926, there is no canonical definition to state claims against.
-/

/-! ## A224926.P13787395068197186465

`or(A010872(A179961(n)), A081664(n+1))`
-/

namespace A224926.P13787395068197186465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010872 (A179961 n).toNat) (A081664 (n + 1))

end

end A224926.P13787395068197186465

/-! ## A224926.P6389880108137394515

`A326075(A296086(n+1))+A081664(n+1)`
-/

namespace A224926.P6389880108137394515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326075 (A296086 (n + 1)).toNat + A081664 (n + 1)

end

end A224926.P6389880108137394515

/-! ## A224926.P12803310588833030280

`A081664(xor(n+1, A184955(n)))`
-/

namespace A224926.P12803310588833030280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081664 (Int.xor (n + 1 : ℤ) (A184955 n)).toNat

end

end A224926.P12803310588833030280

/-!
# A224928: Numbers of pairs {x, y} such that x <= y and triangular(x) + triangular(y) = 2^n.

The programs for A224928, the canonical program `A224928.P3645223925701785720` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224928 has offset 0).

The definition of A224928 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052343, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A224928.P3645223925701785720

`A052343(2^n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A224928

/-- `A052343(2^n)` -/
def P3645223925701785720.Spec : Prop :=
  ∀ n, P3645223925701785720.a n = A224928 n

theorem P3645223925701785720.correct : P3645223925701785720.Spec := by
  intro n
  simp only [A224928]

end A224928

/-! ## A224928.P14018353996041646945

`C(A110654(A046798(n+2)), A057979(3*n+2))`
-/

namespace A224928.P14018353996041646945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A110654 (A046798 (n + 2)).toNat).toNat (A057979 (3 * n + 2)).toNat

end

end A224928.P14018353996041646945

namespace A224928

/-- `C(A110654(A046798(n+2)), A057979(3*n+2))` -/
def P14018353996041646945.Spec : Prop :=
  ∀ n, (P14018353996041646945.a n : ℤ) = A224928 n

end A224928

/-! ## A224928.P4397342731811482864

`A004525(C(A046798(n+2), A057979(3*n+2)))`
-/

namespace A224928.P4397342731811482864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Nat.choose (A046798 (n + 2)).toNat (A057979 (3 * n + 2)).toNat)

end

end A224928.P4397342731811482864

namespace A224928

/-- `A004525(C(A046798(n+2), A057979(3*n+2)))` -/
def P4397342731811482864.Spec : Prop :=
  ∀ n, P4397342731811482864.a n = A224928 n

end A224928

/-! ## A224928.P8175857257091963168

`A004526(C(A046798(n+2), A057979(3*n+2)))`
-/

namespace A224928.P8175857257091963168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Nat.choose (A046798 (n + 2)).toNat (A057979 (3 * n + 2)).toNat)

end

end A224928.P8175857257091963168

namespace A224928

/-- `A004526(C(A046798(n+2), A057979(3*n+2)))` -/
def P8175857257091963168.Spec : Prop :=
  ∀ n, P8175857257091963168.a n = A224928 n

end A224928

/-! ## A224928.P2309530019175350684

`A135523(A008486(n)^A213911(n))`
-/

namespace A224928.P2309530019175350684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (SequenceMachineLib.roundAway ((A008486 n : ℚ) ^ (A213911 n : ℤ))).toNat

end

end A224928.P2309530019175350684

namespace A224928

/-- `A135523(A008486(n)^A213911(n))` -/
def P2309530019175350684.Spec : Prop :=
  ∀ n, P2309530019175350684.a n = A224928 n

end A224928

/-!
# A224929: Primes such that concatenation of two adjacent terms and two adjacent digits is also prime.

The programs for A224929, there is no canonical definition to state claims against.
-/

/-! ## A224929.P3177910748967073417

`p?[∑[A083318(A014473(n))]]`
-/

namespace A224929.P3177910748967073417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 (A014473 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224929.P3177910748967073417

/-! ## A224929.P9349928441014281849

`p?[∑[A127904(A007318(n))]]`
-/

namespace A224929.P9349928441014281849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127904 (A007318 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A224929.P9349928441014281849

/-!
# A224931: Number of integer parallelograms with integer side lengths n = a >= b and integer diagonal lengths e >= f.

The programs for A224931, there is no canonical definition to state claims against.
-/

/-! ## A224931.P16741945182624565738

`A001221(A159929(n))*A008679(n)`
-/

namespace A224931.P16741945182624565738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A159929 n).toNat * A008679 n

end

end A224931.P16741945182624565738

/-! ## A224931.P5754110666343353939

`floor(n/3)-A011730(ceil(2^(n-1)))`
-/

namespace A224931.P5754110666343353939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ - A011730 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A224931.P5754110666343353939

/-! ## A224931.P12111599883528053317

`floor(n/3)-A288314((n+1)*Δ[n^3])`
-/

namespace A224931.P12111599883528053317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ - A288314 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A224931.P12111599883528053317

/-! ## A224931.P12309301954663469198

`A328594((n+1)²/∏{p}[n+1, #])%round(cosh(log(acot(n))))`
-/

namespace A224931.P12309301954663469198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328594 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat) (SequenceMachineLib.roundAway (Real.cosh (Real.log (SequenceMachineLib.acot (n : ℝ)))))

end

end A224931.P12309301954663469198

/-! ## A224931.P9575757802585871509

`A037845(A029088((n+1)²))`
-/

namespace A224931.P9575757802585871509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037845 (A029088 ((n + 1) ^ 2)).toNat

end

end A224931.P9575757802585871509

/-!
# A224932: Maximal side length b <= a = n of integer parallelograms.

The programs for A224932, there is no canonical definition to state claims against.
-/

/-! ## A224932.P11406776309745146704

`A007067(A005206(n))%A005206(A287951(n))`
-/

namespace A224932.P11406776309745146704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007067 (A005206 n).toNat) (A005206 (A287951 n).toNat)

end

end A224932.P11406776309745146704

/-!
# A224933: Minimal side length b <= a = n of integer parallelograms.

The programs for A224933, there is no canonical definition to state claims against.
-/

/-! ## A224933.P15113770340428208075

`xor(A124778(A179415(n+2)), A277906(n+1))`
-/

namespace A224933.P15113770340428208075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A124778 (A179415 (n + 2)).toNat) (A277906 (n + 1))

end

end A224933.P15113770340428208075

/-!
# A224934: Primes p for which there exists no prime q, different from p, such that p+q-1 is the next prime after p.

The programs for A224934, there is no canonical definition to state claims against.
-/

/-! ## A224934.P5707058813226861282

`∪[A031932(n+1), A128025(A086331(n))]`
-/

namespace A224934.P5707058813226861282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128025 (A086331 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A224934.P5707058813226861282

/-!
# A224936: Primes in either the numerator or denominator of continued fraction convergents to Pi.

The programs for A224936, there is no canonical definition to state claims against.
-/

/-! ## A224936.P13265956225596830525

`p?[∪[A002485(n), A156240(n)]]`
-/

namespace A224936.P13265956225596830525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002485 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156240 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A224936.P13265956225596830525

/-!
# A224937: Number of partitions of n having T(n,k) odd parts in excess on even places over odd places.

The programs for A224937, there is no canonical definition to state claims against.
-/

/-! ## A224937.P3775916848798860770

`C(A260731(n), A270014(A084938(3*n)))`
-/

namespace A224937.P3775916848798860770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A260731 n).toNat (A270014 (A084938 (3 * n)).toNat).toNat

end

end A224937.P3775916848798860770

/-! ## A224937.P7669024328680312684

`A167230(lt[A125989(n), 0])`
-/

namespace A224937.P7669024328680312684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125989 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167230 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A224937.P7669024328680312684

/-! ## A224937.P6811395420040100315

`A328290(A167614(n+1)-A004956(n))`
-/

namespace A224937.P6811395420040100315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328290 (A167614 (n + 1) - A004956 n).toNat

end

end A224937.P6811395420040100315

/-! ## A224937.P6397942515272899350

`C(A297167(A035517(2*n+1)), A188646(3*n))`
-/

namespace A224937.P6397942515272899350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A297167 (A035517 (2 * n + 1)).toNat).toNat (A188646 (3 * n)).toNat

end

end A224937.P6397942515272899350

/-! ## A224937.P3998206498457282612

`and(A002837(A000792(2*n)), A262626(n+1))`
-/

namespace A224937.P3998206498457282612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002837 (A000792 (2 * n)).toNat) (A262626 (n + 1))

end

end A224937.P3998206498457282612

/-!
# A224938: Non-leap years beginning and ending on Sunday.

The programs for A224938, there is no canonical definition to state claims against.
-/

/-! ## A224938.P4616182335583721173

`filter[A242539(n+1), A166486(#)]`
-/

namespace A224938.P4616182335583721173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A224938.P4616182335583721173

/-! ## A224938.P4674951587233382573

`A224940(n+1)+A125915(A187353(n))`
-/

namespace A224938.P4674951587233382573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224940 (n + 1) + A125915 (A187353 (n + 1939)).toNat

end

end A224938.P4674951587233382573

/-! ## A224938.P15903738861365324312

`A335420(A175805(n))+A224940(n+1)`
-/

namespace A224938.P15903738861365324312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335420 (A175805 n).toNat + A224940 (n + 1)

end

end A224938.P15903738861365324312

/-! ## A224938.P4483494731227233367

`A224943(n+1)-A125915(A187353(n))`
-/

namespace A224938.P4483494731227233367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224943 (n + 1) - A125915 (A187353 (n + 1939)).toNat

end

end A224938.P4483494731227233367

/-! ## A224938.P8897430051884119204

`A224940(n+1)+A117929(A078299(n+1))`
-/

namespace A224938.P8897430051884119204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224940 (n + 1) + A117929 (A078299 (n + 1)).toNat

end

end A224938.P8897430051884119204

/-!
# A224939: Non-leap years beginning and ending on Monday.

The programs for A224939, there is no canonical definition to state claims against.
-/

/-! ## A224939.P18231219442249645788

`A224941(n+1)+A040003(A187353(n))`
-/

namespace A224939.P18231219442249645788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224941 (n + 1) + A040003 (A187353 (n + 1939)).toNat

end

end A224939.P18231219442249645788

/-! ## A224939.P2596710768028353006

`A224941(n+1)+A000195(A294738(n+2))`
-/

namespace A224939.P2596710768028353006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224941 (n + 1) + A000195 (A294738 (n + 2)).toNat

end

end A224939.P2596710768028353006

/-! ## A224939.P16547455354435811489

`A224941(n+1)+A010702(A006992(n+4))`
-/

namespace A224939.P16547455354435811489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224941 (n + 1) + A010702 (A006992 (n + 4)).toNat

end

end A224939.P16547455354435811489

/-! ## A224939.P9255588950249422255

`A224941(n+1)+A055642(A046387(2*n+1))`
-/

namespace A224939.P9255588950249422255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224941 (n + 1) + A055642 (A046387 (2 * n + 1)).toNat

end

end A224939.P9255588950249422255

/-! ## A224939.P3534468942607075907

`A224944(n+2)-A010702(A142757(2*n+1))`
-/

namespace A224939.P3534468942607075907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224944 (n + 2) - A010702 (A142757 (2 * n + 1)).toNat

end

end A224939.P3534468942607075907

/-!
# A224940: Non-leap years beginning and ending on Tuesday.

The programs for A224940, there is no canonical definition to state claims against.
-/

/-! ## A224940.P9157028455562962793

`A348691(A187353(n))+A224943(n+1)`
-/

namespace A224940.P9157028455562962793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348691 (A187353 (n + 1939)).toNat + A224943 (n + 1)

end

end A224940.P9157028455562962793

/-! ## A224940.P15859458009376578946

`A224938(n+1)-A040003(A187353(n))`
-/

namespace A224940.P15859458009376578946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224938 (n + 1) - A040003 (A187353 (n + 1939)).toNat

end

end A224940.P15859458009376578946

/-! ## A224940.P14227097210621456399

`A224938(n+1)-A040003(A000079(n+3))`
-/

namespace A224940.P14227097210621456399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224938 (n + 1) - A040003 (A000079 (n + 3)).toNat

end

end A224940.P14227097210621456399

/-! ## A224940.P9588929151802401328

`A224938(n+1)-A010702(A006992(n+4))`
-/

namespace A224940.P9588929151802401328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224938 (n + 1) - A010702 (A006992 (n + 4)).toNat

end

end A224940.P9588929151802401328

/-! ## A224940.P7051107571792197371

`A224938(n+1)-A020639(A187353(n+2))²`
-/

namespace A224940.P7051107571792197371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224938 (n + 1) - A020639 (A187353 (n + 2 + 1939)).toNat ^ 2

end

end A224940.P7051107571792197371

/-!
# A224941: Non-leap years beginning and ending on Wednesday.

The programs for A224941, there is no canonical definition to state claims against.
-/

/-! ## A224941.P9139054518472571690

`A224944(n+2)-A010702(A142757(2*n+1))-4`
-/

namespace A224941.P9139054518472571690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224944 (n + 2) - A010702 (A142757 (2 * n + 1)).toNat - 4

end

end A224941.P9139054518472571690

/-! ## A224941.P10440997616766432288

`A224939(n+1)-A010702(A053501(n))`
-/

namespace A224941.P10440997616766432288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224939 (n + 1) - A010702 (A053501 n).toNat

end

end A224941.P10440997616766432288

/-! ## A224941.P5773767130224521363

`A224939(n+1)-A074803(A074811(n+1))`
-/

namespace A224941.P5773767130224521363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224939 (n + 1) - A074803 (A074811 (n + 1)).toNat

end

end A224941.P5773767130224521363

/-! ## A224941.P6427314694200595695

`A224939(n+1)-A299701(A037074(n+1))`
-/

namespace A224941.P6427314694200595695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224939 (n + 1) - A299701 (A037074 (n + 1)).toNat

end

end A224941.P6427314694200595695

/-! ## A224941.P17050636248835878589

`A224939(n+1)-A202686(A202686(n+1))`
-/

namespace A224941.P17050636248835878589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224939 (n + 1) - A202686 (A202686 (n + 1)).toNat

end

end A224941.P17050636248835878589

/-!
# A224942: Non-leap years beginning and ending on Thursday.

The programs for A224942, there is no canonical definition to state claims against.
-/

/-! ## A224942.P1797190601807363366

`A224944(n+1)+A113311(A054985(n+1))`
-/

namespace A224942.P1797190601807363366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224944 (n + 1) + A113311 (A054985 (n + 1)).toNat

end

end A224942.P1797190601807363366

/-! ## A224942.P17732844388044028539

`A338484(A008574(n+2))+A224944(n+1)`
-/

namespace A224942.P17732844388044028539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338484 (A008574 (n + 2)).toNat + A224944 (n + 1)

end

end A224942.P17732844388044028539

/-! ## A224942.P9654038153606296184

`A224944(n+1)+A010702(A059762(n+1))`
-/

namespace A224942.P9654038153606296184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224944 (n + 1) + A010702 (A059762 (n + 1)).toNat

end

end A224942.P9654038153606296184

/-! ## A224942.P8801947252504864028

`A224944(n+1)+A113311(A025017(n+1))`
-/

namespace A224942.P8801947252504864028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224944 (n + 1) + A113311 (A025017 (n + 1)).toNat

end

end A224942.P8801947252504864028

/-! ## A224942.P9661456952662685071

`A224944(n+1)+A010702(A142757(n+1))`
-/

namespace A224942.P9661456952662685071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224944 (n + 1) + A010702 (A142757 (n + 1)).toNat

end

end A224942.P9661456952662685071

/-!
# A224943: Non-leap years beginning and ending on Friday.

The programs for A224943, there is no canonical definition to state claims against.
-/

/-! ## A224943.P17547512722385879928

`A224940(n+1)+A001511(A187353(n))`
-/

namespace A224943.P17547512722385879928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224940 (n + 1) + A001511 (A187353 (n + 1939)).toNat

end

end A224943.P17547512722385879928

/-! ## A224943.P18190684227180663418

`A224938(n+1)+A040003(A187353(n))`
-/

namespace A224943.P18190684227180663418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224938 (n + 1) + A040003 (A187353 (n + 1939)).toNat

end

end A224943.P18190684227180663418

/-! ## A224943.P17090750365117549312

`A224940(n+1)+A000005(A087788(n+1))`
-/

namespace A224943.P17090750365117549312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224940 (n + 1) + A000005 (A087788 (n + 1)).toNat

end

end A224943.P17090750365117549312

/-! ## A224943.P11274251128213180408

`A224938(n+1)+A205383(A281707(n+1))`
-/

namespace A224943.P11274251128213180408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224938 (n + 1) + A205383 (A281707 (n + 1)).toNat

end

end A224943.P11274251128213180408

/-! ## A224943.P1917883216049627043

`A224938(n+1)+A040003(A000079(n+3))`
-/

namespace A224943.P1917883216049627043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224938 (n + 1) + A040003 (A000079 (n + 3)).toNat

end

end A224943.P1917883216049627043

/-!
# A224944: Non-leap years beginning and ending on Saturday.

The programs for A224944, there is no canonical definition to state claims against.
-/

/-! ## A224944.P6509279669906162089

`A224942(n+1)-A010702(A059762(n+1))`
-/

namespace A224944.P6509279669906162089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224942 (n + 1) - A010702 (A059762 (n + 1)).toNat

end

end A224944.P6509279669906162089

/-! ## A224944.P18195073431603894055

`A224942(n+1)-A113311(A025017(n+1))`
-/

namespace A224944.P18195073431603894055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224942 (n + 1) - A113311 (A025017 (n + 1)).toNat

end

end A224944.P18195073431603894055

/-! ## A224944.P15585133360602716475

`A224942(n+1)-A010702(A142757(n+1))`
-/

namespace A224944.P15585133360602716475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224942 (n + 1) - A010702 (A142757 (n + 1)).toNat

end

end A224944.P15585133360602716475

/-! ## A224944.P4294634396753915455

`A224942(n+1)-A131296(A121038(n+1))`
-/

namespace A224944.P4294634396753915455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224942 (n + 1) - A131296 (A121038 (n + 1)).toNat

end

end A224944.P4294634396753915455

/-!
# A224945: Leap years having 53 Sundays and Mondays.

The programs for A224945, there is no canonical definition to state claims against.
-/

/-! ## A224945.P12106057373587173620

`A141039(n+1)+A141039(n+9)-A141039(n+16)`
-/

namespace A224945.P12106057373587173620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141039 (n + 1) + (A141039 (n + 9) - A141039 (n + 16))

end

end A224945.P12106057373587173620

/-!
# A224946: Leap years having 53 Mondays and Tuesdays.

The programs for A224946, there is no canonical definition to state claims against.
-/

/-! ## A224946.P5096701558316009027

`A224951(n+1)-4`
-/

namespace A224946.P5096701558316009027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224951 (n + 1) - 4

end

end A224946.P5096701558316009027

/-! ## A224946.P13428869456119068379

`A224949(n+1)-8`
-/

namespace A224946.P13428869456119068379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224949 (n + 1) - 8

end

end A224946.P13428869456119068379

/-! ## A224946.P9385587773732557343

`record[A224951(A133310(n))-4]`
-/

namespace A224946.P9385587773732557343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224951 (A133310 n).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224946.P9385587773732557343

/-! ## A224946.P13014771231591073883

`A023450(A224949(n+1))`
-/

namespace A224946.P13014771231591073883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023450 (A224949 (n + 1)).toNat

end

end A224946.P13014771231591073883

/-! ## A224946.P13342407351606236721

`A023446(A224951(n+1))`
-/

namespace A224946.P13342407351606236721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A224951 (n + 1)).toNat

end

end A224946.P13342407351606236721

/-!
# A224947: Leap years having 53 Tuesdays and Wednesdays.

The programs for A224947, there is no canonical definition to state claims against.
-/

/-! ## A224947.P15953589883987121048

`A141287(n+1)+A141287(n+9)-A141287(n+15)`
-/

namespace A224947.P15953589883987121048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141287 (n + 1) + (A141287 (n + 9) - A141287 (n + 15))

end

end A224947.P15953589883987121048

/-!
# A224948: Leap years having 53 Wednesdays and Thursdays.

The programs for A224948, there is no canonical definition to state claims against.
-/

/-! ## A224948.P18094498480310754049

`record[A088440(A224943(n+1)-1)]`
-/

namespace A224948.P18094498480310754049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (A224943 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224948.P18094498480310754049

/-! ## A224948.P12959897499147170499

`A224951(n+1)-A040012(A179928(n))`
-/

namespace A224948.P12959897499147170499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224951 (n + 1) - A040012 (A179928 n).toNat

end

end A224948.P12959897499147170499

/-! ## A224948.P11023830153807664009

`A224946(n+1)-A008833(A305261(n))`
-/

namespace A224948.P11023830153807664009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224946 (n + 1) - A008833 (A305261 n).toNat

end

end A224948.P11023830153807664009

/-! ## A224948.P13470791553799346355

`A224946(n+1)-A091844(A072164(n+1))`
-/

namespace A224948.P13470791553799346355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224946 (n + 1) - A091844 (A072164 (n + 1)).toNat

end

end A224948.P13470791553799346355

/-! ## A224948.P14513723739069588388

`A224951(n+1)-A010689(A002675(n+2))`
-/

namespace A224948.P14513723739069588388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224951 (n + 1) - A010689 (A002675 (n + 2)).toNat

end

end A224948.P14513723739069588388

/-!
# A224949: Leap years having 53 Thursdays and Fridays.

The programs for A224949, there is no canonical definition to state claims against.
-/

/-! ## A224949.P18417860280171536602

`A224951(n+1)+4`
-/

namespace A224949.P18417860280171536602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224951 (n + 1) + 4

end

end A224949.P18417860280171536602

/-! ## A224949.P10740739194394670859

`A224946(n+1)+8`
-/

namespace A224949.P10740739194394670859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224946 (n + 1) + 8

end

end A224949.P10740739194394670859

/-! ## A224949.P10277747364189789276

`n-(A023450(n)-record[A224951(A133310(n))-4])`
-/

namespace A224949.P10277747364189789276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224951 (A133310 n).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023450 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A224949.P10277747364189789276

/-! ## A224949.P15982168788310900588

`A020722(A224946(n+1))`
-/

namespace A224949.P15982168788310900588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020722 (A224946 (n + 1)).toNat

end

end A224949.P15982168788310900588

/-! ## A224949.P5096355463271589463

`A020705(A224951(n+1))`
-/

namespace A224949.P5096355463271589463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A224951 (n + 1)).toNat

end

end A224949.P5096355463271589463

/-!
# A224950: Leap years having 53 Fridays and Saturdays.

The programs for A224950, there is no canonical definition to state claims against.
-/

/-! ## A224950.P6662731097608307436

`record[A088440(A224938(n+1)-1)]`
-/

namespace A224950.P6662731097608307436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (A224938 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224950.P6662731097608307436

/-! ## A224950.P17623782223080498121

`record[A088440(A224939(n+1)-2)]`
-/

namespace A224950.P17623782223080498121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (A224939 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224950.P17623782223080498121

/-! ## A224950.P14995241513941869240

`record[A088440(xor(1, A224938(n+1)))]`
-/

namespace A224950.P14995241513941869240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (Int.xor 1 (A224938 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224950.P14995241513941869240

/-! ## A224950.P13895359119059030432

`record[A088440(xor(2, A224939(n+1)))]`
-/

namespace A224950.P13895359119059030432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (Int.xor 2 (A224939 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224950.P13895359119059030432

/-!
# A224951: Leap years having 53 Saturdays and Sundays.

The programs for A224951, there is no canonical definition to state claims against.
-/

/-! ## A224951.P12167312595606938939

`A224946(n+1)+4`
-/

namespace A224951.P12167312595606938939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224946 (n + 1) + 4

end

end A224951.P12167312595606938939

/-! ## A224951.P7371165097151386873

`A224949(n+1)-4`
-/

namespace A224951.P7371165097151386873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224949 (n + 1) - 4

end

end A224951.P7371165097151386873

/-! ## A224951.P10773930762563948973

`record[A224949(A133310(n))-4]`
-/

namespace A224951.P10773930762563948973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224949 (A133310 n).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224951.P10773930762563948973

/-! ## A224951.P1703252834411122527

`A020705(A224946(n+1))`
-/

namespace A224951.P1703252834411122527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A224946 (n + 1)).toNat

end

end A224951.P1703252834411122527

/-! ## A224951.P14881643333651949680

`A023446(A224949(n+1))`
-/

namespace A224951.P14881643333651949680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A224949 (n + 1)).toNat

end

end A224951.P14881643333651949680

/-!
# A224953: Number of ways a digit can be appended or prepended to n and form a prime.

The programs for A224953, there is no canonical definition to state claims against.
-/

/-! ## A224953.P18101055751293881556

`A224536(n)+char[A166333(n)]`
-/

namespace A224953.P18101055751293881556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224536 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224953.P18101055751293881556

/-! ## A224953.P286175525855965734

`A224536(n)+char[A006530(n+1)]`
-/

namespace A224953.P286175525855965734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224536 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224953.P286175525855965734

/-! ## A224953.P11489981683182916043

`A224536(n)+char[A008578(n+1)]`
-/

namespace A224953.P11489981683182916043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224536 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224953.P11489981683182916043

/-! ## A224953.P9831335326609205608

`A224536(n)+char[A014963(n+1)]`
-/

namespace A224953.P9831335326609205608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224536 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224953.P9831335326609205608

/-! ## A224953.P7066202141562359367

`A224536(n)+char[A015919(n+1)]`
-/

namespace A224953.P7066202141562359367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224536 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224953.P7066202141562359367

/-! ## A224953.P10268890433865214937

`A224536(n)+char[A020639(n+1)]`
-/

namespace A224953.P10268890433865214937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224536 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224953.P10268890433865214937

/-! ## A224953.P5785679938814369782

`A224536(n)+char[A027746(n+1)]`
-/

namespace A224953.P5785679938814369782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224536 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224953.P5785679938814369782

/-! ## A224953.P1371896829240282321

`A224536(n)+char[A136548(n+1)]`
-/

namespace A224953.P1371896829240282321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224536 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A224953.P1371896829240282321

/-! ## A224953.P100730447502475776

`A224536(n)+A101040(A008486(n))`
-/

namespace A224953.P100730447502475776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224536 n + A101040 (A008486 n).toNat

end

end A224953.P100730447502475776

/-!
# A224956: Number of partitions of n where the difference between consecutive parts is at most 2.

The programs for A224956, there is no canonical definition to state claims against.
-/

/-! ## A224956.P9216055488574240812

`A000196(∑[A188716(A008619(n))])`
-/

namespace A224956.P9216055488574240812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188716 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A224956.P9216055488574240812

/-! ## A224956.P15126259328845735000

`A000196(∑[A083652(A056453(n+1))])`
-/

namespace A224956.P15126259328845735000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 (A056453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A224956.P15126259328845735000

/-! ## A224956.P4278431988585748178

`A239467(n+1)+A172263(A016116(n))`
-/

namespace A224956.P4278431988585748178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239467 (n + 1) + A172263 (A016116 n).toNat

end

end A224956.P4278431988585748178

/-! ## A224956.P7304663808379389813

`A195098(A088314(n))-A248333(A000009(n))`
-/

namespace A224956.P7304663808379389813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195098 (A088314 n).toNat - A248333 (A000009 n).toNat

end

end A224956.P7304663808379389813

/-! ## A224956.P684260004534621577

`∑[A262090(n)%A139490(n+3)]`
-/

namespace A224956.P684260004534621577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262090 n) (A139490 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224956.P684260004534621577

/-!
# A224957: Number of compositions [p(1), p(2), ..., p(k)] of n such that p(j) <= 2*p(j-1) and p(j-1) <= 2*p(j).

The programs for A224957, there is no canonical definition to state claims against.
-/

/-! ## A224957.P3046657469295933438

`A262689(A116845(n+1)+A002998(n))`
-/

namespace A224957.P3046657469295933438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A116845 (n + 1) + A002998 n).toNat

end

end A224957.P3046657469295933438

/-! ## A224957.P18365039277900696986

`A262689(A265359(n)+A116845(n+1))`
-/

namespace A224957.P18365039277900696986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A265359 n + A116845 (n + 1)).toNat

end

end A224957.P18365039277900696986

/-! ## A224957.P15282829834440839692

`∑[A336358(A206743(n))]-A054404(n+1)`
-/

namespace A224957.P15282829834440839692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336358 (A206743 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A054404 (n + 1)

end

end A224957.P15282829834440839692

/-! ## A224957.P7483553716049856306

`∑[A331995(A349840(n))]-A054404(n+1)`
-/

namespace A224957.P7483553716049856306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331995 (A349840 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A054404 (n + 1)

end

end A224957.P7483553716049856306

/-! ## A224957.P5899535506814082594

`∑[A204164(A239552(n)²)]-A054404(n+1)`
-/

namespace A224957.P5899535506814082594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A239552 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A054404 (n + 1)

end

end A224957.P5899535506814082594

/-!
# A224958: Number of compositions [p(1), p(2), ..., p(k)] of n such that p(j) != p(j-2).

The programs for A224958, there is no canonical definition to state claims against.
-/

/-! ## A224958.P4878396912812511387

`A003056(A148515(n)+A033192(n))`
-/

namespace A224958.P4878396912812511387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A148515 n + A033192 n).toNat

end

end A224958.P4878396912812511387

/-! ## A224958.P139443075316206767

`A073189(n)+A003056(A293734(n))`
-/

namespace A224958.P139443075316206767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073189 n + A003056 (A293734 n).toNat

end

end A224958.P139443075316206767

/-! ## A224958.P4874943485574520903

`A129853(n)+A124768(A349053(n))`
-/

namespace A224958.P4874943485574520903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129853 n + A124768 (A349053 n).toNat

end

end A224958.P4874943485574520903

/-! ## A224958.P14163264411427210549

`A137734(A000124(n)*A222380(n))`
-/

namespace A224958.P14163264411427210549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A000124 n * A222380 n).toNat

end

end A224958.P14163264411427210549

/-! ## A224958.P11958744485835007558

`A285097(A132056(n+1))+A054229(n)`
-/

namespace A224958.P11958744485835007558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A132056 (n + 1)).toNat + A054229 n

end

end A224958.P11958744485835007558

/-!
# A224959: Number of compositions [p(1), p(2), ..., p(k)] of n such that p(j) - p(j-1) <= 2.

The programs for A224959, there is no canonical definition to state claims against.
-/

/-! ## A224959.P9944664454408870066

`A194640(3*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A224959.P9944664454408870066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A194640 (3 * a (n - 1)).toNat

end

end A224959.P9944664454408870066

/-! ## A224959.P9239063651727936878

`A194640(a(n-1)/cot(atan(3)))` with `a(0)=1, a(1)=1`
-/

namespace A224959.P9239063651727936878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A194640 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.cot (Real.arctan (3 : ℝ)))).toNat

end

end A224959.P9239063651727936878

/-! ## A224959.P8173612570737900565

`A194640(a(n-1)/sqrt(1/9))` with `a(0)=1, a(1)=1`
-/

namespace A224959.P8173612570737900565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A194640 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.sqrt ((1 : ℚ) / 9 : ℝ))).toNat

end

end A224959.P8173612570737900565

/-! ## A224959.P17648069561433038834

`A194640(a(n-1)/(1/2)²-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A224959.P17648069561433038834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A194640 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / ((1 : ℚ) / 2) ^ 2 - (a (n - 1) : ℚ))).toNat

end

end A224959.P17648069561433038834

/-! ## A224959.P5460042257756588895

`A194640(a(n-1)+a((n-1)%n)+a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A224959.P5460042257756588895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A194640 (a (n - 1) + (a (Int.tmod ((n : ℤ) - 1) (n : ℤ)).toNat + a (n - 1))).toNat

end

end A224959.P5460042257756588895

/-!
# A224960: Number of compositions [p(1), p(2), ..., p(k)] of n such that p(j) >= p(1) - 1.

The programs for A224960, there is no canonical definition to state claims against.
-/

/-! ## A224960.P3802138792832185257

`A157271(A293363(n)+A000073(n))`
-/

namespace A224960.P3802138792832185257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A293363 n + A000073 n).toNat

end

end A224960.P3802138792832185257

/-! ## A224960.P6663267346127346119

`A024417(A087219(n))-A090616(n)`
-/

namespace A224960.P6663267346127346119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A087219 n).toNat - A090616 n

end

end A224960.P6663267346127346119

/-! ## A224960.P3934932053904374671

`A157271(A293363(n)+A000213(n)-A081172(n))`
-/

namespace A224960.P3934932053904374671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A293363 n + (A000213 n - A081172 n)).toNat

end

end A224960.P3934932053904374671

/-! ## A224960.P5868320867804660566

`A157271(A293363(n)+A338192(n)-A000045(n))`
-/

namespace A224960.P5868320867804660566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A293363 n + (A338192 n - A000045 n)).toNat

end

end A224960.P5868320867804660566

/-! ## A224960.P834674955313056758

`A023193(A018114(n))`
-/

namespace A224960.P834674955313056758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A018114 n).toNat

end

end A224960.P834674955313056758

/-!
# A224963: Let p = prime(n). a(n) = number of primes q less than p, such that both p+q+1 and p+q-1 are primes.

The programs for A224963, there is no canonical definition to state claims against.
-/

/-! ## A224963.P1323164373958902684

`A001221(A332337(n)%A088593(n))`
-/

namespace A224963.P1323164373958902684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.tmod (A332337 n) (A088593 n)).toNat

end

end A224963.P1323164373958902684

/-! ## A224963.P11428394012239590876

`A001221(or(A047070(n), A332337(n)))`
-/

namespace A224963.P11428394012239590876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A047070 n) (A332337 n)).toNat

end

end A224963.P11428394012239590876

/-! ## A224963.P16646318583498879082

`A001221(or(A077028(n), A332337(n)))`
-/

namespace A224963.P16646318583498879082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A077028 n) (A332337 n)).toNat

end

end A224963.P16646318583498879082

/-! ## A224963.P1236306580846074517

`A004216(A096111(∑[n+2]))`
-/

namespace A224963.P1236306580846074517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A096111 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A224963.P1236306580846074517

/-! ## A224963.P796759087117401975

`A001221(or(A005246(n), A144404(n)))`
-/

namespace A224963.P796759087117401975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A005246 n) (A144404 n)).toNat

end

end A224963.P796759087117401975

/-!
# A224964: Irregular triangle of the denominators of the unreduced fractions that lead to the second Bernoulli numbers.

The programs for A224964, there is no canonical definition to state claims against.
-/

/-! ## A224964.P11795139202094294344

`A190339(n%floor(sqrt(n+1)))`
-/

namespace A224964.P11795139202094294344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190339 (n % Nat.sqrt (n + 1))

end

end A224964.P11795139202094294344

/-! ## A224964.P13905728780405919995

`A190339(A055087(n))`
-/

namespace A224964.P13905728780405919995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190339 (A055087 n).toNat

end

end A224964.P13905728780405919995

/-! ## A224964.P13375061737507516022

`A190339(A025685(n+1))`
-/

namespace A224964.P13375061737507516022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190339 (A025685 (n + 1)).toNat

end

end A224964.P13375061737507516022

/-! ## A224964.P17481726505631383894

`A190339(A122197(n+1)-1)`
-/

namespace A224964.P17481726505631383894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190339 (A122197 (n + 1) - 1).toNat

end

end A224964.P17481726505631383894

/-! ## A224964.P5414922784566836055

`A190339(A029956(A122197(n+1)))`
-/

namespace A224964.P5414922784566836055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190339 (A029956 (A122197 (n + 1)).toNat).toNat

end

end A224964.P5414922784566836055

/-!
# A224965: Let p = prime(n). a(n) = number of primes q less than p, such that both p*q+p+q and p*q-p-q are primes.

The programs for A224965, there is no canonical definition to state claims against.
-/

/-! ## A224965.P15374686159410297726

`A124769(n)+A008683(A000291(2*n+3))`
-/

namespace A224965.P15374686159410297726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 n + A008683 (A000291 (2 * n + 3)).toNat

end

end A224965.P15374686159410297726

/-!
# A224966: Numbers n such that n^2+sum-of-digits(n^2) is prime.

The programs for A224966, there is no canonical definition to state claims against.
-/

/-! ## A224966.P11729461218141949176

`A000196(p?[A062028(n²)])`
-/

namespace A224966.P11729461218141949176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A224966.P11729461218141949176

/-! ## A224966.P8364437304749565583

`A000196(p?[A004159(n)+n²])`
-/

namespace A224966.P8364437304749565583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A224966.P8364437304749565583

/-! ## A224966.P6173555711749852353

`eq[0, A051699(A004159(n)+n²)]`
-/

namespace A224966.P6173555711749852353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A004159 n + (n ^ 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224966.P6173555711749852353

/-! ## A224966.P4292296042767195423

`eq[1, A003415(A004159(n)+n²)]`
-/

namespace A224966.P4292296042767195423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A004159 n + (n ^ 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A224966.P4292296042767195423

/-! ## A224966.P529705947350225126

`A000196(p?[A007953(n²)+n²])`
-/

namespace A224966.P529705947350225126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n ^ 2) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A224966.P529705947350225126

/-!
# A224967: Number of (n+1)X(n+1) 0..3 matrices with each 2X2 permanent equal.

The programs for A224967, there is no canonical definition to state claims against.
-/

/-! ## A224967.P4852261226401041170

`A224975((n+1)²+n²)`
-/

namespace A224967.P4852261226401041170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224975 ((n + 1) ^ 2 + n ^ 2)

end

end A224967.P4852261226401041170

/-!
# A224968: Number of (n+1)X2 0..3 matrices with each 2X2 permanent equal.

The programs for A224968, there is no canonical definition to state claims against.
-/

/-! ## A224968.P2554509999562362453

`A224975(∑[n]+1)`
-/

namespace A224968.P2554509999562362453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224975 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A224968.P2554509999562362453

/-! ## A224968.P16011085634254028773

`record[root(A224975(n+1), A001498(n))]`
-/

namespace A224968.P16011085634254028773
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A224975 (n + 1) : ℝ) ^ (1 / (A001498 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224968.P16011085634254028773

/-! ## A224968.P7457560226526135163

`record[root(A224975(n+1), A059268(n))]`
-/

namespace A224968.P7457560226526135163
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A224975 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224968.P7457560226526135163

/-! ## A224968.P10466952257495069749

`record[root(A224975(n+1), A002260(n+1))]`
-/

namespace A224968.P10466952257495069749
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A224975 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224968.P10466952257495069749

/-! ## A224968.P14986829093255828731

`record[root(A224975(n+1), A038792(n+1))]`
-/

namespace A224968.P14986829093255828731
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A224975 (n + 1) : ℝ) ^ (1 / (A038792 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224968.P14986829093255828731

/-!
# A224969: Number of (n+1)X3 0..3 matrices with each 2X2 permanent equal.

The programs for A224969, there is no canonical definition to state claims against.
-/

/-! ## A224969.P16143578084104150939

`A224975(∑[n+1]+2)`
-/

namespace A224969.P16143578084104150939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224975 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A224969.P16143578084104150939

/-! ## A224969.P16650617348193178688

`record[root(A224975(n+2), A059268(n))]`
-/

namespace A224969.P16650617348193178688
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A224975 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224969.P16650617348193178688

/-! ## A224969.P12539475140168185635

`record[A224975(Δ[A003453(n+5)])]`
-/

namespace A224969.P12539475140168185635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224975 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224969.P12539475140168185635

/-! ## A224969.P11014242985907899792

`record[A224975(A000096(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A224969.P11014242985907899792
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224975 (A000096 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224969.P11014242985907899792

/-! ## A224969.P5541682300496637228

`record[A224975(A131818(n+1)+A114327(n)+1+n)]`
-/

namespace A224969.P5541682300496637228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224975 (A131818 (n + 1) + (A114327 n + 1 + (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A224969.P5541682300496637228

/-!
# A224970: Number of (n+1)X4 0..3 matrices with each 2X2 permanent equal.

The programs for A224970, there is no canonical definition to state claims against.
-/

/-! ## A224970.P17790562299258406770

`A224975(∑[n+2]+4)`
-/

namespace A224970.P17790562299258406770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224975 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A224970.P17790562299258406770

/-! ## A224970.P9722527810069039387

`or(1, A224975(A167614(n+1)))`
-/

namespace A224970.P9722527810069039387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A224975 (A167614 (n + 1)).toNat)

end

end A224970.P9722527810069039387

/-! ## A224970.P2249558697593748168

`A032548(n+1)*A224975(A167614(n+1))`
-/

namespace A224970.P2249558697593748168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032548 (n + 1) * A224975 (A167614 (n + 1)).toNat

end

end A224970.P2249558697593748168

/-! ## A224970.P18001231165774764745

`A224975(A167614(n+1))%A224971(n+1)`
-/

namespace A224970.P18001231165774764745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224975 (A167614 (n + 1)).toNat) (A224971 (n + 1))

end

end A224970.P18001231165774764745

/-!
# A224971: Number of (n+1)X5 0..3 matrices with each 2X2 permanent equal.

The programs for A224971, there is no canonical definition to state claims against.
-/

/-! ## A224971.P4854263913087612483

`A224975(A374004(n+1))`
-/

namespace A224971.P4854263913087612483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224975 (A374004 (n + 1)).toNat

end

end A224971.P4854263913087612483

/-! ## A224971.P1365950754035333950

`A224975(A052905(n)+9)`
-/

namespace A224971.P1365950754035333950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224975 (A052905 n + 9).toNat

end

end A224971.P1365950754035333950

/-! ## A224971.P10934951074787124862

`A224975(A167614(n+2)+1)`
-/

namespace A224971.P10934951074787124862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224975 (A167614 (n + 2) + 1).toNat

end

end A224971.P10934951074787124862

/-! ## A224971.P7262573846060985855

`A224975(eq[5, A131818(n+1)])`
-/

namespace A224971.P7262573846060985855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224971.P7262573846060985855

/-! ## A224971.P13323635439232239029

`A224975(A020705(n)+A034856(n+1)+5)`
-/

namespace A224971.P13323635439232239029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224975 (A020705 n + (A034856 (n + 1) + 5)).toNat

end

end A224971.P13323635439232239029

/-!
# A224972: Number of (n+1) X 6 0..3 matrices with each 2 X 2 permanent equal.

The programs for A224972, there is no canonical definition to state claims against.
-/

/-! ## A224972.P3922311293707215222

`A224975(A374005(n+1))`
-/

namespace A224972.P3922311293707215222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224975 (A374005 (n + 1)).toNat

end

end A224972.P3922311293707215222

/-! ## A224972.P17656794858168219518

`A224975(A167499(n+3))`
-/

namespace A224972.P17656794858168219518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224975 (A167499 (n + 3)).toNat

end

end A224972.P17656794858168219518

/-!
# A224973: Number of (n+1)X7 0..3 matrices with each 2X2 permanent equal.

The programs for A224973, there is no canonical definition to state claims against.
-/

/-! ## A224973.P15915955231665106073

`A224975(A374007(n+1))`
-/

namespace A224973.P15915955231665106073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224975 (A374007 (n + 1)).toNat

end

end A224973.P15915955231665106073

/-! ## A224973.P11398035019662428036

`A224975(eq[7, A131818(n+1)])`
-/

namespace A224973.P11398035019662428036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224973.P11398035019662428036

/-! ## A224973.P10208144193667147993

`A224975(A052905(n+3))`
-/

namespace A224973.P10208144193667147993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224975 (A052905 (n + 3)).toNat

end

end A224973.P10208144193667147993

/-! ## A224973.P9828173137801108664

`A224975(A056119(n)+16)`
-/

namespace A224973.P9828173137801108664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224975 (A056119 n + 16).toNat

end

end A224973.P9828173137801108664

/-! ## A224973.P16693351605957377284

`A224975(eq[5, A193592(n)])`
-/

namespace A224973.P16693351605957377284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224973.P16693351605957377284

/-!
# A224974: 

The programs for A224974, there is no canonical definition to state claims against.
-/

/-! ## A224974.P12875530845967387073

`A224975(eq[8, A131818(n+1)])`
-/

namespace A224974.P12875530845967387073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A224974.P12875530845967387073

/-!
# A224975: T(n,k) is the number of (n+1) X (k+1) 0..3 matrices with each 2 X 2 permanent equal.

The programs for A224975, there is no canonical definition to state claims against.
-/

/-! ## A224975.P11278808635751351162

`A206255(n+1)+A204876(n+1)`
-/

namespace A224975.P11278808635751351162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206255 (n + 1) + A204876 (n + 1)

end

end A224975.P11278808635751351162

/-!
# A224976: L.g.f.: log( 1 + Sum_{n>=1} x^(n*(3*n-1)/2) + x^(n*(3*n+1)/2) ) = Sum_{n>=1} a(n)*x^n/n.

The programs for A224976, the canonical program `A224976.P11584365082941137146` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224976 has offset 1).

The definition of A224976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A224976.P11584365082941137146

`2*A111932(n+1)-A000203(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A224976

/-- `2*A111932(n+1)-A000203(n+1)` -/
def P11584365082941137146.Spec : Prop :=
  ∀ n, P11584365082941137146.a n = A224976 (n + 1)

theorem P11584365082941137146.correct : P11584365082941137146.Spec := by
  intro n
  simp only [A224976, Nat.add_sub_cancel]

end A224976

/-! ## A224976.P15600020688494524685

`A046913(n+1)+A186099(n+1)-A000203(n+1)`
-/

namespace A224976.P15600020688494524685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046913 (n + 1) + (A186099 (n + 1) - A000203 (n + 1))

end

end A224976.P15600020688494524685

namespace A224976

/-- `A046913(n+1)+A186099(n+1)-A000203(n+1)` -/
def P15600020688494524685.Spec : Prop :=
  ∀ n, P15600020688494524685.a n = A224976 (n + 1)

end A224976

/-! ## A224976.P12158448536335796685

`A224613(n+1)-(A193553(n+1)+A144613(n+1))`
-/

namespace A224976.P12158448536335796685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224613 (n + 1) - (A193553 (n + 1) + A144613 (n + 1))

end

end A224976.P12158448536335796685

namespace A224976

/-- `A224613(n+1)-(A193553(n+1)+A144613(n+1))` -/
def P12158448536335796685.Spec : Prop :=
  ∀ n, P12158448536335796685.a n = A224976 (n + 1)

end A224976

/-! ## A224976.P14173172705882234785

`A144613(2*(n+1))-(A144613(n+1)+A062731(2*(n+1)))`
-/

namespace A224976.P14173172705882234785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144613 (2 * (n + 1)) - (A144613 (n + 1) + A062731 (2 * (n + 1)))

end

end A224976.P14173172705882234785

namespace A224976

/-- `A144613(2*(n+1))-(A144613(n+1)+A062731(2*(n+1)))` -/
def P14173172705882234785.Spec : Prop :=
  ∀ n, P14173172705882234785.a n = A224976 (n + 1)

end A224976

/-! ## A224976.P6870821226382881442

`A054785(3*(n+1))-A193553(n+1)`
-/

namespace A224976.P6870821226382881442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (3 * (n + 1)) - A193553 (n + 1)

end

end A224976.P6870821226382881442

namespace A224976

/-- `A054785(3*(n+1))-A193553(n+1)` -/
def P6870821226382881442.Spec : Prop :=
  ∀ n, P6870821226382881442.a n = A224976 (n + 1)

end A224976

/-! ## A224976.P9038936174011673971

`A054785(3*(n+1))-A074400(4*(n+1))/2`
-/

namespace A224976.P9038936174011673971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054785 (3 * (n + 1)) : ℚ) - (A074400 (4 * (n + 1)) : ℚ) / 2

end

end A224976.P9038936174011673971

namespace A224976

/-- `A054785(3*(n+1))-A074400(4*(n+1))/2` -/
def P9038936174011673971.Spec : Prop :=
  ∀ n, P9038936174011673971.a n = (A224976 (n + 1) : ℚ)

end A224976

/-!
# A224977: n^2 minus sum of digits of n^2.

The programs for A224977, the canonical program `A224977.P2433633673610591437` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224977 has offset 0).

The definition of A224977 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224977.P2433633673610591437

`A000290(n)-A004159(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A224977

/-- `A000290(n)-A004159(n)` -/
def P2433633673610591437.Spec : Prop :=
  ∀ n, P2433633673610591437.a n = A224977 n

theorem P2433633673610591437.correct : P2433633673610591437.Spec := by
  intro n
  simp only [A224977]

end A224977

/-! ## A224977.P14362008765157520510

`n²-∑{digits}[n², #]`
-/

namespace A224977.P14362008765157520510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A224977.P14362008765157520510

namespace A224977

/-- `n²-∑{digits}[n², #]` -/
def P14362008765157520510.Spec : Prop :=
  ∀ n, P14362008765157520510.a n = A224977 n

end A224977

/-! ## A224977.P17932511484117918552

`n²-log2(∏{digits}[n², 2^#])`
-/

namespace A224977.P17932511484117918552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) - Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)

end

end A224977.P17932511484117918552

namespace A224977

/-- `n²-log2(∏{digits}[n², 2^#])` -/
def P17932511484117918552.Spec : Prop :=
  ∀ n, P17932511484117918552.a n = (A224977 n : ℝ)

end A224977

/-! ## A224977.P18064275872807187466

`A001105(n)-A171613(n)`
-/

namespace A224977.P18064275872807187466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n - A171613 n

end

end A224977.P18064275872807187466

namespace A224977

/-- `A001105(n)-A171613(n)` -/
def P18064275872807187466.Spec : Prop :=
  ∀ n, P18064275872807187466.a n = A224977 n

end A224977

/-! ## A224977.P15086794833801588423

`A002522(n)-(A004159(n)+1)`
-/

namespace A224977.P15086794833801588423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n - (A004159 n + 1)

end

end A224977.P15086794833801588423

namespace A224977

/-- `A002522(n)-(A004159(n)+1)` -/
def P15086794833801588423.Spec : Prop :=
  ∀ n, P15086794833801588423.a n = A224977 n

end A224977

/-! ## A224977.P17018846254809328800

`n²+A067552(n)-A118881(n)`
-/

namespace A224977.P17018846254809328800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A067552 n - A118881 n)

end

end A224977.P17018846254809328800

namespace A224977

/-- `n²+A067552(n)-A118881(n)` -/
def P17018846254809328800.Spec : Prop :=
  ∀ n, P17018846254809328800.a n = A224977 n

end A224977

/-! ## A224977.P13477630939214717554

`A253909(n)-A028310(A004159(n))`
-/

namespace A224977.P13477630939214717554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 n - A028310 (A004159 n).toNat

end

end A224977.P13477630939214717554

namespace A224977

/-- `A253909(n)-A028310(A004159(n))` -/
def P13477630939214717554.Spec : Prop :=
  ∀ n, P13477630939214717554.a n = A224977 n

end A224977

/-! ## A224977.P4052707757465935864

`n²-A268227(5*n)`
-/

namespace A224977.P4052707757465935864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A268227 (5 * n)

end

end A224977.P4052707757465935864

namespace A224977

/-- `n²-A268227(5*n)` -/
def P4052707757465935864.Spec : Prop :=
  ∀ n, P4052707757465935864.a n = A224977 n

end A224977

/-! ## A224977.P18370226176064278419

`n²-A007953(A028907(n))`
-/

namespace A224977.P18370226176064278419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A007953 (A028907 n).toNat

end

end A224977.P18370226176064278419

namespace A224977

/-- `n²-A007953(A028907(n))` -/
def P18370226176064278419.Spec : Prop :=
  ∀ n, P18370226176064278419.a n = A224977 n

end A224977

/-! ## A224977.P3919581335571453614

`n²-A007953(n²)`
-/

namespace A224977.P3919581335571453614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A007953 (n ^ 2)

end

end A224977.P3919581335571453614

namespace A224977

/-- `n²-A007953(n²)` -/
def P3919581335571453614.Spec : Prop :=
  ∀ n, P3919581335571453614.a n = A224977 n

end A224977

/-! ## A224977.P15131785046666948699

`n²-log2(A329562(n²))`
-/

namespace A224977.P15131785046666948699
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) - Real.logb 2 (A329562 (n ^ 2) : ℝ)

end

end A224977.P15131785046666948699

namespace A224977

/-- `n²-log2(A329562(n²))` -/
def P15131785046666948699.Spec : Prop :=
  ∀ n, P15131785046666948699.a n = (A224977 n : ℝ)

end A224977

/-! ## A224977.P6031557043916222002

`2*n²-A062028(n²)`
-/

namespace A224977.P6031557043916222002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - A062028 (n ^ 2)

end

end A224977.P6031557043916222002

namespace A224977

/-- `2*n²-A062028(n²)` -/
def P6031557043916222002.Spec : Prop :=
  ∀ n, P6031557043916222002.a n = A224977 n

end A224977

/-! ## A224977.P5320734257544369467

`A008591(A054899(n²))`
-/

namespace A224977.P5320734257544369467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A054899 (n ^ 2)).toNat

end

end A224977.P5320734257544369467

namespace A224977

/-- `A008591(A054899(n²))` -/
def P5320734257544369467.Spec : Prop :=
  ∀ n, P5320734257544369467.a n = A224977 n

end A224977

/-! ## A224977.P13611238792730888645

`A066568(n²)`
-/

namespace A224977.P13611238792730888645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (n ^ 2)

end

end A224977.P13611238792730888645

namespace A224977

/-- `A066568(n²)` -/
def P13611238792730888645.Spec : Prop :=
  ∀ n, P13611238792730888645.a n = A224977 n

end A224977

/-!
# A224978: The number of completed primitive graphs of n loops, in enumerating Feynman graphs in quantum field theory.

The programs for A224978, there is no canonical definition to state claims against.
-/

/-! ## A224978.P11074624632888766813

`A115334(A108962(n)+A056359(n+1))`
-/

namespace A224978.P11074624632888766813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115334 (A108962 n + A056359 (n + 1)).toNat

end

end A224978.P11074624632888766813

/-! ## A224978.P7364285416542654031

`A364350(or(1, ∑[∑[n]]))`
-/

namespace A224978.P7364285416542654031
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364350 (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A224978.P7364285416542654031

/-! ## A224978.P3930179527784452548

`A030603(∑[n*a(n-1)])` with `a(0)=3`
-/

namespace A224978.P3930179527784452548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030603 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A224978.P3930179527784452548

/-!
# A224979: Number of primes of the form p-q+1 where q is any prime < p = prime(n).

The programs for A224979, there is no canonical definition to state claims against.
-/

/-! ## A224979.P13231234562579079575

`A002126(A055670(n+1))`
-/

namespace A224979.P13231234562579079575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (A055670 (n + 1)).toNat

end

end A224979.P13231234562579079575

/-! ## A224979.P11569634851565894537

`A073610(A008864(n+1))`
-/

namespace A224979.P11569634851565894537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (A008864 (n + 1)).toNat

end

end A224979.P11569634851565894537

/-! ## A224979.P202169830214223715

`A073610(A028815(n+1))`
-/

namespace A224979.P202169830214223715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (A028815 (n + 1)).toNat

end

end A224979.P202169830214223715

/-! ## A224979.P56776565560200052

`A035026(A111333(n+1))`
-/

namespace A224979.P56776565560200052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (A111333 (n + 1)).toNat

end

end A224979.P56776565560200052

/-! ## A224979.P5724739282498297546

`A073610(A299763(n+2))`
-/

namespace A224979.P5724739282498297546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (A299763 (n + 2)).toNat

end

end A224979.P5724739282498297546

/-! ## A224979.P6172169237354179711

`A073610(Δ[A007504(n)]+1)`
-/

namespace A224979.P6172169237354179711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (f1 (n + 1) - f1 n + 1).toNat

end

end A224979.P6172169237354179711

/-! ## A224979.P8803991355028120505

`A073610(record[A037225(n)+2])`
-/

namespace A224979.P8803991355028120505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A224979.P8803991355028120505

/-! ## A224979.P4183210171157861778

`A073610(A000040(n+1)+1)`
-/

namespace A224979.P4183210171157861778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (A000040 (n + 1) + 1).toNat

end

end A224979.P4183210171157861778

/-! ## A224979.P5893756931482221689

`A073610(A006005(n+1)+1)`
-/

namespace A224979.P5893756931482221689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (A006005 (n + 1) + 1).toNat

end

end A224979.P5893756931482221689

/-! ## A224979.P12368158336571881952

`A073610(A006093(n+1)+2)`
-/

namespace A224979.P12368158336571881952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (A006093 (n + 1) + 2).toNat

end

end A224979.P12368158336571881952

/-! ## A224979.P17562183093434517961

`A073610(A008578(n+2)+1)`
-/

namespace A224979.P17562183093434517961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (A008578 (n + 2) + 1).toNat

end

end A224979.P17562183093434517961

/-! ## A224979.P3911237627308133111

`A073610(eq[1, A013632(n)]+2)`
-/

namespace A224979.P3911237627308133111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A224979.P3911237627308133111

/-! ## A224979.P11447352980160849864

`A035026(ceil(A000040(n+1)/2))`
-/

namespace A224979.P11447352980160849864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 ⌈(A000040 (n + 1) : ℚ) / 2⌉.toNat

end

end A224979.P11447352980160849864

/-! ## A224979.P11048990197753532171

`A073610(record[A000010(n+1)+2])`
-/

namespace A224979.P11048990197753532171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A224979.P11048990197753532171

/-! ## A224979.P9119172190093553576

`A073610(p?[A206074(n+1)]+1)`
-/

namespace A224979.P9119172190093553576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A224979.P9119172190093553576

/-! ## A224979.P13101151609404874012

`A073610(p?[A246655(n+1)]+1)`
-/

namespace A224979.P13101151609404874012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A224979.P13101151609404874012

/-! ## A224979.P3325371197432809464

`A341982(A000040(n+1)+1)-2`
-/

namespace A224979.P3325371197432809464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341982 (A000040 (n + 1) + 1).toNat - 2

end

end A224979.P3325371197432809464

/-! ## A224979.P9448865455705732690

`A073610(A100484(n+1)/2+1)`
-/

namespace A224979.P9448865455705732690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A224979.P9448865455705732690

/-! ## A224979.P13470864196376334

`A073610(eq[1, A001222(n+1)]+2)`
-/

namespace A224979.P13470864196376334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A224979.P13470864196376334

/-! ## A224979.P885216360784938194

`A073610(eq[2, A000005(n+1)]+2)`
-/

namespace A224979.P885216360784938194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A224979.P885216360784938194

/-!
# A224980: Number of primes of the form p-q-1 where q is any prime < p = prime(n).

The programs for A224980, there is no canonical definition to state claims against.
-/

/-! ## A224980.P7948016486314890336

`A073610(p?[xor(1, n)+1]-1)`
-/

namespace A224980.P7948016486314890336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A224980.P7948016486314890336

/-! ## A224980.P17732737885206104465

`A073610(xor(1, p?[xor(1, n)+1]))`
-/

namespace A224980.P17732737885206104465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A224980.P17732737885206104465

/-! ## A224980.P3130200722817534816

`A073610(p?[round(sqrt(n)+n)]-1)`
-/

namespace A224980.P3130200722817534816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A224980.P3130200722817534816

/-! ## A224980.P12973723288824066656

`A073610(∑[A075526(n)])`
-/

namespace A224980.P12973723288824066656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A224980.P12973723288824066656

/-! ## A224980.P4371659163909569716

`A073610(record[A037225(n)])`
-/

namespace A224980.P4371659163909569716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A224980.P4371659163909569716

/-! ## A224980.P7381866758376430281

`A073610(record[A374840(n)])`
-/

namespace A224980.P7381866758376430281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A224980.P7381866758376430281

/-! ## A224980.P11126501698096661985

`A073610(A006093(n+1))`
-/

namespace A224980.P11126501698096661985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (A006093 (n + 1)).toNat

end

end A224980.P11126501698096661985

/-! ## A224980.P2154439726391393055

`A073610(A039915(n+1))`
-/

namespace A224980.P2154439726391393055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (A039915 (n + 1)).toNat

end

end A224980.P2154439726391393055

/-! ## A224980.P2394817315445938380

`A002126(A156037(n+1))`
-/

namespace A224980.P2394817315445938380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (A156037 (n + 1)).toNat

end

end A224980.P2394817315445938380

/-! ## A224980.P12069130229080946396

`A035026(A130290(n+1))`
-/

namespace A224980.P12069130229080946396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (A130290 (n + 1)).toNat

end

end A224980.P12069130229080946396

/-!
# A224981: Numbers that are the sum of exactly 6 distinct nonzero squares.

The programs for A224981, there is no canonical definition to state claims against.
-/

/-! ## A224981.P17334863422154093772

`lt[A249025(A249025(n+1)), A339430(n)]`
-/

namespace A224981.P17334863422154093772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249025 (A249025 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339430 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A224981.P17334863422154093772

/-!
# A224982: Numbers that are the sum of exactly 7 distinct nonzero squares.

The programs for A224982, there is no canonical definition to state claims against.
-/

/-! ## A224982.P5415267942780865229

`lt[9, A178334(A339431(n))]`
-/

namespace A224982.P5415267942780865229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A339431 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A224982.P5415267942780865229

/-!
# A224983: Numbers that are the sum of exactly 8 distinct nonzero squares.

The programs for A224983, there is no canonical definition to state claims against.
-/

/-! ## A224983.P9224483297694955324

`lt[A005408(A066031(n+1)), A339430(n)]`
-/

namespace A224983.P9224483297694955324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A066031 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339430 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A224983.P9224483297694955324

/-!
# A224985: Floor of the Euclidean distance of a point on the (1, 1, 1; 2, 2, 2) 3D walk.

The programs for A224985, there is no canonical definition to state claims against.
-/

/-! ## A224985.P10443285541815119734

`A000196(∑[floor((n+2)/3)^3])`
-/

namespace A224985.P10443285541815119734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 3⌋ ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A224985.P10443285541815119734

/-! ## A224985.P3561296513389196619

`A230059(n+4)-A185114(A059801(n+1))`
-/

namespace A224985.P3561296513389196619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230059 (n + 4) - A185114 (A059801 (n + 1)).toNat

end

end A224985.P3561296513389196619

/-!
# A224986: a(n) = Product_{k=1..n-4} (n-k-2)!^(k*k!).

The programs for A224986, there is no canonical definition to state claims against.
-/

/-! ## A224986.P2700576118996981322

`A001697(A001316(n))^A120036(n)`
-/

namespace A224986.P2700576118996981322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001697 (A001316 n).toNat : ℚ) ^ (A120036 n : ℤ)

end

end A224986.P2700576118996981322

/-! ## A224986.P12867623932065932468

`A264542(A270875(n+1))^A231091(n+1)`
-/

namespace A224986.P12867623932065932468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264542 (A270875 (n + 1)).toNat : ℚ) ^ (A231091 (n + 1) : ℤ)

end

end A224986.P12867623932065932468

/-! ## A224986.P732464690052421050

`A122525(A147582(n+1))^A006926(n+3)`
-/

namespace A224986.P732464690052421050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122525 (A147582 (n + 1)).toNat : ℚ) ^ (A006926 (n + 3) : ℤ)

end

end A224986.P732464690052421050

/-!
# A224987: Numbers such that Liouville's function (A002819) and the little omega analog to Liouville's function (A174863) are equal.

The programs for A224987, there is no canonical definition to state claims against.
-/

/-! ## A224987.P2067985069972047561

`lt[A324643(n+1), A270173(n)]`
-/

namespace A224987.P2067985069972047561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270173 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A224987.P2067985069972047561

/-! ## A224987.P12174101133194852438

`lt[A222228(2*n+1)², A270173(n)]`
-/

namespace A224987.P12174101133194852438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270173 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A224987.P12174101133194852438

/-! ## A224987.P6742957925713380958

`eq[A072203(n+1), A123066(n+1)]+1`
-/

namespace A224987.P6742957925713380958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123066 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A224987.P6742957925713380958

/-! ## A224987.P17413839890774078053

`∑[gcd(A038994(n+1), A176467(2*(n+1)))]`
-/

namespace A224987.P17413839890774078053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038994 (n + 1)) (A176467 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224987.P17413839890774078053

/-! ## A224987.P14212323577018346040

`eq[1-∑[(-1)^A001221(n+1)], 1-A002819(n+1)]+1`
-/

namespace A224987.P14212323577018346040
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001221 (n + 1) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f3 j : ℚ)) n + 1

end

end A224987.P14212323577018346040

/-!
# A224988: Even RMS numbers: even numbers n such that root mean square of divisors of n is an integer.

The programs for A224988, there is no canonical definition to state claims against.
-/

/-! ## A224988.P1696640290302970375

`A327056(∑[char[5*n+n+1]]^n+n)`
-/

namespace A224988.P1696640290302970375
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327056 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ n + n)

end

end A224988.P1696640290302970375

/-! ## A224988.P2744756422574273287

`lcm(A020639(2^C(n, 2)), A327056(n+1))`
-/

namespace A224988.P2744756422574273287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (2 ^ Nat.choose n 2)) (A327056 (n + 1))

end

end A224988.P2744756422574273287

/-! ## A224988.P11478325812475905823

`A327056(n+1)+A000007(A000666(n))`
-/

namespace A224988.P11478325812475905823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327056 (n + 1) + A000007 (A000666 n).toNat

end

end A224988.P11478325812475905823

/-!
# A224989: Let p = prime(n). a(n) = number of primes q less than p, such that both p-q+1 and p-q-1 are primes.

The programs for A224989, there is no canonical definition to state claims against.
-/

/-! ## A224989.P18038365736296547128

`A294185(A130290(n+1))`
-/

namespace A224989.P18038365736296547128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294185 (A130290 (n + 1)).toNat

end

end A224989.P18038365736296547128

/-! ## A224989.P2724004291567403437

`A294185(A130291(n+1)-1)`
-/

namespace A224989.P2724004291567403437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294185 (A130291 (n + 1) - 1).toNat

end

end A224989.P2724004291567403437

/-! ## A224989.P303073810449014742

`A294185(floor(A000040(n+1)/2))`
-/

namespace A224989.P303073810449014742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294185 ⌊(A000040 (n + 1) : ℚ) / 2⌋.toNat

end

end A224989.P303073810449014742

/-! ## A224989.P1190436999857629541

`A294185(A004526(Δ[A007504(n)]))`
-/

namespace A224989.P1190436999857629541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294185 (A004526 (f1 (n + 1) - f1 n).toNat).toNat

end

end A224989.P1190436999857629541

/-! ## A224989.P5785393191287849027

`A294185(A004525(record[A037225(n)]))`
-/

namespace A224989.P5785393191287849027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294185 (A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A224989.P5785393191287849027

/-! ## A224989.P12257887272415304376

`A294185(A065033(record[A037225(n)]))`
-/

namespace A224989.P12257887272415304376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294185 (A065033 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A224989.P12257887272415304376

/-! ## A224989.P15943030000922924116

`A294185(∏{p}[A006005(n+1), A004526(#)])`
-/

namespace A224989.P15943030000922924116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294185 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004526 p).toNat

end

end A224989.P15943030000922924116

/-!
# A224992: Non-crossing, non-nesting, 3-colored permutations on {1,2,...,n}.

The programs for A224992, there is no canonical definition to state claims against.
-/

/-! ## A224992.P7101194680957231348

`A006368(A000079(n)*A166991(n))`
-/

namespace A224992.P7101194680957231348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A000079 n * A166991 n).toNat

end

end A224992.P7101194680957231348

/-! ## A224992.P3653338374015655722

`A080512(A000079(n)*A166991(n))`
-/

namespace A224992.P3653338374015655722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (A000079 n * A166991 n).toNat

end

end A224992.P3653338374015655722

/-!
# A224993: Non-crossing, non-nesting, 4-colored permutations on {1,2,...,n}.

The programs for A224993, there is no canonical definition to state claims against.
-/

/-! ## A224993.P14727024995679366417

`A060968(A346765(n+1))`
-/

namespace A224993.P14727024995679366417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060968 (A346765 (n + 1)).toNat

end

end A224993.P14727024995679366417

/-!
# A224995: Floor(1/f(x^(1/n))) for x = 3/2, where f computes the fractional part.

The programs for A224995, there is no canonical definition to state claims against.
-/

/-! ## A224995.P15764999360295831710

`round(log(A233068(n+1)))`
-/

namespace A224995.P15764999360295831710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A233068 (n + 1) : ℝ))

end

end A224995.P15764999360295831710

/-! ## A224995.P18077639679035925661

`A172266(3*n)+A010846(A049492(n+1))`
-/

namespace A224995.P18077639679035925661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172266 (3 * n) + A010846 (A049492 (n + 1)).toNat

end

end A224995.P18077639679035925661

/-! ## A224995.P11697403852767881077

`A003056(A001859(2*n+1)+A000961(n+1))`
-/

namespace A224995.P11697403852767881077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A001859 (2 * n + 1) + A000961 (n + 1)).toNat

end

end A224995.P11697403852767881077

/-! ## A224995.P16089611063433557592

`A354107(A325084(n+1))+A172266(3*n)`
-/

namespace A224995.P16089611063433557592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354107 (A325084 (n + 1)).toNat + A172266 (3 * n)

end

end A224995.P16089611063433557592

/-! ## A224995.P8853621047668587684

`A000196(A008000(n)+(2*n+1)²)+1`
-/

namespace A224995.P8853621047668587684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008000 n + ((2 * n + 1) ^ 2 : ℤ)).toNat + 1

end

end A224995.P8853621047668587684

/-!
# A224996: a(n) = floor(1/f(x^(1/n))) for x = 2, where f computes the fractional part.

The programs for A224996, the canonical program `A224996.P8211138455609308630` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A224996 has offset 2).

The definition of A224996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A224996.P8211138455609308630

`floor((n+2)/log(2)-1/2)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A224996

/-- `floor((n+2)/log(2)-1/2)` -/
def P8211138455609308630.Spec : Prop :=
  ∀ n, P8211138455609308630.a n = A224996 (n + 2)

theorem P8211138455609308630.correct : P8211138455609308630.Spec := by
  intro n
  simp only [A224996, Nat.add_sub_cancel]

end A224996

/-! ## A224996.P7782911213239469426

`A078607(n+2)-1`
-/

namespace A224996.P7782911213239469426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078607 (n + 2) - 1

end

end A224996.P7782911213239469426

namespace A224996

/-- `A078607(n+2)-1` -/
def P7782911213239469426.Spec : Prop :=
  ∀ n, P7782911213239469426.a n = A224996 (n + 2)

end A224996

/-! ## A224996.P10733408729353864719

`A004526(A078608(n+2)-1)`
-/

namespace A224996.P10733408729353864719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A078608 (n + 2) - 1).toNat

end

end A224996.P10733408729353864719

namespace A224996

/-- `A004526(A078608(n+2)-1)` -/
def P10733408729353864719.Spec : Prop :=
  ∀ n, P10733408729353864719.a n = A224996 (n + 2)

end A224996

/-! ## A224996.P17059709080767886465

`A123108(A078608(n+2)-1)`
-/

namespace A224996.P17059709080767886465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A078608 (n + 2) - 1).toNat

end

end A224996.P17059709080767886465

namespace A224996

/-- `A123108(A078608(n+2)-1)` -/
def P17059709080767886465.Spec : Prop :=
  ∀ n, P17059709080767886465.a n = A224996 (n + 2)

end A224996

/-! ## A224996.P6882890790928870318

`A123108(A342831(n+2)-2)`
-/

namespace A224996.P6882890790928870318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A342831 (n + 2) - 2).toNat

end

end A224996.P6882890790928870318

namespace A224996

/-- `A123108(A342831(n+2)-2)` -/
def P6882890790928870318.Spec : Prop :=
  ∀ n, P6882890790928870318.a n = A224996 (n + 2)

end A224996

/-! ## A224996.P4158872967010198000

`A140106(A342831(n+2))`
-/

namespace A224996.P4158872967010198000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A342831 (n + 2)).toNat

end

end A224996.P4158872967010198000

namespace A224996

/-- `A140106(A342831(n+2))` -/
def P4158872967010198000.Spec : Prop :=
  ∀ n, P4158872967010198000.a n = A224996 (n + 2)

end A224996

/-! ## A224996.P15129931302852410472

`∑[Δ[A065033(A078608(n+1))]!]`
-/

namespace A224996.P15129931302852410472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A078608 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224996.P15129931302852410472

namespace A224996

/-- `∑[Δ[A065033(A078608(n+1))]!]` -/
def P15129931302852410472.Spec : Prop :=
  ∀ n, (P15129931302852410472.a n : ℤ) = A224996 (n + 2)

end A224996

/-! ## A224996.P11520171902688620599

`∑[Δ[A004526(A342831(n+1))]!]`
-/

namespace A224996.P11520171902688620599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A342831 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224996.P11520171902688620599

namespace A224996

/-- `∑[Δ[A004526(A342831(n+1))]!]` -/
def P11520171902688620599.Spec : Prop :=
  ∀ n, (P11520171902688620599.a n : ℤ) = A224996 (n + 2)

end A224996

/-! ## A224996.P3186849613079590524

`∑[A078614(n+2)]`
-/

namespace A224996.P3186849613079590524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078614 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A224996.P3186849613079590524

namespace A224996

/-- `∑[A078614(n+2)]` -/
def P3186849613079590524.Spec : Prop :=
  ∀ n, P3186849613079590524.a n = A224996 (n + 2)

end A224996

/-! ## A224996.P9446248506993103048

`round(log2(A000471(n+2)))`
-/

namespace A224996.P9446248506993103048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A000471 (n + 2) : ℝ))

end

end A224996.P9446248506993103048

namespace A224996

/-- `round(log2(A000471(n+2)))` -/
def P9446248506993103048.Spec : Prop :=
  ∀ n, P9446248506993103048.a n = A224996 (n + 2)

end A224996

/-! ## A224996.P17066742647551206596

`round(log2(A000495(n+2)))`
-/

namespace A224996.P17066742647551206596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A000495 (n + 2) : ℝ))

end

end A224996.P17066742647551206596

namespace A224996

/-- `round(log2(A000495(n+2)))` -/
def P17066742647551206596.Spec : Prop :=
  ∀ n, P17066742647551206596.a n = A224996 (n + 2)

end A224996

/-! ## A224996.P11930109583335650310

`round(log2(A000501(n+2)))`
-/

namespace A224996.P11930109583335650310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A000501 (n + 2) : ℝ))

end

end A224996.P11930109583335650310

namespace A224996

/-- `round(log2(A000501(n+2)))` -/
def P11930109583335650310.Spec : Prop :=
  ∀ n, P11930109583335650310.a n = A224996 (n + 2)

end A224996

/-! ## A224996.P14071885691824080888

`round(log2(A002459(n+2)))`
-/

namespace A224996.P14071885691824080888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A002459 (n + 2) : ℝ))

end

end A224996.P14071885691824080888

namespace A224996

/-- `round(log2(A002459(n+2)))` -/
def P14071885691824080888.Spec : Prop :=
  ∀ n, P14071885691824080888.a n = A224996 (n + 2)

end A224996

/-! ## A224996.P6821514724682987612

`round(log2(A309104(n+2)))`
-/

namespace A224996.P6821514724682987612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A309104 (n + 2) : ℝ))

end

end A224996.P6821514724682987612

namespace A224996

/-- `round(log2(A309104(n+2)))` -/
def P6821514724682987612.Spec : Prop :=
  ∀ n, P6821514724682987612.a n = A224996 (n + 2)

end A224996

/-! ## A224996.P9946591884416693817

`round(log2(A309105(n+2)))`
-/

namespace A224996.P9946591884416693817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A309105 (n + 2) : ℝ))

end

end A224996.P9946591884416693817

namespace A224996

/-- `round(log2(A309105(n+2)))` -/
def P9946591884416693817.Spec : Prop :=
  ∀ n, P9946591884416693817.a n = A224996 (n + 2)

end A224996

/-! ## A224996.P4949281853543577356

`round(log2(e*cosh(n+1)))`
-/

namespace A224996.P4949281853543577356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Real.exp 1 * Real.cosh (n + 1 : ℝ)))

end

end A224996.P4949281853543577356

namespace A224996

/-- `round(log2(e*cosh(n+1)))` -/
def P4949281853543577356.Spec : Prop :=
  ∀ n, P4949281853543577356.a n = A224996 (n + 2)

end A224996

/-! ## A224996.P10355821712917674478

`round(log2(e*sinh(n+1)))`
-/

namespace A224996.P10355821712917674478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Real.exp 1 * Real.sinh (n + 1 : ℝ)))

end

end A224996.P10355821712917674478

namespace A224996

/-- `round(log2(e*sinh(n+1)))` -/
def P10355821712917674478.Spec : Prop :=
  ∀ n, P10355821712917674478.a n = A224996 (n + 2)

end A224996

/-! ## A224996.P2319973573858851110

`round(log2(cosh(n+2)))`
-/

namespace A224996.P2319973573858851110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Real.cosh (n + 2 : ℝ)))

end

end A224996.P2319973573858851110

namespace A224996

/-- `round(log2(cosh(n+2)))` -/
def P2319973573858851110.Spec : Prop :=
  ∀ n, P2319973573858851110.a n = A224996 (n + 2)

end A224996

/-! ## A224996.P11845550185774627133

`round(log2(sinh(n+2)))`
-/

namespace A224996.P11845550185774627133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Real.sinh (n + 2 : ℝ)))

end

end A224996.P11845550185774627133

namespace A224996

/-- `round(log2(sinh(n+2)))` -/
def P11845550185774627133.Spec : Prop :=
  ∀ n, P11845550185774627133.a n = A224996 (n + 2)

end A224996

