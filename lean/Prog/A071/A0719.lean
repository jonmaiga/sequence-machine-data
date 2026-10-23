import SequenceMachineLib
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
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
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
import Seq.B004.C003
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

/-!
# A071900: 1/4 times the number of n X n 0..7 matrices with MM' mod 8 = I, where M' is the transpose of M and I is the n X n identity matrix.

The programs for A071900, there is no canonical definition to state claims against.
-/

/-! ## A071900.P13784514519783230910

`∏[2*(n+1)*4^n]/2`
-/

namespace A071900.P13784514519783230910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) * 4 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A071900.P13784514519783230910

/-!
# A071901: n-th decimal digit of the fractional part of the square root of the n-th prime.

The programs for A071901, there is no canonical definition to state claims against.
-/

/-! ## A071901.P10394538904018496658

`(A111421(n+2)+9)%10`
-/

namespace A071901.P10394538904018496658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111421 (n + 2) + 9) 10

end

end A071901.P10394538904018496658

/-! ## A071901.P8550946633388865479

`A111421(n+2)-A245794(n)!`
-/

namespace A071901.P8550946633388865479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111421 (n + 2) - (Nat.factorial (A245794 n).toNat : ℤ)

end

end A071901.P8550946633388865479

/-! ## A071901.P13495662826610000149

`A111421(n+2)-A173557(A011782(n))`
-/

namespace A071901.P13495662826610000149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111421 (n + 2) - A173557 (A011782 n).toNat

end

end A071901.P13495662826610000149

/-! ## A071901.P7439600546737694810

`A111421(n+2)-A035263(A152046(n))`
-/

namespace A071901.P7439600546737694810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111421 (n + 2) - A035263 (A152046 n).toNat

end

end A071901.P7439600546737694810

/-! ## A071901.P16120651380872419622

`A111421(n+2)-A035263(A213173(n))`
-/

namespace A071901.P16120651380872419622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111421 (n + 2) - A035263 (A213173 n).toNat

end

end A071901.P16120651380872419622

/-!
# A071902: Sum_{k=0..n^2} (k^2 - n^2)/n.

The programs for A071902, the canonical program `A071902.P15568700186884976236` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071902 has offset 1).

The definition of A071902 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071902.P15568700186884976236

`(n+1)*(2*(n+1)²-5)*((n+1)²+1)/6`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071902

/-- `(n+1)*(2*(n+1)²-5)*((n+1)²+1)/6` -/
def P15568700186884976236.Spec : Prop :=
  ∀ n, P15568700186884976236.a n = (A071902 (n + 1) : ℚ)

end A071902

/-! ## A071902.P17746161659431186763

`A143945(n+1)-∑[∑[n]+1]`
-/

namespace A071902.P17746161659431186763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143945 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A071902.P17746161659431186763

namespace A071902

/-- `A143945(n+1)-∑[∑[n]+1]` -/
def P17746161659431186763.Spec : Prop :=
  ∀ n, P17746161659431186763.a n = A071902 (n + 1)

end A071902

/-! ## A071902.P9228552079339532921

`A109764(n+1)/(n+1)-(n+1)`
-/

namespace A071902.P9228552079339532921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109764 (n + 1) : ℚ) / (n + 1 : ℚ) - (n + 1 : ℚ)

end

end A071902.P9228552079339532921

namespace A071902

/-- `A109764(n+1)/(n+1)-(n+1)` -/
def P9228552079339532921.Spec : Prop :=
  ∀ n, P9228552079339532921.a n = (A071902 (n + 1) : ℚ)

end A071902

/-! ## A071902.P5604192582977936602

`A000292(n)*A056220(n+1)-(n+1)`
-/

namespace A071902.P5604192582977936602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n * A056220 (n + 1) - (n + 1 : ℤ)

end

end A071902.P5604192582977936602

namespace A071902

/-- `A000292(n)*A056220(n+1)-(n+1)` -/
def P5604192582977936602.Spec : Prop :=
  ∀ n, P5604192582977936602.a n = A071902 (n + 1)

end A071902

/-! ## A071902.P8972907556986860913

`∑[∑[A004068(2*n)]-1]`
-/

namespace A071902.P8972907556986860913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004068 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071902.P8972907556986860913

namespace A071902

/-- `∑[∑[A004068(2*n)]-1]` -/
def P8972907556986860913.Spec : Prop :=
  ∀ n, P8972907556986860913.a n = A071902 (n + 1)

end A071902

/-! ## A071902.P2656460457238919417

`A000292(n)*A047838(2*(n+1))-(n+1)`
-/

namespace A071902.P2656460457238919417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n * A047838 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A071902.P2656460457238919417

namespace A071902

/-- `A000292(n)*A047838(2*(n+1))-(n+1)` -/
def P2656460457238919417.Spec : Prop :=
  ∀ n, P2656460457238919417.a n = A071902 (n + 1)

end A071902

/-!
# A071903: Number of x less than or equal to n and divisible only by primes congruent to 3 mod 4 (i.e., in A004614).

The programs for A071903, the canonical program `A071903.P13056077782477119654` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071903 has offset 0).

The definition of A071903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071903.P13056077782477119654

`∑[and(1, ∏{p}[n+1, C(#, 3)])]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071903

/-- `∑[and(1, ∏{p}[n+1, C(#, 3)])]` -/
def P13056077782477119654.Spec : Prop :=
  ∀ n, (P13056077782477119654.a n : ℤ) = A071903 n

theorem P13056077782477119654.correct : P13056077782477119654.Spec := by
  intro n
  simp only [A071903]

end A071903

/-! ## A071903.P11228600507057298043

`∑[floor(acot(A078909(n+1)))]`
-/

namespace A071903.P11228600507057298043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A078909 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071903.P11228600507057298043

namespace A071903

/-- `∑[floor(acot(A078909(n+1)))]` -/
def P11228600507057298043.Spec : Prop :=
  ∀ n, P11228600507057298043.a n = A071903 n

end A071903

/-! ## A071903.P446128567303386433

`∑[char[A004614(n+1)-1]]`
-/

namespace A071903.P446128567303386433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071903.P446128567303386433

namespace A071903

/-- `∑[char[A004614(n+1)-1]]` -/
def P446128567303386433.Spec : Prop :=
  ∀ n, (P446128567303386433.a n : ℤ) = A071903 n

end A071903

/-! ## A071903.P16097086282928278264

`∑[C(2, A092147(n+1)+2)]`
-/

namespace A071903.P16097086282928278264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A092147 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071903.P16097086282928278264

namespace A071903

/-- `∑[C(2, A092147(n+1)+2)]` -/
def P16097086282928278264.Spec : Prop :=
  ∀ n, (P16097086282928278264.a n : ℤ) = A071903 n

end A071903

/-! ## A071903.P2274644193230093406

`∑[C(and(1, n+1), A170818(n+1))]`
-/

namespace A071903.P2274644193230093406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land 1 (n + 1)) (A170818 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071903.P2274644193230093406

namespace A071903

/-- `∑[C(and(1, n+1), A170818(n+1))]` -/
def P2274644193230093406.Spec : Prop :=
  ∀ n, (P2274644193230093406.a n : ℤ) = A071903 n

end A071903

/-! ## A071903.P10603432445434823127

`∑[∏{p}[a(n-1)+3, A038189(#)]]` with `a(0)=3`
-/

namespace A071903.P10603432445434823127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A038189 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071903.P10603432445434823127

namespace A071903

/-- `∑[∏{p}[a(n-1)+3, A038189(#)]]` -/
def P10603432445434823127.Spec : Prop :=
  ∀ n, P10603432445434823127.a n = A071903 n

end A071903

/-! ## A071903.P14535043251938874112

`∑[∏{p}[n+1, C((A000203(#)+2)%4, 2)]]`
-/

namespace A071903.P14535043251938874112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (Int.tmod (A000203 p + 2) 4).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071903.P14535043251938874112

namespace A071903

/-- `∑[∏{p}[n+1, C((A000203(#)+2)%4, 2)]]` -/
def P14535043251938874112.Spec : Prop :=
  ∀ n, (P14535043251938874112.a n : ℤ) = A071903 n

end A071903

/-! ## A071903.P2703480394528888043

`∑[(n+1)%A175665(C(3, A170818(n+1))+1)]`
-/

namespace A071903.P2703480394528888043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A175665 (Nat.choose 3 (A170818 (n + 1)).toNat + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071903.P2703480394528888043

namespace A071903

/-- `∑[(n+1)%A175665(C(3, A170818(n+1))+1)]` -/
def P2703480394528888043.Spec : Prop :=
  ∀ n, P2703480394528888043.a n = A071903 n

end A071903

/-! ## A071903.P305188254427040378

`∑[A046073(n+1)%A000034(n+1)]`
-/

namespace A071903.P305188254427040378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046073 (n + 1)) (A000034 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071903.P305188254427040378

namespace A071903

/-- `∑[A046073(n+1)%A000034(n+1)]` -/
def P305188254427040378.Spec : Prop :=
  ∀ n, P305188254427040378.a n = A071903 n

end A071903

/-! ## A071903.P8525739935809766886

`∑[char[A097706(n+1)-1]]`
-/

namespace A071903.P8525739935809766886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071903.P8525739935809766886

namespace A071903

/-- `∑[char[A097706(n+1)-1]]` -/
def P8525739935809766886.Spec : Prop :=
  ∀ n, (P8525739935809766886.a n : ℤ) = A071903 n

end A071903

/-! ## A071903.P8856845814973893318

`∑[floor(2/A078909(2*(n+1)))]`
-/

namespace A071903.P8856845814973893318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (A078909 (2 * (n + 1)) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071903.P8856845814973893318

namespace A071903

/-- `∑[floor(2/A078909(2*(n+1)))]` -/
def P8856845814973893318.Spec : Prop :=
  ∀ n, P8856845814973893318.a n = A071903 n

end A071903

/-! ## A071903.P2482411855050590121

`∑[A278222(A284059(2*(n+1)))-1]`
-/

namespace A071903.P2482411855050590121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A284059 (2 * (n + 1))).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071903.P2482411855050590121

namespace A071903

/-- `∑[A278222(A284059(2*(n+1)))-1]` -/
def P2482411855050590121.Spec : Prop :=
  ∀ n, P2482411855050590121.a n = A071903 n

end A071903

/-! ## A071903.P3731695207556572799

`∑[C(A000203(n+1), A078930(n+1))]`
-/

namespace A071903.P3731695207556572799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000203 (n + 1)).toNat (A078930 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071903.P3731695207556572799

namespace A071903

/-- `∑[C(A000203(n+1), A078930(n+1))]` -/
def P3731695207556572799.Spec : Prop :=
  ∀ n, (P3731695207556572799.a n : ℤ) = A071903 n

end A071903

/-! ## A071903.P13619769327771540178

`∑[C(A078910(n+1), A078930(n+1))]`
-/

namespace A071903.P13619769327771540178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A078910 (n + 1)).toNat (A078930 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071903.P13619769327771540178

namespace A071903

/-- `∑[C(A078910(n+1), A078930(n+1))]` -/
def P13619769327771540178.Spec : Prop :=
  ∀ n, (P13619769327771540178.a n : ℤ) = A071903 n

end A071903

/-! ## A071903.P453042160794936743

`∑[A360113(3*(n+1)²)]`
-/

namespace A071903.P453042160794936743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360113 (3 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071903.P453042160794936743

namespace A071903

/-- `∑[A360113(3*(n+1)²)]` -/
def P453042160794936743.Spec : Prop :=
  ∀ n, P453042160794936743.a n = A071903 n

end A071903

/-! ## A071903.P14705538557789954915

`∑[A360116(3*(n+1)²)]`
-/

namespace A071903.P14705538557789954915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360116 (3 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071903.P14705538557789954915

namespace A071903

/-- `∑[A360116(3*(n+1)²)]` -/
def P14705538557789954915.Spec : Prop :=
  ∀ n, P14705538557789954915.a n = A071903 n

end A071903

/-!
# A071904: Odd composite numbers.

The programs for A071904, the canonical program `A071904.P6554188440157640390` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071904 has offset 1).

The definition of A071904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071904.P2729451983400293975

`eq[1, A107393(n)]`
-/

namespace A071904.P2729451983400293975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071904.P2729451983400293975

namespace A071904

/-- `eq[1, A107393(n)]` -/
def P2729451983400293975.Spec : Prop :=
  ∀ n, (P2729451983400293975.a n : ℤ) = A071904 (n + 1)

end A071904

/-! ## A071904.P15872829914803856160

`A309355(n+1)+1`
-/

namespace A071904.P15872829914803856160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309355 (n + 1) + 1

end

end A071904.P15872829914803856160

namespace A071904

/-- `A309355(n+1)+1` -/
def P15872829914803856160.Spec : Prop :=
  ∀ n, P15872829914803856160.a n = A071904 (n + 1)

end A071904

/-! ## A071904.P6554188440157640390

`A007921(n+1)+2`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071904

/-- `A007921(n+1)+2` -/
def P6554188440157640390.Spec : Prop :=
  ∀ n, P6554188440157640390.a n = A071904 (n + 1)

theorem P6554188440157640390.correct : P6554188440157640390.Spec := by
  intro n
  simp only [A071904, Nat.add_sub_cancel]

end A071904

/-! ## A071904.P417852743578528728

`A146538(n+1)+3`
-/

namespace A071904.P417852743578528728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146538 (n + 1) + 3

end

end A071904.P417852743578528728

namespace A071904

/-- `A146538(n+1)+3` -/
def P417852743578528728.Spec : Prop :=
  ∀ n, P417852743578528728.a n = A071904 (n + 1)

end A071904

/-! ## A071904.P2095624453407060451

`∑[A067970(n+1)]+1`
-/

namespace A071904.P2095624453407060451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A071904.P2095624453407060451

namespace A071904

/-- `∑[A067970(n+1)]+1` -/
def P2095624453407060451.Spec : Prop :=
  ∀ n, P2095624453407060451.a n = A071904 (n + 1)

end A071904

/-! ## A071904.P8080467150655493460

`2*A053726(n+1)-1`
-/

namespace A071904.P8080467150655493460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053726 (n + 1) - 1

end

end A071904.P8080467150655493460

namespace A071904

/-- `2*A053726(n+1)-1` -/
def P8080467150655493460.Spec : Prop :=
  ∀ n, P8080467150655493460.a n = A071904 (n + 1)

end A071904

/-! ## A071904.P12293663375707270784

`2*A153238(n+1)+3`
-/

namespace A071904.P12293663375707270784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153238 (n + 1) + 3

end

end A071904.P12293663375707270784

namespace A071904

/-- `2*A153238(n+1)+3` -/
def P12293663375707270784.Spec : Prop :=
  ∀ n, P12293663375707270784.a n = A071904 (n + 1)

end A071904

/-! ## A071904.P18340183334952820725

`2*A153052(n+1)+5`
-/

namespace A071904.P18340183334952820725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153052 (n + 1) + 5

end

end A071904.P18340183334952820725

namespace A071904

/-- `2*A153052(n+1)+5` -/
def P18340183334952820725.Spec : Prop :=
  ∀ n, P18340183334952820725.a n = A071904 (n + 1)

end A071904

/-! ## A071904.P14973027698251077518

`lt[1, A325937(n+1)]+1`
-/

namespace A071904.P14973027698251077518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A071904.P14973027698251077518

namespace A071904

/-- `lt[1, A325937(n+1)]+1` -/
def P14973027698251077518.Spec : Prop :=
  ∀ n, (P14973027698251077518.a n : ℤ) = A071904 (n + 1)

end A071904

/-! ## A071904.P6423466666509889977

`lt[1, A325960(n+1)]+1`
-/

namespace A071904.P6423466666509889977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325960 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A071904.P6423466666509889977

namespace A071904

/-- `lt[1, A325960(n+1)]+1` -/
def P6423466666509889977.Spec : Prop :=
  ∀ n, (P6423466666509889977.a n : ℤ) = A071904 (n + 1)

end A071904

/-! ## A071904.P2360854268630837640

`∑[2*A196274(n+1)]+1`
-/

namespace A071904.P2360854268630837640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A196274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A071904.P2360854268630837640

namespace A071904

/-- `∑[2*A196274(n+1)]+1` -/
def P2360854268630837640.Spec : Prop :=
  ∀ n, P2360854268630837640.a n = A071904 (n + 1)

end A071904

/-! ## A071904.P16684849046700119657

`2*lt[1, A001222(2*n+1)]+1`
-/

namespace A071904.P16684849046700119657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A071904.P16684849046700119657

namespace A071904

/-- `2*lt[1, A001222(2*n+1)]+1` -/
def P16684849046700119657.Spec : Prop :=
  ∀ n, (P16684849046700119657.a n : ℤ) = A071904 (n + 1)

end A071904

/-! ## A071904.P8619738422522553183

`2*lt[2, A000005(2*n+1)]+1`
-/

namespace A071904.P8619738422522553183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A071904.P8619738422522553183

namespace A071904

/-- `2*lt[2, A000005(2*n+1)]+1` -/
def P8619738422522553183.Spec : Prop :=
  ∀ n, (P8619738422522553183.a n : ℤ) = A071904 (n + 1)

end A071904

/-! ## A071904.P10792381288490681829

`2*lt[A006530(2*n+1), n]+1`
-/

namespace A071904.P10792381288490681829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A071904.P10792381288490681829

namespace A071904

/-- `2*lt[A006530(2*n+1), n]+1` -/
def P10792381288490681829.Spec : Prop :=
  ∀ n, (P10792381288490681829.a n : ℤ) = A071904 (n + 1)

end A071904

/-! ## A071904.P5962221869155206033

`2*lt[A020639(2*n+1), n]+1`
-/

namespace A071904.P5962221869155206033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A071904.P5962221869155206033

namespace A071904

/-- `2*lt[A020639(2*n+1), n]+1` -/
def P5962221869155206033.Spec : Prop :=
  ∀ n, (P5962221869155206033.a n : ℤ) = A071904 (n + 1)

end A071904

/-! ## A071904.P5778470535838918597

`lt[2, A020639(n+3)%(n+1)]+3`
-/

namespace A071904.P5778470535838918597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (n + 3)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3

end

end A071904.P5778470535838918597

namespace A071904

/-- `lt[2, A020639(n+3)%(n+1)]+3` -/
def P5778470535838918597.Spec : Prop :=
  ∀ n, (P5778470535838918597.a n : ℤ) = A071904 (n + 1)

end A071904

/-! ## A071904.P15294937779273020110

`2*lt[A000010(2*n+1), 2*n]+1`
-/

namespace A071904.P15294937779273020110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A071904.P15294937779273020110

namespace A071904

/-- `2*lt[A000010(2*n+1), 2*n]+1` -/
def P15294937779273020110.Spec : Prop :=
  ∀ n, (P15294937779273020110.a n : ℤ) = A071904 (n + 1)

end A071904

/-! ## A071904.P13932736056647766858

`A067970(n+1)+A014076(n+1)`
-/

namespace A071904.P13932736056647766858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067970 (n + 1) + A014076 (n + 1)

end

end A071904.P13932736056647766858

namespace A071904

/-- `A067970(n+1)+A014076(n+1)` -/
def P13932736056647766858.Spec : Prop :=
  ∀ n, P13932736056647766858.a n = A071904 (n + 1)

end A071904

/-! ## A071904.P15501896886853786798

`A153052(n+1)+A153040(n+1)`
-/

namespace A071904.P15501896886853786798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153052 (n + 1) + A153040 (n + 1)

end

end A071904.P15501896886853786798

namespace A071904

/-- `A153052(n+1)+A153040(n+1)` -/
def P15501896886853786798.Spec : Prop :=
  ∀ n, P15501896886853786798.a n = A071904 (n + 1)

end A071904

/-! ## A071904.P16631496716791356946

`A153053(n+1)+A153039(n+1)`
-/

namespace A071904.P16631496716791356946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153053 (n + 1) + A153039 (n + 1)

end

end A071904.P16631496716791356946

namespace A071904

/-- `A153053(n+1)+A153039(n+1)` -/
def P16631496716791356946.Spec : Prop :=
  ∀ n, P16631496716791356946.a n = A071904 (n + 1)

end A071904

/-!
# A071906: Sum of digits of 2^n (mod 2).

The programs for A071906, the canonical program `A071906.P15390665811675828273` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071906 has offset 0).

The definition of A071906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071906.P15390665811675828273

`A001370(n)%2`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071906

/-- `A001370(n)%2` -/
def P15390665811675828273.Spec : Prop :=
  ∀ n, P15390665811675828273.a n = A071906 n

theorem P15390665811675828273.correct : P15390665811675828273.Spec := by
  intro n
  simp only [A071906]

end A071906

/-! ## A071906.P3819371986291179328

`A055254(n)%2`
-/

namespace A071906.P3819371986291179328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055254 n) 2

end

end A071906.P3819371986291179328

namespace A071906

/-- `A055254(n)%2` -/
def P3819371986291179328.Spec : Prop :=
  ∀ n, P3819371986291179328.a n = A071906 n

end A071906

/-! ## A071906.P5108846083270516945

`A375976(n)%2`
-/

namespace A071906.P5108846083270516945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375976 n) 2

end

end A071906.P5108846083270516945

namespace A071906

/-- `A375976(n)%2` -/
def P5108846083270516945.Spec : Prop :=
  ∀ n, P5108846083270516945.a n = A071906 n

end A071906

/-! ## A071906.P14595540077660881890

`char[A118731(n+1)]`
-/

namespace A071906.P14595540077660881890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A071906.P14595540077660881890

namespace A071906

/-- `char[A118731(n+1)]` -/
def P14595540077660881890.Spec : Prop :=
  ∀ n, (P14595540077660881890.a n : ℤ) = A071906 n

end A071906

/-! ## A071906.P15941743945201375215

`char[comp[A118730(n+1)]]`
-/

namespace A071906.P15941743945201375215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118730 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A071906.P15941743945201375215

namespace A071906

/-- `char[comp[A118730(n+1)]]` -/
def P15941743945201375215.Spec : Prop :=
  ∀ n, (P15941743945201375215.a n : ℤ) = A071906 n

end A071906

/-! ## A071906.P14722576031061430548

`A000035(A055254(n))`
-/

namespace A071906.P14722576031061430548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A055254 n).toNat

end

end A071906.P14722576031061430548

namespace A071906

/-- `A000035(A055254(n))` -/
def P14722576031061430548.Spec : Prop :=
  ∀ n, P14722576031061430548.a n = A071906 n

end A071906

/-! ## A071906.P5236271190744103740

`A000007(val(A001370(n), 2))`
-/

namespace A071906.P5236271190744103740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.valuation (A001370 n).toNat 2)

end

end A071906.P5236271190744103740

namespace A071906

/-- `A000007(val(A001370(n), 2))` -/
def P5236271190744103740.Spec : Prop :=
  ∀ n, P5236271190744103740.a n = A071906 n

end A071906

/-! ## A071906.P635586659802090782

`and(A001370(n), A060576(n))`
-/

namespace A071906.P635586659802090782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001370 n) (A060576 n)

end

end A071906.P635586659802090782

namespace A071906

/-- `and(A001370(n), A060576(n))` -/
def P635586659802090782.Spec : Prop :=
  ∀ n, P635586659802090782.a n = A071906 n

end A071906

/-! ## A071906.P5033246375150433444

`A014577(2*(A055254(n)+1))`
-/

namespace A071906.P5033246375150433444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (2 * (A055254 n + 1)).toNat

end

end A071906.P5033246375150433444

namespace A071906

/-- `A014577(2*(A055254(n)+1))` -/
def P5033246375150433444.Spec : Prop :=
  ∀ n, P5033246375150433444.a n = A071906 n

end A071906

/-! ## A071906.P11344830720631558390

`1-A014577(2*A055254(n))`
-/

namespace A071906.P11344830720631558390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014577 (2 * A055254 n).toNat

end

end A071906.P11344830720631558390

namespace A071906

/-- `1-A014577(2*A055254(n))` -/
def P11344830720631558390.Spec : Prop :=
  ∀ n, P11344830720631558390.a n = A071906 n

end A071906

/-! ## A071906.P12658096272305649372

`val(A020639(A001370(n)+1), 2)`
-/

namespace A071906.P12658096272305649372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (A001370 n + 1).toNat).toNat 2

end

end A071906.P12658096272305649372

namespace A071906

/-- `val(A020639(A001370(n)+1), 2)` -/
def P12658096272305649372.Spec : Prop :=
  ∀ n, (P12658096272305649372.a n : ℤ) = A071906 n

end A071906

/-! ## A071906.P15662325538128108822

`(A055253(n)+A034887(n))%2`
-/

namespace A071906.P15662325538128108822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055253 n + A034887 n) 2

end

end A071906.P15662325538128108822

namespace A071906

/-- `(A055253(n)+A034887(n))%2` -/
def P15662325538128108822.Spec : Prop :=
  ∀ n, P15662325538128108822.a n = A071906 n

end A071906

/-! ## A071906.P17997681390928377714

`and(1, A017082(n)*A055254(n))`
-/

namespace A071906.P17997681390928377714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A017082 n * A055254 n)

end

end A071906.P17997681390928377714

namespace A071906

/-- `and(1, A017082(n)*A055254(n))` -/
def P17997681390928377714.Spec : Prop :=
  ∀ n, P17997681390928377714.a n = A071906 n

end A071906

/-! ## A071906.P4696074507617974976

`and(1, A055254(n)²*A008349(n))`
-/

namespace A071906.P4696074507617974976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A055254 n ^ 2 * A008349 n)

end

end A071906.P4696074507617974976

namespace A071906

/-- `and(1, A055254(n)²*A008349(n))` -/
def P4696074507617974976.Spec : Prop :=
  ∀ n, P4696074507617974976.a n = A071906 n

end A071906

/-! ## A071906.P16820396656005860542

`and(1, (A008514(n)*A055254(n))²)`
-/

namespace A071906.P16820396656005860542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A008514 n * A055254 n) ^ 2)

end

end A071906.P16820396656005860542

namespace A071906

/-- `and(1, (A008514(n)*A055254(n))²)` -/
def P16820396656005860542.Spec : Prop :=
  ∀ n, P16820396656005860542.a n = A071906 n

end A071906

/-! ## A071906.P13936182454626997566

`and(1, (A016756(n)*A055254(n))²)`
-/

namespace A071906.P13936182454626997566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A016756 n * A055254 n) ^ 2)

end

end A071906.P13936182454626997566

namespace A071906

/-- `and(1, (A016756(n)*A055254(n))²)` -/
def P13936182454626997566.Spec : Prop :=
  ∀ n, P13936182454626997566.a n = A071906 n

end A071906

/-! ## A071906.P15832345343665624658

`and(1, A055254(n)²*A001361(n+1))`
-/

namespace A071906.P15832345343665624658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A055254 n ^ 2 * A001361 (n + 1))

end

end A071906.P15832345343665624658

namespace A071906

/-- `and(1, A055254(n)²*A001361(n+1))` -/
def P15832345343665624658.Spec : Prop :=
  ∀ n, P15832345343665624658.a n = A071906 n

end A071906

/-! ## A071906.P13750400053997207408

`A014577(A055254(n)+A055254(n)+2)`
-/

namespace A071906.P13750400053997207408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A055254 n + (A055254 n + 2)).toNat

end

end A071906.P13750400053997207408

namespace A071906

/-- `A014577(A055254(n)+A055254(n)+2)` -/
def P13750400053997207408.Spec : Prop :=
  ∀ n, P13750400053997207408.a n = A071906 n

end A071906

/-! ## A071906.P1120250760689101796

`and(A055229(A055231(n+1)), A055254(n))`
-/

namespace A071906.P1120250760689101796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055229 (A055231 (n + 1)).toNat) (A055254 n)

end

end A071906.P1120250760689101796

namespace A071906

/-- `and(A055229(A055231(n+1)), A055254(n))` -/
def P1120250760689101796.Spec : Prop :=
  ∀ n, P1120250760689101796.a n = A071906 n

end A071906

/-! ## A071906.P7201611464991911635

`1-char[eq[2, A020639(A055254(n)+2)]]`
-/

namespace A071906.P7201611464991911635
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A055254 n + 2).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A071906.P7201611464991911635

namespace A071906

/-- `1-char[eq[2, A020639(A055254(n)+2)]]` -/
def P7201611464991911635.Spec : Prop :=
  ∀ n, P7201611464991911635.a n = A071906 n

end A071906

/-!
# A071907: Kolakoski-(1,4) sequence: a(n) is length of n-th run.

The programs for A071907, there is no canonical definition to state claims against.
-/

/-! ## A071907.P406351062331213552

`A014675(A221474(3*n))²`
-/

namespace A071907.P406351062331213552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (A221474 (3 * n)).toNat ^ 2

end

end A071907.P406351062331213552

/-! ## A071907.P2561903419027046138

`A014675(A221474(3*n))^A020639(2*(n+1))`
-/

namespace A071907.P2561903419027046138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014675 (A221474 (3 * n)).toNat : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A071907.P2561903419027046138

/-! ## A071907.P10637118320851435824

`A014675(A221474(3*n))^gcd(2, A000010(n+2))`
-/

namespace A071907.P10637118320851435824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (A221474 (3 * n)).toNat ^ Int.gcd 2 (A000010 (n + 2))

end

end A071907.P10637118320851435824

/-! ## A071907.P583436378189252546

`A014675(A221474(3*n))^A014963(A244421(n))`
-/

namespace A071907.P583436378189252546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014675 (A221474 (3 * n)).toNat : ℚ) ^ (A014963 (A244421 n).toNat : ℤ)

end

end A071907.P583436378189252546

/-!
# A071908: A002487(n)*A002487(n+1)*A002487(n+2).

The programs for A071908, the canonical program `A071908.P8967790956812859439` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071908 has offset 0).

The definition of A071908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071908.P8967790956812859439

