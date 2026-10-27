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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A114100: Run lengths associated with A056784.

The programs for A114100, there is no canonical definition to state claims against.
-/

/-! ## A114100.P18116650390639824622

`A130821(A083330(n))`
-/

namespace A114100.P18116650390639824622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130821 (A083330 n).toNat

end

end A114100.P18116650390639824622

/-! ## A114100.P11482527975568257955

`A130821(A180140(n))`
-/

namespace A114100.P11482527975568257955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130821 (A180140 n).toNat

end

end A114100.P11482527975568257955

/-! ## A114100.P618294047751459491

`A324769(A162920(n))`
-/

namespace A114100.P618294047751459491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324769 (A162920 n).toNat

end

end A114100.P618294047751459491

/-!
# A114101: Begin with prime(1), then prime(2). After prime(j) write all the primes of the form prime(i) concatenated with prime(j) with i<j; then prime(j+1).

The programs for A114101, there is no canonical definition to state claims against.
-/

/-! ## A114101.P781988707959215614

`p?[A080670(A253563(A089633(n)))]`
-/

namespace A114101.P781988707959215614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080670 (A253563 (A089633 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114101.P781988707959215614

/-! ## A114101.P5900526813552704637

`A114007(comp[a(n-2)+7])` with `a(0)=6, a(1)=10`
-/

namespace A114101.P5900526813552704637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 10] fun n f1 =>
  f1 (n - 2) + 7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114007 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A114101.P5900526813552704637

/-! ## A114101.P8329280676265611217

`A114007(lt[0, ∑{p}[2*n, 4-#]]-1)`
-/

namespace A114101.P8329280676265611217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), (4 - (p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114007 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 1)

end

end A114101.P8329280676265611217

/-! ## A114101.P16958631292187642037

`A114007(lt[2^(n-∑[val(n+1, 2)]), 4])`
-/

namespace A114101.P16958631292187642037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114007 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n)

end

end A114101.P16958631292187642037

/-! ## A114101.P6472425889721878572

`A114007(lt[2*(n+1)-∑{d}[n+1, #], 6])`
-/

namespace A114101.P6472425889721878572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114007 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A114101.P6472425889721878572

/-!
# A114102: Number of partitions of n such that all parts of a partition have the same digital root.

The programs for A114102, there is no canonical definition to state claims against.
-/

/-! ## A114102.P8017994376812459947

`A044934(A147031(n+1))+∏{e}[n+1, #+1]`
-/

namespace A114102.P8017994376812459947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044934 (A147031 (n + 1)).toNat + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A114102.P8017994376812459947

/-! ## A114102.P4127048773013034342

`∑{d}[A187829(n+1), A144373(#)]`
-/

namespace A114102.P4127048773013034342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A144373 d

end

end A114102.P4127048773013034342

/-! ## A114102.P13836904504202667293

`A083868(n+1)+A000005(A187829(n+1))`
-/

namespace A114102.P13836904504202667293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083868 (n + 1) + A000005 (A187829 (n + 1)).toNat

end

end A114102.P13836904504202667293

/-! ## A114102.P9809124818161022308

`A001222(lcm(A211681(n+1), A293514(n+1)))`
-/

namespace A114102.P9809124818161022308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (A211681 (n + 1)) (A293514 (n + 1)))

end

end A114102.P9809124818161022308

/-! ## A114102.P2495829086658272050

`A055396(A065648(n))+A000005(A187829(n+1))`
-/

namespace A114102.P2495829086658272050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A065648 n).toNat + A000005 (A187829 (n + 1)).toNat

end

end A114102.P2495829086658272050

/-!
# A114103: n multiples of n such that a(n) is a multiple of n. The n-th group contains n multiples of n. Arranged sequentially the n-th term is a multiple of n.

The programs for A114103, the canonical program `A114103.P1932017193944102141` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114103 has offset 1).

The definition of A114103 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114103.P1932017193944102141

`lcm(row(n)+1, A000217(row(n))+col(n)+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A114103

/-- `lcm(row(n)+1, A000217(row(n))+col(n)+1)` -/
def P1932017193944102141.Spec : Prop :=
  ∀ n, (P1932017193944102141.a n : ℤ) = A114103 (n + 1)

theorem P1932017193944102141.correct : P1932017193944102141.Spec := by
  intro n
  simp only [A114103, Nat.add_sub_cancel]

end A114103

/-! ## A114103.P6985379707772154078

`lcm(n+1, ∑[char[∑[n]]])`
-/

namespace A114103.P6985379707772154078
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114103.P6985379707772154078

namespace A114103

/-- `lcm(n+1, ∑[char[∑[n]]])` -/
def P6985379707772154078.Spec : Prop :=
  ∀ n, (P6985379707772154078.a n : ℤ) = A114103 (n + 1)

end A114103

/-! ## A114103.P9883629529485390103

`(n+1)*A114104(n+1)`
-/

namespace A114103.P9883629529485390103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A114104 (n + 1)

end

end A114103.P9883629529485390103

namespace A114103

/-- `(n+1)*A114104(n+1)` -/
def P9883629529485390103.Spec : Prop :=
  ∀ n, P9883629529485390103.a n = A114103 (n + 1)

end A114103

/-! ## A114103.P14399506300711748655

`sqrt(lcm((n+1)², A093995(n+1)))`
-/

namespace A114103.P14399506300711748655
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.lcm ((n + 1) ^ 2 : ℤ) (A093995 (n + 1)) : ℝ)

end

end A114103.P14399506300711748655

namespace A114103

/-- `sqrt(lcm((n+1)², A093995(n+1)))` -/
def P14399506300711748655.Spec : Prop :=
  ∀ n, P14399506300711748655.a n = (A114103 (n + 1) : ℝ)

end A114103

/-! ## A114103.P10153293730651293374

`lcm(A005843(n+1), A005843(A002024(n+1)))/2`
-/

namespace A114103.P10153293730651293374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A005843 (n + 1)) (A005843 (A002024 (n + 1)).toNat) : ℚ) / 2

end

end A114103.P10153293730651293374

namespace A114103

/-- `lcm(A005843(n+1), A005843(A002024(n+1)))/2` -/
def P10153293730651293374.Spec : Prop :=
  ∀ n, P10153293730651293374.a n = (A114103 (n + 1) : ℚ)

end A114103

/-! ## A114103.P15836273816849250358

`(n+1)/gcd(n+1, A123578(n+1))*A123578(n+1)`
-/

namespace A114103.P15836273816849250358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A123578 (n + 1)) : ℚ) * (A123578 (n + 1) : ℚ)

end

end A114103.P15836273816849250358

namespace A114103

/-- `(n+1)/gcd(n+1, A123578(n+1))*A123578(n+1)` -/
def P15836273816849250358.Spec : Prop :=
  ∀ n, P15836273816849250358.a n = (A114103 (n + 1) : ℚ)

end A114103

/-! ## A114103.P4994122570559597386

`A000027(lcm(A000027(n+1), A002024(n+1)))`
-/

namespace A114103.P4994122570559597386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lcm (A000027 (n + 1)) (A002024 (n + 1)))

end

end A114103.P4994122570559597386

namespace A114103

/-- `A000027(lcm(A000027(n+1), A002024(n+1)))` -/
def P4994122570559597386.Spec : Prop :=
  ∀ n, P4994122570559597386.a n = A114103 (n + 1)

end A114103

/-! ## A114103.P2280614101744119920

`A051173(∑[char[∑[n]]+n])`
-/

namespace A114103.P2280614101744119920
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051173 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114103.P2280614101744119920

namespace A114103

/-- `A051173(∑[char[∑[n]]+n])` -/
def P2280614101744119920.Spec : Prop :=
  ∀ n, P2280614101744119920.a n = A114103 (n + 1)

end A114103

/-! ## A114103.P1298842877682514788

`(n+1)*A164306(A002024(n+1)+∑[n])`
-/

namespace A114103.P1298842877682514788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A164306 (A002024 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A114103.P1298842877682514788

namespace A114103

/-- `(n+1)*A164306(A002024(n+1)+∑[n])` -/
def P1298842877682514788.Spec : Prop :=
  ∀ n, P1298842877682514788.a n = A114103 (n + 1)

end A114103

/-! ## A114103.P10004141634432956342

`(n+1)*A326700(A164874(n+1))`
-/

namespace A114103.P10004141634432956342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A326700 (A164874 (n + 1)).toNat

end

end A114103.P10004141634432956342

namespace A114103

/-- `(n+1)*A326700(A164874(n+1))` -/
def P10004141634432956342.Spec : Prop :=
  ∀ n, P10004141634432956342.a n = A114103 (n + 1)

end A114103

/-!
# A114104: a(n) = A114103(n)/n.

The programs for A114104, the canonical program `A114104.P11501347288294405863` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114104 has offset 1).

The definition of A114104 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114104.P11501347288294405863

`A114103(n+1)/(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A114104

/-- `A114103(n+1)/(n+1)` -/
def P11501347288294405863.Spec : Prop :=
  ∀ n, P11501347288294405863.a n = (A114104 (n + 1) : ℚ)

end A114104

/-! ## A114104.P6546030046256993860

`lcm(n+1, ∑[char[∑[n]]])/(n+1)`
-/

namespace A114104.P6546030046256993860
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A114104.P6546030046256993860

namespace A114104

/-- `lcm(n+1, ∑[char[∑[n]]])/(n+1)` -/
def P6546030046256993860.Spec : Prop :=
  ∀ n, P6546030046256993860.a n = (A114104 (n + 1) : ℚ)

end A114104

/-! ## A114104.P14916725478943810198

`round(sqrt(2*n+1)/gcd(n+1, round(sqrt(2*n+1))))`
-/

namespace A114104.P14916725478943810198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ) / (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))) : ℝ))

end

end A114104.P14916725478943810198

namespace A114104

/-- `round(sqrt(2*n+1)/gcd(n+1, round(sqrt(2*n+1))))` -/
def P14916725478943810198.Spec : Prop :=
  ∀ n, P14916725478943810198.a n = A114104 (n + 1)

end A114104

/-! ## A114104.P8390050680594222902

`gcd(∑[char[∑[n]]]², A267864(n+1))`
-/

namespace A114104.P8390050680594222902
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (A267864 (n + 1))

end

end A114104.P8390050680594222902

namespace A114104

/-- `gcd(∑[char[∑[n]]]², A267864(n+1))` -/
def P8390050680594222902.Spec : Prop :=
  ∀ n, (P8390050680594222902.a n : ℤ) = A114104 (n + 1)

end A114104

/-! ## A114104.P17210023011743278590

`A002024(n+1)/gcd(n+1, comp[∑[n]])`
-/

namespace A114104.P17210023011743278590
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) / (Nat.gcd (n + 1) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ)

end

end A114104.P17210023011743278590

namespace A114104

/-- `A002024(n+1)/gcd(n+1, comp[∑[n]])` -/
def P17210023011743278590.Spec : Prop :=
  ∀ n, P17210023011743278590.a n = (A114104 (n + 1) : ℚ)

end A114104

/-! ## A114104.P233004742943733880

`gcd(A267864(n+1), A381888(n))`
-/

namespace A114104.P233004742943733880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A267864 (n + 1)) (A381888 n)

end

end A114104.P233004742943733880

namespace A114104

/-- `gcd(A267864(n+1), A381888(n))` -/
def P233004742943733880.Spec : Prop :=
  ∀ n, (P233004742943733880.a n : ℤ) = A114104 (n + 1)

end A114104

/-! ## A114104.P783530803755966240

`A164306(∑[char[∑[n]]+n])`
-/

namespace A114104.P783530803755966240
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114104.P783530803755966240

namespace A114104

/-- `A164306(∑[char[∑[n]]+n])` -/
def P783530803755966240.Spec : Prop :=
  ∀ n, P783530803755966240.a n = A114104 (n + 1)

end A114104

/-! ## A114104.P15205891926378574890

`A003056(A114103(n+1)+A000096(n))-n`
-/

namespace A114104.P15205891926378574890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A114103 (n + 1) + A000096 n).toNat - (n : ℤ)

end

end A114104.P15205891926378574890

namespace A114104

/-- `A003056(A114103(n+1)+A000096(n))-n` -/
def P15205891926378574890.Spec : Prop :=
  ∀ n, P15205891926378574890.a n = A114104 (n + 1)

end A114104

/-! ## A114104.P7749223841953594635

`A167192(∑[A035214(n)*A080036(n)])`
-/

namespace A114104.P7749223841953594635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n * A080036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167192 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A114104.P7749223841953594635

namespace A114104

/-- `A167192(∑[A035214(n)*A080036(n)])` -/
def P7749223841953594635.Spec : Prop :=
  ∀ n, P7749223841953594635.a n = A114104 (n + 1)

end A114104

/-! ## A114104.P13390324289007092686

`A326700(A164874(n+1))`
-/

namespace A114104.P13390324289007092686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326700 (A164874 (n + 1)).toNat

end

end A114104.P13390324289007092686

namespace A114104

/-- `A326700(A164874(n+1))` -/
def P13390324289007092686.Spec : Prop :=
  ∀ n, P13390324289007092686.a n = A114104 (n + 1)

end A114104

/-!
# A114105: The sum of the next n terms of A114103.

The programs for A114105, there is no canonical definition to state claims against.
-/

/-! ## A114105.P12371579227573882007

`(n+1)*(A051193(n+1)-A004526(n))`
-/

namespace A114105.P12371579227573882007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A051193 (n + 1) - A004526 n)

end

end A114105.P12371579227573882007

/-!
# A114106: Number of 4-almost primes less than or equal to 10^n.

The programs for A114106, there is no canonical definition to state claims against.
-/

/-! ## A114106.P3546775445204171384

`A082996(10^n)`
-/

namespace A114106.P3546775445204171384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082996 (10 ^ n)

end

end A114106.P3546775445204171384

/-!
# A114108: a(n) = number of divisors of A111390(n).

The programs for A114108, there is no canonical definition to state claims against.
-/

/-! ## A114108.P2556406001145323703

`∏{e}[A111390(n+1), #+1]`
-/

namespace A114108.P2556406001145323703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111390 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A114108.P2556406001145323703

/-! ## A114108.P11263975937606181136

`A000005(A111390(n+1))`
-/

namespace A114108.P11263975937606181136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A111390 (n + 1)).toNat

end

end A114108.P11263975937606181136

/-! ## A114108.P920165747838615593

`A112329(4*A111390(n+1))`
-/

namespace A114108.P920165747838615593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (4 * A111390 (n + 1)).toNat

end

end A114108.P920165747838615593

/-! ## A114108.P982580365095172867

`∑{d}[A111390(n+1), A054977(#)]`
-/

namespace A114108.P982580365095172867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054977 d

end

end A114108.P982580365095172867

/-! ## A114108.P10260064432414498712

`∑{d}[A111390(n+1), A057427(#)]`
-/

namespace A114108.P10260064432414498712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A114108.P10260064432414498712

/-! ## A114108.P1517611360373225898

`∑{d}[A111390(n+1), gcd(#, A000040(#))]`
-/

namespace A114108.P1517611360373225898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111390 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A000040 d)

end

end A114108.P1517611360373225898

/-! ## A114108.P16260530568866726361

`∑{d}[A111390(n+1), A001055(A014963(#))]`
-/

namespace A114108.P16260530568866726361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001055 (A014963 d).toNat

end

end A114108.P16260530568866726361

/-!
# A114110: Records in A111390.

The programs for A114110, there is no canonical definition to state claims against.
-/

/-! ## A114110.P3494697920258354865

`record[A111390(n+1)]`
-/

namespace A114110.P3494697920258354865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114110.P3494697920258354865

/-! ## A114110.P16860191373943002381

`A111390(A114111(n+1))`
-/

namespace A114110.P16860191373943002381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111390 (A114111 (n + 1)).toNat

end

end A114110.P16860191373943002381

/-! ## A114110.P15008759643366913411

`record[A111390(n^A178334(n))-char[1]]`
-/

namespace A114110.P15008759643366913411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111390 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114110.P15008759643366913411

/-! ## A114110.P11452835404436560522

`record[A111390(n^A178334(n))]%A000032(2*n)`
-/

namespace A114110.P11452835404436560522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111390 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000032 (2 * n))

end

end A114110.P11452835404436560522

/-! ## A114110.P4281482424488684858

`A000045((-1)^(2*n))*record[A111390(n^A178334(n))]`
-/

namespace A114110.P4281482424488684858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111390 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((-1) ^ (2 * n)).toNat * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114110.P4281482424488684858

/-!
# A114111: Where records occur in A111390.

The programs for A114111, there is no canonical definition to state claims against.
-/

/-! ## A114111.P8774582559772413827

`eq[A196563(xor(n, 3*n)/2), A345703(2*(n+2))]`
-/

namespace A114111.P8774582559772413827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (SequenceMachineLib.roundAway ((Nat.xor n (3 * n) : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345703 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114111.P8774582559772413827

/-!
# A114112: a(1)=1, a(2)=2; thereafter a(n) = n+1 if n odd, n-1 if n even.

The programs for A114112, the canonical program `A114112.P16908309039137191167` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114112 has offset 1).

The definition of A114112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114112.P16908309039137191167

`-xor(n, C(n, n²)-2)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114112

/-- `-xor(n, C(n, n²)-2)` -/
def P16908309039137191167.Spec : Prop :=
  ∀ n, P16908309039137191167.a n = A114112 (n + 1)

theorem P16908309039137191167.correct : P16908309039137191167.Spec := by
  intro n
  simp only [A114112, Nat.add_sub_cancel]

end A114112

/-! ## A114112.P16545261252521653482

`a(n-2)+2` with `a(0)=1, a(1)=2, a(2)=4, a(3)=3`
-/

namespace A114112.P16545261252521653482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 3] fun n a =>
  a (n - 2) + 2

end

end A114112.P16545261252521653482

namespace A114112

/-- `a(n-2)+2` -/
def P16545261252521653482.Spec : Prop :=
  ∀ n, (P16545261252521653482.a n : ℤ) = A114112 (n + 1)

end A114112

/-! ## A114112.P6957959333734528007

`xor(n, round(n/(n+2)))+1`
-/

namespace A114112.P6957959333734528007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) / (n + 2 : ℚ))) + 1

end

end A114112.P6957959333734528007

namespace A114112

/-- `xor(n, round(n/(n+2)))+1` -/
def P6957959333734528007.Spec : Prop :=
  ∀ n, P6957959333734528007.a n = A114112 (n + 1)

end A114112

/-! ## A114112.P17921782819358635839

`n-(2-a(gcd(2, n)))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A114112.P17921782819358635839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  (n : ℤ) - (2 - a (Nat.gcd 2 n))

end

end A114112.P17921782819358635839

namespace A114112

/-- `n-(2-a(gcd(2, n)))` -/
def P17921782819358635839.Spec : Prop :=
  ∀ n, P17921782819358635839.a n = A114112 (n + 1)

end A114112

/-! ## A114112.P7648199046506404128

`ceil(n²/a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A114112.P7648199046506404128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  ⌈(n ^ 2 : ℚ) / (a (n - 1) : ℚ)⌉

end

end A114112.P7648199046506404128

namespace A114112

/-- `ceil(n²/a(n-1))` -/
def P7648199046506404128.Spec : Prop :=
  ∀ n, P7648199046506404128.a n = A114112 (n + 1)

end A114112

/-! ## A114112.P7285061632250463802

`4-(a(a(n%2))-n)` with `a(0)=1, a(1)=2`
-/

namespace A114112.P7285061632250463802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 - (a (a (n % 2)).toNat - (n : ℤ))

end

end A114112.P7285061632250463802

namespace A114112

/-- `4-(a(a(n%2))-n)` -/
def P7285061632250463802.Spec : Prop :=
  ∀ n, P7285061632250463802.a n = A114112 (n + 1)

end A114112

/-! ## A114112.P11612493277689150459

`Δ[n²]-a(n-1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A114112.P11612493277689150459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - a (n - 1)

end

end A114112.P11612493277689150459

namespace A114112

/-- `Δ[n²]-a(n-1)` -/
def P11612493277689150459.Spec : Prop :=
  ∀ n, P11612493277689150459.a n = A114112 (n + 1)

end A114112

/-! ## A114112.P18262080308739235261

`or(floor(atan(n))+1, 2*n)-n`
-/

namespace A114112.P18262080308739235261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (⌊Real.arctan (n : ℝ)⌋ + 1) (2 * n : ℤ) - (n : ℤ)

end

end A114112.P18262080308739235261

namespace A114112

/-- `or(floor(atan(n))+1, 2*n)-n` -/
def P18262080308739235261.Spec : Prop :=
  ∀ n, P18262080308739235261.a n = A114112 (n + 1)

end A114112

/-! ## A114112.P11343887088170428188

`∑[2-a(n-1)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=-1`
-/

namespace A114112.P11343887088170428188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, -1] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114112.P11343887088170428188

namespace A114112

/-- `∑[2-a(n-1)]` -/
def P11343887088170428188.Spec : Prop :=
  ∀ n, P11343887088170428188.a n = A114112 (n + 1)

end A114112

/-! ## A114112.P4239767607871146827

`ogf((1+x+x^2-2x^3+x^4)/(1-x-x^2+x^3))`
-/

namespace A114112.P4239767607871146827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, -2, 1] [1, -1, -1, 1] n

end

end A114112.P4239767607871146827

namespace A114112

/-- `ogf((1+x+x^2-2x^3+x^4)/(1-x-x^2+x^3))` -/
def P4239767607871146827.Spec : Prop :=
  ∀ n, P4239767607871146827.a n = A114112 (n + 1)

end A114112

/-! ## A114112.P490129466033781666

`1-(a(n-1)-2*n)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A114112.P490129466033781666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  1 - (a (n - 1) - (2 * n : ℤ))

end

end A114112.P490129466033781666

namespace A114112

/-- `1-(a(n-1)-2*n)` -/
def P490129466033781666.Spec : Prop :=
  ∀ n, P490129466033781666.a n = A114112 (n + 1)

end A114112

/-! ## A114112.P5543987802643576972

`1-(a(n-1)-n-n)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A114112.P5543987802643576972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  1 - (a (n - 1) - (n : ℤ) - (n : ℤ))

end

end A114112.P5543987802643576972

namespace A114112

/-- `1-(a(n-1)-n-n)` -/
def P5543987802643576972.Spec : Prop :=
  ∀ n, P5543987802643576972.a n = A114112 (n + 1)

end A114112

/-! ## A114112.P760482113075303977

`-xor(-(n+1), ceil((n-1)/(n+2)))`
-/

namespace A114112.P760482113075303977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-(n + 1 : ℤ)) ⌈((n : ℤ) - 1 : ℚ) / (n + 2 : ℚ)⌉

end

end A114112.P760482113075303977

namespace A114112

/-- `-xor(-(n+1), ceil((n-1)/(n+2)))` -/
def P760482113075303977.Spec : Prop :=
  ∀ n, P760482113075303977.a n = A114112 (n + 1)

end A114112

/-! ## A114112.P2474694327973211993

`n+2-gcd(C(n, n²), 2*and(1, n))`
-/

namespace A114112.P2474694327973211993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.gcd (Nat.choose n (n ^ 2)) (2 * Nat.land 1 n) : ℤ)

end

end A114112.P2474694327973211993

namespace A114112

/-- `n+2-gcd(C(n, n²), 2*and(1, n))` -/
def P2474694327973211993.Spec : Prop :=
  ∀ n, P2474694327973211993.a n = A114112 (n + 1)

end A114112

/-! ## A114112.P7804971137625229281

`n+2-gcd(C(2, 2*n), and(2, 2*n))`
-/

namespace A114112.P7804971137625229281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.gcd (Nat.choose 2 (2 * n)) (Nat.land 2 (2 * n)) : ℤ)

