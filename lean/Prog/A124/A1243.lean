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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
# A124300: Greatest x such that mu(n+k) = mu(n) for 0<=k<=x, where mu=A008683.

The programs for A124300, there is no canonical definition to state claims against.
-/

/-! ## A124300.P10354364324400447398

`∏{d}[Δ[A074823(n+1)!]², log2(#)]`
-/

namespace A124300.P10354364324400447398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A074823 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Real.logb 2 (d : ℝ)

end

end A124300.P10354364324400447398

/-! ## A124300.P11271950615199924490

`A007705(Δ[∏{e}[n+1, C(2, #²)]]²)`
-/

namespace A124300.P11271950615199924490
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose 2 (Nat.factorization (f2 n) p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007705 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A124300.P11271950615199924490

/-! ## A124300.P17116232202912210188

`A058343(Δ[∏{e}[n+1, C(2, #²)]]²)`
-/

namespace A124300.P17116232202912210188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose 2 (Nat.factorization (f2 n) p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058343 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A124300.P17116232202912210188

/-! ## A124300.P6584386292565178024

`A245964(Δ[∏{e}[n+1, C(3, #²)]]²)`
-/

namespace A124300.P6584386292565178024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose 3 (Nat.factorization (f2 n) p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245964 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A124300.P6584386292565178024

/-! ## A124300.P11888636241861203703

`A245964(Δ[∏{e}[n+1, (3^#)%9]]²)`
-/

namespace A124300.P11888636241861203703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), 3 ^ Nat.factorization (f2 n) p % 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245964 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A124300.P11888636241861203703

/-!
# A124301: Smallest number m such that A124300(m) >= n.

The programs for A124301, there is no canonical definition to state claims against.
-/

/-! ## A124301.P7116428667550318670

`A130053(A051132(n))`
-/

namespace A124301.P7116428667550318670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130053 (A051132 n).toNat

end

end A124301.P7116428667550318670

/-!
# A124302: Number of set partitions with at most 3 blocks; number of Dyck paths of height at most 4; dimension of space of symmetric polynomials in 3 noncommuting variables.

The programs for A124302, the canonical program `A124302.P7197067930557024172` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124302 has offset 0).

The definition of A124302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124302.P7197067930557024172

`4*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124302

/-- `4*a(n-1)-3*a(n-2)` -/
def P7197067930557024172.Spec : Prop :=
  ∀ n, P7197067930557024172.a n = A124302 n

theorem P7197067930557024172.correct : P7197067930557024172.Spec := by
  intro n
  simp only [A124302]

end A124302

/-! ## A124302.P6510696811949481121

`ceil(∑[3^(n-2)])`
-/

namespace A124302.P6510696811949481121
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A124302.P6510696811949481121

namespace A124302

/-- `ceil(∑[3^(n-2)])` -/
def P6510696811949481121.Spec : Prop :=
  ∀ n, P6510696811949481121.a n = A124302 n

end A124302

/-! ## A124302.P13190575204722618302

`ogf((1-3x+x^2)/(1-4x+3x^2))`
-/

namespace A124302.P13190575204722618302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 1] [1, -4, 3] n

end

end A124302.P13190575204722618302

namespace A124302

/-- `ogf((1-3x+x^2)/(1-4x+3x^2))` -/
def P13190575204722618302.Spec : Prop :=
  ∀ n, P13190575204722618302.a n = A124302 n

end A124302

/-! ## A124302.P6926150095804252479

`3*a(n-1)-1` with `a(0)=1, a(1)=1`
-/

namespace A124302.P6926150095804252479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * a (n - 1) - 1

end

end A124302.P6926150095804252479

namespace A124302

/-- `3*a(n-1)-1` -/
def P6926150095804252479.Spec : Prop :=
  ∀ n, P6926150095804252479.a n = A124302 n

end A124302

/-! ## A124302.P18134811281559351057

`lcm(3, a(n-1))-1` with `a(0)=1, a(1)=1`
-/

namespace A124302.P18134811281559351057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Int.lcm 3 (a (n - 1)) : ℤ) - 1

end

end A124302.P18134811281559351057

namespace A124302

/-- `lcm(3, a(n-1))-1` -/
def P18134811281559351057.Spec : Prop :=
  ∀ n, P18134811281559351057.a n = A124302 n

end A124302

/-! ## A124302.P8595175864944854627

`abs(or(2, floor(∑[-3^(n-2)])))`
-/

namespace A124302.P8595175864944854627
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((3 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋|

end

end A124302.P8595175864944854627

namespace A124302

/-- `abs(or(2, floor(∑[-3^(n-2)])))` -/
def P8595175864944854627.Spec : Prop :=
  ∀ n, P8595175864944854627.a n = A124302 n

end A124302

/-! ## A124302.P8392773931416326232

`a(n-1)+3^(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A124302.P8392773931416326232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A124302.P8392773931416326232

namespace A124302

/-- `a(n-1)+3^(n-2)` -/
def P8392773931416326232.Spec : Prop :=
  ∀ n, P8392773931416326232.a n = (A124302 n : ℚ)

end A124302

/-! ## A124302.P2671323741733799960

`a(n-1)/cot(atan(3))-1` with `a(0)=1, a(1)=1`
-/

namespace A124302.P2671323741733799960
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) / Real.cot (Real.arctan (3 : ℝ)) - 1

end

end A124302.P2671323741733799960

namespace A124302

/-- `a(n-1)/cot(atan(3))-1` -/
def P2671323741733799960.Spec : Prop :=
  ∀ n, P2671323741733799960.a n = (A124302 n : ℝ)

end A124302

/-! ## A124302.P17444675644820287247

`a(n-1)/sqrt(1/9)-1` with `a(0)=1, a(1)=1`
-/

namespace A124302.P17444675644820287247
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ) - 1

end

end A124302.P17444675644820287247

namespace A124302

/-- `a(n-1)/sqrt(1/9)-1` -/
def P17444675644820287247.Spec : Prop :=
  ∀ n, P17444675644820287247.a n = (A124302 n : ℝ)

end A124302

/-! ## A124302.P10710987572444347876

`a(n-1)-1+a(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A124302.P10710987572444347876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 1 + (a (n - 1) + a (n - 1))

end

end A124302.P10710987572444347876

namespace A124302

/-- `a(n-1)-1+a(n-1)+a(n-1)` -/
def P10710987572444347876.Spec : Prop :=
  ∀ n, P10710987572444347876.a n = A124302 n

end A124302

/-! ## A124302.P10952722293997281436

`floor(floor(a(n-1))-(1-a(n-1)-a(n-1)))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A124302.P10952722293997281436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (1 - a (n - 1) - a (n - 1))

end

end A124302.P10952722293997281436

namespace A124302

/-- `floor(floor(a(n-1))-(1-a(n-1)-a(n-1)))` -/
def P10952722293997281436.Spec : Prop :=
  ∀ n, P10952722293997281436.a n = A124302 n

end A124302

/-! ## A124302.P555225723792454017

`∑[A140429(abs(1-n))]`
-/

namespace A124302.P555225723792454017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124302.P555225723792454017

namespace A124302

/-- `∑[A140429(abs(1-n))]` -/
def P555225723792454017.Spec : Prop :=
  ∀ n, P555225723792454017.a n = A124302 n

end A124302

/-! ## A124302.P16405748390806006074

`A007051((n-1)%(n+1))`
-/

namespace A124302.P16405748390806006074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A124302.P16405748390806006074

namespace A124302

/-- `A007051((n-1)%(n+1))` -/
def P16405748390806006074.Spec : Prop :=
  ∀ n, P16405748390806006074.a n = A124302 n

end A124302

/-! ## A124302.P6967364550902712636

`A326339(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A124302.P6967364550902712636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A326339 n + a (n - 2)

end

end A124302.P6967364550902712636

namespace A124302

/-- `A326339(n)+a(n-2)` -/
def P6967364550902712636.Spec : Prop :=
  ∀ n, P6967364550902712636.a n = A124302 n

end A124302

/-! ## A124302.P4303075192050588263

`A025579(n)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A124302.P4303075192050588263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A025579 n + a (n - 2)

end

end A124302.P4303075192050588263

namespace A124302

/-- `A025579(n)+a(n-2)` -/
def P4303075192050588263.Spec : Prop :=
  ∀ n, P4303075192050588263.a n = A124302 n

end A124302

/-! ## A124302.P13763727859229552293

`A140429(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A124302.P13763727859229552293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A140429 (n - 1) + a (n - 1)

end

end A124302.P13763727859229552293

namespace A124302

/-- `A140429(n-1)+a(n-1)` -/
def P13763727859229552293.Spec : Prop :=
  ∀ n, P13763727859229552293.a n = A124302 n

end A124302

/-! ## A124302.P17717322732015748931

`A133494(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A124302.P17717322732015748931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A133494 (n - 1) + a (n - 1)

end

end A124302.P17717322732015748931

namespace A124302

/-- `A133494(n-1)+a(n-1)` -/
def P17717322732015748931.Spec : Prop :=
  ∀ n, P17717322732015748931.a n = A124302 n

end A124302

/-! ## A124302.P2157770428597583904

`A155734(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A124302.P2157770428597583904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A155734 (n - 1) + a (n - 1)

end

end A124302.P2157770428597583904

namespace A124302

/-- `A155734(n-1)+a(n-1)` -/
def P2157770428597583904.Spec : Prop :=
  ∀ n, P2157770428597583904.a n = A124302 n

end A124302

/-! ## A124302.P534564006890720699

`A000244(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A124302.P534564006890720699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000244 (n - 2) + a (n - 1)

end

end A124302.P534564006890720699

namespace A124302

/-- `A000244(n-2)+a(n-1)` -/
def P534564006890720699.Spec : Prop :=
  ∀ n, P534564006890720699.a n = A124302 n

end A124302

/-! ## A124302.P17970835309925808471

`A056504(A004273(n))`
-/

namespace A124302.P17970835309925808471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056504 (A004273 n).toNat

end

end A124302.P17970835309925808471

namespace A124302

/-- `A056504(A004273(n))` -/
def P17970835309925808471.Spec : Prop :=
  ∀ n, P17970835309925808471.a n = A124302 n

end A124302

/-!
# A124303: Number of set partitions of length <= 4; sum of first 4 columns of triangle of Stirling numbers of 2nd kind; dimension of space of symmetric polynomials in 4 noncommuting variables.

The programs for A124303, the canonical program `A124303.P8489952751879569892` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124303 has offset 0).

The definition of A124303 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124303.P8489952751879569892

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124303

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P8489952751879569892.Spec : Prop :=
  ∀ n, P8489952751879569892.a n = A124303 n

theorem P8489952751879569892.correct : P8489952751879569892.Spec := by
  intro n
  simp only [A124303]

end A124303

/-! ## A124303.P15415980678722765599

`or(1, 2*(3*a(n-1)-4*a(n-2)))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A124303.P15415980678722765599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  Int.lor 1 (2 * (3 * a (n - 1) - 4 * a (n - 2)))

end

end A124303.P15415980678722765599

namespace A124303

/-- `or(1, 2*(3*a(n-1)-4*a(n-2)))` -/
def P15415980678722765599.Spec : Prop :=
  ∀ n, P15415980678722765599.a n = A124303 n

end A124303

/-! ## A124303.P13916018366799558336

`∑[2*(3*a(n-1)-4*a(n-2))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A124303.P13916018366799558336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 3] fun n f1 =>
  2 * (3 * f1 (n - 1) - 4 * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124303.P13916018366799558336

namespace A124303

/-- `∑[2*(3*a(n-1)-4*a(n-2))]` -/
def P13916018366799558336.Spec : Prop :=
  ∀ n, P13916018366799558336.a n = A124303 n

end A124303

/-! ## A124303.P9944895957079850361

`A056505(abs(1-2*n))`
-/

namespace A124303.P9944895957079850361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056505 |1 - (2 * n : ℤ)|.toNat

end

end A124303.P9944895957079850361

namespace A124303

/-- `A056505(abs(1-2*n))` -/
def P9944895957079850361.Spec : Prop :=
  ∀ n, P9944895957079850361.a n = A124303 n

end A124303

/-! ## A124303.P18133835641530563369

`A007581(n-ceil(sin(n)²))`
-/

namespace A124303.P18133835641530563369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 ((n : ℤ) - ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A124303.P18133835641530563369

namespace A124303

/-- `A007581(n-ceil(sin(n)²))` -/
def P18133835641530563369.Spec : Prop :=
  ∀ n, P18133835641530563369.a n = A124303 n

end A124303

/-! ## A124303.P4628742810629761220

`A007581((n-1)%(n+1))`
-/

namespace A124303.P4628742810629761220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A124303.P4628742810629761220

namespace A124303

/-- `A007581((n-1)%(n+1))` -/
def P4628742810629761220.Spec : Prop :=
  ∀ n, P4628742810629761220.a n = A124303 n

end A124303

/-! ## A124303.P1577990970244131064

`A007581(floor(acot(n))-1+n)`
-/

namespace A124303.P1577990970244131064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1 + (n : ℤ)).toNat

end

end A124303.P1577990970244131064

namespace A124303

/-- `A007581(floor(acot(n))-1+n)` -/
def P1577990970244131064.Spec : Prop :=
  ∀ n, P1577990970244131064.a n = A124303 n

end A124303

/-! ## A124303.P7434977797753999807

`A007581(comp[2*(n+1)]-n)`
-/

namespace A124303.P7434977797753999807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A124303.P7434977797753999807

namespace A124303

/-- `A007581(comp[2*(n+1)]-n)` -/
def P7434977797753999807.Spec : Prop :=
  ∀ n, P7434977797753999807.a n = A124303 n

end A124303

/-! ## A124303.P5982397894667246056

`A222939(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A124303.P5982397894667246056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A222939 (n + 1) - a (n - 1)

end

end A124303.P5982397894667246056

namespace A124303

/-- `A222939(n+1)-a(n-1)` -/
def P5982397894667246056.Spec : Prop :=
  ∀ n, P5982397894667246056.a n = A124303 n

end A124303

/-! ## A124303.P1521208715666352200

`A007582(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A124303.P1521208715666352200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A007582 (n - 2) + a (n - 1)

end

end A124303.P1521208715666352200

namespace A124303

/-- `A007582(n-2)+a(n-1)` -/
def P1521208715666352200.Spec : Prop :=
  ∀ n, P1521208715666352200.a n = A124303 n

end A124303

/-! ## A124303.P8142262707835435457

`∑{d}[A028310(n), A056275(#)]`
-/

namespace A124303.P8142262707835435457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056275 d

end

end A124303.P8142262707835435457

namespace A124303

/-- `∑{d}[A028310(n), A056275(#)]` -/
def P8142262707835435457.Spec : Prop :=
  ∀ n, P8142262707835435457.a n = A124303 n

end A124303

/-! ## A124303.P12773263678697381881

`2*A056323(n)-A305750(n)`
-/

namespace A124303.P12773263678697381881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056323 n - A305750 n

end

end A124303.P12773263678697381881

namespace A124303

/-- `2*A056323(n)-A305750(n)` -/
def P12773263678697381881.Spec : Prop :=
  ∀ n, P12773263678697381881.a n = A124303 n

end A124303

/-! ## A124303.P8998516611139877119

`ceil(A274232(n)/2)`
-/

namespace A124303.P8998516611139877119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A274232 n : ℚ) / 2⌉

end

end A124303.P8998516611139877119

namespace A124303

/-- `ceil(A274232(n)/2)` -/
def P8998516611139877119.Spec : Prop :=
  ∀ n, P8998516611139877119.a n = A124303 n

end A124303

/-! ## A124303.P762784038643812625

`∑[C(A034008(n)+1, 2)]`
-/

namespace A124303.P762784038643812625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A034008 n + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124303.P762784038643812625

namespace A124303

/-- `∑[C(A034008(n)+1, 2)]` -/
def P762784038643812625.Spec : Prop :=
  ∀ n, (P762784038643812625.a n : ℤ) = A124303 n

end A124303

/-! ## A124303.P13738298703850315621

`ceil(A290075(2*n+1)/3)`
-/

namespace A124303.P13738298703850315621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A290075 (2 * n + 1) : ℚ) / 3⌉

end

end A124303.P13738298703850315621

namespace A124303

/-- `ceil(A290075(2*n+1)/3)` -/
def P13738298703850315621.Spec : Prop :=
  ∀ n, P13738298703850315621.a n = A124303 n

end A124303

/-! ## A124303.P8723608365885693936

`A274232(n)/A036453(n+1)`
-/

namespace A124303.P8723608365885693936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274232 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A124303.P8723608365885693936

namespace A124303

/-- `A274232(n)/A036453(n+1)` -/
def P8723608365885693936.Spec : Prop :=
  ∀ n, P8723608365885693936.a n = (A124303 n : ℚ)

end A124303

/-! ## A124303.P17782943099086158622

`A274232(A004277(n)-n)/2`
-/

namespace A124303.P17782943099086158622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274232 (A004277 n - (n : ℤ)).toNat : ℚ) / 2

end

end A124303.P17782943099086158622

namespace A124303

/-- `A274232(A004277(n)-n)/2` -/
def P17782943099086158622.Spec : Prop :=
  ∀ n, P17782943099086158622.a n = (A124303 n : ℚ)

end A124303

/-! ## A124303.P2248605730880667877

`(A011782(n)+A005578(A004275(n)))/2`
-/

namespace A124303.P2248605730880667877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n + A005578 (A004275 n).toNat : ℚ) / 2

end

end A124303.P2248605730880667877

namespace A124303

/-- `(A011782(n)+A005578(A004275(n)))/2` -/
def P2248605730880667877.Spec : Prop :=
  ∀ n, P2248605730880667877.a n = (A124303 n : ℚ)

end A124303

/-! ## A124303.P16975378486083595578

`C(ceil(2^(n-1))+2, 2)/3`
-/

namespace A124303.P16975378486083595578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + 2).toNat 2 : ℚ) / 3

end

end A124303.P16975378486083595578

namespace A124303

/-- `C(ceil(2^(n-1))+2, 2)/3` -/
def P16975378486083595578.Spec : Prop :=
  ∀ n, P16975378486083595578.a n = (A124303 n : ℚ)

end A124303

/-!
# A124304: Riordan array (1, x*(1-x^2)).

The programs for A124304, there is no canonical definition to state claims against.
-/

/-! ## A124304.P11349710154873088885

`ceil(A112517(n)/A000196(A258709(n)²))`
-/

namespace A124304.P11349710154873088885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112517 n : ℚ) / (A000196 (A258709 n ^ 2).toNat : ℚ)⌉

end

end A124304.P11349710154873088885

/-! ## A124304.P11250949787673238406

`A100051(A278099(n+1))*A165408(n)`
-/

namespace A124304.P11250949787673238406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (A278099 (n + 1)).toNat * A165408 n

end

end A124304.P11250949787673238406

/-! ## A124304.P16884844869559591937

`A339207(n)%A134105(A027082(n))`
-/

namespace A124304.P16884844869559591937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339207 n) (A134105 (A027082 n).toNat)

end

end A124304.P16884844869559591937

/-! ## A124304.P3871282227411947343

`A339208(n+1)%A124767(A080201(n+1))`
-/

namespace A124304.P3871282227411947343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339208 (n + 1)) (A124767 (A080201 (n + 1)).toNat)

end

end A124304.P3871282227411947343

/-! ## A124304.P16909229751160039422

`A343493(A209759(n+2))`
-/

namespace A124304.P16909229751160039422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343493 (A209759 (n + 2)).toNat

end

end A124304.P16909229751160039422

/-!
# A124305: Riordan array (1, 2*sqrt(3)*sin(arcsin(3*sqrt(3)*x/2)/3)/3).

The programs for A124305, there is no canonical definition to state claims against.
-/

/-! ## A124305.P3109410544861257235

`A212619(A309010(n))+A051889(A256038(n))`
-/

namespace A124305.P3109410544861257235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (A309010 n).toNat + A051889 (A256038 n).toNat

end

end A124305.P3109410544861257235

/-! ## A124305.P16579345261366466219

`A255270(A271703(n)+A111596(n))`
-/

namespace A124305.P16579345261366466219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (A271703 n + A111596 n).toNat

end

end A124305.P16579345261366466219

/-! ## A124305.P9402872760881955269

`A238416(n+2)%A060111(A256038(n))`
-/

namespace A124305.P9402872760881955269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238416 (n + 2)) (A060111 (A256038 n).toNat)

end

end A124305.P9402872760881955269

/-! ## A124305.P15710863938118685126

`A051889(A256038(n)^A047764(n+1)!)`
-/

namespace A124305.P15710863938118685126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A256038 n ^ Nat.factorial (A047764 (n + 1)).toNat).toNat

end

end A124305.P15710863938118685126

/-! ## A124305.P8954760508055114519

`A051889(A281442(n)^A047764(n+1)!)`
-/

namespace A124305.P8954760508055114519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A281442 n ^ Nat.factorial (A047764 (n + 1)).toNat).toNat

end

end A124305.P8954760508055114519

/-!
# A124307: Sum of the digits of 5^(2^n).

The programs for A124307, there is no canonical definition to state claims against.
-/

/-! ## A124307.P3263912430386073051

`A066001(2^n)`
-/

namespace A124307.P3263912430386073051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066001 (2 ^ n)

end

end A124307.P3263912430386073051

/-! ## A124307.P1286115650097366515

`record[A066001(A034008(n))]`
-/