`A002487(n)*A002487(n+1)*A002487(n+2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071908

/-- `A002487(n)*A002487(n+1)*A002487(n+2)` -/
def P8967790956812859439.Spec : Prop :=
  ∀ n, P8967790956812859439.a n = A071908 n

theorem P8967790956812859439.correct : P8967790956812859439.Spec := by
  intro n
  simp only [A071908]

end A071908

/-! ## A071908.P10919494793127297324

`2*A071909(n)`
-/

namespace A071908.P10919494793127297324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071909 n

end

end A071908.P10919494793127297324

namespace A071908

/-- `2*A071909(n)` -/
def P10919494793127297324.Spec : Prop :=
  ∀ n, P10919494793127297324.a n = A071908 n

end A071908

/-! ## A071908.P8122732402755022022

`Δ[A174868(n)]*A071883(n)`
-/

namespace A071908.P8122732402755022022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A071883 n

end

end A071908.P8122732402755022022

namespace A071908

/-- `Δ[A174868(n)]*A071883(n)` -/
def P8122732402755022022.Spec : Prop :=
  ∀ n, P8122732402755022022.a n = A071908 n

end A071908

/-! ## A071908.P2247127507267618331

`A002487(n)*A070871(n+1)`
-/

namespace A071908.P2247127507267618331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n * A070871 (n + 1)

end

end A071908.P2247127507267618331

namespace A071908

/-- `A002487(n)*A070871(n+1)` -/
def P2247127507267618331.Spec : Prop :=
  ∀ n, P2247127507267618331.a n = A071908 n

end A071908

/-! ## A071908.P8563914770398268044

`A002487(n+1)*A071883(n)`
-/

namespace A071908.P8563914770398268044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) * A071883 n

end

end A071908.P8563914770398268044

namespace A071908

/-- `A002487(n+1)*A071883(n)` -/
def P8563914770398268044.Spec : Prop :=
  ∀ n, P8563914770398268044.a n = A071908 n

end A071908

/-! ## A071908.P10063471755346741214

`lcm(A070871(n+1), A071883(n))`
-/

namespace A071908.P10063471755346741214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A070871 (n + 1)) (A071883 n)

end

end A071908.P10063471755346741214

namespace A071908

/-- `lcm(A070871(n+1), A071883(n))` -/
def P10063471755346741214.Spec : Prop :=
  ∀ n, (P10063471755346741214.a n : ℤ) = A071908 n

end A071908

/-! ## A071908.P9992967201136766320

`(A174868(n+1)-A174868(n))*A071883(n)`
-/

namespace A071908.P9992967201136766320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A174868 (n + 1) - A174868 n) * A071883 n

end

end A071908.P9992967201136766320

namespace A071908

/-- `(A174868(n+1)-A174868(n))*A071883(n)` -/
def P9992967201136766320.Spec : Prop :=
  ∀ n, P9992967201136766320.a n = A071908 n

end A071908

/-! ## A071908.P7544144495870087011

`A070871(n+1)*A283976(2*n)`
-/

namespace A071908.P7544144495870087011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070871 (n + 1) * A283976 (2 * n)

end

end A071908.P7544144495870087011

namespace A071908

/-- `A070871(n+1)*A283976(2*n)` -/
def P7544144495870087011.Spec : Prop :=
  ∀ n, P7544144495870087011.a n = A071908 n

end A071908

/-! ## A071908.P3378613110570956979

`A070871(n+1)*A283977(2*n)`
-/

namespace A071908.P3378613110570956979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070871 (n + 1) * A283977 (2 * n)

end

end A071908.P3378613110570956979

namespace A071908

/-- `A070871(n+1)*A283977(2*n)` -/
def P3378613110570956979.Spec : Prop :=
  ∀ n, P3378613110570956979.a n = A071908 n

end A071908

/-! ## A071908.P1562969146294087669

`A295515(2*n+1)*A295515(n+2)*A114214(n+1)`
-/

namespace A071908.P1562969146294087669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (2 * n + 1) * A295515 (n + 2) * A114214 (n + 1)

end

end A071908.P1562969146294087669

namespace A071908

/-- `A295515(2*n+1)*A295515(n+2)*A114214(n+1)` -/
def P1562969146294087669.Spec : Prop :=
  ∀ n, P1562969146294087669.a n = A071908 n

end A071908

/-! ## A071908.P12290267665509047911

`A005843(A071909(n))`
-/

namespace A071908.P12290267665509047911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A071909 n).toNat

end

end A071908.P12290267665509047911

namespace A071908

/-- `A005843(A071909(n))` -/
def P12290267665509047911.Spec : Prop :=
  ∀ n, P12290267665509047911.a n = A071908 n

end A071908

/-!
# A071909: A002487(n)*A002487(n+1)*A002487(n+2)/2.

The programs for A071909, the canonical program `A071909.P3018903466328539296` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071909 has offset 0).

The definition of A071909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071909.P3018903466328539296

`A002487(n)*A002487(n+1)*A002487(n+2)/2`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071909

/-- `A002487(n)*A002487(n+1)*A002487(n+2)/2` -/
def P3018903466328539296.Spec : Prop :=
  ∀ n, P3018903466328539296.a n = (A071909 n : ℚ)

end A071909

/-! ## A071909.P17154398707473837954

`A071908(n)/2`
-/

namespace A071909.P17154398707473837954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071908 n : ℚ) / 2

end

end A071909.P17154398707473837954

namespace A071909

/-- `A071908(n)/2` -/
def P17154398707473837954.Spec : Prop :=
  ∀ n, P17154398707473837954.a n = (A071909 n : ℚ)

end A071909

/-! ## A071909.P828225391961499712

`A070871(n+1)/2*A002487(n)`
-/

namespace A071909.P828225391961499712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070871 (n + 1) : ℚ) / 2 * (A002487 n : ℚ)

end

end A071909.P828225391961499712

namespace A071909

/-- `A070871(n+1)/2*A002487(n)` -/
def P828225391961499712.Spec : Prop :=
  ∀ n, P828225391961499712.a n = (A071909 n : ℚ)

end A071909

/-! ## A071909.P7704219312189994046

`lcm(A070871(n+1), A071883(n))/2`
-/

namespace A071909.P7704219312189994046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A070871 (n + 1)) (A071883 n) : ℚ) / 2

end

end A071909.P7704219312189994046

namespace A071909

/-- `lcm(A070871(n+1), A071883(n))/2` -/
def P7704219312189994046.Spec : Prop :=
  ∀ n, P7704219312189994046.a n = (A071909 n : ℚ)

end A071909

/-! ## A071909.P3058080364846050059

`A014682(A002487(n)*A070871(n+1))`
-/

namespace A071909.P3058080364846050059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A002487 n * A070871 (n + 1)).toNat

end

end A071909.P3058080364846050059

namespace A071909

/-- `A014682(A002487(n)*A070871(n+1))` -/
def P3058080364846050059.Spec : Prop :=
  ∀ n, P3058080364846050059.a n = A071909 n

end A071909

/-! ## A071909.P16637585656317274317

`A001281(A071908(n))`
-/

namespace A071909.P16637585656317274317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A071908 n).toNat

end

end A071909.P16637585656317274317

namespace A071909

/-- `A001281(A071908(n))` -/
def P16637585656317274317.Spec : Prop :=
  ∀ n, P16637585656317274317.a n = A071909 n

end A071909

/-! ## A071909.P10031405214567165475

`A001281(A002487(n)*A070871(n+1))`
-/

namespace A071909.P10031405214567165475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A002487 n * A070871 (n + 1)).toNat

end

end A071909.P10031405214567165475

namespace A071909

/-- `A001281(A002487(n)*A070871(n+1))` -/
def P10031405214567165475.Spec : Prop :=
  ∀ n, P10031405214567165475.a n = A071909 n

end A071909

/-! ## A071909.P434398245751116079

`A004525(A002487(n)*A070871(n+1))`
-/

namespace A071909.P434398245751116079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A002487 n * A070871 (n + 1)).toNat

end

end A071909.P434398245751116079

namespace A071909

/-- `A004525(A002487(n)*A070871(n+1))` -/
def P434398245751116079.Spec : Prop :=
  ∀ n, P434398245751116079.a n = A071909 n

end A071909

/-! ## A071909.P14440300286369982640

`A004526(A002487(n)*A070871(n+1))`
-/

namespace A071909.P14440300286369982640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002487 n * A070871 (n + 1)).toNat

end

end A071909.P14440300286369982640

namespace A071909

/-- `A004526(A002487(n)*A070871(n+1))` -/
def P14440300286369982640.Spec : Prop :=
  ∀ n, P14440300286369982640.a n = A071909 n

end A071909

/-! ## A071909.P15963610428728896997

`A025480(A002487(n)*A070871(n+1))`
-/

namespace A071909.P15963610428728896997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A002487 n * A070871 (n + 1)).toNat

end

end A071909.P15963610428728896997

namespace A071909

/-- `A025480(A002487(n)*A070871(n+1))` -/
def P15963610428728896997.Spec : Prop :=
  ∀ n, P15963610428728896997.a n = A071909 n

end A071909

/-! ## A071909.P15611434964521777280

`A026741(A002487(n)*A070871(n+1))`
-/

namespace A071909.P15611434964521777280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A002487 n * A070871 (n + 1)).toNat

end

end A071909.P15611434964521777280

namespace A071909

/-- `A026741(A002487(n)*A070871(n+1))` -/
def P15611434964521777280.Spec : Prop :=
  ∀ n, P15611434964521777280.a n = A071909 n

end A071909

/-! ## A071909.P4749964451778414465

`A004524(A002487(n)*A070871(n+1)+1)`
-/

namespace A071909.P4749964451778414465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A002487 n * A070871 (n + 1) + 1).toNat

end

end A071909.P4749964451778414465

namespace A071909

/-- `A004524(A002487(n)*A070871(n+1)+1)` -/
def P4749964451778414465.Spec : Prop :=
  ∀ n, P4749964451778414465.a n = A071909 n

end A071909

/-! ## A071909.P13942114438277756719

`A008619(A002487(n)*A070871(n+1))-1`
-/

namespace A071909.P13942114438277756719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A002487 n * A070871 (n + 1)).toNat - 1

end

end A071909.P13942114438277756719

namespace A071909

/-- `A008619(A002487(n)*A070871(n+1))-1` -/
def P13942114438277756719.Spec : Prop :=
  ∀ n, P13942114438277756719.a n = A071909 n

end A071909

/-!
# A071910: a(n) = t(n)*t(n+1)*t(n+2), where t() are the triangular numbers.

The programs for A071910, the canonical program `A071910.P12114120493175264682` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071910 has offset 0).

The definition of A071910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071910.P12114120493175264682

`A059827(n+1)-A000537(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071910

/-- `A059827(n+1)-A000537(n+1)` -/
def P12114120493175264682.Spec : Prop :=
  ∀ n, P12114120493175264682.a n = A071910 n

theorem P12114120493175264682.correct : P12114120493175264682.Spec := by
  intro n
  simp only [A071910]

end A071910

/-! ## A071910.P7858695270259511729

`(∑[n]+n)*∑[n+1]²`
-/

namespace A071910.P7858695270259511729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + n) * (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A071910.P7858695270259511729

namespace A071910

/-- `(∑[n]+n)*∑[n+1]²` -/
def P7858695270259511729.Spec : Prop :=
  ∀ n, (P7858695270259511729.a n : ℤ) = A071910 n

end A071910

/-! ## A071910.P18056391781512100223

`lcm(∑[n]+n, ∑[n+1]²)`
-/

namespace A071910.P18056391781512100223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j + n) ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2)

end

end A071910.P18056391781512100223

namespace A071910

/-- `lcm(∑[n]+n, ∑[n+1]²)` -/
def P18056391781512100223.Spec : Prop :=
  ∀ n, (P18056391781512100223.a n : ℤ) = A071910 n

end A071910

/-! ## A071910.P16580493781171118600

`A193575(n+1)-∑[n]²`
-/

namespace A071910.P16580493781171118600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193575 (n + 1) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A071910.P16580493781171118600

namespace A071910

/-- `A193575(n+1)-∑[n]²` -/
def P16580493781171118600.Spec : Prop :=
  ∀ n, P16580493781171118600.a n = A071910 n

end A071910

/-! ## A071910.P10337206943740686590

`∑[∑[n]*A085789(n+1)]`
-/

namespace A071910.P10337206943740686590
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A085789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071910.P10337206943740686590

namespace A071910

/-- `∑[∑[n]*A085789(n+1)]` -/
def P10337206943740686590.Spec : Prop :=
  ∀ n, P10337206943740686590.a n = A071910 n

end A071910

/-! ## A071910.P12212140187289515959

`A059827(n+1)-A059978(n)/A059977(n)`
-/

namespace A071910.P12212140187289515959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059827 (n + 1) : ℚ) - (A059978 n : ℚ) / (A059977 n : ℚ)

end

end A071910.P12212140187289515959

namespace A071910

/-- `A059827(n+1)-A059978(n)/A059977(n)` -/
def P12212140187289515959.Spec : Prop :=
  ∀ n, P12212140187289515959.a n = (A071910 n : ℚ)

end A071910

/-! ## A071910.P16699952676738715280

`(A059979(n+1)-A059978(n))/A059977(n)`
-/

namespace A071910.P16699952676738715280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059979 (n + 1) - A059978 n : ℚ) / (A059977 n : ℚ)

end

end A071910.P16699952676738715280

namespace A071910

/-- `(A059979(n+1)-A059978(n))/A059977(n)` -/
def P16699952676738715280.Spec : Prop :=
  ∀ n, P16699952676738715280.a n = (A071910 n : ℚ)

end A071910

/-! ## A071910.P162390875972658564

`A000096(n)/(A000580(n+7)/A104670(n))²`
-/

namespace A071910.P162390875972658564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 n : ℚ) / ((A000580 (n + 7) : ℚ) / (A104670 n : ℚ)) ^ 2

end

end A071910.P162390875972658564

namespace A071910

/-- `A000096(n)/(A000580(n+7)/A104670(n))²` -/
def P162390875972658564.Spec : Prop :=
  ∀ n, P162390875972658564.a n = (A071910 n : ℚ)

end A071910

/-! ## A071910.P11379505082113126910

`(A059978(n)-A059860(n+1))/A059827(n+1)`
-/

namespace A071910.P11379505082113126910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059978 n - A059860 (n + 1) : ℚ) / (A059827 (n + 1) : ℚ)

end

end A071910.P11379505082113126910

namespace A071910

/-- `(A059978(n)-A059860(n+1))/A059827(n+1)` -/
def P11379505082113126910.Spec : Prop :=
  ∀ n, P11379505082113126910.a n = (A071910 n : ℚ)

end A071910

/-! ## A071910.P1010247339786825899

`A059827(n+1)-A059980(n+1)/A059978(n)`
-/

namespace A071910.P1010247339786825899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059827 (n + 1) : ℚ) - (A059980 (n + 1) : ℚ) / (A059978 n : ℚ)

end

end A071910.P1010247339786825899

namespace A071910

/-- `A059827(n+1)-A059980(n+1)/A059978(n)` -/
def P1010247339786825899.Spec : Prop :=
  ∀ n, P1010247339786825899.a n = (A071910 n : ℚ)

end A071910

/-! ## A071910.P1603959767936643918

`A059827(n+1)-A059979(n+1)/A059860(n+1)`
-/

namespace A071910.P1603959767936643918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059827 (n + 1) : ℚ) - (A059979 (n + 1) : ℚ) / (A059860 (n + 1) : ℚ)

end

end A071910.P1603959767936643918

namespace A071910

/-- `A059827(n+1)-A059979(n+1)/A059860(n+1)` -/
def P1603959767936643918.Spec : Prop :=
  ∀ n, P1603959767936643918.a n = (A071910 n : ℚ)

end A071910

/-! ## A071910.P6788870367509736032

`(A059980(n+1)-A059979(n+1))/A059860(n+1)`
-/

namespace A071910.P6788870367509736032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059980 (n + 1) - A059979 (n + 1) : ℚ) / (A059860 (n + 1) : ℚ)

end

end A071910.P6788870367509736032

namespace A071910

/-- `(A059980(n+1)-A059979(n+1))/A059860(n+1)` -/
def P6788870367509736032.Spec : Prop :=
  ∀ n, P6788870367509736032.a n = (A071910 n : ℚ)

end A071910

/-! ## A071910.P2081955524828371062

`A059977(n)/A000217(n+1)-A000537(n+1)`
-/

namespace A071910.P2081955524828371062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059977 n : ℚ) / (A000217 (n + 1) : ℚ) - (A000537 (n + 1) : ℚ)

end

end A071910.P2081955524828371062

namespace A071910

/-- `A059977(n)/A000217(n+1)-A000537(n+1)` -/
def P2081955524828371062.Spec : Prop :=
  ∀ n, P2081955524828371062.a n = (A071910 n : ℚ)

end A071910

/-! ## A071910.P497859032593901319

`(A059860(n+1)-A059977(n))/A000537(n+1)`
-/

namespace A071910.P497859032593901319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059860 (n + 1) - A059977 n : ℚ) / (A000537 (n + 1) : ℚ)

end

end A071910.P497859032593901319

namespace A071910

/-- `(A059860(n+1)-A059977(n))/A000537(n+1)` -/
def P497859032593901319.Spec : Prop :=
  ∀ n, P497859032593901319.a n = (A071910 n : ℚ)

end A071910

/-! ## A071910.P2735314845817878235

`A059979(n+1)/A059977(n)-A000537(n+1)`
-/

namespace A071910.P2735314845817878235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059979 (n + 1) : ℚ) / (A059977 n : ℚ) - (A000537 (n + 1) : ℚ)

end

end A071910.P2735314845817878235

namespace A071910

/-- `A059979(n+1)/A059977(n)-A000537(n+1)` -/
def P2735314845817878235.Spec : Prop :=
  ∀ n, P2735314845817878235.a n = (A071910 n : ℚ)

end A071910

/-! ## A071910.P1414257273708847134

`A059980(n+1)/A059860(n+1)-A000537(n+1)`
-/

namespace A071910.P1414257273708847134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059980 (n + 1) : ℚ) / (A059860 (n + 1) : ℚ) - (A000537 (n + 1) : ℚ)

end

end A071910.P1414257273708847134

namespace A071910

/-- `A059980(n+1)/A059860(n+1)-A000537(n+1)` -/
def P1414257273708847134.Spec : Prop :=
  ∀ n, P1414257273708847134.a n = (A071910 n : ℚ)

end A071910

/-! ## A071910.P5195068390928994569

`∑[∑[n]*A256524(2*n+1)]`
-/

namespace A071910.P5195068390928994569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A256524 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071910.P5195068390928994569

namespace A071910

/-- `∑[∑[n]*A256524(2*n+1)]` -/
def P5195068390928994569.Spec : Prop :=
  ∀ n, P5195068390928994569.a n = A071910 n

end A071910

/-! ## A071910.P14387498750170585722

`∑[∑[n]*A014125(A016777(n))]`
-/

namespace A071910.P14387498750170585722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A014125 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071910.P14387498750170585722

namespace A071910

/-- `∑[∑[n]*A014125(A016777(n))]` -/
def P14387498750170585722.Spec : Prop :=
  ∀ n, P14387498750170585722.a n = A071910 n

end A071910

/-! ## A071910.P4041297668730694922

`record[n*A061857(n+2)²]`
-/

namespace A071910.P4041297668730694922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A061857 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071910.P4041297668730694922

namespace A071910

/-- `record[n*A061857(n+2)²]` -/
def P4041297668730694922.Spec : Prop :=
  ∀ n, P4041297668730694922.a n = A071910 n

end A071910

/-! ## A071910.P9638981371152916541

`record[A038722(n+1)²*A061579(n)]`
-/

namespace A071910.P9638981371152916541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) ^ 2 * A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071910.P9638981371152916541

namespace A071910

/-- `record[A038722(n+1)²*A061579(n)]` -/
def P9638981371152916541.Spec : Prop :=
  ∀ n, P9638981371152916541.a n = A071910 n

end A071910

/-!
# A071911: Numbers m such that Stern's diatomic A002487(m) is divisible by 3.

The programs for A071911, the canonical program `A071911.P14894144207853448793` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071911 has offset 0).

The definition of A071911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071911.P8636280170417206290

`eq[0, A342634(n)%3]`
-/

namespace A071911.P8636280170417206290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342634 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071911.P8636280170417206290

namespace A071911

/-- `eq[0, A342634(n)%3]` -/
def P8636280170417206290.Spec : Prop :=
  ∀ n, (P8636280170417206290.a n : ℤ) = A071911 n

end A071911

/-! ## A071911.P43043289871869400

`eq[0, A342636(n)%3]`
-/

namespace A071911.P43043289871869400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342636 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071911.P43043289871869400

namespace A071911

/-- `eq[0, A342636(n)%3]` -/
def P43043289871869400.Spec : Prop :=
  ∀ n, (P43043289871869400.a n : ℤ) = A071911 n

end A071911

/-! ## A071911.P14894144207853448793

`eq[0, A071412(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071911

/-- `eq[0, A071412(n)]` -/
def P14894144207853448793.Spec : Prop :=
  ∀ n, (P14894144207853448793.a n : ℤ) = A071911 n

theorem P14894144207853448793.correct : P14894144207853448793.Spec := by
  intro n
  simp only [A071911]

end A071911

/-! ## A071911.P5374733498679387023

`eq[0, A002487(n)%3]`
-/

namespace A071911.P5374733498679387023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002487 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071911.P5374733498679387023

namespace A071911

/-- `eq[0, A002487(n)%3]` -/
def P5374733498679387023.Spec : Prop :=
  ∀ n, (P5374733498679387023.a n : ℤ) = A071911 n

end A071911

/-! ## A071911.P15676080300522886469

`lt[A071412(2*n), 1]`
-/

namespace A071911.P15676080300522886469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071412 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A071911.P15676080300522886469

namespace A071911

/-- `lt[A071412(2*n), 1]` -/
def P15676080300522886469.Spec : Prop :=
  ∀ n, (P15676080300522886469.a n : ℤ) = A071911 n

end A071911

/-! ## A071911.P6470707998836190956

`eq[0, A283976(2*n)%3]`
-/

namespace A071911.P6470707998836190956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283976 (2 * n)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071911.P6470707998836190956

namespace A071911

/-- `eq[0, A283976(2*n)%3]` -/
def P6470707998836190956.Spec : Prop :=
  ∀ n, (P6470707998836190956.a n : ℤ) = A071911 n

end A071911

/-! ## A071911.P18196456319635856497

`eq[3, gcd(3, A002487(2*n))]`
-/

namespace A071911.P18196456319635856497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A002487 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071911.P18196456319635856497

namespace A071911

/-- `eq[3, gcd(3, A002487(2*n))]` -/
def P18196456319635856497.Spec : Prop :=
  ∀ n, (P18196456319635856497.a n : ℤ) = A071911 n

end A071911

/-! ## A071911.P10080259840286577907

`eq[0, A010878(A002487(n)²)]`
-/

namespace A071911.P10080259840286577907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A002487 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071911.P10080259840286577907

namespace A071911

/-- `eq[0, A010878(A002487(n)²)]` -/
def P10080259840286577907.Spec : Prop :=
  ∀ n, (P10080259840286577907.a n : ℤ) = A071911 n

end A071911

/-!
# A071912: a(0) = 0, a(1) = 1; to get a(n+1) for n >= 1, let m = a(n) and consider in turn the numbers k = m-1, m-2, ..., 2, 1, m+1, m+2, m+3, ... until reach a k such that gcd(m,k) = 1 and m/k is different from all a(i)/a(i+1) for i = 0, ..., n-1.

The programs for A071912, there is no canonical definition to state claims against.
-/

/-! ## A071912.P9912991754293341946

`A332294(A000463(n+1))%A080513(n)`
-/

namespace A071912.P9912991754293341946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332294 (A000463 (n + 1)).toNat) (A080513 n)

end

end A071912.P9912991754293341946

/-! ## A071912.P12637894137849967162

`A002487(∑[A211111(A212657(n))])`
-/

namespace A071912.P12637894137849967162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 (A212657 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071912.P12637894137849967162

/-! ## A071912.P9040181512988652888

`A002487(lt[A004849(n+1), A284013(3*n+2)])`
-/

namespace A071912.P9040181512988652888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284013 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A071912.P9040181512988652888

/-! ## A071912.P13143233077952024877

`∑{e}[A000005(A089928(n)), #]`
-/

namespace A071912.P13143233077952024877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A089928 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A071912.P13143233077952024877

/-! ## A071912.P13930365084665613233

`A001222(or(2*n, A192872(n)))`
-/

namespace A071912.P13930365084665613233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (2 * n : ℤ) (A192872 n)).toNat

end

end A071912.P13930365084665613233

/-!
# A071913: Smallest k such that A069624(k) = n.

The programs for A071913, there is no canonical definition to state claims against.
-/

/-! ## A071913.P10079753438211098645

`A003320(3-floor(acot(n))+n)`
-/

namespace A071913.P10079753438211098645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003320 (3 - ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (n : ℤ)).toNat

end

end A071913.P10079753438211098645

/-! ## A071913.P10570159498733783434

`A003320(ceil(sqrt(∑[2*n]))+2)`
-/

namespace A071913.P10570159498733783434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003320 (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 2).toNat

end

end A071913.P10570159498733783434

/-! ## A071913.P421848224321153489

`A003320(n+3)-char[(8*n)²]`
-/

namespace A071913.P421848224321153489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003320 (n + 3) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A071913.P421848224321153489

/-! ## A071913.P7894856619612777400

`A247358(∑[char[1]+1+n]+n+1)`
-/

namespace A071913.P7894856619612777400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247358 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1))

end

end A071913.P7894856619612777400

/-! ## A071913.P3683786306990631925

`record[A003320(A089554(n+4))]`
-/

namespace A071913.P3683786306990631925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003320 (A089554 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071913.P3683786306990631925

/-!
# A071914: Numbers n of the form k + reverse(k) for exactly three k.

The programs for A071914, there is no canonical definition to state claims against.
-/

/-! ## A071914.P3039717798956657364

`A067030(eq[3, A067032(n)])`
-/

namespace A071914.P3039717798956657364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A071914.P3039717798956657364

/-! ## A071914.P1675651328325552358

`A056964(A067033(eq[3, A067032(n)]))`
-/

namespace A071914.P1675651328325552358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A067033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A071914.P1675651328325552358

/-! ## A071914.P14529119497418118046

`A056964(A067034(eq[3, A067032(n)]))`
-/

namespace A071914.P14529119497418118046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A067034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A071914.P14529119497418118046

/-!
# A071916: Primes p such that the number of ones in the binary representation of p! is prime.

The programs for A071916, there is no canonical definition to state claims against.
-/

/-! ## A071916.P7642736957677190459

`p?[n*A105700(A079584(n))]`
-/

namespace A071916.P7642736957677190459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A105700 (A079584 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071916.P7642736957677190459

/-!
# A071917: Number of pairs (x,y) where x is even, y is odd, 1<=x<=n, 1<=y<=n and x+y is prime.

The programs for A071917, the canonical program `A071917.P7587842749427961361` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071917 has offset 1).

The definition of A071917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071917.P7587842749427961361

`∑[A060715(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071917

/-- `∑[A060715(n+1)]` -/
def P7587842749427961361.Spec : Prop :=
  ∀ n, P7587842749427961361.a n = A071917 (n + 1)

theorem P7587842749427961361.correct : P7587842749427961361.Spec := by
  intro n
  simp only [A071917, Nat.add_sub_cancel]

end A071917

/-! ## A071917.P11178884416626157486

`A069879(n+1)/2`
-/

namespace A071917.P11178884416626157486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069879 (n + 1) : ℚ) / 2

end

end A071917.P11178884416626157486

namespace A071917

/-- `A069879(n+1)/2` -/
def P11178884416626157486.Spec : Prop :=
  ∀ n, P11178884416626157486.a n = (A071917 (n + 1) : ℚ)

end A071917

/-! ## A071917.P2927488196301929552

`floor(A292918(n+1)/2)`
-/

namespace A071917.P2927488196301929552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A292918 (n + 1) : ℚ) / 2⌋

end

end A071917.P2927488196301929552

namespace A071917

/-- `floor(A292918(n+1)/2)` -/
def P2927488196301929552.Spec : Prop :=
  ∀ n, P2927488196301929552.a n = A071917 (n + 1)

end A071917

/-! ## A071917.P3660482499451959902

`∑[A108954(n+1)]-1`
-/

namespace A071917.P3660482499451959902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A071917.P3660482499451959902

namespace A071917

/-- `∑[A108954(n+1)]-1` -/
def P3660482499451959902.Spec : Prop :=
  ∀ n, P3660482499451959902.a n = A071917 (n + 1)

end A071917

/-! ## A071917.P2273760822734347956

`∑[n]-A241566(n+1)`
-/

namespace A071917.P2273760822734347956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A241566 (n + 1)

end

end A071917.P2273760822734347956

namespace A071917

/-- `∑[n]-A241566(n+1)` -/
def P2273760822734347956.Spec : Prop :=
  ∀ n, P2273760822734347956.a n = A071917 (n + 1)

end A071917

/-! ## A071917.P13735555180232800865

`∑[n-A307912(n+1)]`
-/

namespace A071917.P13735555180232800865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A307912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071917.P13735555180232800865

namespace A071917

/-- `∑[n-A307912(n+1)]` -/
def P13735555180232800865.Spec : Prop :=
  ∀ n, P13735555180232800865.a n = A071917 (n + 1)

end A071917

/-! ## A071917.P2376630263274661282

`∑[A056171(2*(n+1))]-1`
-/

namespace A071917.P2376630263274661282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A071917.P2376630263274661282

namespace A071917

/-- `∑[A056171(2*(n+1))]-1` -/
def P2376630263274661282.Spec : Prop :=
  ∀ n, P2376630263274661282.a n = A071917 (n + 1)

end A071917

/-! ## A071917.P4577484999188204055

`A056171(Δ[n²]+1)+a(n-1)` with `a(0)=0`
-/

namespace A071917.P4577484999188204055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A056171 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat + a (n - 1)

end

end A071917.P4577484999188204055

namespace A071917

/-- `A056171(Δ[n²]+1)+a(n-1)` -/
def P4577484999188204055.Spec : Prop :=
  ∀ n, P4577484999188204055.a n = A071917 (n + 1)

end A071917

/-! ## A071917.P2026658522310478492

`∑[A056171(A103517(n))]`
-/

namespace A071917.P2026658522310478492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071917.P2026658522310478492

namespace A071917

/-- `∑[A056171(A103517(n))]` -/
def P2026658522310478492.Spec : Prop :=
  ∀ n, P2026658522310478492.a n = A071917 (n + 1)

end A071917

/-! ## A071917.P16464916636796814261

`A066665(n)-A036234(n+1)`
-/

namespace A071917.P16464916636796814261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066665 n - A036234 (n + 1)

end

end A071917.P16464916636796814261

namespace A071917

/-- `A066665(n)-A036234(n+1)` -/
def P16464916636796814261.Spec : Prop :=
  ∀ n, P16464916636796814261.a n = A071917 (n + 1)

end A071917

/-! ## A071917.P13173260764829523158

`∑[A108954(n+1)%A293990(n)]`
-/

namespace A071917.P13173260764829523158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108954 (n + 1)) (A293990 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071917.P13173260764829523158

namespace A071917

/-- `∑[A108954(n+1)%A293990(n)]` -/
def P13173260764829523158.Spec : Prop :=
  ∀ n, P13173260764829523158.a n = A071917 (n + 1)

end A071917

/-! ## A071917.P4365466742824594212

`A066665(n)-(A000720(n+1)+1)`
-/

namespace A071917.P4365466742824594212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066665 n - (A000720 (n + 1) + 1)

end

end A071917.P4365466742824594212

namespace A071917

/-- `A066665(n)-(A000720(n+1)+1)` -/
def P4365466742824594212.Spec : Prop :=
  ∀ n, P4365466742824594212.a n = A071917 (n + 1)

end A071917

/-! ## A071917.P9896470008118954658

`A000124(n)-(A241566(n+1)+1)`
-/

namespace A071917.P9896470008118954658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (A241566 (n + 1) + 1)

end

end A071917.P9896470008118954658

namespace A071917

/-- `A000124(n)-(A241566(n+1)+1)` -/
def P9896470008118954658.Spec : Prop :=
  ∀ n, P9896470008118954658.a n = A071917 (n + 1)

end A071917

/-! ## A071917.P6449267621842701299

`∑[A099801(n)-∑[A010051(n+1)]]`
-/

namespace A071917.P6449267621842701299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071917.P6449267621842701299

namespace A071917

/-- `∑[A099801(n)-∑[A010051(n+1)]]` -/
def P6449267621842701299.Spec : Prop :=
  ∀ n, P6449267621842701299.a n = A071917 (n + 1)

end A071917

/-! ## A071917.P10259636886320495056

`∑[A263995(n+1)%A027424(n+1)]`
-/

namespace A071917.P10259636886320495056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263995 (n + 1)) (A027424 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071917.P10259636886320495056

namespace A071917

/-- `∑[A263995(n+1)%A027424(n+1)]` -/
def P10259636886320495056.Spec : Prop :=
  ∀ n, P10259636886320495056.a n = A071917 (n + 1)

end A071917

/-! ## A071917.P2611222613058868439

`∑[A000720(2*n+1)-A000720(n+1)]`
-/

namespace A071917.P2611222613058868439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * n + 1) - A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071917.P2611222613058868439

namespace A071917

/-- `∑[A000720(2*n+1)-A000720(n+1)]` -/
def P2611222613058868439.Spec : Prop :=
  ∀ n, P2611222613058868439.a n = A071917 (n + 1)

end A071917

/-! ## A071917.P16360322332943624327

`∑[A035250(n+1)-C(A000010(n+1), n)]`
-/

namespace A071917.P16360322332943624327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (n + 1) - (Nat.choose (A000010 (n + 1)).toNat n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071917.P16360322332943624327

namespace A071917

/-- `∑[A035250(n+1)-C(A000010(n+1), n)]` -/
def P16360322332943624327.Spec : Prop :=
  ∀ n, P16360322332943624327.a n = A071917 (n + 1)

end A071917

/-! ## A071917.P8083827557768260521

`∑[A294602(2*(n+1))]`
-/

namespace A071917.P8083827557768260521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294602 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071917.P8083827557768260521

namespace A071917

/-- `∑[A294602(2*(n+1))]` -/
def P8083827557768260521.Spec : Prop :=
  ∀ n, P8083827557768260521.a n = A071917 (n + 1)

end A071917

/-! ## A071917.P18368222635847345299

`∑[A056171(A014684(2*(n+1)))]`
-/

namespace A071917.P18368222635847345299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A014684 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071917.P18368222635847345299

namespace A071917

/-- `∑[A056171(A014684(2*(n+1)))]` -/
def P18368222635847345299.Spec : Prop :=
  ∀ n, P18368222635847345299.a n = A071917 (n + 1)

end A071917

/-! ## A071917.P1899252721496395354

`∑[A230980(2*n+1)-A230980(n+1)]`
-/

namespace A071917.P1899252721496395354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (2 * n + 1) - A230980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071917.P1899252721496395354

namespace A071917

/-- `∑[A230980(2*n+1)-A230980(n+1)]` -/
def P1899252721496395354.Spec : Prop :=
  ∀ n, P1899252721496395354.a n = A071917 (n + 1)

end A071917

/-!
# A071918: First appearance in the decimal expansion of Pi of the first n digits of the decimal expansion of e.

The programs for A071918, there is no canonical definition to state claims against.
-/

/-! ## A071918.P11851392951320423438

`A090898(n+1)+1`
-/

namespace A071918.P11851392951320423438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090898 (n + 1) + 1

end

end A071918.P11851392951320423438

/-!
# A071919: Number of monotone nondecreasing functions [n]->[m] for n >= 0, m >= 0, read by antidiagonals.

The programs for A071919, the canonical program `A071919.P9690953176738005396` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071919 has offset 0).

The definition of A071919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071919.P13071452468543040102

`abs(A110555(n))`
-/

namespace A071919.P13071452468543040102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110555 n|

end

end A071919.P13071452468543040102

namespace A071919

/-- `abs(A110555(n))` -/
def P13071452468543040102.Spec : Prop :=
  ∀ n, P13071452468543040102.a n = A071919 n

end A071919

/-! ## A071919.P17949066361546946911

`A097805(ceil(abs(sin(n)))+n)`
-/

namespace A071919.P17949066361546946911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (⌈|Real.sin (n : ℝ)|⌉ + (n : ℤ)).toNat

end

end A071919.P17949066361546946911

namespace A071919

/-- `A097805(ceil(abs(sin(n)))+n)` -/
def P17949066361546946911.Spec : Prop :=
  ∀ n, P17949066361546946911.a n = A071919 n

end A071919

/-! ## A071919.P6304891925322889352

`A037012(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A071919.P6304891925322889352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A037012 n + a (n - 1)

end

end A071919.P6304891925322889352

namespace A071919

/-- `A037012(n)+a(n-1)` -/
def P6304891925322889352.Spec : Prop :=
  ∀ n, P6304891925322889352.a n = A071919 n

end A071919

/-! ## A071919.P10968681308495789810

`A080232(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A071919.P10968681308495789810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A080232 n + a (n - 1)

end

end A071919.P10968681308495789810

namespace A071919

/-- `A080232(n)+a(n-1)` -/
def P10968681308495789810.Spec : Prop :=
  ∀ n, P10968681308495789810.a n = A071919 n

end A071919

/-! ## A071919.P9690953176738005396

`A007318(n)-a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A071919

/-- `A007318(n)-a(n-1)` -/
def P9690953176738005396.Spec : Prop :=
  ∀ n, P9690953176738005396.a n = A071919 n

theorem P9690953176738005396.correct : P9690953176738005396.Spec := by
  intro n
  simp only [A071919]

end A071919

/-! ## A071919.P15369659525495223367

`a(n-1)-A008482(n)` with `a(0)=1, a(1)=1`
-/

namespace A071919.P15369659525495223367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - A008482 n

end

end A071919.P15369659525495223367

namespace A071919

/-- `a(n-1)-A008482(n)` -/
def P15369659525495223367.Spec : Prop :=
  ∀ n, P15369659525495223367.a n = A071919 n

end A071919

/-! ## A071919.P13298761617759880391

`a(n-1)-A112467(n)` with `a(0)=1, a(1)=1`
-/

namespace A071919.P13298761617759880391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - A112467 n

end

end A071919.P13298761617759880391

namespace A071919

/-- `a(n-1)-A112467(n)` -/
def P13298761617759880391.Spec : Prop :=
  ∀ n, P13298761617759880391.a n = A071919 n

end A071919

/-! ## A071919.P17494686861063748852

`A097805((n+1)%(2*n+1))`
-/

namespace A071919.P17494686861063748852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 ((n + 1) % (2 * n + 1))

end

end A071919.P17494686861063748852

namespace A071919

/-- `A097805((n+1)%(2*n+1))` -/
def P17494686861063748852.Spec : Prop :=
  ∀ n, P17494686861063748852.a n = A071919 n

end A071919

/-! ## A071919.P743158415131713639

`A097805(A061579(n))`
-/

namespace A071919.P743158415131713639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A061579 n).toNat

end

end A071919.P743158415131713639

namespace A071919

/-- `A097805(A061579(n))` -/
def P743158415131713639.Spec : Prop :=
  ∀ n, P743158415131713639.a n = A071919 n

end A071919

/-! ## A071919.P4682321338088790845

`A206735(A271439(n))`
-/

namespace A071919.P4682321338088790845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (A271439 n).toNat

end

end A071919.P4682321338088790845

namespace A071919

/-- `A206735(A271439(n))` -/
def P4682321338088790845.Spec : Prop :=
  ∀ n, P4682321338088790845.a n = A071919 n

end A071919

/-! ## A071919.P8063689501559508322

`A097805(A028310(n)+1)`
-/

namespace A071919.P8063689501559508322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A028310 n + 1).toNat