end

end A114112.P7804971137625229281

namespace A114112

/-- `n+2-gcd(C(2, 2*n), and(2, 2*n))` -/
def P7804971137625229281.Spec : Prop :=
  ∀ n, P7804971137625229281.a n = A114112 (n + 1)

end A114112

/-! ## A114112.P3924978218114986826

`n+2-and(2*n+1, 2-C(n, n²))`
-/

namespace A114112.P3924978218114986826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - Int.land (2 * n + 1 : ℤ) (2 - (Nat.choose n (n ^ 2) : ℤ))

end

end A114112.P3924978218114986826

namespace A114112

/-- `n+2-and(2*n+1, 2-C(n, n²))` -/
def P3924978218114986826.Spec : Prop :=
  ∀ n, P3924978218114986826.a n = A114112 (n + 1)

end A114112

/-! ## A114112.P10010732702897190678

`or(2*n, ceil((2*n+1)/(n+2)))-n`
-/

namespace A114112.P10010732702897190678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) ⌈(2 * n + 1 : ℚ) / (n + 2 : ℚ)⌉ - (n : ℤ)

end

end A114112.P10010732702897190678

namespace A114112

/-- `or(2*n, ceil((2*n+1)/(n+2)))-n` -/
def P10010732702897190678.Spec : Prop :=
  ∀ n, P10010732702897190678.a n = A114112 (n + 1)

end A114112

/-! ## A114112.P1790473603038029522

`2*n-xor(n-1, ceil((n-1)/(n+2)))`
-/

namespace A114112.P1790473603038029522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.xor ((n : ℤ) - 1) ⌈((n : ℤ) - 1 : ℚ) / (n + 2 : ℚ)⌉

end

end A114112.P1790473603038029522

namespace A114112

/-- `2*n-xor(n-1, ceil((n-1)/(n+2)))` -/
def P1790473603038029522.Spec : Prop :=
  ∀ n, P1790473603038029522.a n = A114112 (n + 1)

end A114112

/-! ## A114112.P5750121556352052667

`n+2-and(2*n+1, ceil((2*n+1)/(n+2)))`
-/

namespace A114112.P5750121556352052667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - Int.land (2 * n + 1 : ℤ) ⌈(2 * n + 1 : ℚ) / (n + 2 : ℚ)⌉

end

end A114112.P5750121556352052667

namespace A114112

/-- `n+2-and(2*n+1, ceil((2*n+1)/(n+2)))` -/
def P5750121556352052667.Spec : Prop :=
  ∀ n, P5750121556352052667.a n = A114112 (n + 1)

end A114112

/-! ## A114112.P4214905982294484732

`C(2, A019426(n))+n`
-/

namespace A114112.P4214905982294484732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A019426 n).toNat + n

end

end A114112.P4214905982294484732

namespace A114112

/-- `C(2, A019426(n))+n` -/
def P4214905982294484732.Spec : Prop :=
  ∀ n, (P4214905982294484732.a n : ℤ) = A114112 (n + 1)

end A114112

/-!
# A114113: a(n) = sum{k=1 to n} (A114112(k)). (For n>=2, a(n) = sum{k=1 to n} (A014681(k)) =sum{k=1 to n} (A103889(k)).).

The programs for A114113, the canonical program `A114113.P17370459495528090053` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114113 has offset 1).

The definition of A114113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114113.P17370459495528090053

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=10, a(4)=16`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114113

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P17370459495528090053.Spec : Prop :=
  ∀ n, P17370459495528090053.a n = A114113 (n + 1)

theorem P17370459495528090053.correct : P17370459495528090053.Spec := by
  intro n
  simp only [A114113, Nat.add_sub_cancel]

end A114113

/-! ## A114113.P17021733749816806415

`∑[char[1]+n]+or(1, n)`
-/

namespace A114113.P17021733749816806415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lor 1 n

end

end A114113.P17021733749816806415

namespace A114113

/-- `∑[char[1]+n]+or(1, n)` -/
def P17021733749816806415.Spec : Prop :=
  ∀ n, (P17021733749816806415.a n : ℤ) = A114113 (n + 1)

end A114113

/-! ## A114113.P15928528004219184305

`∑{p}[n, val(#, 2)]+∑[n+1]`
-/

namespace A114113.P15928528004219184305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 2 + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A114113.P15928528004219184305

namespace A114113

/-- `∑{p}[n, val(#, 2)]+∑[n+1]` -/
def P15928528004219184305.Spec : Prop :=
  ∀ n, (P15928528004219184305.a n : ℤ) = A114113 (n + 1)

end A114113

/-! ## A114113.P15650637583114998475

`∑[n+1]+val(∏{p}[n, #], 2)`
-/

namespace A114113.P15650637583114998475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p) 2

end

end A114113.P15650637583114998475

namespace A114113

/-- `∑[n+1]+val(∏{p}[n, #], 2)` -/
def P15650637583114998475.Spec : Prop :=
  ∀ n, (P15650637583114998475.a n : ℤ) = A114113 (n + 1)

end A114113

/-! ## A114113.P3120507760563914175

`∑{p}[n, C(2, #)]+∑[n+1]`
-/

namespace A114113.P3120507760563914175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose 2 p + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A114113.P3120507760563914175

namespace A114113

/-- `∑{p}[n, C(2, #)]+∑[n+1]` -/
def P3120507760563914175.Spec : Prop :=
  ∀ n, (P3120507760563914175.a n : ℤ) = A114113 (n + 1)

end A114113

/-! ## A114113.P10271813897156701406

`∑[-xor(n, C(n, n²)-2)]`
-/

namespace A114113.P10271813897156701406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) ((Nat.choose n (n ^ 2) : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114113.P10271813897156701406

namespace A114113

/-- `∑[-xor(n, C(n, n²)-2)]` -/
def P10271813897156701406.Spec : Prop :=
  ∀ n, P10271813897156701406.a n = A114113 (n + 1)

end A114113

/-! ## A114113.P12423094822809361429

`∑[a(n-2)+2]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=3`
-/

namespace A114113.P12423094822809361429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 3] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114113.P12423094822809361429

namespace A114113

/-- `∑[a(n-2)+2]` -/
def P12423094822809361429.Spec : Prop :=
  ∀ n, (P12423094822809361429.a n : ℤ) = A114113 (n + 1)

end A114113

/-! ## A114113.P1054277677038016275

`a(n-1)-xor(n, -2)` with `a(0)=1, a(1)=3`
-/

namespace A114113.P1054277677038016275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - Int.xor (n : ℤ) (-2)

end

end A114113.P1054277677038016275

namespace A114113

/-- `a(n-1)-xor(n, -2)` -/
def P1054277677038016275.Spec : Prop :=
  ∀ n, P1054277677038016275.a n = A114113 (n + 1)

end A114113

/-! ## A114113.P20283459128455553

`char[2*(n+1)]+∑[n+1]`
-/

namespace A114113.P20283459128455553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A114113.P20283459128455553

namespace A114113

/-- `char[2*(n+1)]+∑[n+1]` -/
def P20283459128455553.Spec : Prop :=
  ∀ n, (P20283459128455553.a n : ℤ) = A114113 (n + 1)

end A114113

/-! ## A114113.P16311751357644610480

`∑[Δ[n²]-a(n-1)]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A114113.P16311751357644610480
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114113.P16311751357644610480

namespace A114113

/-- `∑[Δ[n²]-a(n-1)]` -/
def P16311751357644610480.Spec : Prop :=
  ∀ n, P16311751357644610480.a n = A114113 (n + 1)

end A114113

/-! ## A114113.P10760278245412628128

`∑[∑[2-a(n-1)]]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=-1`
-/

namespace A114113.P10760278245412628128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, -1] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114113.P10760278245412628128

namespace A114113

/-- `∑[∑[2-a(n-1)]]` -/
def P10760278245412628128.Spec : Prop :=
  ∀ n, P10760278245412628128.a n = A114113 (n + 1)

end A114113

/-! ## A114113.P8262548784029150203

`round(xor(1, n)+a(n-1)+1)` with `a(0)=1, a(1)=3`

`round` is left out, it is the identity on integers.
-/

namespace A114113.P8262548784029150203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.xor 1 n + (a (n - 1) + 1)

end

end A114113.P8262548784029150203

namespace A114113

/-- `round(xor(1, n)+a(n-1)+1)` -/
def P8262548784029150203.Spec : Prop :=
  ∀ n, (P8262548784029150203.a n : ℤ) = A114113 (n + 1)

end A114113

/-! ## A114113.P15976059345658100674

`floor(∑[n+1]+lcm(2, n+1)/(n+3))`
-/

namespace A114113.P15976059345658100674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (Nat.lcm 2 (n + 1) : ℚ) / (n + 3 : ℚ)⌋

end

end A114113.P15976059345658100674

namespace A114113

/-- `floor(∑[n+1]+lcm(2, n+1)/(n+3))` -/
def P15976059345658100674.Spec : Prop :=
  ∀ n, P15976059345658100674.a n = A114113 (n + 1)

end A114113

/-! ## A114113.P4769775375810247844

`floor(n+1+a(n-1)+(-1)^n)` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A114113.P4769775375810247844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (n + 1 : ℤ) + (a (n - 1) + (-1) ^ n)

end

end A114113.P4769775375810247844

namespace A114113

/-- `floor(n+1+a(n-1)+(-1)^n)` -/
def P4769775375810247844.Spec : Prop :=
  ∀ n, P4769775375810247844.a n = A114113 (n + 1)

end A114113

/-! ## A114113.P929496417812055132

`∑[A114112(n+1)]`
-/

namespace A114113.P929496417812055132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114113.P929496417812055132

namespace A114113

/-- `∑[A114112(n+1)]` -/
def P929496417812055132.Spec : Prop :=
  ∀ n, P929496417812055132.a n = A114113 (n + 1)

end A114113

/-! ## A114113.P3110384647349024524

`∑[char[A004277(n)]+or(1, n)]`
-/

namespace A114113.P3110384647349024524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114113.P3110384647349024524

namespace A114113

/-- `∑[char[A004277(n)]+or(1, n)]` -/
def P3110384647349024524.Spec : Prop :=
  ∀ n, (P3110384647349024524.a n : ℤ) = A114113 (n + 1)

end A114113

/-! ## A114113.P14768135362124653151

`A152271(n)*A354008(n+1)`
-/

namespace A114113.P14768135362124653151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n * A354008 (n + 1)

end

end A114113.P14768135362124653151

namespace A114113

/-- `A152271(n)*A354008(n+1)` -/
def P14768135362124653151.Spec : Prop :=
  ∀ n, P14768135362124653151.a n = A114113 (n + 1)

end A114113

/-! ## A114113.P9340788570620278530

`∑[A109613(n)+char[A004277(n)]]`
-/

namespace A114113.P9340788570620278530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114113.P9340788570620278530

namespace A114113

/-- `∑[A109613(n)+char[A004277(n)]]` -/
def P9340788570620278530.Spec : Prop :=
  ∀ n, P9340788570620278530.a n = A114113 (n + 1)

end A114113

/-! ## A114113.P3790416328310971640

`∪[A253145(2*n+1), A253145(2*n)+1]`
-/

namespace A114113.P3790416328310971640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (2 * n) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A114113.P3790416328310971640

namespace A114113

/-- `∪[A253145(2*n+1), A253145(2*n)+1]` -/
def P3790416328310971640.Spec : Prop :=
  ∀ n, (P3790416328310971640.a n : ℤ) = A114113 (n + 1)

end A114113

/-! ## A114113.P9137126040612130938

`∑[A266246(n+3)+A109613(n)]`
-/

namespace A114113.P9137126040612130938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266246 (n + 3) + A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114113.P9137126040612130938

namespace A114113

/-- `∑[A266246(n+3)+A109613(n)]` -/
def P9137126040612130938.Spec : Prop :=
  ∀ n, P9137126040612130938.a n = A114113 (n + 1)

end A114113

/-!
# A114114: An invertible partition matrix.

The programs for A114114, the canonical program `A114114.P179079981037864306` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114114 has offset 0).

The definition of A114114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114114.P11804818389063271767

`ceil(atan(C(1-C(∑[char[∑[n]]], 2)+n, C(comp[∑[n]]-n, 2)-(n+1))))`
-/

namespace A114114.P11804818389063271767
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (Nat.choose (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℝ)⌉

end

end A114114.P11804818389063271767

namespace A114114

/-- `ceil(atan(C(1-C(∑[char[∑[n]]], 2)+n, C(comp[∑[n]]-n, 2)-(n+1))))` -/
def P11804818389063271767.Spec : Prop :=
  ∀ n, P11804818389063271767.a n = A114114 n

end A114114

/-! ## A114114.P6575497690641173641

`ceil(atan(sqrt(A113214(n))))`
-/

namespace A114114.P6575497690641173641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (Real.sqrt (A113214 n : ℝ))⌉

end

end A114114.P6575497690641173641

namespace A114114

/-- `ceil(atan(sqrt(A113214(n))))` -/
def P6575497690641173641.Spec : Prop :=
  ∀ n, P6575497690641173641.a n = A114114 n

end A114114

/-! ## A114114.P17988069461149040975

`round(atan(A117362(n))²)`
-/

namespace A114114.P17988069461149040975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A117362 n : ℝ) ^ 2)

end

end A114114.P17988069461149040975

namespace A114114

/-- `round(atan(A117362(n))²)` -/
def P17988069461149040975.Spec : Prop :=
  ∀ n, P17988069461149040975.a n = A114114 n

end A114114

/-! ## A114114.P15747063608972471587

`round(atan(A117372(n)²))`
-/

namespace A114114.P15747063608972471587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A117372 n ^ 2 : ℝ))

end

end A114114.P15747063608972471587

namespace A114114

/-- `round(atan(A117372(n)²))` -/
def P15747063608972471587.Spec : Prop :=
  ∀ n, P15747063608972471587.a n = A114114 n

end A114114

/-! ## A114114.P6090582564810831607

`C(2, A105147(n+1)+1)`
-/

namespace A114114.P6090582564810831607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A105147 (n + 1) + 1).toNat

end

end A114114.P6090582564810831607

namespace A114114

/-- `C(2, A105147(n+1)+1)` -/
def P6090582564810831607.Spec : Prop :=
  ∀ n, (P6090582564810831607.a n : ℤ) = A114114 n

end A114114

/-! ## A114114.P12372351075718214640

`gcd(A115359(n), A168313(n+1))`
-/

namespace A114114.P12372351075718214640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115359 n) (A168313 (n + 1))

end

end A114114.P12372351075718214640

namespace A114114

/-- `gcd(A115359(n), A168313(n+1))` -/
def P12372351075718214640.Spec : Prop :=
  ∀ n, (P12372351075718214640.a n : ℤ) = A114114 n

end A114114

/-! ## A114114.P13212181549740768946

`A000045(T(n-2,k-1))+A000045(T(n-1,k-1))` with `a(0)=1, a(1)=1`
-/

namespace A114114.P13212181549740768946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000045 (SequenceMachineLib.triUp2Left a n).toNat + A000045 (SequenceMachineLib.triUpLeft a n).toNat

end

end A114114.P13212181549740768946

namespace A114114

/-- `A000045(T(n-2,k-1))+A000045(T(n-1,k-1))` -/
def P13212181549740768946.Spec : Prop :=
  ∀ n, P13212181549740768946.a n = A114114 n

end A114114

/-! ## A114114.P179079981037864306

`A103128(n+1)+A340507(n+1)-A003056(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A114114

/-- `A103128(n+1)+A340507(n+1)-A003056(n)` -/
def P179079981037864306.Spec : Prop :=
  ∀ n, P179079981037864306.a n = A114114 n

theorem P179079981037864306.correct : P179079981037864306.Spec := by
  intro n
  simp only [A114114]

end A114114

/-! ## A114114.P15762987716138980618

`(A101688(n+1)+A101688(n))*A145362(n+1)`
-/

namespace A114114.P15762987716138980618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A101688 (n + 1) + A101688 n) * A145362 (n + 1)

end

end A114114.P15762987716138980618

namespace A114114

/-- `(A101688(n+1)+A101688(n))*A145362(n+1)` -/
def P15762987716138980618.Spec : Prop :=
  ∀ n, P15762987716138980618.a n = A114114 n

end A114114

/-! ## A114114.P9979708999534309937

`1-Δ[A004197(n)]`
-/

namespace A114114.P9979708999534309937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A114114.P9979708999534309937

namespace A114114

/-- `1-Δ[A004197(n)]` -/
def P9979708999534309937.Spec : Prop :=
  ∀ n, P9979708999534309937.a n = A114114 n

end A114114

/-! ## A114114.P15918184743895977121

`ceil(Δ[sqrt(A220508(n))])`
-/

namespace A114114.P15918184743895977121
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A220508 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A114114.P15918184743895977121

namespace A114114

/-- `ceil(Δ[sqrt(A220508(n))])` -/
def P15918184743895977121.Spec : Prop :=
  ∀ n, P15918184743895977121.a n = A114114 n

end A114114

/-! ## A114114.P10568113508402356147

`ceil(cot(ratio[A144464(n)]))`
-/

namespace A114114.P10568113508402356147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)⌉

end

end A114114.P10568113508402356147

namespace A114114

/-- `ceil(cot(ratio[A144464(n)]))` -/
def P10568113508402356147.Spec : Prop :=
  ∀ n, P10568113508402356147.a n = A114114 n

end A114114

/-! ## A114114.P16515672462863947020

`floor(ratio[acot(A152714(n))])`
-/

namespace A114114.P16515672462863947020
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A152714 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) / f1 n⌋

end

end A114114.P16515672462863947020

namespace A114114

/-- `floor(ratio[acot(A152714(n))])` -/
def P16515672462863947020.Spec : Prop :=
  ∀ n, P16515672462863947020.a n = A114114 n

end A114114

/-! ## A114114.P7476807237693681739

`round(acot(A169803(n+1)))`
-/

namespace A114114.P7476807237693681739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A169803 (n + 1) : ℝ))

end

end A114114.P7476807237693681739

namespace A114114

/-- `round(acot(A169803(n+1)))` -/
def P7476807237693681739.Spec : Prop :=
  ∀ n, P7476807237693681739.a n = A114114 n

end A114114

/-! ## A114114.P12772666919750636734

`1-Δ[A003983(n+1)]`
-/

namespace A114114.P12772666919750636734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A114114.P12772666919750636734

namespace A114114

/-- `1-Δ[A003983(n+1)]` -/
def P12772666919750636734.Spec : Prop :=
  ∀ n, P12772666919750636734.a n = A114114 n

end A114114

/-! ## A114114.P14248784843709518657

`A003983(n+1)-A004197(n+1)`
-/

namespace A114114.P14248784843709518657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) - A004197 (n + 1)

end

end A114114.P14248784843709518657

namespace A114114

/-- `A003983(n+1)-A004197(n+1)` -/
def P14248784843709518657.Spec : Prop :=
  ∀ n, P14248784843709518657.a n = A114114 n

end A114114

/-! ## A114114.P17967072161922903960

`A157454(n+1)-(A004197(n+1)+A004197(n))`
-/

namespace A114114.P17967072161922903960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157454 (n + 1) - (A004197 (n + 1) + A004197 n)

end

end A114114.P17967072161922903960

namespace A114114

/-- `A157454(n+1)-(A004197(n+1)+A004197(n))` -/
def P17967072161922903960.Spec : Prop :=
  ∀ n, P17967072161922903960.a n = A114114 n

end A114114

/-! ## A114114.P8309733589990979614

`A051125(n+2)+A004197(n)-A003056(n+1)`
-/

namespace A114114.P8309733589990979614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (n + 2) + (A004197 n - A003056 (n + 1))

end

end A114114.P8309733589990979614

namespace A114114

/-- `A051125(n+2)+A004197(n)-A003056(n+1)` -/
def P8309733589990979614.Spec : Prop :=
  ∀ n, P8309733589990979614.a n = A114114 n

end A114114

/-! ## A114114.P9241404425333309595

`A003983(n+1)+A049581(n+1)-A003984(n+1)`
-/

namespace A114114.P9241404425333309595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) + (A049581 (n + 1) - A003984 (n + 1))

end

end A114114.P9241404425333309595

namespace A114114

/-- `A003983(n+1)+A049581(n+1)-A003984(n+1)` -/
def P9241404425333309595.Spec : Prop :=
  ∀ n, P9241404425333309595.a n = A114114 n

end A114114

/-! ## A114114.P10929675487712488403

`A003983(n+1)+A003983(n+2)-A157454(n+2)`
-/

namespace A114114.P10929675487712488403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) + (A003983 (n + 2) - A157454 (n + 2))

end

end A114114.P10929675487712488403

namespace A114114

/-- `A003983(n+1)+A003983(n+2)-A157454(n+2)` -/
def P10929675487712488403.Spec : Prop :=
  ∀ n, P10929675487712488403.a n = A114114 n

end A114114

/-!
# A114116: 1's-counting matrix: row sums give number of 1's in binary expansion of n+1.

The programs for A114116, there is no canonical definition to state claims against.
-/

/-! ## A114116.P9986370057477381044

`A097807(n)+A000035(A124329(n+1))`
-/

namespace A114116.P9986370057477381044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n + A000035 (A124329 (n + 1)).toNat

end

end A114116.P9986370057477381044

/-! ## A114116.P11341045408578242743

`A097807(n)+A068432(A284119(n+1))`
-/

namespace A114116.P11341045408578242743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n + A068432 (A284119 (n + 1)).toNat

end

end A114116.P11341045408578242743

/-! ## A114116.P14978558701368877256

`A289741(n)+A011582(A162819(n+1))`
-/

namespace A114116.P14978558701368877256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289741 n + A011582 (A162819 (n + 1)).toNat

end

end A114116.P14978558701368877256

/-! ## A114116.P2648595595067640874

`A257196(A099375(n))+A000035(A124329(n+1))`
-/

namespace A114116.P2648595595067640874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257196 (A099375 n).toNat + A000035 (A124329 (n + 1)).toNat

end

end A114116.P2648595595067640874

/-!
# A114117: Inverse of 1's counting matrix A114116.

The programs for A114117, the canonical program `A114117.P17816901265294199500` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114117 has offset 0).

The definition of A114117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114117.P15206110627753970

`Δ[(Δ[A004197(n)]+1)%(n+1)]`
-/

namespace A114117.P15206110627753970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n + 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114117.P15206110627753970

namespace A114117

/-- `Δ[(Δ[A004197(n)]+1)%(n+1)]` -/
def P15206110627753970.Spec : Prop :=
  ∀ n, P15206110627753970.a n = A114117 n

end A114117

/-! ## A114117.P17816901265294199500