namespace A124307.P1286115650097366515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066001 (A034008 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124307.P1286115650097366515

/-! ## A124307.P4441004903265954191

`record[A066001(A059268(n))]`
-/

namespace A124307.P4441004903265954191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066001 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124307.P4441004903265954191

/-! ## A124307.P17480616438478280226

`record[A066001(A068009(n))]`
-/

namespace A124307.P17480616438478280226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066001 (A068009 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124307.P17480616438478280226

/-! ## A124307.P13797516300683766857

`record[A066001(A072345(n))]`
-/

namespace A124307.P13797516300683766857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066001 (A072345 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124307.P13797516300683766857

/-!
# A124308: Primes indexed by 5-almost primes.

The programs for A124308, the canonical program `A124308.P7561852673300223316` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124308 has offset 1).

The definition of A124308 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014614, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A124308.P7561852673300223316

`A000040(A014614(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A124308

/-- `A000040(A014614(n+1))` -/
def P7561852673300223316.Spec : Prop :=
  ∀ n, P7561852673300223316.a n = A124308 (n + 1)

theorem P7561852673300223316.correct : P7561852673300223316.Spec := by
  intro n
  simp only [A124308, Nat.add_sub_cancel]

end A124308

/-! ## A124308.P5928578747248411717

`A008578(A014614(n+1)+1)`
-/

namespace A124308.P5928578747248411717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A014614 (n + 1) + 1).toNat

end

end A124308.P5928578747248411717

namespace A124308

/-- `A008578(A014614(n+1)+1)` -/
def P5928578747248411717.Spec : Prop :=
  ∀ n, P5928578747248411717.a n = A124308 (n + 1)

end A124308

/-! ## A124308.P123429166477899908

`A175787(A014614(n+1)+1)`
-/

namespace A124308.P123429166477899908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A014614 (n + 1) + 1).toNat

end

end A124308.P123429166477899908

namespace A124308

/-- `A175787(A014614(n+1)+1)` -/
def P123429166477899908.Spec : Prop :=
  ∀ n, P123429166477899908.a n = A124308 (n + 1)

end A124308

/-! ## A124308.P1567699531125736763

`A182986(A014614(n+1)+1)`
-/

namespace A124308.P1567699531125736763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A014614 (n + 1) + 1).toNat

end

end A124308.P1567699531125736763

namespace A124308

/-- `A182986(A014614(n+1)+1)` -/
def P1567699531125736763.Spec : Prop :=
  ∀ n, P1567699531125736763.a n = A124308 (n + 1)

end A124308

/-! ## A124308.P9237454251538744841

`A000040(A114966(n+1)-A114944(n+1))`
-/

namespace A124308.P9237454251538744841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A114966 (n + 1) - A114944 (n + 1)).toNat

end

end A124308.P9237454251538744841

namespace A124308

/-- `A000040(A114966(n+1)-A114944(n+1))` -/
def P9237454251538744841.Spec : Prop :=
  ∀ n, P9237454251538744841.a n = A124308 (n + 1)

theorem P9237454251538744841.correct : P9237454251538744841.Spec := by
  intro n
  simp only [A124308, Nat.add_sub_cancel, A124308.P9237454251538744841.a, A124308.P7561852673300223316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014614, A014614.P8846493082158940166.f1, A014614.P8846493082158940166.f2, A014614.P8846493082158940166.a, A114944, A114944.P5745295539132009725.a, A114966, A114966.P15379347381698072828.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A014613, A014613.P1114013819310587080.f1, A014613.P1114013819310587080.f2, A014613.P1114013819310587080.a, A114382, A114382.P1208901813651073029.a, A001358, A001358.P632087320844056370.a, A014612, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A030514, A030514.P11974636125371552077.a, A307342, A307342.P15063499458322460120.f1, A307342.P15063499458322460120.f2, A307342.P15063499458322460120.a, A088707, A088707.P7291141647877559993.a, A318473, A318473.P15254297892022099386.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A124308

/-! ## A124308.P5207482807817163531

`record[A073846(A046306(n+1))]`
-/

namespace A124308.P5207482807817163531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A046306 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124308.P5207482807817163531

namespace A124308

/-- `record[A073846(A046306(n+1))]` -/
def P5207482807817163531.Spec : Prop :=
  ∀ n, P5207482807817163531.a n = A124308 (n + 1)

end A124308

/-! ## A124308.P10715547566642769184

`A073846(2*A014614(n+1))`
-/

namespace A124308.P10715547566642769184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A014614 (n + 1)).toNat

end

end A124308.P10715547566642769184

namespace A124308

/-- `A073846(2*A014614(n+1))` -/
def P10715547566642769184.Spec : Prop :=
  ∀ n, P10715547566642769184.a n = A124308 (n + 1)

end A124308

/-! ## A124308.P1845294594393090739

`A207790(2*A014614(n+1))`
-/

namespace A124308.P1845294594393090739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A014614 (n + 1)).toNat

end

end A124308.P1845294594393090739

namespace A124308

/-- `A207790(2*A014614(n+1))` -/
def P1845294594393090739.Spec : Prop :=
  ∀ n, P1845294594393090739.a n = A124308 (n + 1)

end A124308

/-! ## A124308.P9613979192659869883

`A207790(A014614(n+1)+A014614(n+1))`
-/

namespace A124308.P9613979192659869883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (A014614 (n + 1) + A014614 (n + 1)).toNat

end

end A124308.P9613979192659869883

namespace A124308

/-- `A207790(A014614(n+1)+A014614(n+1))` -/
def P9613979192659869883.Spec : Prop :=
  ∀ n, P9613979192659869883.a n = A124308 (n + 1)

end A124308

/-!
# A124309: 5-almost primes indexed by primes.

The programs for A124309, the canonical program `A124309.P1787642187873317345` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124309 has offset 1).

The definition of A124309 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014614, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A124309.P1787642187873317345

`A014614(A000040(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A124309

/-- `A014614(A000040(n+1))` -/
def P1787642187873317345.Spec : Prop :=
  ∀ n, P1787642187873317345.a n = A124309 (n + 1)

theorem P1787642187873317345.correct : P1787642187873317345.Spec := by
  intro n
  simp only [A124309, Nat.add_sub_cancel]

end A124309

/-! ## A124309.P15362614608696643912

`A014614(p?[comp[n²]])`
-/

namespace A124309.P15362614608696643912
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A124309.P15362614608696643912

namespace A124309

/-- `A014614(p?[comp[n²]])` -/
def P15362614608696643912.Spec : Prop :=
  ∀ n, P15362614608696643912.a n = A124309 (n + 1)

end A124309

/-! ## A124309.P534798099189623657

`A014614(Δ[A007504(n)])`
-/

namespace A124309.P534798099189623657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (f1 (n + 1) - f1 n).toNat

end

end A124309.P534798099189623657

namespace A124309

/-- `A014614(Δ[A007504(n)])` -/
def P534798099189623657.Spec : Prop :=
  ∀ n, P534798099189623657.a n = A124309 (n + 1)

end A124309

/-! ## A124309.P3291189677189079058

`A014614(record[A051698(n)])`
-/

namespace A124309.P3291189677189079058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124309.P3291189677189079058

namespace A124309

/-- `A014614(record[A051698(n)])` -/
def P3291189677189079058.Spec : Prop :=
  ∀ n, P3291189677189079058.a n = A124309 (n + 1)

end A124309

/-! ## A124309.P6313669158685710783

`A014614(A008578(n+2))`
-/

namespace A124309.P6313669158685710783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (A008578 (n + 2)).toNat

end

end A124309.P6313669158685710783

namespace A124309

/-- `A014614(A008578(n+2))` -/
def P6313669158685710783.Spec : Prop :=
  ∀ n, P6313669158685710783.a n = A124309 (n + 1)

end A124309

/-! ## A124309.P408032735667655930

`A014614(A182986(n+2))`
-/

namespace A124309.P408032735667655930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (A182986 (n + 2)).toNat

end

end A124309.P408032735667655930

namespace A124309

/-- `A014614(A182986(n+2))` -/
def P408032735667655930.Spec : Prop :=
  ∀ n, P408032735667655930.a n = A124309 (n + 1)

end A124309

/-! ## A124309.P12290260995243330715

`A014614(eq[1, A032741(n)])`
-/

namespace A124309.P12290260995243330715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124309.P12290260995243330715

namespace A124309

/-- `A014614(eq[1, A032741(n)])` -/
def P12290260995243330715.Spec : Prop :=
  ∀ n, P12290260995243330715.a n = A124309 (n + 1)

end A124309

/-! ## A124309.P5407013395771199332

`A014614(record[A006530(n+2)])`
-/

namespace A124309.P5407013395771199332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124309.P5407013395771199332

namespace A124309

/-- `A014614(record[A006530(n+2)])` -/
def P5407013395771199332.Spec : Prop :=
  ∀ n, P5407013395771199332.a n = A124309 (n + 1)

end A124309

/-! ## A124309.P17836283756829267802

`A014614(record[A014963(n+2)])`
-/

namespace A124309.P17836283756829267802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124309.P17836283756829267802

namespace A124309

/-- `A014614(record[A014963(n+2)])` -/
def P17836283756829267802.Spec : Prop :=
  ∀ n, P17836283756829267802.a n = A124309 (n + 1)

end A124309

/-! ## A124309.P13650176596981224785

`A014614(record[A020639(n+2)])`
-/

namespace A124309.P13650176596981224785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124309.P13650176596981224785

namespace A124309

/-- `A014614(record[A020639(n+2)])` -/
def P13650176596981224785.Spec : Prop :=
  ∀ n, P13650176596981224785.a n = A124309 (n + 1)

end A124309

/-! ## A124309.P2863055677559060685

`A014614(A006093(n+1)+1)`
-/

namespace A124309.P2863055677559060685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (A006093 (n + 1) + 1).toNat

end

end A124309.P2863055677559060685

namespace A124309

/-- `A014614(A006093(n+1)+1)` -/
def P2863055677559060685.Spec : Prop :=
  ∀ n, P2863055677559060685.a n = A124309 (n + 1)

theorem P2863055677559060685.correct : P2863055677559060685.Spec := by
  intro n
  simp only [A124309, Nat.add_sub_cancel, A124309.P2863055677559060685.a, A124309.P1787642187873317345.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A014614, A014614.P8846493082158940166.f1, A014614.P8846493082158940166.f2, A014614.P8846493082158940166.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A124309

/-! ## A124309.P10902945621731280322

`A014614(A040976(n+1)+2)`
-/

namespace A124309.P10902945621731280322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (A040976 (n + 1) + 2).toNat

end

end A124309.P10902945621731280322

namespace A124309

/-- `A014614(A040976(n+1)+2)` -/
def P10902945621731280322.Spec : Prop :=
  ∀ n, P10902945621731280322.a n = A124309 (n + 1)

theorem P10902945621731280322.correct : P10902945621731280322.Spec := by
  intro n
  simp only [A124309, Nat.add_sub_cancel, A124309.P10902945621731280322.a, A124309.P1787642187873317345.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014614, A014614.P8846493082158940166.f1, A014614.P8846493082158940166.f2, A014614.P8846493082158940166.a, A040976, A040976.P11599754272797435513.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A124309

/-! ## A124309.P17901550518727623076

`A014614(A073846(2*(n+1)))`
-/

namespace A124309.P17901550518727623076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (A073846 (2 * (n + 1))).toNat

end

end A124309.P17901550518727623076

namespace A124309

/-- `A014614(A073846(2*(n+1)))` -/
def P17901550518727623076.Spec : Prop :=
  ∀ n, P17901550518727623076.a n = A124309 (n + 1)

end A124309

/-! ## A124309.P14988225531957370674

`A014614(A207790(2*(n+1)))`
-/

namespace A124309.P14988225531957370674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (A207790 (2 * (n + 1))).toNat

end

end A124309.P14988225531957370674

namespace A124309

/-- `A014614(A207790(2*(n+1)))` -/
def P14988225531957370674.Spec : Prop :=
  ∀ n, P14988225531957370674.a n = A124309 (n + 1)

end A124309

/-! ## A124309.P4023238607939222433

`A014614(A100484(n+1)/2)`
-/

namespace A124309.P4023238607939222433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A124309.P4023238607939222433

namespace A124309

/-- `A014614(A100484(n+1)/2)` -/
def P4023238607939222433.Spec : Prop :=
  ∀ n, P4023238607939222433.a n = A124309 (n + 1)

end A124309

/-! ## A124309.P11425767534271500614

`A014614(A144043(2*n+1)/2)`
-/

namespace A124309.P11425767534271500614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (SequenceMachineLib.roundAway ((A144043 (2 * n + 1) : ℚ) / 2)).toNat

end

end A124309.P11425767534271500614

namespace A124309

/-- `A014614(A144043(2*n+1)/2)` -/
def P11425767534271500614.Spec : Prop :=
  ∀ n, P11425767534271500614.a n = A124309 (n + 1)

end A124309

/-! ## A124309.P15979446463629123370

`A014614(A014689(n+1)+1+n)`
-/

namespace A124309.P15979446463629123370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (A014689 (n + 1) + 1 + (n : ℤ)).toNat

end

end A124309.P15979446463629123370

namespace A124309

/-- `A014614(A014689(n+1)+1+n)` -/
def P15979446463629123370.Spec : Prop :=
  ∀ n, P15979446463629123370.a n = A124309 (n + 1)

theorem P15979446463629123370.correct : P15979446463629123370.Spec := by
  intro n
  simp only [A124309, Nat.add_sub_cancel, A124309.P15979446463629123370.a, A124309.P1787642187873317345.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014614, A014614.P8846493082158940166.f1, A014614.P8846493082158940166.f2, A014614.P8846493082158940166.a, A014689, A014689.P6286543075765329050.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A124309

/-! ## A124309.P17634692702105151016

`record[A014614(n+2)/A052126(n+2)]`
-/

namespace A124309.P17634692702105151016
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014614 (n + 2) : ℚ) / (A052126 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124309.P17634692702105151016

namespace A124309

/-- `record[A014614(n+2)/A052126(n+2)]` -/
def P17634692702105151016.Spec : Prop :=
  ∀ n, P17634692702105151016.a n = (A124309 (n + 1) : ℚ)

end A124309

/-! ## A124309.P14235556323164290322

`A014614(A046302(n+1)/A046301(n+2))`
-/

namespace A124309.P14235556323164290322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (SequenceMachineLib.roundAway ((A046302 (n + 1) : ℚ) / (A046301 (n + 2) : ℚ))).toNat

end

end A124309.P14235556323164290322

namespace A124309

/-- `A014614(A046302(n+1)/A046301(n+2))` -/
def P14235556323164290322.Spec : Prop :=
  ∀ n, P14235556323164290322.a n = A124309 (n + 1)

end A124309

/-! ## A124309.P14563129455079381287

`A014614(A046303(n+1)/A046302(n+2))`
-/

namespace A124309.P14563129455079381287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (SequenceMachineLib.roundAway ((A046303 (n + 1) : ℚ) / (A046302 (n + 2) : ℚ))).toNat

end

end A124309.P14563129455079381287

namespace A124309

/-- `A014614(A046303(n+1)/A046302(n+2))` -/
def P14563129455079381287.Spec : Prop :=
  ∀ n, P14563129455079381287.a n = A124309 (n + 1)

end A124309

/-!
# A124310: Largest prime < 10*a(n-1), a(1)=29.

The programs for A124310, there is no canonical definition to state claims against.
-/

/-! ## A124310.P10633670432978917206

`A124263(n+2)`
-/

namespace A124310.P10633670432978917206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124263 (n + 2)

end

end A124310.P10633670432978917206

/-! ## A124310.P10365469927635732129

`record[A124263(A080513(or(2, n)))]`
-/

namespace A124310.P10365469927635732129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124263 (A080513 (Nat.lor 2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124310.P10365469927635732129

/-! ## A124310.P1609259189623420915

`record[A124263(A008621(abs(2*n-5)))]`
-/

namespace A124310.P1609259189623420915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124263 (A008621 |(2 * n : ℤ) - 5|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124310.P1609259189623420915

/-! ## A124310.P4623016984008644178

`record[A124263(A226005(A017041(n)))]`
-/

namespace A124310.P4623016984008644178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124263 (A226005 (A017041 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124310.P4623016984008644178

/-! ## A124310.P5090429912996593336

`record[A124263(A085058(n))]`
-/

namespace A124310.P5090429912996593336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124263 (A085058 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124310.P5090429912996593336

/-!
# A124311: a(n) = Sum_{i=0..n} (-2)^i*binomial(n,i)*B(i) where B(n) = Bell numbers A000110(n).

The programs for A124311, there is no canonical definition to state claims against.
-/

/-! ## A124311.P17520947762936226728

`(-1)^n*A162226(floor(Δ[e*n!])+1)`
-/

namespace A124311.P17520947762936226728
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (Nat.factorial n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A162226 (⌊f1 (n + 1) - f1 n⌋ + 1).toNat

end

end A124311.P17520947762936226728

/-!
# A124312: Expansion of g.f. x^3*(1 - x)/(1 - x - x^2 - x^3 - x^4 - x^5).

The programs for A124312, the canonical program `A124312.P3761167919802581050` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124312 has offset 1).

The definition of A124312 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^2-x^3)/(1-x-x^2-x^3-x^4-x^5))` (program `A124312.P3761167919802581050`, by `A124312.P3761167919802581050.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A124312.P3761167919802581050

`ogf((x^2-x^3)/(1-x-x^2-x^3-x^4-x^5))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124312

/-- `ogf((x^2-x^3)/(1-x-x^2-x^3-x^4-x^5))` -/
def P3761167919802581050.Spec : Prop :=
  ∀ n, P3761167919802581050.a n = A124312 (n + 1)

theorem P3761167919802581050.correct : P3761167919802581050.Spec := by
  intro n
  simp only [A124312, Nat.add_sub_cancel]

end A124312

/-! ## A124312.P1361553995460791148

`A001591(n+2)-A001591(n+1)`
-/

namespace A124312.P1361553995460791148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 (n + 2) - A001591 (n + 1)

end

end A124312.P1361553995460791148

namespace A124312

/-- `A001591(n+2)-A001591(n+1)` -/
def P1361553995460791148.Spec : Prop :=
  ∀ n, P1361553995460791148.a n = A124312 (n + 1)

end A124312

/-! ## A124312.P17123246248599094174

`A251653(n)+A001591(n)`
-/

namespace A124312.P17123246248599094174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251653 n + A001591 n

end

end A124312.P17123246248599094174

namespace A124312

/-- `A251653(n)+A001591(n)` -/
def P17123246248599094174.Spec : Prop :=
  ∀ n, P17123246248599094174.a n = A124312 (n + 1)

end A124312

/-! ## A124312.P16993531286241586029

`A251653(n)+Δ[A001949(n)]`
-/

namespace A124312.P16993531286241586029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251653 n + (f1 (n + 1) - f1 n)

end

end A124312.P16993531286241586029

namespace A124312

/-- `A251653(n)+Δ[A001949(n)]` -/
def P16993531286241586029.Spec : Prop :=
  ∀ n, P16993531286241586029.a n = A124312 (n + 1)

end A124312

/-! ## A124312.P14142147208538522208

`Δ[A001591(n+1)]`
-/

namespace A124312.P14142147208538522208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124312.P14142147208538522208

namespace A124312

/-- `Δ[A001591(n+1)]` -/
def P14142147208538522208.Spec : Prop :=
  ∀ n, P14142147208538522208.a n = A124312 (n + 1)

end A124312

/-! ## A124312.P13357350266302761866

`Δ[Δ[A001949(n+1)]]`
-/

namespace A124312.P13357350266302761866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001949 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124312.P13357350266302761866

namespace A124312

/-- `Δ[Δ[A001949(n+1)]]` -/
def P13357350266302761866.Spec : Prop :=
  ∀ n, P13357350266302761866.a n = A124312 (n + 1)

end A124312

/-! ## A124312.P17577671971543035215

`A251653(n)+A251653(n+3)-A124313(n+3)`
-/

namespace A124312.P17577671971543035215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251653 n + (A251653 (n + 3) - A124313 (n + 3))

end

end A124312.P17577671971543035215

namespace A124312

/-- `A251653(n)+A251653(n+3)-A124313(n+3)` -/
def P17577671971543035215.Spec : Prop :=
  ∀ n, P17577671971543035215.a n = A124312 (n + 1)

end A124312

/-! ## A124312.P8669571481559600641

`Δ[sqrt(Δ[A107243(n)])]`
-/

namespace A124312.P8669571481559600641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107243 n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f2 (n + 1) - f2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124312.P8669571481559600641

namespace A124312

/-- `Δ[sqrt(Δ[A107243(n)])]` -/
def P8669571481559600641.Spec : Prop :=
  ∀ n, P8669571481559600641.a n = (A124312 (n + 1) : ℝ)

end A124312

/-!
# A124313: Pentanacci numbers: a(n) = a(n-1) + a(n-2) + a(n-3) + a(n-4) + a(n-5), starting 1,0,0,0,1.

The programs for A124313, the canonical program `A124313.P5131011261270101779` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124313 has offset 1).

The definition of A124313 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` (program `A124313.P5131011261270101779`, by `A124313.P5131011261270101779.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A124313.P5131011261270101779

`a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124313

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` -/
def P5131011261270101779.Spec : Prop :=
  ∀ n, (P5131011261270101779.a n : ℤ) = A124313 (n + 1)

theorem P5131011261270101779.correct : P5131011261270101779.Spec := by
  intro n
  simp only [A124313, Nat.add_sub_cancel]

end A124313

/-! ## A124313.P15304906850632980200

`A251653(n+2)-A001591(n+1)`
-/

namespace A124313.P15304906850632980200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251653 (n + 2) - A001591 (n + 1)

end

end A124313.P15304906850632980200

namespace A124313

/-- `A251653(n+2)-A001591(n+1)` -/
def P15304906850632980200.Spec : Prop :=
  ∀ n, P15304906850632980200.a n = A124313 (n + 1)

end A124313

/-! ## A124313.P17910940095505386945

`A251653(n+2)-Δ[A001949(n+1)]`
-/

namespace A124313.P17910940095505386945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251653 (n + 2) - (f1 (n + 1) - f1 n)

end

end A124313.P17910940095505386945

namespace A124313

/-- `A251653(n+2)-Δ[A001949(n+1)]` -/
def P17910940095505386945.Spec : Prop :=
  ∀ n, P17910940095505386945.a n = A124313 (n + 1)

end A124313

/-! ## A124313.P3902692277465307238

`A124312(n+2)-(A251653(n)+A122997(n+1))`
-/

namespace A124313.P3902692277465307238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124312 (n + 2) - (A251653 n + A122997 (n + 1))

end

end A124313.P3902692277465307238

namespace A124313

/-- `A124312(n+2)-(A251653(n)+A122997(n+1))` -/
def P3902692277465307238.Spec : Prop :=
  ∀ n, P3902692277465307238.a n = A124313 (n + 1)

end A124313

/-! ## A124313.P11410299283153801785

`A001949(n+1)+A251653(n+2)-A001949(n+2)`
-/

namespace A124313.P11410299283153801785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001949 (n + 1) + (A251653 (n + 2) - A001949 (n + 2))

end

end A124313.P11410299283153801785

namespace A124313

/-- `A001949(n+1)+A251653(n+2)-A001949(n+2)` -/
def P11410299283153801785.Spec : Prop :=
  ∀ n, P11410299283153801785.a n = A124313 (n + 1)

end A124313

/-! ## A124313.P17548988182864937176

`A124312(n+3)-(A001591(n+1)+A001591(n+2))`
-/

namespace A124313.P17548988182864937176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124312 (n + 3) - (A001591 (n + 1) + A001591 (n + 2))

end

end A124313.P17548988182864937176

namespace A124313

/-- `A124312(n+3)-(A001591(n+1)+A001591(n+2))` -/
def P17548988182864937176.Spec : Prop :=
  ∀ n, P17548988182864937176.a n = A124313 (n + 1)

end A124313

/-! ## A124313.P1045866714533717582

`A001591(n+4)-record[A251653(n)]`
-/

namespace A124313.P1045866714533717582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 (n + 4) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124313.P1045866714533717582

namespace A124313

/-- `A001591(n+4)-record[A251653(n)]` -/
def P1045866714533717582.Spec : Prop :=
  ∀ n, P1045866714533717582.a n = A124313 (n + 1)

end A124313

/-!
# A124314: Expansion of -1/(1 + x + x^2 + x^3 + x^4 - x^5).

The programs for A124314, the canonical program `A124314.P11841303866490698123` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124314 has offset 0).

The definition of A124314 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(-1/(1+x+x^2+x^3+x^4-x^5))` (program `A124314.P11841303866490698123`, by `A124314.P11841303866490698123.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A124314.P11841303866490698123

`ogf(-1/(1+x+x^2+x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124314

/-- `ogf(-1/(1+x+x^2+x^3+x^4-x^5))` -/
def P11841303866490698123.Spec : Prop :=
  ∀ n, P11841303866490698123.a n = A124314 n

theorem P11841303866490698123.correct : P11841303866490698123.Spec := by
  intro n
  simp only [A124314]

end A124314

/-!
# A124315: a(n) = Sum_{d|n} tau(gcd(d,n/d)), where tau = sigma_0 = A000005.

The programs for A124315, the canonical program `A124315.P11985262133393008342` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124315 has offset 1).

The definition of A124315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124315.P17189424976752927560

`∑{d}[n+1, A046951(#)]`
-/

namespace A124315.P17189424976752927560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d

end

end A124315.P17189424976752927560

namespace A124315

/-- `∑{d}[n+1, A046951(#)]` -/
def P17189424976752927560.Spec : Prop :=
  ∀ n, P17189424976752927560.a n = A124315 (n + 1)

end A124315

/-! ## A124315.P11985262133393008342

`∏{e}[n+1, A025699(#)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A124315

/-- `∏{e}[n+1, A025699(#)]` -/
def P11985262133393008342.Spec : Prop :=
  ∀ n, P11985262133393008342.a n = A124315 (n + 1)

theorem P11985262133393008342.correct : P11985262133393008342.Spec := by
  intro n
  simp only [A124315, Nat.add_sub_cancel]

end A124315

/-! ## A124315.P3633725029722865478

`∏{e}[n+1, A002620(#+2)]`
-/

namespace A124315.P3633725029722865478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A002620 (Nat.factorization (f1 n) p + 2)

end

end A124315.P3633725029722865478

namespace A124315

/-- `∏{e}[n+1, A002620(#+2)]` -/
def P3633725029722865478.Spec : Prop :=
  ∀ n, P3633725029722865478.a n = A124315 (n + 1)

end A124315

/-! ## A124315.P12394012463822034024

`∏{e}[n+1, A008642(2*#)]`
-/

namespace A124315.P12394012463822034024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008642 (2 * Nat.factorization (f1 n) p)

end

end A124315.P12394012463822034024

namespace A124315

/-- `∏{e}[n+1, A008642(2*#)]` -/
def P12394012463822034024.Spec : Prop :=
  ∀ n, P12394012463822034024.a n = A124315 (n + 1)

end A124315

/-! ## A124315.P8861608038189899808

`∑{d}[n+1, A000005(gcd(#, (n+1)/#))]`
-/

namespace A124315.P8861608038189899808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (Int.gcd (d : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))))

end

end A124315.P8861608038189899808

namespace A124315

/-- `∑{d}[n+1, A000005(gcd(#, (n+1)/#))]` -/
def P8861608038189899808.Spec : Prop :=
  ∀ n, P8861608038189899808.a n = A124315 (n + 1)

end A124315

/-! ## A124315.P637304359834286915

`A046951(n+1)*A322483(n+1)`
-/

namespace A124315.P637304359834286915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) * A322483 (n + 1)

end

end A124315.P637304359834286915

namespace A124315

/-- `A046951(n+1)*A322483(n+1)` -/
def P637304359834286915.Spec : Prop :=
  ∀ n, P637304359834286915.a n = A124315 (n + 1)

end A124315

/-! ## A124315.P11547878396216776257

`∑{d}[n+1, A000005(#)*A010052((n+1)/#)]`
-/

namespace A124315.P11547878396216776257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A010052 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124315.P11547878396216776257

namespace A124315

/-- `∑{d}[n+1, A000005(#)*A010052((n+1)/#)]` -/
def P11547878396216776257.Spec : Prop :=
  ∀ n, P11547878396216776257.a n = A124315 (n + 1)

end A124315

/-! ## A124315.P4706646286620743047

`∑{d}[n+1, A007425(#)*A008836((n+1)/#)]`
-/

namespace A124315.P4706646286620743047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124315.P4706646286620743047

namespace A124315

/-- `∑{d}[n+1, A007425(#)*A008836((n+1)/#)]` -/
def P4706646286620743047.Spec : Prop :=
  ∀ n, P4706646286620743047.a n = A124315 (n + 1)

end A124315

/-! ## A124315.P15474997851082505052

`∑{d}[n+1, A035263(#)*A065704((n+1)/#)]`
-/

namespace A124315.P15474997851082505052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035263 d * A065704 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124315.P15474997851082505052

namespace A124315

/-- `∑{d}[n+1, A035263(#)*A065704((n+1)/#)]` -/
def P15474997851082505052.Spec : Prop :=
  ∀ n, P15474997851082505052.a n = A124315 (n + 1)

end A124315

/-! ## A124315.P1678447678260007703

`∑{d}[n+1, A010057(#)*A092520((n+1)/#)]`
-/

namespace A124315.P1678447678260007703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010057 d * A092520 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124315.P1678447678260007703

namespace A124315

/-- `∑{d}[n+1, A010057(#)*A092520((n+1)/#)]` -/
def P1678447678260007703.Spec : Prop :=
  ∀ n, P1678447678260007703.a n = A124315 (n + 1)

end A124315

/-! ## A124315.P4825987834530088880

`∑{d}[n+1, A056624(#)*A061704((n+1)/#)]`
-/

namespace A124315.P4825987834530088880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056624 d * A061704 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124315.P4825987834530088880

namespace A124315

/-- `∑{d}[n+1, A056624(#)*A061704((n+1)/#)]` -/
def P4825987834530088880.Spec : Prop :=
  ∀ n, P4825987834530088880.a n = A124315 (n + 1)

end A124315

/-! ## A124315.P8490373379363999168

`∑{d}[n+1, A061020(#)*A069088((n+1)/#)]`
-/

namespace A124315.P8490373379363999168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061020 d * A069088 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124315.P8490373379363999168

namespace A124315

/-- `∑{d}[n+1, A061020(#)*A069088((n+1)/#)]` -/
def P8490373379363999168.Spec : Prop :=
  ∀ n, P8490373379363999168.a n = A124315 (n + 1)

end A124315

/-! ## A124315.P16061788176237172759

`∑{d}[n+1, A007426(#)*A158522((n+1)/#)]`
-/

namespace A124315.P16061788176237172759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A158522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124315.P16061788176237172759

namespace A124315

/-- `∑{d}[n+1, A007426(#)*A158522((n+1)/#)]` -/
def P16061788176237172759.Spec : Prop :=
  ∀ n, P16061788176237172759.a n = A124315 (n + 1)

end A124315

/-! ## A124315.P12547338194743267983

`∑{d}[n+1, A076752(#)*A130054((n+1)/#)]`
-/

namespace A124315.P12547338194743267983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076752 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124315.P12547338194743267983

namespace A124315

/-- `∑{d}[n+1, A076752(#)*A130054((n+1)/#)]` -/
def P12547338194743267983.Spec : Prop :=
  ∀ n, P12547338194743267983.a n = A124315 (n + 1)

end A124315

/-! ## A124315.P85870402768869637

`∑{d}[n+1, A053866(#)*A174273((n+1)/#)]`
-/

namespace A124315.P85870402768869637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053866 d * A174273 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124315.P85870402768869637

namespace A124315

/-- `∑{d}[n+1, A053866(#)*A174273((n+1)/#)]` -/
def P85870402768869637.Spec : Prop :=
  ∀ n, P85870402768869637.a n = A124315 (n + 1)

end A124315

/-! ## A124315.P10974159580074725674

`∑{d}[n+1, A129628(#)*A143259((n+1)/#)]`
-/

namespace A124315.P10974159580074725674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129628 d * A143259 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124315.P10974159580074725674

namespace A124315

/-- `∑{d}[n+1, A129628(#)*A143259((n+1)/#)]` -/
def P10974159580074725674.Spec : Prop :=
  ∀ n, P10974159580074725674.a n = A124315 (n + 1)

end A124315

/-! ## A124315.P2473386525494865199

`∑{d}[n+1, A174238(#)*A181563((n+1)/#)]`
-/

namespace A124315.P2473386525494865199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174238 d * A181563 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124315.P2473386525494865199

namespace A124315

/-- `∑{d}[n+1, A174238(#)*A181563((n+1)/#)]` -/
def P2473386525494865199.Spec : Prop :=
  ∀ n, P2473386525494865199.a n = A124315 (n + 1)

end A124315

/-! ## A124315.P7456724648233053622

`A000005(A019554(n+1))*A046951(n+1)`
-/

namespace A124315.P7456724648233053622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A019554 (n + 1)).toNat * A046951 (n + 1)

end

end A124315.P7456724648233053622

namespace A124315

/-- `A000005(A019554(n+1))*A046951(n+1)` -/
def P7456724648233053622.Spec : Prop :=
  ∀ n, P7456724648233053622.a n = A124315 (n + 1)

end A124315

/-! ## A124315.P9847388436207079712

`A046951(n+1)*A366901(A350390(n+1))`
-/

namespace A124315.P9847388436207079712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) * A366901 (A350390 (n + 1)).toNat

end

end A124315.P9847388436207079712

namespace A124315

/-- `A046951(n+1)*A366901(A350390(n+1))` -/
def P9847388436207079712.Spec : Prop :=
  ∀ n, P9847388436207079712.a n = A124315 (n + 1)

end A124315

/-! ## A124315.P2425845214075150493

`A322483(A000188(n+1)²)*A322483(n+1)`
-/

namespace A124315.P2425845214075150493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A000188 (n + 1) ^ 2).toNat * A322483 (n + 1)

end

end A124315.P2425845214075150493

namespace A124315

/-- `A322483(A000188(n+1)²)*A322483(n+1)` -/
def P2425845214075150493.Spec : Prop :=
  ∀ n, P2425845214075150493.a n = A124315 (n + 1)

end A124315

/-!
# A124316: a(n) = Sum_{d|n} sigma(gcd(d,n/d)), where sigma is the sum of divisors function, A000203.

The programs for A124316, the canonical program `A124316.P3020769793756547275` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124316 has offset 1).

The definition of A124316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124316.P2418592556355963127

`∑{d}[n+1, A069290(#)]`
-/

namespace A124316.P2418592556355963127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069290 d

end

end A124316.P2418592556355963127

namespace A124316

/-- `∑{d}[n+1, A069290(#)]` -/
def P2418592556355963127.Spec : Prop :=
  ∀ n, P2418592556355963127.a n = A124316 (n + 1)

end A124316

/-! ## A124316.P3020769793756547275

`∑{d}[n+1, A000203(gcd(#, (n+1)/#))]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A124316

/-- `∑{d}[n+1, A000203(gcd(#, (n+1)/#))]` -/
def P3020769793756547275.Spec : Prop :=
  ∀ n, P3020769793756547275.a n = A124316 (n + 1)

theorem P3020769793756547275.correct : P3020769793756547275.Spec := by
  intro n
  simp only [A124316, Nat.add_sub_cancel]

end A124316

/-! ## A124316.P16706917759981383069

`∑{d}[n+1, A000005(#)*A037213((n+1)/#)]`
-/

namespace A124316.P16706917759981383069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A037213 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124316.P16706917759981383069

namespace A124316

/-- `∑{d}[n+1, A000005(#)*A037213((n+1)/#)]` -/
def P16706917759981383069.Spec : Prop :=
  ∀ n, P16706917759981383069.a n = A124316 (n + 1)

end A124316

/-! ## A124316.P15142447852884189676

`∑{d}[n+1, A000188(#)*A046951((n+1)/#)]`
-/

namespace A124316.P15142447852884189676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000188 d * A046951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124316.P15142447852884189676

namespace A124316

/-- `∑{d}[n+1, A000188(#)*A046951((n+1)/#)]` -/
def P15142447852884189676.Spec : Prop :=
  ∀ n, P15142447852884189676.a n = A124316 (n + 1)

end A124316

/-! ## A124316.P2261791005779121610

`∑{d}[n+1, A010052(#)*A055155((n+1)/#)]`
-/

namespace A124316.P2261791005779121610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A055155 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124316.P2261791005779121610

namespace A124316

/-- `∑{d}[n+1, A010052(#)*A055155((n+1)/#)]` -/
def P2261791005779121610.Spec : Prop :=
  ∀ n, P2261791005779121610.a n = A124316 (n + 1)

end A124316

/-! ## A124316.P12129863452756927414

`∑{d}[n+1, A007430(#)*A178450((n+1)/#)]`
-/

namespace A124316.P12129863452756927414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007430 d * A178450 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124316.P12129863452756927414

namespace A124316

/-- `∑{d}[n+1, A007430(#)*A178450((n+1)/#)]` -/
def P12129863452756927414.Spec : Prop :=
  ∀ n, P12129863452756927414.a n = A124316 (n + 1)

end A124316

/-! ## A124316.P8477109608140832528

`∑{d}[n+1, A065704(#)*A229297((n+1)/#)]`
-/

namespace A124316.P8477109608140832528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065704 d * A229297 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124316.P8477109608140832528

namespace A124316

/-- `∑{d}[n+1, A065704(#)*A229297((n+1)/#)]` -/
def P8477109608140832528.Spec : Prop :=
  ∀ n, P8477109608140832528.a n = A124316 (n + 1)

end A124316

/-! ## A124316.P10295368635881526028

`∑{d}[n+1, A001616(#)*A369308((n+1)/#)]`
-/

namespace A124316.P10295368635881526028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001616 d * A369308 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124316.P10295368635881526028

namespace A124316

/-- `∑{d}[n+1, A001616(#)*A369308((n+1)/#)]` -/
def P10295368635881526028.Spec : Prop :=
  ∀ n, P10295368635881526028.a n = A124316 (n + 1)

end A124316

/-! ## A124316.P10395859536916224094

`∑{d}[n+1, A061020(#)*A346613((n+1)/#)]`
-/

namespace A124316.P10395859536916224094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061020 d * A346613 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124316.P10395859536916224094

namespace A124316

/-- `∑{d}[n+1, A061020(#)*A346613((n+1)/#)]` -/
def P10395859536916224094.Spec : Prop :=
  ∀ n, P10395859536916224094.a n = A124316 (n + 1)

end A124316

/-! ## A124316.P1676947267441674350

`∑{d}[n+1, A130054(#)*A340774((n+1)/#)]`
-/

namespace A124316.P1676947267441674350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A340774 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124316.P1676947267441674350

namespace A124316

/-- `∑{d}[n+1, A130054(#)*A340774((n+1)/#)]` -/
def P1676947267441674350.Spec : Prop :=
  ∀ n, P1676947267441674350.a n = A124316 (n + 1)

end A124316

/-! ## A124316.P1639690206567589411

`∑{d}[n+1, A323921(#)*A347176((n+1)/#)]`
-/

namespace A124316.P1639690206567589411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323921 d * A347176 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124316.P1639690206567589411

namespace A124316

/-- `∑{d}[n+1, A323921(#)*A347176((n+1)/#)]` -/
def P1639690206567589411.Spec : Prop :=
  ∀ n, P1639690206567589411.a n = A124316 (n + 1)

end A124316

/-! ## A124316.P9396558211626319337

`∑{d}[n+1, A333843(#)*A360162((n+1)/#)]`
-/

namespace A124316.P9396558211626319337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A333843 d * A360162 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124316.P9396558211626319337

namespace A124316

/-- `∑{d}[n+1, A333843(#)*A360162((n+1)/#)]` -/
def P9396558211626319337.Spec : Prop :=
  ∀ n, P9396558211626319337.a n = A124316 (n + 1)

end A124316

/-! ## A124316.P6259675293994120374

`∑{d}[n+1, A333844(#)*A365404((n+1)/#)]`
-/

namespace A124316.P6259675293994120374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A333844 d * A365404 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124316.P6259675293994120374

namespace A124316

/-- `∑{d}[n+1, A333844(#)*A365404((n+1)/#)]` -/
def P6259675293994120374.Spec : Prop :=
  ∀ n, P6259675293994120374.a n = A124316 (n + 1)

end A124316

/-! ## A124316.P10033063067015412041

`∑{d}[n+1, A333844(#²)]`
-/

namespace A124316.P10033063067015412041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A333844 (d ^ 2)

end

end A124316.P10033063067015412041

namespace A124316

/-- `∑{d}[n+1, A333844(#²)]` -/
def P10033063067015412041.Spec : Prop :=
  ∀ n, P10033063067015412041.a n = A124316 (n + 1)

end A124316

/-!
# A124317: Semiprimes indexed by 3-almost primes.

The programs for A124317, the canonical program `A124317.P11256881395570430620` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124317 has offset 1).

The definition of A124317 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A014612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A124317.P11256881395570430620

`A001358(A014612(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A124317

/-- `A001358(A014612(n+1))` -/
def P11256881395570430620.Spec : Prop :=
  ∀ n, P11256881395570430620.a n = A124317 (n + 1)

theorem P11256881395570430620.correct : P11256881395570430620.Spec := by
  intro n
  simp only [A124317, Nat.add_sub_cancel]

end A124317

/-! ## A124317.P8774461330649181031

`A001358(eq[3, A001222(n+1)]+1)`
-/

namespace A124317.P8774461330649181031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A124317.P8774461330649181031

namespace A124317

/-- `A001358(eq[3, A001222(n+1)]+1)` -/
def P8774461330649181031.Spec : Prop :=
  ∀ n, P8774461330649181031.a n = A124317 (n + 1)

end A124317

/-! ## A124317.P3925362736622700496

`A001358(eq[n, n-a(A001222(n))])` with `a(0)=1, a(1)=3`
-/

namespace A124317.P3925362736622700496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  (n : ℤ) - f2 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124317.P3925362736622700496

namespace A124317

/-- `A001358(eq[n, n-a(A001222(n))])` -/
def P3925362736622700496.Spec : Prop :=
  ∀ n, P3925362736622700496.a n = A124317 (n + 1)

end A124317

/-! ## A124317.P4566898082228515104

`A001358(eq[1, A101637(2*(n+1))]+1)`
-/

namespace A124317.P4566898082228515104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A124317.P4566898082228515104

namespace A124317

/-- `A001358(eq[1, A101637(2*(n+1))]+1)` -/
def P4566898082228515104.Spec : Prop :=
  ∀ n, P4566898082228515104.a n = A124317 (n + 1)

end A124317

/-! ## A124317.P81008991422138087

`A001358(A110209(n+1)-A110209(n))`
-/

namespace A124317.P81008991422138087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A110209 (n + 1) - A110209 n).toNat

end

end A124317.P81008991422138087

namespace A124317

/-- `A001358(A110209(n+1)-A110209(n))` -/
def P81008991422138087.Spec : Prop :=
  ∀ n, P81008991422138087.a n = A124317 (n + 1)

end A124317

/-! ## A124317.P9848456411927179732

`A001358(A162731(n+1)+A162361(n+1))`
-/

namespace A124317.P9848456411927179732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A162731 (n + 1) + A162361 (n + 1)).toNat

end

end A124317.P9848456411927179732

namespace A124317

/-- `A001358(A162731(n+1)+A162361(n+1))` -/
def P9848456411927179732.Spec : Prop :=
  ∀ n, P9848456411927179732.a n = A124317 (n + 1)

end A124317

/-! ## A124317.P947933155808162330

`A001358(A162361(n+1)*A163173(n+1))`
-/

namespace A124317.P947933155808162330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A162361 (n + 1) * A163173 (n + 1)).toNat

end

end A124317.P947933155808162330

namespace A124317

/-- `A001358(A162361(n+1)*A163173(n+1))` -/
def P947933155808162330.Spec : Prop :=
  ∀ n, P947933155808162330.a n = A124317 (n + 1)

end A124317

/-! ## A124317.P15141513283850076128

`A001358(eq[8, A061142(n+1)]+1)`
-/

namespace A124317.P15141513283850076128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A124317.P15141513283850076128

namespace A124317

/-- `A001358(eq[8, A061142(n+1)]+1)` -/
def P15141513283850076128.Spec : Prop :=
  ∀ n, P15141513283850076128.a n = A124317 (n + 1)

end A124317

/-! ## A124317.P10254161167694441022

`A088707(eq[4, ∑{e}[2*n, #]])-1`
-/

namespace A124317.P10254161167694441022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) - 1

end

end A124317.P10254161167694441022

namespace A124317

/-- `A088707(eq[4, ∑{e}[2*n, #]])-1` -/
def P10254161167694441022.Spec : Prop :=
  ∀ n, P10254161167694441022.a n = A124317 (n + 1)

end A124317

/-! ## A124317.P4166082457651920808

`A176540(A014612(n+1)+1)`
-/

namespace A124317.P4166082457651920808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (A014612 (n + 1) + 1).toNat

end

end A124317.P4166082457651920808

namespace A124317

/-- `A176540(A014612(n+1)+1)` -/
def P4166082457651920808.Spec : Prop :=
  ∀ n, P4166082457651920808.a n = A124317 (n + 1)

end A124317

/-! ## A124317.P6672083784338726050

`A088707(eq[3, A001222(n+1)]+1)-1`
-/

namespace A124317.P6672083784338726050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A124317.P6672083784338726050

namespace A124317

/-- `A088707(eq[3, A001222(n+1)]+1)-1` -/
def P6672083784338726050.Spec : Prop :=
  ∀ n, P6672083784338726050.a n = A124317 (n + 1)

end A124317

/-! ## A124317.P3784092823786464970

`A001358(A000720(A124268(n+1)))`
-/

namespace A124317.P3784092823786464970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A000720 (A124268 (n + 1)).toNat).toNat

end

end A124317.P3784092823786464970

namespace A124317

/-- `A001358(A000720(A124268(n+1)))` -/
def P3784092823786464970.Spec : Prop :=
  ∀ n, P3784092823786464970.a n = A124317 (n + 1)

end A124317

/-! ## A124317.P16626668503366731188

`A129767(2*A014612(n+1))`
-/

namespace A124317.P16626668503366731188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * A014612 (n + 1)).toNat

end

end A124317.P16626668503366731188

namespace A124317

/-- `A129767(2*A014612(n+1))` -/
def P16626668503366731188.Spec : Prop :=
  ∀ n, P16626668503366731188.a n = A124317 (n + 1)

end A124317

/-!
# A124318: 3-almost primes indexed by semiprimes.

The programs for A124318, the canonical program `A124318.P14277909349368239010` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124318 has offset 1).

The definition of A124318 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A014612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A124318.P14277909349368239010

`A014612(A001358(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A124318

/-- `A014612(A001358(n+1))` -/
def P14277909349368239010.Spec : Prop :=
  ∀ n, P14277909349368239010.a n = A124318 (n + 1)

theorem P14277909349368239010.correct : P14277909349368239010.Spec := by
  intro n
  simp only [A124318, Nat.add_sub_cancel]

end A124318

/-! ## A124318.P4935759004102744676

`A014612(eq[2, ∑{e}[n, #]])`
-/

namespace A124318.P4935759004102744676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A124318.P4935759004102744676

namespace A124318

/-- `A014612(eq[2, ∑{e}[n, #]])` -/
def P4935759004102744676.Spec : Prop :=
  ∀ n, P4935759004102744676.a n = A124318 (n + 1)

end A124318

/-! ## A124318.P15002012981883089974

`A014612(A176540(n+2))`
-/

namespace A124318.P15002012981883089974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (A176540 (n + 2)).toNat

end

end A124318.P15002012981883089974

namespace A124318

/-- `A014612(A176540(n+2))` -/
def P15002012981883089974.Spec : Prop :=
  ∀ n, P15002012981883089974.a n = A124318 (n + 1)

end A124318

/-! ## A124318.P1939676022479286849

`A014612(lt[1, A105700(n)])`
-/

namespace A124318.P1939676022479286849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124318.P1939676022479286849

namespace A124318

/-- `A014612(lt[1, A105700(n)])` -/
def P1939676022479286849.Spec : Prop :=
  ∀ n, P1939676022479286849.a n = A124318 (n + 1)

end A124318

/-! ## A124318.P3441951054130704433

`A014612(eq[2, A105700(n)])`
-/

namespace A124318.P3441951054130704433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124318.P3441951054130704433

namespace A124318

/-- `A014612(eq[2, A105700(n)])` -/
def P3441951054130704433.Spec : Prop :=
  ∀ n, P3441951054130704433.a n = A124318 (n + 1)

end A124318

/-! ## A124318.P4635830947806662833

`A014612(eq[2, A166974(n)])`
-/

namespace A124318.P4635830947806662833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124318.P4635830947806662833

namespace A124318

/-- `A014612(eq[2, A166974(n)])` -/
def P4635830947806662833.Spec : Prop :=
  ∀ n, P4635830947806662833.a n = A124318 (n + 1)

end A124318

/-! ## A124318.P8085407826129879628

`A014612(sqrt(A074985(n+1)))`
-/

namespace A124318.P8085407826129879628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A124318.P8085407826129879628

namespace A124318

/-- `A014612(sqrt(A074985(n+1)))` -/
def P8085407826129879628.Spec : Prop :=
  ∀ n, P8085407826129879628.a n = A124318 (n + 1)

end A124318

/-! ## A124318.P8268775056267269156

`A014612(record[A088740(n+1)])`
-/

namespace A124318.P8268775056267269156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124318.P8268775056267269156

namespace A124318

/-- `A014612(record[A088740(n+1)])` -/
def P8268775056267269156.Spec : Prop :=
  ∀ n, P8268775056267269156.a n = A124318 (n + 1)

end A124318

/-! ## A124318.P15340714882502428079

`A014612(A186621(n+1)+1)`
-/

namespace A124318.P15340714882502428079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (A186621 (n + 1) + 1).toNat

end

end A124318.P15340714882502428079

namespace A124318

/-- `A014612(A186621(n+1)+1)` -/
def P15340714882502428079.Spec : Prop :=
  ∀ n, P15340714882502428079.a n = A124318 (n + 1)

theorem P15340714882502428079.correct : P15340714882502428079.Spec := by
  intro n
  simp only [A124318, Nat.add_sub_cancel, A124318.P15340714882502428079.a, A124318.P14277909349368239010.a, A001358, A001358.P632087320844056370.a, A014612, A014612.P5035219895023979827.f1, A014612.P5035219895023979827.f2, A014612.P5035219895023979827.a, A186621, A186621.P5089299060388261365.a, A088707, A088707.P7291141647877559993.a, A318473, A318473.P15254297892022099386.a, A007814, A007814.P13537437864234730737.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A318474, A318474.P8998040803889606684.a, A001511, A001511.P17146462531039486101.a, A064549, A064549.P18019400484953624932.a, A072000, A072000.P3706059858088101648.a, A318472, A318472.P17460137329707848954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A124318

/-! ## A124318.P11550619267384383123

`A014612(A088707(n+1)-1)`
-/

namespace A124318.P11550619267384383123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (A088707 (n + 1) - 1).toNat

end

end A124318.P11550619267384383123

namespace A124318

/-- `A014612(A088707(n+1)-1)` -/
def P11550619267384383123.Spec : Prop :=
  ∀ n, P11550619267384383123.a n = A124318 (n + 1)

end A124318

/-!
# A124319: Semiprime(3almostprime(n))-3almostprime(semiprime(n)). Commutator[A001358, A014612] at n.

The programs for A124319, there is no canonical definition to state claims against.
-/

/-! ## A124319.P9187327145845459789

`A124317(n+1)-A014612(A001358(n+1))`
-/

namespace A124319.P9187327145845459789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124317 (n + 1) - A014612 (A001358 (n + 1)).toNat

end

end A124319.P9187327145845459789

/-! ## A124319.P17712120708520354562

`A124317(n+1)-A014612(lt[1, A105700(n)])`
-/

namespace A124319.P17712120708520354562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124317 (n + 1) - A014612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124319.P17712120708520354562

/-! ## A124319.P10035137553354786505

`A124317(n+1)-A014612(eq[2, A105700(n)])`
-/

namespace A124319.P10035137553354786505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124317 (n + 1) - A014612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124319.P10035137553354786505

/-! ## A124319.P8848761942008260935

`A124317(n+1)-A014612(eq[2, A166974(n)])`
-/

namespace A124319.P8848761942008260935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124317 (n + 1) - A014612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124319.P8848761942008260935

/-! ## A124319.P17577215431979067167

`A124317(n+1)-A014612(sqrt(A074985(n+1)))`
-/

namespace A124319.P17577215431979067167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124317 (n + 1) - A014612 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A124319.P17577215431979067167

/-! ## A124319.P2455744386203347712

`A124317(n+1)-A014612(record[A088740(n+1)])`
-/

namespace A124319.P2455744386203347712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124317 (n + 1) - A014612 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124319.P2455744386203347712

/-! ## A124319.P9367175532079448730

`A124317(n+1)-A014612(A186621(n+1)+1)`
-/

namespace A124319.P9367175532079448730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124317 (n + 1) - A014612 (A186621 (n + 1) + 1).toNat

end

end A124319.P9367175532079448730

/-! ## A124319.P14219449214991535781

`A124317(n+1)-A014612(A088707(n+1)-1)`
-/

namespace A124319.P14219449214991535781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124317 (n + 1) - A014612 (A088707 (n + 1) - 1).toNat

end

end A124319.P14219449214991535781

/-! ## A124319.P122112525469391582

`A124317(n+1)-A014612(eq[1, A064911(n+1)]+1)`
-/

namespace A124319.P122112525469391582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124317 (n + 1) - A014612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A124319.P122112525469391582

/-! ## A124319.P15761012951445462359

`A124317(n+1)-A014612(eq[2, A001222(n+1)]+1)`
-/

namespace A124319.P15761012951445462359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124317 (n + 1) - A014612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A124319.P15761012951445462359

/-!
# A124320: Triangle read by rows: T(n,k) = k!*binomial(n+k-1,k) (n >= 0, 0 <= k <= n), rising factorial power, Pochhammer symbol.

The programs for A124320, the canonical program `A124320.P4874340076457130803` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124320 has offset 0).

The definition of A124320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1484 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124320.P4874340076457130803

`A059481(n)*A233543(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A124320

/-- `A059481(n)*A233543(n)` -/
def P4874340076457130803.Spec : Prop :=
  ∀ n, P4874340076457130803.a n = A124320 n

theorem P4874340076457130803.correct : P4874340076457130803.Spec := by
  intro n
  simp only [A124320]

end A124320

/-! ## A124320.P7543716308545453809

`A370706(n)/A007318(n)`
-/

namespace A124320.P7543716308545453809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370706 n : ℚ) / (A007318 n : ℚ)

end

end A124320.P7543716308545453809

namespace A124320

/-- `A370706(n)/A007318(n)` -/
def P7543716308545453809.Spec : Prop :=
  ∀ n, P7543716308545453809.a n = (A124320 n : ℚ)

end A124320

/-! ## A124320.P8517238016235979612

`A002262(n)!*A059481(n)`
-/

namespace A124320.P8517238016235979612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A059481 n

end

end A124320.P8517238016235979612

namespace A124320

/-- `A002262(n)!*A059481(n)` -/
def P8517238016235979612.Spec : Prop :=
  ∀ n, P8517238016235979612.a n = A124320 n

end A124320

/-! ## A124320.P16249267077658177790

`round(A113025(n)/A029635(n))`
-/

namespace A124320.P16249267077658177790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A113025 n : ℚ) / (A029635 n : ℚ))

end

end A124320.P16249267077658177790

namespace A124320

/-- `round(A113025(n)/A029635(n))` -/
def P16249267077658177790.Spec : Prop :=
  ∀ n, P16249267077658177790.a n = A124320 n

end A124320

/-! ## A124320.P14024247700264945965

`A303986(n)/A293600(n+1)`
-/

namespace A124320.P14024247700264945965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303986 n : ℚ) / (A293600 (n + 1) : ℚ)

end

end A124320.P14024247700264945965

namespace A124320

/-- `A303986(n)/A293600(n+1)` -/
def P14024247700264945965.Spec : Prop :=
  ∀ n, P14024247700264945965.a n = (A124320 n : ℚ)

end A124320

/-! ## A124320.P11524859394502146547

`A113025(n)/A029635(n)*A000034(A217220(n))`
-/

namespace A124320.P11524859394502146547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113025 n : ℚ) / (A029635 n : ℚ) * (A000034 (A217220 n).toNat : ℚ)

end

end A124320.P11524859394502146547

namespace A124320

/-- `A113025(n)/A029635(n)*A000034(A217220(n))` -/
def P11524859394502146547.Spec : Prop :=
  ∀ n, P11524859394502146547.a n = (A124320 n : ℚ)

end A124320

/-! ## A124320.P11965962016009618581

`A113025(n)/A029635(n)*A000034(A008578(n+2)+1)`
-/

namespace A124320.P11965962016009618581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113025 n : ℚ) / (A029635 n : ℚ) * (A000034 (A008578 (n + 2) + 1).toNat : ℚ)

end

end A124320.P11965962016009618581

namespace A124320

/-- `A113025(n)/A029635(n)*A000034(A008578(n+2)+1)` -/
def P11965962016009618581.Spec : Prop :=
  ∀ n, P11965962016009618581.a n = (A124320 n : ℚ)

end A124320

/-! ## A124320.P15528209416204443700

`A071919(A245300(n))*A265312(A245300(n))`
-/

namespace A124320.P15528209416204443700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (A245300 n).toNat * A265312 (A245300 n).toNat

end

end A124320.P15528209416204443700

namespace A124320

/-- `A071919(A245300(n))*A265312(A245300(n))` -/
def P15528209416204443700.Spec : Prop :=
  ∀ n, P15528209416204443700.a n = A124320 n

end A124320

/-! ## A124320.P173439096497305821

`A265609(A245300(n))`
-/

namespace A124320.P173439096497305821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265609 (A245300 n).toNat

end

end A124320.P173439096497305821

namespace A124320

/-- `A265609(A245300(n))` -/
def P173439096497305821.Spec : Prop :=
  ∀ n, P173439096497305821.a n = A124320 n

end A124320

/-! ## A124320.P4269231588591221897

`A008279(A245300(n)-A051162(n))`
-/

namespace A124320.P4269231588591221897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A245300 n - A051162 n).toNat

end

end A124320.P4269231588591221897

namespace A124320

/-- `A008279(A245300(n)-A051162(n))` -/
def P4269231588591221897.Spec : Prop :=
  ∀ n, P4269231588591221897.a n = A124320 n

end A124320

/-! ## A124320.P5763064047006918208

`A370707(n)/A008279(n)`
-/

namespace A124320.P5763064047006918208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370707 n : ℚ) / (A008279 n : ℚ)

end

end A124320.P5763064047006918208

namespace A124320

/-- `A370707(n)/A008279(n)` -/
def P5763064047006918208.Spec : Prop :=
  ∀ n, P5763064047006918208.a n = (A124320 n : ℚ)

end A124320

/-! ## A124320.P6858887185087665300

`A059481(n)*A136494(A059268(n))`
-/

namespace A124320.P6858887185087665300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 n * A136494 (A059268 n).toNat

end

end A124320.P6858887185087665300

namespace A124320

/-- `A059481(n)*A136494(A059268(n))` -/
def P6858887185087665300.Spec : Prop :=
  ∀ n, P6858887185087665300.a n = A124320 n

end A124320

/-!
# A124321: Triangle read by rows: T(n,k) is the number of set partitions of {1,2,...,n} (or of any n-set) having k blocks of odd size (0<=k<=n).

The programs for A124321, there is no canonical definition to state claims against.
-/

/-! ## A124321.P1758476499849975845

`A178104(n)+A307598(A322549(n))²`
-/

namespace A124321.P1758476499849975845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178104 n + A307598 (A322549 n).toNat ^ 2

end

end A124321.P1758476499849975845

/-! ## A124321.P10082205589839065600

`A178104(n)+A282673(A314691(n))²`
-/

namespace A124321.P10082205589839065600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178104 n + A282673 (A314691 n).toNat ^ 2

end

end A124321.P10082205589839065600

/-! ## A124321.P7099669411447623801

`A121408(n+1)%A250273(A059268(n))`
-/

namespace A124321.P7099669411447623801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121408 (n + 1)) (A250273 (A059268 n).toNat)

end

end A124321.P7099669411447623801

/-! ## A124321.P14505063581175125265

`A327928(A001045(n))+A178104(n)`
-/

namespace A124321.P14505063581175125265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327928 (A001045 n).toNat + A178104 n

end

end A124321.P14505063581175125265

/-! ## A124321.P4682678392447264667

`A162351(A256036(n))`
-/

namespace A124321.P4682678392447264667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162351 (A256036 n).toNat

end

end A124321.P4682678392447264667

/-!
# A124323: Triangle read by rows: T(n,k) is the number of partitions of an n-set having k singleton blocks (0<=k<=n).

The programs for A124323, there is no canonical definition to state claims against.
-/

/-! ## A124323.P2277335081626511248

`A007318(n)*A000296(A025581(n))`
-/

namespace A124323.P2277335081626511248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000296 (A025581 n).toNat

end

end A124323.P2277335081626511248

/-! ## A124323.P2247584302643252353

`sqrt(A008459(n))*A000296(A025581(n))`
-/

namespace A124323.P2247584302643252353
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A000296 (A025581 n).toNat : ℝ)

end

end A124323.P2247584302643252353

/-! ## A124323.P8665071796330953975

`A000296(A025581(n))/2*A028326(n)`
-/

namespace A124323.P8665071796330953975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000296 (A025581 n).toNat : ℚ) / 2 * (A028326 n : ℚ)

end

end A124323.P8665071796330953975

/-! ## A124323.P6326075811893459597

`A000296(A004736(n+1)-1)*A007318(n)`
-/

namespace A124323.P6326075811893459597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 (A004736 (n + 1) - 1).toNat * A007318 n

end

end A124323.P6326075811893459597

/-! ## A124323.P1763537764065550261

`A000296(A025581(n))*A071919(A007401(n+1))`
-/

namespace A124323.P1763537764065550261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 (A025581 n).toNat * A071919 (A007401 (n + 1)).toNat

end

end A124323.P1763537764065550261

/-! ## A124323.P13745480456747433422

`A250104(A094497(n)+n)`
-/

namespace A124323.P13745480456747433422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250104 (A094497 n + (n : ℤ)).toNat

end

end A124323.P13745480456747433422

/-! ## A124323.P13340591592210594140

`A250104(A130716(n)+n)`
-/

namespace A124323.P13340591592210594140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250104 (A130716 n + (n : ℤ)).toNat

end

end A124323.P13340591592210594140

/-! ## A124323.P13710925572815005834

`A250104(A263013(n)+n)`
-/

namespace A124323.P13710925572815005834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250104 (A263013 n + (n : ℤ)).toNat

end

end A124323.P13710925572815005834

/-! ## A124323.P9027006458970176643

`A250104(xor(n, A094497(n)))`
-/

namespace A124323.P9027006458970176643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250104 (Int.xor (n : ℤ) (A094497 n)).toNat

end

end A124323.P9027006458970176643

/-! ## A124323.P16317993438278039286

`A250104(xor(n, A130716(n)))`
-/

namespace A124323.P16317993438278039286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250104 (Int.xor (n : ℤ) (A130716 n)).toNat

end

end A124323.P16317993438278039286

/-!
# A124324: Triangle read by rows: T(n,k) is the number of partitions of an n-set having k blocks of size > 1 (0<=k<=floor(n/2)).

The programs for A124324, the canonical program `A124324.P3454007153021471071` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124324 has offset 0).

The definition of A124324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 931 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124324.P3454007153021471071

`A112493(A091018(n)%A008299(n+2))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A124324

/-- `A112493(A091018(n)%A008299(n+2))` -/
def P3454007153021471071.Spec : Prop :=
  ∀ n, P3454007153021471071.a n = A124324 n

theorem P3454007153021471071.correct : P3454007153021471071.Spec := by
  intro n
  simp only [A124324]

end A124324

/-! ## A124324.P11773318877091583057

`A112493(A091018(n))`
-/

namespace A124324.P11773318877091583057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112493 (A091018 n).toNat

end

end A124324.P11773318877091583057

namespace A124324

/-- `A112493(A091018(n))` -/
def P11773318877091583057.Spec : Prop :=
  ∀ n, P11773318877091583057.a n = A124324 n

end A124324

/-! ## A124324.P13274194209470327346

`A112493(A056536(n+1)-1)`
-/

namespace A124324.P13274194209470327346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112493 (A056536 (n + 1) - 1).toNat

end

end A124324.P13274194209470327346

namespace A124324

/-- `A112493(A056536(n+1)-1)` -/
def P13274194209470327346.Spec : Prop :=
  ∀ n, P13274194209470327346.a n = A124324 n

end A124324

/-! ## A124324.P14465671323470255794

`A112493(A057428(n)+A056536(n+1))`
-/

namespace A124324.P14465671323470255794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112493 (A057428 n + A056536 (n + 1)).toNat

end

end A124324.P14465671323470255794

namespace A124324

/-- `A112493(A057428(n)+A056536(n+1))` -/
def P14465671323470255794.Spec : Prop :=
  ∀ n, P14465671323470255794.a n = A124324 n

end A124324

/-! ## A124324.P4406561598818650778

`A112493(A134824(n)+A056536(n+1))`
-/

namespace A124324.P4406561598818650778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112493 (A134824 n + A056536 (n + 1)).toNat

end

end A124324.P4406561598818650778

namespace A124324

/-- `A112493(A134824(n)+A056536(n+1))` -/
def P4406561598818650778.Spec : Prop :=
  ∀ n, P4406561598818650778.a n = A124324 n

end A124324

/-!
# A124325: Number of blocks of size >1 in all partitions of an n-set.

The programs for A124325, there is no canonical definition to state claims against.
-/

/-! ## A124325.P3262591684255944504

`Δ[A000110(n)]-A052889(n)`
-/

namespace A124325.P3262591684255944504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A052889 n

end

end A124325.P3262591684255944504

/-! ## A124325.P2943490292781254163

`Δ[Δ[A005001(n)]]-A052889(n)`
-/

namespace A124325.P2943490292781254163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A052889 n

end

end A124325.P2943490292781254163

/-! ## A124325.P2605948149124954392

`A157928(n)*A283424(A133263(n))`
-/

namespace A124325.P2605948149124954392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n * A283424 (A133263 n).toNat

end

end A124325.P2605948149124954392

/-! ## A124325.P13117711449561748518

`Δ[A011971(A000217(n))]-A052889(n)`
-/

namespace A124325.P13117711449561748518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A052889 n

end

end A124325.P13117711449561748518

/-! ## A124325.P17895333456061811644

`Δ[A011972(A161680(n))]-A052889(n)`
-/

namespace A124325.P17895333456061811644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (A161680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A052889 n

end

end A124325.P17895333456061811644

/-! ## A124325.P15534221369423942665

`A177255(n)+A177257(n)-A052889(n)`
-/

namespace A124325.P15534221369423942665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177255 n + (A177257 n - A052889 n)

end

end A124325.P15534221369423942665

/-! ## A124325.P6844442187880391962

`A000110(n+1)-(A052889(n)+A000110(n))`
-/

namespace A124325.P6844442187880391962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) - (A052889 n + A000110 n)

end

end A124325.P6844442187880391962

/-! ## A124325.P6323195006287961847

`A283424(A133263(n))%A011966(n)`
-/

namespace A124325.P6323195006287961847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283424 (A133263 n).toNat) (A011966 n)

end

end A124325.P6323195006287961847

/-! ## A124325.P7812140345467557766

`Δ[A033306(∑[n])]-A052889(n)`
-/

namespace A124325.P7812140345467557766
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033306 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A052889 n

end

end A124325.P7812140345467557766

/-!
# A124326: Triangle read by rows: T(n,m) = A007318(n,m) - A077028(n,m) skipping zeros.

The programs for A124326, there is no canonical definition to state claims against.
-/

/-! ## A124326.P6281954854858165738

`∑{d}[A036561(n), A244098(#)]`
-/

namespace A124326.P6281954854858165738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A244098 d

end

end A124326.P6281954854858165738

/-! ## A124326.P273151852053710462

`∑{d}[A175840(n), A244098(#)]`
-/

namespace A124326.P273151852053710462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A244098 d

end

end A124326.P273151852053710462

/-! ## A124326.P6897882527207758538

`∑{d}[A120027(n), A244098(#)]`
-/

namespace A124326.P6897882527207758538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A244098 d

end

end A124326.P6897882527207758538

/-! ## A124326.P10538940436866381387

`∑{d}[A232646(n+1), A244098(#)]`
-/

namespace A124326.P10538940436866381387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A244098 d

end

end A124326.P10538940436866381387

/-! ## A124326.P1751780939459770741

`∑{d}[A036565(n), A244098(#)]`
-/

namespace A124326.P1751780939459770741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A244098 d

end

end A124326.P1751780939459770741

/-!
# A124327: Triangle read by rows: T(n,k) is the number of partitions of the set {1,2,...,n} such that the sum of the least entries of the blocks is k (1<=k<=n*(n+1)/2).

The programs for A124327, there is no canonical definition to state claims against.
-/

/-! ## A124327.P10167236117829442886

`A031298(A070679(n+1)^A070677(n+1))`
-/

namespace A124327.P10167236117829442886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 (SequenceMachineLib.roundAway ((A070679 (n + 1) : ℚ) ^ (A070677 (n + 1) : ℤ))).toNat

end

end A124327.P10167236117829442886

/-! ## A124327.P5135410530151160752

`A188170(A027688(A161680(n))+3)`
-/

namespace A124327.P5135410530151160752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188170 (A027688 (A161680 n).toNat + 3).toNat

end

end A124327.P5135410530151160752

/-! ## A124327.P241561402637589389

`A286813(A002378(n)+A001045(n))`
-/

namespace A124327.P241561402637589389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286813 (A002378 n + A001045 n).toNat

end

end A124327.P241561402637589389

/-! ## A124327.P12184024519886649509

`A052947(A243055(2*(n+1))%A123287(n))`
-/

namespace A124327.P12184024519886649509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 (Int.tmod (A243055 (2 * (n + 1))) (A123287 (n + 31))).toNat

end

end A124327.P12184024519886649509

/-! ## A124327.P837430932880356848

`C(A035185(A007202(n)), A257992(n+1))`
-/

namespace A124327.P837430932880356848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A035185 (A007202 n).toNat).toNat (A257992 (n + 1)).toNat

end

end A124327.P837430932880356848

/-!
# A124328: Triangle read by rows: T(n,k) is the number of ordered trees with n edges, with thinning limbs and with root of degree k (1<=k<=n). An ordered tree with thinning limbs is such that if a node has k children, all its children have at most k children.

The programs for A124328, there is no canonical definition to state claims against.
-/

/-! ## A124328.P12792767368689017484

`xor(A055818(n), A102683(A324969(n+1)))`
-/

namespace A124328.P12792767368689017484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055818 n) (A102683 (A324969 (n + 1)).toNat)

end

end A124328.P12792767368689017484

/-! ## A124328.P18159538993186707302

`A054336(n*A329054(n)^n)`
-/

namespace A124328.P18159538993186707302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054336 ((n : ℤ) * A329054 n ^ n).toNat

end

end A124328.P18159538993186707302

/-! ## A124328.P2463005001323718969

`A054336(n*A001221(A176642(n)))`
-/

namespace A124328.P2463005001323718969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054336 ((n : ℤ) * A001221 (A176642 n).toNat).toNat

end

end A124328.P2463005001323718969

/-! ## A124328.P10885752423552812706

`gcd(A054336(n), A286013(A181996(n)))`
-/

namespace A124328.P10885752423552812706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054336 n) (A286013 (A181996 n).toNat)

end

end A124328.P10885752423552812706

/-! ## A124328.P6352905141435943011

`A082429(A060543(n))`
-/

namespace A124328.P6352905141435943011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082429 (A060543 n).toNat

end

end A124328.P6352905141435943011

/-!
# A124329: Number of ordered trees with n edges, with thinning limbs and with root of degree 2. An ordered tree with thinning limbs is such that if a node has k children, all its children have at most k children.

The programs for A124329, there is no canonical definition to state claims against.
-/

/-! ## A124329.P6428482438132731248

`∑[A090345(n+1)]`
-/

namespace A124329.P6428482438132731248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124329.P6428482438132731248

/-! ## A124329.P4506893313158521777

`∑[abs(Δ[A090344(n)])]`
-/

namespace A124329.P4506893313158521777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090344 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124329.P4506893313158521777

/-! ## A124329.P2846658542100550074

`A090344(n+1)-1`
-/

namespace A124329.P2846658542100550074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090344 (n + 1) - 1

end

end A124329.P2846658542100550074

/-! ## A124329.P7332466837752503793

`∑[A185087(A289207(n+1))]-1`
-/

namespace A124329.P7332466837752503793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185087 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A124329.P7332466837752503793

/-! ## A124329.P8215976588463159816

`∑[A060576(n+1)*A185087(A289207(n+1))]`
-/

namespace A124329.P8215976588463159816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (n + 1) * A185087 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124329.P8215976588463159816

/-! ## A124329.P13900552409342671595

`A351941(A001511(2*n+1))+A090344(n+1)`
-/

namespace A124329.P13900552409342671595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351941 (A001511 (2 * n + 1)).toNat + A090344 (n + 1)

end

end A124329.P13900552409342671595

/-! ## A124329.P5582706523311930772

`∑[A185087(n)]-A185087(n)`
-/

namespace A124329.P5582706523311930772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A185087 n

end

end A124329.P5582706523311930772

/-! ## A124329.P11501381125056366218

`Δ[∑[A090344(n)]-A023463(n)]`
-/

namespace A124329.P11501381125056366218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090344 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A023463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124329.P11501381125056366218

/-! ## A124329.P17039941213434911562

`Δ[∑[A090344(n)]-A023467(n)]`
-/

namespace A124329.P17039941213434911562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090344 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A023467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124329.P17039941213434911562

/-! ## A124329.P4405228758514983074

`Δ[∑[A090344(n)]-A023470(n)]`
-/

namespace A124329.P4405228758514983074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090344 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A023470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124329.P4405228758514983074

/-! ## A124329.P6469333797132421673

`Δ[∑[A090344(n)]-A023472(n)]`
-/

namespace A124329.P6469333797132421673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090344 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A023472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124329.P6469333797132421673

/-! ## A124329.P8632059719196856192

`Δ[∑[A090344(n)]-A023473(n)]`
-/

namespace A124329.P8632059719196856192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090344 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A023473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124329.P8632059719196856192

/-! ## A124329.P15599453544912181094

`Δ[∑[A090344(n)]-A023475(n)]`
-/

namespace A124329.P15599453544912181094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090344 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A023475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124329.P15599453544912181094

/-! ## A124329.P5343147175814717377

`Δ[∑[A090344(n)]-A023480(n)]`
-/

namespace A124329.P5343147175814717377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090344 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A023480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124329.P5343147175814717377

/-! ## A124329.P9741283530270585343

`Δ[A001478(n+1)+∑[A090344(n)]]`
-/

namespace A124329.P9741283530270585343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090344 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124329.P9741283530270585343

/-!
# A124330: a(n)= ((d(n) mod phi(n)) +1)th positive integer which is coprime to n, where phi(n) is number of positive integers which are <= n and are coprime to n and d(n) is the number of positive divisors of n.

The programs for A124330, there is no canonical definition to state claims against.
-/

/-! ## A124330.P5127955656749276755

`A327497(2*n)%A000005(2*(n+1))`
-/

namespace A124330.P5127955656749276755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327497 (2 * n)) (A000005 (2 * (n + 1)))

end

end A124330.P5127955656749276755

/-! ## A124330.P8575982112894957165

`gcd(A122060(A129838(n)), A149614(n))`
-/

namespace A124330.P8575982112894957165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122060 (A129838 n).toNat) (A149614 n)

end

end A124330.P8575982112894957165

/-! ## A124330.P2607151582018774908

`A055089(A034386(n)*A321863(n+1))`
-/

namespace A124330.P2607151582018774908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055089 (A034386 n * A321863 (n + 1)).toNat

end

end A124330.P2607151582018774908

/-! ## A124330.P14174911165519994408

`A020639(and(A160589(n), A160632(n+4)))`
-/

namespace A124330.P14174911165519994408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.land (A160589 n) (A160632 (n + 4))).toNat

end

end A124330.P14174911165519994408

/-! ## A124330.P5087817209357600001

`gcd(A032741(2*(n+1)), A238706(A126646(n)))`
-/

namespace A124330.P5087817209357600001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032741 (2 * (n + 1))) (A238706 (A126646 n).toNat)

end

end A124330.P5087817209357600001

/-!
# A124331: a(n) is the ((phi(n) mod d(n)) + 1)-th positive divisor of n, where phi(n) is number of positive integers which are <= n and are coprime to n and d(n) is the number of positive divisors of n.

The programs for A124331, there is no canonical definition to state claims against.
-/

/-! ## A124331.P2566326481017283465

`gcd(n+1, A334968(A055958(n)))`
-/

namespace A124331.P2566326481017283465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A334968 (A055958 n).toNat)

end

end A124331.P2566326481017283465

/-! ## A124331.P433194051721962174

`gcd(A334968(A055958(n)), A348553(n))`
-/

namespace A124331.P433194051721962174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A334968 (A055958 n).toNat) (A348553 n)

end

end A124331.P433194051721962174

/-! ## A124331.P11463324648517695815

`gcd((n+1)²/∏{p}[n+1, #], A004804(A257417(3*n+1)))`
-/

namespace A124331.P11463324648517695815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A004804 (A257417 (3 * n + 1)).toNat)

end

end A124331.P11463324648517695815

/-! ## A124331.P18034804824394077960

`gcd(A092486(n), A311418(A000045(n)))`
-/

namespace A124331.P18034804824394077960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092486 n) (A311418 (A000045 n).toNat)

end

end A124331.P18034804824394077960

/-! ## A124331.P6590849287994462986

`gcd(A054519(A250265(n)), A250243(n+1))`
-/

namespace A124331.P6590849287994462986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054519 (A250265 n).toNat) (A250243 (n + 1))