end

end A071919.P8063689501559508322

namespace A071919

/-- `A097805(A028310(n)+1)` -/
def P8063689501559508322.Spec : Prop :=
  ∀ n, P8063689501559508322.a n = A071919 n

end A071919

/-! ## A071919.P407028383813287576

`A097805(A087156(n+1))`
-/

namespace A071919.P407028383813287576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A087156 (n + 1)).toNat

end

end A071919.P407028383813287576

namespace A071919

/-- `A097805(A087156(n+1))` -/
def P407028383813287576.Spec : Prop :=
  ∀ n, P407028383813287576.a n = A071919 n

end A071919

/-! ## A071919.P3693551918497181166

`A097805(n)+A037012(n)`
-/

namespace A071919.P3693551918497181166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + A037012 n

end

end A071919.P3693551918497181166

namespace A071919

/-- `A097805(n)+A037012(n)` -/
def P3693551918497181166.Spec : Prop :=
  ∀ n, P3693551918497181166.a n = A071919 n

end A071919

/-! ## A071919.P2796755336545229982

`A097805(A054977(n)+n)`
-/

namespace A071919.P2796755336545229982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A054977 n + (n : ℤ)).toNat

end

end A071919.P2796755336545229982

namespace A071919

/-- `A097805(A054977(n)+n)` -/
def P2796755336545229982.Spec : Prop :=
  ∀ n, P2796755336545229982.a n = A071919 n

end A071919

/-! ## A071919.P2361066549912528172

`A097805(A057427(n)+n)`
-/

namespace A071919.P2361066549912528172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A057427 n + (n : ℤ)).toNat

end

end A071919.P2361066549912528172

namespace A071919

/-- `A097805(A057427(n)+n)` -/
def P2361066549912528172.Spec : Prop :=
  ∀ n, P2361066549912528172.a n = A071919 n

end A071919

/-! ## A071919.P5246249983691549195

`A097805(A114327(n)+n)`
-/

namespace A071919.P5246249983691549195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A114327 n + (n : ℤ)).toNat

end

end A071919.P5246249983691549195

namespace A071919

/-- `A097805(A114327(n)+n)` -/
def P5246249983691549195.Spec : Prop :=
  ∀ n, P5246249983691549195.a n = A071919 n

end A071919

/-! ## A071919.P10343664352665754229

`A298485(n)+A008482(n)`
-/

namespace A071919.P10343664352665754229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298485 n + A008482 n

end

end A071919.P10343664352665754229

namespace A071919

/-- `A298485(n)+A008482(n)` -/
def P10343664352665754229.Spec : Prop :=
  ∀ n, P10343664352665754229.a n = A071919 n

end A071919

/-! ## A071919.P9564826582722972516

`A097805(n)-A008482(n)`
-/

namespace A071919.P9564826582722972516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n - A008482 n

end

end A071919.P9564826582722972516

namespace A071919

/-- `A097805(n)-A008482(n)` -/
def P9564826582722972516.Spec : Prop :=
  ∀ n, P9564826582722972516.a n = A071919 n

end A071919

/-! ## A071919.P16379025388294412922

`A298485(n)-A037012(n)`
-/

namespace A071919.P16379025388294412922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298485 n - A037012 n

end

end A071919.P16379025388294412922

namespace A071919

/-- `A298485(n)-A037012(n)` -/
def P16379025388294412922.Spec : Prop :=
  ∀ n, P16379025388294412922.a n = A071919 n

end A071919

/-! ## A071919.P9551045426107150778

`A367270(n)/A007318(n)`
-/

namespace A071919.P9551045426107150778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367270 n : ℚ) / (A007318 n : ℚ)

end

end A071919.P9551045426107150778

namespace A071919

/-- `A367270(n)/A007318(n)` -/
def P9551045426107150778.Spec : Prop :=
  ∀ n, P9551045426107150778.a n = (A071919 n : ℚ)

end A071919

/-!
# A071920: Square array giving number of unimodal functions [n]->[m] for n>=0, m>=0, with a(0,m)=0 for all m>=0, read by antidiagonals.

The programs for A071920, there is no canonical definition to state claims against.
-/

/-! ## A071920.P2285741459485558602

`A071921(n)-char[∑[n]]`
-/

namespace A071920.P2285741459485558602
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A071920.P2285741459485558602

/-! ## A071920.P10542012108675865217

`A071921(n)%A071922(n)`
-/

namespace A071920.P10542012108675865217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071921 n) (A071922 n)

end

end A071920.P10542012108675865217

/-! ## A071920.P13563429672425372476

`xor(A010054(n), A071921(n))`
-/

namespace A071920.P13563429672425372476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010054 n) (A071921 n)

end

end A071920.P13563429672425372476

/-! ## A071920.P12060523802349996357

`(1-A103451(n))*A071921(n)`
-/

namespace A071920.P12060523802349996357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A103451 n) * A071921 n

end

end A071920.P12060523802349996357

/-! ## A071920.P9579288143504046090

`char[A014132(n+1)]*A071921(n)`
-/

namespace A071920.P9579288143504046090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A071921 n

end

end A071920.P9579288143504046090

/-! ## A071920.P18436525609225658557

`A023532(n-A023532(n))*A071921(n)`
-/

namespace A071920.P18436525609225658557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 ((n : ℤ) - A023532 n).toNat * A071921 n

end

end A071920.P18436525609225658557

/-! ## A071920.P4673028037001689583

`A023532(A061579(n))*A071921(n)`
-/

namespace A071920.P4673028037001689583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A061579 n).toNat * A071921 n

end

end A071920.P4673028037001689583

/-!
# A071921: Square array giving number of unimodal functions [n]->[m] for n>=0, m>=0, with a(0,m)=1 by definition, read by antidiagonals.

The programs for A071921, there is no canonical definition to state claims against.
-/

/-! ## A071921.P2030981800694741878

`A071920(n)+char[∑[n]]`
-/

namespace A071921.P2030981800694741878
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071920 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A071921.P2030981800694741878

/-! ## A071921.P5885828172356224963

`gcd(A071920(n), A106459(n))`
-/

namespace A071921.P5885828172356224963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071920 n) (A106459 n)

end

end A071921.P5885828172356224963

/-! ## A071921.P11077032389285601916

`or(A010054(n), A071920(n))`
-/

namespace A071921.P11077032389285601916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A071920 n)

end

end A071921.P11077032389285601916

/-! ## A071921.P9932224971188106586

`or(char[A000217(n)], A071920(n))`
-/

namespace A071921.P9932224971188106586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A071920 n)

end

end A071921.P9932224971188106586

/-! ## A071921.P11171402900793853962

`abs(A071920(A028310(n))-A106459(n))`
-/

namespace A071921.P11171402900793853962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071920 (A028310 n).toNat - A106459 n|

end

end A071921.P11171402900793853962

/-! ## A071921.P3633065707930677856

`A071920(n)^A001221(A059268(n))`
-/

namespace A071921.P3633065707930677856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071920 n : ℚ) ^ (A001221 (A059268 n).toNat : ℤ)

end

end A071921.P3633065707930677856

/-!
# A071922: Unimodal analog of binomial coefficient, such that A071921(n,m) = a(n+m-1,n) for all (n,m) different from (0,0), arranged in a Pascal-like triangle.

The programs for A071922, there is no canonical definition to state claims against.
-/

/-! ## A071922.P3169027258465471894

`A210219(n+1)+A210219(n+2)-A210220(n+2)`
-/

namespace A071922.P3169027258465471894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (n + 1) + (A210219 (n + 2) - A210220 (n + 2))

end

end A071922.P3169027258465471894

/-! ## A071922.P458530959484678816

`A071921(A007401(n+1))`
-/

namespace A071922.P458530959484678816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (A007401 (n + 1)).toNat

end

end A071922.P458530959484678816

/-! ## A071922.P1874540997435758826

`A071921(A014132(n+1)-1)`
-/

namespace A071922.P1874540997435758826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (A014132 (n + 1) - 1).toNat

end

end A071922.P1874540997435758826

/-! ## A071922.P6847084611452077051

`A071921(A002024(n+1)+n)`
-/

namespace A071922.P6847084611452077051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (A002024 (n + 1) + (n : ℤ)).toNat

end

end A071922.P6847084611452077051

/-! ## A071922.P10154408757569182177

`A071921(record[(n+1)%(A071921(n+1)+n+1)])`
-/

namespace A071922.P10154408757569182177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A071921 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071922.P10154408757569182177

/-! ## A071922.P11398829085184568446

`A071921(eq[A071920(n), A071921(n)]-1)`
-/

namespace A071922.P11398829085184568446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n - 1)

end

end A071922.P11398829085184568446

/-! ## A071922.P15418393881266220559

`A071921(lt[A010060(n+2), A123223(n)])`
-/

namespace A071922.P15418393881266220559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A071922.P15418393881266220559

/-! ## A071922.P1415669661982530682

`A071921(eq[A071920(n+1), A071921(n+1)])`
-/

namespace A071922.P1415669661982530682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A071922.P1415669661982530682

/-! ## A071922.P14191675858261067737

`A071921(lt[1, A210219(n+1)])`
-/

namespace A071922.P14191675858261067737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A071922.P14191675858261067737

/-! ## A071922.P141409983022424891

`A071921(lt[1, A071921(n)*A134059(n)])`
-/

namespace A071922.P141409983022424891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 n * A134059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A071922.P141409983022424891

/-! ## A071922.P17335611055372768498

`A071921(lt[1/A134059(n), A071921(n)])`
-/

namespace A071922.P17335611055372768498
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A134059 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A071922.P17335611055372768498

/-! ## A071922.P14609493755543071625

`A071921(lt[1, A067410(n)])`
-/

namespace A071922.P14609493755543071625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A071922.P14609493755543071625

/-! ## A071922.P18298612881503282037

`A071921(eq[A202394(n+1)², A202394(n+1)])`
-/

namespace A071922.P18298612881503282037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202394 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A071922.P18298612881503282037

/-! ## A071922.P7563344035834705328

`A071921(lt[1, A071951(n+1)])`
-/

namespace A071922.P7563344035834705328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A071922.P7563344035834705328

/-! ## A071922.P7734069689393682487

`A131334(A185868(n+1))`
-/

namespace A071922.P7734069689393682487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131334 (A185868 (n + 1)).toNat

end

end A071922.P7734069689393682487

/-! ## A071922.P7162582508482361960

`A131334(A185870(n+1))`
-/

namespace A071922.P7162582508482361960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131334 (A185870 (n + 1)).toNat

end

end A071922.P7162582508482361960

/-!
# A071923: a(n) is the prime p such that pi(n^2, (n+1)^2+1) = pi((n+1)^2, p) where pi(s,t) = pi(t) - pi(s) is the number of primes between s and t.

The programs for A071923, the canonical program `A071923.P103564520230020603` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071923 has offset 1).

The definition of A071923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071923.P7897438807553863712

`A000040(A038107(n+2)+A014085(n+1))`
-/

namespace A071923.P7897438807553863712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A038107 (n + 2) + A014085 (n + 1)).toNat

end

end A071923.P7897438807553863712

namespace A071923

/-- `A000040(A038107(n+2)+A014085(n+1))` -/
def P7897438807553863712.Spec : Prop :=
  ∀ n, P7897438807553863712.a n = A071923 (n + 1)

end A071923

/-! ## A071923.P5343245992529715827

`A000040(A014085(n+1)+∑[A014085(n+1)])`
-/

namespace A071923.P5343245992529715827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A014085 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071923.P5343245992529715827

namespace A071923

/-- `A000040(A014085(n+1)+∑[A014085(n+1)])` -/
def P5343245992529715827.Spec : Prop :=
  ∀ n, P5343245992529715827.a n = A071923 (n + 1)

end A071923

/-! ## A071923.P6912727539412345151

`A000040(A038107(n+2)+Δ[A038107(n+1)])`
-/

namespace A071923.P6912727539412345151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A038107 (n + 2) + (f1 (n + 1) - f1 n)).toNat

end

end A071923.P6912727539412345151

namespace A071923

/-- `A000040(A038107(n+2)+Δ[A038107(n+1)])` -/
def P6912727539412345151.Spec : Prop :=
  ∀ n, P6912727539412345151.a n = A071923 (n + 1)

end A071923

/-! ## A071923.P3694839768324300548

`A000040(A014085(n+1)+A132635(n+2)-2)`
-/

namespace A071923.P3694839768324300548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A014085 (n + 1) + (A132635 (n + 2) - 2)).toNat

end

end A071923.P3694839768324300548

namespace A071923

/-- `A000040(A014085(n+1)+A132635(n+2)-2)` -/
def P3694839768324300548.Spec : Prop :=
  ∀ n, P3694839768324300548.a n = A071923 (n + 1)

end A071923

/-! ## A071923.P103564520230020603

`record[A000040(2*A213649(n+1)+n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071923

/-- `record[A000040(2*A213649(n+1)+n)]` -/
def P103564520230020603.Spec : Prop :=
  ∀ n, P103564520230020603.a n = A071923 (n + 1)

theorem P103564520230020603.correct : P103564520230020603.Spec := by
  intro n
  simp only [A071923, Nat.add_sub_cancel]

end A071923

/-!
# A071925: Digitally balanced numbers: binary numbers which have the same number of 0's as 1's; decimal representation: A031443.

The programs for A071925, there is no canonical definition to state claims against.
-/

/-! ## A071925.P647480460999002300

`A007088(A031443(n+1))`
-/

namespace A071925.P647480460999002300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A031443 (n + 1)).toNat

end

end A071925.P647480460999002300

/-! ## A071925.P12633272183439345385

`A007088(∑[A145057(n+1)])`
-/

namespace A071925.P12633272183439345385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071925.P12633272183439345385

/-! ## A071925.P12920499730234252168

`A007088(∑[∑[A145058(n+1)]])`
-/

namespace A071925.P12920499730234252168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145058 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071925.P12920499730234252168

/-! ## A071925.P17333753148441285465

`A007088(floor(A337238(n+1)/4))`
-/

namespace A071925.P17333753148441285465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ⌊(A337238 (n + 1) : ℚ) / 4⌋.toNat

end

end A071925.P17333753148441285465

/-! ## A071925.P14080533326525165246

`A007088(eq[0, A037861(n)])`
-/

namespace A071925.P14080533326525165246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A071925.P14080533326525165246

/-! ## A071925.P1274779244751659807

`A007088(eq[2, A099246(n)])`
-/

namespace A071925.P1274779244751659807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A071925.P1274779244751659807

/-! ## A071925.P13183460700129481993

`A007088(eq[A000120(n), A023416(n)])`
-/

namespace A071925.P13183460700129481993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A071925.P13183460700129481993

/-! ## A071925.P62758871502588292

`A007088(eq[n, A023416(n)+A011371(n)])`
-/

namespace A071925.P62758871502588292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n + A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A071925.P62758871502588292

/-! ## A071925.P3768730220014708758

`A007088(eq[A023416(n)+n, A092391(n)])`
-/

namespace A071925.P3768730220014708758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A071925.P3768730220014708758

/-! ## A071925.P16576606353744622376

`A007088(eq[n-A011371(n), A023416(n)])`
-/

namespace A071925.P16576606353744622376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A071925.P16576606353744622376

/-! ## A071925.P2915918947111712

`A007088(eq[n, A092391(n)-A023416(n)])`
-/

namespace A071925.P2915918947111712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n - A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A071925.P2915918947111712

/-! ## A071925.P4881883080405192587

`A185544(2*A031443(n+1))`
-/

namespace A071925.P4881883080405192587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A031443 (n + 1)).toNat

end

end A071925.P4881883080405192587

/-!
# A071927: Barely abundant numbers: abundant n such that sigma(n)/n < sigma(m)/m for all abundant numbers m

The programs for A071927, there is no canonical definition to state claims against.
-/

/-! ## A071927.P3100552418509153042

`eq[n+1, A004525(A039653(n))]`
-/

namespace A071927.P3100552418509153042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071927.P3100552418509153042

/-! ## A071927.P18318260393437324405

`eq[A002265(A039653(n)), A065033(n)]`
-/

namespace A071927.P18318260393437324405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A039653 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071927.P18318260393437324405

/-! ## A071927.P15911885429592430712

`eq[A004525(A039653(n)), A079097(n)]`
-/

namespace A071927.P15911885429592430712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A039653 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071927.P15911885429592430712

/-! ## A071927.P9965150591951839829

`eq[A004525(A039653(n)), A109613(n)]`
-/

namespace A071927.P9965150591951839829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A039653 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071927.P9965150591951839829

/-! ## A071927.P3898694052621876782

`eq[A004525(A039653(n)), A165998(n)]`
-/

namespace A071927.P3898694052621876782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A039653 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071927.P3898694052621876782

/-!
# A071928: Kolakoski-(2,4) sequence: a(n) is length of n-th run.

The programs for A071928, the canonical program `A071928.P9769688946254104002` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071928 has offset 1).

The definition of A071928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071928.P501731865545244913

`2*A157129(n+1)`
-/

namespace A071928.P501731865545244913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A157129 (n + 1)

end

end A071928.P501731865545244913

namespace A071928

/-- `2*A157129(n+1)` -/
def P501731865545244913.Spec : Prop :=
  ∀ n, P501731865545244913.a n = A071928 (n + 1)

end A071928

/-! ## A071928.P4633137155199495533

`2^A157129(n-and(1, n)+1)`
-/

namespace A071928.P4633137155199495533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A157129 ((n : ℤ) - (Nat.land 1 n : ℤ) + 1).toNat : ℤ)

end

end A071928.P4633137155199495533

namespace A071928

/-- `2^A157129(n-and(1, n)+1)` -/
def P4633137155199495533.Spec : Prop :=
  ∀ n, P4633137155199495533.a n = (A071928 (n + 1) : ℚ)

end A071928

/-! ## A071928.P3747166587057536455

`2*(A284775(∑[char[2*n]])+1)`
-/

namespace A071928.P3747166587057536455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284775 (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A071928.P3747166587057536455

namespace A071928

/-- `2*(A284775(∑[char[2*n]])+1)` -/
def P3747166587057536455.Spec : Prop :=
  ∀ n, P3747166587057536455.a n = A071928 (n + 1)

end A071928

/-! ## A071928.P16123099692629981216

`2^(A284775(A008619(n))+1)`
-/

namespace A071928.P16123099692629981216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A284775 (A008619 n).toNat + 1 : ℤ)

end

end A071928.P16123099692629981216

namespace A071928

/-- `2^(A284775(A008619(n))+1)` -/
def P16123099692629981216.Spec : Prop :=
  ∀ n, P16123099692629981216.a n = (A071928 (n + 1) : ℚ)

end A071928

/-! ## A071928.P10802824047321517202

`A157129(n+1)+A157129(A109613(n))`
-/

namespace A071928.P10802824047321517202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157129 (n + 1) + A157129 (A109613 n).toNat

end

end A071928.P10802824047321517202

namespace A071928

/-- `A157129(n+1)+A157129(A109613(n))` -/
def P10802824047321517202.Spec : Prop :=
  ∀ n, P10802824047321517202.a n = A071928 (n + 1)

end A071928

/-! ## A071928.P9769688946254104002

`A001316(A284775(A008619(n))+A001316(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A071928

/-- `A001316(A284775(A008619(n))+A001316(n))` -/
def P9769688946254104002.Spec : Prop :=
  ∀ n, P9769688946254104002.a n = A071928 (n + 1)

theorem P9769688946254104002.correct : P9769688946254104002.Spec := by
  intro n
  simp only [A071928, Nat.add_sub_cancel]

end A071928

/-! ## A071928.P13716651196412584588

`Δ[2*comp[A284795(n+1)]]`
-/

namespace A071928.P13716651196412584588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284795 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A071928.P13716651196412584588

namespace A071928

/-- `Δ[2*comp[A284795(n+1)]]` -/
def P13716651196412584588.Spec : Prop :=
  ∀ n, P13716651196412584588.a n = A071928 (n + 1)

end A071928

/-! ## A071928.P7193664589913180225

`and(6, A284775(A065033(n+1))+3)`
-/

namespace A071928.P7193664589913180225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A284775 (A065033 (n + 1)).toNat + 3)

end

end A071928.P7193664589913180225

namespace A071928

/-- `and(6, A284775(A065033(n+1))+3)` -/
def P7193664589913180225.Spec : Prop :=
  ∀ n, P7193664589913180225.a n = A071928 (n + 1)

end A071928

/-! ## A071928.P8511981689614697861

`A284795(Δ[comp[A284795(n+1)]])-1`
-/

namespace A071928.P8511981689614697861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284795 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284795 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A071928.P8511981689614697861

namespace A071928

/-- `A284795(Δ[comp[A284795(n+1)]])-1` -/
def P8511981689614697861.Spec : Prop :=
  ∀ n, P8511981689614697861.a n = A071928 (n + 1)

end A071928

/-! ## A071928.P11631405325839532802

`A272327(A008805(n)-A284775(A008619(n)))`
-/

namespace A071928.P11631405325839532802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272327 (A008805 n - A284775 (A008619 n).toNat).toNat

end

end A071928.P11631405325839532802

namespace A071928

/-- `A272327(A008805(n)-A284775(A008619(n)))` -/
def P11631405325839532802.Spec : Prop :=
  ∀ n, P11631405325839532802.a n = A071928 (n + 1)

end A071928

/-!
# A071929: Numbers k such that the sum of exponents of k is equal to the greatest prime factor of k; a(1)=1.

The programs for A071929, there is no canonical definition to state claims against.
-/

/-! ## A071929.P11510585335684260291

`eq[1, A006530(n)/a(A001222(n))]` with `a(0)=2, a(1)=1`
-/

namespace A071929.P11510585335684260291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  (A006530 n : ℚ) / f2 (A001222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A071929.P11510585335684260291

/-! ## A071929.P8472978005375424231

`eq[1, C(A006530(n+1), A001222(n+1))]+1`
-/

namespace A071929.P8472978005375424231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat (A001222 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071929.P8472978005375424231

/-! ## A071929.P2482463298712875003

`eq[A006530(n+1), A086436(n+1)]+1`
-/

namespace A071929.P2482463298712875003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071929.P2482463298712875003

/-! ## A071929.P11692835364843972775

`A065475(eq[A085392(n+1), A263297(n+1)])`
-/

namespace A071929.P11692835364843972775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A071929.P11692835364843972775

/-! ## A071929.P16922909128537317004

`eq[A001222(n+1), A008472(A053585(n+1))]+1`
-/

namespace A071929.P16922909128537317004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A053585 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071929.P16922909128537317004

/-!
# A071930: Number of words of length 2n in the two letters s and t that reduce to the identity 1 by using the relations ssTT=1, ststSS=1 and ststTT=1, where S and T are the inverses of s and t, respectively (i.e., sS=1 and tT=1). The generators s and t and the three stated relations generate the quaternion group Q4.

The programs for A071930, the canonical program `A071930.P4567808858666721799` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071930 has offset 1).

The definition of A071930 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071930.P9227849782834988898

`4^n-(-2)^n`
-/

namespace A071930.P9227849782834988898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - (-2) ^ n

end

end A071930.P9227849782834988898

namespace A071930

/-- `4^n-(-2)^n` -/
def P9227849782834988898.Spec : Prop :=
  ∀ n, P9227849782834988898.a n = A071930 (n + 1)

end A071930

/-! ## A071930.P4567808858666721799

`2*A003674(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A071930

/-- `2*A003674(n)` -/
def P4567808858666721799.Spec : Prop :=
  ∀ n, P4567808858666721799.a n = A071930 (n + 1)

theorem P4567808858666721799.correct : P4567808858666721799.Spec := by
  intro n
  simp only [A071930, Nat.add_sub_cancel]

end A071930

/-! ## A071930.P3573072845231819547

`6*A003683(n)`
-/

namespace A071930.P3573072845231819547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A003683 n

end

end A071930.P3573072845231819547

namespace A071930

/-- `6*A003683(n)` -/
def P3573072845231819547.Spec : Prop :=
  ∀ n, P3573072845231819547.a n = A071930 (n + 1)

end A071930

/-! ## A071930.P16951805869955601219

`ogf(6x/(1-2x-8x^2))`
-/

namespace A071930.P16951805869955601219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -2, -8] n

end

end A071930.P16951805869955601219

namespace A071930

/-- `ogf(6x/(1-2x-8x^2))` -/
def P16951805869955601219.Spec : Prop :=
  ∀ n, P16951805869955601219.a n = A071930 (n + 1)

end A071930

/-! ## A071930.P3432748867386345497

`lcm(2^n, Δ[3*floor(2^n/3)])`
-/

namespace A071930.P3432748867386345497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(2 ^ n : ℚ) / 3⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (f1 (n + 1) - f1 n)

end

end A071930.P3432748867386345497

namespace A071930

/-- `lcm(2^n, Δ[3*floor(2^n/3)])` -/
def P3432748867386345497.Spec : Prop :=
  ∀ n, (P3432748867386345497.a n : ℤ) = A071930 (n + 1)

end A071930

/-! ## A071930.P12742762319111556465

`2*(a(n-1)+4*a(n-2))` with `a(0)=0, a(1)=6`
-/

namespace A071930.P12742762319111556465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n a =>
  2 * (a (n - 1) + 4 * a (n - 2))

end

end A071930.P12742762319111556465

namespace A071930

/-- `2*(a(n-1)+4*a(n-2))` -/
def P12742762319111556465.Spec : Prop :=
  ∀ n, (P12742762319111556465.a n : ℤ) = A071930 (n + 1)

end A071930

/-! ## A071930.P17274542409185211061

`3*A192382(n+1)`
-/

namespace A071930.P17274542409185211061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A192382 (n + 1)

end

end A071930.P17274542409185211061

namespace A071930

/-- `3*A192382(n+1)` -/
def P17274542409185211061.Spec : Prop :=
  ∀ n, P17274542409185211061.a n = A071930 (n + 1)

end A071930

/-! ## A071930.P8998529968974781607

`2^n*A062510(n)`
-/

namespace A071930.P8998529968974781607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A062510 n

end

end A071930.P8998529968974781607

namespace A071930

/-- `2^n*A062510(n)` -/
def P8998529968974781607.Spec : Prop :=
  ∀ n, P8998529968974781607.a n = A071930 (n + 1)

end A071930

/-! ## A071930.P4950558505070075648

`floor(Δ[A101622(n)/2]²)`
-/

namespace A071930.P4950558505070075648
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101622 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n) ^ 2⌋

end

end A071930.P4950558505070075648

namespace A071930

/-- `floor(Δ[A101622(n)/2]²)` -/
def P4950558505070075648.Spec : Prop :=
  ∀ n, P4950558505070075648.a n = A071930 (n + 1)

end A071930

/-! ## A071930.P6957525564113450059

`3/2*A054881(n+1)`
-/

namespace A071930.P6957525564113450059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A054881 (n + 1) : ℚ)

end

end A071930.P6957525564113450059

namespace A071930

/-- `3/2*A054881(n+1)` -/
def P6957525564113450059.Spec : Prop :=
  ∀ n, P6957525564113450059.a n = (A071930 (n + 1) : ℚ)

end A071930

/-! ## A071930.P1504196848060409018

`floor((A014551(n+1)/2)²)`
-/

namespace A071930.P1504196848060409018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A014551 (n + 1) : ℚ) / 2) ^ 2⌋

end

end A071930.P1504196848060409018

namespace A071930

/-- `floor((A014551(n+1)/2)²)` -/
def P1504196848060409018.Spec : Prop :=
  ∀ n, P1504196848060409018.a n = A071930 (n + 1)

end A071930

/-! ## A071930.P3578718514212684721

`round(2^n/3)*A007283(n)`
-/

namespace A071930.P3578718514212684721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) * A007283 n

end

end A071930.P3578718514212684721

namespace A071930

/-- `round(2^n/3)*A007283(n)` -/
def P3578718514212684721.Spec : Prop :=
  ∀ n, P3578718514212684721.a n = A071930 (n + 1)

end A071930

/-! ## A071930.P13744814628262152808

`2*A137173(A014601(n))`
-/

namespace A071930.P13744814628262152808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137173 (A014601 n).toNat

end

end A071930.P13744814628262152808

namespace A071930

/-- `2*A137173(A014601(n))` -/
def P13744814628262152808.Spec : Prop :=
  ∀ n, P13744814628262152808.a n = A071930 (n + 1)

end A071930

/-! ## A071930.P11128864840113580253

`A003945(n)*A014113(n)`
-/

namespace A071930.P11128864840113580253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n * A014113 n

end

end A071930.P11128864840113580253

namespace A071930

/-- `A003945(n)*A014113(n)` -/
def P11128864840113580253.Spec : Prop :=
  ∀ n, P11128864840113580253.a n = A071930 (n + 1)

end A071930

/-! ## A071930.P5596989913660675970

`A014113(n)*A042950(n)`
-/

namespace A071930.P5596989913660675970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014113 n * A042950 n

end

end A071930.P5596989913660675970

namespace A071930

/-- `A014113(n)*A042950(n)` -/
def P5596989913660675970.Spec : Prop :=
  ∀ n, P5596989913660675970.a n = A071930 (n + 1)

end A071930

/-! ## A071930.P13972344428092645149

`A062510(n)*A155559(n)`
-/

namespace A071930.P13972344428092645149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 n * A155559 n

end

end A071930.P13972344428092645149

namespace A071930

/-- `A062510(n)*A155559(n)` -/
def P13972344428092645149.Spec : Prop :=
  ∀ n, P13972344428092645149.a n = A071930 (n + 1)

end A071930

/-! ## A071930.P12556629059559558335

`xor(A062510(n), A247281(n))`
-/

namespace A071930.P12556629059559558335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A062510 n) (A247281 n)

end

end A071930.P12556629059559558335

namespace A071930

/-- `xor(A062510(n), A247281(n))` -/
def P12556629059559558335.Spec : Prop :=
  ∀ n, P12556629059559558335.a n = A071930 (n + 1)

end A071930

/-! ## A071930.P14915747596636569594

`Δ[A007283(n)]*A001045(n)`
-/

namespace A071930.P14915747596636569594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001045 n

end

end A071930.P14915747596636569594

namespace A071930

/-- `Δ[A007283(n)]*A001045(n)` -/
def P14915747596636569594.Spec : Prop :=
  ∀ n, P14915747596636569594.a n = A071930 (n + 1)

end A071930

/-! ## A071930.P14113591696953092477

`A001045(n)*A003945(n+1)`
-/

namespace A071930.P14113591696953092477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A003945 (n + 1)

end

end A071930.P14113591696953092477

namespace A071930

/-- `A001045(n)*A003945(n+1)` -/
def P14113591696953092477.Spec : Prop :=
  ∀ n, P14113591696953092477.a n = A071930 (n + 1)

end A071930

/-! ## A071930.P13542252872863254376

`A001045(n)*A042950(n+1)`
-/

namespace A071930.P13542252872863254376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A042950 (n + 1)

end

end A071930.P13542252872863254376

namespace A071930

/-- `A001045(n)*A042950(n+1)` -/
def P13542252872863254376.Spec : Prop :=
  ∀ n, P13542252872863254376.a n = A071930 (n + 1)

end A071930

/-!
# A071933: a(n) = Sum_{i=1..n} K(i,i+1), where K(x,y) is the Kronecker symbol (x/y).

The programs for A071933, the canonical program `A071933.P2260811062905790788` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071933 has offset 1).

The definition of A071933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071933.P2260811062905790788

`∑[Δ[or(n+2, 2*(n+1))]%2]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071933

/-- `∑[Δ[or(n+2, 2*(n+1))]%2]` -/
def P2260811062905790788.Spec : Prop :=
  ∀ n, P2260811062905790788.a n = A071933 (n + 1)

theorem P2260811062905790788.correct : P2260811062905790788.Spec := by
  intro n
  simp only [A071933, Nat.add_sub_cancel]

end A071933

/-! ## A071933.P7348787202886958622

`∑[A071935(n+1)]`
-/

namespace A071933.P7348787202886958622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071933.P7348787202886958622

namespace A071933

/-- `∑[A071935(n+1)]` -/
def P7348787202886958622.Spec : Prop :=
  ∀ n, P7348787202886958622.a n = A071933 (n + 1)

end A071933

/-! ## A071933.P17658332198638310987

`∑[A034947(n+2)^∑[n]]`
-/

namespace A071933.P17658332198638310987
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 2) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071933.P17658332198638310987

namespace A071933

/-- `∑[A034947(n+2)^∑[n]]` -/
def P17658332198638310987.Spec : Prop :=
  ∀ n, P17658332198638310987.a n = A071933 (n + 1)

end A071933

/-! ## A071933.P1901743490552981493

`∑[Δ[A037834(n+1)]^A173318(n)]`
-/

namespace A071933.P1901743490552981493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) ^ (A173318 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071933.P1901743490552981493

namespace A071933

/-- `∑[Δ[A037834(n+1)]^A173318(n)]` -/
def P1901743490552981493.Spec : Prop :=
  ∀ n, P1901743490552981493.a n = (A071933 (n + 1) : ℚ)

end A071933

/-! ## A071933.P17337410298222876408

`∑[A009531(A000265(A216972(n+2)))]`
-/

namespace A071933.P17337410298222876408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A000265 (A216972 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071933.P17337410298222876408

namespace A071933

/-- `∑[A009531(A000265(A216972(n+2)))]` -/
def P17337410298222876408.Spec : Prop :=
  ∀ n, P17337410298222876408.a n = A071933 (n + 1)

end A071933

/-! ## A071933.P16826364849900492531

`∑[A034947(lcm(n, 1-A034947(n+2))+1)]`
-/

namespace A071933.P16826364849900492531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (Int.lcm (n : ℤ) (1 - A034947 (n + 2)) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071933.P16826364849900492531

namespace A071933

/-- `∑[A034947(lcm(n, 1-A034947(n+2))+1)]` -/
def P16826364849900492531.Spec : Prop :=
  ∀ n, P16826364849900492531.a n = A071933 (n + 1)

end A071933

/-! ## A071933.P2335133405665952751

`∑[A034947(A199398(n+1)+1)]`
-/

namespace A071933.P2335133405665952751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A199398 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071933.P2335133405665952751

namespace A071933

/-- `∑[A034947(A199398(n+1)+1)]` -/
def P2335133405665952751.Spec : Prop :=
  ∀ n, P2335133405665952751.a n = A071933 (n + 1)

end A071933

/-! ## A071933.P13810839184395345336

`∑[A034947(∑[gcd(4, n)]+1)]`
-/

namespace A071933.P13810839184395345336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071933.P13810839184395345336

namespace A071933

/-- `∑[A034947(∑[gcd(4, n)]+1)]` -/
def P13810839184395345336.Spec : Prop :=
  ∀ n, P13810839184395345336.a n = A071933 (n + 1)

end A071933

/-! ## A071933.P11661495948167303547

`∑[A034947(A301848(n+2)+2*n)]`
-/

namespace A071933.P11661495948167303547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A301848 (n + 2) + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071933.P11661495948167303547

namespace A071933

/-- `∑[A034947(A301848(n+2)+2*n)]` -/
def P11661495948167303547.Spec : Prop :=
  ∀ n, P11661495948167303547.a n = A071933 (n + 1)

end A071933

/-!
# A071934: a(n) = Sum_{i=1..n} K(i+1,i), where K(x,y) is the Kronecker symbol (x/y).

The programs for A071934, the canonical program `A071934.P16968101025200809615` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071934 has offset 1).

The definition of A071934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071934.P17515104254030317238

`∑[round(sin(gcd(8, n+3)))]`
-/

namespace A071934.P17515104254030317238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Nat.gcd 8 (n + 3) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071934.P17515104254030317238

namespace A071934

/-- `∑[round(sin(gcd(8, n+3)))]` -/
def P17515104254030317238.Spec : Prop :=
  ∀ n, P17515104254030317238.a n = A071934 (n + 1)

end A071934

/-! ## A071934.P16968101025200809615

`∑[Δ[or(4, n+2)]%2]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071934

/-- `∑[Δ[or(4, n+2)]%2]` -/
def P16968101025200809615.Spec : Prop :=
  ∀ n, P16968101025200809615.a n = A071934 (n + 1)

theorem P16968101025200809615.correct : P16968101025200809615.Spec := by
  intro n
  simp only [A071934, Nat.add_sub_cancel]

end A071934

/-! ## A071934.P10480682170953096869

`n-or(1, floor((n-1)/4))`
-/

namespace A071934.P10480682170953096869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor 1 ⌊((n : ℤ) - 1 : ℚ) / 4⌋

end

end A071934.P10480682170953096869

namespace A071934

/-- `n-or(1, floor((n-1)/4))` -/
def P10480682170953096869.Spec : Prop :=
  ∀ n, P10480682170953096869.a n = A071934 (n + 1)

end A071934

/-! ## A071934.P13347760653427577913

`ceil(n-or(4, n-1)/4)`
-/

namespace A071934.P13347760653427577913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) - (Int.lor 4 ((n : ℤ) - 1) : ℚ) / 4⌉

end

end A071934.P13347760653427577913

namespace A071934

/-- `ceil(n-or(4, n-1)/4)` -/
def P13347760653427577913.Spec : Prop :=
  ∀ n, P13347760653427577913.a n = A071934 (n + 1)

end A071934

/-! ## A071934.P13941496435344510156

`∑[(-1)^∑[∑[∑[∑[∑[∑[n]]]]]]]`
-/

namespace A071934.P13941496435344510156
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071934.P13941496435344510156

namespace A071934

/-- `∑[(-1)^∑[∑[∑[∑[∑[∑[n]]]]]]]` -/
def P13941496435344510156.Spec : Prop :=
  ∀ n, P13941496435344510156.a n = A071934 (n + 1)

end A071934

/-! ## A071934.P11958019885145900130

`abs(∑[A071936(n+1)])`
-/

namespace A071934.P11958019885145900130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A071934.P11958019885145900130

namespace A071934

/-- `abs(∑[A071936(n+1)])` -/
def P11958019885145900130.Spec : Prop :=
  ∀ n, P11958019885145900130.a n = A071934 (n + 1)

end A071934

/-! ## A071934.P5245617090069624928

`n+1-2*A110656(n)`
-/

namespace A071934.P5245617090069624928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A110656 n

end

end A071934.P5245617090069624928

namespace A071934

/-- `n+1-2*A110656(n)` -/
def P5245617090069624928.Spec : Prop :=
  ∀ n, P5245617090069624928.a n = A071934 (n + 1)

end A071934

/-! ## A071934.P14996621009382069382

`1-A005843(A110656(n))+n`
-/

namespace A071934.P14996621009382069382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005843 (A110656 n).toNat + (n : ℤ)

end

end A071934.P14996621009382069382

namespace A071934

/-- `1-A005843(A110656(n))+n` -/
def P14996621009382069382.Spec : Prop :=
  ∀ n, P14996621009382069382.a n = A071934 (n + 1)

end A071934

/-! ## A071934.P9634974142493438447

`∑[A071936(n+1)]%A071904(n+1)`
-/

namespace A071934.P9634974142493438447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A071904 (n + 1))

end

end A071934.P9634974142493438447

namespace A071934

/-- `∑[A071936(n+1)]%A071904(n+1)` -/
def P9634974142493438447.Spec : Prop :=
  ∀ n, P9634974142493438447.a n = A071934 (n + 1)

end A071934

/-! ## A071934.P8447156850323019144

`A109613(n)-A285869(A285869(n))`
-/

namespace A071934.P8447156850323019144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n - A285869 (A285869 n).toNat

end

end A071934.P8447156850323019144

namespace A071934

/-- `A109613(n)-A285869(A285869(n))` -/
def P8447156850323019144.Spec : Prop :=
  ∀ n, P8447156850323019144.a n = A071934 (n + 1)

end A071934

/-! ## A071934.P13010268059539508927

`A106249(n-A004526(n))+A004526(n)`
-/

namespace A071934.P13010268059539508927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 ((n : ℤ) - A004526 n).toNat + A004526 n

end

end A071934.P13010268059539508927

namespace A071934

/-- `A106249(n-A004526(n))+A004526(n)` -/
def P13010268059539508927.Spec : Prop :=
  ∀ n, P13010268059539508927.a n = A071934 (n + 1)

end A071934

/-! ## A071934.P13305357733466330230

`n+1-A052928(A008619(A008619(n+1)))`
-/

namespace A071934.P13305357733466330230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A052928 (A008619 (A008619 (n + 1)).toNat).toNat

end

end A071934.P13305357733466330230

namespace A071934

/-- `n+1-A052928(A008619(A008619(n+1)))` -/
def P13305357733466330230.Spec : Prop :=
  ∀ n, P13305357733466330230.a n = A071934 (n + 1)

end A071934

/-! ## A071934.P13433876151380501595

`A106249(n)+A285869(n)-A285869(A285869(n))`
-/

namespace A071934.P13433876151380501595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 n + (A285869 n - A285869 (A285869 n).toNat)

end

end A071934.P13433876151380501595

namespace A071934

/-- `A106249(n)+A285869(n)-A285869(A285869(n))` -/
def P13433876151380501595.Spec : Prop :=
  ∀ n, P13433876151380501595.a n = A071934 (n + 1)

end A071934

/-! ## A071934.P2631843815678196250

`A106249(A004526(n+1))+A004526(n)`
-/

namespace A071934.P2631843815678196250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (A004526 (n + 1)).toNat + A004526 n

end

end A071934.P2631843815678196250

namespace A071934

/-- `A106249(A004526(n+1))+A004526(n)` -/
def P2631843815678196250.Spec : Prop :=
  ∀ n, P2631843815678196250.a n = A071934 (n + 1)

end A071934

/-! ## A071934.P5783401240116320672

`A186422(A212831(A052928(n+1)))+n`
-/

namespace A071934.P5783401240116320672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186422 (A212831 (A052928 (n + 1)).toNat).toNat + (n : ℤ)

end

end A071934.P5783401240116320672

namespace A071934

/-- `A186422(A212831(A052928(n+1)))+n` -/
def P5783401240116320672.Spec : Prop :=
  ∀ n, P5783401240116320672.a n = A071934 (n + 1)

end A071934

/-! ## A071934.P6125265071391570788

`A186422(A212831(A201629(n+1)))+n`
-/

namespace A071934.P6125265071391570788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186422 (A212831 (A201629 (n + 1)).toNat).toNat + (n : ℤ)

end

end A071934.P6125265071391570788

namespace A071934

/-- `A186422(A212831(A201629(n+1)))+n` -/
def P6125265071391570788.Spec : Prop :=
  ∀ n, P6125265071391570788.a n = A071934 (n + 1)

end A071934

/-! ## A071934.P2573743705806715856

`n+1-A106249(A129756(n+3))`
-/

namespace A071934.P2573743705806715856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A106249 (A129756 (n + 3)).toNat

end

end A071934.P2573743705806715856

namespace A071934

/-- `n+1-A106249(A129756(n+3))` -/
def P2573743705806715856.Spec : Prop :=
  ∀ n, P2573743705806715856.a n = A071934 (n + 1)

end A071934

/-! ## A071934.P3928153839705456296

`n+1-A106249(A106249(A083220(n+1)))`
-/

namespace A071934.P3928153839705456296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A106249 (A106249 (A083220 (n + 1)).toNat).toNat

end

end A071934.P3928153839705456296

namespace A071934

/-- `n+1-A106249(A106249(A083220(n+1)))` -/
def P3928153839705456296.Spec : Prop :=
  ∀ n, P3928153839705456296.a n = A071934 (n + 1)

end A071934

/-! ## A071934.P10261419333342708072

`A106249(A047269(n+1))`
-/

namespace A071934.P10261419333342708072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (A047269 (n + 1)).toNat

end

end A071934.P10261419333342708072

namespace A071934

/-- `A106249(A047269(n+1))` -/
def P10261419333342708072.Spec : Prop :=
  ∀ n, P10261419333342708072.a n = A071934 (n + 1)

end A071934

/-! ## A071934.P13394871904926764009

`A106249(2*n-A285869(n))`
-/

namespace A071934.P13394871904926764009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 ((2 * n : ℤ) - A285869 n).toNat

end

end A071934.P13394871904926764009

namespace A071934

/-- `A106249(2*n-A285869(n))` -/
def P13394871904926764009.Spec : Prop :=
  ∀ n, P13394871904926764009.a n = A071934 (n + 1)

end A071934

/-!
# A071935: K(n,n+1) where K(x,y) is the Kronecker symbol (x/y).

The programs for A071935, the canonical program `A071935.P13216042270957683255` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071935 has offset 1).

The definition of A071935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071935.P13216042270957683255

`Δ[or(n+2, 2*(n+1))]%2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071935

/-- `Δ[or(n+2, 2*(n+1))]%2` -/
def P13216042270957683255.Spec : Prop :=
  ∀ n, P13216042270957683255.a n = A071935 (n + 1)

theorem P13216042270957683255.correct : P13216042270957683255.Spec := by
  intro n
  simp only [A071935, Nat.add_sub_cancel]

end A071935

/-! ## A071935.P17797323912248501975

`Δ[xor(n, xor(3, n+1)+n)]%2`
-/

namespace A071935.P17797323912248501975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.xor 3 (n + 1) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2

end

end A071935.P17797323912248501975

namespace A071935

/-- `Δ[xor(n, xor(3, n+1)+n)]%2` -/
def P17797323912248501975.Spec : Prop :=
  ∀ n, P17797323912248501975.a n = A071935 (n + 1)

end A071935

/-! ## A071935.P11235687501436327170

`(Δ[and(2*(n+1), -(n+3))]+1)%2`
-/

namespace A071935.P11235687501436327170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * (n + 1) : ℤ) (-(n + 3 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + 1) 2

end

end A071935.P11235687501436327170

namespace A071935

/-- `(Δ[and(2*(n+1), -(n+3))]+1)%2` -/
def P11235687501436327170.Spec : Prop :=
  ∀ n, P11235687501436327170.a n = A071935 (n + 1)

end A071935

/-! ## A071935.P13601883922576398470

`Δ[A088748(n+1)]^∑[n+2]`
-/

namespace A071935.P13601883922576398470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A071935.P13601883922576398470

namespace A071935

/-- `Δ[A088748(n+1)]^∑[n+2]` -/
def P13601883922576398470.Spec : Prop :=
  ∀ n, P13601883922576398470.a n = A071935 (n + 1)

end A071935

/-! ## A071935.P534058288128571577

`A034947(A116966(A003815(n)))`
-/

namespace A071935.P534058288128571577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A116966 (A003815 n).toNat).toNat

end

end A071935.P534058288128571577

namespace A071935

/-- `A034947(A116966(A003815(n)))` -/
def P534058288128571577.Spec : Prop :=
  ∀ n, P534058288128571577.a n = A071935 (n + 1)

end A071935

/-! ## A071935.P18005565670804942311

`A034947(n+2)^∑[n]`
-/

namespace A071935.P18005565670804942311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 2) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071935.P18005565670804942311