`A000007(n)-Δ[A114114(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A114117

/-- `A000007(n)-Δ[A114114(n)]` -/
def P17816901265294199500.Spec : Prop :=
  ∀ n, P17816901265294199500.a n = A114117 n

theorem P17816901265294199500.correct : P17816901265294199500.Spec := by
  intro n
  simp only [A114117]

end A114117

/-! ## A114117.P17820784606037022641

`floor(acot(n))-Δ[A130130(A052249(n))]`
-/

namespace A114117.P17820784606037022641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (A052249 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ - (f1 (n + 1) - f1 n)

end

end A114117.P17820784606037022641

namespace A114117

/-- `floor(acot(n))-Δ[A130130(A052249(n))]` -/
def P17820784606037022641.Spec : Prop :=
  ∀ n, P17820784606037022641.a n = A114117 n

end A114117

/-! ## A114117.P16548407452875651769

`Δ[Δ[A008574(n)+A003983(n+1)]]`
-/

namespace A114117.P16548407452875651769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A003983 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114117.P16548407452875651769

namespace A114117

/-- `Δ[Δ[A008574(n)+A003983(n+1)]]` -/
def P16548407452875651769.Spec : Prop :=
  ∀ n, P16548407452875651769.a n = A114117 n

end A114117

/-! ## A114117.P1748176715940248906

`Δ[Δ[A008706(n)+A003983(n+1)]]`
-/

namespace A114117.P1748176715940248906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A003983 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114117.P1748176715940248906

namespace A114117

/-- `Δ[Δ[A008706(n)+A003983(n+1)]]` -/
def P1748176715940248906.Spec : Prop :=
  ∀ n, P1748176715940248906.a n = A114117 n

end A114117

/-! ## A114117.P5142189487354225340

`Δ[A003983(n+2)%(n+1)-A003983(n+1)]`
-/

namespace A114117.P5142189487354225340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003983 (n + 2)) (n + 1 : ℤ) - A003983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114117.P5142189487354225340

namespace A114117

/-- `Δ[A003983(n+2)%(n+1)-A003983(n+1)]` -/
def P5142189487354225340.Spec : Prop :=
  ∀ n, P5142189487354225340.a n = A114117 n

end A114117

/-! ## A114117.P13150062577753079811

`Δ[A003983(a(n-1)+1)+Δ[A003983(n+1)]]` with `a(0)=0`
-/

namespace A114117.P13150062577753079811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A003983 (f1 (n - 1) + 1).toNat + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114117.P13150062577753079811

namespace A114117

/-- `Δ[A003983(a(n-1)+1)+Δ[A003983(n+1)]]` -/
def P13150062577753079811.Spec : Prop :=
  ∀ n, P13150062577753079811.a n = A114117 n

end A114117

/-! ## A114117.P18178607842891652535

`A000007(n)-Δ[A130130(A052249(n))]`
-/

namespace A114117.P18178607842891652535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (A052249 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (f1 (n + 1) - f1 n)

end

end A114117.P18178607842891652535

namespace A114117

/-- `A000007(n)-Δ[A130130(A052249(n))]` -/
def P18178607842891652535.Spec : Prop :=
  ∀ n, P18178607842891652535.a n = A114117 n

end A114117

/-! ## A114117.P2326613513339321492

`Δ[A001222(A008578(n+1))-A114114(n)]`
-/

namespace A114117.P2326613513339321492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 1)).toNat - A114114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114117.P2326613513339321492

namespace A114117

/-- `Δ[A001222(A008578(n+1))-A114114(n)]` -/
def P2326613513339321492.Spec : Prop :=
  ∀ n, P2326613513339321492.a n = A114117 n

end A114117

/-! ## A114117.P7943562920710241930

`Δ[A020639(A010014(n))-A114114(n)]`
-/

namespace A114117.P7943562920710241930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A010014 n).toNat - A114114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114117.P7943562920710241930

namespace A114117

/-- `Δ[A020639(A010014(n))-A114114(n)]` -/
def P7943562920710241930.Spec : Prop :=
  ∀ n, P7943562920710241930.a n = A114117 n

end A114117

/-!
# A114118: Number triangle T(n,k)=sum{j=0..n, C(floor((n+k+j)/3),k)C(k,floor((n+k+j)/3))}.

The programs for A114118, the canonical program `A114118.P8543304473231040765` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114118 has offset 0).

The definition of A114118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114118.P8543304473231040765

`A114114(n)+A101688(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A114118

/-- `A114114(n)+A101688(n+1)` -/
def P8543304473231040765.Spec : Prop :=
  ∀ n, P8543304473231040765.a n = A114118 n

theorem P8543304473231040765.correct : P8543304473231040765.Spec := by
  intro n
  simp only [A114118]

end A114118

/-! ## A114118.P15631810464209963859

`round(ratio[A050291(A220073(n+1))])`
-/

namespace A114118.P15631810464209963859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050291 (A220073 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A114118.P15631810464209963859

namespace A114118

/-- `round(ratio[A050291(A220073(n+1))])` -/
def P15631810464209963859.Spec : Prop :=
  ∀ n, P15631810464209963859.a n = A114118 n

end A114118

/-! ## A114118.P13491566099078625573

`A000045(Δ[A220073(n+1)]+2)`
-/

namespace A114118.P13491566099078625573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n + 2).toNat

end

end A114118.P13491566099078625573

namespace A114118

/-- `A000045(Δ[A220073(n+1)]+2)` -/
def P13491566099078625573.Spec : Prop :=
  ∀ n, P13491566099078625573.a n = A114118 n

end A114118

/-! ## A114118.P5441729891159640794

`A004396(Δ[A220073(n+1)]+2)`
-/

namespace A114118.P5441729891159640794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (f1 (n + 1) - f1 n + 2).toNat

end

end A114118.P5441729891159640794

namespace A114118

/-- `A004396(Δ[A220073(n+1)]+2)` -/
def P5441729891159640794.Spec : Prop :=
  ∀ n, P5441729891159640794.a n = A114118 n

end A114118

/-! ## A114118.P12366295591819221817

`A005206(Δ[A220073(n+1)]+2)`
-/

namespace A114118.P12366295591819221817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (f1 (n + 1) - f1 n + 2).toNat

end

end A114118.P12366295591819221817

namespace A114118

/-- `A005206(Δ[A220073(n+1)]+2)` -/
def P12366295591819221817.Spec : Prop :=
  ∀ n, P12366295591819221817.a n = A114118 n

end A114118

/-! ## A114118.P18214370397552355778

`A024811(Δ[A220073(n+1)+n]+2)`
-/

namespace A114118.P18214370397552355778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024811 (f1 (n + 1) - f1 n + 2).toNat

end

end A114118.P18214370397552355778

namespace A114118

/-- `A024811(Δ[A220073(n+1)+n]+2)` -/
def P18214370397552355778.Spec : Prop :=
  ∀ n, P18214370397552355778.a n = A114118 n

end A114118

/-! ## A114118.P7142838151893168879

`A000045(A220073(n+2)+2-A220073(n+1))`
-/

namespace A114118.P7142838151893168879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A220073 (n + 2) + (2 - A220073 (n + 1))).toNat

end

end A114118.P7142838151893168879

namespace A114118

/-- `A000045(A220073(n+2)+2-A220073(n+1))` -/
def P7142838151893168879.Spec : Prop :=
  ∀ n, P7142838151893168879.a n = A114118 n

end A114118

/-! ## A114118.P14774334496193100327

`A000045(2-Δ[A210535(n+1)])`
-/

namespace A114118.P14774334496193100327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A114118.P14774334496193100327

namespace A114118

/-- `A000045(2-Δ[A210535(n+1)])` -/
def P14774334496193100327.Spec : Prop :=
  ∀ n, P14774334496193100327.a n = A114118 n

end A114118

/-! ## A114118.P1570045249007864032

`A004396(2-Δ[A210535(n+1)])`
-/

namespace A114118.P1570045249007864032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A114118.P1570045249007864032

namespace A114118

/-- `A004396(2-Δ[A210535(n+1)])` -/
def P1570045249007864032.Spec : Prop :=
  ∀ n, P1570045249007864032.a n = A114118 n

end A114118

/-! ## A114118.P12607670565164239257

`A005206(2-Δ[A210535(n+1)])`
-/

namespace A114118.P12607670565164239257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A114118.P12607670565164239257

namespace A114118

/-- `A005206(2-Δ[A210535(n+1)])` -/
def P12607670565164239257.Spec : Prop :=
  ∀ n, P12607670565164239257.a n = A114118 n

end A114118

/-! ## A114118.P15786401653478726781

`A005374(2-Δ[A210535(n+1)])`
-/

namespace A114118.P15786401653478726781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A114118.P15786401653478726781

namespace A114118

/-- `A005374(2-Δ[A210535(n+1)])` -/
def P15786401653478726781.Spec : Prop :=
  ∀ n, P15786401653478726781.a n = A114118 n

end A114118

/-! ## A114118.P5976119993826546921

`A000720(3-Δ[A210535(n+1)])`
-/

namespace A114118.P5976119993826546921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (3 - (f1 (n + 1) - f1 n)).toNat

end

end A114118.P5976119993826546921

namespace A114118

/-- `A000720(3-Δ[A210535(n+1)])` -/
def P5976119993826546921.Spec : Prop :=
  ∀ n, P5976119993826546921.a n = A114118 n

end A114118

/-! ## A114118.P4173248817950995517

`A001971(3-Δ[A210535(n+1)])`
-/

namespace A114118.P4173248817950995517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (3 - (f1 (n + 1) - f1 n)).toNat

end

end A114118.P4173248817950995517

namespace A114118

/-- `A001971(3-Δ[A210535(n+1)])` -/
def P4173248817950995517.Spec : Prop :=
  ∀ n, P4173248817950995517.a n = A114118 n

end A114118

/-! ## A114118.P16935955104580842719

`A000194(2*(2-Δ[A210535(n+1)]))`
-/

namespace A114118.P16935955104580842719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * (2 - (f1 (n + 1) - f1 n))).toNat

end

end A114118.P16935955104580842719

namespace A114118

/-- `A000194(2*(2-Δ[A210535(n+1)]))` -/
def P16935955104580842719.Spec : Prop :=
  ∀ n, P16935955104580842719.a n = A114118 n

end A114118

/-! ## A114118.P11306748630105597515

`A000194(∑{d}[2-Δ[A210535(n+1)], #])`
-/

namespace A114118.P11306748630105597515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210535 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A114118.P11306748630105597515

namespace A114118

/-- `A000194(∑{d}[2-Δ[A210535(n+1)], #])` -/
def P11306748630105597515.Spec : Prop :=
  ∀ n, P11306748630105597515.a n = A114118 n

end A114118

/-! ## A114118.P14362119744093480241

`A000045(Δ[A004737(2*(n+1))]+2)`
-/

namespace A114118.P14362119744093480241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n + 2).toNat

end

end A114118.P14362119744093480241

namespace A114118

/-- `A000045(Δ[A004737(2*(n+1))]+2)` -/
def P14362119744093480241.Spec : Prop :=
  ∀ n, P14362119744093480241.a n = A114118 n

end A114118

/-! ## A114118.P5598908796201288259

`A000045(2-Δ[A004739(2*(n+1))])`
-/

namespace A114118.P5598908796201288259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A114118.P5598908796201288259

namespace A114118

/-- `A000045(2-Δ[A004739(2*(n+1))])` -/
def P5598908796201288259.Spec : Prop :=
  ∀ n, P5598908796201288259.a n = A114118 n

end A114118

/-! ## A114118.P12081636798078960689

`A004090(2-Δ[A004739(2*(n+1))])`
-/

namespace A114118.P12081636798078960689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004090 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A114118.P12081636798078960689

namespace A114118

/-- `A004090(2-Δ[A004739(2*(n+1))])` -/
def P12081636798078960689.Spec : Prop :=
  ∀ n, P12081636798078960689.a n = A114118 n

end A114118

/-! ## A114118.P1548432838594778408

`A131961(Δ[A004739(2*(n+1))]+4)`
-/

namespace A114118.P1548432838594778408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131961 (f1 (n + 1) - f1 n + 4).toNat

end

end A114118.P1548432838594778408

namespace A114118

/-- `A131961(Δ[A004739(2*(n+1))]+4)` -/
def P1548432838594778408.Spec : Prop :=
  ∀ n, P1548432838594778408.a n = A114118 n

end A114118

/-! ## A114118.P17741328223695555082

`floor(ratio[A131816(A185868(n+1))])`
-/

namespace A114118.P17741328223695555082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 (A185868 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A114118.P17741328223695555082

namespace A114118

/-- `floor(ratio[A131816(A185868(n+1))])` -/
def P17741328223695555082.Spec : Prop :=
  ∀ n, P17741328223695555082.a n = A114118 n

end A114118

/-!
# A114119: Row sums of triangle A114118.

The programs for A114119, the canonical program `A114119.P3929705567030495232` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114119 has offset 0).

The definition of A114119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114119.P3929705567030495232

`record[n%3+1+n]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114119

/-- `record[n%3+1+n]` -/
def P3929705567030495232.Spec : Prop :=
  ∀ n, (P3929705567030495232.a n : ℤ) = A114119 n

theorem P3929705567030495232.correct : P3929705567030495232.Spec := by
  intro n
  simp only [A114119]

end A114119

/-! ## A114119.P5517308965924145155

`a(n-2)+3` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A114119.P5517308965924145155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  a (n - 2) + 3

end

end A114119.P5517308965924145155

namespace A114119

/-- `a(n-2)+3` -/
def P5517308965924145155.Spec : Prop :=
  ∀ n, (P5517308965924145155.a n : ℤ) = A114119 n

end A114119

/-! ## A114119.P12477972382986958778

`∑[2/a(and(1, n))]` with `a(0)=1, a(1)=2`
-/

namespace A114119.P12477972382986958778
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 / f1 (Nat.land 1 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114119.P12477972382986958778

namespace A114119

/-- `∑[2/a(and(1, n))]` -/
def P12477972382986958778.Spec : Prop :=
  ∀ n, P12477972382986958778.a n = (A114119 n : ℚ)

end A114119

/-! ## A114119.P14157766177426170004

`ceil(3/sinh(2/(n+1)))`
-/

namespace A114119.P14157766177426170004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / Real.sinh (2 / (n + 1 : ℚ) : ℝ)⌉

end

end A114119.P14157766177426170004

namespace A114119

/-- `ceil(3/sinh(2/(n+1)))` -/
def P14157766177426170004.Spec : Prop :=
  ∀ n, P14157766177426170004.a n = A114119 n

end A114119

/-! ## A114119.P2152884211310234873

`comp[comp[2*n+3]+n]`
-/

namespace A114119.P2152884211310234873
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A114119.P2152884211310234873

namespace A114119

/-- `comp[comp[2*n+3]+n]` -/
def P2152884211310234873.Spec : Prop :=
  ∀ n, (P2152884211310234873.a n : ℤ) = A114119 n

end A114119

/-! ## A114119.P11574208838460376675

`∑[gcd(2, C(n, n²)+n)]`
-/

namespace A114119.P11574208838460376675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Nat.choose n (n ^ 2) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114119.P11574208838460376675

namespace A114119

/-- `∑[gcd(2, C(n, n²)+n)]` -/
def P11574208838460376675.Spec : Prop :=
  ∀ n, (P11574208838460376675.a n : ℤ) = A114119 n

end A114119

/-! ## A114119.P14539821442808601367

`∑[floor(a(∑[(-1)^n]))]` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A114119.P14539821442808601367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114119.P14539821442808601367

namespace A114119

/-- `∑[floor(a(∑[(-1)^n]))]` -/
def P14539821442808601367.Spec : Prop :=
  ∀ n, (P14539821442808601367.a n : ℤ) = A114119 n

end A114119

/-! ## A114119.P5049404159874225813

`∑[3-a(n-1)]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A114119.P5049404159874225813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114119.P5049404159874225813

namespace A114119

/-- `∑[3-a(n-1)]` -/
def P5049404159874225813.Spec : Prop :=
  ∀ n, P5049404159874225813.a n = A114119 n

end A114119

/-! ## A114119.P13986441415290309763

`record[n-a(n-3)]` with `a(0)=1, a(1)=3, a(2)=0`
-/

namespace A114119.P13986441415290309763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 0] fun n f1 =>
  (n : ℤ) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114119.P13986441415290309763

namespace A114119

/-- `record[n-a(n-3)]` -/
def P13986441415290309763.Spec : Prop :=
  ∀ n, P13986441415290309763.a n = A114119 n

end A114119

/-! ## A114119.P16060261769886074799

`lt[acot(n-2), (n-1)%3]`
-/

namespace A114119.P16060261769886074799
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot ((n : ℤ) - 2 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A114119.P16060261769886074799

namespace A114119

/-- `lt[acot(n-2), (n-1)%3]` -/
def P16060261769886074799.Spec : Prop :=
  ∀ n, (P16060261769886074799.a n : ℤ) = A114119 n

end A114119

/-! ## A114119.P17794072515524251850

`ceil(sinh(log(n+1))+n+1)`
-/

namespace A114119.P17794072515524251850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (Real.log (n + 1 : ℝ)) + (n + 1 : ℝ)⌉

end

end A114119.P17794072515524251850

namespace A114119

/-- `ceil(sinh(log(n+1))+n+1)` -/
def P17794072515524251850.Spec : Prop :=
  ∀ n, P17794072515524251850.a n = A114119 n

end A114119

/-! ## A114119.P2753921116228757615

`lt[tan(dr(3-n)), acot(n-1)]`
-/

namespace A114119.P2753921116228757615
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (SequenceMachineLib.digitalRoot (3 - (n : ℤ)) : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114119.P2753921116228757615

namespace A114119

/-- `lt[tan(dr(3-n)), acot(n-1)]` -/
def P2753921116228757615.Spec : Prop :=
  ∀ n, (P2753921116228757615.a n : ℤ) = A114119 n

end A114119

/-! ## A114119.P7314738349378885693

`ceil(∑[n]*acot(n)+n+1)`
-/

namespace A114119.P7314738349378885693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) * SequenceMachineLib.acot (n : ℝ) + (n + 1 : ℝ)⌉

end

end A114119.P7314738349378885693

namespace A114119

/-- `ceil(∑[n]*acot(n)+n+1)` -/
def P7314738349378885693.Spec : Prop :=
  ∀ n, P7314738349378885693.a n = A114119 n

end A114119

/-! ## A114119.P11163723190955018664

`∑[∑[ogf((1+2x+x^2-x^3)/(1+x))]]`
-/

namespace A114119.P11163723190955018664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1, -1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114119.P11163723190955018664

namespace A114119

/-- `∑[∑[ogf((1+2x+x^2-x^3)/(1+x))]]` -/
def P11163723190955018664.Spec : Prop :=
  ∀ n, P11163723190955018664.a n = A114119 n

end A114119

/-! ## A114119.P16562893999344117744

`ogf((1+2x+x^2-x^3)/(1-x-x^2+x^3))`
-/

namespace A114119.P16562893999344117744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1, -1] [1, -1, -1, 1] n

end

end A114119.P16562893999344117744

namespace A114119

/-- `ogf((1+2x+x^2-x^3)/(1-x-x^2+x^3))` -/
def P16562893999344117744.Spec : Prop :=
  ∀ n, P16562893999344117744.a n = A114119 n

end A114119

/-! ## A114119.P9655878516667896550

`lt[1, gcd(2*n, (n-3)%3)]`
-/

namespace A114119.P9655878516667896550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (Int.tmod ((n : ℤ) - 3) 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114119.P9655878516667896550

namespace A114119

/-- `lt[1, gcd(2*n, (n-3)%3)]` -/
def P9655878516667896550.Spec : Prop :=
  ∀ n, (P9655878516667896550.a n : ℤ) = A114119 n

end A114119

/-! ## A114119.P831167788305776286

`ceil(cot(2/(n+1))+n+1)`
-/

namespace A114119.P831167788305776286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (2 / (n + 1 : ℚ) : ℝ) + (n + 1 : ℝ)⌉

end

end A114119.P831167788305776286

namespace A114119

/-- `ceil(cot(2/(n+1))+n+1)` -/
def P831167788305776286.Spec : Prop :=
  ∀ n, P831167788305776286.a n = A114119 n

end A114119

/-! ## A114119.P12854226283702204234

`floor(cot(2/(n+1))+n+2)`
-/

namespace A114119.P12854226283702204234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (2 / (n + 1 : ℚ) : ℝ) + (n + 2 : ℝ)⌋

end

end A114119.P12854226283702204234

namespace A114119

/-- `floor(cot(2/(n+1))+n+2)` -/
def P12854226283702204234.Spec : Prop :=
  ∀ n, P12854226283702204234.a n = A114119 n

end A114119

/-! ## A114119.P18286024482302449449

`2-(a(n-1)-3*n)` with `a(0)=1, a(1)=3`
-/

namespace A114119.P18286024482302449449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 - (a (n - 1) - (3 * n : ℤ))

end

end A114119.P18286024482302449449

namespace A114119

/-- `2-(a(n-1)-3*n)` -/
def P18286024482302449449.Spec : Prop :=
  ∀ n, P18286024482302449449.a n = A114119 n

end A114119

/-! ## A114119.P15402812123540233180

`5-(4/2-a(n-2))` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A114119.P15402812123540233180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  5 - ((4 : ℚ) / 2 - a (n - 2))

end

end A114119.P15402812123540233180

namespace A114119

/-- `5-(4/2-a(n-2))` -/
def P15402812123540233180.Spec : Prop :=
  ∀ n, P15402812123540233180.a n = (A114119 n : ℚ)

end A114119

/-!
# A114121: Expansion of (sqrt(1 - 4*x) + (1 - 2*x))/(2*(1 - 4*x)).

The programs for A114121, the canonical program `A114121.P18027585346477581278` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114121 has offset 0).

The definition of A114121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114121.P18027585346477581278

`(A000984(n)+A081294(n))/2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A114121

/-- `(A000984(n)+A081294(n))/2` -/
def P18027585346477581278.Spec : Prop :=
  ∀ n, P18027585346477581278.a n = (A114121 n : ℚ)

end A114121

/-! ## A114121.P9620151305747067015

`A116406(2*n)`
-/

namespace A114121.P9620151305747067015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116406 (2 * n)

end

end A114121.P9620151305747067015

namespace A114121

/-- `A116406(2*n)` -/
def P9620151305747067015.Spec : Prop :=
  ∀ n, P9620151305747067015.a n = A114121 n

end A114121

/-! ## A114121.P12525455256865984817

`A079280(Δ[n²])`
-/

namespace A114121.P12525455256865984817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079280 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A114121.P12525455256865984817

namespace A114121

/-- `A079280(Δ[n²])` -/
def P12525455256865984817.Spec : Prop :=
  ∀ n, P12525455256865984817.a n = A114121 n

end A114121

/-! ## A114121.P11924710296819554684

`A088218(n)+floor(2^(n-1))²`
-/

namespace A114121.P11924710296819554684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n + ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ^ 2

end

end A114121.P11924710296819554684

namespace A114121

/-- `A088218(n)+floor(2^(n-1))²` -/
def P11924710296819554684.Spec : Prop :=
  ∀ n, P11924710296819554684.a n = A114121 n

end A114121

/-! ## A114121.P4749512158360160119

`4*a(n-1)-A000108(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A114121.P4749512158360160119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * a (n - 1) - A000108 (n - 1)

end

end A114121.P4749512158360160119

namespace A114121

/-- `4*a(n-1)-A000108(n-1)` -/
def P4749512158360160119.Spec : Prop :=
  ∀ n, P4749512158360160119.a n = A114121 n

end A114121

/-! ## A114121.P17780810489076844916

`record[A123344(n)+A037952(n)]`
-/

namespace A114121.P17780810489076844916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 n + A037952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114121.P17780810489076844916

namespace A114121

/-- `record[A123344(n)+A037952(n)]` -/
def P17780810489076844916.Spec : Prop :=
  ∀ n, P17780810489076844916.a n = A114121 n

end A114121

/-! ## A114121.P6984486177460098435

`A131577(n)²+abs(A110556(n))`
-/

namespace A114121.P6984486177460098435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n ^ 2 + |A110556 n|

end

end A114121.P6984486177460098435

namespace A114121

/-- `A131577(n)²+abs(A110556(n))` -/
def P6984486177460098435.Spec : Prop :=
  ∀ n, P6984486177460098435.a n = A114121 n

end A114121

/-! ## A114121.P12712571327373636537

`record[A138364(n)]+A011782(n)²`
-/

namespace A114121.P12712571327373636537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A011782 n ^ 2

end

end A114121.P12712571327373636537

namespace A114121

/-- `record[A138364(n)]+A011782(n)²` -/
def P12712571327373636537.Spec : Prop :=
  ∀ n, P12712571327373636537.a n = A114121 n

end A114121

/-! ## A114121.P6454536684547891889

`A210736(2*n)+A131577(n)²`
-/

namespace A114121.P6454536684547891889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 * n) + A131577 n ^ 2