end

end A124331.P6590849287994462986

/-!
# A124332: a(n) = ((n mod d(n)) +1)th divisor of n, where d(n) is number of positive divisors of n.

The programs for A124332, there is no canonical definition to state claims against.
-/

/-! ## A124332.P5841701699036994945

`A027750(A054519(n)+A054008(n+1))`
-/

namespace A124332.P5841701699036994945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A054519 n + A054008 (n + 1)).toNat

end

end A124332.P5841701699036994945

/-! ## A124332.P18035344427225078690

`A027750(A054519(n)+n%A000005(n+1)+1)`
-/

namespace A124332.P18035344427225078690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A054519 n + Int.tmod (n : ℤ) (A000005 (n + 1)) + 1).toNat

end

end A124332.P18035344427225078690

/-! ## A124332.P3207240574212113397

`A027750(A006218(n)+(n+1)%A000005(n+1)+1)`
-/

namespace A124332.P3207240574212113397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A006218 n + Int.tmod (n + 1 : ℤ) (A000005 (n + 1)) + 1).toNat

end

end A124332.P3207240574212113397

/-! ## A124332.P7405965221057965535

`A083346(∏{p}[n+1, #]^∏{e}[n+1, #+1])`
-/

namespace A124332.P7405965221057965535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)))

end