namespace A071935

/-- `A034947(n+2)^∑[n]` -/
def P18005565670804942311.Spec : Prop :=
  ∀ n, P18005565670804942311.a n = A071935 (n + 1)

end A071935

/-! ## A071935.P14019331570109940019

`A112347(n+2)^∑[n]`
-/

namespace A071935.P14019331570109940019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 (n + 2) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071935.P14019331570109940019

namespace A071935

/-- `A112347(n+2)^∑[n]` -/
def P14019331570109940019.Spec : Prop :=
  ∀ n, P14019331570109940019.a n = A071935 (n + 1)

end A071935

/-! ## A071935.P9749162293727027037

`Δ[A005811(n+1)]^∑[n]`
-/

namespace A071935.P9749162293727027037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A071935.P9749162293727027037

namespace A071935

/-- `Δ[A005811(n+1)]^∑[n]` -/
def P9749162293727027037.Spec : Prop :=
  ∀ n, P9749162293727027037.a n = A071935 (n + 1)

end A071935

/-! ## A071935.P17220680411435229974

`A034947(A392590(n+2))`
-/

namespace A071935.P17220680411435229974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A392590 (n + 2)).toNat

end

end A071935.P17220680411435229974

namespace A071935

/-- `A034947(A392590(n+2))` -/
def P17220680411435229974.Spec : Prop :=
  ∀ n, P17220680411435229974.a n = A071935 (n + 1)

end A071935

/-! ## A071935.P5445636308172663990

`Δ[A037834(n+1)]^A173318(n)`
-/

namespace A071935.P5445636308172663990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A173318 n : ℤ)

end

end A071935.P5445636308172663990

namespace A071935

/-- `Δ[A037834(n+1)]^A173318(n)` -/
def P5445636308172663990.Spec : Prop :=
  ∀ n, P5445636308172663990.a n = (A071935 (n + 1) : ℚ)

end A071935

/-! ## A071935.P11645655909336329640

`A034947(A216972(n+2))`
-/

namespace A071935.P11645655909336329640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A216972 (n + 2)).toNat

end

end A071935.P11645655909336329640

namespace A071935

/-- `A034947(A216972(n+2))` -/
def P11645655909336329640.Spec : Prop :=
  ∀ n, P11645655909336329640.a n = A071935 (n + 1)

end A071935

/-! ## A071935.P4663804017320075725

`A034947(A003815(A003815(n)+1))`
-/

namespace A071935.P4663804017320075725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A003815 (A003815 n + 1).toNat).toNat

end

end A071935.P4663804017320075725

namespace A071935

/-- `A034947(A003815(A003815(n)+1))` -/
def P4663804017320075725.Spec : Prop :=
  ∀ n, P4663804017320075725.a n = A071935 (n + 1)

end A071935

/-! ## A071935.P17778458804698455361

`A034947(A322015(A322015(n+1))+n+2)`
-/

namespace A071935.P17778458804698455361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A322015 (A322015 (n + 1)).toNat + (n + 2 : ℤ)).toNat

end

end A071935.P17778458804698455361

namespace A071935

/-- `A034947(A322015(A322015(n+1))+n+2)` -/
def P17778458804698455361.Spec : Prop :=
  ∀ n, P17778458804698455361.a n = A071935 (n + 1)

end A071935

/-! ## A071935.P5273198392160703857

`A034947(A199398(n+1)+1)`
-/

namespace A071935.P5273198392160703857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A199398 (n + 1) + 1).toNat

end

end A071935.P5273198392160703857

namespace A071935

/-- `A034947(A199398(n+1)+1)` -/
def P5273198392160703857.Spec : Prop :=
  ∀ n, P5273198392160703857.a n = A071935 (n + 1)

end A071935

/-! ## A071935.P4846921858501341186

`A034947(A339597(n)+A014707(n+1))`
-/

namespace A071935.P4846921858501341186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A339597 n + A014707 (n + 1)).toNat

end

end A071935.P4846921858501341186

namespace A071935

/-- `A034947(A339597(n)+A014707(n+1))` -/
def P4846921858501341186.Spec : Prop :=
  ∀ n, P4846921858501341186.a n = A071935 (n + 1)

end A071935

/-! ## A071935.P9578389458311417979

`A034947(∑[gcd(4, n)]+1)`
-/

namespace A071935.P9578389458311417979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A071935.P9578389458311417979

namespace A071935

/-- `A034947(∑[gcd(4, n)]+1)` -/
def P9578389458311417979.Spec : Prop :=
  ∀ n, P9578389458311417979.a n = A071935 (n + 1)

end A071935

/-! ## A071935.P8932858276996974969

`A034947(A047476(n+3))`
-/

namespace A071935.P8932858276996974969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A047476 (n + 3)).toNat

end

end A071935.P8932858276996974969

namespace A071935

/-- `A034947(A047476(n+3))` -/
def P8932858276996974969.Spec : Prop :=
  ∀ n, P8932858276996974969.a n = A071935 (n + 1)

end A071935

/-! ## A071935.P4518589786499809760

`A034947(A047479(n+3))`
-/

namespace A071935.P4518589786499809760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A047479 (n + 3)).toNat

end

end A071935.P4518589786499809760

namespace A071935

/-- `A034947(A047479(n+3))` -/
def P4518589786499809760.Spec : Prop :=
  ∀ n, P4518589786499809760.a n = A071935 (n + 1)

end A071935

/-! ## A071935.P15390103631025531849

`A034947(A047481(n+3))`
-/

namespace A071935.P15390103631025531849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A047481 (n + 3)).toNat

end

end A071935.P15390103631025531849

namespace A071935

/-- `A034947(A047481(n+3))` -/
def P15390103631025531849.Spec : Prop :=
  ∀ n, P15390103631025531849.a n = A071935 (n + 1)

end A071935

/-! ## A071935.P8723319386791949565

`A034947(A116966(2*n+1)+A034947(n+2))`
-/

namespace A071935.P8723319386791949565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A116966 (2 * n + 1) + A034947 (n + 2)).toNat

end

end A071935.P8723319386791949565

namespace A071935

/-- `A034947(A116966(2*n+1)+A034947(n+2))` -/
def P8723319386791949565.Spec : Prop :=
  ∀ n, P8723319386791949565.a n = A071935 (n + 1)

end A071935

/-!
# A071936: K(n+1,n) where K(x,y) is the Kronecker symbol (x/y).

The programs for A071936, the canonical program `A071936.P5365337661550698022` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071936 has offset 1).

The definition of A071936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071936.P5365337661550698022