end

end A114121.P6454536684547891889

namespace A114121

/-- `A210736(2*n)+A131577(n)²` -/
def P6454536684547891889.Spec : Prop :=
  ∀ n, P6454536684547891889.a n = A114121 n

end A114121

/-! ## A114121.P5100051140650116989

`A210736(2*n)+A166444(2*n)`
-/

namespace A114121.P5100051140650116989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 * n) + A166444 (2 * n)

end

end A114121.P5100051140650116989

namespace A114121

/-- `A210736(2*n)+A166444(2*n)` -/
def P5100051140650116989.Spec : Prop :=
  ∀ n, P5100051140650116989.a n = A114121 n

end A114121

/-! ## A114121.P5165521043811150304

`A131577(comp[2*(n+1)])+A088218(n)`
-/

namespace A114121.P5165521043811150304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A088218 n

end

end A114121.P5165521043811150304

namespace A114121

/-- `A131577(comp[2*(n+1)])+A088218(n)` -/
def P5165521043811150304.Spec : Prop :=
  ∀ n, P5165521043811150304.a n = A114121 n

end A114121

/-! ## A114121.P1563915914148390384

`A005317(n)+A011782(n)²-A011782(n)`
-/

namespace A114121.P1563915914148390384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005317 n + (A011782 n ^ 2 - A011782 n)

end

end A114121.P1563915914148390384

namespace A114121

/-- `A005317(n)+A011782(n)²-A011782(n)` -/
def P1563915914148390384.Spec : Prop :=
  ∀ n, P1563915914148390384.a n = A114121 n

end A114121

/-! ## A114121.P4348832251661420796

`A005317(n)+A131577(n)²-A131577(n)`
-/

namespace A114121.P4348832251661420796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005317 n + (A131577 n ^ 2 - A131577 n)

end

end A114121.P4348832251661420796

namespace A114121

/-- `A005317(n)+A131577(n)²-A131577(n)` -/
def P4348832251661420796.Spec : Prop :=
  ∀ n, P4348832251661420796.a n = A114121 n

end A114121

/-! ## A114121.P14260110292600734453

`(A088218(n)+A032443(n))/2`
-/

namespace A114121.P14260110292600734453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088218 n + A032443 n : ℚ) / 2

end

end A114121.P14260110292600734453

namespace A114121

/-- `(A088218(n)+A032443(n))/2` -/
def P14260110292600734453.Spec : Prop :=
  ∀ n, P14260110292600734453.a n = (A114121 n : ℚ)

end A114121

/-! ## A114121.P157304194350215210

`(A127275(n)+A002001(n))/2`
-/

namespace A114121.P157304194350215210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127275 n + A002001 n : ℚ) / 2

end

end A114121.P157304194350215210

namespace A114121

/-- `(A127275(n)+A002001(n))/2` -/
def P157304194350215210.Spec : Prop :=
  ∀ n, P157304194350215210.a n = (A114121 n : ℚ)

end A114121

/-! ## A114121.P16619458970812182778

`A002001(n)-A068551(n)/2`
-/

namespace A114121.P16619458970812182778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002001 n : ℚ) - (A068551 n : ℚ) / 2

end

end A114121.P16619458970812182778

namespace A114121

/-- `A002001(n)-A068551(n)/2` -/
def P16619458970812182778.Spec : Prop :=
  ∀ n, P16619458970812182778.a n = (A114121 n : ℚ)

end A114121

/-! ## A114121.P13428450049260570728

`A032443(n)-record[A009545(n)²]`
-/

namespace A114121.P13428450049260570728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032443 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114121.P13428450049260570728

namespace A114121

/-- `A032443(n)-record[A009545(n)²]` -/
def P13428450049260570728.Spec : Prop :=
  ∀ n, P13428450049260570728.a n = A114121 n

end A114121

/-! ## A114121.P7609379873861932218

`A248574(2*n)-A131577(2*n)`
-/

namespace A114121.P7609379873861932218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248574 (2 * n) - A131577 (2 * n)

end

end A114121.P7609379873861932218

namespace A114121

/-- `A248574(2*n)-A131577(2*n)` -/
def P7609379873861932218.Spec : Prop :=
  ∀ n, P7609379873861932218.a n = A114121 n

end A114121

/-! ## A114121.P15065683094998083440

`(A011782(2*n)+A001405(2*n))/2`
-/

namespace A114121.P15065683094998083440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (2 * n) + A001405 (2 * n) : ℚ) / 2

end

end A114121.P15065683094998083440

namespace A114121

/-- `(A011782(2*n)+A001405(2*n))/2` -/
def P15065683094998083440.Spec : Prop :=
  ∀ n, P15065683094998083440.a n = (A114121 n : ℚ)

end A114121

/-! ## A114121.P11337022463059595828

`(A063886(2*n)+A011782(2*n))/2`
-/

namespace A114121.P11337022463059595828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063886 (2 * n) + A011782 (2 * n) : ℚ) / 2

end

end A114121.P11337022463059595828

namespace A114121

/-- `(A063886(2*n)+A011782(2*n))/2` -/
def P11337022463059595828.Spec : Prop :=
  ∀ n, P11337022463059595828.a n = (A114121 n : ℚ)

end A114121

/-!
# A114122: Expansion of (1+x)^2/(1+2x-4x^3-4x^4).

The programs for A114122, the canonical program `A114122.P7373327879619133376` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114122 has offset 0).

The definition of A114122 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2)/(1+2x-4x^3-4x^4))` (program `A114122.P7373327879619133376`, by `A114122.P7373327879619133376.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114122.P7373327879619133376

`ogf((1+2x+x^2)/(1+2x-4x^3-4x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114122

/-- `ogf((1+2x+x^2)/(1+2x-4x^3-4x^4))` -/
def P7373327879619133376.Spec : Prop :=
  ∀ n, P7373327879619133376.a n = A114122 n

theorem P7373327879619133376.correct : P7373327879619133376.Spec := by
  intro n
  simp only [A114122]

end A114122

/-! ## A114122.P7163954008022130059

`A077957(A291271(n+2)+A140427(n))`
-/

namespace A114122.P7163954008022130059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (A291271 (n + 2) + A140427 n).toNat

end

end A114122.P7163954008022130059

namespace A114122

/-- `A077957(A291271(n+2)+A140427(n))` -/
def P7163954008022130059.Spec : Prop :=
  ∀ n, P7163954008022130059.a n = A114122 n

end A114122

/-! ## A114122.P18205452546024225000

`A138231(n+1)*A138231(A004442(n))`
-/

namespace A114122.P18205452546024225000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138231 (n + 1) * A138231 (A004442 n).toNat

end

end A114122.P18205452546024225000

namespace A114122

/-- `A138231(n+1)*A138231(A004442(n))` -/
def P18205452546024225000.Spec : Prop :=
  ∀ n, P18205452546024225000.a n = A114122 n

end A114122

/-! ## A114122.P9384161041936152401

`(A016116(n)+A009116(n))/2`
-/

namespace A114122.P9384161041936152401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 n + A009116 n : ℚ) / 2

end

end A114122.P9384161041936152401

namespace A114122

/-- `(A016116(n)+A009116(n))/2` -/
def P9384161041936152401.Spec : Prop :=
  ∀ n, P9384161041936152401.a n = (A114122 n : ℚ)

end A114122

/-! ## A114122.P18341602683487928231

`A005418(A028310(n))-A038518(n)`
-/

namespace A114122.P18341602683487928231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (A028310 n).toNat - A038518 n

end

end A114122.P18341602683487928231

namespace A114122

/-- `A005418(A028310(n))-A038518(n)` -/
def P18341602683487928231.Spec : Prop :=
  ∀ n, P18341602683487928231.a n = A114122 n

end A114122

/-! ## A114122.P12334599220760844773

`A005418(A065033(2*n))-A038518(n)`
-/

namespace A114122.P12334599220760844773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (A065033 (2 * n)).toNat - A038518 n

end

end A114122.P12334599220760844773

namespace A114122

/-- `A005418(A065033(2*n))-A038518(n)` -/
def P12334599220760844773.Spec : Prop :=
  ∀ n, P12334599220760844773.a n = A114122 n

end A114122

/-!
# A114123: Riordan array (1/(1-x), x*(1+x)^2/(1-x)^2).

The programs for A114123, there is no canonical definition to state claims against.
-/

/-! ## A114123.P16556071106183625734

`A184883(∑[char[∑[n]]]²-(n+1))`
-/

namespace A114123.P16556071106183625734
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184883 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A114123.P16556071106183625734

/-! ## A114123.P3511768147738697104

`or(1, A184883(A061579(n)))`
-/

namespace A114123.P3511768147738697104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A184883 (A061579 n).toNat)

end

end A114123.P3511768147738697104

/-! ## A114123.P14793490758912323815

`A184883(A061579(n))^A035214(n)`
-/

namespace A114123.P14793490758912323815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184883 (A061579 n).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A114123.P14793490758912323815

/-! ## A114123.P6182828029616215546

`gcd(A000038(n), A184883(A061579(n)))`
-/

namespace A114123.P6182828029616215546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A184883 (A061579 n).toNat)

end

end A114123.P6182828029616215546

/-! ## A114123.P2556431475609221951

`A008288(A245300(n)+A114327(n))`
-/

namespace A114123.P2556431475609221951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A245300 n + A114327 n).toNat

end

end A114123.P2556431475609221951

/-! ## A114123.P9000254386656219851

`A008288(A061579(n)+A245300(n)-n)`
-/

namespace A114123.P9000254386656219851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A061579 n + (A245300 n - (n : ℤ))).toNat

end

end A114123.P9000254386656219851

/-! ## A114123.P12323922931697199998

`A008288(A061579(n)-(n-A245300(n)))`
-/

namespace A114123.P12323922931697199998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A061579 n - ((n : ℤ) - A245300 n)).toNat

end

end A114123.P12323922931697199998

/-! ## A114123.P5886730774846149733

`A184883(A061579(n))%A111510(n+2)`
-/

namespace A114123.P5886730774846149733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184883 (A061579 n).toNat) (A111510 (n + 2))

end

end A114123.P5886730774846149733

/-! ## A114123.P8526716970874400370

`A184883(A114327(n)+n)%A333642(n+1)`
-/

namespace A114123.P8526716970874400370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184883 (A114327 n + (n : ℤ)).toNat) (A333642 (n + 1))

end

end A114123.P8526716970874400370

/-!
# A114125: a(n) is the 10^n-th semiprime.

The programs for A114125, the canonical program `A114125.P8547266805121209135` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114125 has offset 0).

The definition of A114125 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A114125.P8547266805121209135

`A001358(10^n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A114125

/-- `A001358(10^n)` -/
def P8547266805121209135.Spec : Prop :=
  ∀ n, P8547266805121209135.a n = A114125 n

theorem P8547266805121209135.correct : P8547266805121209135.Spec := by
  intro n
  simp only [A114125]

end A114125

/-!
# A114127: Numbers that factorize into a prime number of prime factors each raised to a prime exponent.

The programs for A114127, the canonical program `A114127.P2218247616021095510` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114127 has offset 1).

The definition of A114127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114127.P15786662732718642431

`filter[A393201(n+1), A293449(#)]`
-/

namespace A114127.P15786662732718642431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A114127.P15786662732718642431

namespace A114127

/-- `filter[A393201(n+1), A293449(#)]` -/
def P15786662732718642431.Spec : Prop :=
  ∀ n, P15786662732718642431.a n = A114127 (n + 1)

end A114127

/-! ## A114127.P11685412501351195995

`∩[A056166(n+1), A393201(n+1)]`
-/

namespace A114127.P11685412501351195995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114127.P11685412501351195995

namespace A114127

/-- `∩[A056166(n+1), A393201(n+1)]` -/
def P11685412501351195995.Spec : Prop :=
  ∀ n, (P11685412501351195995.a n : ℤ) = A114127 (n + 1)

end A114127

/-! ## A114127.P9947516533333810536

`filter[A360765(n+1), A293449(#)]`
-/

namespace A114127.P9947516533333810536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A114127.P9947516533333810536

namespace A114127

/-- `filter[A360765(n+1), A293449(#)]` -/
def P9947516533333810536.Spec : Prop :=
  ∀ n, P9947516533333810536.a n = A114127 (n + 1)

end A114127

/-! ## A114127.P9738101235738930344

`∩[A056166(n+1), A360765(n+1)]`
-/

namespace A114127.P9738101235738930344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114127.P9738101235738930344

namespace A114127

/-- `∩[A056166(n+1), A360765(n+1)]` -/
def P9738101235738930344.Spec : Prop :=
  ∀ n, (P9738101235738930344.a n : ℤ) = A114127 (n + 1)

end A114127

/-! ## A114127.P13503646096324560265

`filter[A376271(n+1), A293449(#)]`
-/

namespace A114127.P13503646096324560265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A114127.P13503646096324560265

namespace A114127

/-- `filter[A376271(n+1), A293449(#)]` -/
def P13503646096324560265.Spec : Prop :=
  ∀ n, P13503646096324560265.a n = A114127 (n + 1)

end A114127

/-! ## A114127.P5874621916778506176

`∩[A056166(n+1), A376271(n+1)]`
-/

namespace A114127.P5874621916778506176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114127.P5874621916778506176

namespace A114127

/-- `∩[A056166(n+1), A376271(n+1)]` -/
def P5874621916778506176.Spec : Prop :=
  ∀ n, (P5874621916778506176.a n : ℤ) = A114127 (n + 1)

end A114127

/-! ## A114127.P4535828967227567865

`∩[A056166(n+1), A065201(n+1)]`
-/

namespace A114127.P4535828967227567865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114127.P4535828967227567865

namespace A114127

/-- `∩[A056166(n+1), A065201(n+1)]` -/
def P4535828967227567865.Spec : Prop :=
  ∀ n, (P4535828967227567865.a n : ℤ) = A114127 (n + 1)

end A114127

/-! ## A114127.P12821869374511290321

`∩[A056166(n+1), A126706(n+1)]`
-/

namespace A114127.P12821869374511290321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114127.P12821869374511290321

namespace A114127

/-- `∩[A056166(n+1), A126706(n+1)]` -/
def P12821869374511290321.Spec : Prop :=
  ∀ n, (P12821869374511290321.a n : ℤ) = A114127 (n + 1)

end A114127

/-! ## A114127.P4584115455022659113

`filter[A376834(n+1), A293449(#)]`
-/

namespace A114127.P4584115455022659113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A114127.P4584115455022659113

namespace A114127

/-- `filter[A376834(n+1), A293449(#)]` -/
def P4584115455022659113.Spec : Prop :=
  ∀ n, P4584115455022659113.a n = A114127 (n + 1)

end A114127

/-! ## A114127.P378060049564660808

`∩[A056166(n+1), A376834(n+1)]`
-/

namespace A114127.P378060049564660808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114127.P378060049564660808

namespace A114127

/-- `∩[A056166(n+1), A376834(n+1)]` -/
def P378060049564660808.Spec : Prop :=
  ∀ n, (P378060049564660808.a n : ℤ) = A114127 (n + 1)

end A114127

/-! ## A114127.P4350960270127610711

`∩[A056166(n+1), A376384(n+1)]`
-/

namespace A114127.P4350960270127610711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114127.P4350960270127610711

namespace A114127

/-- `∩[A056166(n+1), A376384(n+1)]` -/
def P4350960270127610711.Spec : Prop :=
  ∀ n, (P4350960270127610711.a n : ℤ) = A114127 (n + 1)

end A114127

/-! ## A114127.P12089962437287903702

`∩[A056166(n+1), A307517(n+1)]`
-/

namespace A114127.P12089962437287903702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114127.P12089962437287903702

namespace A114127

/-- `∩[A056166(n+1), A307517(n+1)]` -/
def P12089962437287903702.Spec : Prop :=
  ∀ n, (P12089962437287903702.a n : ℤ) = A114127 (n + 1)

end A114127

/-! ## A114127.P16547573313436945102

`A057521(∩[A056166(n+1), A286708(n+1)])`
-/

namespace A114127.P16547573313436945102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A114127.P16547573313436945102

namespace A114127

/-- `A057521(∩[A056166(n+1), A286708(n+1)])` -/
def P16547573313436945102.Spec : Prop :=
  ∀ n, P16547573313436945102.a n = A114127 (n + 1)

end A114127

/-! ## A114127.P2218247616021095510

`∩[A056166(n+1), A156683(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A114127

/-- `∩[A056166(n+1), A156683(n+1)]` -/
def P2218247616021095510.Spec : Prop :=
  ∀ n, (P2218247616021095510.a n : ℤ) = A114127 (n + 1)

theorem P2218247616021095510.correct : P2218247616021095510.Spec := by
  intro n
  simp only [A114127, Nat.add_sub_cancel]

end A114127

/-! ## A114127.P4127863642793563413

`∩[A056166(n+1), A346608(n+1)]`
-/

namespace A114127.P4127863642793563413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114127.P4127863642793563413

namespace A114127

/-- `∩[A056166(n+1), A346608(n+1)]` -/
def P4127863642793563413.Spec : Prop :=
  ∀ n, (P4127863642793563413.a n : ℤ) = A114127 (n + 1)

end A114127

/-!
# A114128: Numbers that factorize into a prime number of distinct prime factors each raised to a different prime exponent.

The programs for A114128, there is no canonical definition to state claims against.
-/

/-! ## A114128.P17101789762425287131

`∩[A052486(n+1), A114129(n+1)]`
-/

namespace A114128.P17101789762425287131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114128.P17101789762425287131

/-! ## A114128.P8429714090424711614

`∩[A114129(n+1), A286708(n+1)]`
-/

namespace A114128.P8429714090424711614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114128.P8429714090424711614

/-! ## A114128.P4779447960315234489

`∩[A056166(n+1), A393941(n+1)]`
-/

namespace A114128.P4779447960315234489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114128.P4779447960315234489

/-! ## A114128.P11156328239436335337

`∩[A114129(n+1), A359280(n+1)]`
-/

namespace A114128.P11156328239436335337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114128.P11156328239436335337

/-! ## A114128.P8528588666913546521

`∩[A114129(n+1), A372404(n+1)]`
-/

namespace A114128.P8528588666913546521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114128.P8528588666913546521

/-! ## A114128.P214109509560723304

`∩[A114129(n+1), A389528(n+1)]`
-/

namespace A114128.P214109509560723304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114128.P214109509560723304

/-! ## A114128.P3800378858507332002

`∩[A114129(n+1), A389752(n+1)]`
-/

namespace A114128.P3800378858507332002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114128.P3800378858507332002

/-! ## A114128.P15248594851272666889

`∩[A114129(n+1), A389753(n+1)]`
-/

namespace A114128.P15248594851272666889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114128.P15248594851272666889

/-! ## A114128.P3747323939752444774

`∩[A114129(n+1), A389959(n+1)]`
-/

namespace A114128.P3747323939752444774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114128.P3747323939752444774

/-! ## A114128.P5601808761846793344

`∩[A114129(n+1), A393941(n+1)]`
-/

namespace A114128.P5601808761846793344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114128.P5601808761846793344

/-! ## A114128.P492562256904197225

`∩[A114129(n+1), A370266(n+1)]`
-/

namespace A114128.P492562256904197225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114128.P492562256904197225

/-! ## A114128.P8737524334941543082

`∩[A114127(n+1), A114129(n+1)]`
-/

namespace A114128.P8737524334941543082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114128.P8737524334941543082

/-! ## A114128.P7867454355778928426

`∩[A114127(n+1), A393941(n+1)]`
-/

namespace A114128.P7867454355778928426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114128.P7867454355778928426

/-! ## A114128.P11016554401678113369

`∩[A072412(n+1), A114129(n+1)]`
-/

namespace A114128.P11016554401678113369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114128.P11016554401678113369

/-! ## A114128.P11198697354293506547

`∩[A036785(n+1), A114129(n+1)]`
-/

namespace A114128.P11198697354293506547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114128.P11198697354293506547

/-! ## A114128.P7606686597793577478

`∩[A114129(n+1), A361098(n+1)]`
-/

namespace A114128.P7606686597793577478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114128.P7606686597793577478

/-! ## A114128.P11086424511369960242

`filter[A114129(n+1), A355447(#)]`
-/

namespace A114128.P11086424511369960242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A114128.P11086424511369960242

/-!
# A114129: Numbers that factorize into a set of prime factors that are each raised to a different prime exponent.

The programs for A114129, there is no canonical definition to state claims against.
-/

/-! ## A114129.P948429433359500991

`∪[A053810(n+1), A114128(n+1)]`
-/

namespace A114129.P948429433359500991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A114129.P948429433359500991

/-! ## A114129.P7782543749381444924

`filter[A056166(n+2), A351564(#)]`
-/

namespace A114129.P7782543749381444924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A114129.P7782543749381444924

/-! ## A114129.P16906211909790599647

`filter[A182852(n+2), A293449(#)]`
-/

namespace A114129.P16906211909790599647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182852 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A114129.P16906211909790599647

/-! ## A114129.P17803087403285116220

`∩[A056166(n+1), A130091(n+2)]`
-/

namespace A114129.P17803087403285116220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114129.P17803087403285116220

/-! ## A114129.P5643851087789562471

`A385288(n+1)%A000040(A383015(n+1))`
-/

namespace A114129.P5643851087789562471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385288 (n + 1)) (A000040 (A383015 (n + 1)).toNat)

end

end A114129.P5643851087789562471

/-!
# A114130: Numbers whose factorization involves only prime exponents, all different, and no number appears both as an exponent and as a prime factor.

The programs for A114130, there is no canonical definition to state claims against.
-/

/-! ## A114130.P10508890246405902179

`∩[A062307(n+1), A124184(n+1)]`
-/

namespace A114130.P10508890246405902179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114130.P10508890246405902179

/-! ## A114130.P7619347345123100393

`∩[A114129(n+1), A124184(n+1)]`
-/

namespace A114130.P7619347345123100393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114130.P7619347345123100393

/-! ## A114130.P9726459388748791428

`∩[A063806(n+1), A124184(n+1)]`
-/

namespace A114130.P9726459388748791428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114130.P9726459388748791428

/-! ## A114130.P3312251382625895826

`∩[A062307(n+1), A144146(n+1)]`
-/

namespace A114130.P3312251382625895826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114130.P3312251382625895826

/-! ## A114130.P16717032928766998647

`∩[A114129(n+1), A144146(n+1)]`
-/

namespace A114130.P16717032928766998647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114130.P16717032928766998647

/-!
# A114131: Numbers that factorize into a prime number of factors all raised to different prime exponents and no number appears both as an exponent and as a prime factor.

The programs for A114131, there is no canonical definition to state claims against.
-/

/-! ## A114131.P4228712596372218914

`∩[A052486(n+1), A114130(n+1)]`
-/

namespace A114131.P4228712596372218914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114131.P4228712596372218914

/-! ## A114131.P12018046752937340481

`∩[A052486(n+1), A124184(n+1)]`
-/

namespace A114131.P12018046752937340481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114131.P12018046752937340481

/-! ## A114131.P8126724969539577022

`∩[A114127(n+1), A114130(n+1)]`
-/

namespace A114131.P8126724969539577022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114131.P8126724969539577022

/-! ## A114131.P13156687950292598452

`∩[A114128(n+1), A114130(n+1)]`
-/

namespace A114131.P13156687950292598452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114131.P13156687950292598452

/-! ## A114131.P13228270792706775231

`∩[A114128(n+1), A124184(n+1)]`
-/

namespace A114131.P13228270792706775231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114131.P13228270792706775231

/-!
# A114132: Numbers such that each of the first 2j primes appears exactly once in the prime factorization, either as factor or exponent.

The programs for A114132, there is no canonical definition to state claims against.
-/

/-! ## A114132.P18070458183594000488

`∩[A062307(n+1), A284889(n+1)]`
-/

namespace A114132.P18070458183594000488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114132.P18070458183594000488

/-! ## A114132.P10396414362721165690

`∩[A114129(n+1), A284889(n+1)]`
-/

namespace A114132.P10396414362721165690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114132.P10396414362721165690

/-! ## A114132.P1934091145047854768

`∩[A114130(n+1), A284889(n+1)]`
-/

namespace A114132.P1934091145047854768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114132.P1934091145047854768

/-! ## A114132.P1802345074239551489

`filter[A284889(n+2), A293449(#)]`
-/

namespace A114132.P1802345074239551489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284889 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A114132.P1802345074239551489

/-!
# A114134: Start with a(1) = 1. For n>1, choose a(n) to be the smallest number > a(n-1) consistent with the condition that "the a(n)-th digit is a 1" is true for all n.

The programs for A114134, there is no canonical definition to state claims against.
-/

/-! ## A114134.P6866113247026874794

`A341731(A341717(n+2)+n)+n`
-/

namespace A114134.P6866113247026874794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341731 (A341717 (n + 2) + (n : ℤ)).toNat + (n : ℤ)

end

end A114134.P6866113247026874794

/-! ## A114134.P9777019382620886675

`xor(A071663(n), A347451(A071678(n+1)))`
-/

namespace A114134.P9777019382620886675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A071663 n) (A347451 (A071678 (n + 1)).toNat)