end A124332.P7405965221057965535

/-! ## A124332.P9345260279343871814

`A083346(A007947(n+1)^∏{e}[n+1, #+1])`
-/

namespace A124332.P9345260279343871814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (A007947 (n + 1) ^ (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat

end

end A124332.P9345260279343871814

/-!
# A124333: a(n) = ((n mod phi(n)) +1)th positive integer which is coprime to n, where phi(n) is number of positive integers which are <= n and are coprime to n.

The programs for A124333, the canonical program `A124333.P12394758588652907739` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124333 has offset 1).

The definition of A124333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 573 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124333.P12394758588652907739

`A020652(A002088(n)+n%A000010(n+1)+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A124333

/-- `A020652(A002088(n)+n%A000010(n+1)+1)` -/
def P12394758588652907739.Spec : Prop :=
  ∀ n, P12394758588652907739.a n = A124333 (n + 1)

theorem P12394758588652907739.correct : P12394758588652907739.Spec := by
  intro n
  simp only [A124333, Nat.add_sub_cancel]

end A124333

/-! ## A124333.P7189141114713580201

`A038566(A002088(n)+(n+1)%A000010(n+1)+1)`
-/

namespace A124333.P7189141114713580201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (A002088 n + Int.tmod (n + 1 : ℤ) (A000010 (n + 1)) + 1).toNat

end

end A124333.P7189141114713580201

namespace A124333

/-- `A038566(A002088(n)+(n+1)%A000010(n+1)+1)` -/
def P7189141114713580201.Spec : Prop :=
  ∀ n, P7189141114713580201.a n = A124333 (n + 1)

end A124333

/-! ## A124333.P2167924982683651749

`A028310(A126571(∑[n+2])%(n+1))`
-/

namespace A124333.P2167924982683651749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A126571 (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)).toNat

end

end A124333.P2167924982683651749

namespace A124333

/-- `A028310(A126571(∑[n+2])%(n+1))` -/
def P2167924982683651749.Spec : Prop :=
  ∀ n, P2167924982683651749.a n = A124333 (n + 1)

end A124333

/-! ## A124333.P7162852669736650569

`(A126357(n+1)+n)%(n+1)+1`
-/

namespace A124333.P7162852669736650569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126357 (n + 1) + (n : ℤ)) (n + 1 : ℤ) + 1

end

end A124333.P7162852669736650569

namespace A124333

/-- `(A126357(n+1)+n)%(n+1)+1` -/
def P7162852669736650569.Spec : Prop :=
  ∀ n, P7162852669736650569.a n = A124333 (n + 1)

end A124333

/-! ## A124333.P9842225815596103339

`A028310(A126357(n+1)%(n+1))`
-/

namespace A124333.P9842225815596103339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A126357 (n + 1)) (n + 1 : ℤ)).toNat

end

end A124333.P9842225815596103339

namespace A124333

/-- `A028310(A126357(n+1)%(n+1))` -/
def P9842225815596103339.Spec : Prop :=
  ∀ n, P9842225815596103339.a n = A124333 (n + 1)

end A124333

/-!
# A124334: Nonpalindromes in base 10 that are palindromes in base 2.

The programs for A124334, the canonical program `A124334.P2528228193664992481` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124334 has offset 1).

The definition of A124334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124334.P2528228193664992481

`∩[A006995(n+1), A029742(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A124334

/-- `∩[A006995(n+1), A029742(n+1)]` -/
def P2528228193664992481.Spec : Prop :=
  ∀ n, (P2528228193664992481.a n : ℤ) = A124334 (n + 1)

theorem P2528228193664992481.correct : P2528228193664992481.Spec := by
  intro n
  simp only [A124334, Nat.add_sub_cancel]

end A124334

/-! ## A124334.P4819693652047228350

`eq[A136522(n), A175919(n)]`
-/

namespace A124334.P4819693652047228350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124334.P4819693652047228350

namespace A124334

/-- `eq[A136522(n), A175919(n)]` -/
def P4819693652047228350.Spec : Prop :=
  ∀ n, (P4819693652047228350.a n : ℤ) = A124334 (n + 1)

end A124334

/-! ## A124334.P16683244759031454209

`eq[cos(A136522(n)), A178225(n)]`
-/

namespace A124334.P16683244759031454209
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A136522 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A124334.P16683244759031454209

namespace A124334

/-- `eq[cos(A136522(n)), A178225(n)]` -/
def P16683244759031454209.Spec : Prop :=
  ∀ n, (P16683244759031454209.a n : ℤ) = A124334 (n + 1)

end A124334

/-! ## A124334.P10180803140201839875

`filter[A029742(n+2), A178225(#)]`
-/

namespace A124334.P10180803140201839875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178225 (f1 j).toNat = 1) n)

end

end A124334.P10180803140201839875

namespace A124334

/-- `filter[A029742(n+2), A178225(#)]` -/
def P10180803140201839875.Spec : Prop :=
  ∀ n, P10180803140201839875.a n = A124334 (n + 1)

end A124334

/-! ## A124334.P14344620870399373096

`lt[A178226(n)+A136522(n), 1]`
-/

namespace A124334.P14344620870399373096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n + A136522 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A124334.P14344620870399373096

namespace A124334

/-- `lt[A178226(n)+A136522(n), 1]` -/
def P14344620870399373096.Spec : Prop :=
  ∀ n, (P14344620870399373096.a n : ℤ) = A124334 (n + 1)

end A124334

/-! ## A124334.P10184547205950225090

`eq[A136522(n)+n, A030101(n)]`
-/

namespace A124334.P10184547205950225090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124334.P10184547205950225090

namespace A124334

/-- `eq[A136522(n)+n, A030101(n)]` -/
def P10184547205950225090.Spec : Prop :=
  ∀ n, (P10184547205950225090.a n : ℤ) = A124334 (n + 1)

end A124334

/-! ## A124334.P6388201795107387334

`lt[n*A175919(n), A338827(n)]`
-/

namespace A124334.P6388201795107387334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A175919 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124334.P6388201795107387334

namespace A124334

/-- `lt[n*A175919(n), A338827(n)]` -/
def P6388201795107387334.Spec : Prop :=
  ∀ n, (P6388201795107387334.a n : ℤ) = A124334 (n + 1)

end A124334

/-! ## A124334.P5213999534844922533

`record[A206914(n+12)%A262038(n+12)]`
-/

namespace A124334.P5213999534844922533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206914 (n + 12)) (A262038 (n + 12))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124334.P5213999534844922533