`round(sin(gcd(8, n+3)))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071936

/-- `round(sin(gcd(8, n+3)))` -/
def P5365337661550698022.Spec : Prop :=
  ∀ n, P5365337661550698022.a n = A071936 (n + 1)

theorem P5365337661550698022.correct : P5365337661550698022.Spec := by
  intro n
  simp only [A071936, Nat.add_sub_cancel]

end A071936

/-!
# A071937: Reverse(n)!.

The programs for A071937, there is no canonical definition to state claims against.
-/

/-! ## A071937.P12070755094390429346

`ratio[A062919(n)]!`
-/

namespace A071937.P12070755094390429346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062919 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A071937.P12070755094390429346

/-! ## A071937.P6530390618305705035

`A004086(n+1)!`
-/

namespace A071937.P6530390618305705035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A004086 (n + 1)).toNat

end

end A071937.P6530390618305705035

/-! ## A071937.P7175058150691687656

`A084011(n+1)!`
-/

namespace A071937.P7175058150691687656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A084011 (n + 1)).toNat

end

end A071937.P7175058150691687656

/-! ## A071937.P5190912097420397450

`A121760(n+1)!`
-/

namespace A071937.P5190912097420397450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A121760 (n + 1)).toNat

end

end A071937.P5190912097420397450

/-! ## A071937.P2327285758328530259

`A345110(n+1)!`
-/

namespace A071937.P2327285758328530259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A345110 (n + 1)).toNat

end

end A071937.P2327285758328530259

/-!
# A071938: Binomial(max(n,R(n)),min(n,R(n))) where R(n) is the reversal of n.

The programs for A071938, there is no canonical definition to state claims against.
-/

/-! ## A071938.P3552041794092738958

`C(A068637(n+1), A068636(n+1))`
-/

namespace A071938.P3552041794092738958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A068637 (n + 1)).toNat (A068636 (n + 1)).toNat

end

end A071938.P3552041794092738958

/-! ## A071938.P9480324340796882108

`C(A227362(A180409(n+1)), A180410(n+1))`
-/

namespace A071938.P9480324340796882108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A227362 (A180409 (n + 1)).toNat).toNat (A180410 (n + 1)).toNat

end

end A071938.P9480324340796882108

/-! ## A071938.P15005031499637524581

`A007318(A241299(n)^A017898(n))`
-/

namespace A071938.P15005031499637524581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((A241299 n : ℚ) ^ (A017898 n : ℤ))).toNat

end

end A071938.P15005031499637524581

/-! ## A071938.P11109847038562517756

`A135225(A135225(2*n)*A165627(n))`
-/

namespace A071938.P11109847038562517756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135225 (A135225 (2 * n) * A165627 n).toNat

end

end A071938.P11109847038562517756

/-! ## A071938.P1080885830488426946

`A007318(A238352(n)^A201873(n+1))`
-/

namespace A071938.P1080885830488426946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((A238352 n : ℚ) ^ (A201873 (n + 1) : ℤ))).toNat

end

end A071938.P1080885830488426946

/-!
# A071939: a(n) = Max { sigma(k) : k = 1, 2, 3, ..., n } - Max { Phi(k) : k = 1, 2, 3, ..., n }.

The programs for A071939, there is no canonical definition to state claims against.
-/

/-! ## A071939.P16085353546948431352

`A070324(n+1)-A070320(n+1)`
-/

namespace A071939.P16085353546948431352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070324 (n + 1) - A070320 (n + 1)

end

end A071939.P16085353546948431352

/-! ## A071939.P10590197126285449334

`A070324(n+1)-A349127(A066169(n+1))`
-/

namespace A071939.P10590197126285449334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070324 (n + 1) - A349127 (A066169 (n + 1)).toNat

end

end A071939.P10590197126285449334

/-! ## A071939.P11374704676255395378

`A070324(n+1)-A000010(A136548(n+2))`
-/

namespace A071939.P11374704676255395378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070324 (n + 1) - A000010 (A136548 (n + 2)).toNat

end

end A071939.P11374704676255395378

/-! ## A071939.P16002348197578160606

`A070324(n+1)-(A136548(n+2)-char[A048673(n+1)])`
-/

namespace A071939.P16002348197578160606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070324 (n + 1) - (A136548 (n + 2) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A071939.P16002348197578160606

/-! ## A071939.P1987190581055770810

`A070324(n+1)-A000010(A139421(2*(n+1)))`
-/

namespace A071939.P1987190581055770810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070324 (n + 1) - A000010 (A139421 (2 * (n + 1))).toNat

end

end A071939.P1987190581055770810

/-! ## A071939.P11158941897543137126

`A070324(n+1)-A132163(∑[n-1]+3)`
-/

namespace A071939.P11158941897543137126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070324 (n + 1) - A132163 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A071939.P11158941897543137126

/-! ## A071939.P12489212161786862408

`A070324(n+1)-A000010(A056813((n+1)²))`
-/

namespace A071939.P12489212161786862408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070324 (n + 1) - A000010 (A056813 ((n + 1) ^ 2)).toNat

end

end A071939.P12489212161786862408

/-! ## A071939.P14530909220980454129

`A070324(n+1)-A000010(A195183(∑[n+1]))`
-/

namespace A071939.P14530909220980454129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070324 (n + 1) - A000010 (A195183 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A071939.P14530909220980454129

/-!
# A071940: Number of 1's among the first n terms of the simple continued fraction for Pi.

The programs for A071940, there is no canonical definition to state claims against.
-/

/-! ## A071940.P12796450464116878609

`∑[round(acot(A001203(n)))]`
-/

namespace A071940.P12796450464116878609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A001203 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071940.P12796450464116878609

/-! ## A071940.P13307113262012743344

`∑[char[A203168(n+1)-1]]`
-/

namespace A071940.P13307113262012743344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203168 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071940.P13307113262012743344

/-! ## A071940.P1493392781119897694

`∑[floor(1/A001203(gcd(n, 2*n)))]`
-/

namespace A071940.P1493392781119897694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A001203 (Nat.gcd n (2 * n)) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071940.P1493392781119897694

/-! ## A071940.P7529086133837317110

`∑[∑{d}[A001203(n), A008683(#)]]`
-/

namespace A071940.P7529086133837317110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A008683 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071940.P7529086133837317110

/-! ## A071940.P4096303804214374889

`∑[A000010(A001203(n)+1)%2]`
-/

namespace A071940.P4096303804214374889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A001203 n + 1).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071940.P4096303804214374889

/-! ## A071940.P16602077294160229227

`∑[C(gcd(5, A000032(n)), A001203(n))]`
-/

namespace A071940.P16602077294160229227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.gcd 5 (A000032 n)) (A001203 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071940.P16602077294160229227

/-! ## A071940.P1610123006682552617

`∑[A000007(A001203(n)-1)]`
-/

namespace A071940.P1610123006682552617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A001203 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071940.P1610123006682552617

/-! ## A071940.P17941531349930182041

`∑[A008683(A001203(n)²)]`
-/

namespace A071940.P17941531349930182041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001203 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071940.P17941531349930182041

/-! ## A071940.P9985844588967155099

`∑[A008966(A001203(n)²)]`
-/

namespace A071940.P9985844588967155099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A001203 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071940.P9985844588967155099

/-!
# A071941: Nonprimes for which floor(2^n/n) is even.

The programs for A071941, the canonical program `A071941.P10099421233231050487` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071941 has offset 1).

The definition of A071941 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5826 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071941.P10099421233231050487

`eq[Δ[A065357(n)], A323547(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071941

/-- `eq[Δ[A065357(n)], A323547(n+1)]+1` -/
def P10099421233231050487.Spec : Prop :=
  ∀ n, (P10099421233231050487.a n : ℤ) = A071941 (n + 1)

theorem P10099421233231050487.correct : P10099421233231050487.Spec := by
  intro n
  simp only [A071941, Nat.add_sub_cancel]

end A071941

/-! ## A071941.P8027619801650957058

`eq[A010051(n+1), A323547(n+1)]+1`
-/

namespace A071941.P8027619801650957058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071941.P8027619801650957058

namespace A071941

/-- `eq[A010051(n+1), A323547(n+1)]+1` -/
def P8027619801650957058.Spec : Prop :=
  ∀ n, (P8027619801650957058.a n : ℤ) = A071941 (n + 1)

end A071941

/-! ## A071941.P6887179608911198519

`eq[char[A182986(n+1)-1], A323547(n+1)]+1`
-/

namespace A071941.P6887179608911198519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n + 1

end

end A071941.P6887179608911198519

namespace A071941

/-- `eq[char[A182986(n+1)-1], A323547(n+1)]+1` -/
def P6887179608911198519.Spec : Prop :=
  ∀ n, (P6887179608911198519.a n : ℤ) = A071941 (n + 1)

end A071941

/-! ## A071941.P4685623128343014605

`eq[A292242(A105560(n+1)), A323547(n+1)]+1`
-/

namespace A071941.P4685623128343014605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292242 (A105560 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071941.P4685623128343014605

namespace A071941

/-- `eq[A292242(A105560(n+1)), A323547(n+1)]+1` -/
def P4685623128343014605.Spec : Prop :=
  ∀ n, (P4685623128343014605.a n : ℤ) = A071941 (n + 1)

end A071941

/-! ## A071941.P6597629240550459299

`eq[Δ[A230980(n)], A323547(n+1)]+1`
-/

namespace A071941.P6597629240550459299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A071941.P6597629240550459299

namespace A071941

/-- `eq[Δ[A230980(n)], A323547(n+1)]+1` -/
def P6597629240550459299.Spec : Prop :=
  ∀ n, (P6597629240550459299.a n : ℤ) = A071941 (n + 1)

end A071941

/-!
# A071943: Triangle T(n,k) (n>=0, 0 <= k <= n) read by rows giving number of underdiagonal lattice paths from (0,0) to (n,k) using only steps R=(1,0), V=(0,1) and D=(1,2).

The programs for A071943, there is no canonical definition to state claims against.
-/

/-! ## A071943.P3785085161698410839

`A108073(∑[2*n]%A080036(n))`
-/

namespace A071943.P3785085161698410839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108073 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A080036 n)).toNat

end

end A071943.P3785085161698410839

/-! ## A071943.P17857734494351454562

`A108073(gcd(A010816(n), A061579(n)))`
-/

namespace A071943.P17857734494351454562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108073 (Int.gcd (A010816 n) (A061579 n))

end

end A071943.P17857734494351454562

/-! ## A071943.P11980951536148895711

`A108073(abs(A061579(n)-A198954(n)))`
-/

namespace A071943.P11980951536148895711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108073 |A061579 n - A198954 n|.toNat

end

end A071943.P11980951536148895711

/-! ## A071943.P5043887497426353367

`A108073(∑[char[∑[n]]]²-n-1)`
-/

namespace A071943.P5043887497426353367
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108073 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A071943.P5043887497426353367

/-! ## A071943.P14113297161054154098

`gcd(A000038(n), A108073(A061579(n)))`
-/

namespace A071943.P14113297161054154098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A108073 (A061579 n).toNat)

end

end A071943.P14113297161054154098

/-!
# A071944: Triangle read by rows giving numbers of paths in a lattice satisfying certain conditions.

The programs for A071944, there is no canonical definition to state claims against.
-/

/-! ## A071944.P5581708351656217227

`or(char[1], A108074((n²+n)%A080036(n)))`
-/

namespace A071944.P5581708351656217227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A108074 (Int.tmod (n ^ 2 + n : ℤ) (A080036 n)).toNat)

end

end A071944.P5581708351656217227

/-! ## A071944.P4919404189822730780

`A108074(∑[2*n]%comp[∑[n]])`
-/

namespace A071944.P4919404189822730780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108074 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A071944.P4919404189822730780

/-! ## A071944.P15397191359292395560

`A108074(A061579(n))`
-/

namespace A071944.P15397191359292395560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108074 (A061579 n).toNat

end

end A071944.P15397191359292395560

/-! ## A071944.P11273476597637177038

`A108074(A114327(n)+n)`
-/

namespace A071944.P11273476597637177038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108074 (A114327 n + (n : ℤ)).toNat

end

end A071944.P11273476597637177038

/-! ## A071944.P11549189256962584621

`A108074(A038722(n+1)-1)`
-/

namespace A071944.P11549189256962584621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108074 (A038722 (n + 1) - 1).toNat

end

end A071944.P11549189256962584621

/-! ## A071944.P7190047497598526041

`A108074(A023443(A038722(n+1)))`
-/

namespace A071944.P7190047497598526041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108074 (A023443 (A038722 (n + 1)).toNat).toNat

end

end A071944.P7190047497598526041

/-! ## A071944.P14819164855660424638

`A108074(A185869(n+1)-A016789(n))`
-/

namespace A071944.P14819164855660424638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108074 (A185869 (n + 1) - A016789 n).toNat

end

end A071944.P14819164855660424638

/-!
# A071945: Triangle T(n,k) read by rows giving number of underdiagonal lattice paths from (0,0) to (n,k) using steps R=(1,0), V=(0,1) and D=(2,1).

The programs for A071945, there is no canonical definition to state claims against.
-/

/-! ## A071945.P6914418095858735365

`A108075(∑[2*n]%(comp[∑[n+1]]+1))`
-/

namespace A071945.P6914418095858735365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108075 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1))

end

end A071945.P6914418095858735365

/-! ## A071945.P5842147400189306314

`A108075(gcd(A010816(n), A061579(n)))`
-/

namespace A071945.P5842147400189306314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108075 (Int.gcd (A010816 n) (A061579 n))

end

end A071945.P5842147400189306314

/-! ## A071945.P16245292322709692564

`A108075(abs(A061579(n)-A198954(n)))`
-/

namespace A071945.P16245292322709692564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108075 |A061579 n - A198954 n|.toNat

end

end A071945.P16245292322709692564

/-! ## A071945.P4982821934806579179

`A108075(∑[char[∑[n]]]²-n-1)`
-/

namespace A071945.P4982821934806579179
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108075 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A071945.P4982821934806579179

/-! ## A071945.P17280779715718593176

`or(1, A108075(∑[2*n]%comp[∑[n]]))`
-/

namespace A071945.P17280779715718593176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A108075 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n))

end

end A071945.P17280779715718593176

/-! ## A071945.P9055648900928110074

`or(1, A108075(A061579(n)))`
-/

namespace A071945.P9055648900928110074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A108075 (A061579 n).toNat)

end

end A071945.P9055648900928110074

/-! ## A071945.P2652500741835803276

`A108075(A061579(n))%A139582(n)`
-/

namespace A071945.P2652500741835803276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108075 (A061579 n).toNat) (A139582 n)

end

end A071945.P2652500741835803276

/-!
# A071946: Triangle T(n,k) read by rows giving number of underdiagonal lattice paths from (0,0) to (n,k) using only steps R = (1,0), V = (0,1) and D = (3,1).

The programs for A071946, there is no canonical definition to state claims against.
-/

/-! ## A071946.P8666155523894359405

`A108076(A061579(n))`
-/

namespace A071946.P8666155523894359405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108076 (A061579 n).toNat

end

end A071946.P8666155523894359405

/-! ## A071946.P10633682960244479548

`A108076(A114327(n)+n)`
-/

namespace A071946.P10633682960244479548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108076 (A114327 n + (n : ℤ)).toNat

end

end A071946.P10633682960244479548

/-! ## A071946.P9319750803604246442

`A108076(∑[A198954(n)-1])`
-/

namespace A071946.P9319750803604246442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108076 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071946.P9319750803604246442

/-! ## A071946.P12039894560721868486

`A108076(A038722(n+1)-1)`
-/

namespace A071946.P12039894560721868486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108076 (A038722 (n + 1) - 1).toNat

end

end A071946.P12039894560721868486

/-! ## A071946.P6249627268620620796

`A108076(∑[2*n]%A080036(n))`
-/

namespace A071946.P6249627268620620796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108076 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A080036 n)).toNat

end

end A071946.P6249627268620620796

/-! ## A071946.P3185275045358628317

`A108076(A002024(n+1)²-(n+1))`
-/

namespace A071946.P3185275045358628317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108076 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A071946.P3185275045358628317

/-! ## A071946.P2473490902086462963

`A108076(A185869(n+1)-A016789(n))`
-/

namespace A071946.P2473490902086462963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108076 (A185869 (n + 1) - A016789 n).toNat

end

end A071946.P2473490902086462963

/-!
# A071947: Triangle read by rows of numbers of paths in a lattice satisfying certain conditions.

The programs for A071947, there is no canonical definition to state claims against.
-/

/-! ## A071947.P18018188969985500975

`A089942(A002378(n)%A080036(n))`
-/

namespace A071947.P18018188969985500975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089942 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A071947.P18018188969985500975

/-! ## A071947.P9418733027826882150

`A089942(A061579(n))`
-/

namespace A071947.P9418733027826882150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089942 (A061579 n).toNat

end

end A071947.P9418733027826882150

/-! ## A071947.P2506361958260336086

`A089942(A114327(n)+n)`
-/

namespace A071947.P2506361958260336086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089942 (A114327 n + (n : ℤ)).toNat

end

end A071947.P2506361958260336086

/-! ## A071947.P16931050511230885203

`A089942(A038722(n+1)-1)`
-/

namespace A071947.P16931050511230885203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089942 (A038722 (n + 1) - 1).toNat

end

end A071947.P16931050511230885203

/-! ## A071947.P6872785227952761332

`A089942((A003056(n)+1)²-(n+1))`
-/

namespace A071947.P6872785227952761332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089942 ((A003056 n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A071947.P6872785227952761332

/-! ## A071947.P18014707277731058425

`A089942(abs(A024000(A038722(n+1))))`
-/

namespace A071947.P18014707277731058425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089942 |A024000 (A038722 (n + 1)).toNat|.toNat

end

end A071947.P18014707277731058425

/-!
# A071948: Triangle read by rows of numbers of paths in a lattice satisfying certain conditions.

The programs for A071948, there is no canonical definition to state claims against.
-/

/-! ## A071948.P16729443350441622782

`A092276(A038722(n+1))`
-/

namespace A071948.P16729443350441622782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092276 (A038722 (n + 1)).toNat

end

end A071948.P16729443350441622782

/-! ## A071948.P2954243277456912124

`A092276(A061579(n)+1)`
-/

namespace A071948.P2954243277456912124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092276 (A061579 n + 1).toNat

end

end A071948.P2954243277456912124

/-! ## A071948.P4428388430053849107

`A092276(A093995(n+1)-n)`
-/

namespace A071948.P4428388430053849107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092276 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A071948.P4428388430053849107

/-! ## A071948.P8599806585617717370

`A092276(∑[A010054(n)]²-n)`
-/

namespace A071948.P8599806585617717370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092276 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n : ℤ)).toNat

end

end A071948.P8599806585617717370

/-! ## A071948.P4252058213343921853

`A092276(A002024(n+1)²-n)`
-/

namespace A071948.P4252058213343921853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092276 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A071948.P4252058213343921853

/-! ## A071948.P4623777385487378335

`A092276(A123578(n+1)²-n)`
-/

namespace A071948.P4623777385487378335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092276 (A123578 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A071948.P4623777385487378335

/-! ## A071948.P17505734898254178949

`A100400(A038722(n+1))/A002024(n+1)`
-/

namespace A071948.P17505734898254178949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100400 (A038722 (n + 1)).toNat : ℚ) / (A002024 (n + 1) : ℚ)

end

end A071948.P17505734898254178949

/-!
# A071949: Triangle read by rows of numbers of paths in a lattice satisfying certain conditions.

The programs for A071949, there is no canonical definition to state claims against.
-/

/-! ## A071949.P17409269151235127337

`A110682(∑[2*n]%comp[∑[n]])`
-/

namespace A071949.P17409269151235127337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110682 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A071949.P17409269151235127337

/-! ## A071949.P16657221301311493248

`A110682(∑[char[∑[n]]]²-(n+1))`
-/

namespace A071949.P16657221301311493248
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110682 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A071949.P16657221301311493248

/-! ## A071949.P14883257063284721562

`or(char[1], A110682(A061579(n)))`
-/

namespace A071949.P14883257063284721562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A110682 (A061579 n).toNat)

end

end A071949.P14883257063284721562

/-! ## A071949.P7478244937294951092

`gcd(A000038(n), A110682(A061579(n)))`
-/

namespace A071949.P7478244937294951092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A110682 (A061579 n).toNat)

end

end A071949.P7478244937294951092

/-! ## A071949.P18414008356560688737

`A000034(2*n)*A110682(A061579(n))`
-/

namespace A071949.P18414008356560688737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A110682 (A061579 n).toNat

end

end A071949.P18414008356560688737

/-! ## A071949.P1242717307379820228

`A110682(A061579(n))%∑[A000032(n)]`
-/

namespace A071949.P1242717307379820228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110682 (A061579 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071949.P1242717307379820228

/-! ## A071949.P10731117687533519080

`A007318(∑[n])*A110682(A061579(n))`
-/

namespace A071949.P10731117687533519080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A110682 (A061579 n).toNat

end

end A071949.P10731117687533519080

/-! ## A071949.P14846133469419196718

`A110682(A061579(n))/A007318(∑[n+1])`
-/

namespace A071949.P14846133469419196718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110682 (A061579 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A071949.P14846133469419196718

/-!
# A071950: Triangle read by rows of numbers of paths in a lattice satisfying certain conditions.

The programs for A071950, there is no canonical definition to state claims against.
-/

/-! ## A071950.P4092571010570522914

`A190252(A090894(n))`
-/

namespace A071950.P4092571010570522914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190252 (A090894 n).toNat

end

end A071950.P4092571010570522914

/-!
# A071951: Triangle of Legendre-Stirling numbers of the second kind T(n,j), n >= 1, 1 <= j <= n, read by rows.

The programs for A071951, there is no canonical definition to state claims against.
-/

/-! ## A071951.P10543184352699956498

`A080248(n)*A130321(n)`
-/

namespace A071951.P10543184352699956498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080248 n * A130321 n

end

end A071951.P10543184352699956498

/-! ## A071951.P11306017741627580838

`A000079(A025581(n))*A080248(n)`
-/

namespace A071951.P11306017741627580838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A080248 n

end

end A071951.P11306017741627580838

/-! ## A071951.P2254117822560858995

`A080248(n)*A112032(A099375(n))`
-/

namespace A071951.P2254117822560858995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080248 n * A112032 (A099375 n).toNat

end

end A071951.P2254117822560858995

/-! ## A071951.P10490509942556125724

`A011782(A004736(n+1))*A080248(n)`
-/

namespace A071951.P10490509942556125724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A004736 (n + 1)).toNat * A080248 n

end

end A071951.P10490509942556125724

/-! ## A071951.P9550733983599829520

`A191935(A038722(n+1))`
-/

namespace A071951.P9550733983599829520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191935 (A038722 (n + 1)).toNat

end

end A071951.P9550733983599829520

/-! ## A071951.P10223140669966731248

`A191935(A061579(n)+1)`
-/

namespace A071951.P10223140669966731248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191935 (A061579 n + 1).toNat

end

end A071951.P10223140669966731248

/-! ## A071951.P16088036851144689754

`A191935(A002024(n+1)²-n)`
-/

namespace A071951.P16088036851144689754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191935 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A071951.P16088036851144689754

/-!
# A071952: Diagonal T(n, 4) of triangle in A071951.

The programs for A071952, the canonical program `A071952.P14020120436541480615` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071952 has offset 4).

The definition of A071952 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071952.P14020120436541480615

`2^(n-3)*(20*3^(n+4)-7*6^(n+4)+10^(n+4)-28)/315`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071952

/-- `2^(n-3)*(20*3^(n+4)-7*6^(n+4)+10^(n+4)-28)/315` -/
def P14020120436541480615.Spec : Prop :=
  ∀ n, P14020120436541480615.a n = (A071952 (n + 4) : ℚ)

end A071952

/-! ## A071952.P15877277953043367948

`A016309(n)+20*a(n-1)` with `a(0)=1`
-/

namespace A071952.P15877277953043367948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016309 n + 20 * a (n - 1)

end

end A071952.P15877277953043367948

namespace A071952

/-- `A016309(n)+20*a(n-1)` -/
def P15877277953043367948.Spec : Prop :=
  ∀ n, P15877277953043367948.a n = A071952 (n + 4)

end A071952

/-! ## A071952.P10840620517473304902

`A071951(A167614(n+2)+1)`
-/

namespace A071952.P10840620517473304902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071951 (A167614 (n + 2) + 1).toNat

end

end A071952.P10840620517473304902

namespace A071952

/-- `A071951(A167614(n+2)+1)` -/
def P10840620517473304902.Spec : Prop :=
  ∀ n, P10840620517473304902.a n = A071952 (n + 4)

end A071952

/-!
# A071953: Diagonal T(n,n-2) of triangle in A071951.

The programs for A071953, the canonical program `A071953.P1964821763685761088` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071953 has offset 3).

The definition of A071953 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071953.P1964821763685761088

`(n+1)*(n+2)*(n+3)*(n+4)*(5*(n+3)²-11*(n+3)+3)/90`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071953

/-- `(n+1)*(n+2)*(n+3)*(n+4)*(5*(n+3)²-11*(n+3)+3)/90` -/
def P1964821763685761088.Spec : Prop :=
  ∀ n, P1964821763685761088.a n = (A071953 (n + 3) : ℚ)

end A071953

/-! ## A071953.P14171501861197813652

`A060060(n)-A034263(n)`
-/

namespace A071953.P14171501861197813652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060060 n - A034263 n

end

end A071953.P14171501861197813652

namespace A071953

/-- `A060060(n)-A034263(n)` -/
def P14171501861197813652.Spec : Prop :=
  ∀ n, P14171501861197813652.a n = A071953 (n + 3)

end A071953

/-! ## A071953.P441493018737893777

`A071951(∑[n+3]+1)`
-/

namespace A071953.P441493018737893777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071951 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A071953.P441493018737893777

namespace A071953

/-- `A071951(∑[n+3]+1)` -/
def P441493018737893777.Spec : Prop :=
  ∀ n, P441493018737893777.a n = A071953 (n + 3)

end A071953

/-!
# A071954: a(n) = 4*a(n-1) - a(n-2) - 4, with a(0) = 2, a(1) = 4.

The programs for A071954, the canonical program `A071954.P12586908185354218137` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071954 has offset 0).

The definition of A071954 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)-4` (program `A071954.P12586908185354218137`, by `A071954.P12586908185354218137.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071954.P12586908185354218137

`4*a(n-1)-a(n-2)-4` with `a(0)=2, a(1)=4`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071954

/-- `4*a(n-1)-a(n-2)-4` -/
def P12586908185354218137.Spec : Prop :=
  ∀ n, P12586908185354218137.a n = A071954 n

theorem P12586908185354218137.correct : P12586908185354218137.Spec := by
  intro n
  simp only [A071954]

end A071954

/-! ## A071954.P7504193696496030632

`2*A072110(n)`
-/

namespace A071954.P7504193696496030632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072110 n

end

end A071954.P7504193696496030632

namespace A071954

/-- `2*A072110(n)` -/
def P7504193696496030632.Spec : Prop :=
  ∀ n, P7504193696496030632.a n = A071954 n

end A071954

/-! ## A071954.P10822412399648198421

`∑[ogf((2-6x)/(1-4x+x^2))]`
-/

namespace A071954.P10822412399648198421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -6] [1, -4, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071954.P10822412399648198421

namespace A071954

/-- `∑[ogf((2-6x)/(1-4x+x^2))]` -/
def P10822412399648198421.Spec : Prop :=
  ∀ n, P10822412399648198421.a n = A071954 n

end A071954

/-! ## A071954.P14751242260066389649

`ogf((2-6x)/(1-5x+5x^2-x^3))`
-/

namespace A071954.P14751242260066389649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -6] [1, -5, 5, -1] n

end

end A071954.P14751242260066389649

namespace A071954

/-- `ogf((2-6x)/(1-5x+5x^2-x^3))` -/
def P14751242260066389649.Spec : Prop :=
  ∀ n, P14751242260066389649.a n = A071954 n

end A071954

/-! ## A071954.P10093460886549006800

`∑[floor((sqrt(3)+2)*a(n-1))]` with `a(0)=2, a(1)=2, a(2)=6`
-/

namespace A071954.P10093460886549006800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 6] fun n f1 =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071954.P10093460886549006800

namespace A071954

/-- `∑[floor((sqrt(3)+2)*a(n-1))]` -/
def P10093460886549006800.Spec : Prop :=
  ∀ n, P10093460886549006800.a n = A071954 n

end A071954

/-! ## A071954.P183827799922280027

`∑[4*a(n-1)-a(n-2)]` with `a(0)=2, a(1)=2`
-/

namespace A071954.P183827799922280027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  4 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071954.P183827799922280027

namespace A071954

/-- `∑[4*a(n-1)-a(n-2)]` -/
def P183827799922280027.Spec : Prop :=
  ∀ n, P183827799922280027.a n = A071954 n

end A071954

/-! ## A071954.P4334221729639259000

`∑[a(n-1)/(1/2)²-a(n-2)]` with `a(0)=2, a(1)=2`
-/

namespace A071954.P4334221729639259000
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 2 - f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071954.P4334221729639259000

namespace A071954

/-- `∑[a(n-1)/(1/2)²-a(n-2)]` -/
def P4334221729639259000.Spec : Prop :=
  ∀ n, P4334221729639259000.a n = (A071954 n : ℚ)

end A071954

/-! ## A071954.P13496005078147282757

`A052530(n)+2`
-/

namespace A071954.P13496005078147282757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 n + 2

end

end A071954.P13496005078147282757

namespace A071954

/-- `A052530(n)+2` -/
def P13496005078147282757.Spec : Prop :=
  ∀ n, P13496005078147282757.a n = A071954 n

end A071954

/-! ## A071954.P10840879154399426732

`Δ[A001835(n)]+2`
-/

namespace A071954.P10840879154399426732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A071954.P10840879154399426732

namespace A071954

/-- `Δ[A001835(n)]+2` -/
def P10840879154399426732.Spec : Prop :=
  ∀ n, P10840879154399426732.a n = A071954 n

end A071954

/-! ## A071954.P10401676842886074139

`2*(A001353(n)+1)`
-/

namespace A071954.P10401676842886074139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001353 n + 1)

end

end A071954.P10401676842886074139

namespace A071954

/-- `2*(A001353(n)+1)` -/
def P10401676842886074139.Spec : Prop :=
  ∀ n, P10401676842886074139.a n = A071954 n

end A071954

/-! ## A071954.P3599391367436109787

`A048788(2*n)+2`
-/

namespace A071954.P3599391367436109787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 (2 * n) + 2

end

end A071954.P3599391367436109787

namespace A071954

/-- `A048788(2*n)+2` -/
def P3599391367436109787.Spec : Prop :=
  ∀ n, P3599391367436109787.a n = A071954 n

end A071954

/-! ## A071954.P1168134639920506451

`2*(1-A106707(n))`
-/

namespace A071954.P1168134639920506451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 - A106707 n)

end

end A071954.P1168134639920506451

namespace A071954

/-- `2*(1-A106707(n))` -/
def P1168134639920506451.Spec : Prop :=
  ∀ n, P1168134639920506451.a n = A071954 n

end A071954

/-! ## A071954.P6245954285098939092

`A254308(3*n)+2`
-/

namespace A071954.P6245954285098939092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254308 (3 * n) + 2

end

end A071954.P6245954285098939092

namespace A071954

/-- `A254308(3*n)+2` -/
def P6245954285098939092.Spec : Prop :=
  ∀ n, P6245954285098939092.a n = A071954 n

end A071954

/-! ## A071954.P18082811673157034763

`A162959(Δ[n²])+2`
-/

namespace A071954.P18082811673157034763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162959 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A071954.P18082811673157034763

namespace A071954

/-- `A162959(Δ[n²])+2` -/
def P18082811673157034763.Spec : Prop :=
  ∀ n, P18082811673157034763.a n = A071954 n

end A071954

/-! ## A071954.P5063981383269220069

`2*(Δ[A101879(n)]+1)`
-/

namespace A071954.P5063981383269220069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A071954.P5063981383269220069

namespace A071954

/-- `2*(Δ[A101879(n)]+1)` -/
def P5063981383269220069.Spec : Prop :=
  ∀ n, P5063981383269220069.a n = A071954 n

end A071954

/-! ## A071954.P13133404229671003363

`Δ[A005246(2*n)]+2`
-/

namespace A071954.P13133404229671003363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A071954.P13133404229671003363

namespace A071954

/-- `Δ[A005246(2*n)]+2` -/
def P13133404229671003363.Spec : Prop :=
  ∀ n, P13133404229671003363.a n = A071954 n

end A071954

/-! ## A071954.P5077788078639577979

`2*(A002530(2*n)+1)`
-/

namespace A071954.P5077788078639577979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002530 (2 * n) + 1)

end

end A071954.P5077788078639577979

namespace A071954

/-- `2*(A002530(2*n)+1)` -/
def P5077788078639577979.Spec : Prop :=
  ∀ n, P5077788078639577979.a n = A071954 n

end A071954

/-! ## A071954.P9370038496104520420

`record[Δ[A122573(n+1)]+2]`
-/

namespace A071954.P9370038496104520420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122573 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071954.P9370038496104520420

namespace A071954

/-- `record[Δ[A122573(n+1)]+2]` -/
def P9370038496104520420.Spec : Prop :=
  ∀ n, P9370038496104520420.a n = A071954 n

end A071954

/-! ## A071954.P16395002095697628215

`Δ[A122573(2*(n+1))]+2`
-/

namespace A071954.P16395002095697628215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122573 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A071954.P16395002095697628215

namespace A071954

/-- `Δ[A122573(2*(n+1))]+2` -/
def P16395002095697628215.Spec : Prop :=
  ∀ n, P16395002095697628215.a n = A071954 n

end A071954

/-! ## A071954.P13997343479298524163

`∑[2*A122573(2*n+1)]`
-/

namespace A071954.P13997343479298524163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122573 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071954.P13997343479298524163

namespace A071954

/-- `∑[2*A122573(2*n+1)]` -/
def P13997343479298524163.Spec : Prop :=
  ∀ n, P13997343479298524163.a n = A071954 n

end A071954

/-!
# A071955: a(n) = remainder when n is reduced mod reverse(n).

The programs for A071955, there is no canonical definition to state claims against.
-/

/-! ## A071955.P16123257165595733689

`(n+1)%A004086(n+1)`
-/

namespace A071955.P16123257165595733689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A004086 (n + 1))

end

end A071955.P16123257165595733689

/-! ## A071955.P6501747256737605552

`(n+1)²%A061205(n+1)/(n+1)`
-/

namespace A071955.P6501747256737605552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((n + 1) ^ 2 : ℤ) (A061205 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A071955.P6501747256737605552

/-! ## A071955.P4539914789128055553

`A056964(n+1)%(n+1-A056964(n+1))`
-/

namespace A071955.P4539914789128055553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056964 (n + 1)) ((n + 1 : ℤ) - A056964 (n + 1))

end

end A071955.P4539914789128055553

/-! ## A071955.P1438419505402614059

`(n+1)%A135020(A103517(n))`
-/

namespace A071955.P1438419505402614059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A135020 (A103517 n).toNat)

end

end A071955.P1438419505402614059

/-! ## A071955.P5421345295402996290

`A267099(A267099(n+1))%(A061205(n+1)/(n+1))`
-/

namespace A071955.P5421345295402996290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267099 (A267099 (n + 1)).toNat) (SequenceMachineLib.roundAway ((A061205 (n + 1) : ℚ) / (n + 1 : ℚ)))

end

end A071955.P5421345295402996290

/-! ## A071955.P13767742172008777430

`A003056(∑[n+1])%A135020(2*(n+1))`
-/

namespace A071955.P13767742172008777430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (∑ j ∈ Finset.range (n + 1), f1 j)) (A135020 (2 * (n + 1)))

end

end A071955.P13767742172008777430

/-!
# A071956: Table in which n-th row list prime factors and their exponents in factorization of prime(n)!.

The programs for A071956, there is no canonical definition to state claims against.
-/

/-! ## A071956.P1307640474167240046

`ceil(A076435(n+2)/A076397(n+1))`
-/

namespace A071956.P1307640474167240046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A076435 (n + 2) : ℚ) / (A076397 (n + 1) : ℚ)⌉

end

end A071956.P1307640474167240046

/-! ## A071956.P2556663263350582396

`A262882(A151769(n)+A020652(n+1))`
-/

namespace A071956.P2556663263350582396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262882 (A151769 n + A020652 (n + 1)).toNat

end

end A071956.P2556663263350582396

/-! ## A071956.P13847742119623980414

`A000005(n+2)-A104035(A015886(n))`
-/

namespace A071956.P13847742119623980414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2) - A104035 (A015886 n).toNat

end

end A071956.P13847742119623980414

/-! ## A071956.P12504124710235276019

`gcd(A065770(n+1), A328571(A346101(n)²))`
-/

namespace A071956.P12504124710235276019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065770 (n + 1)) (A328571 (A346101 n ^ 2).toNat)

end

end A071956.P12504124710235276019

/-! ## A071956.P6155546755462225802

`A001222(A348999(2*n)+A241482(n+1))`
-/

namespace A071956.P6155546755462225802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A348999 (2 * n) + A241482 (n + 1)).toNat

end

end A071956.P6155546755462225802

/-!
# A071957: Sum( i=1, n, K(i,n) ) where K(x,y) is the Kronecker symbol (x/y).

The programs for A071957, there is no canonical definition to state claims against.
-/

/-! ## A071957.P1933267887633509673

`A033718(A077168(n)-A033718(n))`
-/

namespace A071957.P1933267887633509673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 (A077168 n - A033718 n).toNat

end

end A071957.P1933267887633509673

/-!
# A071958: Numbers k such that Sum_{i=0..k} K(k, i) < 0 where K(x, y) is the Kronecker symbol (x/y).

The programs for A071958, there is no canonical definition to state claims against.
-/

/-! ## A071958.P15024980380557620703

`lt[A071961(n), 0]`
-/

namespace A071958.P15024980380557620703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071961 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A071958.P15024980380557620703

/-! ## A071958.P17584358281312363612

`lt[A096396(n), A096397(n)]`
-/

namespace A071958.P17584358281312363612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096396 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096397 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071958.P17584358281312363612

/-!
# A071959: Numbers m such that Sum_{i=1..m} K(i,m) = Sum_{i=1..m} K(m,i) where K(x,y) is the Kronecker symbol (x/y).

The programs for A071959, there is no canonical definition to state claims against.
-/

/-! ## A071959.P14755910897062865684

`record[A057979(n)%A163161(A003963(n+1))]`
-/

namespace A071959.P14755910897062865684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057979 n) (A163161 (A003963 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071959.P14755910897062865684

/-! ## A071959.P8846595508224596851

`lt[A357860(n+1), A280472(A280472(n+1))]`
-/

namespace A071959.P8846595508224596851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280472 (A280472 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071959.P8846595508224596851

/-! ## A071959.P5725836765188011862

`lt[A075493(A304882(n+1)), A085062(3*n+4)]`
-/

namespace A071959.P5725836765188011862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075493 (A304882 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085062 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071959.P5725836765188011862

/-! ## A071959.P5150094709535396736

`lt[2^val(n+1, 2), A035004(A353399(n+1))]`
-/

namespace A071959.P5150094709535396736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035004 (A353399 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A071959.P5150094709535396736

/-! ## A071959.P11231337226726994825

`lt[A174465(A061142(n+1)), A331142(n+1)]`
-/

namespace A071959.P11231337226726994825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174465 (A061142 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331142 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071959.P11231337226726994825

/-!
# A071960: Largest k >= 0 such that Product_{i=0..k} (n+i) divides n!.

The programs for A071960, the canonical program `A071960.P16235659411092393557` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071960 has offset 1).

The definition of A071960 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064778, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071960.P16235659411092393557

`A064778(n+1)-(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A071960

/-- `A064778(n+1)-(n+1)` -/
def P16235659411092393557.Spec : Prop :=
  ∀ n, P16235659411092393557.a n = A071960 (n + 1)

theorem P16235659411092393557.correct : P16235659411092393557.Spec := by
  intro n
  simp only [A071960, Nat.add_sub_cancel]

end A071960

/-! ## A071960.P1832306122093151858

`A266620(n+1)-(n+2)`
-/

namespace A071960.P1832306122093151858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266620 (n + 1) - (n + 2 : ℤ)

end

end A071960.P1832306122093151858

namespace A071960

/-- `A266620(n+1)-(n+2)` -/
def P1832306122093151858.Spec : Prop :=
  ∀ n, P1832306122093151858.a n = A071960 (n + 1)

end A071960

/-! ## A071960.P7319817339488587783

`n-(A033558(n+1)+char[2])`
-/

namespace A071960.P7319817339488587783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A033558 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A071960.P7319817339488587783

namespace A071960

/-- `n-(A033558(n+1)+char[2])` -/
def P7319817339488587783.Spec : Prop :=
  ∀ n, P7319817339488587783.a n = A071960 (n + 1)

end A071960

/-! ## A071960.P3381802938789399156

`A151800(n+1)-(char[2]+2+n)`
-/

namespace A071960.P3381802938789399156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 1) - (((if ∃ j, f1 j = n then 1 else 0) + 2 + n : ℕ) : ℤ)

end

end A071960.P3381802938789399156

namespace A071960

/-- `A151800(n+1)-(char[2]+2+n)` -/
def P3381802938789399156.Spec : Prop :=
  ∀ n, P3381802938789399156.a n = A071960 (n + 1)

end A071960

/-! ## A071960.P12923825339751458907

`A064778(n+1)%A030640(n)`
-/

namespace A071960.P12923825339751458907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064778 (n + 1)) (A030640 n)

end

end A071960.P12923825339751458907

namespace A071960

/-- `A064778(n+1)%A030640(n)` -/
def P12923825339751458907.Spec : Prop :=
  ∀ n, P12923825339751458907.a n = A071960 (n + 1)

end A071960

/-! ## A071960.P1812261423850050283

`A266620(n+1)%A057544(n)`
-/

namespace A071960.P1812261423850050283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266620 (n + 1)) (A057544 n)

end

end A071960.P1812261423850050283

namespace A071960

/-- `A266620(n+1)%A057544(n)` -/
def P1812261423850050283.Spec : Prop :=
  ∀ n, P1812261423850050283.a n = A071960 (n + 1)

end A071960

/-! ## A071960.P7623193628132748375

`A007920(char[2]+2+n)`
-/

namespace A071960.P7623193628132748375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 ((if ∃ j, f1 j = n then 1 else 0) + 2 + n)

end

end A071960.P7623193628132748375

namespace A071960

/-- `A007920(char[2]+2+n)` -/
def P7623193628132748375.Spec : Prop :=
  ∀ n, P7623193628132748375.a n = A071960 (n + 1)

end A071960

/-! ## A071960.P13366597909589884964

`A013632(char[2]+1+n)-1`
-/

namespace A071960.P13366597909589884964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) - 1

end

end A071960.P13366597909589884964

namespace A071960

/-- `A013632(char[2]+1+n)-1` -/
def P13366597909589884964.Spec : Prop :=
  ∀ n, P13366597909589884964.a n = A071960 (n + 1)

end A071960

/-! ## A071960.P1368365055309930444

`A007920(n+2)*A185114(n)`
-/

namespace A071960.P1368365055309930444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (n + 2) * A185114 n

end

end A071960.P1368365055309930444

namespace A071960

/-- `A007920(n+2)*A185114(n)` -/
def P1368365055309930444.Spec : Prop :=
  ∀ n, P1368365055309930444.a n = A071960 (n + 1)

end A071960

/-! ## A071960.P9943758637739343649

`and(Δ[A007920(n)], A007920(n+2))`
-/

namespace A071960.P9943758637739343649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A007920 (n + 2))

end

end A071960.P9943758637739343649

namespace A071960

/-- `and(Δ[A007920(n)], A007920(n+2))` -/
def P9943758637739343649.Spec : Prop :=
  ∀ n, P9943758637739343649.a n = A071960 (n + 1)

end A071960

/-! ## A071960.P13873235570985328996

`C(A007920(n+2), A014963(A006093(n+1)))`
-/

namespace A071960.P13873235570985328996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007920 (n + 2)).toNat (A014963 (A006093 (n + 1)).toNat).toNat

end

end A071960.P13873235570985328996

namespace A071960

/-- `C(A007920(n+2), A014963(A006093(n+1)))` -/
def P13873235570985328996.Spec : Prop :=
  ∀ n, (P13873235570985328996.a n : ℤ) = A071960 (n + 1)

end A071960

/-! ## A071960.P13776202344810207026

`A233583(n+1)-A233583(A033558(n+1)+1)`
-/

namespace A071960.P13776202344810207026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) - A233583 (A033558 (n + 1) + 1).toNat

end

end A071960.P13776202344810207026

namespace A071960

/-- `A233583(n+1)-A233583(A033558(n+1)+1)` -/
def P13776202344810207026.Spec : Prop :=
  ∀ n, P13776202344810207026.a n = A071960 (n + 1)

end A071960