end

end A114134.P9777019382620886675

/-! ## A114134.P15290928364655013586

`xor(A071664(n), A347451(A071678(n+1)))`
-/

namespace A114134.P15290928364655013586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A071664 n) (A347451 (A071678 (n + 1)).toNat)

end

end A114134.P15290928364655013586

/-!
# A114135: Primitive numbers n such that the sums of the digits of n, n^2 and n^3 coincide (cf. A111434).

The programs for A114135, there is no canonical definition to state claims against.
-/

/-! ## A114135.P13435016193527278985

`∩[A070276(n+1), A254066(n+1)]`
-/

namespace A114135.P13435016193527278985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114135.P13435016193527278985

/-! ## A114135.P12412093588356925378

`∩[A111434(n+1), A254066(n+1)]`
-/

namespace A114135.P12412093588356925378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114135.P12412093588356925378

/-!
# A114136: Numbers k such that k divides the sum of digits of all numbers from 1 to k.

The programs for A114136, there is no canonical definition to state claims against.
-/

/-! ## A114136.P8518420725694549177

`lt[7, 8-∑[∑{digits}[n+1, #]]%(n+1)]+1`
-/

namespace A114136.P8518420725694549177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x).sum

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - (((∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1) : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A114136.P8518420725694549177

/-! ## A114136.P3341927285203854323

`eq[1, a(∑[A007953(n)]%n)+1]` with `a(0)=0`
-/

namespace A114136.P3341927285203854323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (Int.tmod (∑ j ∈ Finset.range (n + 1), f3 j) (n : ℤ)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114136.P3341927285203854323

/-! ## A114136.P955031089729903455

`eq[n, gcd(abs(1-n)+1, A037123(n))]`
-/

namespace A114136.P955031089729903455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (|1 - (n : ℤ)| + 1) (A037123 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114136.P955031089729903455

/-! ## A114136.P10531983213877886174

`eq[gcd(n, A037123(n)), A028310(n)]`
-/

namespace A114136.P10531983213877886174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A037123 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114136.P10531983213877886174

/-!
# A114139: Changes in United States postal rates per ounce since 1863.

The programs for A114139, there is no canonical definition to state claims against.
-/

/-! ## A114139.P4648255306877390327

`Δ[A114062(n+1)]`
-/

namespace A114139.P4648255306877390327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114139.P4648255306877390327

/-! ## A114139.P3441110381287861810

`A114062(n+2)-A114062(n+1)`
-/

namespace A114139.P3441110381287861810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114062 (n + 2) - A114062 (n + 1)

end

end A114139.P3441110381287861810

/-!
# A114144: A variant of the Josephus Problem in which three persons are to be eliminated at the same time.

The programs for A114144, there is no canonical definition to state claims against.
-/

/-! ## A114144.P9274379841045944347

`floor(a(n-1)+log2(2*n))%A265137(3*n+1)` with `a(0)=3, a(1)=1`
-/

namespace A114144.P9274379841045944347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n a =>
  Int.tmod ⌊(a (n - 1) : ℝ) + Real.logb 2 (2 * n : ℝ)⌋ (A265137 (3 * n + 1))

end

end A114144.P9274379841045944347

/-! ## A114144.P1406207144170317822

`A138741(A102377(n))+A001855(n+1)`
-/

namespace A114144.P1406207144170317822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138741 (A102377 n).toNat + A001855 (n + 1)

end

end A114144.P1406207144170317822

/-! ## A114144.P6799958019043859398

`ceil(a(n-1)+log2(n+1))%A350237(n+3)` with `a(0)=3`
-/

namespace A114144.P6799958019043859398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.tmod ⌈(a (n - 1) : ℝ) + Real.logb 2 (n + 1 : ℝ)⌉ (A350237 (n + 3))

end

end A114144.P6799958019043859398

/-! ## A114144.P6789154367208389430

`floor((a(n-1)-1)/n+a(n-1)+2)%A050673(2*n+1)` with `a(0)=3`
-/

namespace A114144.P6789154367208389430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.tmod ⌊(a (n - 1) - 1 : ℚ) / (n : ℚ) + (a (n - 1) + 2 : ℚ)⌋ (A050673 (2 * n + 1))

end

end A114144.P6789154367208389430

/-! ## A114144.P7436842605303825154

`A161696(A005917(n+1))+A001855(n+1)`
-/

namespace A114144.P7436842605303825154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161696 (A005917 (n + 1)).toNat + A001855 (n + 1)

end

end A114144.P7436842605303825154

/-!
# A114146: Number of threshold functions on n X n grid.

The programs for A114146, there is no canonical definition to state claims against.
-/

/-! ## A114146.P15602491781608366830

`dr(A010002(n))*A114043(A065033(2*n))`
-/

namespace A114146.P15602491781608366830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A010002 n) : ℤ) * A114043 (A065033 (2 * n)).toNat

end

end A114146.P15602491781608366830

/-! ## A114146.P3328080359513090106

`A040001(2*n)*A114043(A065033(2*n))`
-/

namespace A114146.P3328080359513090106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) * A114043 (A065033 (2 * n)).toNat

end

end A114146.P3328080359513090106

/-! ## A114146.P486640452326322769

`A114043(A065033(2*n))*A174296(2*n)`
-/

namespace A114146.P486640452326322769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114043 (A065033 (2 * n)).toNat * A174296 (2 * n)

end

end A114146.P486640452326322769

/-! ## A114146.P4329958501139627570

`A020639(A008574(n))*A114043(A065033(2*n))`
-/

namespace A114146.P4329958501139627570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A114043 (A065033 (2 * n)).toNat

end

end A114146.P4329958501139627570

/-! ## A114146.P18408672365199073219

`A020639(A022144(n))*A114043(A065033(2*n))`
-/

namespace A114146.P18408672365199073219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A022144 n).toNat * A114043 (A065033 (2 * n)).toNat

end

end A114146.P18408672365199073219

/-! ## A114146.P684435870558288749

`A020639(A103517(n))*A114043(A065033(2*n))`
-/

namespace A114146.P684435870558288749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103517 n).toNat * A114043 (A065033 (2 * n)).toNat

end

end A114146.P684435870558288749

/-! ## A114146.P4734852259074412324

`∏{e}[A008578(n+1)², #*A114043(n)]`
-/

namespace A114146.P4734852259074412324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A114043 n

end

end A114146.P4734852259074412324

/-!
# A114147: Self-describing sequence : 1 prime between two nonprimes, then 2 primes between two nonprimes, then 4 primes, then 5, then 7, etc. The quantity of primes in each run is given by the sequence itself. (Sequence is strictly increasing and the smallest next available nonprime is used when needed).

The programs for A114147, there is no canonical definition to state claims against.
-/

/-! ## A114147.P4966168842648690127

`record[gcd(A008684(n+1), A072674(n))]`
-/

namespace A114147.P4966168842648690127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008684 (n + 1)) (A072674 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114147.P4966168842648690127

/-! ## A114147.P15504401680803320624

`record[A249821(n+1)-A048105(n+1)]`
-/

namespace A114147.P15504401680803320624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249821 (n + 1) - A048105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114147.P15504401680803320624

/-! ## A114147.P1915471702504838575

`record[A249821(n+1)+A091225(n+4)]`
-/

namespace A114147.P1915471702504838575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249821 (n + 1) + A091225 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114147.P1915471702504838575

/-! ## A114147.P10789770736518155164

`record[A249821(n+1)-A129950(n+4)]`
-/

namespace A114147.P10789770736518155164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249821 (n + 1) - A129950 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114147.P10789770736518155164

/-! ## A114147.P14339682643352208401

`lt[A101606(n+2), A011655(A033583(n))]`
-/

namespace A114147.P14339682643352208401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101606 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A033583 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114147.P14339682643352208401

/-!
# A114148: Self-describing sequence: 2 odd integers between two even, then 3 odd integers between two even, then 5 odd integers, then 6, then 7... The length of each run of odd integers is given by the sequence itself (the smallest even available integer is used when needed).

The programs for A114148, there is no canonical definition to state claims against.
-/

/-! ## A114148.P7901206584841777133

`record[and(A106744(n+2), A106744(n+1))+1]`
-/

namespace A114148.P7901206584841777133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A106744 (n + 2)) (A106744 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114148.P7901206584841777133

/-! ## A114148.P15755731354824281053

`lt[A136129(A187415(n+1)), A046223(n+1)]`
-/

namespace A114148.P15755731354824281053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136129 (A187415 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114148.P15755731354824281053

/-! ## A114148.P6352688013848140110

`∑[A270643(A326255(2*(n+2)))]`
-/

namespace A114148.P6352688013848140110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270643 (A326255 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114148.P6352688013848140110

/-! ## A114148.P17794599424001548687

`lt[A209655(n+1), A223540(A061358(3*(n+1)))]`
-/

namespace A114148.P17794599424001548687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223540 (A061358 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A114148.P17794599424001548687

/-!
# A114149: Self-describing sequence: 1 even integer between two odd, then 2 even integers between two odd, then 3 even integers, then 4, then 6... The length of each run of even integers is given by the sequence itself (the smallest odd available integer is used when needed).

The programs for A114149, there is no canonical definition to state claims against.
-/

/-! ## A114149.P1162044886421612075

`∪[2*(n+1), ∑[A015929(n+1)]]`
-/

namespace A114149.P1162044886421612075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A114149.P1162044886421612075

/-! ## A114149.P1549244163876738503

`∪[2*(n+1), ∑[A163823(n+1)]]`
-/

namespace A114149.P1549244163876738503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A114149.P1549244163876738503

/-! ## A114149.P16776783371506509107

`∪[2*(n+1), ∑[A328596(n+1)]]`
-/

namespace A114149.P16776783371506509107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A114149.P16776783371506509107

/-! ## A114149.P6057658690546012077

`∪[∑[A015929(n+1)], A004277(n)]`
-/

namespace A114149.P6057658690546012077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015929 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A114149.P6057658690546012077

/-! ## A114149.P10442923480715042370

`∪[∑[A163823(n+1)], A004277(n)]`
-/

namespace A114149.P10442923480715042370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163823 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A114149.P10442923480715042370

/-!
# A114150: Triangle, read by rows, given by the product R^2*Q^-1 = Q^3*P^-2 using triangular matrices P=A113370, Q=A113381, R=A113389.

The programs for A114150, there is no canonical definition to state claims against.
-/

/-! ## A114150.P4897234868149949326

`A113370(comp[∑[n]])`
-/

namespace A114150.P4897234868149949326
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113370 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A114150.P4897234868149949326

/-! ## A114150.P2246228088602999389

`and(-1, A113370(A014132(n+1)))`
-/

namespace A114150.P2246228088602999389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A113370 (A014132 (n + 1)).toNat)

end

end A114150.P2246228088602999389

/-! ## A114150.P17496003043142575039

`and(-1, A113370(A007401(n+2)))`
-/

namespace A114150.P17496003043142575039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A113370 (A007401 (n + 2)).toNat)

end

end A114150.P17496003043142575039

/-! ## A114150.P17819434428003469516

`A113370(comp[C(n, 2)])+A000007(2*(n+2))`
-/

namespace A114150.P17819434428003469516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113370 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A000007 (2 * (n + 2))

end

end A114150.P17819434428003469516

/-! ## A114150.P406352226657018749

`A016266(n)*A113370(comp[A000217(n)])`
-/

namespace A114150.P406352226657018749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016266 n * A113370 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A114150.P406352226657018749

/-!
# A114151: Triangle, read by rows, given by the product R^-2*Q^3 = Q^-1*P^2 using triangular matrices P=A113370, Q=A113381, R=A113389.

The programs for A114151, there is no canonical definition to state claims against.
-/

/-! ## A114151.P2184870287053148754

`A108337(A068045(n)*A090238(n))`
-/

namespace A114151.P2184870287053148754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108337 (A068045 n * A090238 n).toNat

end

end A114151.P2184870287053148754

/-!
# A114152: Triangle, read by rows, given by the product R^3*P^-1 using triangular matrices P=A113370, R=A113389.

The programs for A114152, there is no canonical definition to state claims against.
-/

/-! ## A114152.P5059907215878197564

`A113374(comp[∑[n]])`
-/

namespace A114152.P5059907215878197564
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113374 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A114152.P5059907215878197564

/-! ## A114152.P5391910457490772777

`and(-1, A113374(A014132(n+1)))`
-/

namespace A114152.P5391910457490772777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A113374 (A014132 (n + 1)).toNat)

end

end A114152.P5391910457490772777

/-! ## A114152.P5658638011764784992

`A113374(∑[A035214(n)])+A025439(n)`
-/

namespace A114152.P5658638011764784992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113374 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A025439 n

end

end A114152.P5658638011764784992

/-! ## A114152.P3954489582346061752

`A113374(A014132(n+1))+A025439(n)`
-/

namespace A114152.P3954489582346061752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113374 (A014132 (n + 1)).toNat + A025439 n

end

end A114152.P3954489582346061752

/-! ## A114152.P4589283727632361652

`A185246(n)+A113374(A014132(n+1))`
-/

namespace A114152.P4589283727632361652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185246 n + A113374 (A014132 (n + 1)).toNat

end

end A114152.P4589283727632361652

/-!
# A114154: Triangle, read by rows, given by the product R^3*Q^-2 using triangular matrices Q=A113381, R=A113389.

The programs for A114154, there is no canonical definition to state claims against.
-/

/-! ## A114154.P7145450644663192545

`A113381(comp[∑[n]])`
-/

namespace A114154.P7145450644663192545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113381 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A114154.P7145450644663192545

/-! ## A114154.P2027371359336194660

`and(-1, A113381(A014132(n+1)))`
-/

namespace A114154.P2027371359336194660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A113381 (A014132 (n + 1)).toNat)

end

end A114154.P2027371359336194660

/-! ## A114154.P2213385505283319779

`A113381(∑[A035214(n)])+A025439(n)`
-/

namespace A114154.P2213385505283319779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113381 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A025439 n

end

end A114154.P2213385505283319779

/-! ## A114154.P16910683073704423014

`A113381(A014132(n+1))+A025439(n)`
-/

namespace A114154.P16910683073704423014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113381 (A014132 (n + 1)).toNat + A025439 n

end

end A114154.P16910683073704423014

/-! ## A114154.P14501656848170243350

`A185246(n)+A113381(A014132(n+1))`
-/

namespace A114154.P14501656848170243350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185246 n + A113381 (A014132 (n + 1)).toNat

end

end A114154.P14501656848170243350

/-!
# A114157: Column 0 of triangle A114156, which is the matrix inverse of A113370.

The programs for A114157, there is no canonical definition to state claims against.
-/

/-! ## A114157.P17445539276280268765

`A114155(∑[n])`
-/

namespace A114157.P17445539276280268765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114155 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114157.P17445539276280268765

/-! ## A114157.P8871625830266007576

`A114156(∑[n])`
-/

namespace A114157.P8871625830266007576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114156 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114157.P8871625830266007576

/-! ## A114157.P2139462894336764915

`∑{digits}[n, A114155(A000217(#))]`
-/

namespace A114157.P2139462894336764915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A114155 (A000217 x).toNat).sum

end

end A114157.P2139462894336764915

/-! ## A114157.P5436636555310903999

`and(-1, A114155(A000217(n)))`
-/

namespace A114157.P5436636555310903999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A114155 (A000217 n).toNat)

end

end A114157.P5436636555310903999

/-! ## A114157.P11176853769748802057

`or(A114155(C(n+1, 2)), A243148(n))`
-/

namespace A114157.P11176853769748802057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A114155 (Nat.choose (n + 1) 2)) (A243148 n)

end

end A114157.P11176853769748802057

/-!
# A114160: E.g.f. is A(x) = (1-log(B(x)))/B(x), where B(x) = sqrt(1-2*x).

The programs for A114160, there is no canonical definition to state claims against.
-/

/-! ## A114160.P7148088415835647818

`(A114161(n)-A001147(n))/2`
-/

namespace A114160.P7148088415835647818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114161 n - A001147 n : ℚ) / 2

end

end A114160.P7148088415835647818

/-! ## A114160.P9669661695846311179

`A291656(∑[n+2]-1)+A001147(n)`
-/

namespace A114160.P9669661695846311179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291656 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + A001147 n

end

end A114160.P9669661695846311179

/-! ## A114160.P743192249142427225

`A291656(A034856(n+1))+A001497(∑[n])`
-/

namespace A114160.P743192249142427225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291656 (A034856 (n + 1)).toNat + A001497 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114160.P743192249142427225

/-! ## A114160.P6533373916257285353

`A291656(A034856(n+1))+A028338(∑[n])`
-/

namespace A114160.P6533373916257285353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291656 (A034856 (n + 1)).toNat + A028338 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114160.P6533373916257285353

/-! ## A114160.P3133911890302295818

`A291656(A034856(n+1))+A053979(∑[n])`
-/

namespace A114160.P3133911890302295818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291656 (A034856 (n + 1)).toNat + A053979 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114160.P3133911890302295818

/-!
# A114161: E.g.f.: (3-log(1-2*x))/(1-2*x)^(1/2).

The programs for A114161, there is no canonical definition to state claims against.
-/

/-! ## A114161.P976213074166247974

`A001147(n)+2*A114160(n)`
-/

namespace A114161.P976213074166247974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n + 2 * A114160 n

end

end A114161.P976213074166247974

/-! ## A114161.P2715762127560114052

`A005843(A114160(n))+A001147(n)`
-/

namespace A114161.P2715762127560114052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A114160 n).toNat + A001147 n

end

end A114161.P2715762127560114052

/-!
# A114162: C(n,k)*Floor((n-k)/2)!.

The programs for A114162, there is no canonical definition to state claims against.
-/

/-! ## A114162.P5542130488343163358

`A007318(n)*A081123(A025581(n))`
-/

namespace A114162.P5542130488343163358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A081123 (A025581 n).toNat

end

end A114162.P5542130488343163358

/-! ## A114162.P12229552783252509407

`A007318(n)*A178801(A182748(n))`
-/

namespace A114162.P12229552783252509407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A178801 (A182748 n).toNat

end

end A114162.P12229552783252509407

/-! ## A114162.P12147077935852734268

`A094587(n)/A081125(A025581(n))`
-/

namespace A114162.P12147077935852734268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094587 n : ℚ) / (A081125 (A025581 n).toNat : ℚ)

end

end A114162.P12147077935852734268

/-! ## A114162.P6227817419880267880

`abs(A081123(A025581(n))*A108086(n))`
-/

namespace A114162.P6227817419880267880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081123 (A025581 n).toNat * A108086 n|

end

end A114162.P6227817419880267880

/-! ## A114162.P3140658806838712057

`abs(A081123(A025581(n))*A117440(n))`
-/

namespace A114162.P3140658806838712057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081123 (A025581 n).toNat * A117440 n|

end

end A114162.P3140658806838712057

/-! ## A114162.P14914186971747309936

`abs(A081123(A025581(n))*A130595(n))`
-/

namespace A114162.P14914186971747309936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081123 (A025581 n).toNat * A130595 n|

end

end A114162.P14914186971747309936

/-! ## A114162.P17980424473263538255

`A002265(A099375(n))!*A007318(n)`
-/

namespace A114162.P17980424473263538255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002265 (A099375 n).toNat).toNat : ℤ) * A007318 n

end

end A114162.P17980424473263538255

/-! ## A114162.P5780276257804016723

`Δ[A102363(n)]*A081123(A025581(n))`
-/

namespace A114162.P5780276257804016723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A081123 (A025581 n).toNat

end

end A114162.P5780276257804016723

/-! ## A114162.P10042686483272546743

`A007318(n)*A081123(A025660(n+1))`
-/

namespace A114162.P10042686483272546743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A081123 (A025660 (n + 1)).toNat

end

end A114162.P10042686483272546743

/-! ## A114162.P12759714105227858055

`(A014473(n)+1)*A081123(A025581(n))`
-/

namespace A114162.P12759714105227858055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A081123 (A025581 n).toNat

end

end A114162.P12759714105227858055

/-!
# A114163: Triangle read by rows, based on a simple Jacobsthal number recursion rule.

The programs for A114163, there is no canonical definition to state claims against.
-/

/-! ## A114163.P12130539699483417312

`A230776(A123349(n))`
-/

namespace A114163.P12130539699483417312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230776 (A123349 n).toNat

end

end A114163.P12130539699483417312

/-! ## A114163.P13370081499465067643

`A008476(A066119(n+1))`
-/

namespace A114163.P13370081499465067643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008476 (A066119 (n + 1)).toNat

end

end A114163.P13370081499465067643

/-! ## A114163.P469991387367843050

`A230776(A394582(n+1))`
-/

namespace A114163.P469991387367843050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230776 (A394582 (n + 1)).toNat

end

end A114163.P469991387367843050

/-! ## A114163.P17956969847368468164

`A031297(A007966(A123349(n)²))`
-/

namespace A114163.P17956969847368468164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031297 (A007966 (A123349 n ^ 2).toNat).toNat

end

end A114163.P17956969847368468164

/-! ## A114163.P3814934475185017353

`A275451(A154983(n))+A123349(n)`
-/

namespace A114163.P3814934475185017353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275451 (A154983 n).toNat + A123349 n

end

end A114163.P3814934475185017353

/-!
# A114164: Riordan array (1/(1-2x), x(1-x)/(1-2x)^2).

The programs for A114164, the canonical program `A114164.P1733952615271964353` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114164 has offset 0).

The definition of A114164 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114164.P1733952615271964353