namespace A124334

/-- `record[A206914(n+12)%A262038(n+12)]` -/
def P5213999534844922533.Spec : Prop :=
  ∀ n, P5213999534844922533.a n = A124334 (n + 1)

end A124334

/-! ## A124334.P8033389089946926428

`eq[A000038(A064834(n)), A055945(n)]`
-/

namespace A124334.P8033389089946926428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A064834 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124334.P8033389089946926428

namespace A124334

/-- `eq[A000038(A064834(n)), A055945(n)]` -/
def P8033389089946926428.Spec : Prop :=
  ∀ n, (P8033389089946926428.a n : ℤ) = A124334 (n + 1)

end A124334

/-! ## A124334.P9115466980109181984

`lt[A136522(n), A136522(n*A178226(n))]`
-/

namespace A124334.P9115466980109181984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 ((n : ℤ) * A178226 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124334.P9115466980109181984

namespace A124334

/-- `lt[A136522(n), A136522(n*A178226(n))]` -/
def P9115466980109181984.Spec : Prop :=
  ∀ n, (P9115466980109181984.a n : ℤ) = A124334 (n + 1)

end A124334

/-! ## A124334.P6650204407172557262

`lt[A175919(n), A338827(n)/A016933(n)]`
-/

namespace A124334.P6650204407172557262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338827 n : ℚ) / (A016933 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A124334.P6650204407172557262

namespace A124334

/-- `lt[A175919(n), A338827(n)/A016933(n)]` -/
def P6650204407172557262.Spec : Prop :=
  ∀ n, (P6650204407172557262.a n : ℤ) = A124334 (n + 1)

end A124334

/-! ## A124334.P2876982688502132657

`lt[A261423(n), A330717(n)]`
-/

namespace A124334.P2876982688502132657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124334.P2876982688502132657

namespace A124334

/-- `lt[A261423(n), A330717(n)]` -/
def P2876982688502132657.Spec : Prop :=
  ∀ n, (P2876982688502132657.a n : ℤ) = A124334 (n + 1)

end A124334

/-! ## A124334.P9148640431118782299

`lt[A175298(n), A262038(A330717(n))]`
-/

namespace A124334.P9148640431118782299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A330717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124334.P9148640431118782299

namespace A124334

/-- `lt[A175298(n), A262038(A330717(n))]` -/
def P9148640431118782299.Spec : Prop :=
  ∀ n, (P9148640431118782299.a n : ℤ) = A124334 (n + 1)

end A124334

/-! ## A124334.P10701903523909971530

`lt[A206913(n), A262038(A330717(n))]`
-/

namespace A124334.P10701903523909971530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206913 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A330717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124334.P10701903523909971530

namespace A124334

/-- `lt[A206913(n), A262038(A330717(n))]` -/
def P10701903523909971530.Spec : Prop :=
  ∀ n, (P10701903523909971530.a n : ℤ) = A124334 (n + 1)

end A124334

/-! ## A124334.P17934244774730078531

`lt[A206914(n), A262038(A330717(n))]`
-/

namespace A124334.P17934244774730078531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206914 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A330717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124334.P17934244774730078531

namespace A124334

/-- `lt[A206914(n), A262038(A330717(n))]` -/
def P17934244774730078531.Spec : Prop :=
  ∀ n, (P17934244774730078531.a n : ℤ) = A124334 (n + 1)

end A124334

/-!
# A124340: Number of solutions to n = x^2 + 2*y^2 + 4*(T(z) + T(w)) + 1 where x and y are integers, z and w are nonnegative integers and T(x) = (x^2+x)/2.

The programs for A124340, the canonical program `A124340.P17128655900639427507` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124340 has offset 1).

The definition of A124340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124340.P8616526104107406410

`A364031(n+1)-A364033(n+1)`
-/

namespace A124340.P8616526104107406410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364031 (n + 1) - A364033 (n + 1)

end

end A124340.P8616526104107406410

namespace A124340

/-- `A364031(n+1)-A364033(n+1)` -/
def P8616526104107406410.Spec : Prop :=
  ∀ n, P8616526104107406410.a n = A124340 (n + 1)

theorem P8616526104107406410.correct : P8616526104107406410.Spec := by
  intro n
  simp only [A124340, Nat.add_sub_cancel, A124340.P8616526104107406410.a, A124340.P17128655900639427507.f1, A124340.P17128655900639427507.a, A087780, A087780.P10506925651447133355.f1, A087780.P10506925651447133355.a, A206369, A206369.P2534442500048428716.a, A364031, A364031.P18063798174580174727.f1, A364031.P18063798174580174727.a, A364033, A364033.P4440560833208320547.a, A014017, A014017.P16051978919752576119.f1, A014017.P16051978919752576119.a, A035185, A035185.P8037574016802671635.a, A061020, A061020.P8856517168126816648.f1, A061020.P8856517168126816648.a, A271102, A271102.P3010353493992336101.f1, A271102.P3010353493992336101.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A298473, A298473.P4129261461603736948.a, A363037, A363037.P17593486041959232839.a, A364032, A364032.P15572008137104778974.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A188169, A188169.P9022130587462569637.f1, A188169.P9022130587462569637.a, A188170, A188170.P7143844993511574485.f1, A188170.P7143844993511574485.a, A188171, A188171.P17289095504074848112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A124340

/-! ## A124340.P17462552134897787148

`abs(A006519(n+1)*A117000(n+1))`
-/

namespace A124340.P17462552134897787148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006519 (n + 1) * A117000 (n + 1)|

end

end A124340.P17462552134897787148

namespace A124340

/-- `abs(A006519(n+1)*A117000(n+1))` -/
def P17462552134897787148.Spec : Prop :=
  ∀ n, P17462552134897787148.a n = A124340 (n + 1)

end A124340

/-! ## A124340.P16353716314141224546

`abs(A113418(n+1)*A118827(n+1))`
-/

namespace A124340.P16353716314141224546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113418 (n + 1) * A118827 (n + 1)|

end

end A124340.P16353716314141224546

namespace A124340

/-- `abs(A113418(n+1)*A118827(n+1))` -/
def P16353716314141224546.Spec : Prop :=
  ∀ n, P16353716314141224546.a n = A124340 (n + 1)

end A124340

/-! ## A124340.P16093788479549076315

`∑{d}[n+1, A000010(#)*A035185((n+1)/#)]`
-/

namespace A124340.P16093788479549076315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A035185 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124340.P16093788479549076315

namespace A124340

/-- `∑{d}[n+1, A000010(#)*A035185((n+1)/#)]` -/
def P16093788479549076315.Spec : Prop :=
  ∀ n, P16093788479549076315.a n = A124340 (n + 1)

end A124340

/-! ## A124340.P17128655900639427507

`∑{d}[n+1, A087780(#)*A206369((n+1)/#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A124340

/-- `∑{d}[n+1, A087780(#)*A206369((n+1)/#)]` -/
def P17128655900639427507.Spec : Prop :=
  ∀ n, P17128655900639427507.a n = A124340 (n + 1)

theorem P17128655900639427507.correct : P17128655900639427507.Spec := by
  intro n
  simp only [A124340, Nat.add_sub_cancel]

end A124340

/-! ## A124340.P10790263817823646278

`∑{d}[n+1, A115660(#)*A227128((n+1)/#)]`
-/

namespace A124340.P10790263817823646278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115660 d * A227128 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124340.P10790263817823646278

namespace A124340

/-- `∑{d}[n+1, A115660(#)*A227128((n+1)/#)]` -/
def P10790263817823646278.Spec : Prop :=
  ∀ n, P10790263817823646278.a n = A124340 (n + 1)

end A124340

/-! ## A124340.P7563723643940352394

`abs(gcd(n+1, A004755(n+1))*A117000(n+1))`
-/

namespace A124340.P7563723643940352394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Int.gcd (n + 1 : ℤ) (A004755 (n + 1)) : ℤ) * A117000 (n + 1)|

end

end A124340.P7563723643940352394

namespace A124340

/-- `abs(gcd(n+1, A004755(n+1))*A117000(n+1))` -/
def P7563723643940352394.Spec : Prop :=
  ∀ n, P7563723643940352394.a n = A124340 (n + 1)

end A124340

/-! ## A124340.P3750562524842113272

`∑{d}[n+1, #*A091337((n+1)/#)]`
-/

namespace A124340.P3750562524842113272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A091337 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124340.P3750562524842113272

namespace A124340

/-- `∑{d}[n+1, #*A091337((n+1)/#)]` -/
def P3750562524842113272.Spec : Prop :=
  ∀ n, P3750562524842113272.a n = A124340 (n + 1)

end A124340

/-! ## A124340.P14696527591236238498

`abs(A008619(A038712(n+1))*A117000(n+1))`
-/

namespace A124340.P14696527591236238498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008619 (A038712 (n + 1)).toNat * A117000 (n + 1)|

end

end A124340.P14696527591236238498

namespace A124340

/-- `abs(A008619(A038712(n+1))*A117000(n+1))` -/
def P14696527591236238498.Spec : Prop :=
  ∀ n, P14696527591236238498.a n = A124340 (n + 1)

end A124340

/-! ## A124340.P7727496077011462730

`A000196(A117000(n+1)²)*A006519(n+1)`
-/

namespace A124340.P7727496077011462730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A117000 (n + 1) ^ 2).toNat * A006519 (n + 1)

end

end A124340.P7727496077011462730

namespace A124340

/-- `A000196(A117000(n+1)²)*A006519(n+1)` -/
def P7727496077011462730.Spec : Prop :=
  ∀ n, P7727496077011462730.a n = A124340 (n + 1)

end A124340

/-!
# A124341: Riordan array (1/(1+x), x(1+2x)/(1+x)^2).

The programs for A124341, the canonical program `A124341.P12019845534071505364` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124341 has offset 0).

The definition of A124341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124341.P12019845534071505364

`T(n-1,k-1)-2*T(n-1,k)+2*T(n-2,k-1)-T(n-2,k)` with `a(0)=1, a(1)=-1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124341

/-- `T(n-1,k-1)-2*T(n-1,k)+2*T(n-2,k-1)-T(n-2,k)` -/
def P12019845534071505364.Spec : Prop :=
  ∀ n, P12019845534071505364.a n = A124341 n

theorem P12019845534071505364.correct : P12019845534071505364.Spec := by
  intro n
  simp only [A124341]

end A124341

/-! ## A124341.P18360183690725711458

`A097807(n)*A146314(n)`
-/

namespace A124341.P18360183690725711458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A146314 n

end

end A124341.P18360183690725711458

namespace A124341

/-- `A097807(n)*A146314(n)` -/
def P18360183690725711458.Spec : Prop :=
  ∀ n, P18360183690725711458.a n = A124341 n

end A124341

/-! ## A124341.P12086100628182019004

`A033999(A051933(n))*A146314(n)`
-/

namespace A124341.P12086100628182019004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051933 n).toNat * A146314 n

end

end A124341.P12086100628182019004

namespace A124341

/-- `A033999(A051933(n))*A146314(n)` -/
def P12086100628182019004.Spec : Prop :=
  ∀ n, P12086100628182019004.a n = A124341 n

end A124341

/-! ## A124341.P6524052449975779391

`A033999(A003056(n))*A202480(n)`
-/

namespace A124341.P6524052449975779391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A003056 n).toNat * A202480 n

end

end A124341.P6524052449975779391

namespace A124341

/-- `A033999(A003056(n))*A202480(n)` -/
def P6524052449975779391.Spec : Prop :=
  ∀ n, P6524052449975779391.a n = A124341 n

end A124341

/-! ## A124341.P12938757071709788065

`A009531(A099375(n))*A146314(n)`
-/

namespace A124341.P12938757071709788065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A146314 n

end

end A124341.P12938757071709788065

namespace A124341

/-- `A009531(A099375(n))*A146314(n)` -/
def P12938757071709788065.Spec : Prop :=
  ∀ n, P12938757071709788065.a n = A124341 n

end A124341

/-! ## A124341.P5492831469567093121

`A062157(A004736(n+1))*A146314(n)`
-/

namespace A124341.P5492831469567093121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A146314 n

end

end A124341.P5492831469567093121

namespace A124341

/-- `A062157(A004736(n+1))*A146314(n)` -/
def P5492831469567093121.Spec : Prop :=
  ∀ n, P5492831469567093121.a n = A124341 n

end A124341

/-! ## A124341.P12750039001590424055

`A146314(n)/A097807(n)^A033999(n)`
-/

namespace A124341.P12750039001590424055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146314 n : ℚ) / (A097807 n : ℚ) ^ (A033999 n : ℤ)

end

end A124341.P12750039001590424055

namespace A124341

/-- `A146314(n)/A097807(n)^A033999(n)` -/
def P12750039001590424055.Spec : Prop :=
  ∀ n, P12750039001590424055.a n = (A124341 n : ℚ)

end A124341

/-! ## A124341.P3377230533513653896

`A097807(n)*A097807(A112367(n))*A202480(n)`
-/

namespace A124341.P3377230533513653896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A097807 (A112367 n).toNat * A202480 n

end

end A124341.P3377230533513653896

namespace A124341

/-- `A097807(n)*A097807(A112367(n))*A202480(n)` -/
def P3377230533513653896.Spec : Prop :=
  ∀ n, P3377230533513653896.a n = A124341 n

end A124341

/-! ## A124341.P9150343708832567157

`A105794(A057944(n))*A202480(n)`
-/

namespace A124341.P9150343708832567157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105794 (A057944 n).toNat * A202480 n

end

end A124341.P9150343708832567157

namespace A124341

/-- `A105794(A057944(n))*A202480(n)` -/
def P9150343708832567157.Spec : Prop :=
  ∀ n, P9150343708832567157.a n = A124341 n

end A124341

/-!
# A124342: Expansion of (1+x)/(1+2x-2x^3).

The programs for A124342, the canonical program `A124342.P3747080956734070639` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124342 has offset 0).

The definition of A124342 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1+2x-2x^3))` (program `A124342.P3747080956734070639`, by `A124342.P3747080956734070639.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A124342.P3747080956734070639

`ogf((1+x)/(1+2x-2x^3))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124342

/-- `ogf((1+x)/(1+2x-2x^3))` -/
def P3747080956734070639.Spec : Prop :=
  ∀ n, P3747080956734070639.a n = A124342 n

theorem P3747080956734070639.correct : P3747080956734070639.Spec := by
  intro n
  simp only [A124342]

end A124342

/-! ## A124342.P5683137222073773849

`(-1)^(n+1)*A073358(n+1)`
-/

namespace A124342.P5683137222073773849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A073358 (n + 1)

end

end A124342.P5683137222073773849

namespace A124342

/-- `(-1)^(n+1)*A073358(n+1)` -/
def P5683137222073773849.Spec : Prop :=
  ∀ n, P5683137222073773849.a n = A124342 n

end A124342

/-! ## A124342.P611947348120233448

`2*(a(n-3)-a(n-1))` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A124342.P611947348120233448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n a =>
  2 * (a (n - 3) - a (n - 1))

end

end A124342.P611947348120233448

namespace A124342

/-- `2*(a(n-3)-a(n-1))` -/
def P611947348120233448.Spec : Prop :=
  ∀ n, P611947348120233448.a n = A124342 n

end A124342

/-! ## A124342.P7733693680690813781

`a(n-3)-(a(n-1)+a(n-1)-a(n-3))` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A124342.P7733693680690813781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n a =>
  a (n - 3) - (a (n - 1) + (a (n - 1) - a (n - 3)))

end

end A124342.P7733693680690813781

namespace A124342

/-- `a(n-3)-(a(n-1)+a(n-1)-a(n-3))` -/
def P7733693680690813781.Spec : Prop :=
  ∀ n, P7733693680690813781.a n = A124342 n

end A124342

/-! ## A124342.P758568483502202550

`a(n-3)-(a(n-1)-a(n-3))-a(n-1)` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A124342.P758568483502202550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n a =>
  a (n - 3) - (a (n - 1) - a (n - 3)) - a (n - 1)

end

end A124342.P758568483502202550

namespace A124342

/-- `a(n-3)-(a(n-1)-a(n-3))-a(n-1)` -/
def P758568483502202550.Spec : Prop :=
  ∀ n, P758568483502202550.a n = A124342 n

end A124342

/-! ## A124342.P7152687275253070189

`(1-A077924(n+1))/2`
-/

namespace A124342.P7152687275253070189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A077924 (n + 1) : ℚ) / 2

end

end A124342.P7152687275253070189

namespace A124342

/-- `(1-A077924(n+1))/2` -/
def P7152687275253070189.Spec : Prop :=
  ∀ n, P7152687275253070189.a n = (A124342 n : ℚ)

end A124342

/-! ## A124342.P3885476213294161686

`∑[-(A077988(n+1)/2)]`
-/

namespace A124342.P3885476213294161686
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A077988 (n + 1) : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124342.P3885476213294161686

namespace A124342

/-- `∑[-(A077988(n+1)/2)]` -/
def P3885476213294161686.Spec : Prop :=
  ∀ n, P3885476213294161686.a n = (A124342 n : ℚ)

end A124342

/-! ## A124342.P16777174888305279900

`∑[A077940(n+1)/(2*A033999(n))]`
-/

namespace A124342.P16777174888305279900
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077940 (n + 1) : ℚ) / (2 * A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124342.P16777174888305279900

namespace A124342

/-- `∑[A077940(n+1)/(2*A033999(n))]` -/
def P16777174888305279900.Spec : Prop :=
  ∀ n, P16777174888305279900.a n = (A124342 n : ℚ)

end A124342

/-! ## A124342.P9461380598328335787

`A073358(n+1)*A228826(2*n+1)`
-/

namespace A124342.P9461380598328335787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073358 (n + 1) * A228826 (2 * n + 1)

end

end A124342.P9461380598328335787

namespace A124342

/-- `A073358(n+1)*A228826(2*n+1)` -/
def P9461380598328335787.Spec : Prop :=
  ∀ n, P9461380598328335787.a n = A124342 n

end A124342

/-! ## A124342.P2495868683962723620

`A073358(n+1)/A228826(A017281(n))`
-/

namespace A124342.P2495868683962723620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073358 (n + 1) : ℚ) / (A228826 (A017281 n).toNat : ℚ)

end

end A124342.P2495868683962723620

namespace A124342

/-- `A073358(n+1)/A228826(A017281(n))` -/
def P2495868683962723620.Spec : Prop :=
  ∀ n, P2495868683962723620.a n = (A124342 n : ℚ)

end A124342

/-! ## A124342.P2776632499484729927

`2*A077988(n)-A078060(n)`
-/

namespace A124342.P2776632499484729927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077988 n - A078060 n

end

end A124342.P2776632499484729927

namespace A124342

/-- `2*A077988(n)-A078060(n)` -/
def P2776632499484729927.Spec : Prop :=
  ∀ n, P2776632499484729927.a n = A124342 n

end A124342

/-!
# A124343: Number of rooted trees on n nodes with thinning limbs.

The programs for A124343, there is no canonical definition to state claims against.
-/

/-! ## A124343.P15622369236600799863

`A106432(A279751(n))`
-/

namespace A124343.P15622369236600799863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A279751 n).toNat

end

end A124343.P15622369236600799863

/-! ## A124343.P17249689318021890807

`A106432(A280148(n))`
-/

namespace A124343.P17249689318021890807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A280148 n).toNat

end

end A124343.P17249689318021890807

/-! ## A124343.P9755332419068027096

`A106432(A000975(n+1))`
-/

namespace A124343.P9755332419068027096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A000975 (n + 1)).toNat

end

end A124343.P9755332419068027096

/-! ## A124343.P15625959517592315672

`A106432(A084639(n)+1)`
-/

namespace A124343.P15625959517592315672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A084639 n + 1).toNat

end

end A124343.P15625959517592315672

/-! ## A124343.P17235417752988453770

`A106432(∑[∑[A078008(n)]])`
-/

namespace A124343.P17235417752988453770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124343.P17235417752988453770

/-!
# A124344: Number of ordered rooted trees on n nodes with thinning limbs.

The programs for A124344, there is no canonical definition to state claims against.
-/

/-! ## A124344.P9286345589246145788

`A124501(n)+A004915(A309861(n))`
-/

namespace A124344.P9286345589246145788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124501 n + A004915 (A309861 n).toNat

end

end A124344.P9286345589246145788

/-! ## A124344.P10464511780052634233

`A247063(A148073(n)%A232859(n+1))`
-/

namespace A124344.P10464511780052634233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247063 (Int.tmod (A148073 n) (A232859 (n + 1))).toNat

end

end A124344.P10464511780052634233

/-! ## A124344.P12212422508993759787

`A049125(n+1)-Δ[A112880(n+1)]%A122881(n+1)`
-/

namespace A124344.P12212422508993759787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049125 (n + 1) - Int.tmod (f1 (n + 1) - f1 n) (A122881 (n + 1))

end

end A124344.P12212422508993759787

/-! ## A124344.P7170939205329122497

`A317137(A317132(n))`
-/

namespace A124344.P7170939205329122497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317137 (A317132 n).toNat

end

end A124344.P7170939205329122497

/-!
# A124345: Number of mobiles (circular rooted trees) on n nodes with thinning limbs.

The programs for A124345, there is no canonical definition to state claims against.
-/

/-! ## A124345.P7094688126476454026

`A342339(A059966(n+1))+A035468(n+1)`
-/

namespace A124345.P7094688126476454026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342339 (A059966 (n + 1)).toNat + A035468 (n + 1)

end

end A124345.P7094688126476454026

/-!
# A124346: Number of rooted identity trees on n nodes with thinning limbs.

The programs for A124346, there is no canonical definition to state claims against.
-/

/-! ## A124346.P13106274463471838846

`A257212(A007059(n)²)`
-/

namespace A124346.P13106274463471838846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257212 (A007059 n ^ 2).toNat

end

end A124346.P13106274463471838846

/-! ## A124346.P9111129416795202344

`A071626(A056971(n))+1`
-/

namespace A124346.P9111129416795202344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (A056971 n).toNat + 1

end

end A124346.P9111129416795202344

/-! ## A124346.P6660629611269339491

`A219227(A361223(n+1))`
-/

namespace A124346.P6660629611269339491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219227 (A361223 (n + 1)).toNat

end

end A124346.P6660629611269339491

/-! ## A124346.P8005003863274567065

`A306202(A331680(n+1)+n%2)`
-/

namespace A124346.P8005003863274567065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306202 (A331680 (n + 1) + ((n % 2 : ℕ) : ℤ)).toNat

end

end A124346.P8005003863274567065

/-! ## A124346.P8877282740280618297

`A128282(A054189(n))`
-/

namespace A124346.P8877282740280618297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128282 (A054189 n).toNat

end

end A124346.P8877282740280618297

/-!
# A124347: Number of labeled rooted trees on n nodes with thinning limbs.

The programs for A124347, there is no canonical definition to state claims against.
-/

/-! ## A124347.P3242436290921834896

`xor(A018843(n²+3), A121678(n))`
-/

namespace A124347.P3242436290921834896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A018843 (n ^ 2 + 3)) (A121678 n)

end

end A124347.P3242436290921834896

/-!
# A124348: Number of increasing rooted trees on n nodes with thinning limbs.

The programs for A124348, there is no canonical definition to state claims against.
-/

/-! ## A124348.P16573001813696485589

`Δ[A050500(n!+n*a(n-1)-(n-1)!)]` with `a(0)=0, a(1)=1`
-/

namespace A124348.P16573001813696485589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A050500 ((Nat.factorial n : ℤ) + ((n : ℤ) * f1 (n - 1) - (Nat.factorial ((n : ℤ) - 1).toNat : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124348.P16573001813696485589

/-! ## A124348.P4784304730870240228

`A137588(A117158(n+1)+1)`
-/

namespace A124348.P4784304730870240228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137588 (A117158 (n + 1) + 1).toNat

end

end A124348.P4784304730870240228

/-! ## A124348.P3399655044031538486

`A217476(A020113(n))+A020119(n)`
-/

namespace A124348.P3399655044031538486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217476 (A020113 n).toNat + A020119 n

end

end A124348.P3399655044031538486

/-!
# A124349: Numbers of directed Hamiltonian cycles on the n-prism graph.

The programs for A124349, the canonical program `A124349.P2005359150558300039` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124349 has offset 3).

The definition of A124349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124349.P13896837962146067512

`2*(n+3)+(1-(n+3)%2)*4`
-/

namespace A124349.P13896837962146067512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 3) : ℤ) + (1 - (((n + 3) % 2 : ℕ) : ℤ)) * 4

end

end A124349.P13896837962146067512

namespace A124349

/-- `2*(n+3)+(1-(n+3)%2)*4` -/
def P13896837962146067512.Spec : Prop :=
  ∀ n, P13896837962146067512.a n = A124349 (n + 3)

end A124349