/-!
# A071961: a(n) = Sum_{i=0..n} K(n, i) where K(x, y) is the Kronecker symbol (x / y).

The programs for A071961, there is no canonical definition to state claims against.
-/

/-! ## A071961.P4647661724988685305

`A096396(n)-A096397(n)`
-/

namespace A071961.P4647661724988685305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096396 n - A096397 n

end

end A071961.P4647661724988685305

/-!
# A071962: Number of double points of the map that, for each term t of a sequence, counts the preceding terms that are greater than or equal to t.

The programs for A071962, there is no canonical definition to state claims against.
-/

/-! ## A071962.P12860046663479316739

`∑[A023193(∑[A149295(n)])]`
-/

namespace A071962.P12860046663479316739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149295 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071962.P12860046663479316739

/-! ## A071962.P12834474153349702659

`A057142(∏[∑[A095149(n)]])`
-/

namespace A071962.P12834474153349702659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071962.P12834474153349702659

/-! ## A071962.P18120564693388388060

`A057142(∏[∑[A153206(n)]])`
-/

namespace A071962.P18120564693388388060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153206 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071962.P18120564693388388060

/-!
# A071963: Largest prime factor of p(n), the n-th partition number A000041(n) (with a(0) = a(1) = 1 by convention).

The programs for A071963, there is no canonical definition to state claims against.
-/

/-! ## A071963.P13106777792137016590

`A006530(A000041(n))`
-/

namespace A071963.P13106777792137016590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000041 n).toNat

end

end A071963.P13106777792137016590

/-! ## A071963.P12759700518019495427

`A192885(n)+n`
-/

namespace A071963.P12759700518019495427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192885 n + (n : ℤ)

end

end A071963.P12759700518019495427

/-! ## A071963.P12237447585696662899

`abs(A001489(n)-A192885(n))`
-/

namespace A071963.P12237447585696662899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n - A192885 n|

end

end A071963.P12237447585696662899

/-! ## A071963.P17950033849964100238

`A005843(n)-(n-A192885(n))`
-/

namespace A071963.P17950033849964100238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A192885 n)

end

end A071963.P17950033849964100238

/-! ## A071963.P3522328182300379998

`n-(char[A215568(A311635(n))]-A192885(n))`
-/

namespace A071963.P3522328182300379998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215568 (A311635 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A192885 n)

end

end A071963.P3522328182300379998

/-! ## A071963.P13877168639532099895

`A052938(2*n)-(1-A192885(n))`
-/

namespace A071963.P13877168639532099895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * n) - (1 - A192885 n)

end

end A071963.P13877168639532099895

/-!
# A071964: Numbers k such that k = Gpf(k) * Gpf(phi(k)) where Gpf(k) = A006530(k) is the greatest prime factor of k.

The programs for A071964, there is no canonical definition to state claims against.
-/

/-! ## A071964.P10575353049413595679

`eq[A000001(n), A064132(A255263(n+1))]`
-/

namespace A071964.P10575353049413595679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064132 (A255263 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071964.P10575353049413595679

/-! ## A071964.P13922453738518518648

`A318990(lt[A134580(n+1), A190116(3*n+2)])`
-/

namespace A071964.P13922453738518518648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190116 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318990 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A071964.P13922453738518518648

/-!
# A071965: Numbers k such that k = Gpf(k) * Gpf(sigma(k)) where Gpf(k) = A006530(k) is the greatest prime factor of k.

The programs for A071965, there is no canonical definition to state claims against.
-/

/-! ## A071965.P17987868676991943516

`filter[A333646(n+3), A354927(#)]`
-/

namespace A071965.P17987868676991943516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333646 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A071965.P17987868676991943516

/-! ## A071965.P12023389015431986526

`filter[A333646(n+1), A353480(#)]`
-/

namespace A071965.P12023389015431986526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A071965.P12023389015431986526

/-! ## A071965.P1118578172378640818

`filter[A333646(n+1), A353481(#)]`
-/

namespace A071965.P1118578172378640818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A071965.P1118578172378640818

/-! ## A071965.P5251396659546292212

`filter[A333646(n+3), A064911(#)]`
-/

namespace A071965.P5251396659546292212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333646 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A071965.P5251396659546292212

/-! ## A071965.P17117045291257647228

`filter[A333646(n+3), A101040(#)]`
-/

namespace A071965.P17117045291257647228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333646 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A071965.P17117045291257647228

/-! ## A071965.P17149753174966003405

`filter[A333646(n+3), A280710(#)]`
-/

namespace A071965.P17149753174966003405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333646 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A071965.P17149753174966003405

/-! ## A071965.P11146534692256883162

`filter[A333646(n+3), A353471(#)]`
-/

namespace A071965.P11146534692256883162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333646 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A071965.P11146534692256883162

/-! ## A071965.P10915301162392524308

`filter[A333646(n+3), A353788(#)]`
-/

namespace A071965.P10915301162392524308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333646 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A071965.P10915301162392524308

/-! ## A071965.P9116460169578136352

`filter[A333646(n+3), A353799(#)]`
-/

namespace A071965.P9116460169578136352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333646 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A071965.P9116460169578136352

/-! ## A071965.P12773717454314845772

`∩[A046315(n+1), A333646(n+1)]`
-/

namespace A071965.P12773717454314845772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071965.P12773717454314845772

/-! ## A071965.P17490372521337866084

`∩[A046388(n+1), A333646(n+1)]`
-/

namespace A071965.P17490372521337866084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071965.P17490372521337866084

/-!
# A071968: Denominators of coefficients of expansion of arctan(x)^2 = x^2-2/3*x^4+23/45*x^6-44/105*x^8+563/1575*x^10-3254/10395*x^12+ ...

The programs for A071968, there is no canonical definition to state claims against.
-/

/-! ## A071968.P17504086424140997150

`A225123(2*n)/(n%2+1)`
-/

namespace A071968.P17504086424140997150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225123 (2 * n) : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)

end

end A071968.P17504086424140997150

/-! ## A071968.P5115733577899604872

`A225123(2*n)/A000034(n)`
-/

namespace A071968.P5115733577899604872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225123 (2 * n) : ℚ) / (A000034 n : ℚ)

end

end A071968.P5115733577899604872

/-! ## A071968.P17541596999416917517

`A225123(2*n)/(A000035(n)+1)`
-/

namespace A071968.P17541596999416917517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225123 (2 * n) : ℚ) / (A000035 n + 1 : ℚ)

end

end A071968.P17541596999416917517

/-! ## A071968.P1800474105155147795

`A225123(2*n)/A000079(and(1, -n))`
-/

namespace A071968.P1800474105155147795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225123 (2 * n) : ℚ) / (A000079 (Int.land 1 (-(n : ℤ))).toNat : ℚ)

end

end A071968.P1800474105155147795

/-! ## A071968.P16066113710761417959

`A225123(2*n)/A001285(and(1, -n))`
-/

namespace A071968.P16066113710761417959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225123 (2 * n) : ℚ) / (A001285 (Int.land 1 (-(n : ℤ))).toNat : ℚ)

end

end A071968.P16066113710761417959

/-!
# A071969: a(n) = Sum_{k=0..floor(n/3)} (binomial(n+1, k)*binomial(2*n-3*k, n-3*k)/(n+1)).

The programs for A071969, there is no canonical definition to state claims against.
-/

/-! ## A071969.P10001180168929643087

`A108076(∑[n])`
-/

namespace A071969.P10001180168929643087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108076 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071969.P10001180168929643087

/-! ## A071969.P8649039724932346450

`A071946(∑[n]+n)`
-/

namespace A071969.P8649039724932346450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071946 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A071969.P8649039724932346450

/-! ## A071969.P324358299562711287

`A108074(∑[n])`
-/

namespace A071969.P324358299562711287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108074 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071969.P324358299562711287

/-! ## A071969.P194266387918534568

`A071944(∑[n]+n)`
-/

namespace A071969.P194266387918534568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071944 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A071969.P194266387918534568

/-! ## A071969.P2452461695917599981

`or(char[1], A071944(A000096(n)))`
-/

namespace A071969.P2452461695917599981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A071944 (A000096 n).toNat)

end

end A071969.P2452461695917599981

/-! ## A071969.P15340555192997827065

`gcd(A000038(n), A071944(A000096(n)))`
-/

namespace A071969.P15340555192997827065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A071944 (A000096 n).toNat)

end

end A071969.P15340555192997827065

/-! ## A071969.P8062327023921268255

`lcm(A033999(n), A071944(A000096(n)))`
-/

namespace A071969.P8062327023921268255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A071944 (A000096 n).toNat)

end

end A071969.P8062327023921268255

/-! ## A071969.P14487876683251532644

`A071944(A000096(n))^A178334(n)`
-/

namespace A071969.P14487876683251532644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071944 (A000096 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A071969.P14487876683251532644

/-!
# A071970: List the positive rationals in the order in which they are produced by the Stern sequence A002487 and apply the Sagher map to turn them into integers.

The programs for A071970, there is no canonical definition to state claims against.
-/

/-! ## A071970.P977733009048070211

`A036561(A122298(n)^A306859(n))`
-/

namespace A071970.P977733009048070211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (SequenceMachineLib.roundAway ((A122298 n : ℚ) ^ (A306859 n : ℤ))).toNat

end

end A071970.P977733009048070211

/-!
# A071973: Number of primes less than or equal to Pi^n.

The programs for A071973, the canonical program `A071973.P12908464986149979114` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071973 has offset 0).

The definition of A071973 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A001672, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071973.P12908464986149979114

`A000720(A001672(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A071973

/-- `A000720(A001672(n))` -/
def P12908464986149979114.Spec : Prop :=
  ∀ n, P12908464986149979114.a n = A071973 n

theorem P12908464986149979114.correct : P12908464986149979114.Spec := by
  intro n
  simp only [A071973]

end A071973

/-! ## A071973.P16503606500353086214

`A061274(n)+a(n-1)` with `a(0)=0`
-/

namespace A071973.P16503606500353086214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A061274 n + a (n - 1)

end

end A071973.P16503606500353086214

namespace A071973

/-- `A061274(n)+a(n-1)` -/
def P16503606500353086214.Spec : Prop :=
  ∀ n, P16503606500353086214.a n = A071973 n

end A071973

/-! ## A071973.P5837499549615493470

`∑[A061274(A028310(n))]-2`
-/

namespace A071973.P5837499549615493470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061274 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A071973.P5837499549615493470

namespace A071973

/-- `∑[A061274(A028310(n))]-2` -/
def P5837499549615493470.Spec : Prop :=
  ∀ n, P5837499549615493470.a n = A071973 n

end A071973

/-! ## A071973.P16801037252617002842

`∑[A057427(n)*A061274(A028310(n))]`
-/

namespace A071973.P16801037252617002842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A061274 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071973.P16801037252617002842

namespace A071973

/-- `∑[A057427(n)*A061274(A028310(n))]` -/
def P16801037252617002842.Spec : Prop :=
  ∀ n, P16801037252617002842.a n = A071973 n

end A071973

/-! ## A071973.P13989715835804736183

`∑[A061274(A028310(n))%A000244(n)]`
-/

namespace A071973.P13989715835804736183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061274 (A028310 n).toNat) (A000244 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071973.P13989715835804736183

namespace A071973

/-- `∑[A061274(A028310(n))%A000244(n)]` -/
def P13989715835804736183.Spec : Prop :=
  ∀ n, P13989715835804736183.a n = A071973 n

end A071973

/-! ## A071973.P7017906309618759459

`∑[A002828(n²)*A061274(A028310(n))]`
-/

namespace A071973.P7017906309618759459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (n ^ 2) * A061274 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071973.P7017906309618759459

namespace A071973

/-- `∑[A002828(n²)*A061274(A028310(n))]` -/
def P7017906309618759459.Spec : Prop :=
  ∀ n, P7017906309618759459.a n = A071973 n

end A071973

/-! ## A071973.P13974331333807114729

`∑[A061274(n+1)]-A061274(n+1)`
-/

namespace A071973.P13974331333807114729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A061274 (n + 1)

end

end A071973.P13974331333807114729

namespace A071973

/-- `∑[A061274(n+1)]-A061274(n+1)` -/
def P13974331333807114729.Spec : Prop :=
  ∀ n, P13974331333807114729.a n = A071973 n

end A071973

/-!
# A071974: Numerator of rational number i/j such that Sagher map sends i/j to n.

The programs for A071974, the canonical program `A071974.P9686884691264808123` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071974 has offset 1).

The definition of A071974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071974.P14051614945892130540

`sqrt(A350388(n+1))`
-/

namespace A071974.P14051614945892130540
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A350388 (n + 1) : ℝ)

end

end A071974.P14051614945892130540

namespace A071974

/-- `sqrt(A350388(n+1))` -/
def P14051614945892130540.Spec : Prop :=
  ∀ n, P14051614945892130540.a n = (A071974 (n + 1) : ℝ)

end A071974

/-! ## A071974.P13196117706934524748

`sqrt((n+1)/A350389(n+1))`
-/

namespace A071974.P13196117706934524748
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℚ) / (A350389 (n + 1) : ℚ) : ℝ)

end

end A071974.P13196117706934524748

namespace A071974

/-- `sqrt((n+1)/A350389(n+1))` -/
def P13196117706934524748.Spec : Prop :=
  ∀ n, P13196117706934524748.a n = (A071974 (n + 1) : ℝ)

end A071974

/-! ## A071974.P9686884691264808123

`A071975(A003557(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071974

/-- `A071975(A003557(n+1))` -/
def P9686884691264808123.Spec : Prop :=
  ∀ n, P9686884691264808123.a n = A071974 (n + 1)

theorem P9686884691264808123.correct : P9686884691264808123.Spec := by
  intro n
  simp only [A071974, Nat.add_sub_cancel]

end A071974

/-! ## A071974.P13000442944737639827

`A071975(A336551(n+1)+1)`
-/

namespace A071974.P13000442944737639827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (A336551 (n + 1) + 1).toNat

end

end A071974.P13000442944737639827

namespace A071974

/-- `A071975(A336551(n+1)+1)` -/
def P13000442944737639827.Spec : Prop :=
  ∀ n, P13000442944737639827.a n = A071974 (n + 1)

end A071974

/-! ## A071974.P9375927793997908424

`A000027(root(A350388(n+1), 2))`
-/

namespace A071974.P9375927793997908424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A350388 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A071974.P9375927793997908424

namespace A071974

/-- `A000027(root(A350388(n+1), 2))` -/
def P9375927793997908424.Spec : Prop :=
  ∀ n, P9375927793997908424.a n = A071974 (n + 1)

end A071974

/-! ## A071974.P2875118744449967039

`A071975((n+1)/A007947(n+1))`
-/

namespace A071974.P2875118744449967039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A071974.P2875118744449967039

namespace A071974

/-- `A071975((n+1)/A007947(n+1))` -/
def P2875118744449967039.Spec : Prop :=
  ∀ n, P2875118744449967039.a n = A071974 (n + 1)

end A071974

/-! ## A071974.P17259518078491478814

`A019554(n+1)/A071975(n+1)`
-/

namespace A071974.P17259518078491478814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (n + 1) : ℚ) / (A071975 (n + 1) : ℚ)

end

end A071974.P17259518078491478814

namespace A071974

/-- `A019554(n+1)/A071975(n+1)` -/
def P17259518078491478814.Spec : Prop :=
  ∀ n, P17259518078491478814.a n = (A071974 (n + 1) : ℚ)

end A071974

/-! ## A071974.P12352711573858200596

`A071975(A102631(n+1)/(n+1))`
-/

namespace A071974.P12352711573858200596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (SequenceMachineLib.roundAway ((A102631 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A071974.P12352711573858200596

namespace A071974

/-- `A071975(A102631(n+1)/(n+1))` -/
def P12352711573858200596.Spec : Prop :=
  ∀ n, P12352711573858200596.a n = A071974 (n + 1)

end A071974

/-! ## A071974.P8895519683251306718

`A000188((n+1)/A350389(n+1))`
-/

namespace A071974.P8895519683251306718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350389 (n + 1) : ℚ))).toNat

end

end A071974.P8895519683251306718

namespace A071974

/-- `A000188((n+1)/A350389(n+1))` -/
def P8895519683251306718.Spec : Prop :=
  ∀ n, P8895519683251306718.a n = A071974 (n + 1)

end A071974

/-! ## A071974.P927091314477489567

`A000196((n+1)/A350389(n+1))`
-/

namespace A071974.P927091314477489567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350389 (n + 1) : ℚ))).toNat

end

end A071974.P927091314477489567

namespace A071974

/-- `A000196((n+1)/A350389(n+1))` -/
def P927091314477489567.Spec : Prop :=
  ∀ n, P927091314477489567.a n = A071974 (n + 1)

end A071974

/-! ## A071974.P8019555595462116262

`A019554((n+1)/A350389(n+1))`
-/

namespace A071974.P8019555595462116262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350389 (n + 1) : ℚ))).toNat

end

end A071974.P8019555595462116262

namespace A071974

/-- `A019554((n+1)/A350389(n+1))` -/
def P8019555595462116262.Spec : Prop :=
  ∀ n, P8019555595462116262.a n = A071974 (n + 1)

end A071974

/-! ## A071974.P8610006262272973049

`A056622((n+1)/A350389(n+1))`
-/

namespace A071974.P8610006262272973049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350389 (n + 1) : ℚ))).toNat

end

end A071974.P8610006262272973049

namespace A071974

/-- `A056622((n+1)/A350389(n+1))` -/
def P8610006262272973049.Spec : Prop :=
  ∀ n, P8610006262272973049.a n = A071974 (n + 1)

end A071974

/-! ## A071974.P592380658038888489

`A056622(A350388(2*n+1-n))`
-/

namespace A071974.P592380658038888489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 (A350388 (2 * n + 1 - n)).toNat

end

end A071974.P592380658038888489

namespace A071974

/-- `A056622(A350388(2*n+1-n))` -/
def P592380658038888489.Spec : Prop :=
  ∀ n, P592380658038888489.a n = A071974 (n + 1)

end A071974

/-! ## A071974.P2547098085976537084

`gcd(A000188(n+1), A331738(n+1))`
-/

namespace A071974.P2547098085976537084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000188 (n + 1)) (A331738 (n + 1))

end

end A071974.P2547098085976537084

namespace A071974

/-- `gcd(A000188(n+1), A331738(n+1))` -/
def P2547098085976537084.Spec : Prop :=
  ∀ n, (P2547098085976537084.a n : ℤ) = A071974 (n + 1)

end A071974

/-! ## A071974.P16286878621857343500

`gcd(A019554(n+1), A350388(n+1))`
-/

namespace A071974.P16286878621857343500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A019554 (n + 1)) (A350388 (n + 1))

end

end A071974.P16286878621857343500

namespace A071974

/-- `gcd(A019554(n+1), A350388(n+1))` -/
def P16286878621857343500.Spec : Prop :=
  ∀ n, (P16286878621857343500.a n : ℤ) = A071974 (n + 1)

end A071974

/-! ## A071974.P3849295101531676439

`gcd(A350388(n+1)², A056622(n+1))`
-/

namespace A071974.P3849295101531676439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A350388 (n + 1) ^ 2) (A056622 (n + 1))

end

end A071974.P3849295101531676439

namespace A071974

/-- `gcd(A350388(n+1)², A056622(n+1))` -/
def P3849295101531676439.Spec : Prop :=
  ∀ n, (P3849295101531676439.a n : ℤ) = A071974 (n + 1)

end A071974

/-! ## A071974.P10834357803518275025

`∑{d}[n+1, A008836(#)*A305461((n+1)/#)]`
-/

namespace A071974.P10834357803518275025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A305461 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A071974.P10834357803518275025

namespace A071974

/-- `∑{d}[n+1, A008836(#)*A305461((n+1)/#)]` -/
def P10834357803518275025.Spec : Prop :=
  ∀ n, P10834357803518275025.a n = A071974 (n + 1)

end A071974

/-! ## A071974.P10565814476019977495

`A056622(A055229(n+1)*A350388(n+1))`
-/

namespace A071974.P10565814476019977495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 (A055229 (n + 1) * A350388 (n + 1)).toNat

end

end A071974.P10565814476019977495

namespace A071974

/-- `A056622(A055229(n+1)*A350388(n+1))` -/
def P10565814476019977495.Spec : Prop :=
  ∀ n, P10565814476019977495.a n = A071974 (n + 1)

end A071974

/-! ## A071974.P5400275816567483702

`A071975(A350390(n+1))/A071975(n+1)`
-/

namespace A071974.P5400275816567483702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071975 (A350390 (n + 1)).toNat : ℚ) / (A071975 (n + 1) : ℚ)

end

end A071974.P5400275816567483702

namespace A071974

/-- `A071975(A350390(n+1))/A071975(n+1)` -/
def P5400275816567483702.Spec : Prop :=
  ∀ n, P5400275816567483702.a n = (A071974 (n + 1) : ℚ)

end A071974

/-! ## A071974.P10184578329256130705

`gcd(A056622(A350388(n+1)), A056623(n+1))`
-/

namespace A071974.P10184578329256130705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056622 (A350388 (n + 1)).toNat) (A056623 (n + 1))

end

end A071974.P10184578329256130705

namespace A071974

/-- `gcd(A056622(A350388(n+1)), A056623(n+1))` -/
def P10184578329256130705.Spec : Prop :=
  ∀ n, (P10184578329256130705.a n : ℤ) = A071974 (n + 1)

end A071974

/-!
# A071975: Denominator of rational number i/j such that Sagher map sends i/j to n.

The programs for A071975, the canonical program `A071975.P11664215044611898026` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071975 has offset 1).

The definition of A071975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071975.P16056305113292101947

`A019554(A350389(n+1))`
-/

namespace A071975.P16056305113292101947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A350389 (n + 1)).toNat

end

end A071975.P16056305113292101947

namespace A071975

/-- `A019554(A350389(n+1))` -/
def P16056305113292101947.Spec : Prop :=
  ∀ n, P16056305113292101947.a n = A071975 (n + 1)

end A071975

/-! ## A071975.P12466410158692754503

`A019554(n+1)/A071974(n+1)`
-/

namespace A071975.P12466410158692754503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (n + 1) : ℚ) / (A071974 (n + 1) : ℚ)

end

end A071975.P12466410158692754503

namespace A071975

/-- `A019554(n+1)/A071974(n+1)` -/
def P12466410158692754503.Spec : Prop :=
  ∀ n, P12466410158692754503.a n = (A071975 (n + 1) : ℚ)

end A071975

/-! ## A071975.P6439064000610878199

`sqrt(A053143(n+1))/A071974(n+1)`
-/

namespace A071975.P6439064000610878199
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053143 (n + 1) : ℝ) / (A071974 (n + 1) : ℝ)

end

end A071975.P6439064000610878199

namespace A071975

/-- `sqrt(A053143(n+1))/A071974(n+1)` -/
def P6439064000610878199.Spec : Prop :=
  ∀ n, P6439064000610878199.a n = (A071975 (n + 1) : ℝ)

end A071975

/-! ## A071975.P10045438808787203757

`sqrt(A053143(n+1)/A350388(n+1))`
-/

namespace A071975.P10045438808787203757
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A053143 (n + 1) : ℚ) / (A350388 (n + 1) : ℚ) : ℝ)

end

end A071975.P10045438808787203757

namespace A071975

/-- `sqrt(A053143(n+1)/A350388(n+1))` -/
def P10045438808787203757.Spec : Prop :=
  ∀ n, P10045438808787203757.a n = (A071975 (n + 1) : ℝ)

end A071975

/-! ## A071975.P13546132946479361507

`gcd(A055491(n+1)²², A019554(n+1))`
-/

namespace A071975.P13546132946479361507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((A055491 (n + 1) ^ 2) ^ 2) (A019554 (n + 1))

end

end A071975.P13546132946479361507

namespace A071975

/-- `gcd(A055491(n+1)²², A019554(n+1))` -/
def P13546132946479361507.Spec : Prop :=
  ∀ n, (P13546132946479361507.a n : ℤ) = A071975 (n + 1)

end A071975

/-! ## A071975.P16905123588987951627

`∑{d}[n+1, A008836(#)*A365481((n+1)/#)]`
-/

namespace A071975.P16905123588987951627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A365481 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A071975.P16905123588987951627

namespace A071975

/-- `∑{d}[n+1, A008836(#)*A365481((n+1)/#)]` -/
def P16905123588987951627.Spec : Prop :=
  ∀ n, P16905123588987951627.a n = A071975 (n + 1)

end A071975

/-! ## A071975.P4088056807438428893

`A000188(A350389(n+1))*A007913(n+1)`
-/

namespace A071975.P4088056807438428893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A350389 (n + 1)).toNat * A007913 (n + 1)

end

end A071975.P4088056807438428893

namespace A071975

/-- `A000188(A350389(n+1))*A007913(n+1)` -/
def P4088056807438428893.Spec : Prop :=
  ∀ n, P4088056807438428893.a n = A071975 (n + 1)

end A071975

/-! ## A071975.P15730063953638341113

`A019554(n+1)/A019554(A350388(n+1))`
-/

namespace A071975.P15730063953638341113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (n + 1) : ℚ) / (A019554 (A350388 (n + 1)).toNat : ℚ)

end

end A071975.P15730063953638341113

namespace A071975

/-- `A019554(n+1)/A019554(A350388(n+1))` -/
def P15730063953638341113.Spec : Prop :=
  ∀ n, P15730063953638341113.a n = (A071975 (n + 1) : ℚ)

end A071975

/-! ## A071975.P11664215044611898026

`a(A336551(A003557(n+1)))*A007913(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071975

/-- `a(A336551(A003557(n+1)))*A007913(n+1)` -/
def P11664215044611898026.Spec : Prop :=
  ∀ n, P11664215044611898026.a n = A071975 (n + 1)

theorem P11664215044611898026.correct : P11664215044611898026.Spec := by
  intro n
  simp only [A071975, Nat.add_sub_cancel]

end A071975

/-! ## A071975.P2922198907737867292

`A000188(n+1)*A007913(n+1)/A071974(n+1)`
-/

namespace A071975.P2922198907737867292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000188 (n + 1) * A007913 (n + 1) : ℚ) / (A071974 (n + 1) : ℚ)

end

end A071975.P2922198907737867292

namespace A071975

/-- `A000188(n+1)*A007913(n+1)/A071974(n+1)` -/
def P2922198907737867292.Spec : Prop :=
  ∀ n, P2922198907737867292.a n = (A071975 (n + 1) : ℚ)

end A071975

/-! ## A071975.P13931705917353270988

`(n+1)/(A071974(A008833(n+1))*A071974(n+1))`
-/

namespace A071975.P13931705917353270988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A071974 (A008833 (n + 1)).toNat * A071974 (n + 1) : ℚ)

end

end A071975.P13931705917353270988

namespace A071975

/-- `(n+1)/(A071974(A008833(n+1))*A071974(n+1))` -/
def P13931705917353270988.Spec : Prop :=
  ∀ n, P13931705917353270988.a n = (A071975 (n + 1) : ℚ)

end A071975

/-! ## A071975.P13177195232918772906

`gcd(A055491(n+1)², A053166((n+1)*A057521(n+1)))`
-/

namespace A071975.P13177195232918772906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055491 (n + 1) ^ 2) (A053166 ((n + 1 : ℤ) * A057521 (n + 1)).toNat)

end

end A071975.P13177195232918772906

namespace A071975

/-- `gcd(A055491(n+1)², A053166((n+1)*A057521(n+1)))` -/
def P13177195232918772906.Spec : Prop :=
  ∀ n, (P13177195232918772906.a n : ℤ) = A071975 (n + 1)

end A071975

/-! ## A071975.P13913964610607553856

`A071974(A011262(n+1))`
-/

namespace A071975.P13913964610607553856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (A011262 (n + 1)).toNat

end

end A071975.P13913964610607553856

namespace A071975

/-- `A071974(A011262(n+1))` -/
def P13913964610607553856.Spec : Prop :=
  ∀ n, P13913964610607553856.a n = A071975 (n + 1)

end A071975

/-! ## A071975.P8047548073939933176

`A071974(A064549(n+1))`
-/

namespace A071975.P8047548073939933176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (A064549 (n + 1)).toNat

end

end A071975.P8047548073939933176

namespace A071975

/-- `A071974(A064549(n+1))` -/
def P8047548073939933176.Spec : Prop :=
  ∀ n, P8047548073939933176.a n = A071975 (n + 1)

end A071975

/-! ## A071975.P18289957391578900844

`A071974(A078310(n+1)-1)`
-/

namespace A071975.P18289957391578900844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (A078310 (n + 1) - 1).toNat

end

end A071975.P18289957391578900844

namespace A071975

/-- `A071974(A078310(n+1)-1)` -/
def P18289957391578900844.Spec : Prop :=
  ∀ n, P18289957391578900844.a n = A071975 (n + 1)

end A071975

/-! ## A071975.P4012634464999213050

`A071974((n+1)*A007947(n+1))`
-/

namespace A071975.P4012634464999213050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A071975.P4012634464999213050

namespace A071975

/-- `A071974((n+1)*A007947(n+1))` -/
def P4012634464999213050.Spec : Prop :=
  ∀ n, P4012634464999213050.a n = A071975 (n + 1)

end A071975

/-! ## A071975.P8658407452160328681

`A000196(A007913(n+1)*A350389(n+1))`
-/

namespace A071975.P8658407452160328681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A007913 (n + 1) * A350389 (n + 1)).toNat

end

end A071975.P8658407452160328681

namespace A071975

/-- `A000196(A007913(n+1)*A350389(n+1))` -/
def P8658407452160328681.Spec : Prop :=
  ∀ n, P8658407452160328681.a n = A071975 (n + 1)

end A071975

/-! ## A071975.P8475245628645799106

`A071974(A053143(n+1)/A071974(n+1)²)`
-/

namespace A071975.P8475245628645799106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (SequenceMachineLib.roundAway ((A053143 (n + 1) : ℚ) / (A071974 (n + 1) ^ 2 : ℚ))).toNat

end

end A071975.P8475245628645799106

namespace A071975

/-- `A071974(A053143(n+1)/A071974(n+1)²)` -/
def P8475245628645799106.Spec : Prop :=
  ∀ n, P8475245628645799106.a n = A071975 (n + 1)

end A071975

/-! ## A071975.P13496074721736464798

`gcd(A000578(A007913(n+1)), A019555((n+1)²))`
-/

namespace A071975.P13496074721736464798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000578 (A007913 (n + 1)).toNat) (A019555 ((n + 1) ^ 2))

end

end A071975.P13496074721736464798

namespace A071975

/-- `gcd(A000578(A007913(n+1)), A019555((n+1)²))` -/
def P13496074721736464798.Spec : Prop :=
  ∀ n, (P13496074721736464798.a n : ℤ) = A071975 (n + 1)

end A071975

/-!
# A071976: Number of lists of length n from {0..9} summing to n but not beginning with 0.

The programs for A071976, there is no canonical definition to state claims against.
-/

/-! ## A071976.P8891082639308449409

`A000984(n)-A306600(A036640(n))`
-/

namespace A071976.P8891082639308449409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A306600 (A036640 n).toNat

end

end A071976.P8891082639308449409

/-! ## A071976.P14271690528818365074

`A289410(A051682(n+1))`
-/

namespace A071976.P14271690528818365074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289410 (A051682 (n + 1)).toNat

end

end A071976.P14271690528818365074

/-! ## A071976.P2809645792720591768

`A289410(A081267(n+1))`
-/

namespace A071976.P2809645792720591768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289410 (A081267 (n + 1)).toNat

end

end A071976.P2809645792720591768

/-! ## A071976.P8051947169297087364

`A000984(n)-A324061(n+1)%2`
-/

namespace A071976.P8051947169297087364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - Int.tmod (A324061 (n + 1)) 2

end

end A071976.P8051947169297087364

/-! ## A071976.P6909191860409560740

`C(2*n, n)-A358773(A047970(n))`
-/

namespace A071976.P6909191860409560740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) - A358773 (A047970 n).toNat

end

end A071976.P6909191860409560740

/-!
# A071977: Triangle in which first row is {1}; to get n-th row take first n numbers greater than last number in previous row which are relatively prime to n.

The programs for A071977, there is no canonical definition to state claims against.
-/

/-! ## A071977.P18433816298395087213

`A077164(n+1)-floor(acot(n))`
-/

namespace A071977.P18433816298395087213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077164 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A071977.P18433816298395087213

/-! ## A071977.P9478185193948303011

`A077164(n%a(n-1)+1)` with `a(0)=1, a(1)=3`
-/

namespace A071977.P9478185193948303011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A077164 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A071977.P9478185193948303011

/-! ## A071977.P8951094346905837377

`A077164(n+1)-A000007(n)`
-/

namespace A071977.P8951094346905837377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077164 (n + 1) - A000007 n

end

end A071977.P8951094346905837377

/-! ## A071977.P11411930855080825720

`A077164(n+1)/A054977(n)`
-/

namespace A071977.P11411930855080825720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077164 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A071977.P11411930855080825720

/-! ## A071977.P1539626843721129041

`A077164(n+1)^(A000040(n+1)%2)`
-/

namespace A071977.P1539626843721129041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077164 (n + 1) : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A071977.P1539626843721129041

/-! ## A071977.P9890439882403921947

`A071978(n+1)+A077164(n+1)-A077166(n+1)`
-/

namespace A071977.P9890439882403921947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071978 (n + 1) + (A077164 (n + 1) - A077166 (n + 1))

end

end A071977.P9890439882403921947

/-! ## A071977.P17004237943952179788

`A071979(n+1)+A077164(n+1)-A077165(n+1)`
-/

namespace A071977.P17004237943952179788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071979 (n + 1) + (A077164 (n + 1) - A077165 (n + 1))

end

end A071977.P17004237943952179788

/-! ## A071977.P13150567180053429135

`A181440(A077164(n+1))`
-/

namespace A071977.P13150567180053429135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A077164 (n + 1)).toNat

end

end A071977.P13150567180053429135

/-! ## A071977.P4814884279728464723

`A077164(n+1)+A008683(2*(n+1)²)`
-/

namespace A071977.P4814884279728464723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077164 (n + 1) + A008683 (2 * (n + 1) ^ 2)

end

end A071977.P4814884279728464723

/-!
# A071978: Right diagonal of A071977.

The programs for A071978, there is no canonical definition to state claims against.
-/

/-! ## A071978.P15042457455894571189

`Δ[A077166(n)+a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A071978.P15042457455894571189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A077166 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071978.P15042457455894571189

/-! ## A071978.P9656558386732815106

`A077166(n+1)-A000007(n)`
-/

namespace A071978.P9656558386732815106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077166 (n + 1) - A000007 n

end

end A071978.P9656558386732815106

/-! ## A071978.P12454990093466496737

`A077166(n+1)/A054977(n)`
-/

namespace A071978.P12454990093466496737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077166 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A071978.P12454990093466496737

/-! ## A071978.P5178947671127505555

`A071977(n+1)+A077166(n+1)-A077164(n+1)`
-/

namespace A071978.P5178947671127505555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071977 (n + 1) + (A077166 (n + 1) - A077164 (n + 1))

end

end A071978.P5178947671127505555

/-! ## A071978.P14495824860563664132

`A071979(n+1)+A077166(n+1)-A077165(n+1)`
-/

namespace A071978.P14495824860563664132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071979 (n + 1) + (A077166 (n + 1) - A077165 (n + 1))

end

end A071978.P14495824860563664132

/-! ## A071978.P6632896801357683436

`A071977(∑[n+1])`
-/

namespace A071978.P6632896801357683436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071977 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071978.P6632896801357683436

/-! ## A071978.P3141404774946843470

`A171526(A077166(n+1))`
-/

namespace A071978.P3141404774946843470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171526 (A077166 (n + 1)).toNat

end

end A071978.P3141404774946843470

/-! ## A071978.P13339913058197615912

`A065475(A077166(n+1)-1)`
-/

namespace A071978.P13339913058197615912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A077166 (n + 1) - 1).toNat