`4*T(n-1,k)+T(n-1,k-1)-4*T(n-2,k)-T(n-2,k-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114164

/-- `4*T(n-1,k)+T(n-1,k-1)-4*T(n-2,k)-T(n-2,k-1)` -/
def P1733952615271964353.Spec : Prop :=
  ∀ n, P1733952615271964353.a n = A114164 n

theorem P1733952615271964353.correct : P1733952615271964353.Spec := by
  intro n
  simp only [A114164]

end A114164

/-! ## A114164.P2432928855816367302

`abs(A123876(n))`
-/

namespace A114164.P2432928855816367302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123876 n|

end

end A114164.P2432928855816367302

namespace A114164

/-- `abs(A123876(n))` -/
def P2432928855816367302.Spec : Prop :=
  ∀ n, P2432928855816367302.a n = A114164 n

end A114164

/-! ## A114164.P15125602208431136667

`A097807(n)*A123876(n)`
-/

namespace A114164.P15125602208431136667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A123876 n

end

end A114164.P15125602208431136667

namespace A114164

/-- `A097807(n)*A123876(n)` -/
def P15125602208431136667.Spec : Prop :=
  ∀ n, P15125602208431136667.a n = A114164 n

end A114164

/-! ## A114164.P17999127982337900142

`gcd(A000038(n), A123876(n))`
-/

namespace A114164.P17999127982337900142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A123876 n)

end

end A114164.P17999127982337900142

namespace A114164

/-- `gcd(A000038(n), A123876(n))` -/
def P17999127982337900142.Spec : Prop :=
  ∀ n, (P17999127982337900142.a n : ℤ) = A114164 n

end A114164

/-! ## A114164.P15122033936988372978

`lcm(A020985(n), A123876(n))`
-/

namespace A114164.P15122033936988372978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A123876 n)

end

end A114164.P15122033936988372978

namespace A114164

/-- `lcm(A020985(n), A123876(n))` -/
def P15122033936988372978.Spec : Prop :=
  ∀ n, (P15122033936988372978.a n : ℤ) = A114164 n

end A114164

/-! ## A114164.P2226205811597859072

`lcm(-A123876(n), A087960(n))`
-/

namespace A114164.P2226205811597859072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A123876 n) (A087960 n)

end

end A114164.P2226205811597859072

namespace A114164

/-- `lcm(-A123876(n), A087960(n))` -/
def P2226205811597859072.Spec : Prop :=
  ∀ n, (P2226205811597859072.a n : ℤ) = A114164 n

end A114164

/-! ## A114164.P5953167425311127693

`∑{d}[A123876(n), A000010(#)]`
-/

namespace A114164.P5953167425311127693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A114164.P5953167425311127693

namespace A114164

/-- `∑{d}[A123876(n), A000010(#)]` -/
def P5953167425311127693.Spec : Prop :=
  ∀ n, P5953167425311127693.a n = A114164 n

end A114164

/-!
# A114165: Numbers n such that p(2n) is prime, where p(n) is the number of partitions of n.

The programs for A114165, there is no canonical definition to state claims against.
-/

/-! ## A114165.P9809885644109817616

`record[A273943(A046063(n+1))]`
-/

namespace A114165.P9809885644109817616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A046063 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114165.P9809885644109817616

/-! ## A114165.P7518452268370172594

`record[A318518(A046063(2*n-n+1))]`
-/

namespace A114165.P7518452268370172594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A046063 ((2 * n : ℤ) - (n : ℤ) + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114165.P7518452268370172594

/-! ## A114165.P7426995496009474791

`record[A325641(A046063(n+2))]`
-/

namespace A114165.P7426995496009474791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325641 (A046063 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114165.P7426995496009474791

/-! ## A114165.P14454069729310832597

`eq[1, A085561(2*n)]`
-/

namespace A114165.P14454069729310832597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085561 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114165.P14454069729310832597

/-! ## A114165.P15204891731435129870

`eq[2, A085543(2*n)]`
-/

namespace A114165.P15204891731435129870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085543 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114165.P15204891731435129870

/-!
# A114166: Numbers n such that p(5n) is prime, where p(n) is the number of partitions of n.

The programs for A114166, there is no canonical definition to state claims against.
-/

/-! ## A114166.P68569416188579282

`eq[1, A085561(5*n)]`
-/

namespace A114166.P68569416188579282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085561 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114166.P68569416188579282

/-! ## A114166.P15528829186192616740

`eq[2, A085543(5*n)]`
-/

namespace A114166.P15528829186192616740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085543 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114166.P15528829186192616740

/-! ## A114166.P14762395430894183783

`eq[2, A278241(5*n)]`
-/

namespace A114166.P14762395430894183783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114166.P14762395430894183783

/-!
# A114167: Numbers n such that p(7n) is prime, where p(n) is the number of partitions of n.

The programs for A114167, there is no canonical definition to state claims against.
-/

/-! ## A114167.P17855623613297002532

`eq[1, A085561(7*n)]`
-/

namespace A114167.P17855623613297002532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085561 (7 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114167.P17855623613297002532

/-! ## A114167.P15560221829078514824

`eq[2, A085543(7*n)]`
-/

namespace A114167.P15560221829078514824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085543 (7 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114167.P15560221829078514824

/-! ## A114167.P12469929312296924459

`eq[2, A278241(7*n)]`
-/

namespace A114167.P12469929312296924459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (7 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114167.P12469929312296924459

/-! ## A114167.P15586510359303258571

`eq[1, A087175(7*A028310(n))]`
-/

namespace A114167.P15586510359303258571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087175 (7 * A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114167.P15586510359303258571

/-!
# A114168: Numbers n such that p(8n) is prime, where p(n) is the number of partitions of n.

The programs for A114168, there is no canonical definition to state claims against.
-/

/-! ## A114168.P51509819978135550

`record[A142150(A111045(n+4))]`
-/

namespace A114168.P51509819978135550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A111045 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114168.P51509819978135550

/-! ## A114168.P2149022886880938435

`eq[1, A085561(A022144(n))]`
-/

namespace A114168.P2149022886880938435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085561 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114168.P2149022886880938435

/-!
# A114169: Numbers n such that p(9n) is prime, where p(n) is the number of partitions of n.

The programs for A114169, there is no canonical definition to state claims against.
-/

/-! ## A114169.P2872368479713887800

`record[A135997(A111389(n+3))]`
-/

namespace A114169.P2872368479713887800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A111389 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114169.P2872368479713887800

/-! ## A114169.P10267200106811289319

`eq[2, A278241(A008591(n))]`
-/

namespace A114169.P10267200106811289319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (A008591 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114169.P10267200106811289319

/-!
# A114170: Numbers n such that p(10n) is prime, where p(n) is the number of partitions of n.

The programs for A114170, there is no canonical definition to state claims against.
-/

/-! ## A114170.P81352666377814936

`record[A273943(A114166(n+2))]`
-/

namespace A114170.P81352666377814936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A114166 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114170.P81352666377814936

/-!
# A114172: Triangle, read by rows, where the g.f. of column n, C_n(x), equals the g.f. of row n, R_n(x), divided by (1-x)^(n+1), for n>=0; e.g., C_n(x) = R_n(x)/(1-x)^(n+1).

The programs for A114172, there is no canonical definition to state claims against.
-/

/-! ## A114172.P8306277628331521404

`A271942(n+2)-A230049(A102480(n))`
-/

namespace A114172.P8306277628331521404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271942 (n + 2) - A230049 (A102480 n).toNat

end

end A114172.P8306277628331521404

/-! ## A114172.P7996231789342903763

`A048766(A081581(n)*A132813(n))`
-/

namespace A114172.P7996231789342903763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A081581 n * A132813 n).toNat

end

end A114172.P7996231789342903763

/-! ## A114172.P17177134119329083399

`A051250(A175105(n+1))+A048720(n)`
-/

namespace A114172.P17177134119329083399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051250 (A175105 (n + 1)).toNat + A048720 n

end

end A114172.P17177134119329083399

/-! ## A114172.P18257665984869723231

`A082858(A219816(n+1))+A008288(n)`
-/

namespace A114172.P18257665984869723231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082858 (A219816 (n + 1)).toNat + A008288 n

end

end A114172.P18257665984869723231

/-! ## A114172.P9343560415904126262

`A302997(n)+A046660(A066119(n+1))`
-/

namespace A114172.P9343560415904126262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 n + A046660 (A066119 (n + 1)).toNat

end

end A114172.P9343560415904126262

/-!
# A114173: Row sums of triangle A114172, where the g.f. of column n equals the g.f. of row n divided by (1-x)^(n+1).

The programs for A114173, there is no canonical definition to state claims against.
-/

/-! ## A114173.P10457004213486606558

`or(A166301(A001770(n+1)), A329674(n))`
-/

namespace A114173.P10457004213486606558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A166301 (A001770 (n + 1)).toNat) (A329674 n)

end

end A114173.P10457004213486606558

/-! ## A114173.P3503104126789973100

`A329674(n)+A016419(A016432(n))`
-/

namespace A114173.P3503104126789973100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329674 n + A016419 (A016432 n).toNat

end

end A114173.P3503104126789973100

/-! ## A114173.P1944908505664357218

`A028310(A329674(n)+A011817(n))`
-/

namespace A114173.P1944908505664357218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A329674 n + A011817 n).toNat

end

end A114173.P1944908505664357218

/-! ## A114173.P7601524489085310382

`A329674(n)+A037913(A037924(n))`
-/

namespace A114173.P7601524489085310382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329674 n + A037913 (A037924 n).toNat

end

end A114173.P7601524489085310382

/-! ## A114173.P13367640858682922741

`A329674(n)+A037913(A037929(n))`
-/

namespace A114173.P13367640858682922741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329674 n + A037913 (A037929 n).toNat

end

end A114173.P13367640858682922741

/-!
# A114174: Central terms of triangle A114172 found in even-indexed rows.

The programs for A114174, there is no canonical definition to state claims against.
-/

/-! ## A114174.P18182102799457466733

`A114172(∑[4*n])`
-/

namespace A114174.P18182102799457466733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114172 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114174.P18182102799457466733

/-! ## A114174.P9922034116689694400

`record[(1-abs(round(sqrt(2*(n+1)))²-(2*n+1)))*A114172(n)]`
-/

namespace A114174.P9922034116689694400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)|) * A114172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114174.P9922034116689694400

/-!
# A114175: Sums of squared terms in rows of triangle A114172.

The programs for A114175, there is no canonical definition to state claims against.
-/

/-! ## A114175.P11908894247926813262

`A002372(A135750(n))+A000172(n)`
-/

namespace A114175.P11908894247926813262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (A135750 n).toNat + A000172 n

end

end A114175.P11908894247926813262

/-!
# A114176: Triangle, read by rows, where the g.f. of column n, C_n(x), equals the g.f. of row n, R_n(x), divided by (1-x)^(n+1)*(1-x^2)^n, for n>=0; e.g., C_n(x) = R_n(x)/(1-x)^(n+1)/(1-x^2)^n.

The programs for A114176, there is no canonical definition to state claims against.
-/

/-! ## A114176.P8183256224750576056

`A086629(n)+A000523(A059328(n))`
-/

namespace A114176.P8183256224750576056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086629 n + A000523 (A059328 n).toNat

end

end A114176.P8183256224750576056

/-! ## A114176.P14443058171888453649

`A072088(A086629(n))+A014473(n)`
-/

namespace A114176.P14443058171888453649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A086629 n).toNat + A014473 n

end

end A114176.P14443058171888453649

/-! ## A114176.P11226580895168969509

`A086629(n)+A034463(A156184(n))`
-/

namespace A114176.P11226580895168969509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086629 n + A034463 (A156184 n).toNat

end

end A114176.P11226580895168969509

/-! ## A114176.P12833594299378743329

`A362242(n)+A173636(A174545(n))`
-/

namespace A114176.P12833594299378743329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362242 n + A173636 (A174545 n).toNat

end

end A114176.P12833594299378743329

/-! ## A114176.P7346525099540104413

`A176331(n)-A129533(A156184(n))`
-/

namespace A114176.P7346525099540104413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176331 n - A129533 (A156184 n).toNat

end

end A114176.P7346525099540104413

/-!
# A114177: Row sums of triangle A114176, where the g.f. of column n equals the g.f. of row n divided by (1-x)^(n+1)*(1-x^2)^n.

The programs for A114177, there is no canonical definition to state claims against.
-/

/-! ## A114177.P15231140689068169108

`A110655(floor(sqrt(A001557(n))))`
-/

namespace A114177.P15231140689068169108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (Int.sqrt (A001557 n)).toNat

end

end A114177.P15231140689068169108

/-! ## A114177.P5693548670941451803

`A110655(round(sqrt(A001557(n))))`
-/

namespace A114177.P5693548670941451803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (SequenceMachineLib.roundAway (Real.sqrt (A001557 n : ℝ))).toNat

end

end A114177.P5693548670941451803

/-! ## A114177.P3245798773383593146

`A008612(A005169(2*(n+2))+6-A005169(n))`
-/

namespace A114177.P3245798773383593146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A005169 (2 * (n + 2)) + 6 - A005169 n).toNat

end

end A114177.P3245798773383593146

/-!
# A114178: Central terms of triangle A114176 found in even-indexed rows.

The programs for A114178, there is no canonical definition to state claims against.
-/

/-! ## A114178.P16030903592882995485

`A114176(∑[4*n])`
-/

namespace A114178.P16030903592882995485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114176 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114178.P16030903592882995485

/-! ## A114178.P272221165870527406

`record[A114176((n+1)*(ceil(n/2)+1))]`
-/

namespace A114178.P272221165870527406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114176 ((n + 1 : ℤ) * (⌈(n : ℚ) / 2⌉ + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114178.P272221165870527406

/-!
# A114179: Sums of squared terms in rows of triangle A114176.

The programs for A114179, there is no canonical definition to state claims against.
-/

/-! ## A114179.P15534769515233484432

`A259178(n²*n!+1)`
-/

namespace A114179.P15534769515233484432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259178 (n ^ 2 * Nat.factorial n + 1)

end

end A114179.P15534769515233484432

/-!
# A114180: Numbers n with mu(n) = mu(n+1) = mu(n+2).

The programs for A114180, the canonical program `A114180.P93888911312312144` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114180 has offset 1).

The definition of A114180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1868 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114180.P6163127489645925792

`∩[A064148(n+2)-1, A064148(n+2)]`
-/

namespace A114180.P6163127489645925792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064148 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064148 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114180.P6163127489645925792

namespace A114180

/-- `∩[A064148(n+2)-1, A064148(n+2)]` -/
def P6163127489645925792.Spec : Prop :=
  ∀ n, (P6163127489645925792.a n : ℤ) = A114180 (n + 1)

end A114180

/-! ## A114180.P93888911312312144

`A064148(eq[1, A064148(n+2)-A064148(n+1)]+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A114180

/-- `A064148(eq[1, A064148(n+2)-A064148(n+1)]+1)` -/
def P93888911312312144.Spec : Prop :=
  ∀ n, P93888911312312144.a n = A114180 (n + 1)

theorem P93888911312312144.correct : P93888911312312144.Spec := by
  intro n
  simp only [A114180, Nat.add_sub_cancel]

end A114180

/-! ## A114180.P16234703454557304367

`A064148(eq[1, A064148(n+2)%A064148(n+1)]+1)`
-/

namespace A114180.P16234703454557304367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064148 (n + 2)) (A064148 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A114180.P16234703454557304367

namespace A114180

/-- `A064148(eq[1, A064148(n+2)%A064148(n+1)]+1)` -/
def P16234703454557304367.Spec : Prop :=
  ∀ n, P16234703454557304367.a n = A114180 (n + 1)

end A114180

/-! ## A114180.P14325093219141194979

`∩[A064148(n+1), A074820(n+1)]`
-/

namespace A114180.P14325093219141194979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A114180.P14325093219141194979

namespace A114180

/-- `∩[A064148(n+1), A074820(n+1)]` -/
def P14325093219141194979.Spec : Prop :=
  ∀ n, (P14325093219141194979.a n : ℤ) = A114180 (n + 1)

end A114180

/-! ## A114180.P12294484313617295904

`eq[0, A261890(n+1)]+1`
-/

namespace A114180.P12294484313617295904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261890 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114180.P12294484313617295904

namespace A114180

/-- `eq[0, A261890(n+1)]+1` -/
def P12294484313617295904.Spec : Prop :=
  ∀ n, (P12294484313617295904.a n : ℤ) = A114180 (n + 1)

end A114180

/-! ## A114180.P13063823620005390845

`eq[0, A261890(A028310(n))]`
-/

namespace A114180.P13063823620005390845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261890 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114180.P13063823620005390845

namespace A114180

/-- `eq[0, A261890(A028310(n))]` -/
def P13063823620005390845.Spec : Prop :=
  ∀ n, (P13063823620005390845.a n : ℤ) = A114180 (n + 1)

end A114180

/-! ## A114180.P15989448607417632619

`eq[0, A261890(A060000(n+1))]`
-/

namespace A114180.P15989448607417632619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261890 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A114180.P15989448607417632619

namespace A114180

/-- `eq[0, A261890(A060000(n+1))]` -/
def P15989448607417632619.Spec : Prop :=
  ∀ n, (P15989448607417632619.a n : ℤ) = A114180 (n + 1)

end A114180

/-!
# A114182: F(4n) - 2n - 1 where F(n) = Fibonacci numbers. Also, the floor of the log base phi of sequence A090162 (phi = (1+Sqrt(5))/2).

The programs for A114182, the canonical program `A114182.P9383269884853280789` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114182 has offset 1).

The definition of A114182 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(4*(n+1))-2*(n+1)-1` (program `A114182.P9383269884853280789`, by `A114182.P9383269884853280789.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114182.P9383269884853280789

`A000045(4*(n+1))-2*(n+1)-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A114182

/-- `A000045(4*(n+1))-2*(n+1)-1` -/
def P9383269884853280789.Spec : Prop :=
  ∀ n, P9383269884853280789.a n = A114182 (n + 1)

theorem P9383269884853280789.correct : P9383269884853280789.Spec := by
  intro n
  simp only [A114182, Nat.add_sub_cancel]

end A114182

/-! ## A114182.P876590515471238769

`9*a(n-1)-16*a(n-2)+9*a(n-3)-a(n-4)` with `a(0)=0, a(1)=16, a(2)=137, a(3)=978`
-/

namespace A114182.P876590515471238769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 16, 137, 978] fun n a =>
  9 * a (n - 1) - 16 * a (n - 2) + 9 * a (n - 3) - a (n - 4)

end

end A114182.P876590515471238769

namespace A114182

/-- `9*a(n-1)-16*a(n-2)+9*a(n-3)-a(n-4)` -/
def P876590515471238769.Spec : Prop :=
  ∀ n, P876590515471238769.a n = A114182 (n + 1)

end A114182

/-! ## A114182.P5841468084417431133

`∑[floor(ϕ^Δ[n²])²]-1`
-/

namespace A114182.P5841468084417431133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℤ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A114182.P5841468084417431133

namespace A114182

/-- `∑[floor(ϕ^Δ[n²])²]-1` -/
def P5841468084417431133.Spec : Prop :=
  ∀ n, P5841468084417431133.a n = A114182 (n + 1)

end A114182

/-! ## A114182.P4435987053037208247

`A114185(2*(n+1))`
-/

namespace A114182.P4435987053037208247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114185 (2 * (n + 1))

end

end A114182.P4435987053037208247

namespace A114182

/-- `A114185(2*(n+1))` -/
def P4435987053037208247.Spec : Prop :=
  ∀ n, P4435987053037208247.a n = A114182 (n + 1)

end A114182

/-! ## A114182.P14157704989936719413

`A007382(4*n+2)`
-/

namespace A114182.P14157704989936719413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007382 (4 * n + 2)

end

end A114182.P14157704989936719413

namespace A114182

/-- `A007382(4*n+2)` -/
def P14157704989936719413.Spec : Prop :=
  ∀ n, P14157704989936719413.a n = A114182 (n + 1)

end A114182

/-! ## A114182.P7271702347872965158

`∑[Δ[A088305(2*n)]-2]`
-/

namespace A114182.P7271702347872965158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114182.P7271702347872965158

namespace A114182

/-- `∑[Δ[A088305(2*n)]-2]` -/
def P7271702347872965158.Spec : Prop :=
  ∀ n, P7271702347872965158.a n = A114182 (n + 1)

end A114182

/-! ## A114182.P13763901510067902054

`abs(1-∑[A000032(4*n+2)-2])`
-/

namespace A114182.P13763901510067902054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (4 * n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A114182.P13763901510067902054

namespace A114182

/-- `abs(1-∑[A000032(4*n+2)-2])` -/
def P13763901510067902054.Spec : Prop :=
  ∀ n, P13763901510067902054.a n = A114182 (n + 1)

end A114182

/-! ## A114182.P6950371084153974250

`floor(a(n-1)+A000032(2*n+1)²)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A114182.P6950371084153974250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000032 (2 * n + 1) ^ 2

end

end A114182.P6950371084153974250

namespace A114182

/-- `floor(a(n-1)+A000032(2*n+1)²)` -/
def P6950371084153974250.Spec : Prop :=
  ∀ n, P6950371084153974250.a n = A114182 (n + 1)

end A114182

/-! ## A114182.P10723733410897993744

`∑[(A000032(2*n)-A288219(2*n))²]`
-/

namespace A114182.P10723733410897993744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n) - A288219 (2 * n)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114182.P10723733410897993744

namespace A114182

/-- `∑[(A000032(2*n)-A288219(2*n))²]` -/
def P10723733410897993744.Spec : Prop :=
  ∀ n, P10723733410897993744.a n = A114182 (n + 1)

end A114182

/-! ## A114182.P880519689062330990

`Δ[A000045(Δ[n²])²-(n+1)²]`
-/

namespace A114182.P880519689062330990
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat ^ 2 - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114182.P880519689062330990

namespace A114182

/-- `Δ[A000045(Δ[n²])²-(n+1)²]` -/
def P880519689062330990.Spec : Prop :=
  ∀ n, P880519689062330990.a n = A114182 (n + 1)

end A114182

/-!
# A114184: Binomial coefficient binomial(F(n+1)*F(n),F(n)*F(n-1)-1), where F(n) = Fibonacci number. A090162 is the bisection (shifted by 1) of this sequence.

The programs for A114184, there is no canonical definition to state claims against.
-/

/-! ## A114184.P1852506273652911551

`C(A006498(2*n+1), A006498(2*n)+1)`
-/

namespace A114184.P1852506273652911551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006498 (2 * n + 1)).toNat (A006498 (2 * n) + 1).toNat

end

end A114184.P1852506273652911551

/-!
# A114185: a(n) = Fibonacci(2*n) - n - 1.

The programs for A114185, the canonical program `A114185.P7225659881911032437` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114185 has offset 2).

The definition of A114185 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(2*(n+2))-(n+2)-1` (program `A114185.P7225659881911032437`, by `A114185.P7225659881911032437.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114185.P7225659881911032437

`A000045(2*(n+2))-(n+2)-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A114185

/-- `A000045(2*(n+2))-(n+2)-1` -/
def P7225659881911032437.Spec : Prop :=
  ∀ n, P7225659881911032437.a n = A114185 (n + 2)

theorem P7225659881911032437.correct : P7225659881911032437.Spec := by
  intro n
  simp only [A114185, Nat.add_sub_cancel]

end A114185

/-! ## A114185.P15322755380751987208

`∑[floor(ϕ²*a(n-1))+2]` with `a(0)=0, a(1)=4`
-/

namespace A114185.P15322755380751987208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋ + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114185.P15322755380751987208

namespace A114185

/-- `∑[floor(ϕ²*a(n-1))+2]` -/
def P15322755380751987208.Spec : Prop :=
  ∀ n, P15322755380751987208.a n = A114185 (n + 2)

end A114185

/-! ## A114185.P15257610997869669645

`∑[ceil(ϕ²*a(n-1))+1]` with `a(0)=0, a(1)=4`
-/

namespace A114185.P15257610997869669645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  ⌈Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114185.P15257610997869669645

namespace A114185

/-- `∑[ceil(ϕ²*a(n-1))+1]` -/
def P15257610997869669645.Spec : Prop :=
  ∀ n, P15257610997869669645.a n = A114185 (n + 2)

end A114185

/-! ## A114185.P889507057177572416

`∑[∑[ceil(ϕ²*a(n-1))]]` with `a(0)=0, a(1)=4, a(2)=8`
-/

namespace A114185.P889507057177572416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 8] fun n f2 =>
  ⌈Real.goldenRatio ^ 2 * (f2 (n - 1) : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114185.P889507057177572416

namespace A114185

/-- `∑[∑[ceil(ϕ²*a(n-1))]]` -/
def P889507057177572416.Spec : Prop :=
  ∀ n, P889507057177572416.a n = A114185 (n + 2)

end A114185

/-! ## A114185.P17723895249211891514

`∑[1-floor(a(n-1)/(ϕ-2))]` with `a(0)=0, a(1)=4`
-/

namespace A114185.P17723895249211891514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  1 - ⌊(f1 (n - 1) : ℝ) / (Real.goldenRatio - 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114185.P17723895249211891514

namespace A114185

/-- `∑[1-floor(a(n-1)/(ϕ-2))]` -/
def P17723895249211891514.Spec : Prop :=
  ∀ n, P17723895249211891514.a n = A114185 (n + 2)

end A114185

/-! ## A114185.P9908817145441579531

`∑[∑[round(ϕ*ϕ*a(n-1))]]` with `a(0)=0, a(1)=4, a(2)=8`
-/

namespace A114185.P9908817145441579531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 8] fun n f2 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (Real.goldenRatio * (f2 (n - 1) : ℝ)))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114185.P9908817145441579531

namespace A114185

/-- `∑[∑[round(ϕ*ϕ*a(n-1))]]` -/
def P9908817145441579531.Spec : Prop :=
  ∀ n, P9908817145441579531.a n = A114185 (n + 2)

end A114185

/-! ## A114185.P7294302815612461038

`∑[floor(ϕ*ϕ*a(n-1))]-(n+2)` with `a(0)=2`
-/

namespace A114185.P7294302815612461038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊Real.goldenRatio * (Real.goldenRatio * (f1 (n - 1) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 2 : ℤ)

end

end A114185.P7294302815612461038

namespace A114185

/-- `∑[floor(ϕ*ϕ*a(n-1))]-(n+2)` -/
def P7294302815612461038.Spec : Prop :=
  ∀ n, P7294302815612461038.a n = A114185 (n + 2)

end A114185

/-! ## A114185.P10564892342634865361

`A054452(n+2)-1`
-/

namespace A114185.P10564892342634865361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054452 (n + 2) - 1

end

end A114185.P10564892342634865361

namespace A114185

/-- `A054452(n+2)-1` -/
def P10564892342634865361.Spec : Prop :=
  ∀ n, P10564892342634865361.a n = A114185 (n + 2)

theorem P10564892342634865361.correct : P10564892342634865361.Spec := by
  intro n
  simp only [A114185, Nat.add_sub_cancel, A114185.P10564892342634865361.a, A114185.P7225659881911032437.a, A000045, A000045.P11838749114346432762.a, A054452, A054452.P9025492193241379960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A114185

/-! ## A114185.P13023567495543231022

`A007382(2*(n+1))`
-/

namespace A114185.P13023567495543231022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007382 (2 * (n + 1))

end

end A114185.P13023567495543231022

namespace A114185

/-- `A007382(2*(n+1))` -/
def P13023567495543231022.Spec : Prop :=
  ∀ n, P13023567495543231022.a n = A114185 (n + 2)

end A114185

/-! ## A114185.P2839545733327665471

`A099571(2*n)-1`
-/

namespace A114185.P2839545733327665471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099571 (2 * n) - 1

end

end A114185.P2839545733327665471

namespace A114185

/-- `A099571(2*n)-1` -/
def P2839545733327665471.Spec : Prop :=
  ∀ n, P2839545733327665471.a n = A114185 (n + 2)

end A114185

/-! ## A114185.P12863028514371650572

`A001924(2*n)+n`
-/

namespace A114185.P12863028514371650572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (2 * n) + (n : ℤ)

end

end A114185.P12863028514371650572

namespace A114185

/-- `A001924(2*n)+n` -/
def P12863028514371650572.Spec : Prop :=
  ∀ n, P12863028514371650572.a n = A114185 (n + 2)

end A114185

/-! ## A114185.P3781517351769211629

`A054451(Δ[n²])-1`
-/

namespace A114185.P3781517351769211629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054451 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A114185.P3781517351769211629

namespace A114185

/-- `A054451(Δ[n²])-1` -/
def P3781517351769211629.Spec : Prop :=
  ∀ n, P3781517351769211629.a n = A114185 (n + 2)

end A114185

/-! ## A114185.P15706275045355656833

`A129696(Δ[n²])-1`
-/

namespace A114185.P15706275045355656833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129696 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A114185.P15706275045355656833

namespace A114185

/-- `A129696(Δ[n²])-1` -/
def P15706275045355656833.Spec : Prop :=
  ∀ n, P15706275045355656833.a n = A114185 (n + 2)

end A114185

/-! ## A114185.P6540542869424564975

`A215004(Δ[n²])-1`
-/

namespace A114185.P6540542869424564975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215004 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A114185.P6540542869424564975

namespace A114185

/-- `A215004(Δ[n²])-1` -/
def P6540542869424564975.Spec : Prop :=
  ∀ n, P6540542869424564975.a n = A114185 (n + 2)

end A114185

/-! ## A114185.P18143773930569822602

`∑[A027941(n+1)]-1`
-/

namespace A114185.P18143773930569822602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A114185.P18143773930569822602

namespace A114185

/-- `∑[A027941(n+1)]-1` -/
def P18143773930569822602.Spec : Prop :=
  ∀ n, P18143773930569822602.a n = A114185 (n + 2)

end A114185

/-! ## A114185.P12477724667123022816

`∑[A048575(n)-1]-1`
-/

namespace A114185.P12477724667123022816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A114185.P12477724667123022816

namespace A114185

/-- `∑[A048575(n)-1]-1` -/
def P12477724667123022816.Spec : Prop :=
  ∀ n, P12477724667123022816.a n = A114185 (n + 2)

end A114185

/-! ## A114185.P15664777123404025300

`∑[A293064(n+3)]-1`
-/

namespace A114185.P15664777123404025300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293064 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A114185.P15664777123404025300

namespace A114185

/-- `∑[A293064(n+3)]-1` -/
def P15664777123404025300.Spec : Prop :=
  ∀ n, P15664777123404025300.a n = A114185 (n + 2)

end A114185

/-! ## A114185.P15991123085340047037

`∑[A054451(2*n)]-1`
-/

namespace A114185.P15991123085340047037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054451 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A114185.P15991123085340047037

namespace A114185

/-- `∑[A054451(2*n)]-1` -/
def P15991123085340047037.Spec : Prop :=
  ∀ n, P15991123085340047037.a n = A114185 (n + 2)

end A114185

/-! ## A114185.P2774662365448550196

`∑[A001911(2*n)]+n`
-/

namespace A114185.P2774662365448550196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A114185.P2774662365448550196

namespace A114185

/-- `∑[A001911(2*n)]+n` -/
def P2774662365448550196.Spec : Prop :=
  ∀ n, P2774662365448550196.a n = A114185 (n + 2)

end A114185

/-! ## A114185.P305299866168869027

`A215006(2*(n+1))-2`
-/

namespace A114185.P305299866168869027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215006 (2 * (n + 1)) - 2

end

end A114185.P305299866168869027

namespace A114185

/-- `A215006(2*(n+1))-2` -/
def P305299866168869027.Spec : Prop :=
  ∀ n, P305299866168869027.a n = A114185 (n + 2)

end A114185

/-!
# A114186: Running sums of consecutive integers with all primes set to 2.

The programs for A114186, there is no canonical definition to state claims against.
-/

/-! ## A114186.P7701995763163635845

`∑[(n-2)*char[1-∑{p}[n+1, C(#, n)]+n]+2]`
-/

namespace A114186.P7701995763163635845
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f3 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114186.P7701995763163635845

/-! ## A114186.P5604315172461380597

`∑[lcm(n, A113638(n))%(n+1)]`
-/

namespace A114186.P5604315172461380597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A113638 n) % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114186.P5604315172461380597

/-! ## A114186.P6365703803412664111

`∑[(n-2)*(1-A105700(n))²+2]`
-/

namespace A114186.P6365703803412664111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * (1 - A105700 n) ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114186.P6365703803412664111

/-! ## A114186.P18231265440275399001

`∑[A105700(2*n)]+∑[n%∏{d}[n, #]]`
-/

namespace A114186.P18231265440275399001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (∏ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A114186.P18231265440275399001

/-! ## A114186.P3701138953089661057

`∑[abs((n+2)*char[A000040(n+1)]-n)]`
-/

namespace A114186.P3701138953089661057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((n + 2) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114186.P3701138953089661057

/-! ## A114186.P12961615634397451390

`A101203(n)+2*A230980(n)`
-/

namespace A114186.P12961615634397451390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 n + 2 * A230980 n

end

end A114186.P12961615634397451390

/-! ## A114186.P6158762409022292936

`∑[n+2-A051698(A055672(n))]`
-/

namespace A114186.P6158762409022292936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A051698 (A055672 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114186.P6158762409022292936

/-! ## A114186.P17055187248995203533

`∑[lcm(A131516(n), A175077(n+2))]`
-/

namespace A114186.P17055187248995203533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131516 n) (A175077 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114186.P17055187248995203533

/-! ## A114186.P5919780227586710726

`A101203(n)+2*(A095117(n)-n)`
-/

namespace A114186.P5919780227586710726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 n + 2 * (A095117 n - (n : ℤ))

end

end A114186.P5919780227586710726

/-! ## A114186.P7776164544268318798

`∑[n+1-A000010(gcd(n, A051699(n)))]`
-/

namespace A114186.P7776164544268318798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000010 (Int.gcd (n : ℤ) (A051699 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114186.P7776164544268318798

/-!
# A114188: Riordan array (1/(1-x),x(1+x)/(1-x)^2).

The programs for A114188, the canonical program `A114188.P14138524339730718454` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114188 has offset 0).

The definition of A114188 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114188.P14138524339730718454

`2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)+T(n-2,k-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114188

/-- `2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)+T(n-2,k-1)` -/
def P14138524339730718454.Spec : Prop :=
  ∀ n, P14138524339730718454.a n = A114188 n

theorem P14138524339730718454.correct : P14138524339730718454.Spec := by
  intro n
  simp only [A114188]

end A114188

/-! ## A114188.P18188249496128137245

`abs(A110511(n))`
-/

namespace A114188.P18188249496128137245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110511 n|

end

end A114188.P18188249496128137245

namespace A114188

/-- `abs(A110511(n))` -/
def P18188249496128137245.Spec : Prop :=
  ∀ n, P18188249496128137245.a n = A114188 n

end A114188

/-! ## A114188.P3834786030982465889

`A097807(n)*A110511(n)`
-/

namespace A114188.P3834786030982465889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A110511 n

end

end A114188.P3834786030982465889

namespace A114188

/-- `A097807(n)*A110511(n)` -/
def P3834786030982465889.Spec : Prop :=
  ∀ n, P3834786030982465889.a n = A114188 n

end A114188

/-! ## A114188.P11895446373921003996

`gcd(A000038(n), A110511(n))`
-/

namespace A114188.P11895446373921003996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A110511 n)

end

end A114188.P11895446373921003996

namespace A114188

/-- `gcd(A000038(n), A110511(n))` -/
def P11895446373921003996.Spec : Prop :=
  ∀ n, (P11895446373921003996.a n : ℤ) = A114188 n

end A114188

/-! ## A114188.P4233810329369829114

`lcm(A020985(n), A110511(n))`
-/

namespace A114188.P4233810329369829114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A110511 n)

end

end A114188.P4233810329369829114

namespace A114188

/-- `lcm(A020985(n), A110511(n))` -/
def P4233810329369829114.Spec : Prop :=
  ∀ n, (P4233810329369829114.a n : ℤ) = A114188 n

end A114188

/-! ## A114188.P11760500321619931559

`A208660(n+1)/A238303(n)`
-/

namespace A114188.P11760500321619931559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208660 (n + 1) : ℚ) / (A238303 n : ℚ)

end

end A114188.P11760500321619931559

namespace A114188

/-- `A208660(n+1)/A238303(n)` -/
def P11760500321619931559.Spec : Prop :=
  ∀ n, P11760500321619931559.a n = (A114188 n : ℚ)

end A114188

/-! ## A114188.P7407721121630359077

`gcd(A010816(n)-A110511(n), A010816(n))`
-/

namespace A114188.P7407721121630359077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n - A110511 n) (A010816 n)

end

end A114188.P7407721121630359077

namespace A114188

/-- `gcd(A010816(n)-A110511(n), A010816(n))` -/
def P7407721121630359077.Spec : Prop :=
  ∀ n, (P7407721121630359077.a n : ℤ) = A114188 n

end A114188

/-! ## A114188.P7894042579695560850

`A209414(A038722(n+1))`
-/

namespace A114188.P7894042579695560850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209414 (A038722 (n + 1)).toNat

end

end A114188.P7894042579695560850

namespace A114188

/-- `A209414(A038722(n+1))` -/
def P7894042579695560850.Spec : Prop :=
  ∀ n, P7894042579695560850.a n = A114188 n

end A114188

/-! ## A114188.P5398966726181781330

`A110506(n)*A110511(n)/A114189(n)`
-/

namespace A114188.P5398966726181781330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110506 n * A110511 n : ℚ) / (A114189 n : ℚ)

end

end A114188.P5398966726181781330

namespace A114188

/-- `A110506(n)*A110511(n)/A114189(n)` -/
def P5398966726181781330.Spec : Prop :=
  ∀ n, P5398966726181781330.a n = (A114188 n : ℚ)

end A114188

/-! ## A114188.P6228902121715098774

`A247645(A133280(n))`
-/

namespace A114188.P6228902121715098774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247645 (A133280 n).toNat

end

end A114188.P6228902121715098774

namespace A114188

/-- `A247645(A133280(n))` -/
def P6228902121715098774.Spec : Prop :=
  ∀ n, P6228902121715098774.a n = A114188 n

end A114188

/-! ## A114188.P11099882496210569061

`A247645(eq[1, A071028(n)])`
-/

namespace A114188.P11099882496210569061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247645 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A114188.P11099882496210569061

namespace A114188

/-- `A247645(eq[1, A071028(n)])` -/
def P11099882496210569061.Spec : Prop :=
  ∀ n, P11099882496210569061.a n = A114188 n

end A114188

/-! ## A114188.P9757872314752617764

`A247645(A005843(n)+2-A003057(n+2))`
-/

namespace A114188.P9757872314752617764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247645 (A005843 n + (2 - A003057 (n + 2))).toNat

end

end A114188.P9757872314752617764

namespace A114188

/-- `A247645(A005843(n)+2-A003057(n+2))` -/
def P9757872314752617764.Spec : Prop :=
  ∀ n, P9757872314752617764.a n = A114188 n

end A114188

/-!
# A114189: Riordan array (1/(1+xc(-2x)), xc(-2x)/(1+xc(-2x))), c(x) the g.f. of A000108.

The programs for A114189, there is no canonical definition to state claims against.
-/

/-! ## A114189.P9302491824423782584

`(and(2, comp[∑[n]]+n)-1)*A110506(n)`
-/

namespace A114189.P9302491824423782584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A110506 n

end

end A114189.P9302491824423782584

/-! ## A114189.P12749080615949189044

`A097807(n)*A110506(n)`
-/

namespace A114189.P12749080615949189044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A110506 n

end

end A114189.P12749080615949189044

/-! ## A114189.P14169243690959173645

`A110506(A028310(n))/A097807(n)`
-/

namespace A114189.P14169243690959173645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110506 (A028310 n).toNat : ℚ) / (A097807 n : ℚ)

end

end A114189.P14169243690959173645

/-! ## A114189.P18247261097452826884

`A110506(n)*A110511(n)/A114188(n)`
-/

namespace A114189.P18247261097452826884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110506 n * A110511 n : ℚ) / (A114188 n : ℚ)

end

end A114189.P18247261097452826884

/-! ## A114189.P3394648240238592475

`A008836(A130321(n))*A110506(n)`
-/

namespace A114189.P3394648240238592475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A130321 n).toNat * A110506 n

end

end A114189.P3394648240238592475

/-! ## A114189.P7906948394710714604

`A020985(A130330(n))*A110506(n)`
-/

namespace A114189.P7906948394710714604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A130330 n).toNat * A110506 n

end

end A114189.P7906948394710714604

/-!
# A114190: Expansion of 1/(1+x*(1-x)*c(-2*x)), c(x) the g.f. of A000108.

The programs for A114190, there is no canonical definition to state claims against.
-/

/-! ## A114190.P10623588781078309239

`A033999(n)*A110508(n)`
-/

namespace A114190.P10623588781078309239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A110508 n

end

end A114190.P10623588781078309239

/-! ## A114190.P10678095097573333020

`A110508(n)*A110511(∑[n])`
-/

namespace A114190.P10678095097573333020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110508 n * A110511 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114190.P10678095097573333020

/-! ## A114190.P14459536193378111099

`(2-Δ[A042948(n)])*A110508(n)`
-/

namespace A114190.P14459536193378111099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (f1 (n + 1) - f1 n)) * A110508 n

end

end A114190.P14459536193378111099

/-! ## A114190.P8847839279799211376

`A110508(n)*A164677(2*n+1)`
-/

namespace A114190.P8847839279799211376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110508 n * A164677 (2 * n + 1)

end

end A114190.P8847839279799211376

/-! ## A114190.P3721848746598907277

`A020985(Δ[A042948(n)])*A110508(n)`
-/

namespace A114190.P3721848746598907277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (f1 (n + 1) - f1 n).toNat * A110508 n

end

end A114190.P3721848746598907277

/-! ## A114190.P7990843397791068807

`gcd(A000038(n), A110508(n))/A033999(n)`
-/

namespace A114190.P7990843397791068807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A110508 n) : ℚ) / (A033999 n : ℚ)

end

end A114190.P7990843397791068807

/-! ## A114190.P8567253944981592028

`lcm(A020985(n), A110508(n))/A033999(n)`
-/

namespace A114190.P8567253944981592028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A020985 n) (A110508 n) : ℚ) / (A033999 n : ℚ)

end

end A114190.P8567253944981592028

/-!
# A114191: Expansion of 1/(1+x*c(-2*x)), c(x) the g.f. of A000108.

The programs for A114191, the canonical program `A114191.P10721137948637682050` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114191 has offset 0).

The definition of A114191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114191.P10721137948637682050

`(-1)^n*A064062(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A114191

/-- `(-1)^n*A064062(n)` -/
def P10721137948637682050.Spec : Prop :=
  ∀ n, P10721137948637682050.a n = A114191 n

theorem P10721137948637682050.correct : P10721137948637682050.Spec := by
  intro n
  simp only [A114191]

end A114191

/-! ## A114191.P14717806031776239783

`∑[A002420(n)*A123344(n)]`
-/

namespace A114191.P14717806031776239783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 n * A123344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114191.P14717806031776239783

namespace A114191

/-- `∑[A002420(n)*A123344(n)]` -/
def P14717806031776239783.Spec : Prop :=
  ∀ n, P14717806031776239783.a n = A114191 n

end A114191

/-! ## A114191.P1743320659060861974

`∑[A120588(n)*A122803(n)]`
-/

namespace A114191.P1743320659060861974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n * A122803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114191.P1743320659060861974

namespace A114191

/-- `∑[A120588(n)*A122803(n)]` -/
def P1743320659060861974.Spec : Prop :=
  ∀ n, P1743320659060861974.a n = A114191 n

end A114191

/-! ## A114191.P18025009098378407115

`A064062(n)/A033999(n+2)`
-/

namespace A114191.P18025009098378407115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064062 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A114191.P18025009098378407115

namespace A114191

/-- `A064062(n)/A033999(n+2)` -/
def P18025009098378407115.Spec : Prop :=
  ∀ n, P18025009098378407115.a n = (A114191 n : ℚ)

end A114191

/-! ## A114191.P17631843839319348254

`xor(A033999(n), A064062(n))+1`
-/

namespace A114191.P17631843839319348254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 n) (A064062 n) + 1

end

end A114191.P17631843839319348254

namespace A114191

/-- `xor(A033999(n), A064062(n))+1` -/
def P17631843839319348254.Spec : Prop :=
  ∀ n, P17631843839319348254.a n = A114191 n

end A114191

/-! ## A114191.P4159694179710264591

`∑[A120588(n)*A123344(n+1)]`
-/

namespace A114191.P4159694179710264591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n * A123344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114191.P4159694179710264591

namespace A114191

/-- `∑[A120588(n)*A123344(n+1)]` -/
def P4159694179710264591.Spec : Prop :=
  ∀ n, P4159694179710264591.a n = A114191 n

end A114191

/-! ## A114191.P9468768385864446828

`A033999(n)*A115193(A000124(n))`
-/

namespace A114191.P9468768385864446828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A115193 (A000124 n).toNat

end

end A114191.P9468768385864446828

namespace A114191

/-- `A033999(n)*A115193(A000124(n))` -/
def P9468768385864446828.Spec : Prop :=
  ∀ n, P9468768385864446828.a n = A114191 n

end A114191

/-! ## A114191.P2437790404257801766

`A064062(n)*A091337(A088442(n))`
-/

namespace A114191.P2437790404257801766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064062 n * A091337 (A088442 n).toNat

end

end A114191.P2437790404257801766

namespace A114191

/-- `A064062(n)*A091337(A088442(n))` -/
def P2437790404257801766.Spec : Prop :=
  ∀ n, P2437790404257801766.a n = A114191 n

end A114191

/-! ## A114191.P6588665316211817305

`A114189(∑[n])`
-/

namespace A114191.P6588665316211817305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114189 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114191.P6588665316211817305

namespace A114191

/-- `A114189(∑[n])` -/
def P6588665316211817305.Spec : Prop :=
  ∀ n, P6588665316211817305.a n = A114191 n

end A114191

/-! ## A114191.P12717407566335965234

`∑[A122440(∑[n])]`
-/

namespace A114191.P12717407566335965234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122440 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114191.P12717407566335965234

namespace A114191

/-- `∑[A122440(∑[n])]` -/
def P12717407566335965234.Spec : Prop :=
  ∀ n, P12717407566335965234.a n = A114191 n

end A114191

/-! ## A114191.P15096911099648108817

`2-∑[A100225(2*n)]`
-/

namespace A114191.P15096911099648108817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100225 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114191.P15096911099648108817

namespace A114191

/-- `2-∑[A100225(2*n)]` -/
def P15096911099648108817.Spec : Prop :=
  ∀ n, P15096911099648108817.a n = A114191 n

end A114191

/-!
# A114192: Riordan array (1/(1-2x),x/(1-2x)^2).

The programs for A114192, the canonical program `A114192.P199446814167127231` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114192 has offset 0).

The definition of A114192 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114192.P199446814167127231

`4*T(n-1,k)+T(n-1,k-1)-4*T(n-2,k)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114192

/-- `4*T(n-1,k)+T(n-1,k-1)-4*T(n-2,k)` -/
def P199446814167127231.Spec : Prop :=
  ∀ n, P199446814167127231.a n = A114192 n

theorem P199446814167127231.correct : P199446814167127231.Spec := by
  intro n
  simp only [A114192]

end A114192

/-! ## A114192.P8314646826175165754

`2^(row(n)-col(n))*C(row(n)+col(n), 2*col(n))`
-/

namespace A114192.P8314646826175165754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (Nat.choose (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) (2 * SequenceMachineLib.triCol n) : ℚ)

end

end A114192.P8314646826175165754

namespace A114192

/-- `2^(row(n)-col(n))*C(row(n)+col(n), 2*col(n))` -/
def P8314646826175165754.Spec : Prop :=
  ∀ n, P8314646826175165754.a n = (A114192 n : ℚ)

end A114192

/-! ## A114192.P8272397878299096135

`A085478(n)*A130321(n)`
-/

namespace A114192.P8272397878299096135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n * A130321 n

end

end A114192.P8272397878299096135

namespace A114192

/-- `A085478(n)*A130321(n)` -/
def P8272397878299096135.Spec : Prop :=
  ∀ n, P8272397878299096135.a n = A114192 n

end A114192

/-! ## A114192.P9220527650443421350

`abs(A123970(n)*A130321(n))`
-/

namespace A114192.P9220527650443421350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123970 n * A130321 n|

end

end A114192.P9220527650443421350

namespace A114192

/-- `abs(A123970(n)*A130321(n))` -/
def P9220527650443421350.Spec : Prop :=
  ∀ n, P9220527650443421350.a n = A114192 n

end A114192

/-! ## A114192.P12559926735438410956

`abs(A129818(n)*A130321(n))`
-/

namespace A114192.P12559926735438410956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A129818 n * A130321 n|

end

end A114192.P12559926735438410956

namespace A114192

/-- `abs(A129818(n)*A130321(n))` -/
def P12559926735438410956.Spec : Prop :=
  ∀ n, P12559926735438410956.a n = A114192 n

end A114192

/-! ## A114192.P16031060063296362196

`sqrt(A262616(n))*A085478(n)`
-/

namespace A114192.P16031060063296362196
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A085478 n : ℝ)

end

end A114192.P16031060063296362196

namespace A114192

/-- `sqrt(A262616(n))*A085478(n)` -/
def P16031060063296362196.Spec : Prop :=
  ∀ n, P16031060063296362196.a n = (A114192 n : ℝ)

end A114192

/-! ## A114192.P1451487433420847294

`2^A025581(n)*A085478(n)`
-/

namespace A114192.P1451487433420847294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025581 n : ℤ) * (A085478 n : ℚ)

end

end A114192.P1451487433420847294

namespace A114192

/-- `2^A025581(n)*A085478(n)` -/
def P1451487433420847294.Spec : Prop :=
  ∀ n, P1451487433420847294.a n = (A114192 n : ℚ)

end A114192

/-! ## A114192.P15906809728589382553

`A000079(A025581(n))*A085478(n)`
-/

namespace A114192.P15906809728589382553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A085478 n

end

end A114192.P15906809728589382553

namespace A114192

/-- `A000079(A025581(n))*A085478(n)` -/
def P15906809728589382553.Spec : Prop :=
  ∀ n, P15906809728589382553.a n = A114192 n

end A114192

/-! ## A114192.P17085430959381340782

`A011782(A004736(n+1))*A085478(n)`
-/

namespace A114192.P17085430959381340782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A004736 (n + 1)).toNat * A085478 n

end

end A114192.P17085430959381340782

namespace A114192

/-- `A011782(A004736(n+1))*A085478(n)` -/
def P17085430959381340782.Spec : Prop :=
  ∀ n, P17085430959381340782.a n = A114192 n

end A114192

/-! ## A114192.P5394018178749211415

`A011782(A025581(n)+1)*A085478(n)`
-/

namespace A114192.P5394018178749211415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A025581 n + 1).toNat * A085478 n

end

end A114192.P5394018178749211415

namespace A114192

/-- `A011782(A025581(n)+1)*A085478(n)` -/
def P5394018178749211415.Spec : Prop :=
  ∀ n, P5394018178749211415.a n = A114192 n

end A114192

/-! ## A114192.P14692647318985234373

`A054142(A061579(n))*A059268(A061579(n))`
-/

namespace A114192.P14692647318985234373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 (A061579 n).toNat * A059268 (A061579 n).toNat

end

end A114192.P14692647318985234373

namespace A114192

/-- `A054142(A061579(n))*A059268(A061579(n))` -/
def P14692647318985234373.Spec : Prop :=
  ∀ n, P14692647318985234373.a n = A114192 n

end A114192

/-! ## A114192.P11462477525609351244

`A136688(A185868(n+1))`
-/

namespace A114192.P11462477525609351244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136688 (A185868 (n + 1)).toNat

end

end A114192.P11462477525609351244

namespace A114192

/-- `A136688(A185868(n+1))` -/
def P11462477525609351244.Spec : Prop :=
  ∀ n, P11462477525609351244.a n = A114192 n

end A114192

/-! ## A114192.P16144791158275631591

`A329918(A185869(n+1))`
-/

namespace A114192.P16144791158275631591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329918 (A185869 (n + 1)).toNat

end

end A114192.P16144791158275631591

namespace A114192

/-- `A329918(A185869(n+1))` -/
def P16144791158275631591.Spec : Prop :=
  ∀ n, P16144791158275631591.a n = A114192 n

end A114192

/-! ## A114192.P8656303981179639392

`A188440(A214604(n+1))`
-/

namespace A114192.P8656303981179639392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188440 (A214604 (n + 1)).toNat

end

end A114192.P8656303981179639392

namespace A114192

/-- `A188440(A214604(n+1))` -/
def P8656303981179639392.Spec : Prop :=
  ∀ n, P8656303981179639392.a n = A114192 n

end A114192

/-!
# A114193: Riordan array (1/(1+2xc(-2x)),xc(-2x)/(1+2xc(-2x))), c(x) the g.f. of A000108.

The programs for A114193, the canonical program `A114193.P7345926356561851924` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114193 has offset 0).

The definition of A114193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6557 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A114193.P7345926356561851924

`A039599(n)*A122803(A025581(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A114193

/-- `A039599(n)*A122803(A025581(n))` -/
def P7345926356561851924.Spec : Prop :=
  ∀ n, P7345926356561851924.a n = A114193 n

theorem P7345926356561851924.correct : P7345926356561851924.Spec := by
  intro n
  simp only [A114193]

end A114193

/-! ## A114193.P14087919657943606165

`A039599(n)*A123344(A004736(n+1))`
-/

namespace A114193.P14087919657943606165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 n * A123344 (A004736 (n + 1)).toNat

end

end A114193.P14087919657943606165

namespace A114193

/-- `A039599(n)*A123344(A004736(n+1))` -/
def P14087919657943606165.Spec : Prop :=
  ∀ n, P14087919657943606165.a n = A114193 n

end A114193

/-! ## A114193.P16465782357066871538

`A038207(n)/A130595(n)*A039599(n)`
-/

namespace A114193.P16465782357066871538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n : ℚ) / (A130595 n : ℚ) * (A039599 n : ℚ)

end

end A114193.P16465782357066871538

namespace A114193

/-- `A038207(n)/A130595(n)*A039599(n)` -/
def P16465782357066871538.Spec : Prop :=
  ∀ n, P16465782357066871538.a n = (A114193 n : ℚ)

end A114193

/-! ## A114193.P227553178154721179

`A050165(A038722(n+1)-1)*A122803(A025581(n))`
-/

namespace A114193.P227553178154721179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050165 (A038722 (n + 1) - 1).toNat * A122803 (A025581 n).toNat

end

end A114193.P227553178154721179

namespace A114193

/-- `A050165(A038722(n+1)-1)*A122803(A025581(n))` -/
def P227553178154721179.Spec : Prop :=
  ∀ n, P227553178154721179.a n = A114193 n

end A114193

/-! ## A114193.P3216499531249285231

`A113313(A292565(n+1))*A122803(A025581(n))`
-/

namespace A114193.P3216499531249285231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113313 (A292565 (n + 1)).toNat * A122803 (A025581 n).toNat

end

end A114193.P3216499531249285231

namespace A114193

/-- `A113313(A292565(n+1))*A122803(A025581(n))` -/
def P3216499531249285231.Spec : Prop :=
  ∀ n, P3216499531249285231.a n = A114193 n

end A114193

/-!
# A114194: Expansion of 1/(1+x*(2-x)*c(-2*x)), c(x) the g.f. of A000108.

The programs for A114194, there is no canonical definition to state claims against.
-/

/-! ## A114194.P15519144559901620349

`∑[A064311(n+1)+Δ[A064311(n)]]`
-/

namespace A114194.P15519144559901620349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064311 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064311 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114194.P15519144559901620349

/-! ## A114194.P7031541851827924882

`Δ[A122441(n+1)]-∑[A122441(n+2)]`
-/

namespace A114194.P7031541851827924882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122441 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A114194.P7031541851827924882

/-!
# A114195: Riordan array (1/(1-3x),x(1-x)/(1-3x)^2).

The programs for A114195, the canonical program `A114195.P8980031265023728085` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114195 has offset 0).

The definition of A114195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114195.P8980031265023728085

`6*T(n-1,k)+T(n-1,k-1)-9*T(n-2,k)-T(n-2,k-1)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114195

/-- `6*T(n-1,k)+T(n-1,k-1)-9*T(n-2,k)-T(n-2,k-1)` -/
def P8980031265023728085.Spec : Prop :=
  ∀ n, P8980031265023728085.a n = A114195 n

theorem P8980031265023728085.correct : P8980031265023728085.Spec := by
  intro n
  simp only [A114195]

end A114195

/-!
# A114196: Expansion of (1-3x)/(1-6x+8x^2+x^3).

The programs for A114196, the canonical program `A114196.P2528743845593075430` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114196 has offset 0).

The definition of A114196 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x)/(1-6x+8x^2+x^3))` (program `A114196.P2528743845593075430`, by `A114196.P2528743845593075430.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A114196.P2528743845593075430

`ogf((1-3x)/(1-6x+8x^2+x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114196

/-- `ogf((1-3x)/(1-6x+8x^2+x^3))` -/
def P2528743845593075430.Spec : Prop :=
  ∀ n, P2528743845593075430.a n = A114196 n

theorem P2528743845593075430.correct : P2528743845593075430.Spec := by
  intro n
  simp only [A114196]

end A114196

/-! ## A114196.P8500238001505196250

`6*a(n-1)-8*a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=10`
-/

namespace A114196.P8500238001505196250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10] fun n a =>
  6 * a (n - 1) - 8 * a (n - 2) - a (n - 3)

end

end A114196.P8500238001505196250

namespace A114196

/-- `6*a(n-1)-8*a(n-2)-a(n-3)` -/
def P8500238001505196250.Spec : Prop :=
  ∀ n, P8500238001505196250.a n = A114196 n

end A114196

/-! ## A114196.P9474299245721384391

`A081704(n)-A005843(A081704(n)-A026671(n))`
-/

namespace A114196.P9474299245721384391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 n - A005843 (A081704 n - A026671 n).toNat

end

end A114196.P9474299245721384391

namespace A114196

/-- `A081704(n)-A005843(A081704(n)-A026671(n))` -/
def P9474299245721384391.Spec : Prop :=
  ∀ n, P9474299245721384391.a n = A114196 n

end A114196

/-!
# A114197: A Pascal-Fibonacci triangle.

The programs for A114197, there is no canonical definition to state claims against.
-/

/-! ## A114197.P17330393403273532303

`ceil((A350512(n)+A114202(n))/4)`
-/

namespace A114197.P17330393403273532303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A350512 n + A114202 n : ℚ) / 4⌉

end

end A114197.P17330393403273532303

/-! ## A114197.P5995073997976986503

`A065261(A114202(n)+A350512(n)+1)`
-/

namespace A114197.P5995073997976986503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065261 (A114202 n + (A350512 n + 1)).toNat

end

end A114197.P5995073997976986503

/-! ## A114197.P16725646903232009930

`A025480(A350512(n)+A114202(n)+3)`
-/

namespace A114197.P16725646903232009930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A350512 n + A114202 n + 3).toNat

end

end A114197.P16725646903232009930

/-! ## A114197.P6156599441490465973

`A000463((A350512(n)+A114202(n))/2)`
-/

namespace A114197.P6156599441490465973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (SequenceMachineLib.roundAway ((A350512 n + A114202 n : ℚ) / 2)).toNat

end

end A114197.P6156599441490465973

/-! ## A114197.P2589411839507430250

`A008619((A350512(n)+A114202(n))/2)`
-/

namespace A114197.P2589411839507430250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A350512 n + A114202 n : ℚ) / 2)).toNat

end

end A114197.P2589411839507430250

/-! ## A114197.P11748052226014269686

`A052938(A350512(n)+A114202(n))/2`
-/

namespace A114197.P11748052226014269686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052938 (A350512 n + A114202 n).toNat : ℚ) / 2

end

end A114197.P11748052226014269686

/-! ## A114197.P16034590405383943874

`A000027(round((A350512(n)+A114202(n))/4))`
-/

namespace A114197.P16034590405383943874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A350512 n + A114202 n : ℚ) / 4)).toNat