/-! ## A124349.P2005359150558300039

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=6, a(1)=12, a(2)=10`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124349

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P2005359150558300039.Spec : Prop :=
  ∀ n, P2005359150558300039.a n = A124349 (n + 3)

theorem P2005359150558300039.correct : P2005359150558300039.Spec := by
  intro n
  simp only [A124349, Nat.add_sub_cancel]

end A124349

/-! ## A124349.P13583535974715007668

`2*A014681(n+4)`
-/

namespace A124349.P13583535974715007668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014681 (n + 4)

end

end A124349.P13583535974715007668

namespace A124349

/-- `2*A014681(n+4)` -/
def P13583535974715007668.Spec : Prop :=
  ∀ n, P13583535974715007668.a n = A124349 (n + 3)

end A124349

/-! ## A124349.P11724703467207040352

`Δ[xor(1, n²)]+7`
-/

namespace A124349.P11724703467207040352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 7

end

end A124349.P11724703467207040352

namespace A124349

/-- `Δ[xor(1, n²)]+7` -/
def P11724703467207040352.Spec : Prop :=
  ∀ n, P11724703467207040352.a n = A124349 (n + 3)

end A124349

/-! ## A124349.P16998479160118778593

`a(n-2)+4` with `a(0)=6, a(1)=12`
-/

namespace A124349.P16998479160118778593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 12] fun n a =>
  a (n - 2) + 4

end

end A124349.P16998479160118778593

namespace A124349

/-- `a(n-2)+4` -/
def P16998479160118778593.Spec : Prop :=
  ∀ n, (P16998479160118778593.a n : ℤ) = A124349 (n + 3)

end A124349

/-! ## A124349.P9285364576568509191

`2*(4-xor(1, -n))`
-/

namespace A124349.P9285364576568509191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (4 - Int.xor 1 (-(n : ℤ)))

end

end A124349.P9285364576568509191

namespace A124349

/-- `2*(4-xor(1, -n))` -/
def P9285364576568509191.Spec : Prop :=
  ∀ n, P9285364576568509191.a n = A124349 (n + 3)

end A124349

/-! ## A124349.P4736613045369430277

`2*abs(xor(n+3, -2))`
-/

namespace A124349.P4736613045369430277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |Int.xor (n + 3 : ℤ) (-2)|

end

end A124349.P4736613045369430277

namespace A124349

/-- `2*abs(xor(n+3, -2))` -/
def P4736613045369430277.Spec : Prop :=
  ∀ n, P4736613045369430277.a n = A124349 (n + 3)

end A124349

/-! ## A124349.P4049658233777671143

`-xor(2*n+7, -3)`
-/

namespace A124349.P4049658233777671143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (2 * n + 7 : ℤ) (-3)

end

end A124349.P4049658233777671143

namespace A124349

/-- `-xor(2*n+7, -3)` -/
def P4049658233777671143.Spec : Prop :=
  ∀ n, P4049658233777671143.a n = A124349 (n + 3)

end A124349

/-! ## A124349.P10412456306301588853

`2*(xor(1, n+1)+3)`
-/

namespace A124349.P10412456306301588853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.xor 1 (n + 1) + 3)

end

end A124349.P10412456306301588853

namespace A124349

/-- `2*(xor(1, n+1)+3)` -/
def P10412456306301588853.Spec : Prop :=
  ∀ n, (P10412456306301588853.a n : ℤ) = A124349 (n + 3)

end A124349

/-! ## A124349.P1704183586271483372

`8-xor(3, 1-2*n)`
-/

namespace A124349.P1704183586271483372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - Int.xor 3 (1 - (2 * n : ℤ))

end

end A124349.P1704183586271483372

namespace A124349

/-- `8-xor(3, 1-2*n)` -/
def P1704183586271483372.Spec : Prop :=
  ∀ n, P1704183586271483372.a n = A124349 (n + 3)

end A124349

/-! ## A124349.P2899224124931172468

`∑[4-a(n-1)]` with `a(0)=6, a(1)=6`
-/

namespace A124349.P2899224124931172468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 6] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124349.P2899224124931172468

namespace A124349

/-- `∑[4-a(n-1)]` -/
def P2899224124931172468.Spec : Prop :=
  ∀ n, P2899224124931172468.a n = A124349 (n + 3)

end A124349

/-! ## A124349.P5877825670449992076

`xor(2, n+2+n)+6`
-/

namespace A124349.P5877825670449992076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n + 2 + n) + 6

end

end A124349.P5877825670449992076

namespace A124349

/-- `xor(2, n+2+n)+6` -/
def P5877825670449992076.Spec : Prop :=
  ∀ n, (P5877825670449992076.a n : ℤ) = A124349 (n + 3)

end A124349

/-! ## A124349.P12097390776728212536

`2*(4-(-1)^n+n)`
-/

namespace A124349.P12097390776728212536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (4 - (-1) ^ n + (n : ℤ))

end

end A124349.P12097390776728212536

namespace A124349

/-- `2*(4-(-1)^n+n)` -/
def P12097390776728212536.Spec : Prop :=
  ∀ n, P12097390776728212536.a n = A124349 (n + 3)

theorem P12097390776728212536.correct : P12097390776728212536.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A124349, Nat.add_sub_cancel, A124349.P12097390776728212536.a, A124349.P2005359150558300039.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A124349, Nat.add_sub_cancel, A124349.P12097390776728212536.a, A124349.P2005359150558300039.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A124349

/-! ## A124349.P17441524042690199527

`∑[∑[ogf((6+6x-8x^2)/(1+x))]]`
-/

namespace A124349.P17441524042690199527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 6, -8] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124349.P17441524042690199527

namespace A124349

/-- `∑[∑[ogf((6+6x-8x^2)/(1+x))]]` -/
def P17441524042690199527.Spec : Prop :=
  ∀ n, P17441524042690199527.a n = A124349 (n + 3)

end A124349

/-! ## A124349.P1975549271826929890

`ogf((6+6x-8x^2)/(1-x-x^2+x^3))`
-/

namespace A124349.P1975549271826929890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 6, -8] [1, -1, -1, 1] n

end

end A124349.P1975549271826929890

namespace A124349

/-- `ogf((6+6x-8x^2)/(1-x-x^2+x^3))` -/
def P1975549271826929890.Spec : Prop :=
  ∀ n, P1975549271826929890.a n = A124349 (n + 3)

end A124349

/-! ## A124349.P17588006835689364892

`Δ[or(2, n*(n+2))]+5`
-/

namespace A124349.P17588006835689364892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 5

end

end A124349.P17588006835689364892

namespace A124349

/-- `Δ[or(2, n*(n+2))]+5` -/
def P17588006835689364892.Spec : Prop :=
  ∀ n, P17588006835689364892.a n = A124349 (n + 3)

end A124349

/-! ## A124349.P9903535698860655877

`1-Δ[or(2, -(n+3)²)]`
-/

namespace A124349.P9903535698860655877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (-((n + 3) ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A124349.P9903535698860655877

namespace A124349

/-- `1-Δ[or(2, -(n+3)²)]` -/
def P9903535698860655877.Spec : Prop :=
  ∀ n, P9903535698860655877.a n = A124349 (n + 3)

end A124349

/-! ## A124349.P9365758741250553480

`or(6, 4*(n+1))-2*n`
-/

namespace A124349.P9365758741250553480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 6 (4 * (n + 1)) : ℤ) - (2 * n : ℤ)

end

end A124349.P9365758741250553480

namespace A124349

/-- `or(6, 4*(n+1))-2*n` -/
def P9365758741250553480.Spec : Prop :=
  ∀ n, P9365758741250553480.a n = A124349 (n + 3)

end A124349

/-! ## A124349.P108546254227960601

`2*(2*and(1, n)+n+2)+2`
-/

namespace A124349.P108546254227960601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * Nat.land 1 n + (n + 2)) + 2

end

end A124349.P108546254227960601

namespace A124349

/-- `2*(2*and(1, n)+n+2)+2` -/
def P108546254227960601.Spec : Prop :=
  ∀ n, (P108546254227960601.a n : ℤ) = A124349 (n + 3)

end A124349

/-! ## A124349.P1494024474360828224

`A010726(n)+2*n`
-/

namespace A124349.P1494024474360828224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010726 n + (2 * n : ℤ)

end

end A124349.P1494024474360828224

namespace A124349

/-- `A010726(n)+2*n` -/
def P1494024474360828224.Spec : Prop :=
  ∀ n, P1494024474360828224.a n = A124349 (n + 3)

end A124349

/-!
# A124350: a(n) = 4*n*(floor(n^2/2)+1). For n >= 3, this is the number of directed Hamiltonian paths on the n-prism graph.

The programs for A124350, the canonical program `A124350.P4302850888467661358` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124350 has offset 0).

The definition of A124350 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*(floor(n²/2)+1)` (program `A124350.P4302850888467661358`, by `A124350.P4302850888467661358.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A124350.P4302850888467661358

`4*n*(floor(n²/2)+1)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124350

/-- `4*n*(floor(n²/2)+1)` -/
def P4302850888467661358.Spec : Prop :=
  ∀ n, P4302850888467661358.a n = A124350 n

theorem P4302850888467661358.correct : P4302850888467661358.Spec := by
  intro n
  simp only [A124350]

end A124350

/-! ## A124350.P6237228873661139502

`2*n*or(3, n²)-2*n`
-/

namespace A124350.P6237228873661139502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n * Nat.lor 3 (n ^ 2) : ℤ) - (2 * n : ℤ)

end

end A124350.P6237228873661139502

namespace A124350

/-- `2*n*or(3, n²)-2*n` -/
def P6237228873661139502.Spec : Prop :=
  ∀ n, P6237228873661139502.a n = A124350 n

end A124350

/-! ## A124350.P14240488221542232479

`lcm(n*A026741(n)+1, 4*n)`
-/

namespace A124350.P14240488221542232479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) * A026741 n + 1) (4 * n : ℤ)

end

end A124350.P14240488221542232479

namespace A124350

/-- `lcm(n*A026741(n)+1, 4*n)` -/
def P14240488221542232479.Spec : Prop :=
  ∀ n, (P14240488221542232479.a n : ℤ) = A124350 n

end A124350

/-! ## A124350.P6408742233431770767

`lcm(A008586(n), A248800(n))`
-/

namespace A124350.P6408742233431770767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008586 n) (A248800 n)

end

end A124350.P6408742233431770767

namespace A124350

/-- `lcm(A008586(n), A248800(n))` -/
def P6408742233431770767.Spec : Prop :=
  ∀ n, (P6408742233431770767.a n : ℤ) = A124350 n

end A124350

/-! ## A124350.P18402130824571591386

`A217873(n)+2*A212686(n)`
-/

namespace A124350.P18402130824571591386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217873 n + 2 * A212686 n

end

end A124350.P18402130824571591386

namespace A124350

/-- `A217873(n)+2*A212686(n)` -/
def P18402130824571591386.Spec : Prop :=
  ∀ n, P18402130824571591386.a n = A124350 n

end A124350

/-! ## A124350.P12375316005259072966

`lcm(A026741(n²)+1, 4*n)`
-/

namespace A124350.P12375316005259072966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026741 (n ^ 2) + 1) (4 * n : ℤ)

end

end A124350.P12375316005259072966

namespace A124350

/-- `lcm(A026741(n²)+1, 4*n)` -/
def P12375316005259072966.Spec : Prop :=
  ∀ n, (P12375316005259072966.a n : ℤ) = A124350 n

end A124350

/-! ## A124350.P15810712697774993401

`2*n*A109613(n²)+2*n`
-/

namespace A124350.P15810712697774993401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A109613 (n ^ 2) + (2 * n : ℤ)

end

end A124350.P15810712697774993401

namespace A124350

/-- `2*n*A109613(n²)+2*n` -/
def P15810712697774993401.Spec : Prop :=
  ∀ n, P15810712697774993401.a n = A124350 n

theorem P15810712697774993401.correct : P15810712697774993401.Spec := by
  intro n
  simp only [A124350, Nat.add_sub_cancel, A124350.P15810712697774993401.a, A124350.P4302850888467661358.a, A109613, A109613.P11033607296544520888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A124350

/-!
# A124351: Order of the automorphism group of the n-prism graph.

The programs for A124351, the canonical program `A124351.P1113847881474105201` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124351 has offset 3).

The definition of A124351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124351.P1113847881474105201

`a(n-1)+4` with `a(0)=12, a(1)=48, a(2)=20`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124351

/-- `a(n-1)+4` -/
def P1113847881474105201.Spec : Prop :=
  ∀ n, (P1113847881474105201.a n : ℤ) = A124351 (n + 3)

theorem P1113847881474105201.correct : P1113847881474105201.Spec := by
  intro n
  simp only [A124351, Nat.add_sub_cancel]

end A124351

/-!
# A124352: Number of directed Hamiltonian paths on the n-antiprism graph.

The programs for A124352, there is no canonical definition to state claims against.
-/

/-! ## A124352.P16825951548027968142

`2*A307933(n+3)`
-/

namespace A124352.P16825951548027968142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307933 (n + 3)

end

end A124352.P16825951548027968142

/-! ## A124352.P2478206676826097802

`A307933(A028310(n+2)+1)+A307933(n+3)`
-/

namespace A124352.P2478206676826097802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307933 (A028310 (n + 2) + 1).toNat + A307933 (n + 3)

end

end A124352.P2478206676826097802

/-! ## A124352.P15928004509444998874

`A307933(n+3)+A307933(n+3)+A000007(A260158(n))`
-/

namespace A124352.P15928004509444998874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307933 (n + 3) + (A307933 (n + 3) + A000007 (A260158 n).toNat)

end

end A124352.P15928004509444998874

/-! ## A124352.P16378405484455254339

`A307933(n+3)+A307933(n+3)/A134451(A095284(n+1))`
-/

namespace A124352.P16378405484455254339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307933 (n + 3) : ℚ) + (A307933 (n + 3) : ℚ) / (A134451 (A095284 (n + 1)).toNat : ℚ)

end

end A124352.P16378405484455254339

/-! ## A124352.P3758428910285882327

`A307933(n+3)+A307933(n+3)%A338154(n+3)`
-/

namespace A124352.P3758428910285882327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307933 (n + 3) + Int.tmod (A307933 (n + 3)) (A338154 (n + 3))

end

end A124352.P3758428910285882327

/-!
# A124353: Number of (directed) Hamiltonian circuits on the n-antiprism graph.

The programs for A124353, the canonical program `A124353.P4457647072360882541` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124353 has offset 1).

The definition of A124353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124353.P4457647072360882541

`2*a(n-1)+a(n-2)-a(n-3)-a(n-4)-12` with `a(0)=6, a(1)=18, a(2)=32, a(3)=58`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124353

/-- `2*a(n-1)+a(n-2)-a(n-3)-a(n-4)-12` -/
def P4457647072360882541.Spec : Prop :=
  ∀ n, P4457647072360882541.a n = A124353 (n + 1)

theorem P4457647072360882541.correct : P4457647072360882541.Spec := by
  intro n
  simp only [A124353, Nat.add_sub_cancel]

end A124353

/-! ## A124353.P10447902175465188595

`2*A306447(n+1)`
-/

namespace A124353.P10447902175465188595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A306447 (n + 1)

end

end A124353.P10447902175465188595

namespace A124353

/-- `2*A306447(n+1)` -/
def P10447902175465188595.Spec : Prop :=
  ∀ n, P10447902175465188595.a n = A124353 (n + 1)

end A124353

/-! ## A124353.P8596926125365031356

`2*A226509(2*(n+1))`
-/

namespace A124353.P8596926125365031356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226509 (2 * (n + 1))

end

end A124353.P8596926125365031356

namespace A124353

/-- `2*A226509(2*(n+1))` -/
def P8596926125365031356.Spec : Prop :=
  ∀ n, P8596926125365031356.a n = A124353 (n + 1)

end A124353

/-! ## A124353.P8484091254152895852

`2*(A286910(n+1)+2*(n+1))`
-/

namespace A124353.P8484091254152895852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A286910 (n + 1) + (2 * (n + 1) : ℤ))

end

end A124353.P8484091254152895852

namespace A124353

/-- `2*(A286910(n+1)+2*(n+1))` -/
def P8484091254152895852.Spec : Prop :=
  ∀ n, P8484091254152895852.a n = A124353 (n + 1)

end A124353

/-! ## A124353.P5500207890220074353

`2*(A001634(2*n+1)+2*n+1)`
-/

namespace A124353.P5500207890220074353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001634 (2 * n + 1) + (2 * n + 1 : ℤ))

end

end A124353.P5500207890220074353

namespace A124353

/-- `2*(A001634(2*n+1)+2*n+1)` -/
def P5500207890220074353.Spec : Prop :=
  ∀ n, P5500207890220074353.a n = A124353 (n + 1)

end A124353

/-! ## A124353.P260747606429452843

`4*(n+1)+2*A001609(2*(n+1))`
-/

namespace A124353.P260747606429452843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) + 2 * A001609 (2 * (n + 1))

end

end A124353.P260747606429452843

namespace A124353

/-- `4*(n+1)+2*A001609(2*(n+1))` -/
def P260747606429452843.Spec : Prop :=
  ∀ n, P260747606429452843.a n = A124353 (n + 1)

end A124353

/-! ## A124353.P9720053019453049811

`2*(A005843(n+1)+A001609(2*(n+1)))`
-/

namespace A124353.P9720053019453049811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005843 (n + 1) + A001609 (2 * (n + 1)))

end

end A124353.P9720053019453049811

namespace A124353

/-- `2*(A005843(n+1)+A001609(2*(n+1)))` -/
def P9720053019453049811.Spec : Prop :=
  ∀ n, P9720053019453049811.a n = A124353 (n + 1)

end A124353

/-! ## A124353.P13940983248429015870

`2*(A278105(n+3)+A137726(2*(n+1)))`
-/

namespace A124353.P13940983248429015870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A278105 (n + 3) + A137726 (2 * (n + 1)))

end

end A124353.P13940983248429015870

namespace A124353

/-- `2*(A278105(n+3)+A137726(2*(n+1)))` -/
def P13940983248429015870.Spec : Prop :=
  ∀ n, P13940983248429015870.a n = A124353 (n + 1)

end A124353

/-! ## A124353.P16016673575332068835

`2*(A137726(2*(n+1))+A036987(2*n))`
-/

namespace A124353.P16016673575332068835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A137726 (2 * (n + 1)) + A036987 (2 * n))

end

end A124353.P16016673575332068835

namespace A124353

/-- `2*(A137726(2*(n+1))+A036987(2*n))` -/
def P16016673575332068835.Spec : Prop :=
  ∀ n, P16016673575332068835.a n = A124353 (n + 1)

end A124353

/-! ## A124353.P10038909791613168913

`2*or(A093709(n+1), A137726(2*(n+1)))`
-/

namespace A124353.P10038909791613168913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor (A093709 (n + 1)) (A137726 (2 * (n + 1)))

end

end A124353.P10038909791613168913

namespace A124353

/-- `2*or(A093709(n+1), A137726(2*(n+1)))` -/
def P10038909791613168913.Spec : Prop :=
  ∀ n, P10038909791613168913.a n = A124353 (n + 1)

end A124353

/-! ## A124353.P12138358796410280226

`2*(A137726(2*(n+1))+A010051(2*(n+1)))`
-/

namespace A124353.P12138358796410280226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A137726 (2 * (n + 1)) + A010051 (2 * (n + 1)))

end

end A124353.P12138358796410280226

namespace A124353

/-- `2*(A137726(2*(n+1))+A010051(2*(n+1)))` -/
def P12138358796410280226.Spec : Prop :=
  ∀ n, P12138358796410280226.a n = A124353 (n + 1)

end A124353

/-! ## A124353.P2628939317550650275

`(4*(n+1)-A103517(2*n))*A137726(2*(n+1))`
-/

namespace A124353.P2628939317550650275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * (n + 1) : ℤ) - A103517 (2 * n)) * A137726 (2 * (n + 1))

end

end A124353.P2628939317550650275

namespace A124353

/-- `(4*(n+1)-A103517(2*n))*A137726(2*(n+1))` -/
def P2628939317550650275.Spec : Prop :=
  ∀ n, P2628939317550650275.a n = A124353 (n + 1)

end A124353

/-! ## A124353.P15431873128205017440

`A306447(n+1)+A306447(n+1)%A306447(n+2)`
-/

namespace A124353.P15431873128205017440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306447 (n + 1) + Int.tmod (A306447 (n + 1)) (A306447 (n + 2))

end

end A124353.P15431873128205017440

namespace A124353

/-- `A306447(n+1)+A306447(n+1)%A306447(n+2)` -/
def P15431873128205017440.Spec : Prop :=
  ∀ n, P15431873128205017440.a n = A124353 (n + 1)

end A124353

/-!
# A124354: Orders of the automorphisms groups of the n-antiprism graph.

The programs for A124354, the canonical program `A124354.P10930678397136165360` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124354 has offset 3).

The definition of A124354 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124354.P10930678397136165360

`2*a(n-1)-a(n-2)` with `a(0)=48, a(1)=16, a(2)=20`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124354

/-- `2*a(n-1)-a(n-2)` -/
def P10930678397136165360.Spec : Prop :=
  ∀ n, P10930678397136165360.a n = A124354 (n + 3)

theorem P10930678397136165360.correct : P10930678397136165360.Spec := by
  intro n
  simp only [A124354, Nat.add_sub_cancel]

end A124354

/-!
# A124355: Number of (directed) Hamiltonian cycles on the complete graph K_n.

The programs for A124355, there is no canonical definition to state claims against.
-/

/-! ## A124355.P181962070884072636

`and(n!, -2)`
-/

namespace A124355.P181962070884072636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial n : ℤ) (-2)

end

end A124355.P181962070884072636

/-! ## A124355.P1320585799830175295

`or(1, n!)-1`
-/

namespace A124355.P1320585799830175295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (Nat.factorial n) : ℤ) - 1

end

end A124355.P1320585799830175295

/-! ## A124355.P8616628060385551584

`xor(1, or(1, n!))`
-/

namespace A124355.P8616628060385551584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 (Nat.factorial n))

end

end A124355.P8616628060385551584

/-! ## A124355.P5025616036565698640

`lcm(n!, C(n, 2))`
-/

namespace A124355.P5025616036565698640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.factorial n) (Nat.choose n 2)

end

end A124355.P5025616036565698640

/-! ## A124355.P12290845721206300953

`n!%(n^n)`
-/

namespace A124355.P12290845721206300953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n % n ^ n

end

end A124355.P12290845721206300953

/-!
# A124356: Number of (directed) Hamiltonian cycles on the Moebius ladder graph M_n (for n >= 4).

The programs for A124356, the canonical program `A124356.P4259093803652856343` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124356 has offset 1).

The definition of A124356 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124356.P4259093803652856343

`2*(n+2+(-1)^(n+1))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124356

/-- `2*(n+2+(-1)^(n+1))` -/
def P4259093803652856343.Spec : Prop :=
  ∀ n, P4259093803652856343.a n = A124356 (n + 1)

theorem P4259093803652856343.correct : P4259093803652856343.Spec := by
  intro n
  simp only [A124356, Nat.add_sub_cancel]

end A124356

/-! ## A124356.P13261320790156762121

`Δ[xor(1, n²)]+3`
-/

namespace A124356.P13261320790156762121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 3

end

end A124356.P13261320790156762121

namespace A124356

/-- `Δ[xor(1, n²)]+3` -/
def P13261320790156762121.Spec : Prop :=
  ∀ n, P13261320790156762121.a n = A124356 (n + 1)

end A124356

/-! ## A124356.P3074305645983682597

`a(n-2)+4` with `a(0)=2, a(1)=8`
-/

namespace A124356.P3074305645983682597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n a =>
  a (n - 2) + 4

end

end A124356.P3074305645983682597

namespace A124356

/-- `a(n-2)+4` -/
def P3074305645983682597.Spec : Prop :=
  ∀ n, (P3074305645983682597.a n : ℤ) = A124356 (n + 1)

theorem P3074305645983682597.correct : P3074305645983682597.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A124356, Nat.add_sub_cancel, A124356.P3074305645983682597.a, A124356.P4259093803652856343.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A124356, Nat.add_sub_cancel, A124356.P3074305645983682597.a, A124356.P4259093803652856343.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A124356

/-! ## A124356.P8885350942126584964

`3-Δ[-xor(1, n²)]`
-/

namespace A124356.P8885350942126584964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.xor 1 (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f1 (n + 1) - f1 n)

end

end A124356.P8885350942126584964

namespace A124356

/-- `3-Δ[-xor(1, n²)]` -/
def P8885350942126584964.Spec : Prop :=
  ∀ n, P8885350942126584964.a n = A124356 (n + 1)

end A124356

/-! ## A124356.P10641767392100755939

`4-xor(3, 1-2*n)`
-/

namespace A124356.P10641767392100755939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - Int.xor 3 (1 - (2 * n : ℤ))

end

end A124356.P10641767392100755939

namespace A124356

/-- `4-xor(3, 1-2*n)` -/
def P10641767392100755939.Spec : Prop :=
  ∀ n, P10641767392100755939.a n = A124356 (n + 1)

end A124356

/-! ## A124356.P16409953578573246890

`∑[4-a(n-1)]` with `a(0)=2, a(1)=6`
-/

namespace A124356.P16409953578573246890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124356.P16409953578573246890

namespace A124356

/-- `∑[4-a(n-1)]` -/
def P16409953578573246890.Spec : Prop :=
  ∀ n, P16409953578573246890.a n = A124356 (n + 1)

end A124356

/-! ## A124356.P5688393285331597071

`xor(2, n+2+n)+2`
-/

namespace A124356.P5688393285331597071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n + 2 + n) + 2

end

end A124356.P5688393285331597071

namespace A124356

/-- `xor(2, n+2+n)+2` -/
def P5688393285331597071.Spec : Prop :=
  ∀ n, (P5688393285331597071.a n : ℤ) = A124356 (n + 1)

end A124356

/-! ## A124356.P1138611034462454743

`∑[∑[ogf((2+6x-4x^2)/(1+x))]]`
-/

namespace A124356.P1138611034462454743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6, -4] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124356.P1138611034462454743

namespace A124356

/-- `∑[∑[ogf((2+6x-4x^2)/(1+x))]]` -/
def P1138611034462454743.Spec : Prop :=
  ∀ n, P1138611034462454743.a n = A124356 (n + 1)

end A124356

/-! ## A124356.P8344272165229427429

`ogf((2+6x-4x^2)/(1-x-x^2+x^3))`
-/

namespace A124356.P8344272165229427429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6, -4] [1, -1, -1, 1] n

end

end A124356.P8344272165229427429

namespace A124356

/-- `ogf((2+6x-4x^2)/(1-x-x^2+x^3))` -/
def P8344272165229427429.Spec : Prop :=
  ∀ n, P8344272165229427429.a n = A124356 (n + 1)

end A124356

/-! ## A124356.P850098598924411725

`4-floor(-a(n-2))` with `a(0)=2, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A124356.P850098598924411725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  4 - (-a (n - 2))

end

end A124356.P850098598924411725

namespace A124356

/-- `4-floor(-a(n-2))` -/
def P850098598924411725.Spec : Prop :=
  ∀ n, P850098598924411725.a n = A124356 (n + 1)

theorem P850098598924411725.correct : P850098598924411725.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A124356, Nat.add_sub_cancel, A124356.P850098598924411725.a, A124356.P4259093803652856343.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A124356, Nat.add_sub_cancel, A124356.P850098598924411725.a, A124356.P4259093803652856343.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A124356

/-! ## A124356.P6413329996096017032

`4-ceil(-a(n-2))` with `a(0)=2, a(1)=8`

`ceil` is left out, it is the identity on integers.
-/

namespace A124356.P6413329996096017032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  4 - (-a (n - 2))

end

end A124356.P6413329996096017032

namespace A124356

/-- `4-ceil(-a(n-2))` -/
def P6413329996096017032.Spec : Prop :=
  ∀ n, P6413329996096017032.a n = A124356 (n + 1)