end

end A071978.P13339913058197615912

/-!
# A071979: Left diagonal of A071977.

The programs for A071979, there is no canonical definition to state claims against.
-/

/-! ## A071979.P3912135135715628977

`A077165(n*a(C(2, n+2))+1)` with `a(0)=1`
-/

namespace A071979.P3912135135715628977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077165 ((n : ℤ) * a (Nat.choose 2 (n + 2)) + 1).toNat

end

end A071979.P3912135135715628977

/-! ## A071979.P7370825438203943065

`A077165(n+1)-A000007(n)`
-/

namespace A071979.P7370825438203943065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077165 (n + 1) - A000007 n

end

end A071979.P7370825438203943065

/-! ## A071979.P8649539489859236517

`A077165(n+1)/A054977(n)`
-/

namespace A071979.P8649539489859236517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077165 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A071979.P8649539489859236517

/-! ## A071979.P9519983185845055614

`A071977(n+1)+A077165(n+1)-A077164(n+1)`
-/

namespace A071979.P9519983185845055614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071977 (n + 1) + (A077165 (n + 1) - A077164 (n + 1))

end

end A071979.P9519983185845055614

/-! ## A071979.P6620177117561713643

`A071978(n+1)+A077165(n+1)-A077166(n+1)`
-/

namespace A071979.P6620177117561713643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071978 (n + 1) + (A077165 (n + 1) - A077166 (n + 1))

end

end A071979.P6620177117561713643

/-! ## A071979.P15206774986057264496

`A071977(∑[n]+1)`
-/

namespace A071979.P15206774986057264496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071977 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A071979.P15206774986057264496

/-! ## A071979.P10221381379535319459

`A071977(A000124(n))%A134594(n)`
-/

namespace A071979.P10221381379535319459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071977 (A000124 n).toNat) (A134594 n)

end

end A071979.P10221381379535319459

/-! ## A071979.P6489321883196391338

`A181440(A077165(n+1))`
-/

namespace A071979.P6489321883196391338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A077165 (n + 1)).toNat

end

end A071979.P6489321883196391338

/-!
# A071980: If n = abcd (say) in decimal, then a(n) = a + ab + abc + abcd + bcd + cd + d.

The programs for A071980, there is no canonical definition to state claims against.
-/

/-! ## A071980.P7721013622926163859

`A067082(n)+A054899(n)`
-/

namespace A071980.P7721013622926163859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067082 n + A054899 n

end

end A071980.P7721013622926163859

/-! ## A071980.P11794982710437906659

`A138953(n)%A138935(n+1)+n`
-/

namespace A071980.P11794982710437906659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138953 n) (A138935 (n + 1)) + (n : ℤ)

end

end A071980.P11794982710437906659

/-! ## A071980.P1129755075464295296

`A225580(round(sqrt(n²+1)))%A215810(n+1)`
-/

namespace A071980.P1129755075464295296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225580 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A215810 (n + 1))

end

end A071980.P1129755075464295296

/-! ## A071980.P11416405935282012267

`A225580(A123108(2*n))%A004526(A005383(n+1))`
-/

namespace A071980.P11416405935282012267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225580 (A123108 (2 * n)).toNat) (A004526 (A005383 (n + 1)).toNat)

end

end A071980.P11416405935282012267

/-! ## A071980.P8504053385843952765

`A225580(A000007(n)+n)%A066492(A066492(n+1))`
-/

namespace A071980.P8504053385843952765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225580 (A000007 n + (n : ℤ)).toNat) (A066492 (A066492 (n + 1)).toNat)

end

end A071980.P8504053385843952765

/-! ## A071980.P1686751370886678762

`A225580(A000007(n)+n)%∑[A156671(n)]`
-/

namespace A071980.P1686751370886678762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225580 (A000007 n + (n : ℤ)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071980.P1686751370886678762

/-! ## A071980.P5695473734426616198

`A225580(A000007(n)+n)*A286469(A137688(n))`
-/

namespace A071980.P5695473734426616198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225580 (A000007 n + (n : ℤ)).toNat * A286469 (A137688 n).toNat

end

end A071980.P5695473734426616198

/-! ## A071980.P15374546553822757161

`A007953(A307560(A138953(n)))+n`
-/

namespace A071980.P15374546553822757161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A307560 (A138953 n).toNat).toNat + (n : ℤ)

end

end A071980.P15374546553822757161

/-! ## A071980.P5072423080954986627

`A138953(n)+A000196(n²)`
-/

namespace A071980.P5072423080954986627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138953 n + A000196 (n ^ 2)

end

end A071980.P5072423080954986627

/-! ## A071980.P16600666879388492864

`A062329(A051022(n))+n`
-/

namespace A071980.P16600666879388492864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 (A051022 n).toNat + (n : ℤ)

end

end A071980.P16600666879388492864

/-! ## A071980.P5444474400254532097

`A064876(n²)+A053392(n)`
-/

namespace A071980.P5444474400254532097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (n ^ 2) + A053392 n

end

end A071980.P5444474400254532097

/-! ## A071980.P11724528949427587273

`A093882(n)+A000196(A002378(n))`
-/

namespace A071980.P11724528949427587273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093882 n + A000196 (A002378 n).toNat

end

end A071980.P11724528949427587273

/-! ## A071980.P12095778737110748773

`A093882(n)+A000196(A005563(n))`
-/

namespace A071980.P12095778737110748773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093882 n + A000196 (A005563 n).toNat

end

end A071980.P12095778737110748773

/-!
# A071981: Parity of the digits of e in base 10.

The programs for A071981, there is no canonical definition to state claims against.
-/

/-! ## A071981.P18157392885842995423

`A001113(n)%2`
-/

namespace A071981.P18157392885842995423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001113 (n + 1)) 2

end

end A071981.P18157392885842995423

/-! ## A071981.P5799816474831899060

`A086996(n)%2`
-/

namespace A071981.P5799816474831899060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086996 (n + 1)) 2

end

end A071981.P5799816474831899060

/-! ## A071981.P2466917297855918824

`log2(gcd(2, A121239(n)))`
-/

namespace A071981.P2466917297855918824
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A121239 (n + 1)) : ℝ)

end

end A071981.P2466917297855918824

/-! ## A071981.P16353161012158985599

`and(A001113(n), A008417(n))`
-/

namespace A071981.P16353161012158985599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001113 (n + 1)) (A008417 n)

end

end A071981.P16353161012158985599

/-! ## A071981.P12175529744367638439

`and(A001113(n), A008514(n))`
-/

namespace A071981.P12175529744367638439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001113 (n + 1)) (A008514 n)

end

end A071981.P12175529744367638439

/-! ## A071981.P2650763376281763552

`and(A001113(n), A016756(n))`
-/

namespace A071981.P2650763376281763552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001113 (n + 1)) (A016756 n)

end

end A071981.P2650763376281763552

/-! ## A071981.P6796413564743223960

`and(A001113(n), A016972(n))`
-/

namespace A071981.P6796413564743223960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001113 (n + 1)) (A016972 n)

end

end A071981.P6796413564743223960

/-! ## A071981.P1746245417766197563

`and(A001113(n), A017078(n))`
-/

namespace A071981.P1746245417766197563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001113 (n + 1)) (A017078 n)

end

end A071981.P1746245417766197563

/-! ## A071981.P12653019003739488148

`and(A001113(n), A057427(n))`
-/

namespace A071981.P12653019003739488148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001113 (n + 1)) (A057427 n)

end

end A071981.P12653019003739488148

/-! ## A071981.P17409161409017936450

`and(1, A001113(n))^A007318(n)`
-/

namespace A071981.P17409161409017936450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 1 (A001113 (n + 1)) : ℚ) ^ (A007318 n : ℤ)

end

end A071981.P17409161409017936450

/-! ## A071981.P6168696172002747459

`and(A007318(C(2, n)), A001113(n))`
-/

namespace A071981.P6168696172002747459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007318 (Nat.choose 2 n)) (A001113 (n + 1))

end

end A071981.P6168696172002747459

/-! ## A071981.P16697410532463383948

`and(1, A001113(n))^A000005(n+1)`
-/

namespace A071981.P16697410532463383948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 1 (A001113 (n + 1)) : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A071981.P16697410532463383948

/-! ## A071981.P9957986009912728725

`A000045(and(1, A001113(n))^(n+1))`
-/

namespace A071981.P9957986009912728725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 1 (A001113 (n + 1)) ^ (n + 1)).toNat

end

end A071981.P9957986009912728725

/-! ## A071981.P16181146755230631543

`and(1, A001113(n))^A000040(n+1)`
-/

namespace A071981.P16181146755230631543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 1 (A001113 (n + 1)) : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A071981.P16181146755230631543

/-! ## A071981.P17200780143395309259

`and(A007318(a(n-1)), A001113(n))` with `a(0)=0`
-/

namespace A071981.P17200780143395309259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land (A007318 (a (n - 1)).toNat) (A001113 (n + 1))

end

end A071981.P17200780143395309259

/-! ## A071981.P11129423557465282401

`and(A000041(a(n-1)), A001113(n))` with `a(0)=0, a(1)=1`
-/

namespace A071981.P11129423557465282401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.land (A000041 (a (n - 1)).toNat) (A001113 (n + 1))

end

end A071981.P11129423557465282401

/-! ## A071981.P16669894536844366020

`and(A000045(a(n-1)+1), A001113(n))` with `a(0)=0`
-/

namespace A071981.P16669894536844366020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land (A000045 (a (n - 1) + 1).toNat) (A001113 (n + 1))

end

end A071981.P16669894536844366020

/-! ## A071981.P13086388472442640581

`and(A000045(gcd(n+1, 2*n)), A001113(n))`
-/

namespace A071981.P13086388472442640581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000045 (Nat.gcd (n + 1) (2 * n))) (A001113 (n + 1))

end

end A071981.P13086388472442640581

/-! ## A071981.P791067394553737794

`A110779(2*n+1)%2`
-/

namespace A071981.P791067394553737794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110779 (2 * n + 1)) 2

end

end A071981.P791067394553737794

/-!
# A071982: Parity of the decimal digits of sqrt(2).

The programs for A071982, there is no canonical definition to state claims against.
-/

/-! ## A071982.P1410654707345886355

`A002193(n)%2`
-/

namespace A071982.P1410654707345886355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002193 (n + 1)) 2

end

end A071982.P1410654707345886355

/-! ## A071982.P16850371730357203368

`floor(A010503(n)/5)`
-/

namespace A071982.P16850371730357203368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010503 n : ℚ) / 5⌋

end

end A071982.P16850371730357203368

/-! ## A071982.P1619132116651073133

`C(2, 2*C(A268682(n), 4))`
-/

namespace A071982.P1619132116651073133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * Nat.choose (A268682 n).toNat 4)

end

end A071982.P1619132116651073133

/-! ## A071982.P9313658405643083030

`A188582(gcd(1-n, n-1))%2`
-/

namespace A071982.P9313658405643083030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188582 (Int.gcd (1 - (n : ℤ)) ((n : ℤ) - 1))) 2

end

end A071982.P9313658405643083030

/-! ## A071982.P15879936788325391764

`C(A265949(a(n-1)), C(A268682(n), 4))` with `a(0)=1`
-/

namespace A071982.P15879936788325391764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (A265949 (a (n - 1))).toNat (Nat.choose (A268682 n).toNat 4)

end

end A071982.P15879936788325391764

/-! ## A071982.P13925135394120094592

`C(A099946(a(n-1)+2), C(A268682(n), 4))` with `a(0)=1`
-/

namespace A071982.P13925135394120094592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (A099946 (a (n - 1) + 2)).toNat (Nat.choose (A268682 n).toNat 4)

end

end A071982.P13925135394120094592

/-! ## A071982.P2859629689948262964

`A120731(n+1)%2`
-/

namespace A071982.P2859629689948262964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120731 (n + 1 + 1)) 2

end

end A071982.P2859629689948262964

/-! ## A071982.P15387149658780602073

`A332969(2*n)%2`
-/

namespace A071982.P15387149658780602073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332969 (2 * n)) 2

end

end A071982.P15387149658780602073

/-! ## A071982.P5684448863073529768

`A110812(2*n+1)%2`
-/

namespace A071982.P5684448863073529768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110812 (2 * n + 1)) 2

end

end A071982.P5684448863073529768

/-! ## A071982.P5045604785911849696

`A000035(A002193(n)+2*n)`
-/

namespace A071982.P5045604785911849696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002193 (n + 1) + (2 * n : ℤ)).toNat

end

end A071982.P5045604785911849696

/-! ## A071982.P8959244443124593074

`A011547(n)%2`
-/

namespace A071982.P8959244443124593074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011547 n) 2

end

end A071982.P8959244443124593074

/-! ## A071982.P3244340741987123097

`A083377(2*n+1)%2`
-/

namespace A071982.P3244340741987123097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083377 (2 * n + 1)) 2

end

end A071982.P3244340741987123097

/-!
# A071985: a(n) is the smallest positive integer that cannot be obtained using at most n-1 of the integers {1, 2, ..., n} using each number at most once and the operators +, -, *, /.

The programs for A071985, there is no canonical definition to state claims against.
-/

/-! ## A071985.P4177163892764334717

`A216256((n+1)^n)+n`
-/

namespace A071985.P4177163892764334717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 ((n + 1) ^ n) + (n : ℤ)

end

end A071985.P4177163892764334717

/-! ## A071985.P4359198654015895538

`∑[A054404(2*n*a(n-1))+1]` with `a(0)=1`
-/

namespace A071985.P4359198654015895538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A054404 (2 * ((n : ℤ) * f1 (n - 1))).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071985.P4359198654015895538

/-!
# A071986: Parity of the prime-counting function pi(n).

The programs for A071986, the canonical program `A071986.P16196602093413610135` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071986 has offset 1).

The definition of A071986 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071986.P16196602093413610135

`A000035(A000720(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A071986

/-- `A000035(A000720(n+1))` -/
def P16196602093413610135.Spec : Prop :=
  ∀ n, P16196602093413610135.a n = A071986 (n + 1)

theorem P16196602093413610135.correct : P16196602093413610135.Spec := by
  intro n
  simp only [A071986, Nat.add_sub_cancel]

end A071986

/-! ## A071986.P4855930826148460052

`∑[C(C(2, ∑{e}[n+1, #]), 2)]%2`
-/

namespace A071986.P4855930826148460052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A071986.P4855930826148460052

namespace A071986

/-- `∑[C(C(2, ∑{e}[n+1, #]), 2)]%2` -/
def P4855930826148460052.Spec : Prop :=
  ∀ n, (P4855930826148460052.a n : ℤ) = A071986 (n + 1)

end A071986

/-! ## A071986.P10890612940720446992

`∑[floor(∑{e}[n+1, #]^(4-n))]%2`
-/

namespace A071986.P10890612940720446992
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ) ^ (4 - (n : ℤ) : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A071986.P10890612940720446992

namespace A071986

/-- `∑[floor(∑{e}[n+1, #]^(4-n))]%2` -/
def P10890612940720446992.Spec : Prop :=
  ∀ n, P10890612940720446992.a n = A071986 (n + 1)

end A071986

/-! ## A071986.P9819410147470170232

`2^(∑[∑{p}[n+1, floor(#/(n+1))]]%2)-1`
-/

namespace A071986.P9819410147470170232
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - 1

end

end A071986.P9819410147470170232

namespace A071986

/-- `2^(∑[∑{p}[n+1, floor(#/(n+1))]]%2)-1` -/
def P9819410147470170232.Spec : Prop :=
  ∀ n, P9819410147470170232.a n = (A071986 (n + 1) : ℚ)

end A071986

/-! ## A071986.P3843260808921471246

`A061008(n+1)%2`
-/

namespace A071986.P3843260808921471246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061008 (n + 1)) 2

end

end A071986.P3843260808921471246

namespace A071986

/-- `A061008(n+1)%2` -/
def P3843260808921471246.Spec : Prop :=
  ∀ n, P3843260808921471246.a n = A071986 (n + 1)

end A071986

/-! ## A071986.P18165165878086251852

`A128930(n+1)%2`
-/

namespace A071986.P18165165878086251852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128930 (n + 1)) 2

end

end A071986.P18165165878086251852

namespace A071986

/-- `A128930(n+1)%2` -/
def P18165165878086251852.Spec : Prop :=
  ∀ n, P18165165878086251852.a n = A071986 (n + 1)

end A071986

/-! ## A071986.P4434588348011418467

`A322828(n+1)%2`
-/

namespace A071986.P4434588348011418467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322828 (n + 1)) 2

end

end A071986.P4434588348011418467

namespace A071986

/-- `A322828(n+1)%2` -/
def P4434588348011418467.Spec : Prop :=
  ∀ n, P4434588348011418467.a n = A071986 (n + 1)

end A071986

/-! ## A071986.P7900333900724288720

`A339509(n+1)%2`
-/

namespace A071986.P7900333900724288720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339509 (n + 1)) 2

end

end A071986.P7900333900724288720

namespace A071986

/-- `A339509(n+1)%2` -/
def P7900333900724288720.Spec : Prop :=
  ∀ n, P7900333900724288720.a n = A071986 (n + 1)

end A071986

/-! ## A071986.P9807095056886429027

`and(1, A061009(n+1))`
-/

namespace A071986.P9807095056886429027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A061009 (n + 1))

end

end A071986.P9807095056886429027

namespace A071986

/-- `and(1, A061009(n+1))` -/
def P9807095056886429027.Spec : Prop :=
  ∀ n, P9807095056886429027.a n = A071986 (n + 1)

end A071986

/-! ## A071986.P16322684657149312608

`char[A057812(n+1)-1]`
-/

namespace A071986.P16322684657149312608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057812 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A071986.P16322684657149312608

namespace A071986

/-- `char[A057812(n+1)-1]` -/
def P16322684657149312608.Spec : Prop :=
  ∀ n, (P16322684657149312608.a n : ℤ) = A071986 (n + 1)

end A071986

/-! ## A071986.P6459260523987873638

`∑[A010051(n+1)]%2`
-/

namespace A071986.P6459260523987873638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A071986.P6459260523987873638

namespace A071986

/-- `∑[A010051(n+1)]%2` -/
def P6459260523987873638.Spec : Prop :=
  ∀ n, P6459260523987873638.a n = A071986 (n + 1)

end A071986

/-! ## A071986.P551502842634694458

`and(1, ∑[A061007(n+1)])`
-/

namespace A071986.P551502842634694458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071986.P551502842634694458

namespace A071986

/-- `and(1, ∑[A061007(n+1)])` -/
def P551502842634694458.Spec : Prop :=
  ∀ n, P551502842634694458.a n = A071986 (n + 1)

end A071986

/-! ## A071986.P1710444847130338553

`and(1, ∑[A071574(n+1)])`
-/

namespace A071986.P1710444847130338553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071986.P1710444847130338553

namespace A071986

/-- `and(1, ∑[A071574(n+1)])` -/
def P1710444847130338553.Spec : Prop :=
  ∀ n, P1710444847130338553.a n = A071986 (n + 1)

end A071986

/-! ## A071986.P10655440878075740446

`and(1, ∑[A105661(n+1)])`
-/

namespace A071986.P10655440878075740446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071986.P10655440878075740446

namespace A071986

/-- `and(1, ∑[A105661(n+1)])` -/
def P10655440878075740446.Spec : Prop :=
  ∀ n, P10655440878075740446.a n = A071986 (n + 1)

end A071986

/-! ## A071986.P2495265727012560759

`and(1, ∑[A246681(n+1)])`
-/

namespace A071986.P2495265727012560759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071986.P2495265727012560759

namespace A071986

/-- `and(1, ∑[A246681(n+1)])` -/
def P2495265727012560759.Spec : Prop :=
  ∀ n, P2495265727012560759.a n = A071986 (n + 1)

end A071986

/-! ## A071986.P11993905910924754124

`(1-A065357(n+1))/2`
-/

namespace A071986.P11993905910924754124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A065357 (n + 1) : ℚ) / 2

end

end A071986.P11993905910924754124

namespace A071986

/-- `(1-A065357(n+1))/2` -/
def P11993905910924754124.Spec : Prop :=
  ∀ n, P11993905910924754124.a n = (A071986 (n + 1) : ℚ)

end A071986

/-! ## A071986.P2794739480529110056

`gcd(2, A036234(n+1))-1`
-/

namespace A071986.P2794739480529110056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A036234 (n + 1)) : ℤ) - 1

end

end A071986.P2794739480529110056

namespace A071986

/-- `gcd(2, A036234(n+1))-1` -/
def P2794739480529110056.Spec : Prop :=
  ∀ n, P2794739480529110056.a n = A071986 (n + 1)

end A071986

/-! ## A071986.P17539550703779244541

`and(1, A065855(n+1)+n)`
-/

namespace A071986.P17539550703779244541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A065855 (n + 1) + (n : ℤ))

end

end A071986.P17539550703779244541

namespace A071986

/-- `and(1, A065855(n+1)+n)` -/
def P17539550703779244541.Spec : Prop :=
  ∀ n, P17539550703779244541.a n = A071986 (n + 1)

end A071986

/-! ## A071986.P5434776407473679233

`and(1, ∑[A064911(2*(n+1))])`
-/

namespace A071986.P5434776407473679233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071986.P5434776407473679233

namespace A071986

/-- `and(1, ∑[A064911(2*(n+1))])` -/
def P5434776407473679233.Spec : Prop :=
  ∀ n, P5434776407473679233.a n = A071986 (n + 1)

end A071986

/-! ## A071986.P13009233326281550421

`∑[char[eq[1, ∑{e}[n+1, #]]]]%2`
-/

namespace A071986.P13009233326281550421
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A071986.P13009233326281550421

namespace A071986

/-- `∑[char[eq[1, ∑{e}[n+1, #]]]]%2` -/
def P13009233326281550421.Spec : Prop :=
  ∀ n, (P13009233326281550421.a n : ℤ) = A071986 (n + 1)

end A071986

/-!
# A071987: 225 written in base 15-n.

The programs for A071987, there is no canonical definition to state claims against.
-/

/-! ## A071987.P15839269420843675908

`A325959(A228774(n)²)`
-/

namespace A071987.P15839269420843675908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325959 (A228774 n ^ 2).toNat

end

end A071987.P15839269420843675908

/-! ## A071987.P5848078968472695834

`A325976(A228774(n)²)`
-/

namespace A071987.P5848078968472695834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325976 (A228774 n ^ 2).toNat

end

end A071987.P5848078968472695834

/-!
# A071990: Numerators of the partial sums of the reciprocals of the upper members of twin prime pairs.

The programs for A071990, there is no canonical definition to state claims against.
-/

/-! ## A071990.P8898046244948026389

`∑{p}[A097492(n+1), A097492(n+1)/#]`
-/

namespace A071990.P8898046244948026389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097492 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A097492 (n + 1) : ℚ) / (p : ℚ)

end

end A071990.P8898046244948026389

/-!
# A071991: a(1) = a(2) = 1; a(n) = a(floor(n/3)) + a(n - floor(n/3)).

The programs for A071991, the canonical program `A071991.P1214338343732929900` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071991 has offset 1).

The definition of A071991 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor((n+1)/3)-1)+a(n-floor((n+1)/3))` (program `A071991.P1214338343732929900`, by `A071991.P1214338343732929900.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071991.P1214338343732929900

`a(floor((n+1)/3)-1)+a(n-floor((n+1)/3))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071991

/-- `a(floor((n+1)/3)-1)+a(n-floor((n+1)/3))` -/
def P1214338343732929900.Spec : Prop :=
  ∀ n, (P1214338343732929900.a n : ℤ) = A071991 (n + 1)

theorem P1214338343732929900.correct : P1214338343732929900.Spec := by
  intro n
  simp only [A071991, Nat.add_sub_cancel]

end A071991

/-! ## A071991.P15251869434844237950

`∑[1-A117943(n+1)]`
-/

namespace A071991.P15251869434844237950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A117943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071991.P15251869434844237950

namespace A071991

/-- `∑[1-A117943(n+1)]` -/
def P15251869434844237950.Spec : Prop :=
  ∀ n, P15251869434844237950.a n = A071991 (n + 1)

end A071991

/-! ## A071991.P10372811194862549211

`1-A071996(n+1)+n`
-/

namespace A071991.P10372811194862549211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A071996 (n + 1) + (n : ℤ)

end

end A071991.P10372811194862549211

namespace A071991

/-- `1-A071996(n+1)+n` -/
def P10372811194862549211.Spec : Prop :=
  ∀ n, P10372811194862549211.a n = A071991 (n + 1)

end A071991

/-! ## A071991.P240377657385965408

`∑[char[A183213(n+1)-1]]`
-/

namespace A071991.P240377657385965408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183213 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071991.P240377657385965408

namespace A071991

/-- `∑[char[A183213(n+1)-1]]` -/
def P240377657385965408.Spec : Prop :=
  ∀ n, (P240377657385965408.a n : ℤ) = A071991 (n + 1)

end A071991

/-! ## A071991.P11252664507893873247

`ceil((A071995(n+1)+n)/2)`
-/

namespace A071991.P11252664507893873247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A071995 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A071991.P11252664507893873247

namespace A071991

/-- `ceil((A071995(n+1)+n)/2)` -/
def P11252664507893873247.Spec : Prop :=
  ∀ n, P11252664507893873247.a n = A071991 (n + 1)

end A071991

/-! ## A071991.P14677028567043387107

`n-log2(1/2)-A071996(n-log2(1/2))`
-/

namespace A071991.P14677028567043387107
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ) - (A071996 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℝ)

end

end A071991.P14677028567043387107

namespace A071991

/-- `n-log2(1/2)-A071996(n-log2(1/2))` -/
def P14677028567043387107.Spec : Prop :=
  ∀ n, P14677028567043387107.a n = (A071991 (n + 1) : ℝ)

end A071991

/-! ## A071991.P3380872842891666770

`A024000(A071996(n+1))+n`
-/

namespace A071991.P3380872842891666770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A071996 (n + 1)).toNat + (n : ℤ)

end

end A071991.P3380872842891666770

namespace A071991

/-- `A024000(A071996(n+1))+n` -/
def P3380872842891666770.Spec : Prop :=
  ∀ n, P3380872842891666770.a n = A071991 (n + 1)

end A071991

/-! ## A071991.P15505800603067585042

`A071996(n+1)+A071995(n+1)`
-/

namespace A071991.P15505800603067585042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071996 (n + 1) + A071995 (n + 1)

end

end A071991.P15505800603067585042

namespace A071991

/-- `A071996(n+1)+A071995(n+1)` -/
def P15505800603067585042.Spec : Prop :=
  ∀ n, P15505800603067585042.a n = A071991 (n + 1)

end A071991

/-! ## A071991.P5091160646010787002

`∑[1-xor(A189215(n+1), A189222(n+1))]`
-/

namespace A071991.P5091160646010787002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.xor (A189215 (n + 1)) (A189222 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071991.P5091160646010787002

namespace A071991

/-- `∑[1-xor(A189215(n+1), A189222(n+1))]` -/
def P5091160646010787002.Spec : Prop :=
  ∀ n, P5091160646010787002.a n = A071991 (n + 1)

end A071991

/-! ## A071991.P5623498952545562747

`A110654(A071995(n+1))+A110654(n)`
-/

namespace A071991.P5623498952545562747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A071995 (n + 1)).toNat + A110654 n

end

end A071991.P5623498952545562747

namespace A071991

/-- `A110654(A071995(n+1))+A110654(n)` -/
def P5623498952545562747.Spec : Prop :=
  ∀ n, P5623498952545562747.a n = A071991 (n + 1)

end A071991

/-! ## A071991.P1936003359234767082

`A008619(A071995(n+1)-1+n)`
-/

namespace A071991.P1936003359234767082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A071995 (n + 1) - 1 + (n : ℤ)).toNat

end

end A071991.P1936003359234767082

namespace A071991

/-- `A008619(A071995(n+1)-1+n)` -/
def P1936003359234767082.Spec : Prop :=
  ∀ n, P1936003359234767082.a n = A071991 (n + 1)

end A071991

/-! ## A071991.P2267051378495778536

`A000463(A071995(n+1)+n)`
-/

namespace A071991.P2267051378495778536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A071995 (n + 1) + (n : ℤ)).toNat

end

end A071991.P2267051378495778536

namespace A071991

/-- `A000463(A071995(n+1)+n)` -/
def P2267051378495778536.Spec : Prop :=
  ∀ n, P2267051378495778536.a n = A071991 (n + 1)

end A071991

/-! ## A071991.P9489751200940033779

`A001057(A071995(n+1)+n)`
-/

namespace A071991.P9489751200940033779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A071995 (n + 1) + (n : ℤ)).toNat

end

end A071991.P9489751200940033779

namespace A071991

/-- `A001057(A071995(n+1)+n)` -/
def P9489751200940033779.Spec : Prop :=
  ∀ n, P9489751200940033779.a n = A071991 (n + 1)

end A071991

/-! ## A071991.P2998153296773524921

`A003602(A071995(n+1)+n)`
-/

namespace A071991.P2998153296773524921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A071995 (n + 1) + (n : ℤ)).toNat

end

end A071991.P2998153296773524921

namespace A071991

/-- `A003602(A071995(n+1)+n)` -/
def P2998153296773524921.Spec : Prop :=
  ∀ n, P2998153296773524921.a n = A071991 (n + 1)

end A071991

/-! ## A071991.P7879981807553795016

`A008619(A071995(n+1)+n)`
-/

namespace A071991.P7879981807553795016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A071995 (n + 1) + (n : ℤ)).toNat

end

end A071991.P7879981807553795016

namespace A071991

/-- `A008619(A071995(n+1)+n)` -/
def P7879981807553795016.Spec : Prop :=
  ∀ n, P7879981807553795016.a n = A071991 (n + 1)

end A071991

/-! ## A071991.P11312460303512883503

`A065033(A071995(n+1)+n)`
-/

namespace A071991.P11312460303512883503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A071995 (n + 1) + (n : ℤ)).toNat

end

end A071991.P11312460303512883503

namespace A071991

/-- `A065033(A071995(n+1)+n)` -/
def P11312460303512883503.Spec : Prop :=
  ∀ n, P11312460303512883503.a n = A071991 (n + 1)

end A071991

/-! ## A071991.P11734861163588903989

`A110654(A071995(n+1)+n)`
-/

namespace A071991.P11734861163588903989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A071995 (n + 1) + (n : ℤ)).toNat

end

end A071991.P11734861163588903989

namespace A071991

/-- `A110654(A071995(n+1)+n)` -/
def P11734861163588903989.Spec : Prop :=
  ∀ n, P11734861163588903989.a n = A071991 (n + 1)

end A071991

/-! ## A071991.P17611087206702430637

`A004526(A071995(n+1)+1+n)`
-/

namespace A071991.P17611087206702430637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A071995 (n + 1) + 1 + (n : ℤ)).toNat

end

end A071991.P17611087206702430637

namespace A071991

/-- `A004526(A071995(n+1)+1+n)` -/
def P17611087206702430637.Spec : Prop :=
  ∀ n, P17611087206702430637.a n = A071991 (n + 1)

end A071991

/-! ## A071991.P6603368831350959231

`∑[xor(1, A117943(3*(n+1)))]`
-/

namespace A071991.P6603368831350959231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A117943 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071991.P6603368831350959231

namespace A071991

/-- `∑[xor(1, A117943(3*(n+1)))]` -/
def P6603368831350959231.Spec : Prop :=
  ∀ n, P6603368831350959231.a n = A071991 (n + 1)

end A071991

/-!
# A071992: a(n) = 3*n^2 + 2*n - 4 * Sum_{k=1..n} A003159(k).

The programs for A071992, the canonical program `A071992.P9612405317653658171` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071992 has offset 1).

The definition of A071992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071992.P9612405317653658171

`∑[2*A071993(n+1)-1]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071992