end

end A114197.P16034590405383943874

/-! ## A114197.P14420755627445816954

`A004525((A350512(n)+A114202(n))/2+1)`
-/

namespace A114197.P14420755627445816954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A350512 n + A114202 n : ℚ) / 2 + 1)).toNat

end

end A114197.P14420755627445816954

/-! ## A114197.P12539886933684089242

`A004526((A350512(n)+A114202(n))/2+1)`
-/

namespace A114197.P12539886933684089242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A350512 n + A114202 n : ℚ) / 2 + 1)).toNat

end

end A114197.P12539886933684089242

/-! ## A114197.P13348410021726853455

`floor((A350512(n)+A114202(n))*A000040(n+1)%2/4)+1`
-/

namespace A114197.P13348410021726853455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A350512 n + A114202 n : ℚ) * ((Int.tmod (A000040 (n + 1)) 2 : ℚ) / 4)⌋ + 1

end

end A114197.P13348410021726853455

/-!
# A114198: a(n) = Sum_{k=0..n} binomial(n,k)^2*F(k+1).

The programs for A114198, there is no canonical definition to state claims against.
-/

/-! ## A114198.P18112293389305678995

`(A219673(n)+A219672(n))/2`
-/

namespace A114198.P18112293389305678995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219673 n + A219672 n : ℚ) / 2