theorem P6413329996096017032.correct : P6413329996096017032.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A124356, Nat.add_sub_cancel, A124356.P6413329996096017032.a, A124356.P4259093803652856343.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A124356, Nat.add_sub_cancel, A124356.P6413329996096017032.a, A124356.P4259093803652856343.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A124356

/-! ## A124356.P10939542455527463868

`4-round(-a(n-2))` with `a(0)=2, a(1)=8`

`round` is left out, it is the identity on integers.
-/

namespace A124356.P10939542455527463868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  4 - (-a (n - 2))

end

end A124356.P10939542455527463868

namespace A124356

/-- `4-round(-a(n-2))` -/
def P10939542455527463868.Spec : Prop :=
  ∀ n, P10939542455527463868.a n = A124356 (n + 1)

theorem P10939542455527463868.correct : P10939542455527463868.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A124356, Nat.add_sub_cancel, A124356.P10939542455527463868.a, A124356.P4259093803652856343.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A124356, Nat.add_sub_cancel, A124356.P10939542455527463868.a, A124356.P4259093803652856343.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A124356

/-! ## A124356.P14465710926895239471

`(4-gcd(2, n))!+2*n`
-/

namespace A124356.P14465710926895239471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (4 - (Nat.gcd 2 n : ℤ)).toNat + 2 * n

end

end A124356.P14465710926895239471

namespace A124356

/-- `(4-gcd(2, n))!+2*n` -/
def P14465710926895239471.Spec : Prop :=
  ∀ n, (P14465710926895239471.a n : ℤ) = A124356 (n + 1)

end A124356

/-! ## A124356.P7539679837876482445

`(and(1, n)+2)!+2*n`
-/

namespace A124356.P7539679837876482445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 1 n + 2) + 2 * n

end

end A124356.P7539679837876482445

namespace A124356

/-- `(and(1, n)+2)!+2*n` -/
def P7539679837876482445.Spec : Prop :=
  ∀ n, (P7539679837876482445.a n : ℤ) = A124356 (n + 1)

end A124356

/-! ## A124356.P3009693741388218536

`Δ[or(2, n*(n+2))]+1`
-/

namespace A124356.P3009693741388218536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A124356.P3009693741388218536

namespace A124356

/-- `Δ[or(2, n*(n+2))]+1` -/
def P3009693741388218536.Spec : Prop :=
  ∀ n, P3009693741388218536.a n = A124356 (n + 1)

end A124356

/-! ## A124356.P11128704758035429299

`1-Δ[or(2, -(n+1)²)]`
-/

namespace A124356.P11128704758035429299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (-((n + 1) ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A124356.P11128704758035429299

namespace A124356

/-- `1-Δ[or(2, -(n+1)²)]` -/
def P11128704758035429299.Spec : Prop :=
  ∀ n, P11128704758035429299.a n = A124356 (n + 1)

end A124356

/-! ## A124356.P16409926773628882656

`4*n%2+2*(n+1)`
-/

namespace A124356.P16409926773628882656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n % 2) + 2 * (n + 1)

end

end A124356.P16409926773628882656

namespace A124356

/-- `4*n%2+2*(n+1)` -/
def P16409926773628882656.Spec : Prop :=
  ∀ n, (P16409926773628882656.a n : ℤ) = A124356 (n + 1)

end A124356

/-! ## A124356.P7888112274171609843

`2*(2*and(1, n)+n)+2`
-/

namespace A124356.P7888112274171609843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * Nat.land 1 n + n) + 2

end

end A124356.P7888112274171609843

namespace A124356

/-- `2*(2*and(1, n)+n)+2` -/
def P7888112274171609843.Spec : Prop :=
  ∀ n, (P7888112274171609843.a n : ℤ) = A124356 (n + 1)

end A124356

/-! ## A124356.P12487846817753735150

`4*n-(a(n-1)-6)` with `a(0)=2`
-/

namespace A124356.P12487846817753735150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (4 * n : ℤ) - (a (n - 1) - 6)

end

end A124356.P12487846817753735150

namespace A124356

/-- `4*n-(a(n-1)-6)` -/
def P12487846817753735150.Spec : Prop :=
  ∀ n, P12487846817753735150.a n = A124356 (n + 1)

theorem P12487846817753735150.correct : P12487846817753735150.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A124356, Nat.add_sub_cancel, A124356.P12487846817753735150.a, A124356.P4259093803652856343.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A124356, Nat.add_sub_cancel, A124356.P12487846817753735150.a, A124356.P4259093803652856343.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A124356

/-! ## A124356.P16095456330941101794

`6-(4/2-a(n-2))` with `a(0)=2, a(1)=8`
-/

namespace A124356.P16095456330941101794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 8] fun n a =>
  6 - ((4 : ℚ) / 2 - a (n - 2))

end

end A124356.P16095456330941101794

namespace A124356

/-- `6-(4/2-a(n-2))` -/
def P16095456330941101794.Spec : Prop :=
  ∀ n, P16095456330941101794.a n = (A124356 (n + 1) : ℚ)

theorem P16095456330941101794.correct : P16095456330941101794.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A124356, Nat.add_sub_cancel, A124356.P16095456330941101794.a, A124356.P4259093803652856343.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A124356, Nat.add_sub_cancel, A124356.P16095456330941101794.a, A124356.P4259093803652856343.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A124356

/-!
# A124359: Numbers n for which the sum of the digits of n^k, for some k, is equal to n.

The programs for A124359, there is no canonical definition to state claims against.
-/

/-! ## A124359.P14535567468823460506

`lt[0, A247889(n)]`
-/

namespace A124359.P14535567468823460506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247889 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A124359.P14535567468823460506

/-! ## A124359.P1192817210857919784

`eq[A000007(2*(n+2)), A000007(A247889(n))]`
-/

namespace A124359.P1192817210857919784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A247889 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124359.P1192817210857919784

/-! ## A124359.P4223338499803802924

`comp[comp[A152147(n+1)-1]+1]%A003269(3*(n+1))`
-/

namespace A124359.P4223338499803802924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152147 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A003269 (3 * (n + 1)))

end

end A124359.P4223338499803802924

/-! ## A124359.P2961472419960535431

`comp[A124367(n+1)]`
-/

namespace A124359.P2961472419960535431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A124359.P2961472419960535431

/-! ## A124359.P13181000568208934794

`comp[comp[A152147(n+1)-1]+1]%A124365(n+1)`
-/

namespace A124359.P13181000568208934794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152147 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A124365 (n + 1))

end

end A124359.P13181000568208934794

/-!
# A124363: a(n) = n^3 + 71*n + 1.

The programs for A124363, the canonical program `A124363.P8767470611267371827` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124363 has offset 1).

The definition of A124363 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+71*n+1` (program `A124363.P8767470611267371827`, by `A124363.P8767470611267371827.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A124363.P8767470611267371827

`n^3+71*n+1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124363

/-- `n^3+71*n+1` -/
def P8767470611267371827.Spec : Prop :=
  ∀ n, (P8767470611267371827.a n : ℤ) = A124363 (n + 1)

theorem P8767470611267371827.correct : P8767470611267371827.Spec := by
  intro n
  simp only [A124363, Nat.add_sub_cancel]

end A124363

/-! ## A124363.P9085185817017998117

`∑[∑[a(n-1)+6]]` with `a(0)=1, a(1)=71, a(2)=6`
-/

namespace A124363.P9085185817017998117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 71, 6] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124363.P9085185817017998117

namespace A124363

/-- `∑[∑[a(n-1)+6]]` -/
def P9085185817017998117.Spec : Prop :=
  ∀ n, (P9085185817017998117.a n : ℤ) = A124363 (n + 1)

end A124363

/-! ## A124363.P17555012225904485979

`A016921(C(n+1, 3)+12*n)`
-/

namespace A124363.P17555012225904485979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (Nat.choose (n + 1) 3 + 12 * n)

end

end A124363.P17555012225904485979

namespace A124363

/-- `A016921(C(n+1, 3)+12*n)` -/
def P17555012225904485979.Spec : Prop :=
  ∀ n, P17555012225904485979.a n = A124363 (n + 1)

theorem P17555012225904485979.correct : P17555012225904485979.Spec := by
  intro n
  simp only [A124363, Nat.add_sub_cancel, A124363.P17555012225904485979.a, A124363.P8767470611267371827.a, A016921, A016921.P18318603358862595186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A124363

/-! ## A124363.P6780333423396391601

`A016921(∑[n-(1-a(n-1))])` with `a(0)=0, a(1)=12`
-/

namespace A124363.P6780333423396391601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 12] fun n f1 =>
  (n : ℤ) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124363.P6780333423396391601

namespace A124363

/-- `A016921(∑[n-(1-a(n-1))])` -/
def P6780333423396391601.Spec : Prop :=
  ∀ n, P6780333423396391601.a n = A124363 (n + 1)

end A124363

/-! ## A124363.P3888225330931659289

`A007310(A161709(n)+A033547(n))`
-/

namespace A124363.P3888225330931659289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A161709 n + A033547 n).toNat

end

end A124363.P3888225330931659289

namespace A124363

/-- `A007310(A161709(n)+A033547(n))` -/
def P3888225330931659289.Spec : Prop :=
  ∀ n, P3888225330931659289.a n = A124363 (n + 1)

end A124363

/-!
# A124366: Consecutive numbers n and (n+1) that raised to the same exponent m produce two numbers for which the sum of their digits gives n and (n+1).

The programs for A124366, there is no canonical definition to state claims against.
-/

/-! ## A124366.P9662543547345762972

`∑[A291149(A331520(n)-1)]`
-/

namespace A124366.P9662543547345762972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291149 (A331520 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124366.P9662543547345762972

/-! ## A124366.P6534556556701744011

`A130517(A146173(n+2))+n`
-/

namespace A124366.P6534556556701744011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (A146173 (n + 2)).toNat + (n : ℤ)

end

end A124366.P6534556556701744011

/-! ## A124366.P12282162114772632763

`A102234(∑[A264441(n+1)!])`
-/

namespace A124366.P12282162114772632763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A264441 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102234 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124366.P12282162114772632763

/-! ## A124366.P15780414333603707828

`∑[A061653(A303624(∑{d}[n+1, #]))]`
-/

namespace A124366.P15780414333603707828
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061653 (A303624 (∑ d ∈ Nat.divisors (f2 n), d)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124366.P15780414333603707828

/-! ## A124366.P1790626344769894235

`lt[A158985(n+2), A194035(n+1)]`
-/

namespace A124366.P1790626344769894235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158985 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194035 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124366.P1790626344769894235

/-!
# A124367: Numbers that raised to any exponent do not produce a number whose sum of digits is equal to the initial number.

The programs for A124367, there is no canonical definition to state claims against.
-/

/-! ## A124367.P8129155585072034752

`eq[0, A247889(n)]`
-/

namespace A124367.P8129155585072034752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247889 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124367.P8129155585072034752

/-! ## A124367.P15701123769064527164

`comp[A124359(n+1)]`
-/

namespace A124367.P15701123769064527164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A124367.P15701123769064527164

/-! ## A124367.P12856787443041773476

`lt[A247889(n+1), 1]+1`
-/

namespace A124367.P12856787443041773476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247889 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A124367.P12856787443041773476

/-! ## A124367.P14893792783163145719

`lt[A247889(2*n-n), 1]`
-/

namespace A124367.P14893792783163145719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247889 (2 * n - n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A124367.P14893792783163145719

/-! ## A124367.P7610581638182127468

`comp[A152147(n+1)-1]+1`
-/

namespace A124367.P7610581638182127468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152147 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A124367.P7610581638182127468

/-! ## A124367.P10367340086153282976

`record[n+10-A247889(n+10)]`
-/

namespace A124367.P10367340086153282976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 10 : ℤ) - A247889 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124367.P10367340086153282976

/-! ## A124367.P8406923575743382223

`A000027(lt[A247889(n), 1])`
-/

namespace A124367.P8406923575743382223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247889 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A124367.P8406923575743382223

/-! ## A124367.P13428357729063778363

`comp[record[A124359(A286619(n))]]`
-/

namespace A124367.P13428357729063778363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124359 (A286619 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A124367.P13428357729063778363

/-! ## A124367.P12897067233147445508

`lt[A000040(A247889(n)+1), 3]`
-/

namespace A124367.P12897067233147445508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A247889 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A124367.P12897067233147445508

/-! ## A124367.P4767024261376153686

`lt[A000203(A247889(n)+1), 3]`
-/

namespace A124367.P4767024261376153686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A247889 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A124367.P4767024261376153686

/-!
# A124369: Riordan array (1/((1-x-x^2)(1+x+x^2)),x(1+x)/((1-x-x^2)(1+x+x^2))).

The programs for A124369, there is no canonical definition to state claims against.
-/

/-! ## A124369.P7655275969029087129

`A087117(A025581(n)*A209816(n+1))`
-/

namespace A124369.P7655275969029087129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A025581 n * A209816 (n + 1)).toNat

end

end A124369.P7655275969029087129

/-! ## A124369.P4800125093414744835

`A001876(A328924(n)+A054844(n+1)-A001227(5*(n+1)))`
-/

namespace A124369.P4800125093414744835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A328924 n + (A054844 (n + 1) - A001227 (5 * (n + 1)))).toNat

end

end A124369.P4800125093414744835

/-!
# A124370: Expansion of 1/(1-2x^2-3x^3-x^4).

The programs for A124370, the canonical program `A124370.P1445080296814415727` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124370 has offset 0).

The definition of A124370 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x^2-3x^3-x^4))` (program `A124370.P1445080296814415727`, by `A124370.P1445080296814415727.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A124370.P1445080296814415727

`ogf(1/(1-2x^2-3x^3-x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124370

/-- `ogf(1/(1-2x^2-3x^3-x^4))` -/
def P1445080296814415727.Spec : Prop :=
  ∀ n, P1445080296814415727.a n = A124370 n

theorem P1445080296814415727.correct : P1445080296814415727.Spec := by
  intro n
  simp only [A124370]

end A124370

/-! ## A124370.P17382326047560025377

`2*a(n-2)+3*a(n-3)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=3`
-/

namespace A124370.P17382326047560025377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 3] fun n a =>
  2 * a (n - 2) + 3 * a (n - 3) + a (n - 4)

end

end A124370.P17382326047560025377

namespace A124370

/-- `2*a(n-2)+3*a(n-3)+a(n-4)` -/
def P17382326047560025377.Spec : Prop :=
  ∀ n, (P17382326047560025377.a n : ℤ) = A124370 n

end A124370

/-! ## A124370.P7074393604725528819

`Δ[A172471(A171199(n))]`
-/

namespace A124370.P7074393604725528819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A171199 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124370.P7074393604725528819

namespace A124370

/-- `Δ[A172471(A171199(n))]` -/
def P7074393604725528819.Spec : Prop :=
  ∀ n, P7074393604725528819.a n = A124370 n

end A124370

/-! ## A124370.P8631580086034337384

`A003056(A148794(n))-A033182(2*n+3)`
-/

namespace A124370.P8631580086034337384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A148794 n).toNat - A033182 (2 * n + 3)

end

end A124370.P8631580086034337384

namespace A124370

/-- `A003056(A148794(n))-A033182(2*n+3)` -/
def P8631580086034337384.Spec : Prop :=
  ∀ n, P8631580086034337384.a n = A124370 n

end A124370

/-!
# A124371: a(n) is the number of earlier terms a(k) such that a(k)*n is a square.

The programs for A124371, there is no canonical definition to state claims against.
-/

/-! ## A124371.P1335908468612616681

`A124372(n+1)^A004173(A248692(n+1))`
-/

namespace A124371.P1335908468612616681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124372 (n + 1) : ℚ) ^ (A004173 (A248692 (n + 1)).toNat : ℤ)

end

end A124371.P1335908468612616681

/-! ## A124371.P8247902978104664517

`A124372(n+1)^A336569(A208509(n+1))`
-/

namespace A124371.P8247902978104664517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124372 (n + 1) : ℚ) ^ (A336569 (A208509 (n + 1)).toNat : ℤ)

end

end A124371.P8247902978104664517

/-! ## A124371.P3220746401418385863

`A124372(n+1)%A006530(A076722(n+1))`
-/

namespace A124371.P3220746401418385863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124372 (n + 1)) (A006530 (A076722 (n + 1)).toNat)

end

end A124371.P3220746401418385863

/-!
# A124372: a(n) is the number of earlier terms a(k) such that a(k)*n is of the form m^j, m = integer >= 0, j = integer >= 2.

The programs for A124372, there is no canonical definition to state claims against.
-/

/-! ## A124372.P11534529846841377353

`gcd(A087913(n+1), A087913(A350122(n+1)))`
-/

namespace A124372.P11534529846841377353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087913 (n + 1)) (A087913 (A350122 (n + 1)).toNat)

end

end A124372.P11534529846841377353

/-! ## A124372.P5538182984470993357

`gcd(A069905(A087503(n)), A087913(n+1))`
-/

namespace A124372.P5538182984470993357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069905 (A087503 n).toNat) (A087913 (n + 1))

end

end A124372.P5538182984470993357

/-!
# A124373: O.g.f.: A(x) = Sum_{n>=0} x^n / Product_{k=0..n} (1 - k*(k+1)/2*x).

The programs for A124373, there is no canonical definition to state claims against.
-/

/-! ## A124373.P10500144260524362815

`A008620(A102736(n)+A007841(n))`
-/

namespace A124373.P10500144260524362815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A102736 n + A007841 n).toNat

end

end A124373.P10500144260524362815

/-! ## A124373.P17372855458993453496

`A110656(A002293(n))+A058682(n)`
-/

namespace A124373.P17372855458993453496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A002293 n).toNat + A058682 n

end

end A124373.P17372855458993453496

/-! ## A124373.P11018213983887060772

`A123108(A351882(n))+A000598(n)`
-/

namespace A124373.P11018213983887060772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A351882 n).toNat + A000598 n

end

end A124373.P11018213983887060772

/-!
# A124374: Primes of the form !(k + 1)/2 = Sum_{i=0..k} i!/2.

The programs for A124374, there is no canonical definition to state claims against.
-/

/-! ## A124374.P15043070302509810441

`A014288(A124375(n+1))`
-/

namespace A124374.P15043070302509810441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014288 (A124375 (n + 1)).toNat

end

end A124374.P15043070302509810441

/-! ## A124374.P14695904770156695611

`A014288(A100614(n+1)-1)`
-/

namespace A124374.P14695904770156695611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014288 (A100614 (n + 1) - 1).toNat

end

end A124374.P14695904770156695611

/-! ## A124374.P12261488581708733673

`A093468(A124375(n+1)+1)-1`
-/

namespace A124374.P12261488581708733673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093468 (A124375 (n + 1) + 1).toNat - 1

end

end A124374.P12261488581708733673

/-! ## A124374.P18378800009831859699

`A003422(A124375(n+1)+1)/2`
-/

namespace A124374.P18378800009831859699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003422 (A124375 (n + 1) + 1).toNat : ℚ) / 2

end

end A124374.P18378800009831859699

/-!
# A124375: Numbers k such that A003422(k+1)/2 is prime.

The programs for A124375, there is no canonical definition to state claims against.
-/

/-! ## A124375.P3214196802720326606

`A100614(n+1)-1`
-/

namespace A124375.P3214196802720326606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100614 (n + 1) - 1

end

end A124375.P3214196802720326606

/-! ## A124375.P13444900984996372683

`A153881(n+2)+A100614(n+1)`
-/

namespace A124375.P13444900984996372683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A100614 (n + 1)

end

end A124375.P13444900984996372683

/-! ## A124375.P2890590329515171965

`A260196(n+2)+A100614(n+1)`
-/

namespace A124375.P2890590329515171965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A100614 (n + 1)

end

end A124375.P2890590329515171965

/-! ## A124375.P18027246690478601364

`A321800(∑{d}[n, #])+A100614(n+1)`
-/

namespace A124375.P18027246690478601364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (∑ d ∈ Nat.divisors (f1 n), d) + A100614 (n + 1)

end

end A124375.P18027246690478601364

/-! ## A124375.P11204477813069124097

`A115638(2*n+1)+A100614(n+1)`
-/

namespace A124375.P11204477813069124097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115638 (2 * n + 1) + A100614 (n + 1)

end

end A124375.P11204477813069124097

/-!
# A124376: Number triangle with column k generated by x^k*(1+2*k*x+C(k,2)*x^2)/(1-x)^(k+1).

The programs for A124376, there is no canonical definition to state claims against.
-/

/-! ## A124376.P7205567140660634357

`(A157169(n)+A103450(n))/2`
-/

namespace A124376.P7205567140660634357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157169 n + A103450 n : ℚ) / 2

end

end A124376.P7205567140660634357

/-! ## A124376.P13450099231586883620

`A014682(A157169(n)+A103450(n))`
-/

namespace A124376.P13450099231586883620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A157169 n + A103450 n).toNat

end

end A124376.P13450099231586883620

/-! ## A124376.P12417028465853992350

`A001281(A157169(n)+A103450(n))`
-/

namespace A124376.P12417028465853992350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A157169 n + A103450 n).toNat

end

end A124376.P12417028465853992350

/-! ## A124376.P9469217262540571355

`A004525(A157169(n)+A103450(n))`
-/

namespace A124376.P9469217262540571355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A157169 n + A103450 n).toNat

end

end A124376.P9469217262540571355

/-! ## A124376.P10965645512547628988

`A004526(A157169(n)+A103450(n))`
-/

namespace A124376.P10965645512547628988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A157169 n + A103450 n).toNat

end

end A124376.P10965645512547628988

/-! ## A124376.P15005523512644672566

`A025480(A157169(n)+A103450(n))`
-/

namespace A124376.P15005523512644672566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A157169 n + A103450 n).toNat

end

end A124376.P15005523512644672566

/-! ## A124376.P14037744708084566567

`A026741(A157169(n)+A103450(n))`
-/

namespace A124376.P14037744708084566567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A157169 n + A103450 n).toNat

end

end A124376.P14037744708084566567

/-! ## A124376.P9239756297174837342

`A004524(A103450(n)+A157169(n)+1)`
-/

namespace A124376.P9239756297174837342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A103450 n + (A157169 n + 1)).toNat

end

end A124376.P9239756297174837342

/-! ## A124376.P550805806778683934

`A000463(A103450(n)+A157169(n)-1)`
-/

namespace A124376.P550805806778683934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A103450 n + (A157169 n - 1)).toNat

end

end A124376.P550805806778683934

/-! ## A124376.P6229365908053204603

`A003602(A103450(n)+A157169(n)-1)`
-/

namespace A124376.P6229365908053204603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A103450 n + (A157169 n - 1)).toNat

end

end A124376.P6229365908053204603

/-!
# A124377: Riordan array (1/(1-x-x^2),x/(1+x)).

The programs for A124377, there is no canonical definition to state claims against.
-/

/-! ## A124377.P9082555940264195339

`or(A246398(A083329(n)), A279008(n))`
-/

namespace A124377.P9082555940264195339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A246398 (A083329 n).toNat) (A279008 n)

end

end A124377.P9082555940264195339

/-! ## A124377.P7136046018537936086

`or(A032741(A258018(n+1)), A279008(n))`
-/

namespace A124377.P7136046018537936086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032741 (A258018 (n + 1)).toNat) (A279008 n)

end

end A124377.P7136046018537936086

/-! ## A124377.P6316271196975698718

`A279008(n)+A107846(A272859(n+1))`
-/

namespace A124377.P6316271196975698718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279008 n + A107846 (A272859 (n + 1)).toNat

end

end A124377.P6316271196975698718

/-! ## A124377.P1907257444892952432

`A182703(n+1)-A016371(A027379(n))`
-/

namespace A124377.P1907257444892952432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182703 (n + 1) - A016371 (A027379 n).toNat

end

end A124377.P1907257444892952432

/-! ## A124377.P3566951577903878492

`A182703(n+1)-A014376(A108198(n))`
-/

namespace A124377.P3566951577903878492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182703 (n + 1) - A014376 (A108198 n).toNat

end

end A124377.P3566951577903878492

/-!
# A124378: Primitive elements of A064362.

The programs for A124378, there is no canonical definition to state claims against.
-/

/-! ## A124378.P4751072631941267400

`∩[A121411(n+1), A143748(n+1)]`
-/

namespace A124378.P4751072631941267400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124378.P4751072631941267400

/-! ## A124378.P16592749553710409089

`A003656(lt[A280781(n), A002805(n+1)])`
-/

namespace A124378.P16592749553710409089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280781 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A124378.P16592749553710409089

/-! ## A124378.P13369219827247815831

`A003656(A302505(n+1))%A179388(2*(n+2))`
-/

namespace A124378.P13369219827247815831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003656 (A302505 (n + 1)).toNat) (A179388 (2 * (n + 2)))

end

end A124378.P13369219827247815831

/-! ## A124378.P10775316066728236141

`A003656(A039083(n+1)%A324020(3*(n+2)))`
-/

namespace A124378.P10775316066728236141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (Int.tmod (A039083 (n + 1)) (A324020 (3 * (n + 2)))).toNat

end

end A124378.P10775316066728236141

/-! ## A124378.P2437924471593383318

`A003246(lt[A125181(n+1), A070939(2*n+1)])`
-/

namespace A124378.P2437924471593383318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003246 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A124378.P2437924471593383318

/-!
# A124379: Numbers n such that 120n-1, 120n+1 are twin primes.

The programs for A124379, there is no canonical definition to state claims against.
-/

/-! ## A124379.P357639213094693654

`eq[1, A182481(2*A135042(2*n+1))]`
-/