/-- `∑[2*A071993(n+1)-1]` -/
def P9612405317653658171.Spec : Prop :=
  ∀ n, P9612405317653658171.a n = A071992 (n + 1)

theorem P9612405317653658171.correct : P9612405317653658171.Spec := by
  intro n
  simp only [A071992, Nat.add_sub_cancel]

end A071992

/-! ## A071992.P4391245944624496965

`∑[6*n+4-A131323(n+1)]`
-/

namespace A071992.P4391245944624496965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 4 : ℤ) - A131323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071992.P4391245944624496965

namespace A071992

/-- `∑[6*n+4-A131323(n+1)]` -/
def P4391245944624496965.Spec : Prop :=
  ∀ n, P4391245944624496965.a n = A071992 (n + 1)

end A071992

/-! ## A071992.P12309178127574819629

`∑[6*n+5-A108269(n+1)]`
-/

namespace A071992.P12309178127574819629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 5 : ℤ) - A108269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071992.P12309178127574819629

namespace A071992

/-- `∑[6*n+5-A108269(n+1)]` -/
def P12309178127574819629.Spec : Prop :=
  ∀ n, P12309178127574819629.a n = A071992 (n + 1)

end A071992

/-! ## A071992.P14489992057389947691

`A004273(∑[A071993(n+1)])-n`
-/

namespace A071992.P14489992057389947691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A071992.P14489992057389947691

namespace A071992

/-- `A004273(∑[A071993(n+1)])-n` -/
def P14489992057389947691.Spec : Prop :=
  ∀ n, P14489992057389947691.a n = A071992 (n + 1)

end A071992

/-! ## A071992.P361626822824395823

`∑[A016969(n)]%∑[A036554(n+1)]`
-/

namespace A071992.P361626822824395823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A071992.P361626822824395823

namespace A071992

/-- `∑[A016969(n)]%∑[A036554(n+1)]` -/
def P361626822824395823.Spec : Prop :=
  ∀ n, P361626822824395823.a n = A071992 (n + 1)

end A071992

/-! ## A071992.P3775713353388106979

`A045944(n+1)-∑[A108269(n+1)]`
-/

namespace A071992.P3775713353388106979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071992.P3775713353388106979

namespace A071992

/-- `A045944(n+1)-∑[A108269(n+1)]` -/
def P3775713353388106979.Spec : Prop :=
  ∀ n, P3775713353388106979.a n = A071992 (n + 1)

end A071992

/-! ## A071992.P6042100544658744965

`∑[6*n+3-A081706(2*n+1)]`
-/

namespace A071992.P6042100544658744965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 3 : ℤ) - A081706 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071992.P6042100544658744965

namespace A071992

/-- `∑[6*n+3-A081706(2*n+1)]` -/
def P6042100544658744965.Spec : Prop :=
  ∀ n, P6042100544658744965.a n = A071992 (n + 1)

end A071992

/-!
# A071993: a(n) = 3*n - 2* A003159(n).

The programs for A071993, the canonical program `A071993.P9565296218200180009` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071993 has offset 1).

The definition of A071993 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003159, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071993.P9565296218200180009

`3*(n+1)-2*A003159(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A071993

/-- `3*(n+1)-2*A003159(n+1)` -/
def P9565296218200180009.Spec : Prop :=
  ∀ n, P9565296218200180009.a n = A071993 (n + 1)

theorem P9565296218200180009.correct : P9565296218200180009.Spec := by
  intro n
  simp only [A071993, Nat.add_sub_cancel]

end A071993

/-! ## A071993.P6525444418343276067

`3*n+2-eq[1, and(1, val(n+1, 2))]`
-/

namespace A071993.P6525444418343276067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) - (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A071993.P6525444418343276067

namespace A071993

/-- `3*n+2-eq[1, and(1, val(n+1, 2))]` -/
def P6525444418343276067.Spec : Prop :=
  ∀ n, P6525444418343276067.a n = A071993 (n + 1)

end A071993

/-! ## A071993.P11144262735679185176

`∑[2-A080426(n+1)]`
-/

namespace A071993.P11144262735679185176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A080426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071993.P11144262735679185176

namespace A071993

/-- `∑[2-A080426(n+1)]` -/
def P11144262735679185176.Spec : Prop :=
  ∀ n, P11144262735679185176.a n = A071993 (n + 1)

end A071993

/-! ## A071993.P15834787949132765042

`∑[3-2*A026465(n+1)]`
-/

namespace A071993.P15834787949132765042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A026465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071993.P15834787949132765042

namespace A071993

/-- `∑[3-2*A026465(n+1)]` -/
def P15834787949132765042.Spec : Prop :=
  ∀ n, P15834787949132765042.a n = A071993 (n + 1)

end A071993

/-! ## A071993.P13841297484466936296

`record[xor(3, n)]-A003158(n+1)`
-/

namespace A071993.P13841297484466936296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - A003158 (n + 1)

end

end A071993.P13841297484466936296

namespace A071993

/-- `record[xor(3, n)]-A003158(n+1)` -/
def P13841297484466936296.Spec : Prop :=
  ∀ n, P13841297484466936296.a n = A071993 (n + 1)

end A071993

/-! ## A071993.P15985453521211364249

`2*(n+1)-A003156(n+1)`
-/

namespace A071993.P15985453521211364249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A003156 (n + 1)

end

end A071993.P15985453521211364249

namespace A071993

/-- `2*(n+1)-A003156(n+1)` -/
def P15985453521211364249.Spec : Prop :=
  ∀ n, P15985453521211364249.a n = A071993 (n + 1)

end A071993

/-! ## A071993.P15635569637304518345

`3*(n+1)-A036554(n+1)`
-/

namespace A071993.P15635569637304518345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A036554 (n + 1)

end

end A071993.P15635569637304518345

namespace A071993

/-- `3*(n+1)-A036554(n+1)` -/
def P15635569637304518345.Spec : Prop :=
  ∀ n, P15635569637304518345.a n = A071993 (n + 1)

end A071993

/-! ## A071993.P7982676570530008038

`2*(n+2)-A284390(n+1)`
-/

namespace A071993.P7982676570530008038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A284390 (n + 1)

end

end A071993.P7982676570530008038

namespace A071993

/-- `2*(n+2)-A284390(n+1)` -/
def P7982676570530008038.Spec : Prop :=
  ∀ n, P7982676570530008038.a n = A071993 (n + 1)

end A071993

/-! ## A071993.P17977833965549305825

`4*(n+1)-A003157(n+1)`
-/

namespace A071993.P17977833965549305825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A003157 (n + 1)

end

end A071993.P17977833965549305825

namespace A071993

/-- `4*(n+1)-A003157(n+1)` -/
def P17977833965549305825.Spec : Prop :=
  ∀ n, P17977833965549305825.a n = A071993 (n + 1)

end A071993

/-! ## A071993.P1215978023444327443

`abs(A079523(n+1)-∑[n+2])-C(n, 2)`
-/

namespace A071993.P1215978023444327443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A079523 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)| - (Nat.choose n 2 : ℤ)

end

end A071993.P1215978023444327443

namespace A071993

/-- `abs(A079523(n+1)-∑[n+2])-C(n, 2)` -/
def P1215978023444327443.Spec : Prop :=
  ∀ n, P1215978023444327443.a n = A071993 (n + 1)

end A071993

/-! ## A071993.P1142630816314993014

`A065359(A003159(n+1))`
-/

namespace A071993.P1142630816314993014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A003159 (n + 1)).toNat

end

end A071993.P1142630816314993014

namespace A071993

/-- `A065359(A003159(n+1))` -/
def P1142630816314993014.Spec : Prop :=
  ∀ n, P1142630816314993014.a n = A071993 (n + 1)

end A071993

/-! ## A071993.P15606096253177408965

`A065359(A108269(n+1))`
-/

namespace A071993.P15606096253177408965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A108269 (n + 1)).toNat

end

end A071993.P15606096253177408965

namespace A071993

/-- `A065359(A108269(n+1))` -/
def P15606096253177408965.Spec : Prop :=
  ∀ n, P15606096253177408965.a n = A071993 (n + 1)

end A071993

/-! ## A071993.P797642587253134493

`1-A065359(A072939(n+1))`
-/

namespace A071993.P797642587253134493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A065359 (A072939 (n + 1)).toNat

end

end A071993.P797642587253134493

namespace A071993

/-- `1-A065359(A072939(n+1))` -/
def P797642587253134493.Spec : Prop :=
  ∀ n, P797642587253134493.a n = A071993 (n + 1)

end A071993

/-! ## A071993.P16743898046248144329

`1-A065359(A162648(n+1))`
-/

namespace A071993.P16743898046248144329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A065359 (A162648 (n + 1)).toNat

end

end A071993.P16743898046248144329

namespace A071993

/-- `1-A065359(A162648(n+1))` -/
def P16743898046248144329.Spec : Prop :=
  ∀ n, P16743898046248144329.a n = A071993 (n + 1)

end A071993

/-! ## A071993.P3891612794906323557

`A065359(2*A036554(n+1))`
-/

namespace A071993.P3891612794906323557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (2 * A036554 (n + 1)).toNat

end

end A071993.P3891612794906323557

namespace A071993

/-- `A065359(2*A036554(n+1))` -/
def P3891612794906323557.Spec : Prop :=
  ∀ n, P3891612794906323557.a n = A071993 (n + 1)

end A071993

/-! ## A071993.P6761108514706957771

`A065359(A036554(n+1)/2)`
-/

namespace A071993.P6761108514706957771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (SequenceMachineLib.roundAway ((A036554 (n + 1) : ℚ) / 2)).toNat

end

end A071993.P6761108514706957771

namespace A071993

/-- `A065359(A036554(n+1)/2)` -/
def P6761108514706957771.Spec : Prop :=
  ∀ n, P6761108514706957771.a n = A071993 (n + 1)

end A071993

/-! ## A071993.P16070399881727475341

`A004767(n)-A003158(n+1)`
-/

namespace A071993.P16070399881727475341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A003158 (n + 1)

end

end A071993.P16070399881727475341

namespace A071993

/-- `A004767(n)-A003158(n+1)` -/
def P16070399881727475341.Spec : Prop :=
  ∀ n, P16070399881727475341.a n = A071993 (n + 1)

end A071993

/-! ## A071993.P11598748038732681190

`A016789(n)-A079523(n+1)`
-/

namespace A071993.P11598748038732681190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A079523 (n + 1)

end

end A071993.P11598748038732681190

namespace A071993

/-- `A016789(n)-A079523(n+1)` -/
def P11598748038732681190.Spec : Prop :=
  ∀ n, P11598748038732681190.a n = A071993 (n + 1)

end A071993

/-!
# A071994: a(n) = Sum_{k=1..n} A003159(k).

The programs for A071994, the canonical program `A071994.P8975573846827702402` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071994 has offset 1).

The definition of A071994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071994.P8975573846827702402

`∑[eq[1, and(n, -n)%3]]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071994

/-- `∑[eq[1, and(n, -n)%3]]` -/
def P8975573846827702402.Spec : Prop :=
  ∀ n, (P8975573846827702402.a n : ℤ) = A071994 (n + 1)

theorem P8975573846827702402.correct : P8975573846827702402.Spec := by
  intro n
  simp only [A071994, Nat.add_sub_cancel]

end A071994

/-! ## A071994.P9437030865296625979

`∑[lt[0, xor(n, n-1)%3]]`
-/

namespace A071994.P9437030865296625979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071994.P9437030865296625979

namespace A071994

/-- `∑[lt[0, xor(n, n-1)%3]]` -/
def P9437030865296625979.Spec : Prop :=
  ∀ n, (P9437030865296625979.a n : ℤ) = A071994 (n + 1)

end A071994

/-! ## A071994.P4770922008263363955

`∑[comp[n*and(n, -n)]/2]`
-/

namespace A071994.P4770922008263363955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071994.P4770922008263363955

namespace A071994

/-- `∑[comp[n*and(n, -n)]/2]` -/
def P4770922008263363955.Spec : Prop :=
  ∀ n, P4770922008263363955.a n = (A071994 (n + 1) : ℚ)

end A071994

/-! ## A071994.P5118094327013223037

`∑[eq[0, val(n+1, 2)%2]+1]`
-/

namespace A071994.P5118094327013223037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071994.P5118094327013223037

namespace A071994

/-- `∑[eq[0, val(n+1, 2)%2]+1]` -/
def P5118094327013223037.Spec : Prop :=
  ∀ n, (P5118094327013223037.a n : ℤ) = A071994 (n + 1)

end A071994

/-! ## A071994.P8943816086622064656

`∑[lt[0, (-1)^val(n+1, 2)]+1]`
-/

namespace A071994.P8943816086622064656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071994.P8943816086622064656

namespace A071994

/-- `∑[lt[0, (-1)^val(n+1, 2)]+1]` -/
def P8943816086622064656.Spec : Prop :=
  ∀ n, (P8943816086622064656.a n : ℤ) = A071994 (n + 1)

end A071994

/-! ## A071994.P1028008140477868660

`∑[record[(n+1)*xor(n, n+1)%3]]`
-/

namespace A071994.P1028008140477868660
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (Nat.xor n (n + 1) % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071994.P1028008140477868660

namespace A071994

/-- `∑[record[(n+1)*xor(n, n+1)%3]]` -/
def P1028008140477868660.Spec : Prop :=
  ∀ n, (P1028008140477868660.a n : ℤ) = A071994 (n + 1)

end A071994

/-! ## A071994.P1706711557211865496

`∑[record[(n+1)/gcd(3, xor(n, n+1))]]`
-/

namespace A071994.P1706711557211865496
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.gcd 3 (Nat.xor n (n + 1)) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071994.P1706711557211865496

namespace A071994

/-- `∑[record[(n+1)/gcd(3, xor(n, n+1))]]` -/
def P1706711557211865496.Spec : Prop :=
  ∀ n, P1706711557211865496.a n = (A071994 (n + 1) : ℚ)

end A071994

/-! ## A071994.P4007765116780359467

`∑[A003159(n+1)]`
-/

namespace A071994.P4007765116780359467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071994.P4007765116780359467

namespace A071994

/-- `∑[A003159(n+1)]` -/
def P4007765116780359467.Spec : Prop :=
  ∀ n, P4007765116780359467.a n = A071994 (n + 1)

end A071994

/-! ## A071994.P7180278172070399462

`∑[∑[A026465(n+1)]]`
-/

namespace A071994.P7180278172070399462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071994.P7180278172070399462

namespace A071994

/-- `∑[∑[A026465(n+1)]]` -/
def P7180278172070399462.Spec : Prop :=
  ∀ n, P7180278172070399462.a n = A071994 (n + 1)

end A071994

/-! ## A071994.P16732569907578479983

`∑[record[A302792(n+1)]]`
-/

namespace A071994.P16732569907578479983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071994.P16732569907578479983

namespace A071994

/-- `∑[record[A302792(n+1)]]` -/
def P16732569907578479983.Spec : Prop :=
  ∀ n, P16732569907578479983.a n = A071994 (n + 1)

end A071994

/-! ## A071994.P9308346353230377413

`∑[A121539(n+1)+1]`
-/

namespace A071994.P9308346353230377413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121539 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071994.P9308346353230377413

namespace A071994

/-- `∑[A121539(n+1)+1]` -/
def P9308346353230377413.Spec : Prop :=
  ∀ n, P9308346353230377413.a n = A071994 (n + 1)

end A071994

/-! ## A071994.P15153491634455858831

`∑[A036554(n+1)/2]`
-/

namespace A071994.P15153491634455858831
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036554 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071994.P15153491634455858831

namespace A071994

/-- `∑[A036554(n+1)/2]` -/
def P15153491634455858831.Spec : Prop :=
  ∀ n, P15153491634455858831.a n = (A071994 (n + 1) : ℚ)

end A071994

/-! ## A071994.P5173281036113888919

`∑[A108269(n+1)/4]`
-/

namespace A071994.P5173281036113888919
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108269 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071994.P5173281036113888919

namespace A071994

/-- `∑[A108269(n+1)/4]` -/
def P5173281036113888919.Spec : Prop :=
  ∀ n, P5173281036113888919.a n = (A071994 (n + 1) : ℚ)

end A071994

/-! ## A071994.P17907551764095783159

`∑[comp[A079523(n+1)]+1]`
-/

namespace A071994.P17907551764095783159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071994.P17907551764095783159

namespace A071994

/-- `∑[comp[A079523(n+1)]+1]` -/
def P17907551764095783159.Spec : Prop :=
  ∀ n, (P17907551764095783159.a n : ℤ) = A071994 (n + 1)

end A071994

/-! ## A071994.P2924585243854844912

`∑[∑[A284391(n+1)]+n]`
-/

namespace A071994.P2924585243854844912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284391 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071994.P2924585243854844912

namespace A071994

/-- `∑[∑[A284391(n+1)]+n]` -/
def P2924585243854844912.Spec : Prop :=
  ∀ n, P2924585243854844912.a n = A071994 (n + 1)

end A071994

/-! ## A071994.P6452269682374219680

`∑[A260480(n+1)-(n+1)]`
-/

namespace A071994.P6452269682374219680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260480 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071994.P6452269682374219680

namespace A071994

/-- `∑[A260480(n+1)-(n+1)]` -/
def P6452269682374219680.Spec : Prop :=
  ∀ n, P6452269682374219680.a n = A071994 (n + 1)

end A071994

/-! ## A071994.P2527045799790719341

`∑[(A003158(n+1)-n)/2]`
-/

namespace A071994.P2527045799790719341
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003158 (n + 1) - (n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071994.P2527045799790719341

namespace A071994

/-- `∑[(A003158(n+1)-n)/2]` -/
def P2527045799790719341.Spec : Prop :=
  ∀ n, P2527045799790719341.a n = (A071994 (n + 1) : ℚ)

end A071994

/-! ## A071994.P11780868750236130470

`∑[∑[ceil(A080426(n+1)/2)]]`
-/

namespace A071994.P11780868750236130470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A080426 (n + 1) : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071994.P11780868750236130470

namespace A071994

/-- `∑[∑[ceil(A080426(n+1)/2)]]` -/
def P11780868750236130470.Spec : Prop :=
  ∀ n, P11780868750236130470.a n = A071994 (n + 1)

end A071994

/-!
# A071995: a(1) = 1, a(2) = 0, a(n) = a(floor(n/3)) + a(n - floor(n/3)).

The programs for A071995, the canonical program `A071995.P10552439902186419510` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071995 has offset 1).

The definition of A071995 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor((n+1)/3)-1)+a(n-floor((n+1)/3))` (program `A071995.P10552439902186419510`, by `A071995.P10552439902186419510.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071995.P10552439902186419510

`a(floor((n+1)/3)-1)+a(n-floor((n+1)/3))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071995

/-- `a(floor((n+1)/3)-1)+a(n-floor((n+1)/3))` -/
def P10552439902186419510.Spec : Prop :=
  ∀ n, (P10552439902186419510.a n : ℤ) = A071995 (n + 1)

theorem P10552439902186419510.correct : P10552439902186419510.Spec := by
  intro n
  simp only [A071995, Nat.add_sub_cancel]

end A071995

/-! ## A071995.P18432619017586787944

`∑[or(1, -A117943(n+1))]`
-/

namespace A071995.P18432619017586787944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-A117943 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071995.P18432619017586787944

namespace A071995

/-- `∑[or(1, -A117943(n+1))]` -/
def P18432619017586787944.Spec : Prop :=
  ∀ n, P18432619017586787944.a n = A071995 (n + 1)

end A071995

/-! ## A071995.P11821016817647323952

`2*A071991(n+1)-(n+1)`
-/

namespace A071995.P11821016817647323952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071991 (n + 1) - (n + 1 : ℤ)

end

end A071995.P11821016817647323952

namespace A071995

/-- `2*A071991(n+1)-(n+1)` -/
def P11821016817647323952.Spec : Prop :=
  ∀ n, P11821016817647323952.a n = A071995 (n + 1)

end A071995

/-! ## A071995.P15796531944219769163

`n+1-2*A071996(n+1)`
-/

namespace A071995.P15796531944219769163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A071996 (n + 1)

end

end A071995.P15796531944219769163

namespace A071995

/-- `n+1-2*A071996(n+1)` -/
def P15796531944219769163.Spec : Prop :=
  ∀ n, P15796531944219769163.a n = A071995 (n + 1)

end A071995

/-! ## A071995.P2804215193160586338

`A165747(A071996(n+1))+n`
-/

namespace A071995.P2804215193160586338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165747 (A071996 (n + 1)).toNat + (n : ℤ)

end

end A071995.P2804215193160586338

namespace A071995

/-- `A165747(A071996(n+1))+n` -/
def P2804215193160586338.Spec : Prop :=
  ∀ n, P2804215193160586338.a n = A071995 (n + 1)

end A071995

/-! ## A071995.P14134519147492875657

`A071991(n+1)-A071996(n+1)`
-/

namespace A071995.P14134519147492875657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071991 (n + 1) - A071996 (n + 1)

end

end A071995.P14134519147492875657

namespace A071995

/-- `A071991(n+1)-A071996(n+1)` -/
def P14134519147492875657.Spec : Prop :=
  ∀ n, P14134519147492875657.a n = A071995 (n + 1)

end A071995

/-! ## A071995.P7384057772524798121

`A024000(2*A071996(n+1))+n`
-/

namespace A071995.P7384057772524798121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (2 * A071996 (n + 1)).toNat + (n : ℤ)

end

end A071995.P7384057772524798121

namespace A071995

/-- `A024000(2*A071996(n+1))+n` -/
def P7384057772524798121.Spec : Prop :=
  ∀ n, P7384057772524798121.a n = A071995 (n + 1)

end A071995

/-! ## A071995.P9554899296022338765

`n+1-A005843(∑[A117943(n+1)])`
-/

namespace A071995.P9554899296022338765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071995.P9554899296022338765

namespace A071995

/-- `n+1-A005843(∑[A117943(n+1)])` -/
def P9554899296022338765.Spec : Prop :=
  ∀ n, P9554899296022338765.a n = A071995 (n + 1)

end A071995

/-! ## A071995.P4028386739285971150

`∑[1-A117943(n+1)]-A071996(n+1)`
-/

namespace A071995.P4028386739285971150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A117943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A071996 (n + 1)

end

end A071995.P4028386739285971150

namespace A071995

/-- `∑[1-A117943(n+1)]-A071996(n+1)` -/
def P4028386739285971150.Spec : Prop :=
  ∀ n, P4028386739285971150.a n = A071995 (n + 1)

end A071995

/-! ## A071995.P9075255927803260747

`∑[A033999(A117943(n+1)*A347964(n+1))]`
-/

namespace A071995.P9075255927803260747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A117943 (n + 1) * A347964 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071995.P9075255927803260747

namespace A071995

/-- `∑[A033999(A117943(n+1)*A347964(n+1))]` -/
def P9075255927803260747.Spec : Prop :=
  ∀ n, P9075255927803260747.a n = A071995 (n + 1)

end A071995

/-! ## A071995.P12050492844408726349

`A000027(n+1-A071996(n+1))-A071996(n+1)`
-/

namespace A071995.P12050492844408726349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((n + 1 : ℤ) - A071996 (n + 1)).toNat - A071996 (n + 1)

end

end A071995.P12050492844408726349

namespace A071995

/-- `A000027(n+1-A071996(n+1))-A071996(n+1)` -/
def P12050492844408726349.Spec : Prop :=
  ∀ n, P12050492844408726349.a n = A071995 (n + 1)

end A071995

/-!
# A071996: a(1) = 0, a(2) = 1, a(n) = a(floor(n/3)) + a(n - floor(n/3)).

The programs for A071996, the canonical program `A071996.P6499752415777284650` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071996 has offset 1).

The definition of A071996 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor((n+1)/3)-1)+a(n-floor((n+1)/3))` (program `A071996.P6499752415777284650`, by `A071996.P6499752415777284650.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071996.P6499752415777284650

`a(floor((n+1)/3)-1)+a(n-floor((n+1)/3))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071996

/-- `a(floor((n+1)/3)-1)+a(n-floor((n+1)/3))` -/
def P6499752415777284650.Spec : Prop :=
  ∀ n, (P6499752415777284650.a n : ℤ) = A071996 (n + 1)

theorem P6499752415777284650.correct : P6499752415777284650.Spec := by
  intro n
  simp only [A071996, Nat.add_sub_cancel]

end A071996

/-! ## A071996.P16781619297024071365

`∑[A117943(n+1)]`
-/

namespace A071996.P16781619297024071365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071996.P16781619297024071365

namespace A071996

/-- `∑[A117943(n+1)]` -/
def P16781619297024071365.Spec : Prop :=
  ∀ n, P16781619297024071365.a n = A071996 (n + 1)

end A071996

/-! ## A071996.P2323297851036056847

`1-A071991(n+1)+n`
-/

namespace A071996.P2323297851036056847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A071991 (n + 1) + (n : ℤ)

end

end A071996.P2323297851036056847

namespace A071996

/-- `1-A071991(n+1)+n` -/
def P2323297851036056847.Spec : Prop :=
  ∀ n, P2323297851036056847.a n = A071996 (n + 1)

end A071996

/-! ## A071996.P17533999578221789512

`ceil((n-A071995(n+1))/2)`
-/

namespace A071996.P17533999578221789512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - A071995 (n + 1) : ℚ) / 2⌉

end

end A071996.P17533999578221789512

namespace A071996

/-- `ceil((n-A071995(n+1))/2)` -/
def P17533999578221789512.Spec : Prop :=
  ∀ n, P17533999578221789512.a n = A071996 (n + 1)

end A071996

/-! ## A071996.P2599524498813219847

`A004526(1-A071995(n+1)+n)`
-/

namespace A071996.P2599524498813219847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (1 - A071995 (n + 1) + (n : ℤ)).toNat

end

end A071996.P2599524498813219847

namespace A071996

/-- `A004526(1-A071995(n+1)+n)` -/
def P2599524498813219847.Spec : Prop :=
  ∀ n, P2599524498813219847.a n = A071996 (n + 1)

end A071996

/-! ## A071996.P11822782292701656577

`A110654(1-A071995(n+1)+n)`
-/

namespace A071996.P11822782292701656577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (1 - A071995 (n + 1) + (n : ℤ)).toNat

end

end A071996.P11822782292701656577

namespace A071996

/-- `A110654(1-A071995(n+1)+n)` -/
def P11822782292701656577.Spec : Prop :=
  ∀ n, P11822782292701656577.a n = A071996 (n + 1)

end A071996

/-! ## A071996.P8573221274597986522

`∑[xor(A189215(n+1), A189222(n+1))]`
-/

namespace A071996.P8573221274597986522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A189215 (n + 1)) (A189222 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071996.P8573221274597986522

namespace A071996

/-- `∑[xor(A189215(n+1), A189222(n+1))]` -/
def P8573221274597986522.Spec : Prop :=
  ∀ n, P8573221274597986522.a n = A071996 (n + 1)

end A071996

/-! ## A071996.P7392043862453985550

`A000463(A071995(n+1)+n)-A071995(n+1)`
-/

namespace A071996.P7392043862453985550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A071995 (n + 1) + (n : ℤ)).toNat - A071995 (n + 1)

end

end A071996.P7392043862453985550

namespace A071996

/-- `A000463(A071995(n+1)+n)-A071995(n+1)` -/
def P7392043862453985550.Spec : Prop :=
  ∀ n, P7392043862453985550.a n = A071996 (n + 1)

end A071996

/-! ## A071996.P12209479261941745707

`A001057(A071995(n+1)+n)-A071995(n+1)`
-/

namespace A071996.P12209479261941745707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A071995 (n + 1) + (n : ℤ)).toNat - A071995 (n + 1)

end

end A071996.P12209479261941745707

namespace A071996

/-- `A001057(A071995(n+1)+n)-A071995(n+1)` -/
def P12209479261941745707.Spec : Prop :=
  ∀ n, P12209479261941745707.a n = A071996 (n + 1)

end A071996

/-! ## A071996.P696364152989894595

`A003602(A071995(n+1)+n)-A071995(n+1)`
-/

namespace A071996.P696364152989894595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A071995 (n + 1) + (n : ℤ)).toNat - A071995 (n + 1)

end

end A071996.P696364152989894595

namespace A071996

/-- `A003602(A071995(n+1)+n)-A071995(n+1)` -/
def P696364152989894595.Spec : Prop :=
  ∀ n, P696364152989894595.a n = A071996 (n + 1)

end A071996

/-! ## A071996.P7742824827635595481

`A008619(A071995(n+1)+n)-A071995(n+1)`
-/

namespace A071996.P7742824827635595481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A071995 (n + 1) + (n : ℤ)).toNat - A071995 (n + 1)

end

end A071996.P7742824827635595481

namespace A071996

/-- `A008619(A071995(n+1)+n)-A071995(n+1)` -/
def P7742824827635595481.Spec : Prop :=
  ∀ n, P7742824827635595481.a n = A071996 (n + 1)

end A071996

/-! ## A071996.P13145678724786149796

`A065033(A071995(n+1)+n)-A071995(n+1)`
-/

namespace A071996.P13145678724786149796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A071995 (n + 1) + (n : ℤ)).toNat - A071995 (n + 1)

end

end A071996.P13145678724786149796

namespace A071996

/-- `A065033(A071995(n+1)+n)-A071995(n+1)` -/
def P13145678724786149796.Spec : Prop :=
  ∀ n, P13145678724786149796.a n = A071996 (n + 1)

end A071996

/-!
# A071997: a(n) is the smallest positive integer that cannot be obtained by using the number 2 at most n times and the operators +, -, *, /.

The programs for A071997, there is no canonical definition to state claims against.
-/

/-! ## A071997.P3600398149517646229

`∑[A349137(p?[A161420(n)])]`
-/

namespace A071997.P3600398149517646229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161420 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071997.P3600398149517646229

/-! ## A071997.P6043129249756085070

`or(A342333(n+2), A342377(A342354(n)))`
-/

namespace A071997.P6043129249756085070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A342333 (n + 2)) (A342377 (A342354 n).toNat)

end

end A071997.P6043129249756085070

/-! ## A071997.P1024721125862277610

`∑[A000005(∑[(n+1)*(n+2)²*(n+3)²*(n+4)*(3*n+5)/720])]`
-/

namespace A071997.P1024721125862277610
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) ^ 2 * (n + 3) ^ 2 : ℚ) * ((n + 4 : ℚ) * ((3 * n + 5 : ℚ) / 720))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071997.P1024721125862277610

/-! ## A071997.P8113476313087542095

`∑[A001316(A179191(n))]`
-/

namespace A071997.P8113476313087542095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A179191 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071997.P8113476313087542095

/-! ## A071997.P5098321842719963457

`∑[A065267(A187893(n))]`
-/

namespace A071997.P5098321842719963457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065267 (A187893 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071997.P5098321842719963457

/-!
# A071998: Write n in binary, interpret that as a decimal number, convert back to binary.

The programs for A071998, the canonical program `A071998.P8978306300852152956` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071998 has offset 0).

The definition of A071998 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071998.P8978306300852152956

`A007088(A007088(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071998

/-- `A007088(A007088(n))` -/
def P8978306300852152956.Spec : Prop :=
  ∀ n, P8978306300852152956.a n = A071998 n

theorem P8978306300852152956.correct : P8978306300852152956.Spec := by
  intro n
  simp only [A071998]

end A071998

/-! ## A071998.P18265774942143577229

`A303596(A372060(A303596(A372060(n))))`
-/

namespace A071998.P18265774942143577229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303596 (A372060 (A303596 (A372060 n).toNat).toNat).toNat

end

end A071998.P18265774942143577229

namespace A071998

/-- `A303596(A372060(A303596(A372060(n))))` -/
def P18265774942143577229.Spec : Prop :=
  ∀ n, P18265774942143577229.a n = A071998 n

end A071998

/-! ## A071998.P8603868920185417556

`A204093(A115848(n))/6`
-/

namespace A071998.P8603868920185417556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204093 (A115848 n).toNat : ℚ) / 6

end

end A071998.P8603868920185417556

namespace A071998

/-- `A204093(A115848(n))/6` -/
def P8603868920185417556.Spec : Prop :=
  ∀ n, P8603868920185417556.a n = (A071998 n : ℚ)

end A071998

/-! ## A071998.P3902728703499313793

`A204093(sqrt(A063009(n)))/6`
-/

namespace A071998.P3902728703499313793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204093 (SequenceMachineLib.roundAway (Real.sqrt (A063009 n : ℝ))).toNat : ℚ) / 6

end

end A071998.P3902728703499313793

namespace A071998

/-- `A204093(sqrt(A063009(n)))/6` -/
def P3902728703499313793.Spec : Prop :=
  ∀ n, P3902728703499313793.a n = (A071998 n : ℚ)

end A071998

/-! ## A071998.P264543516203948832

`A204094(sqrt(A063009(n)))/7`
-/

namespace A071998.P264543516203948832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204094 (SequenceMachineLib.roundAway (Real.sqrt (A063009 n : ℝ))).toNat : ℚ) / 7

end

end A071998.P264543516203948832

namespace A071998

/-- `A204094(sqrt(A063009(n)))/7` -/
def P264543516203948832.Spec : Prop :=
  ∀ n, P264543516203948832.a n = (A071998 n : ℚ)

end A071998