end

end A114198.P18112293389305678995

/-! ## A114198.P7879131829423629837

`A114197(∑[4*n])`
-/

namespace A114198.P7879131829423629837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114197 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A114198.P7879131829423629837

/-! ## A114198.P1129271439060220830

`or(char[2], A114197(A046092(n)))`
-/

namespace A114198.P1129271439060220830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A114197 (A046092 n).toNat)

end

end A114198.P1129271439060220830

/-! ## A114198.P9408295508498126254

`record[A114197(n*A008619(n))]`
-/

namespace A114198.P9408295508498126254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114197 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114198.P9408295508498126254

/-! ## A114198.P12754353235447687004

`record[A114197(n)/A286156(n+1)]`
-/

namespace A114198.P12754353235447687004
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114197 n : ℚ) / (A286156 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114198.P12754353235447687004

/-! ## A114198.P17754799605966802950

`record[A114197(lcm(n+1, A004442(n)))]`
-/

namespace A114198.P17754799605966802950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114197 (Int.lcm (n + 1 : ℤ) (A004442 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114198.P17754799605966802950

/-! ## A114198.P14360455981036540055

`A114197(A046092(n))%A189492(n+1)`
-/

namespace A114198.P14360455981036540055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114197 (A046092 n).toNat) (A189492 (n + 1))

end

end A114198.P14360455981036540055

/-!
# A114199: Row sums of a Pascal-Fibonacci triangle.

The programs for A114199, the canonical program `A114199.P14453626032793765424` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A114199 has offset 0).

The definition of A114199 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A114199.P14453626032793765424

`4*a(n-1)-5*a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A114199

/-- `4*a(n-1)-5*a(n-2)+2*a(n-3)+a(n-4)` -/
def P14453626032793765424.Spec : Prop :=
  ∀ n, P14453626032793765424.a n = A114199 n

theorem P14453626032793765424.correct : P14453626032793765424.Spec := by
  intro n
  simp only [A114199]

end A114199

/-! ## A114199.P7347070739754116925

`ogf((1-2x+x^2)/(1-4x+5x^2-2x^3-x^4))`
-/

namespace A114199.P7347070739754116925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -4, 5, -2, -1] n

end

end A114199.P7347070739754116925

namespace A114199

/-- `ogf((1-2x+x^2)/(1-4x+5x^2-2x^3-x^4))` -/
def P7347070739754116925.Spec : Prop :=
  ∀ n, P7347070739754116925.a n = A114199 n

end A114199

/-! ## A114199.P2329109396619541394

`∑[A101891(n)]`
-/

namespace A114199.P2329109396619541394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114199.P2329109396619541394

namespace A114199

/-- `∑[A101891(n)]` -/
def P2329109396619541394.Spec : Prop :=
  ∀ n, P2329109396619541394.a n = A114199 n

end A114199

/-! ## A114199.P5658878541053281941

`∑[∑[A290990(abs(1-n))]]`
-/

namespace A114199.P5658878541053281941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290990 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114199.P5658878541053281941

namespace A114199

/-- `∑[∑[A290990(abs(1-n))]]` -/
def P5658878541053281941.Spec : Prop :=
  ∀ n, P5658878541053281941.a n = A114199 n

end A114199

/-! ## A114199.P9528811677306744729

`A129986(n+1)-2^n`
-/

namespace A114199.P9528811677306744729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129986 (n + 1) - (2 ^ n : ℤ)

end

end A114199.P9528811677306744729

namespace A114199

/-- `A129986(n+1)-2^n` -/
def P9528811677306744729.Spec : Prop :=
  ∀ n, P9528811677306744729.a n = A114199 n

end A114199

/-! ## A114199.P10481080935113751890

`∑[A290990(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A114199.P10481080935113751890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A290990 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114199.P10481080935113751890

namespace A114199

/-- `∑[A290990(n-1)+a(n-1)]` -/
def P10481080935113751890.Spec : Prop :=
  ∀ n, P10481080935113751890.a n = A114199 n

end A114199

/-! ## A114199.P6384718291462059934

`A101891(n)+Δ[A101890(n)]`
-/

namespace A114199.P6384718291462059934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101891 n + (f1 (n + 1) - f1 n)

end

end A114199.P6384718291462059934

namespace A114199

/-- `A101891(n)+Δ[A101890(n)]` -/
def P6384718291462059934.Spec : Prop :=
  ∀ n, P6384718291462059934.a n = A114199 n

end A114199

/-! ## A114199.P18176956989434521556

`∑[A129987(n)-A131577(n)]`
-/

namespace A114199.P18176956989434521556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129987 n - A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114199.P18176956989434521556

namespace A114199

/-- `∑[A129987(n)-A131577(n)]` -/
def P18176956989434521556.Spec : Prop :=
  ∀ n, P18176956989434521556.a n = A114199 n

end A114199

/-! ## A114199.P8591186565710682125

`∑[A129987(n)]+1-A000079(n)`
-/

namespace A114199.P8591186565710682125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A000079 n)

end

end A114199.P8591186565710682125

namespace A114199

/-- `∑[A129987(n)]+1-A000079(n)` -/
def P8591186565710682125.Spec : Prop :=
  ∀ n, P8591186565710682125.a n = A114199 n

end A114199

/-! ## A114199.P5350810368238615995

`Δ[A101890(n+1)]`
-/

namespace A114199.P5350810368238615995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114199.P5350810368238615995

namespace A114199

/-- `Δ[A101890(n+1)]` -/
def P5350810368238615995.Spec : Prop :=
  ∀ n, P5350810368238615995.a n = A114199 n

end A114199

/-! ## A114199.P10122635835544391230

`A129988(n+1)-A129983(n+1)`
-/

namespace A114199.P10122635835544391230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 (n + 1) - A129983 (n + 1)

end

end A114199.P10122635835544391230

namespace A114199

/-- `A129988(n+1)-A129983(n+1)` -/
def P10122635835544391230.Spec : Prop :=
  ∀ n, P10122635835544391230.a n = A114199 n

end A114199

/-! ## A114199.P6560349988059342065

`A101890(n+2)-A101890(n+1)`
-/

namespace A114199.P6560349988059342065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101890 (n + 2) - A101890 (n + 1)

end

end A114199.P6560349988059342065

namespace A114199

/-- `A101890(n+2)-A101890(n+1)` -/
def P6560349988059342065.Spec : Prop :=
  ∀ n, P6560349988059342065.a n = A114199 n

end A114199

/-! ## A114199.P11333511412664664145

`∑[∑[A290990(n)]+1-A290990(n)]`
-/

namespace A114199.P11333511412664664145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290990 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A290990 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114199.P11333511412664664145

namespace A114199

/-- `∑[∑[A290990(n)]+1-A290990(n)]` -/
def P11333511412664664145.Spec : Prop :=
  ∀ n, P11333511412664664145.a n = A114199 n

end A114199

/-! ## A114199.P4425095992086174973

`Δ[A129984(n+1)-A131577(n+1)]`
-/

namespace A114199.P4425095992086174973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129984 (n + 1) - A131577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114199.P4425095992086174973

namespace A114199

/-- `Δ[A129984(n+1)-A131577(n+1)]` -/
def P4425095992086174973.Spec : Prop :=
  ∀ n, P4425095992086174973.a n = A114199 n

end A114199

/-! ## A114199.P14472401861700079454

`Δ[Δ[A129983(n+1)]]-A000079(n)`
-/

namespace A114199.P14472401861700079454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129983 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000079 n

end

end A114199.P14472401861700079454

namespace A114199

/-- `Δ[Δ[A129983(n+1)]]-A000079(n)` -/
def P14472401861700079454.Spec : Prop :=
  ∀ n, P14472401861700079454.a n = A114199 n

end A114199

/-! ## A114199.P10210355522602414263

`record[Δ[A290990(n)]-A290990(n)]`
-/

namespace A114199.P10210355522602414263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290990 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A290990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114199.P10210355522602414263

namespace A114199

/-- `record[Δ[A290990(n)]-A290990(n)]` -/
def P10210355522602414263.Spec : Prop :=
  ∀ n, P10210355522602414263.a n = A114199 n

end A114199

/-! ## A114199.P4344279842741472136

`A290990(n+3)%A290990(n+2)`
-/

namespace A114199.P4344279842741472136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290990 (n + 3)) (A290990 (n + 2))

end

end A114199.P4344279842741472136

namespace A114199

/-- `A290990(n+3)%A290990(n+2)` -/
def P4344279842741472136.Spec : Prop :=
  ∀ n, P4344279842741472136.a n = A114199 n

end A114199

/-! ## A114199.P2161408269317008474

`Δ[Δ[A129988(n+1)-A129986(n+1)]]`
-/

namespace A114199.P2161408269317008474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 (n + 1) - A129986 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114199.P2161408269317008474

namespace A114199

/-- `Δ[Δ[A129988(n+1)-A129986(n+1)]]` -/
def P2161408269317008474.Spec : Prop :=
  ∀ n, P2161408269317008474.a n = A114199 n

end A114199

/-! ## A114199.P15318899167530829489

`Δ[Δ[A129988(n+1)]-A129987(n+1)]`
-/

namespace A114199.P15318899167530829489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A129987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114199.P15318899167530829489

namespace A114199

/-- `Δ[Δ[A129988(n+1)]-A129987(n+1)]` -/
def P15318899167530829489.Spec : Prop :=
  ∀ n, P15318899167530829489.a n = A114199 n

end A114199

/-! ## A114199.P5258034662203418598

`Δ[Δ[A290990(n+1)]-A101891(n+1)]`
-/

namespace A114199.P5258034662203418598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290990 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A101891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A114199.P5258034662203418598

namespace A114199

/-- `Δ[Δ[A290990(n+1)]-A101891(n+1)]` -/
def P5258034662203418598.Spec : Prop :=
  ∀ n, P5258034662203418598.a n = A114199 n

end A114199