namespace A124379.P357639213094693654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (2 * A135042 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124379.P357639213094693654

/-! ## A124379.P15474832264353507182

`eq[2, A096501(10*12*n+1)]`
-/

namespace A124379.P15474832264353507182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (10 * (12 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124379.P15474832264353507182

/-! ## A124379.P11947499641505443823

`eq[1, A164292(A103214(5*n))]`
-/

namespace A124379.P11947499641505443823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (A103214 (5 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124379.P11947499641505443823

/-!
# A124380: O.g.f.: A(x) = Sum_{n>=0} x^n*Product_{k=0..n} (1 + k*x).

The programs for A124380, there is no canonical definition to state claims against.
-/

/-! ## A124380.P16798768872775369666

`A205153((n²-n)*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A124380.P16798768872775369666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A205153 (((n ^ 2 : ℤ) - (n : ℤ)) * a (n - 2)).toNat

end

end A124380.P16798768872775369666

/-! ## A124380.P982276717762888312

`A205153(n*(n-1)*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A124380.P982276717762888312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A205153 ((n : ℤ) * (((n : ℤ) - 1) * a (n - 2))).toNat

end

end A124380.P982276717762888312

/-! ## A124380.P11892331203744587194

`A039708(A308273(n))`
-/

namespace A124380.P11892331203744587194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 (A308273 n).toNat

end

end A124380.P11892331203744587194

/-! ## A124380.P9303356546520013565

`A100196(A058682(n)+A000139(n))`
-/

namespace A124380.P9303356546520013565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A058682 n + A000139 n).toNat

end

end A124380.P9303356546520013565

/-!
# A124381: O.g.f.: A(x) = Sum_{n>=0} x^n*Product_{k=0..n} (1 + k*(k+1)/2*x).

The programs for A124381, there is no canonical definition to state claims against.
-/

/-! ## A124381.P3537801021616615062

`A001462(A265954(n))`
-/

namespace A124381.P3537801021616615062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A265954 n).toNat

end

end A124381.P3537801021616615062

/-! ## A124381.P12059653613032667560

`A210357(A148470(n))`
-/

namespace A124381.P12059653613032667560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A148470 n).toNat

end

end A124381.P12059653613032667560

/-! ## A124381.P15475037242859658198

`A349523(A032200(n+1))`
-/

namespace A124381.P15475037242859658198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349523 (A032200 (n + 1)).toNat

end

end A124381.P15475037242859658198

/-!
# A124382: O.g.f.: A(x) = Sum_{n>=0} x^n*Product_{k=0..n} (1 + k*(k+1)*(k+2)/6*x).

The programs for A124382, there is no canonical definition to state claims against.
-/

/-! ## A124382.P13683440580907388379

`A247176(A231166(n))+1`
-/

namespace A124382.P13683440580907388379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247176 (A231166 n).toNat + 1

end

end A124382.P13683440580907388379

/-! ## A124382.P6977063057667184569

`A269172(A054499(n))+A011848(n)`
-/

namespace A124382.P6977063057667184569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (A054499 n).toNat + A011848 n

end

end A124382.P6977063057667184569

/-! ## A124382.P9094661195435141025

`A332086(A076177(n)+A002264(n))`
-/

namespace A124382.P9094661195435141025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A076177 n + A002264 n).toNat

end

end A124382.P9094661195435141025

/-!
# A124383: O.g.f.: A(x) = Sum_{n>=0} x^n*Product_{k=0..n} (1 + k*x)^2.

The programs for A124383, there is no canonical definition to state claims against.
-/

/-! ## A124383.P11985253511674110326

`A226190(∑[A148991(n)])`
-/

namespace A124383.P11985253511674110326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124383.P11985253511674110326

/-! ## A124383.P11977103123772322724

`A024417(A055834(n)+n)`
-/

namespace A124383.P11977103123772322724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A055834 n + (n : ℤ)).toNat

end

end A124383.P11977103123772322724

/-!
# A124384: O.g.f.: A(x) = Sum_{n>=0} x^n*Product_{k=0..n} (1 + 2^k*x).

The programs for A124384, there is no canonical definition to state claims against.
-/

/-! ## A124384.P4796191696380648398

`A004181(∑[A117574(n)])`
-/

namespace A124384.P4796191696380648398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124384.P4796191696380648398

/-! ## A124384.P14741801752353523374

`A028310(∑[A117574(n)])`
-/

namespace A124384.P14741801752353523374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124384.P14741801752353523374

/-! ## A124384.P11021004360745579913

`A249818(∑[A117574(n)])`
-/

namespace A124384.P11021004360745579913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124384.P11021004360745579913

/-!
# A124385: For all n >= 2, Sum_{2<=k<=n, gcd(k,n)>1} a(k) = 1. a(1)=1.

The programs for A124385, there is no canonical definition to state claims against.
-/

/-! ## A124385.P8473610137433754145

`A334090(A167614(A324202(n+1))-A001316(n))`
-/

namespace A124385.P8473610137433754145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334090 (A167614 (A324202 (n + 1)).toNat - A001316 n).toNat

end

end A124385.P8473610137433754145

/-!
# A124387: Largest prime < 2*a(n-1) written in binary, a(1)=2.

The programs for A124387, there is no canonical definition to state claims against.
-/

/-! ## A124387.P15371898414554546348

`A007088(A006992(n+1))`
-/

namespace A124387.P15371898414554546348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A006992 (n + 1)).toNat

end

end A124387.P15371898414554546348

/-! ## A124387.P8205454795231491382

`A007088(A080190(n))`
-/

namespace A124387.P8205454795231491382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A080190 n).toNat

end

end A124387.P8205454795231491382

/-! ## A124387.P8061866198809128916

`A007088(p?[A185231(n)])`
-/

namespace A124387.P8061866198809128916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185231 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A124387.P8061866198809128916

/-! ## A124387.P6798030412112138196

`A007088(A185231(n+1))`
-/

namespace A124387.P6798030412112138196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A185231 (n + 1)).toNat

end

end A124387.P6798030412112138196

/-! ## A124387.P10773447885218873961

`A007088(A229607(∑[n]+1))`
-/

namespace A124387.P10773447885218873961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A229607 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A124387.P10773447885218873961

/-!
# A124388: a(n) = 27*n + 18.

The programs for A124388, the canonical program `A124388.P7911995561138639037` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124388 has offset 0).

The definition of A124388 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `27*n+18` (program `A124388.P7911995561138639037`, by `A124388.P7911995561138639037.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A124388.P7911995561138639037

`27*n+18`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124388

/-- `27*n+18` -/
def P7911995561138639037.Spec : Prop :=
  ∀ n, (P7911995561138639037.a n : ℤ) = A124388 n

theorem P7911995561138639037.correct : P7911995561138639037.Spec := by
  intro n
  simp only [A124388]

end A124388

/-!
# A124390: Antidiagonal sums of square array A124389.

The programs for A124390, there is no canonical definition to state claims against.
-/

/-! ## A124390.P16926712112360083555

`∑[A157966(A004525(ceil(2^(n-2)+n)))]`
-/

namespace A124390.P16926712112360083555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157966 (A004525 ⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + (n : ℚ)⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124390.P16926712112360083555

/-! ## A124390.P10915942574425840385

`A086246(n)+A000194(A151412(n))`
-/

namespace A124390.P10915942574425840385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 n + A000194 (A151412 n).toNat

end

end A124390.P10915942574425840385

/-! ## A124390.P4434050357301795043

`A185283(A128734(n))+A000267(n)`
-/

namespace A124390.P4434050357301795043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A128734 n).toNat + A000267 n

end

end A124390.P4434050357301795043

/-! ## A124390.P7835627460892050898

`A002024(∑[A115275(n)])`
-/

namespace A124390.P7835627460892050898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124390.P7835627460892050898

/-! ## A124390.P1661329900285490404

`A123578(∑[A115275(n)])`
-/

namespace A124390.P1661329900285490404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124390.P1661329900285490404

/-!
# A124391: Numbers m that divide A123269(m) = Sum_{i=1..m, j=1..m, k=1..m} i^j^k.

The programs for A124391, there is no canonical definition to state claims against.
-/

/-! ## A124391.P4637652937659197549

`A025441(A211904(n+1))+A004144(n+1)`
-/

namespace A124391.P4637652937659197549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (A211904 (n + 1)).toNat + A004144 (n + 1)

end

end A124391.P4637652937659197549

/-! ## A124391.P1931194674114593005

`A025465(A323099(n))+A004144(n+1)`
-/

namespace A124391.P1931194674114593005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 (A323099 n).toNat + A004144 (n + 1)

end

end A124391.P1931194674114593005

/-! ## A124391.P8948630725933964270

`A127708(A084645(n+1))+A004144(n+1)`
-/

namespace A124391.P8948630725933964270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127708 (A084645 (n + 1)).toNat + A004144 (n + 1)

end

end A124391.P8948630725933964270

/-! ## A124391.P16658823119769130618

`A060689(A177888(n+2))+A004144(n+1)`
-/

namespace A124391.P16658823119769130618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (A177888 (n + 2)).toNat + A004144 (n + 1)

end

end A124391.P16658823119769130618

/-! ## A124391.P13675492618306955468

`A240467(A133289(n))+A004144(n+1)`
-/

namespace A124391.P13675492618306955468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (A133289 n).toNat + A004144 (n + 1)

end

end A124391.P13675492618306955468

/-!
# A124392: A Fine number related number triangle.

The programs for A124392, there is no canonical definition to state claims against.
-/

/-! ## A124392.P16202419417414411555

`2*A158815(n)-A065600(n)`
-/

namespace A124392.P16202419417414411555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158815 n - A065600 n

end

end A124392.P16202419417414411555

/-! ## A124392.P3537437934296728908

`A004277(A158815(n))-A065600(n)`
-/

namespace A124392.P3537437934296728908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A158815 n).toNat - A065600 n

end

end A124392.P3537437934296728908

/-! ## A124392.P4922764031844587107

`A004277(A158815(n))-A096794(n+1)/A059268(n)`
-/

namespace A124392.P4922764031844587107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A158815 n).toNat : ℚ) - (A096794 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A124392.P4922764031844587107

/-! ## A124392.P1852086082247708555

`A191525(2*n+C(comp[∑[n]]-n, 2)-n)`
-/

namespace A124392.P1852086082247708555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191525 ((2 * n : ℤ) + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))).toNat

end

end A124392.P1852086082247708555

/-! ## A124392.P4798465737460748613

`A191525(A064801(n+1))`
-/

namespace A124392.P4798465737460748613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191525 (A064801 (n + 1)).toNat

end

end A124392.P4798465737460748613

/-!
# A124394: Inverse of Fine number renewal array.

The programs for A124394, there is no canonical definition to state claims against.
-/

/-! ## A124394.P14408616436449995848

`A008621(A250263(A216344(n)))-A208727(n+1)`
-/

namespace A124394.P14408616436449995848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A250263 (A216344 n).toNat).toNat - A208727 (n + 1)

end

end A124394.P14408616436449995848

/-! ## A124394.P16987418408984379012

`A016346(A184962(n+1))-A004247(n+1)`
-/

namespace A124394.P16987418408984379012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016346 (A184962 (n + 1)).toNat - A004247 (n + 1)

end

end A124394.P16987418408984379012

/-! ## A124394.P15651037141711383887

`A139355(A008279(n)²)-A208671(n+1)`
-/

namespace A124394.P15651037141711383887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 (A008279 n ^ 2).toNat - A208671 (n + 1)

end

end A124394.P15651037141711383887

/-! ## A124394.P16453512260486650056

`A139355(A008279(n)²)-A208727(n+1)`
-/

namespace A124394.P16453512260486650056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 (A008279 n ^ 2).toNat - A208727 (n + 1)

end

end A124394.P16453512260486650056

/-! ## A124394.P11355492048122543255

`A297325(n+1)-A089840(A221114(n+1))`
-/

namespace A124394.P11355492048122543255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (n + 1) - A089840 (A221114 (n + 1)).toNat

end

end A124394.P11355492048122543255

/-!
# A124395: Expansion of (1-2*x)/(1-2*x+2*x^3).

The programs for A124395, the canonical program `A124395.P9167293085973887116` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124395 has offset 0).

The definition of A124395 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x)/(1-2x+2x^3))` (program `A124395.P9167293085973887116`, by `A124395.P9167293085973887116.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A124395.P9167293085973887116

`ogf((1-2x)/(1-2x+2x^3))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124395

/-- `ogf((1-2x)/(1-2x+2x^3))` -/
def P9167293085973887116.Spec : Prop :=
  ∀ n, P9167293085973887116.a n = A124395 n

theorem P9167293085973887116.correct : P9167293085973887116.Spec := by
  intro n
  simp only [A124395]

end A124395

/-! ## A124395.P7170690056312431365

`2*a(n-1)-2*a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A124395.P7170690056312431365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3)

end

end A124395.P7170690056312431365

namespace A124395

/-- `2*a(n-1)-2*a(n-3)` -/
def P7170690056312431365.Spec : Prop :=
  ∀ n, P7170690056312431365.a n = A124395 n

end A124395

/-! ## A124395.P13316711336220718965

`2*(a(n-1)-a(n-3))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A124395.P13316711336220718965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  2 * (a (n - 1) - a (n - 3))

end

end A124395.P13316711336220718965

namespace A124395

/-- `2*(a(n-1)-a(n-3))` -/
def P13316711336220718965.Spec : Prop :=
  ∀ n, P13316711336220718965.a n = A124395 n

end A124395

/-! ## A124395.P5037941753720235786

`a(n-1)+a(n-1)-a(n-3)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A124395.P5037941753720235786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 3) - a (n - 3))

end

end A124395.P5037941753720235786

namespace A124395

/-- `a(n-1)+a(n-1)-a(n-3)-a(n-3)` -/
def P5037941753720235786.Spec : Prop :=
  ∀ n, P5037941753720235786.a n = A124395 n

end A124395

/-! ## A124395.P1179646496299762536

`a(n-1)-(a(n-3)-(a(n-1)-a(n-3)))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A124395.P1179646496299762536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 1) - (a (n - 3) - (a (n - 1) - a (n - 3)))

end

end A124395.P1179646496299762536

namespace A124395

/-- `a(n-1)-(a(n-3)-(a(n-1)-a(n-3)))` -/
def P1179646496299762536.Spec : Prop :=
  ∀ n, P1179646496299762536.a n = A124395 n

end A124395

/-! ## A124395.P4975210437984575501

`∑[A073358(n)-Δ[A073358(n)]]`
-/

namespace A124395.P4975210437984575501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073358 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073358 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124395.P4975210437984575501

namespace A124395

/-- `∑[A073358(n)-Δ[A073358(n)]]` -/
def P4975210437984575501.Spec : Prop :=
  ∀ n, P4975210437984575501.a n = A124395 n

end A124395

/-! ## A124395.P613624455004497988

`∑[A073358(n)]-A073358(n+1)`
-/

namespace A124395.P613624455004497988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A073358 (n + 1)

end

end A124395.P613624455004497988

namespace A124395

/-- `∑[A073358(n)]-A073358(n+1)` -/
def P613624455004497988.Spec : Prop :=
  ∀ n, P613624455004497988.a n = A124395 n

end A124395

/-! ## A124395.P17925665001614721151

`Δ[Δ[A077940(n)]]`
-/

namespace A124395.P17925665001614721151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077940 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124395.P17925665001614721151

namespace A124395

/-- `Δ[Δ[A077940(n)]]` -/
def P17925665001614721151.Spec : Prop :=
  ∀ n, P17925665001614721151.a n = A124395 n

end A124395

/-! ## A124395.P17021582577903397925

`Δ[Δ[A033999(n)*A077988(n)]]`
-/

namespace A124395.P17021582577903397925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077988 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124395.P17021582577903397925

namespace A124395

/-- `Δ[Δ[A033999(n)*A077988(n)]]` -/
def P17021582577903397925.Spec : Prop :=
  ∀ n, P17021582577903397925.a n = A124395 n

end A124395

/-! ## A124395.P15519605916079795400

`Δ[-A073358(n+2)]`
-/

namespace A124395.P15519605916079795400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A073358 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124395.P15519605916079795400

namespace A124395

/-- `Δ[-A073358(n+2)]` -/
def P15519605916079795400.Spec : Prop :=
  ∀ n, P15519605916079795400.a n = A124395 n

end A124395

/-! ## A124395.P16073610613512036153

`A073358(n+2)-A073358(n+3)`
-/

namespace A124395.P16073610613512036153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073358 (n + 2) - A073358 (n + 3)

end

end A124395.P16073610613512036153

namespace A124395

/-- `A073358(n+2)-A073358(n+3)` -/
def P16073610613512036153.Spec : Prop :=
  ∀ n, P16073610613512036153.a n = A124395 n

end A124395

/-! ## A124395.P10670450721434428723

`A007420(A005408(n)+1)/A122803(n)`
-/

namespace A124395.P10670450721434428723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007420 (A005408 n + 1).toNat : ℚ) / (A122803 n : ℚ)

end

end A124395.P10670450721434428723

namespace A124395

/-- `A007420(A005408(n)+1)/A122803(n)` -/
def P10670450721434428723.Spec : Prop :=
  ∀ n, P10670450721434428723.a n = (A124395 n : ℚ)

end A124395

/-!
# A124396: Denominators of partial sums of a series for 3/sqrt(5) = (3/5)*sqrt(5).

The programs for A124396, there is no canonical definition to state claims against.
-/

/-! ## A124396.P2757936633714828378

`A120997(n)/A009191(A000244(n))`
-/

namespace A124396.P2757936633714828378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120997 n : ℚ) / (A009191 (A000244 n).toNat : ℚ)

end

end A124396.P2757936633714828378

/-! ## A124396.P10110189537704767159

`record[A190906(n+1)²]/A190906(2*n)`
-/

namespace A124396.P10110189537704767159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190906 (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A190906 (2 * n) : ℚ)

end

end A124396.P10110189537704767159

/-! ## A124396.P12930186670766426679

`A072404(A006012(n)*A026517(3*n+2))`
-/

namespace A124396.P12930186670766426679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072404 (A006012 n * A026517 (3 * n + 2)).toNat

end

end A124396.P12930186670766426679

/-! ## A124396.P12279736113692855148

`A072404(A122681(n+2))`
-/

namespace A124396.P12279736113692855148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072404 (A122681 (n + 2)).toNat

end

end A124396.P12279736113692855148

/-!
# A124398: Denominators of partial sums of a series for sqrt(5)/3.

The programs for A124398, there is no canonical definition to state claims against.
-/

/-! ## A124398.P5608675753848518341

`A123748(n)^A299152(A104431(n))`
-/

namespace A124398.P5608675753848518341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123748 n : ℚ) ^ (A299152 (A104431 n).toNat : ℤ)

end

end A124398.P5608675753848518341

/-! ## A124398.P9357972076074502471

`gcd(A001147(3*n+2)², A285021(n))`
-/

namespace A124398.P9357972076074502471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001147 (3 * n + 2) ^ 2) (A285021 n)

end

end A124398.P9357972076074502471

/-! ## A124398.P13333807707938410977

`A109009(A121939(n+2))*A123748(n)`
-/

namespace A124398.P13333807707938410977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109009 (A121939 (n + 2)).toNat * A123748 n

end

end A124398.P13333807707938410977

/-! ## A124398.P7519927580903282611

`5^A001222(∏[A080883(n)])`
-/

namespace A124398.P7519927580903282611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A001222 (∏ j ∈ Finset.range (n + 1), f1 j).toNat : ℤ)

end

end A124398.P7519927580903282611

/-! ## A124398.P2969910526183365583

`5^∑[∑{e}[A143381(A300832(n+1)), #]]`
-/

namespace A124398.P2969910526183365583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143381 (A300832 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124398.P2969910526183365583

/-!
# A124399: a(n) = 4^(n - bitcount(n)) where bitcount(n) = A000120(n).

The programs for A124399, the canonical program `A124399.P12804667407302882160` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124399 has offset 0).

The definition of A124399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124399.P12804667407302882160

`∏[gcd(n, 2^n)²]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A124399

/-- `∏[gcd(n, 2^n)²]` -/
def P12804667407302882160.Spec : Prop :=
  ∀ n, (P12804667407302882160.a n : ℤ) = A124399 n

theorem P12804667407302882160.correct : P12804667407302882160.Spec := by
  intro n
  simp only [A124399]

end A124399

/-! ## A124399.P7801424479277203526

`4^∑[∑{e}[and(n, -n), #]]`
-/

namespace A124399.P7801424479277203526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124399.P7801424479277203526

namespace A124399

/-- `4^∑[∑{e}[and(n, -n), #]]` -/
def P7801424479277203526.Spec : Prop :=
  ∀ n, (P7801424479277203526.a n : ℤ) = A124399 n

end A124399

/-! ## A124399.P11454791687390853192

`4^val(n, 2)*a(n-1)` with `a(0)=1`
-/

namespace A124399.P11454791687390853192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 ^ SequenceMachineLib.valuation n 2 * a (n - 1)

end

end A124399.P11454791687390853192

namespace A124399

/-- `4^val(n, 2)*a(n-1)` -/
def P11454791687390853192.Spec : Prop :=
  ∀ n, (P11454791687390853192.a n : ℤ) = A124399 n

end A124399

/-! ## A124399.P6696963267663345658

`and(n, -n)²*a(n-1)` with `a(0)=1`
-/

namespace A124399.P6696963267663345658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2 * a (n - 1)

end

end A124399.P6696963267663345658

namespace A124399

/-- `and(n, -n)²*a(n-1)` -/
def P6696963267663345658.Spec : Prop :=
  ∀ n, P6696963267663345658.a n = A124399 n

end A124399

/-! ## A124399.P9825916453016038029

`or(n, -n)²*a(n-1)` with `a(0)=1`
-/

namespace A124399.P9825916453016038029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (n : ℤ) (-(n : ℤ)) ^ 2 * a (n - 1)

end

end A124399.P9825916453016038029

namespace A124399

/-- `or(n, -n)²*a(n-1)` -/
def P9825916453016038029.Spec : Prop :=
  ∀ n, P9825916453016038029.a n = A124399 n

end A124399

/-! ## A124399.P10508691707743661566

`(and(n, n-1)-n)²*a(n-1)` with `a(0)=1`
-/

namespace A124399.P10508691707743661566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.land (n : ℤ) ((n : ℤ) - 1) - (n : ℤ)) ^ 2 * a (n - 1)

end

end A124399.P10508691707743661566

namespace A124399

/-- `(and(n, n-1)-n)²*a(n-1)` -/
def P10508691707743661566.Spec : Prop :=
  ∀ n, P10508691707743661566.a n = A124399 n

end A124399

/-! ## A124399.P1611082658970059980

`gcd(4*a(n-2), n²)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A124399.P1611082658970059980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.gcd (4 * a (n - 2)) (n ^ 2) * a (n - 1)

end

end A124399.P1611082658970059980

namespace A124399

/-- `gcd(4*a(n-2), n²)*a(n-1)` -/
def P1611082658970059980.Spec : Prop :=
  ∀ n, (P1611082658970059980.a n : ℤ) = A124399 n

end A124399

/-! ## A124399.P4371920327392567963

`A060818(n)²`
-/

namespace A124399.P4371920327392567963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060818 n ^ 2

end

end A124399.P4371920327392567963

namespace A124399

/-- `A060818(n)²` -/
def P4371920327392567963.Spec : Prop :=
  ∀ n, P4371920327392567963.a n = A124399 n

end A124399

/-! ## A124399.P16073569101756039659

`4^A011371(n)`
-/

namespace A124399.P16073569101756039659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A011371 n : ℤ)

end

end A124399.P16073569101756039659

namespace A124399

/-- `4^A011371(n)` -/
def P16073569101756039659.Spec : Prop :=
  ∀ n, P16073569101756039659.a n = (A124399 n : ℚ)

end A124399

/-! ## A124399.P8898305219462271370

`A380949(or(1, n))`
-/

namespace A124399.P8898305219462271370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380949 (Nat.lor 1 n)

end

end A124399.P8898305219462271370

namespace A124399

/-- `A380949(or(1, n))` -/
def P8898305219462271370.Spec : Prop :=
  ∀ n, P8898305219462271370.a n = A124399 n

end A124399

/-! ## A124399.P7414284910026320147

`A004731(or(1, n))²`
-/

namespace A124399.P7414284910026320147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (Nat.lor 1 n) ^ 2

end

end A124399.P7414284910026320147

namespace A124399

/-- `A004731(or(1, n))²` -/
def P7414284910026320147.Spec : Prop :=
  ∀ n, P7414284910026320147.a n = A124399 n

end A124399

/-! ## A124399.P14584562782069166465

`A380910(or(1, n))²`
-/

namespace A124399.P14584562782069166465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380910 (Nat.lor 1 n) ^ 2

end

end A124399.P14584562782069166465

namespace A124399

/-- `A380910(or(1, n))²` -/
def P14584562782069166465.Spec : Prop :=
  ∀ n, P14584562782069166465.a n = A124399 n

end A124399

/-! ## A124399.P2703522502653638928

`2^A378992(2*n)`
-/

namespace A124399.P2703522502653638928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A378992 (2 * n) : ℤ)

end

end A124399.P2703522502653638928

namespace A124399

/-- `2^A378992(2*n)` -/
def P2703522502653638928.Spec : Prop :=
  ∀ n, P2703522502653638928.a n = (A124399 n : ℚ)

end A124399

/-! ## A124399.P3409228675515347578

`A046161(floor(n/2))²`
-/

namespace A124399.P3409228675515347578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 ⌊(n : ℚ) / 2⌋.toNat ^ 2

end

end A124399.P3409228675515347578

namespace A124399

/-- `A046161(floor(n/2))²` -/
def P3409228675515347578.Spec : Prop :=
  ∀ n, P3409228675515347578.a n = A124399 n

end A124399

/-! ## A124399.P12219341507231100807

`(A086117(n+1)/2)²`
-/

namespace A124399.P12219341507231100807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A086117 (n + 1) : ℚ) / 2) ^ 2

end

end A124399.P12219341507231100807

namespace A124399

/-- `(A086117(n+1)/2)²` -/
def P12219341507231100807.Spec : Prop :=
  ∀ n, P12219341507231100807.a n = (A124399 n : ℚ)

end A124399

/-! ## A124399.P8640950155567441339

`A118827(n)²*a(n-1)` with `a(0)=1`
-/

namespace A124399.P8640950155567441339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A118827 n ^ 2 * a (n - 1)

end

end A124399.P8640950155567441339

namespace A124399

/-- `A118827(n)²*a(n-1)` -/
def P8640950155567441339.Spec : Prop :=
  ∀ n, P8640950155567441339.a n = A124399 n

end A124399

/-! ## A124399.P5997800515029439183

`A118830(n)²*a(n-1)` with `a(0)=1`
-/

namespace A124399.P5997800515029439183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A118830 n ^ 2 * a (n - 1)

end

end A124399.P5997800515029439183

namespace A124399

/-- `A118830(n)²*a(n-1)` -/
def P5997800515029439183.Spec : Prop :=
  ∀ n, P5997800515029439183.a n = A124399 n

end A124399

/-! ## A124399.P1505346185916933192

`∏[gcd(n², A131575(2*n+1))]`
-/

namespace A124399.P1505346185916933192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A131575 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A124399.P1505346185916933192

namespace A124399

/-- `∏[gcd(n², A131575(2*n+1))]` -/
def P1505346185916933192.Spec : Prop :=
  ∀ n, (P1505346185916933192.a n : ℤ) = A124399 n

end A124399

/-! ## A124399.P4663841771446253609

`A000302(A011371(n))`
-/

namespace A124399.P4663841771446253609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A011371 n).toNat

end

end A124399.P4663841771446253609

namespace A124399

/-- `A000302(A011371(n))` -/
def P4663841771446253609.Spec : Prop :=
  ∀ n, P4663841771446253609.a n = A124399 n

end A124399

