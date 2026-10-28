import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B004.C000
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A241200: For the n in A241199, the index of the first of 4 terms in binomial(n,k) that satisfy a quadratic relation.

The programs for A241200, the canonical program `A241200.P14983101625892407746` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241200 has offset 1).

The definition of A241200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241200.P14983101625892407746

`ogf((2+2x+x^2-x^3-x^4)/(1-x-2x^2+2x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A241200

/-- `ogf((2+2x+x^2-x^3-x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P14983101625892407746.Spec : Prop :=
  ∀ n, P14983101625892407746.a n = A241200 (n + 1)

theorem P14983101625892407746.correct : P14983101625892407746.Spec := by
  intro n
  simp only [A241200, Nat.add_sub_cancel]

end A241200

/-! ## A241200.P8241030358470078405

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=2, a(1)=4, a(2)=9, a(3)=12, a(4)=19`
-/

namespace A241200.P8241030358470078405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 9, 12, 19] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A241200.P8241030358470078405

namespace A241200

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P8241030358470078405.Spec : Prop :=
  ∀ n, P8241030358470078405.a n = A241200 (n + 1)

end A241200

/-! ## A241200.P3359759187404524384

`∑[lcm(2, n+3)/2]-1`
-/

namespace A241200.P3359759187404524384
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A241200.P3359759187404524384

namespace A241200

/-- `∑[lcm(2, n+3)/2]-1` -/
def P3359759187404524384.Spec : Prop :=
  ∀ n, P3359759187404524384.a n = (A241200 (n + 1) : ℚ)

end A241200

/-! ## A241200.P14057787865107925020

`∑[gcd(n+3, ∑[n]+n)]-1`
-/

namespace A241200.P14057787865107925020
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 3) (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A241200.P14057787865107925020

namespace A241200

/-- `∑[gcd(n+3, ∑[n]+n)]-1` -/
def P14057787865107925020.Spec : Prop :=
  ∀ n, P14057787865107925020.a n = A241200 (n + 1)

end A241200

/-! ## A241200.P13894127154819643231

`∑[(n+3)/(and(1, n)+1)]-1`
-/

namespace A241200.P13894127154819643231
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (Nat.land 1 n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A241200.P13894127154819643231

namespace A241200

/-- `∑[(n+3)/(and(1, n)+1)]-1` -/
def P13894127154819643231.Spec : Prop :=
  ∀ n, P13894127154819643231.a n = (A241200 (n + 1) : ℚ)

end A241200

/-! ## A241200.P5151487133958196392

`∑[gcd(2, n)*∑[char[2*n]]]+n`
-/

namespace A241200.P5151487133958196392
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A241200.P5151487133958196392

namespace A241200

/-- `∑[gcd(2, n)*∑[char[2*n]]]+n` -/
def P5151487133958196392.Spec : Prop :=
  ∀ n, (P5151487133958196392.a n : ℤ) = A241200 (n + 1)

end A241200

/-! ## A241200.P17536717311406360418

`∑[C(n+3, 2)/a(n-1)]` with `a(0)=2, a(1)=2`
-/

namespace A241200.P17536717311406360418
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  (Nat.choose (n + 3) 2 : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241200.P17536717311406360418

namespace A241200

/-- `∑[C(n+3, 2)/a(n-1)]` -/
def P17536717311406360418.Spec : Prop :=
  ∀ n, P17536717311406360418.a n = (A241200 (n + 1) : ℚ)

end A241200

/-! ## A241200.P13111031138016136384

`∑[(∑[n+2]+1)/a(n-1)]` with `a(0)=2, a(1)=2`
-/

namespace A241200.P13111031138016136384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241200.P13111031138016136384

namespace A241200

/-- `∑[(∑[n+2]+1)/a(n-1)]` -/
def P13111031138016136384.Spec : Prop :=
  ∀ n, P13111031138016136384.a n = (A241200 (n + 1) : ℚ)

end A241200

/-! ## A241200.P7038489276752308019

`∑[(n+3)/(char[2*n+1]+1)]-1`
-/

namespace A241200.P7038489276752308019
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (((if ∃ j, f2 j = n then 1 else 0) + 1 : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A241200.P7038489276752308019

namespace A241200

/-- `∑[(n+3)/(char[2*n+1]+1)]-1` -/
def P7038489276752308019.Spec : Prop :=
  ∀ n, P7038489276752308019.a n = (A241200 (n + 1) : ℚ)

end A241200

/-! ## A241200.P12091613934224808617

`∑[∑[3-a(n-1)]-n%a(n-1)]` with `a(0)=2`
-/

namespace A241200.P12091613934224808617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - Int.tmod (n : ℤ) (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241200.P12091613934224808617

namespace A241200

/-- `∑[∑[3-a(n-1)]-n%a(n-1)]` -/
def P12091613934224808617.Spec : Prop :=
  ∀ n, P12091613934224808617.a n = A241200 (n + 1)

end A241200

/-! ## A241200.P2274470385201545022

`∑[A008619(n)*A040001(n)+1]`
-/

namespace A241200.P2274470385201545022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A040001 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241200.P2274470385201545022

namespace A241200

/-- `∑[A008619(n)*A040001(n)+1]` -/
def P2274470385201545022.Spec : Prop :=
  ∀ n, P2274470385201545022.a n = A241200 (n + 1)

end A241200

/-! ## A241200.P17285251006564159788

`abs(∑[1-A026741(n+3)]-n)`
-/

namespace A241200.P17285251006564159788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A026741 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A241200.P17285251006564159788

namespace A241200

/-- `abs(∑[1-A026741(n+3)]-n)` -/
def P17285251006564159788.Spec : Prop :=
  ∀ n, P17285251006564159788.a n = A241200 (n + 1)

end A241200

/-! ## A241200.P17003280655685478535

`∑[A026741(ceil(sqrt(n²+2+n))+2)]`
-/

namespace A241200.P17003280655685478535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (⌈Real.sqrt (n ^ 2 + 2 + n : ℝ)⌉ + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241200.P17003280655685478535

namespace A241200

/-- `∑[A026741(ceil(sqrt(n²+2+n))+2)]` -/
def P17003280655685478535.Spec : Prop :=
  ∀ n, P17003280655685478535.a n = A241200 (n + 1)

end A241200

/-! ## A241200.P5825524147586322512

`(A016777(A001651(n+1))+A001082(n+1))/2`
-/

namespace A241200.P5825524147586322512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016777 (A001651 (n + 1)).toNat + A001082 (n + 1) : ℚ) / 2

end

end A241200.P5825524147586322512

namespace A241200

/-- `(A016777(A001651(n+1))+A001082(n+1))/2` -/
def P5825524147586322512.Spec : Prop :=
  ∀ n, P5825524147586322512.a n = (A241200 (n + 1) : ℚ)

end A241200

/-! ## A241200.P15041750872195860002

`A186357(A007494(n+1))`
-/

namespace A241200.P15041750872195860002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186357 (A007494 (n + 1)).toNat

end

end A241200.P15041750872195860002

namespace A241200

/-- `A186357(A007494(n+1))` -/
def P15041750872195860002.Spec : Prop :=
  ∀ n, P15041750872195860002.a n = A241200 (n + 1)

end A241200

/-! ## A241200.P844966377787540804

`A186357(A294732(n+3))`
-/

namespace A241200.P844966377787540804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186357 (A294732 (n + 3)).toNat

end

end A241200.P844966377787540804

namespace A241200

/-- `A186357(A294732(n+3))` -/
def P844966377787540804.Spec : Prop :=
  ∀ n, P844966377787540804.a n = A241200 (n + 1)

end A241200

/-! ## A241200.P11005625252528340722

`A186357(A004526(n)+2+n)`
-/

namespace A241200.P11005625252528340722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186357 (A004526 n + 2 + (n : ℤ)).toNat

end

end A241200.P11005625252528340722

namespace A241200

/-- `A186357(A004526(n)+2+n)` -/
def P11005625252528340722.Spec : Prop :=
  ∀ n, P11005625252528340722.a n = A241200 (n + 1)

end A241200

/-! ## A241200.P3035214046734558682

`∑[A011782(n)%3*∑[char[2*n]]+1]`
-/

namespace A241200.P3035214046734558682
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 n) 3 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241200.P3035214046734558682

namespace A241200

/-- `∑[A011782(n)%3*∑[char[2*n]]+1]` -/
def P3035214046734558682.Spec : Prop :=
  ∀ n, P3035214046734558682.a n = A241200 (n + 1)

end A241200

/-! ## A241200.P7053791463175037787

`eq[1, A263232(n+2)]`
-/

namespace A241200.P7053791463175037787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263232 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241200.P7053791463175037787

namespace A241200

/-- `eq[1, A263232(n+2)]` -/
def P7053791463175037787.Spec : Prop :=
  ∀ n, (P7053791463175037787.a n : ℤ) = A241200 (n + 1)

end A241200

/-! ## A241200.P13259660593672355617

`eq[1, A116633(n+2)]`
-/

namespace A241200.P13259660593672355617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116633 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241200.P13259660593672355617

namespace A241200

/-- `eq[1, A116633(n+2)]` -/
def P13259660593672355617.Spec : Prop :=
  ∀ n, (P13259660593672355617.a n : ℤ) = A241200 (n + 1)

end A241200

/-!
# A241202: Beginning of a polynomial relation of degree n in n+2 terms in the first half of Pascal's triangle. See A241201.

The programs for A241202, there is no canonical definition to state claims against.
-/

/-! ## A241202.P15797147464646832849

`A001614((∑[round(sqrt(2*n))]+1)^2^(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A241202.P15797147464646832849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℝ) ^ ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ) : ℤ) : ℝ))).toNat

end

end A241202.P15797147464646832849

/-!
# A241203: a(n) = floor(5^n/4^(n-1)).

The programs for A241203, the canonical program `A241203.P11684805632606127795` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241203 has offset 1).

The definition of A241203 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5^(n+1)/4^n)` (program `A241203.P11684805632606127795`, by `A241203.P11684805632606127795.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A241203.P13034399237939929638

`floor(4*(5/4)^(n+1))`
-/

namespace A241203.P13034399237939929638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((5 : ℚ) / 4) ^ (n + 1)⌋

end

end A241203.P13034399237939929638

namespace A241203

/-- `floor(4*(5/4)^(n+1))` -/
def P13034399237939929638.Spec : Prop :=
  ∀ n, P13034399237939929638.a n = A241203 (n + 1)

end A241203

/-! ## A241203.P11684805632606127795

`floor(5^(n+1)/4^n)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A241203

/-- `floor(5^(n+1)/4^n)` -/
def P11684805632606127795.Spec : Prop :=
  ∀ n, P11684805632606127795.a n = A241203 (n + 1)

theorem P11684805632606127795.correct : P11684805632606127795.Spec := by
  intro n
  simp only [A241203, Nat.add_sub_cancel]

end A241203

/-! ## A241203.P7871384232572055718

`floor(∑[cosh(log(2))^n])+4`
-/

namespace A241203.P7871384232572055718
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (Real.log (2 : ℝ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 4

end

end A241203.P7871384232572055718

namespace A241203

/-- `floor(∑[cosh(log(2))^n])+4` -/
def P7871384232572055718.Spec : Prop :=
  ∀ n, P7871384232572055718.a n = A241203 (n + 1)

end A241203

/-! ## A241203.P13261738260587713494

`floor(∑[5/4*a(n-1)])+4` with `a(0)=1`
-/

namespace A241203.P13261738260587713494
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (5 : ℚ) / 4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 4

end

end A241203.P13261738260587713494

namespace A241203

/-- `floor(∑[5/4*a(n-1)])+4` -/
def P13261738260587713494.Spec : Prop :=
  ∀ n, P13261738260587713494.a n = A241203 (n + 1)

end A241203

/-! ## A241203.P12213387436149535611

`floor(∑[a(n-1)+a(n-1)/4])+4` with `a(0)=1`
-/

namespace A241203.P12213387436149535611
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + f1 (n - 1) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 4

end

end A241203.P12213387436149535611

namespace A241203

/-- `floor(∑[a(n-1)+a(n-1)/4])+4` -/
def P12213387436149535611.Spec : Prop :=
  ∀ n, P12213387436149535611.a n = A241203 (n + 1)

end A241203

/-! ## A241203.P6637955025528482577

`ceil(A057428(n)+5*(5/4)^n)`
-/

namespace A241203.P6637955025528482577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℚ) + 5 * ((5 : ℚ) / 4) ^ n⌉

end

end A241203.P6637955025528482577

namespace A241203

/-- `ceil(A057428(n)+5*(5/4)^n)` -/
def P6637955025528482577.Spec : Prop :=
  ∀ n, P6637955025528482577.a n = A241203 (n + 1)

end A241203

/-! ## A241203.P1062881484007958002

`record[floor(A110595(n+1)/A003947(n))]`
-/

namespace A241203.P1062881484007958002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A110595 (n + 1) : ℚ) / (A003947 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241203.P1062881484007958002

namespace A241203

/-- `record[floor(A110595(n+1)/A003947(n))]` -/
def P1062881484007958002.Spec : Prop :=
  ∀ n, P1062881484007958002.a n = A241203 (n + 1)

end A241203

/-!
# A241204: Expansion of (1 + 2*x)^2/(1 - 2*x)^2.

The programs for A241204, the canonical program `A241204.P16377557186874419405` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241204 has offset 0).

The definition of A241204 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x+4x^2)/(1-4x+4x^2))` (program `A241204.P16377557186874419405`, by `A241204.P16377557186874419405.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A241204.P16377557186874419405

`ogf((1+4x+4x^2)/(1-4x+4x^2))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A241204

/-- `ogf((1+4x+4x^2)/(1-4x+4x^2))` -/
def P16377557186874419405.Spec : Prop :=
  ∀ n, P16377557186874419405.a n = A241204 n

theorem P16377557186874419405.correct : P16377557186874419405.Spec := by
  intro n
  simp only [A241204]

end A241204

/-! ## A241204.P15175955668953044137

`4*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=8, a(2)=32`
-/

namespace A241204.P15175955668953044137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 32] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2)

end

end A241204.P15175955668953044137

namespace A241204

/-- `4*a(n-1)-4*a(n-2)` -/
def P15175955668953044137.Spec : Prop :=
  ∀ n, P15175955668953044137.a n = A241204 n

end A241204

/-! ## A241204.P8516583912930907331

`2*(a(n-1)+2^(n+1))` with `a(0)=1, a(1)=8`
-/

namespace A241204.P8516583912930907331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  2 * (a (n - 1) + 2 ^ (n + 1))

end

end A241204.P8516583912930907331

namespace A241204

/-- `2*(a(n-1)+2^(n+1))` -/
def P8516583912930907331.Spec : Prop :=
  ∀ n, (P8516583912930907331.a n : ℤ) = A241204 n

end A241204

/-! ## A241204.P6424726779341115808

`2*n*a(n-1)/(n-1)` with `a(0)=1, a(1)=8`
-/

namespace A241204.P6424726779341115808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 8] fun n a =>
  (2 * n : ℚ) * (a (n - 1) / ((n : ℤ) - 1 : ℚ))

end

end A241204.P6424726779341115808

namespace A241204

/-- `2*n*a(n-1)/(n-1)` -/
def P6424726779341115808.Spec : Prop :=
  ∀ n, P6424726779341115808.a n = (A241204 n : ℚ)

end A241204

/-! ## A241204.P10424471704162268495

`2^n*A008574(n)`
-/

namespace A241204.P10424471704162268495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A008574 n

end

end A241204.P10424471704162268495

namespace A241204

/-- `2^n*A008574(n)` -/
def P10424471704162268495.Spec : Prop :=
  ∀ n, P10424471704162268495.a n = A241204 n

end A241204

/-! ## A241204.P13786435463671553911

`record[(n+1)*A143095(n)]`
-/

namespace A241204.P13786435463671553911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A143095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241204.P13786435463671553911

namespace A241204

/-- `record[(n+1)*A143095(n)]` -/
def P13786435463671553911.Spec : Prop :=
  ∀ n, P13786435463671553911.a n = A241204 n

end A241204

/-! ## A241204.P7154424387192995539

`record[(1-n)*A152166(n)]`
-/

namespace A241204.P7154424387192995539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A152166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241204.P7154424387192995539

namespace A241204

/-- `record[(1-n)*A152166(n)]` -/
def P7154424387192995539.Spec : Prop :=
  ∀ n, P7154424387192995539.a n = A241204 n

end A241204

/-! ## A241204.P6296234715834273937

`A057428(n)+A048479(n)`
-/

namespace A241204.P6296234715834273937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A048479 n

end

end A241204.P6296234715834273937

namespace A241204

/-- `A057428(n)+A048479(n)` -/
def P6296234715834273937.Spec : Prop :=
  ∀ n, P6296234715834273937.a n = A241204 n

end A241204

/-! ## A241204.P5744801363069854708

`A048479(n)-A057427(n)`
-/

namespace A241204.P5744801363069854708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048479 n - A057427 n

end

end A241204.P5744801363069854708

namespace A241204

/-- `A048479(n)-A057427(n)` -/
def P5744801363069854708.Spec : Prop :=
  ∀ n, P5744801363069854708.a n = A241204 n

end A241204

/-! ## A241204.P12551416731371514412

`A011782(n)*A022144(n)`
-/

namespace A241204.P12551416731371514412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A022144 n

end

end A241204.P12551416731371514412

namespace A241204

/-- `A011782(n)*A022144(n)` -/
def P12551416731371514412.Spec : Prop :=
  ∀ n, P12551416731371514412.a n = A241204 n

end A241204

/-! ## A241204.P6333215155240367938

`A028310(n)*A146541(n)`
-/

namespace A241204.P6333215155240367938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A146541 n

end

end A241204.P6333215155240367938

namespace A241204

/-- `A028310(n)*A146541(n)` -/
def P6333215155240367938.Spec : Prop :=
  ∀ n, P6333215155240367938.a n = A241204 n

end A241204

/-! ## A241204.P16231537655472735368

`A123932(n)*A134401(n)`
-/

namespace A241204.P16231537655472735368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123932 n * A134401 n

end

end A241204.P16231537655472735368

namespace A241204

/-- `A123932(n)*A134401(n)` -/
def P16231537655472735368.Spec : Prop :=
  ∀ n, P16231537655472735368.a n = A241204 n

end A241204

/-! ## A241204.P15809864743195867092

`and(A048479(n), A143336(n))`
-/

namespace A241204.P15809864743195867092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A143336 n)

end

end A241204.P15809864743195867092

namespace A241204

/-- `and(A048479(n), A143336(n))` -/
def P15809864743195867092.Spec : Prop :=
  ∀ n, P15809864743195867092.a n = A241204 n

end A241204

/-! ## A241204.P18395379088557955685

`and(A048479(n), A165751(n))`
-/

namespace A241204.P18395379088557955685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A165751 n)

end

end A241204.P18395379088557955685

namespace A241204

/-- `and(A048479(n), A165751(n))` -/
def P18395379088557955685.Spec : Prop :=
  ∀ n, P18395379088557955685.a n = A241204 n

end A241204

/-! ## A241204.P4941135149401529129

`and(A048479(n), A230057(n))`
-/

namespace A241204.P4941135149401529129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A230057 n)

end

end A241204.P4941135149401529129

namespace A241204

/-- `and(A048479(n), A230057(n))` -/
def P4941135149401529129.Spec : Prop :=
  ∀ n, P4941135149401529129.a n = A241204 n

end A241204

/-! ## A241204.P13672725969229483383

`and(A048479(n), A256624(n))`
-/

namespace A241204.P13672725969229483383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A256624 n)

end

end A241204.P13672725969229483383

namespace A241204

/-- `and(A048479(n), A256624(n))` -/
def P13672725969229483383.Spec : Prop :=
  ∀ n, P13672725969229483383.a n = A241204 n

end A241204

/-! ## A241204.P14437218451206023996

`xor(A118417(n), A198633(n))`
-/

namespace A241204.P14437218451206023996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A118417 n) (A198633 n)

end

end A241204.P14437218451206023996

namespace A241204

/-- `xor(A118417(n), A198633(n))` -/
def P14437218451206023996.Spec : Prop :=
  ∀ n, P14437218451206023996.a n = A241204 n

end A241204

/-! ## A241204.P10657642945787998251

`A118417(n)-A151821(n+1)`
-/

namespace A241204.P10657642945787998251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118417 n - A151821 (n + 1)

end

end A241204.P10657642945787998251

namespace A241204

/-- `A118417(n)-A151821(n+1)` -/
def P10657642945787998251.Spec : Prop :=
  ∀ n, P10657642945787998251.a n = A241204 n

end A241204

/-! ## A241204.P11053492338716312448

`A118415(n+1)-A155559(n)`
-/

namespace A241204.P11053492338716312448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118415 (n + 1) - A155559 n

end

end A241204.P11053492338716312448

namespace A241204

/-- `A118415(n+1)-A155559(n)` -/
def P11053492338716312448.Spec : Prop :=
  ∀ n, P11053492338716312448.a n = A241204 n

end A241204

/-! ## A241204.P6105340320449668105

`A008574(n)*A011782(n+1)`
-/

namespace A241204.P6105340320449668105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n * A011782 (n + 1)

end

end A241204.P6105340320449668105

namespace A241204

/-- `A008574(n)*A011782(n+1)` -/
def P6105340320449668105.Spec : Prop :=
  ∀ n, P6105340320449668105.a n = A241204 n

end A241204

/-!
# A241205: Sum of x*y^2*z^3 for positive integers x,y,z with x + y + z = n.

The programs for A241205, the canonical program `A241205.P15385239283493477032` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241205 has offset 1).

The definition of A241205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241205.P15385239283493477032

`∑[∑[C(A002522(n), 3)/10]]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A241205

/-- `∑[∑[C(A002522(n), 3)/10]]` -/
def P15385239283493477032.Spec : Prop :=
  ∀ n, P15385239283493477032.a n = (A241205 (n + 1) : ℚ)

end A241205

/-! ## A241205.P18226724869708446505

`Δ[Δ[A133111(A028310(n))]]`
-/

namespace A241205.P18226724869708446505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133111 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241205.P18226724869708446505

namespace A241205

/-- `Δ[Δ[A133111(A028310(n))]]` -/
def P18226724869708446505.Spec : Prop :=
  ∀ n, P18226724869708446505.a n = A241205 (n + 1)

end A241205

/-! ## A241205.P7624488727697543510

`Δ[Δ[A133111(A000038(n)+n)]]`
-/

namespace A241205.P7624488727697543510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133111 (A000038 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241205.P7624488727697543510

namespace A241205

/-- `Δ[Δ[A133111(A000038(n)+n)]]` -/
def P7624488727697543510.Spec : Prop :=
  ∀ n, P7624488727697543510.a n = A241205 (n + 1)

end A241205

/-! ## A241205.P13614804194931702507

`Δ[Δ[A133111(A000007(n)+n)]]`
-/

namespace A241205.P13614804194931702507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133111 (A000007 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241205.P13614804194931702507

namespace A241205

/-- `Δ[Δ[A133111(A000007(n)+n)]]` -/
def P13614804194931702507.Spec : Prop :=
  ∀ n, P13614804194931702507.a n = A241205 (n + 1)

end A241205

/-! ## A241205.P8227604020164784006

`Δ[A133111(n+1)-A133111(A233583(n+1))]`
-/

namespace A241205.P8227604020164784006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133111 (n + 1) - A133111 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241205.P8227604020164784006

namespace A241205

/-- `Δ[A133111(n+1)-A133111(A233583(n+1))]` -/
def P8227604020164784006.Spec : Prop :=
  ∀ n, P8227604020164784006.a n = A241205 (n + 1)

end A241205

/-! ## A241205.P16396852632935732965

`Δ[Δ[A133111(A233583(n+1))]]`
-/

namespace A241205.P16396852632935732965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133111 (A233583 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241205.P16396852632935732965

namespace A241205

/-- `Δ[Δ[A133111(A233583(n+1))]]` -/
def P16396852632935732965.Spec : Prop :=
  ∀ n, P16396852632935732965.a n = A241205 (n + 1)

end A241205

/-!
# A241208: Number of binary strings of length 2n having exactly 1 factorization as a concatenation of one or more even-length palindromes.

The programs for A241208, there is no canonical definition to state claims against.
-/

/-! ## A241208.P18359087014471654782

`A102443(A061675(n))`
-/

namespace A241208.P18359087014471654782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102443 (A061675 n).toNat

end

end A241208.P18359087014471654782

/-! ## A241208.P8476260554778799734

`A072068(A203000(n))`
-/

namespace A241208.P8476260554778799734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072068 (A203000 n).toNat

end

end A241208.P8476260554778799734

/-!
# A241209: a(n) = E(n) - E(n+1), where E(n) are the Euler numbers A122045(n).

The programs for A241209, there is no canonical definition to state claims against.
-/

/-! ## A241209.P5380121637892369131

`A119880(n+1)-A119880(n)`
-/

namespace A241209.P5380121637892369131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119880 (n + 1) - A119880 n

end

end A241209.P5380121637892369131

/-! ## A241209.P16430008594918144698

`A122045(n)-A122045(n+1)`
-/

namespace A241209.P16430008594918144698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122045 n - A122045 (n + 1)

end

end A241209.P16430008594918144698

/-! ## A241209.P5892590792502282320

`Δ[A009832(n)]`
-/

namespace A241209.P5892590792502282320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241209.P5892590792502282320

/-! ## A241209.P4919261020078820112

`Δ[A119880(n)]`
-/

namespace A241209.P4919261020078820112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241209.P4919261020078820112

/-! ## A241209.P14902755334256255734

`Δ[-A122045(n)]`
-/

namespace A241209.P14902755334256255734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A122045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241209.P14902755334256255734

/-! ## A241209.P11207688558545155645

`Δ[A399331(∑[n])]`
-/

namespace A241209.P11207688558545155645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399331 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241209.P11207688558545155645

/-! ## A241209.P5268277074855680232

`Δ[Δ[-A009390(n)]]`
-/

namespace A241209.P5268277074855680232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A009390 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241209.P5268277074855680232

/-! ## A241209.P13447963969374099975

`A009832(n+1)-A009832(n)`
-/

namespace A241209.P13447963969374099975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009832 (n + 1) - A009832 n

end

end A241209.P13447963969374099975

/-! ## A241209.P14030695711197815442

`Δ[A009390(n)-A009390(n+1)]`
-/

namespace A241209.P14030695711197815442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009390 n - A009390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241209.P14030695711197815442

/-! ## A241209.P10450175062953098268

`A000111(A000035(n)+n)*A057077(n)`
-/

namespace A241209.P10450175062953098268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (A000035 n + (n : ℤ)).toNat * A057077 n

end

end A241209.P10450175062953098268

/-!
# A241212: Primes p with an even number of digits such that each digit in the second half of p is larger by 1 than the corresponding digit in the first half.

The programs for A241212, there is no canonical definition to state claims against.
-/

/-! ## A241212.P14729704135328611490

`p?[A351653(n)+A272655(n+1)]`
-/

namespace A241212.P14729704135328611490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351653 n + A272655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241212.P14729704135328611490

/-!
# A241213: a(n) is built digit-by-digit (see comments for details).

The programs for A241213, there is no canonical definition to state claims against.
-/

/-! ## A241213.P17630640600009624446

`∑[A047930(Δ[A133794(n+1)])]`
-/

namespace A241213.P17630640600009624446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133794 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047930 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241213.P17630640600009624446

/-! ## A241213.P18046393751499237324

`∑[A089867(Δ[A133794(n+1)])]`
-/

namespace A241213.P18046393751499237324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133794 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241213.P18046393751499237324

/-! ## A241213.P3592276166288703137

`∑[A111608(Δ[A133794(n+1)])]`
-/

namespace A241213.P3592276166288703137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133794 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111608 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241213.P3592276166288703137

/-! ## A241213.P11611956245857869260

`∑[A000188(Δ[A133794(n+1)]²)]`
-/

namespace A241213.P11611956245857869260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133794 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241213.P11611956245857869260

/-! ## A241213.P1564766275269717225

`∑[A000189(Δ[A133794(n+1)]²)]`
-/

namespace A241213.P1564766275269717225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133794 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241213.P1564766275269717225

/-! ## A241213.P18177190940678592568

`∑[A003557(Δ[A133794(n+1)]²)]`
-/

namespace A241213.P18177190940678592568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133794 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241213.P18177190940678592568

/-! ## A241213.P1268348952113747633

`∑[A007947(Δ[A133794(n+1)]²)]`
-/

namespace A241213.P1268348952113747633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133794 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241213.P1268348952113747633

/-! ## A241213.P12144407931299973501

`∑[A048798(Δ[A133794(n+1)]²)]`
-/

namespace A241213.P12144407931299973501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133794 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241213.P12144407931299973501

/-!
# A241214: Solutions of the equation (n+2)' = (n+1)' + n', where n' is the arithmetic derivative of n.

The programs for A241214, there is no canonical definition to state claims against.
-/

/-! ## A241214.P4673907874375386836

`A276701(n+2)-2`
-/

namespace A241214.P4673907874375386836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276701 (n + 2) - 2

end

end A241214.P4673907874375386836

/-!
# A241216: Number of d-swaps required to reverse the bits in an n-bit word.

The programs for A241216, there is no canonical definition to state claims against.
-/

/-! ## A241216.P16472884324451407115

`A125173(n+1)-A010894(A252463(n+1))`
-/

namespace A241216.P16472884324451407115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125173 (n + 1) - A010894 ((A252463 (n + 1)).toNat + 21)

end

end A241216.P16472884324451407115

/-! ## A241216.P14724113572835371435

`A125173(n+1)-A010054(A157956(n+1))`
-/

namespace A241216.P14724113572835371435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125173 (n + 1) - A010054 (A157956 (n + 1)).toNat

end

end A241216.P14724113572835371435

/-! ## A241216.P10843024237657854526

`A125173(∑[A185245(n)!])`
-/

namespace A241216.P10843024237657854526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A185245 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125173 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241216.P10843024237657854526

/-! ## A241216.P4551481280089243244

`A125173(A185245(n)!+n)`
-/

namespace A241216.P4551481280089243244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125173 (Nat.factorial (A185245 n).toNat + n)

end

end A241216.P4551481280089243244

/-! ## A241216.P7694973553940261968

`A125173(∑[A185245(n+1)+1])`
-/

namespace A241216.P7694973553940261968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185245 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125173 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A241216.P7694973553940261968

/-!
# A241217: Largest number that when multiplied by 7 produces an n-digit number.

The programs for A241217, the canonical program `A241217.P10415038700242459250` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241217 has offset 1).

The definition of A241217 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241217.P10415038700242459250

`floor(10^(n+1)/7)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A241217

/-- `floor(10^(n+1)/7)` -/
def P10415038700242459250.Spec : Prop :=
  ∀ n, P10415038700242459250.a n = A241217 (n + 1)

theorem P10415038700242459250.correct : P10415038700242459250.Spec := by
  intro n
  simp only [A241217, Nat.add_sub_cancel]

end A241217

/-! ## A241217.P482140636326946742

`ogf((1+3x-2x^2+7x^3)/(1-11x+10x^2+x^3-11x^4+10x^5))`
-/

namespace A241217.P482140636326946742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -2, 7] [1, -11, 10, 1, -11, 10] n

end

end A241217.P482140636326946742

namespace A241217

/-- `ogf((1+3x-2x^2+7x^3)/(1-11x+10x^2+x^3-11x^4+10x^5))` -/
def P482140636326946742.Spec : Prop :=
  ∀ n, P482140636326946742.a n = A241217 (n + 1)

end A241217

/-! ## A241217.P1548335353290470738

`A343915(6*n)`
-/

namespace A241217.P1548335353290470738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343915 (6 * n)

end

end A241217.P1548335353290470738

namespace A241217

/-- `A343915(6*n)` -/
def P1548335353290470738.Spec : Prop :=
  ∀ n, P1548335353290470738.a n = A241217 (n + 1)

end A241217

/-! ## A241217.P5521654620437825402

`round(A173833(n+1)/7)`
-/

namespace A241217.P5521654620437825402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A173833 (n + 1) : ℚ) / 7)

end

end A241217.P5521654620437825402

namespace A241217

/-- `round(A173833(n+1)/7)` -/
def P5521654620437825402.Spec : Prop :=
  ∀ n, P5521654620437825402.a n = A241217 (n + 1)

end A241217

/-! ## A241217.P6405545435664155970

`ceil((A170955(n+1)+2)/7)`
-/

namespace A241217.P6405545435664155970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A170955 (n + 1) + 2 : ℚ) / 7⌉

end

end A241217.P6405545435664155970

namespace A241217

/-- `ceil((A170955(n+1)+2)/7)` -/
def P6405545435664155970.Spec : Prop :=
  ∀ n, P6405545435664155970.a n = A241217 (n + 1)

end A241217

/-! ## A241217.P7300851424280822993

`round(A185123(n)/14)`
-/

namespace A241217.P7300851424280822993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A185123 n : ℚ) / 14)

end

end A241217.P7300851424280822993

namespace A241217

/-- `round(A185123(n)/14)` -/
def P7300851424280822993.Spec : Prop :=
  ∀ n, P7300851424280822993.a n = A241217 (n + 1)

end A241217

/-! ## A241217.P4987635206052129034

`round((A133384(n)-5)/7)`
-/

namespace A241217.P4987635206052129034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A133384 n - 5 : ℚ) / 7)

end

end A241217.P4987635206052129034

namespace A241217

/-- `round((A133384(n)-5)/7)` -/
def P4987635206052129034.Spec : Prop :=
  ∀ n, P4987635206052129034.a n = A241217 (n + 1)

end A241217

/-! ## A241217.P9593513577771085559

`round(A086946(n+1)/14)`
-/

namespace A241217.P9593513577771085559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A086946 (n + 1) : ℚ) / 14)

end

end A241217.P9593513577771085559

namespace A241217

/-- `round(A086946(n+1)/14)` -/
def P9593513577771085559.Spec : Prop :=
  ∀ n, P9593513577771085559.a n = A241217 (n + 1)

end A241217

/-!
# A241219: Number of ways to choose two points on a centered hexagonal grid of size n.

The programs for A241219, the canonical program `A241219.P13267735989675983431` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241219 has offset 1).

The definition of A241219 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241219.P8652036714512246467

`ogf((21x+66x^2+21x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A241219.P8652036714512246467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 21, 66, 21] [1, -5, 10, -10, 5, -1] n

end

end A241219.P8652036714512246467

namespace A241219

/-- `ogf((21x+66x^2+21x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P8652036714512246467.Spec : Prop :=
  ∀ n, P8652036714512246467.a n = A241219 (n + 1)

end A241219

/-! ## A241219.P13267735989675983431

`C(3*(n+1)²-3*(n+1)+1, 2)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A241219

/-- `C(3*(n+1)²-3*(n+1)+1, 2)` -/
def P13267735989675983431.Spec : Prop :=
  ∀ n, (P13267735989675983431.a n : ℤ) = A241219 (n + 1)

theorem P13267735989675983431.correct : P13267735989675983431.Spec := by
  intro n
  simp only [A241219, Nat.add_sub_cancel]

end A241219

/-! ## A241219.P14616859904988072345

`3/2*(n+1)*n*(3*(n+1)²-3*(n+1)+1)`
-/

namespace A241219.P14616859904988072345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (n + 1 : ℚ) * (n : ℚ) * ((3 * (n + 1) ^ 2 : ℤ) - (3 * (n + 1) : ℤ) + 1 : ℚ)

end

end A241219.P14616859904988072345

namespace A241219

/-- `3/2*(n+1)*n*(3*(n+1)²-3*(n+1)+1)` -/
def P14616859904988072345.Spec : Prop :=
  ∀ n, P14616859904988072345.a n = (A241219 (n + 1) : ℚ)

end A241219

/-! ## A241219.P2242244353819490170

`∑[6*n]+C(∑[6*n], 2)`
-/

namespace A241219.P2242244353819490170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2

end

end A241219.P2242244353819490170

namespace A241219

/-- `∑[6*n]+C(∑[6*n], 2)` -/
def P2242244353819490170.Spec : Prop :=
  ∀ n, (P2242244353819490170.a n : ℤ) = A241219 (n + 1)

end A241219

/-! ## A241219.P2004688906692934859

`C(3*(n²+n), 2)+3*(n²+n)`
-/

namespace A241219.P2004688906692934859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * (n ^ 2 + n)) 2 + 3 * (n ^ 2 + n)

end

end A241219.P2004688906692934859

namespace A241219

/-- `C(3*(n²+n), 2)+3*(n²+n)` -/
def P2004688906692934859.Spec : Prop :=
  ∀ n, (P2004688906692934859.a n : ℤ) = A241219 (n + 1)

end A241219

/-! ## A241219.P4482240812989051209

`∑[n*(A010008(n)+1)]`
-/

namespace A241219.P4482240812989051209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A010008 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241219.P4482240812989051209

namespace A241219

/-- `∑[n*(A010008(n)+1)]` -/
def P4482240812989051209.Spec : Prop :=
  ∀ n, P4482240812989051209.a n = A241219 (n + 1)

end A241219

/-! ## A241219.P11908247483500877603

`lcm(∑[3*n], A003215(n))`
-/

namespace A241219.P11908247483500877603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A003215 n)

end

end A241219.P11908247483500877603

namespace A241219

/-- `lcm(∑[3*n], A003215(n))` -/
def P11908247483500877603.Spec : Prop :=
  ∀ n, (P11908247483500877603.a n : ℤ) = A241219 (n + 1)

end A241219

/-! ## A241219.P2342486241944569891

`∑[3*n*(A005897(n)-1)]`
-/

namespace A241219.P2342486241944569891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) * (A005897 n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241219.P2342486241944569891

namespace A241219

/-- `∑[3*n*(A005897(n)-1)]` -/
def P2342486241944569891.Spec : Prop :=
  ∀ n, P2342486241944569891.a n = A241219 (n + 1)

end A241219

/-! ## A241219.P11872248750355570148

`(n+1)*A121628(n+1)/2`
-/

namespace A241219.P11872248750355570148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A121628 (n + 1) : ℚ) / 2

end

end A241219.P11872248750355570148

namespace A241219

/-- `(n+1)*A121628(n+1)/2` -/
def P11872248750355570148.Spec : Prop :=
  ∀ n, P11872248750355570148.a n = (A241219 (n + 1) : ℚ)

end A241219

/-! ## A241219.P14572691562925142812

`lcm(A003215(n), A045943(n))`
-/

namespace A241219.P14572691562925142812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003215 n) (A045943 n)

end

end A241219.P14572691562925142812

namespace A241219

/-- `lcm(A003215(n), A045943(n))` -/
def P14572691562925142812.Spec : Prop :=
  ∀ n, (P14572691562925142812.a n : ℤ) = A241219 (n + 1)

end A241219

/-! ## A241219.P14360261046893354891

`A079903(n+1)-A003215(n)`
-/

namespace A241219.P14360261046893354891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079903 (n + 1) - A003215 n

end

end A241219.P14360261046893354891

namespace A241219

/-- `A079903(n+1)-A003215(n)` -/
def P14360261046893354891.Spec : Prop :=
  ∀ n, P14360261046893354891.a n = A241219 (n + 1)

end A241219

/-! ## A241219.P10199544070263928604

`(A028896(n)+A028896(n)²)/2`
-/

namespace A241219.P10199544070263928604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028896 n + A028896 n ^ 2 : ℚ) / 2

end

end A241219.P10199544070263928604

namespace A241219

/-- `(A028896(n)+A028896(n)²)/2` -/
def P10199544070263928604.Spec : Prop :=
  ∀ n, P10199544070263928604.a n = (A241219 (n + 1) : ℚ)

end A241219

/-! ## A241219.P9740225334823903499

`C(Δ[Δ[C(n, 2)²]], 2)`
-/

namespace A241219.P9740225334823903499
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A241219.P9740225334823903499

namespace A241219

/-- `C(Δ[Δ[C(n, 2)²]], 2)` -/
def P9740225334823903499.Spec : Prop :=
  ∀ n, (P9740225334823903499.a n : ℤ) = A241219 (n + 1)

end A241219

/-! ## A241219.P1127179804391326888

`record[C(A246919(n+1), 2)]`
-/

namespace A241219.P1127179804391326888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A246919 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241219.P1127179804391326888

namespace A241219

/-- `record[C(A246919(n+1), 2)]` -/
def P1127179804391326888.Spec : Prop :=
  ∀ n, (P1127179804391326888.a n : ℤ) = A241219 (n + 1)

end A241219

/-! ## A241219.P6116566335378140026

`∑[n*A093328(3*n)]`
-/

namespace A241219.P6116566335378140026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A093328 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241219.P6116566335378140026

namespace A241219

/-- `∑[n*A093328(3*n)]` -/
def P6116566335378140026.Spec : Prop :=
  ∀ n, P6116566335378140026.a n = A241219 (n + 1)

end A241219

/-! ## A241219.P3482319621561725224

`A144314(∑[n])`
-/

namespace A241219.P3482319621561725224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144314 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241219.P3482319621561725224

namespace A241219

/-- `A144314(∑[n])` -/
def P3482319621561725224.Spec : Prop :=
  ∀ n, P3482319621561725224.a n = A241219 (n + 1)

end A241219

/-! ## A241219.P11839437281686138626

`A081275(A000217(n))-(∑[9*n]+1)`
-/

namespace A241219.P11839437281686138626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081275 (A000217 n).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A241219.P11839437281686138626

namespace A241219

/-- `A081275(A000217(n))-(∑[9*n]+1)` -/
def P11839437281686138626.Spec : Prop :=
  ∀ n, P11839437281686138626.a n = A241219 (n + 1)

end A241219

/-! ## A241219.P7885378223001607682

`A081266(∑[2*n])`
-/

namespace A241219.P7885378223001607682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081266 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241219.P7885378223001607682

namespace A241219

/-- `A081266(∑[2*n])` -/
def P7885378223001607682.Spec : Prop :=
  ∀ n, P7885378223001607682.a n = A241219 (n + 1)

end A241219

/-! ## A241219.P5482386797570397995

`A038764(∑[2*n])-1`
-/

namespace A241219.P5482386797570397995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A241219.P5482386797570397995

namespace A241219

/-- `A038764(∑[2*n])-1` -/
def P5482386797570397995.Spec : Prop :=
  ∀ n, P5482386797570397995.a n = A241219 (n + 1)

end A241219

/-! ## A241219.P16963005170823182611

`A045945(∑[2*n])/2`
-/

namespace A241219.P16963005170823182611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045945 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A241219.P16963005170823182611

namespace A241219

/-- `A045945(∑[2*n])/2` -/
def P16963005170823182611.Spec : Prop :=
  ∀ n, P16963005170823182611.a n = (A241219 (n + 1) : ℚ)

end A241219

/-!
# A241222: Number of collinear point triples on a centered hexagonal grid of size n.

The programs for A241222, there is no canonical definition to state claims against.
-/

/-! ## A241222.P15439242944914897490

`C(Δ[n^3], 3)-A241223(n+1)`
-/

namespace A241222.P15439242944914897490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 3 : ℤ) - A241223 (n + 1)

end

end A241222.P15439242944914897490

/-! ## A241222.P12121958604030431917

`A240826(n+1)-A241223(n+1)`
-/

namespace A241222.P12121958604030431917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240826 (n + 1) - A241223 (n + 1)

end

end A241222.P12121958604030431917

/-! ## A241222.P6857807528213192900

`record[C(A246919(n+1), 3)]-A241223(n+1)`
-/

namespace A241222.P6857807528213192900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A246919 (n + 1)).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - A241223 (n + 1)

end

end A241222.P6857807528213192900

/-! ## A241222.P16659607255239782842

`A240826(n+1)%A241223(A233583(n+2))`
-/

namespace A241222.P16659607255239782842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240826 (n + 1)) (A241223 (A233583 (n + 2)).toNat)

end

end A241222.P16659607255239782842

/-! ## A241222.P291059789953677856

`C(A003215(n), 3)+A005843(n)%2-A241223(n+1)`
-/

namespace A241222.P291059789953677856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003215 n).toNat 3 : ℤ) + Int.tmod (A005843 n) 2 - A241223 (n + 1)

end

end A241222.P291059789953677856

/-! ## A241222.P8575567634821623928

`(n+1)²*A016766(n)*A000217(n)-A000217(n)-A241223(n+1)`
-/

namespace A241222.P8575567634821623928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A016766 n * A000217 n - A000217 n - A241223 (n + 1)

end

end A241222.P8575567634821623928

/-! ## A241222.P3405076655821295077

`A000447(∑[3*n])-A241223(n+1)`
-/

namespace A241222.P3405076655821295077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (∑ j ∈ Finset.range (n + 1), f1 j) - A241223 (n + 1)

end

end A241222.P3405076655821295077

/-!
# A241223: Number of triangles on a centered hexagonal grid of size n.

The programs for A241223, there is no canonical definition to state claims against.
-/

/-! ## A241223.P7232763472267246071

`A240826(n+1)-A241222(n+1)`
-/

namespace A241223.P7232763472267246071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240826 (n + 1) - A241222 (n + 1)

end

end A241223.P7232763472267246071

/-! ## A241223.P15345487783175161613

`A241227(n+1)+A241228(n+1)`
-/

namespace A241223.P15345487783175161613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241227 (n + 1) + A241228 (n + 1)

end

end A241223.P15345487783175161613

/-! ## A241223.P5707750146752235301

`A241224(n+1)+A241225(n+1)+A241226(n+1)`
-/

namespace A241223.P5707750146752235301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241224 (n + 1) + A241225 (n + 1) + A241226 (n + 1)

end

end A241223.P5707750146752235301

/-! ## A241223.P18244096060813637458

`record[C(A246919(n+1), 3)]-A241222(n+1)`
-/

namespace A241223.P18244096060813637458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A246919 (n + 1)).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - A241222 (n + 1)

end

end A241223.P18244096060813637458

/-! ## A241223.P11992473785648439212

`A240826(n+1)+A057428(n)*A241222(n+1)`
-/

namespace A241223.P11992473785648439212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240826 (n + 1) + A057428 n * A241222 (n + 1)

end

end A241223.P11992473785648439212

/-! ## A241223.P3375029027470393185

`C(A003215(n), 3)+A005843(n)%2-A241222(n+1)`
-/

namespace A241223.P3375029027470393185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A003215 n).toNat 3 : ℤ) + Int.tmod (A005843 n) 2 - A241222 (n + 1)

end

end A241223.P3375029027470393185

/-! ## A241223.P12870073975065765506

`(n+1)²*A016766(n)*A000217(n)-A000217(n)-A241222(n+1)`
-/

namespace A241223.P12870073975065765506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A016766 n * A000217 n - A000217 n - A241222 (n + 1)

end

end A241223.P12870073975065765506

/-! ## A241223.P15469481525159372843

`A000447(∑[3*n])-A241222(n+1)`
-/

namespace A241223.P15469481525159372843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (∑ j ∈ Finset.range (n + 1), f1 j) - A241222 (n + 1)

end

end A241223.P15469481525159372843

/-!
# A241224: Number of acute triangles on a centered hexagonal grid of size n.

The programs for A241224, there is no canonical definition to state claims against.
-/

/-! ## A241224.P10469029902140480534

`A241223(n+1)-A241225(n+1)-A241226(n+1)`
-/

namespace A241224.P10469029902140480534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241223 (n + 1) - A241225 (n + 1) - A241226 (n + 1)

end

end A241224.P10469029902140480534

/-!
# A241225: Number of right triangles on a centered hexagonal grid of size n.

The programs for A241225, there is no canonical definition to state claims against.
-/

/-! ## A241225.P8791281474162962061

`A241223(n+1)-A241224(n+1)-A241226(n+1)`
-/

namespace A241225.P8791281474162962061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241223 (n + 1) - A241224 (n + 1) - A241226 (n + 1)

end

end A241225.P8791281474162962061

/-!
# A241226: Number of obtuse triangles on a centered hexagonal grid of size n.

The programs for A241226, there is no canonical definition to state claims against.
-/

/-! ## A241226.P5444615578967151482

`A241223(n+1)-A241224(n+1)-A241225(n+1)`
-/

namespace A241226.P5444615578967151482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241223 (n + 1) - A241224 (n + 1) - A241225 (n + 1)

end

end A241226.P5444615578967151482

/-! ## A241226.P14480582050545841227

`A241223(n+1)-(A241225(n+1)+A241224(n+1))`
-/

namespace A241226.P14480582050545841227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241223 (n + 1) - (A241225 (n + 1) + A241224 (n + 1))

end

end A241226.P14480582050545841227

/-!
# A241227: Number of scalene triangles on a centered hexagonal grid of size n.

The programs for A241227, there is no canonical definition to state claims against.
-/

/-! ## A241227.P5094692826666975187

`A241223(n+1)-A241228(n+1)`
-/

namespace A241227.P5094692826666975187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241223 (n + 1) - A241228 (n + 1)

end

end A241227.P5094692826666975187

/-! ## A241227.P14219143390988815894

`C(Δ[n^3], 3)-A241222(n+1)-A241228(n+1)`
-/

namespace A241227.P14219143390988815894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 3 : ℤ) - A241222 (n + 1) - A241228 (n + 1)

end

end A241227.P14219143390988815894

/-! ## A241227.P3914689041787992460

`A240826(n+1)-(A241228(n+1)+A241222(n+1))`
-/

namespace A241227.P3914689041787992460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240826 (n + 1) - (A241228 (n + 1) + A241222 (n + 1))

end

end A241227.P3914689041787992460

/-! ## A241227.P16303826716699764809

`A241223(n+1)-(A241230(n+1)+A241229(n+1))`
-/

namespace A241227.P16303826716699764809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241223 (n + 1) - (A241230 (n + 1) + A241229 (n + 1))

end

end A241227.P16303826716699764809

/-! ## A241227.P8008562416489587202

`A000447(∑[3*n])-A241222(n+1)-A241228(n+1)`
-/

namespace A241227.P8008562416489587202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (∑ j ∈ Finset.range (n + 1), f1 j) - A241222 (n + 1) - A241228 (n + 1)

end

end A241227.P8008562416489587202

/-!
# A241228: Number of isosceles triangles on a centered hexagonal grid of size n.

The programs for A241228, there is no canonical definition to state claims against.
-/

/-! ## A241228.P5825444750215866943

`A241223(n+1)-A241227(n+1)`
-/

namespace A241228.P5825444750215866943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241223 (n + 1) - A241227 (n + 1)

end

end A241228.P5825444750215866943

/-! ## A241228.P480674135550483526

`A241230(n+1)+A241229(n+1)`
-/

namespace A241228.P480674135550483526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241230 (n + 1) + A241229 (n + 1)

end

end A241228.P480674135550483526

/-! ## A241228.P13319150857872523202

`C(Δ[n^3], 3)-A241222(n+1)-A241227(n+1)`
-/

namespace A241228.P13319150857872523202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 3 : ℤ) - A241222 (n + 1) - A241227 (n + 1)

end

end A241228.P13319150857872523202

/-! ## A241228.P12395596722818319018

`A240826(n+1)-(A241227(n+1)+A241222(n+1))`
-/

namespace A241228.P12395596722818319018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240826 (n + 1) - (A241227 (n + 1) + A241222 (n + 1))

end

end A241228.P12395596722818319018

/-! ## A241228.P15109109317191209262

`A000447(∑[3*n])-A241222(n+1)-A241227(n+1)`
-/

namespace A241228.P15109109317191209262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (∑ j ∈ Finset.range (n + 1), f1 j) - A241222 (n + 1) - A241227 (n + 1)

end

end A241228.P15109109317191209262

/-!
# A241229: Number of acute isosceles triangles on a centered hexagonal grid of size n.

The programs for A241229, there is no canonical definition to state claims against.
-/

/-! ## A241229.P364175365324784750

`A241228(n+1)-A241230(n+1)`
-/

namespace A241229.P364175365324784750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241228 (n + 1) - A241230 (n + 1)

end

end A241229.P364175365324784750

/-! ## A241229.P10823207598579923665

`A241223(n+1)-(A241230(n+1)+A241227(n+1))`
-/

namespace A241229.P10823207598579923665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241223 (n + 1) - (A241230 (n + 1) + A241227 (n + 1))

end

end A241229.P10823207598579923665

/-! ## A241229.P2429809258400014701

`A240826(n+1)-(A241227(n+1)+A241222(n+1))-A241230(n+1)`
-/

namespace A241229.P2429809258400014701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240826 (n + 1) - (A241227 (n + 1) + A241222 (n + 1)) - A241230 (n + 1)

end

end A241229.P2429809258400014701

/-! ## A241229.P7938809494183335812

`A241223(n+1)-A241227(n+1)-A241230(A077168(n))`
-/

namespace A241229.P7938809494183335812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241223 (n + 1) - A241227 (n + 1) - A241230 (A077168 n).toNat

end

end A241229.P7938809494183335812

/-!
# A241230: Number of obtuse isosceles triangles on a centered hexagonal grid of size n.

The programs for A241230, there is no canonical definition to state claims against.
-/

/-! ## A241230.P7264078334047427416

`A241228(n+1)-A241229(n+1)`
-/

namespace A241230.P7264078334047427416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241228 (n + 1) - A241229 (n + 1)

end

end A241230.P7264078334047427416

/-! ## A241230.P2675338964077502180

`A241223(n+1)-(A241229(n+1)+A241227(n+1))`
-/

namespace A241230.P2675338964077502180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241223 (n + 1) - (A241229 (n + 1) + A241227 (n + 1))

end

end A241230.P2675338964077502180

/-! ## A241230.P14081688258252550024

`A240826(n+1)-(A241227(n+1)+A241222(n+1))-A241229(n+1)`
-/

namespace A241230.P14081688258252550024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240826 (n + 1) - (A241227 (n + 1) + A241222 (n + 1)) - A241229 (n + 1)

end

end A241230.P14081688258252550024

/-! ## A241230.P12729408681726517951

`A241223(n+1)-A241227(n+1)-A241229(A077168(n))`
-/

namespace A241230.P12729408681726517951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241223 (n + 1) - A241227 (n + 1) - A241229 (A077168 n).toNat

end

end A241230.P12729408681726517951

/-!
# A241231: Number of triangles, distinct up to congruence, on a centered hexagonal grid of size n.

The programs for A241231, there is no canonical definition to state claims against.
-/

/-! ## A241231.P14309154034655057181

`A241236(n+1)+A241237(n+1)`
-/

namespace A241231.P14309154034655057181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241236 (n + 1) + A241237 (n + 1)

end

end A241231.P14309154034655057181

/-! ## A241231.P9251770694417917348

`A241232(n+1)+A241233(n+1)+A241234(n+1)`
-/

namespace A241231.P9251770694417917348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241232 (n + 1) + A241233 (n + 1) + A241234 (n + 1)

end

end A241231.P9251770694417917348

/-! ## A241231.P12263919012388524483

`A241236(n+1)+A241239(n+1)+A241238(n+1)`
-/

namespace A241231.P12263919012388524483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241236 (n + 1) + (A241239 (n + 1) + A241238 (n + 1))

end

end A241231.P12263919012388524483

/-! ## A241231.P10452513599767254742

`A241237(n+1)+A241236(A077168(n))`
-/

namespace A241231.P10452513599767254742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241237 (n + 1) + A241236 (A077168 n).toNat

end

end A241231.P10452513599767254742

/-!
# A241232: Number of acute triangles, distinct up to congruence, on a centered hexagonal grid of size n.

The programs for A241232, there is no canonical definition to state claims against.
-/

/-! ## A241232.P12931651885593382416

`A241231(n+1)-A241233(n+1)-A241234(n+1)`
-/

namespace A241232.P12931651885593382416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241231 (n + 1) - A241233 (n + 1) - A241234 (n + 1)

end

end A241232.P12931651885593382416

/-! ## A241232.P16280845048762862366

`A241231(n+1)-(A241234(n+1)+A241233(n+1))`
-/

namespace A241232.P16280845048762862366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241231 (n + 1) - (A241234 (n + 1) + A241233 (n + 1))

end

end A241232.P16280845048762862366

/-!
# A241233: Number of right triangles, distinct up to congruence, on a centered hexagonal grid of size n.

The programs for A241233, there is no canonical definition to state claims against.
-/

/-! ## A241233.P11493790628528026215

`A241231(n+1)-A241232(n+1)-A241234(n+1)`
-/

namespace A241233.P11493790628528026215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241231 (n + 1) - A241232 (n + 1) - A241234 (n + 1)

end

end A241233.P11493790628528026215

/-! ## A241233.P848137125396717277

`A241231(n+1)-(A241234(n+1)+A241232(n+1))`
-/

namespace A241233.P848137125396717277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241231 (n + 1) - (A241234 (n + 1) + A241232 (n + 1))

end

end A241233.P848137125396717277

/-! ## A241233.P3782716428647364701

`A086142(A148303(n+1))`
-/

namespace A241233.P3782716428647364701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086142 (A148303 (n + 1)).toNat

end

end A241233.P3782716428647364701

/-! ## A241233.P4335588565952691126

`∑[∑[A273294(A273345(n+3))]]`
-/

namespace A241233.P4335588565952691126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273294 (A273345 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241233.P4335588565952691126

/-! ## A241233.P8725156702867037955

`A000384(n)-A061395(A003504(n))`
-/

namespace A241233.P8725156702867037955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n - A061395 (A003504 n).toNat

end

end A241233.P8725156702867037955

/-!
# A241234: Number of obtuse triangles, distinct up to congruence, on a centered hexagonal grid of size n.

The programs for A241234, there is no canonical definition to state claims against.
-/

/-! ## A241234.P16327044726433487267

`A241231(n+1)-A241232(n+1)-A241233(n+1)`
-/

namespace A241234.P16327044726433487267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241231 (n + 1) - A241232 (n + 1) - A241233 (n + 1)

end

end A241234.P16327044726433487267

/-! ## A241234.P17401638429808866525

`A241231(n+1)-(A241233(n+1)+A241232(n+1))`
-/

namespace A241234.P17401638429808866525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241231 (n + 1) - (A241233 (n + 1) + A241232 (n + 1))

end

end A241234.P17401638429808866525

/-!
# A241235: a(n) = number of times n appears in A006949.

The programs for A241235, the canonical program `A241235.P7291888582611707694` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241235 has offset 1).

The definition of A241235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241235.P7291888582611707694

`Δ[a(floor(n/2))+n+1]` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A241235

/-- `Δ[a(floor(n/2))+n+1]` -/
def P7291888582611707694.Spec : Prop :=
  ∀ n, P7291888582611707694.a n = A241235 (n + 1)

theorem P7291888582611707694.correct : P7291888582611707694.Spec := by
  intro n
  simp only [A241235, Nat.add_sub_cancel]

end A241235

/-! ## A241235.P5524474394081667828

`n%2*a(floor(n/2))+1` with `a(0)=3, a(1)=3`
-/

namespace A241235.P5524474394081667828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n a =>
  n % 2 * a ⌊(n : ℚ) / 2⌋.toNat + 1

end

end A241235.P5524474394081667828

namespace A241235

/-- `n%2*a(floor(n/2))+1` -/
def P5524474394081667828.Spec : Prop :=
  ∀ n, (P5524474394081667828.a n : ℤ) = A241235 (n + 1)

end A241235

/-! ## A241235.P9226885588235736106

`Δ[A290251(n)]+2`
-/

namespace A241235.P9226885588235736106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A241235.P9226885588235736106

namespace A241235

/-- `Δ[A290251(n)]+2` -/
def P9226885588235736106.Spec : Prop :=
  ∀ n, P9226885588235736106.a n = A241235 (n + 1)

end A241235

/-! ## A241235.P5531291053212900856

`Δ[log2(A267584(n))]+2`
-/

namespace A241235.P5531291053212900856
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A267584 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A241235.P5531291053212900856

namespace A241235

/-- `Δ[log2(A267584(n))]+2` -/
def P5531291053212900856.Spec : Prop :=
  ∀ n, P5531291053212900856.a n = (A241235 (n + 1) : ℝ)

end A241235

/-! ## A241235.P2301306358498785319

`or(char[2*n], A135560(n+1))`
-/

namespace A241235.P2301306358498785319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A135560 (n + 1))

end

end A241235.P2301306358498785319

namespace A241235

/-- `or(char[2*n], A135560(n+1))` -/
def P2301306358498785319.Spec : Prop :=
  ∀ n, P2301306358498785319.a n = A241235 (n + 1)

end A241235

/-! ## A241235.P3826150029247864243

`A135560(A028310(n)+1)`
-/

namespace A241235.P3826150029247864243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (A028310 n + 1).toNat

end

end A241235.P3826150029247864243

namespace A241235

/-- `A135560(A028310(n)+1)` -/
def P3826150029247864243.Spec : Prop :=
  ∀ n, P3826150029247864243.a n = A241235 (n + 1)

end A241235

/-! ## A241235.P18033886565772526461

`A135523(A028310(n)+1)+1`
-/

namespace A241235.P18033886565772526461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (A028310 n + 1).toNat + 1

end

end A241235.P18033886565772526461

namespace A241235

/-- `A135523(A028310(n)+1)+1` -/
def P18033886565772526461.Spec : Prop :=
  ∀ n, P18033886565772526461.a n = A241235 (n + 1)

end A241235

/-! ## A241235.P10165638563874842568

`A135560(n+1)+A000007(n)`
-/

namespace A241235.P10165638563874842568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (n + 1) + A000007 n

end

end A241235.P10165638563874842568

namespace A241235

/-- `A135560(n+1)+A000007(n)` -/
def P10165638563874842568.Spec : Prop :=
  ∀ n, P10165638563874842568.a n = A241235 (n + 1)

end A241235

/-! ## A241235.P13607019211985110473

`A135523(n+1)+A054977(n)`
-/

namespace A241235.P13607019211985110473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (n + 1) + A054977 n

end

end A241235.P13607019211985110473

namespace A241235

/-- `A135523(n+1)+A054977(n)` -/
def P13607019211985110473.Spec : Prop :=
  ∀ n, P13607019211985110473.a n = A241235 (n + 1)

end A241235

/-! ## A241235.P5338996896753515622

`A135560(A004277(n)+1-n)`
-/

namespace A241235.P5338996896753515622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (A004277 n + (1 - (n : ℤ))).toNat

end

end A241235.P5338996896753515622

namespace A241235

/-- `A135560(A004277(n)+1-n)` -/
def P5338996896753515622.Spec : Prop :=
  ∀ n, P5338996896753515622.a n = A241235 (n + 1)

end A241235

/-! ## A241235.P2799701370391070888

`A135560(1-(n-A004277(n)))`
-/

namespace A241235.P2799701370391070888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (1 - ((n : ℤ) - A004277 n)).toNat

end

end A241235.P2799701370391070888

namespace A241235

/-- `A135560(1-(n-A004277(n)))` -/
def P2799701370391070888.Spec : Prop :=
  ∀ n, P2799701370391070888.a n = A241235 (n + 1)

end A241235

/-! ## A241235.P542526862457183694

`A091090(n)+2*A036987(n)`
-/

namespace A241235.P542526862457183694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 n + 2 * A036987 n

end

end A241235.P542526862457183694

namespace A241235

/-- `A091090(n)+2*A036987(n)` -/
def P542526862457183694.Spec : Prop :=
  ∀ n, P542526862457183694.a n = A241235 (n + 1)

end A241235

/-! ## A241235.P7110798027497165679

`A135560(or(n, A036987(n))+1)`
-/

namespace A241235.P7110798027497165679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (Int.lor (n : ℤ) (A036987 n) + 1).toNat

end

end A241235.P7110798027497165679

namespace A241235

/-- `A135560(or(n, A036987(n))+1)` -/
def P7110798027497165679.Spec : Prop :=
  ∀ n, P7110798027497165679.a n = A241235 (n + 1)

end A241235

/-! ## A241235.P2198429141764648120

`A090739(n+1)-A201219(n+1)`
-/

namespace A241235.P2198429141764648120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090739 (n + 1) - A201219 (n + 1)

end

end A241235.P2198429141764648120

namespace A241235

/-- `A090739(n+1)-A201219(n+1)` -/
def P2198429141764648120.Spec : Prop :=
  ∀ n, P2198429141764648120.a n = A241235 (n + 1)

end A241235

/-! ## A241235.P5620695441183669509

`A135560(A036987(2*n)+n+1)`
-/

namespace A241235.P5620695441183669509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (A036987 (2 * n) + (n + 1 : ℤ)).toNat

end

end A241235.P5620695441183669509

namespace A241235

/-- `A135560(A036987(2*n)+n+1)` -/
def P5620695441183669509.Spec : Prop :=
  ∀ n, P5620695441183669509.a n = A241235 (n + 1)

end A241235

/-! ## A241235.P16454833050377000930

`A135523(n+1)+1+A036987(2*n)`
-/

namespace A241235.P16454833050377000930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (n + 1) + 1 + A036987 (2 * n)

end

end A241235.P16454833050377000930

namespace A241235

/-- `A135523(n+1)+1+A036987(2*n)` -/
def P16454833050377000930.Spec : Prop :=
  ∀ n, P16454833050377000930.a n = A241235 (n + 1)

end A241235

/-! ## A241235.P964080643143797331

`A297382(2*n+1)+A135523(n+1)`
-/

namespace A241235.P964080643143797331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297382 (2 * n + 1) + A135523 (n + 1)

end

end A241235.P964080643143797331

namespace A241235

/-- `A297382(2*n+1)+A135523(n+1)` -/
def P964080643143797331.Spec : Prop :=
  ∀ n, P964080643143797331.a n = A241235 (n + 1)

end A241235

/-! ## A241235.P50667749208234394

`A036987(2*n)+A089263(n+1)+2`
-/

namespace A241235.P50667749208234394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + (A089263 (n + 1) + 2)

end

end A241235.P50667749208234394

namespace A241235

/-- `A036987(2*n)+A089263(n+1)+2` -/
def P50667749208234394.Spec : Prop :=
  ∀ n, P50667749208234394.a n = A241235 (n + 1)

end A241235

/-! ## A241235.P12365031058898126645

`val(10*A319953(n)*A319953(2*n), 2)`
-/

namespace A241235.P12365031058898126645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (10 * A319953 n * A319953 (2 * n)).toNat 2

end

end A241235.P12365031058898126645

namespace A241235

/-- `val(10*A319953(n)*A319953(2*n), 2)` -/
def P12365031058898126645.Spec : Prop :=
  ∀ n, (P12365031058898126645.a n : ℤ) = A241235 (n + 1)

end A241235

/-! ## A241235.P7760317127779363086

`A135523(2*n+1)+A135523(n+1)+1`
-/

namespace A241235.P7760317127779363086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (2 * n + 1) + (A135523 (n + 1) + 1)

end

end A241235.P7760317127779363086

namespace A241235

/-- `A135523(2*n+1)+A135523(n+1)+1` -/
def P7760317127779363086.Spec : Prop :=
  ∀ n, P7760317127779363086.a n = A241235 (n + 1)

end A241235

/-!
# A241236: Number of scalene triangles, distinct up to congruence, on a centered hexagonal grid of size n.

The programs for A241236, there is no canonical definition to state claims against.
-/

/-! ## A241236.P17482389731972672243

`A241231(n+1)-A241237(n+1)`
-/

namespace A241236.P17482389731972672243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241231 (n + 1) - A241237 (n + 1)

end

end A241236.P17482389731972672243

/-! ## A241236.P8672965210795938781

`A241231(n+1)-(A241239(n+1)+A241238(n+1))`
-/

namespace A241236.P8672965210795938781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241231 (n + 1) - (A241239 (n + 1) + A241238 (n + 1))

end

end A241236.P8672965210795938781

/-!
# A241237: Number of isosceles triangles, distinct up to congruence, on a centered hexagonal grid of size n.

The programs for A241237, there is no canonical definition to state claims against.
-/

/-! ## A241237.P16219836071287864414

`A241231(n+1)-A241236(n+1)`
-/

namespace A241237.P16219836071287864414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241231 (n + 1) - A241236 (n + 1)

end

end A241237.P16219836071287864414

/-! ## A241237.P3302359790404205902

`A241239(n+1)+A241238(n+1)`
-/

namespace A241237.P3302359790404205902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241239 (n + 1) + A241238 (n + 1)

end

end A241237.P3302359790404205902

/-! ## A241237.P17093645446076678639

`A241238(n+1)+∑[lt[n, A355000(2*n+3)]]`
-/

namespace A241237.P17093645446076678639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355000 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241238 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A241237.P17093645446076678639

/-! ## A241237.P17909590344622798380

`A241238(n+1)+A000194(A000123(n)*A055808(n))`
-/

namespace A241237.P17909590344622798380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241238 (n + 1) + A000194 (A000123 n * A055808 n).toNat

end

end A241237.P17909590344622798380

/-!
# A241238: Number of acute isosceles triangles, distinct up to congruence, on a centered hexagonal grid of size n.

The programs for A241238, there is no canonical definition to state claims against.
-/

/-! ## A241238.P11051821455047647376

`A241237(n+1)-A241239(n+1)`
-/

namespace A241238.P11051821455047647376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241237 (n + 1) - A241239 (n + 1)

end

end A241238.P11051821455047647376

/-! ## A241238.P12790534515910526547

`A241231(n+1)-(A241239(n+1)+A241236(n+1))`
-/

namespace A241238.P12790534515910526547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241231 (n + 1) - (A241239 (n + 1) + A241236 (n + 1))

end

end A241238.P12790534515910526547

/-! ## A241238.P14348320667321089499

`A241231(n+1)-A241236(n+1)-A241239(A077168(n))`
-/

namespace A241238.P14348320667321089499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241231 (n + 1) - A241236 (n + 1) - A241239 (A077168 n).toNat

end

end A241238.P14348320667321089499

/-! ## A241238.P17347145731957779105

`A241237(n+1)-∑[lt[n, A355000(2*n+3)]]`
-/

namespace A241238.P17347145731957779105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355000 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241237 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A241238.P17347145731957779105

/-! ## A241238.P12093181842753215373

`A241237(n+1)-A000194(A000123(n)*A055808(n))`
-/

namespace A241238.P12093181842753215373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241237 (n + 1) - A000194 (A000123 n * A055808 n).toNat

end

end A241238.P12093181842753215373

/-!
# A241239: Number of obtuse isosceles triangles, distinct up to congruence, on a centered hexagonal grid of size n.

The programs for A241239, there is no canonical definition to state claims against.
-/

/-! ## A241239.P5913285255758214754

`A241237(n+1)-A241238(n+1)`
-/

namespace A241239.P5913285255758214754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241237 (n + 1) - A241238 (n + 1)

end

end A241239.P5913285255758214754

/-! ## A241239.P7087696293389309043

`A241237(n+1)%A241238(A233583(n+2))`
-/

namespace A241239.P7087696293389309043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241237 (n + 1)) (A241238 (A233583 (n + 2)).toNat)

end

end A241239.P7087696293389309043

/-! ## A241239.P2586937159808601650

`A241231(n+1)-(A241238(n+1)+A241236(n+1))`
-/

namespace A241239.P2586937159808601650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241231 (n + 1) - (A241238 (n + 1) + A241236 (n + 1))

end

end A241239.P2586937159808601650

/-! ## A241239.P1047088366237485827

`A241231(n+1)-A241236(n+1)-A241238(A077168(n))`
-/

namespace A241239.P1047088366237485827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241231 (n + 1) - A241236 (n + 1) - A241238 (A077168 n).toNat

end

end A241239.P1047088366237485827

/-! ## A241239.P8312154328891721567

`∑[lt[n, A355000(2*n+3)]]`
-/

namespace A241239.P8312154328891721567
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355000 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241239.P8312154328891721567

/-!
# A241241: If x is in the sequence then so are x^2 and x(x+1)/2.

The programs for A241241, there is no canonical definition to state claims against.
-/

/-! ## A241241.P10531307580588317026

`eq[A001191(A236939(n)), A284992(n)]`
-/

namespace A241241.P10531307580588317026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001191 (A236939 (n + 10)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284992 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A241241.P10531307580588317026

/-! ## A241241.P9583282179535990253

`eq[A002487(A208814(n+1)), A228710(n)]`
-/

namespace A241241.P9583282179535990253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A208814 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A241241.P9583282179535990253

/-! ## A241241.P16894883668236555141

`lt[A354700(n+1), A039693(A122196(n+1))]`
-/

namespace A241241.P16894883668236555141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039693 (A122196 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A241241.P16894883668236555141

/-! ## A241241.P2904133353249444883

`lt[A102539(n+1), A250120(A276468(n+1))]`
-/

namespace A241241.P2904133353249444883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A276468 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A241241.P2904133353249444883

/-! ## A241241.P10697554926172318028

`lt[A141610(n+1), A265405(A007947(3*(n+1)))]`
-/

namespace A241241.P10697554926172318028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265405 (A007947 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A241241.P10697554926172318028

/-!
# A241242: a(n) = -2^(2*n+1)*(E(2*n+1, 1/2) + E(2*n+1, 1) + 2*(E(2*n+2, 1/2) + E(2*n+2, 1))), where E(n,x) are the Euler polynomials.

The programs for A241242, there is no canonical definition to state claims against.
-/

/-! ## A241242.P7305269423048566192

`A240559(2*n+1)`
-/

namespace A241242.P7305269423048566192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240559 (2 * n + 1)

end

end A241242.P7305269423048566192

/-! ## A241242.P504252405070802833

`(-1)^(n+1)*(A000182(n+1)-A000364(n+1))`
-/

namespace A241242.P504252405070802833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * (A000182 (n + 1) - A000364 (n + 1))

end

end A241242.P504252405070802833

/-! ## A241242.P7251372082822663313

`A323833(∑[2*n+2*n+3]+1)`
-/

namespace A241242.P7251372082822663313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323833 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A241242.P7251372082822663313

/-! ## A241242.P18389406385751499287

`-A323833(A052905(2*n)+3)`
-/

namespace A241242.P18389406385751499287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A323833 (A052905 (2 * n) + 3).toNat

end

end A241242.P18389406385751499287

/-! ## A241242.P3602951092573047113

`A163747(2*n+1)-A028296(n+1)`
-/

namespace A241242.P3602951092573047113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163747 (2 * n + 1) - A028296 (n + 1)

end

end A241242.P3602951092573047113

/-!
# A241244: Primes obtained by merging 4 successive digits in decimal expansion of sqrt(5).

The programs for A241244, there is no canonical definition to state claims against.
-/

/-! ## A241244.P16078389423994469921

`A241245(A084192(∑[n]))`
-/

namespace A241244.P16078389423994469921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241245 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A241244.P16078389423994469921

/-! ## A241244.P4279077735256421687

`A241245(A004918(n+2))`
-/

namespace A241244.P4279077735256421687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241245 (A004918 (n + 2)).toNat

end

end A241244.P4279077735256421687

/-! ## A241244.P16111515396867483109

`A241245(A004917(n+1)+1)`
-/

namespace A241244.P16111515396867483109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241245 (A004917 (n + 1) + 1).toNat

end

end A241244.P16111515396867483109

/-! ## A241244.P14031079457979882584

`A241245(n+1)+A000038(A065953(n))`
-/

namespace A241244.P14031079457979882584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241245 (n + 1) + A000038 (A065953 n).toNat

end

end A241244.P14031079457979882584

/-! ## A241244.P11216065618140349431

`A241245(A077741(n+1))`
-/

namespace A241244.P11216065618140349431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241245 (A077741 (n + 1)).toNat

end

end A241244.P11216065618140349431

/-!
# A241245: Primes obtained by merging 4 successive digits in decimal expansion of sqrt (5).

The programs for A241245, there is no canonical definition to state claims against.
-/

/-! ## A241245.P8468505602652835503

`A241244(∑[A333737(n)^A298727(n+3)])`
-/

namespace A241245.P8468505602652835503
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333737 n : ℚ) ^ (A298727 (n + 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241244 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A241245.P8468505602652835503

/-! ## A241245.P9814274189555077942

`A241244(∑[A333737(n)^A333737(3*n+1)])`
-/

namespace A241245.P9814274189555077942
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333737 n : ℚ) ^ (A333737 (3 * n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241244 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A241245.P9814274189555077942

/-!
# A241246: Primes p such that the decimal expansion of its base 7 expansion converted to decimal is a square.

The programs for A241246, there is no canonical definition to state claims against.
-/

/-! ## A241246.P81831531443040430

`p?[A267767(n+1)]`
-/

namespace A241246.P81831531443040430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241246.P81831531443040430

/-! ## A241246.P7631313048407259085

`p?[record[A267767(A158416(n))]]`
-/

namespace A241246.P7631313048407259085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267767 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241246.P7631313048407259085

/-! ## A241246.P16097374051626919162

`p?[record[A267767(A324344(n))]]`
-/

namespace A241246.P16097374051626919162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267767 (A324344 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241246.P16097374051626919162

/-! ## A241246.P2401330663150127699

`p?[record[A267767(A324346(n))]]`
-/

namespace A241246.P2401330663150127699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267767 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241246.P2401330663150127699

/-! ## A241246.P12001353057280343081

`p?[record[A267767(A324347(n))]]`
-/

namespace A241246.P12001353057280343081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267767 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A241246.P12001353057280343081

/-!
# A241247: a(n) = Sum_{k=0..n} n^k * binomial(n,k)^3.

The programs for A241247, the canonical program `A241247.P2920771253924622585` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241247 has offset 1).

The definition of A241247 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n+1, (n+1)^#*C(n+1, #)^3]` (program `A241247.P2920771253924622585`, by `A241247.P2920771253924622585.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A241247.P2920771253924622585

`∑{#}[n+1, (n+1)^#*C(n+1, #)^3]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A241247

/-- `∑{#}[n+1, (n+1)^#*C(n+1, #)^3]` -/
def P2920771253924622585.Spec : Prop :=
  ∀ n, (P2920771253924622585.a n : ℤ) = A241247 (n + 1)

theorem P2920771253924622585.correct : P2920771253924622585.Spec := by
  intro n
  simp only [A241247, Nat.add_sub_cancel]

end A241247

/-! ## A241247.P14895435890524612004

`A336163(∑[4*(n+1)])`
-/

namespace A241247.P14895435890524612004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336163 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241247.P14895435890524612004

namespace A241247

/-- `A336163(∑[4*(n+1)])` -/
def P14895435890524612004.Spec : Prop :=
  ∀ n, P14895435890524612004.a n = A241247 (n + 1)

end A241247

/-! ## A241247.P14752256061092381026

`A336163(A046092(n+1))%A011557(2*n+3)`
-/

namespace A241247.P14752256061092381026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336163 (A046092 (n + 1)).toNat) (A011557 (2 * n + 3))

end

end A241247.P14752256061092381026

namespace A241247

/-- `A336163(A046092(n+1))%A011557(2*n+3)` -/
def P14752256061092381026.Spec : Prop :=
  ∀ n, P14752256061092381026.a n = A241247 (n + 1)

end A241247

/-!
# A241248: Number of n X n 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241248, there is no canonical definition to state claims against.
-/

/-! ## A241248.P10833803054306415582

`A241255(∑[4*n]+1)`
-/

namespace A241248.P10833803054306415582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A241248.P10833803054306415582

/-! ## A241248.P5993863834034855739

`record[A241255(A330613(n+1))]`
-/

namespace A241248.P5993863834034855739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241248.P5993863834034855739

/-! ## A241248.P13844999362644434753

`record[A241255(A001844(val(n+1, 2)))]`
-/

namespace A241248.P13844999362644434753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A001844 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241248.P13844999362644434753

/-! ## A241248.P16885641177911129387

`lcm((-1)^n, A241255(A001844(n)))`
-/

namespace A241248.P16885641177911129387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A241255 (A001844 n).toNat)

end

end A241248.P16885641177911129387

/-!
# A241249: Number of nX2 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241249, there is no canonical definition to state claims against.
-/

/-! ## A241249.P11484670999701847920

`A241255(∑[n+2])`
-/

namespace A241249.P11484670999701847920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241249.P11484670999701847920

/-! ## A241249.P13968009971867399663

`record[A241255(A198455(n+1))]`
-/

namespace A241249.P13968009971867399663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241249.P13968009971867399663

/-! ## A241249.P12733114519285205120

`record[or(A055137(n), A241255(n+1))]`
-/

namespace A241249.P12733114519285205120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055137 n) (A241255 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241249.P12733114519285205120

/-! ## A241249.P15922571429773887412

`record[A241255(A000096(val(n+1, 2)+1))]`
-/

namespace A241249.P15922571429773887412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241249.P15922571429773887412

/-! ## A241249.P5582847551182614790

`record[A241255(n+2)/A239986(n+4)]`
-/

namespace A241249.P5582847551182614790
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241255 (n + 2) : ℚ) / (A239986 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241249.P5582847551182614790

/-!
# A241250: Number of nX3 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241250, there is no canonical definition to state claims against.
-/

/-! ## A241250.P17357322926280936485

`A241255(∑[n+3]+1)`
-/

namespace A241250.P17357322926280936485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A241250.P17357322926280936485

/-! ## A241250.P98768973073574692

`A241255(A034856(n+2))%A036842(n+2)`
-/

namespace A241250.P98768973073574692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241255 (A034856 (n + 2)).toNat) (A036842 (n + 2))

end

end A241250.P98768973073574692

/-! ## A241250.P4534314564377324808

`or(A230730(n+1), A241255(A034856(n+2)))`
-/

namespace A241250.P4534314564377324808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A230730 (n + 1)) (A241255 (A034856 (n + 2)).toNat)

end

end A241250.P4534314564377324808

/-!
# A241251: Number of nX4 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241251, there is no canonical definition to state claims against.
-/

/-! ## A241251.P8471834112852284471

`A241255(∑[n+4]+3)`
-/

namespace A241251.P8471834112852284471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A241251.P8471834112852284471

/-! ## A241251.P1642418615272909647

`record[A241255(A141214(val(n+1, 2)+1))]`
-/

namespace A241251.P1642418615272909647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A141214 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241251.P1642418615272909647

/-! ## A241251.P16114825584656633651

`A057427(n+1)*A241255(A141214(n+1))`
-/

namespace A241251.P16114825584656633651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A241255 (A141214 (n + 1)).toNat

end

end A241251.P16114825584656633651

/-! ## A241251.P6038822049199624029

`A241255(A055998(n+2))+A000007(3*n+1)`
-/

namespace A241251.P6038822049199624029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A055998 (n + 2)).toNat + A000007 (3 * n + 1)

end

end A241251.P6038822049199624029

/-! ## A241251.P11926912516672807509

`A241255(A141214(n+1))%A334534(2*(n+1))`
-/

namespace A241251.P11926912516672807509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241255 (A141214 (n + 1)).toNat) (A334534 (2 * (n + 1)))

end

end A241251.P11926912516672807509

/-!
# A241252: Number of n X 5 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241252, there is no canonical definition to state claims against.
-/

/-! ## A241252.P5752703330067671732

`A241255(Δ[A264443(n)])`
-/

namespace A241252.P5752703330067671732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (f1 (n + 1) - f1 n).toNat

end

end A241252.P5752703330067671732

/-! ## A241252.P17920409278791712668

`A241255(A046691(n+3))`
-/

namespace A241252.P17920409278791712668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A046691 (n + 3)).toNat

end

end A241252.P17920409278791712668

/-! ## A241252.P9642764156436677024

`A241255(A056115(n)+11)`
-/

namespace A241252.P9642764156436677024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A056115 n + 11).toNat

end

end A241252.P9642764156436677024

/-! ## A241252.P3908275562287686396

`A241255(eq[2, A092921(n)])`
-/

namespace A241252.P3908275562287686396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241252.P3908275562287686396

/-! ## A241252.P12504880007684662733

`A241255(eq[3, A152157(n)])`
-/

namespace A241252.P12504880007684662733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241252.P12504880007684662733

/-!
# A241253: Number of nX6 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241253, there is no canonical definition to state claims against.
-/

/-! ## A241253.P11660767679109749082

`A241255(∑[n+6]+10)`
-/

namespace A241253.P11660767679109749082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A241253.P11660767679109749082

/-! ## A241253.P8899690143934359038

`A241255(A052905(n+3))/A055642(n)`
-/

namespace A241253.P8899690143934359038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241255 (A052905 (n + 3)).toNat : ℚ) / (A055642 n : ℚ)

end

end A241253.P8899690143934359038

/-! ## A241253.P8241417919622221635

`A241255(A052905(n+3))+A010893(3*n+1)`
-/

namespace A241253.P8241417919622221635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A052905 (n + 3)).toNat + A010893 (3 * n + 1 + 13)

end

end A241253.P8241417919622221635

/-!
# A241254: Number of nX7 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241254, there is no canonical definition to state claims against.
-/

/-! ## A241254.P1328267772142628954

`A241255(A055999(n+4))`
-/

namespace A241254.P1328267772142628954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A055999 (n + 4)).toNat

end

end A241254.P1328267772142628954

/-! ## A241254.P6961174790840777222

`A241255(A056121(n)+22)`
-/

namespace A241254.P6961174790840777222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A056121 n + 22).toNat

end

end A241254.P6961174790840777222

/-! ## A241254.P6329993185746281863

`A241255(eq[4, A219347(n)])`
-/

namespace A241254.P6329993185746281863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241254.P6329993185746281863

/-! ## A241254.P617386703910343567

`A241255(eq[6, A193592(n)])`
-/

namespace A241254.P617386703910343567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241254.P617386703910343567

/-! ## A241254.P17030293657502117431

`A241255(A155212(n+3)+2)`
-/

namespace A241254.P17030293657502117431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A155212 (n + 3) + 2).toNat

end

end A241254.P17030293657502117431

/-!
# A241256: Number of 2 X n 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241256, the canonical program `A241256.P8268695918946848538` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241256 has offset 1).

The definition of A241256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241256.P8268695918946848538

`ogf((2+5x-4x^3-4x^4+x^5+8x^6+8x^7+11x^8+x^9+3x^10-3x^11)/(1-2x^2-2x^3+x^4+x^5+x^6-x^7-2x^8-x^10))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A241256

/-- `ogf((2+5x-4x^3-4x^4+x^5+8x^6+8x^7+11x^8+x^9+3x^10-3x^11)/(1-2x^2-2x^3+x^4+x^5+x^6-x^7-2x^8-x^10))` -/
def P8268695918946848538.Spec : Prop :=
  ∀ n, P8268695918946848538.a n = A241256 (n + 1)

theorem P8268695918946848538.correct : P8268695918946848538.Spec := by
  intro n
  simp only [A241256, Nat.add_sub_cancel]

end A241256

/-! ## A241256.P8375132212222092169

`A241255(∑[n+1]+2)`
-/

namespace A241256.P8375132212222092169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A241256.P8375132212222092169

namespace A241256

/-- `A241255(∑[n+1]+2)` -/
def P8375132212222092169.Spec : Prop :=
  ∀ n, P8375132212222092169.a n = A241256 (n + 1)

end A241256

/-! ## A241256.P6036809988505358000

`A241255(A000096(n)+3)+char[15]`
-/

namespace A241256.P6036809988505358000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A000096 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A241256.P6036809988505358000

namespace A241256

/-- `A241255(A000096(n)+3)+char[15]` -/
def P6036809988505358000.Spec : Prop :=
  ∀ n, P6036809988505358000.a n = A241256 (n + 1)

end A241256

/-! ## A241256.P5427911931653417890

`A241255(A000096(n)+3)%A000108(n+6)`
-/

namespace A241256.P5427911931653417890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241255 (A000096 n + 3).toNat) (A000108 (n + 6))

end

end A241256.P5427911931653417890

namespace A241256

/-- `A241255(A000096(n)+3)%A000108(n+6)` -/
def P5427911931653417890.Spec : Prop :=
  ∀ n, P5427911931653417890.a n = A241256 (n + 1)

end A241256

/-!
# A241257: Number of 3Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241257, there is no canonical definition to state claims against.
-/

/-! ## A241257.P3265182376194649866

`A241255(∑[n+2]+4)`
-/

namespace A241257.P3265182376194649866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A241257.P3265182376194649866

/-! ## A241257.P336811367993712282

`or(char[1], A241255(A167614(n+1)))`
-/

namespace A241257.P336811367993712282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A241255 (A167614 (n + 1)).toNat)

end

end A241257.P336811367993712282

/-! ## A241257.P13655786557344249466

`A241255(A167614(n+1))+A025444(n)`
-/

namespace A241257.P13655786557344249466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A167614 (n + 1)).toNat + A025444 n

end

end A241257.P13655786557344249466

/-! ## A241257.P1498221311995297261

`A241255(A167614(n+1))+A025469(n)`
-/

namespace A241257.P1498221311995297261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A167614 (n + 1)).toNat + A025469 n

end

end A241257.P1498221311995297261

/-! ## A241257.P8311494684228941435

`A241255(A167614(n+1))%A158675(n)`
-/

namespace A241257.P8311494684228941435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241255 (A167614 (n + 1)).toNat) (A158675 n)

end

end A241257.P8311494684228941435

/-!
# A241258: Number of 4Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241258, there is no canonical definition to state claims against.
-/

/-! ## A241258.P14272662333287221715

`A241255(∑[n+3]+7)`
-/

namespace A241258.P14272662333287221715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A241258.P14272662333287221715

/-!
# A241259: Number of 5Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241259, there is no canonical definition to state claims against.
-/

/-! ## A241259.P2215429825632358422

`A241255(A167499(n+3))`
-/

namespace A241259.P2215429825632358422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A167499 (n + 3)).toNat

end

end A241259.P2215429825632358422

/-! ## A241259.P11452828687371433152

`A241255(A155212(n)+13)`
-/

namespace A241259.P11452828687371433152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A155212 n + 13).toNat

end

end A241259.P11452828687371433152

/-! ## A241259.P15269404304788961342

`A241255(A056000(n)+15)`
-/

namespace A241259.P15269404304788961342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A056000 n + 15).toNat

end

end A241259.P15269404304788961342

/-! ## A241259.P8042327229680682454

`A241255(eq[7, A066657(n)])`
-/

namespace A241259.P8042327229680682454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241259.P8042327229680682454

/-! ## A241259.P13441203058543945466

`A241255(A000124(n+4)+4)`
-/

namespace A241259.P13441203058543945466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A000124 (n + 4) + 4).toNat

end

end A241259.P13441203058543945466

/-!
# A241260: Number of 6Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241260, there is no canonical definition to state claims against.
-/

/-! ## A241260.P5628008752744788141

`A241255(A056115(n)+21)`
-/

namespace A241260.P5628008752744788141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A056115 n + 21).toNat

end

end A241260.P5628008752744788141

/-! ## A241260.P3839424232834362859

`A241255(A167499(n+4)+1)`
-/

namespace A241260.P3839424232834362859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A167499 (n + 4) + 1).toNat

end

end A241260.P3839424232834362859

/-! ## A241260.P13384327316073772296

`A241255(A167614(n+4)+3)`
-/

namespace A241260.P13384327316073772296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A167614 (n + 4) + 3).toNat

end

end A241260.P13384327316073772296

/-! ## A241260.P15456674593560403900

`A241255(A000124(n+5)+5)`
-/

namespace A241260.P15456674593560403900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A000124 (n + 5) + 5).toNat

end

end A241260.P15456674593560403900

/-! ## A241260.P1799261038795830988

`A241255(A000217(n+5)+6)`
-/

namespace A241260.P1799261038795830988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A000217 (n + 5) + 6).toNat

end

end A241260.P1799261038795830988

/-!
# A241261: Number of 7 X n 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or zero plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241261, there is no canonical definition to state claims against.
-/

/-! ## A241261.P4579941697342797992

`A241255(A167487(n+5))`
-/

namespace A241261.P4579941697342797992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A167487 (n + 5)).toNat

end

end A241261.P4579941697342797992

/-! ## A241261.P2793195228320838409

`A241255(eq[11, A066657(n)])`
-/

namespace A241261.P2793195228320838409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241261.P2793195228320838409

/-! ## A241261.P1466543101315840320

`A241255(A167499(n+5)+2)`
-/

namespace A241261.P1466543101315840320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A167499 (n + 5) + 2).toNat

end

end A241261.P1466543101315840320

/-! ## A241261.P14235252542269125509

`A241255(A167614(n+5)+4)`
-/

namespace A241261.P14235252542269125509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A167614 (n + 5) + 4).toNat

end

end A241261.P14235252542269125509

/-! ## A241261.P599220378992657836

`A241255(A000124(n+6)+6)`
-/

namespace A241261.P599220378992657836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241255 (A000124 (n + 6) + 6).toNat

end

end A241261.P599220378992657836

/-!
# A241263: Successive break values in reaching a maximum break of 147 in snooker.

The programs for A241263, there is no canonical definition to state claims against.
-/

/-! ## A241263.P11237344019344812338

`∑[A356948(n+1)]`
-/

namespace A241263.P11237344019344812338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241263.P11237344019344812338

/-! ## A241263.P1215039586849518577

`∑[A010688(n)+A010051(A176491(n))]`
-/

namespace A241263.P1215039586849518577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 n + A010051 (A176491 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241263.P1215039586849518577

/-! ## A241263.P8982106715532438708

`∑[A101638(A157523(n))+A010688(n)]`
-/

namespace A241263.P8982106715532438708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101638 (A157523 n).toNat + A010688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241263.P8982106715532438708

/-! ## A241263.P1585178452513542654

`∑[A340998(A099597(n))+A010688(n)]`
-/

namespace A241263.P1585178452513542654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A099597 n).toNat + 140) + A010688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241263.P1585178452513542654

/-! ## A241263.P3603427928024177226

`A047521(n+1)+A043289(A221718(n))`
-/

namespace A241263.P3603427928024177226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047521 (n + 1) + A043289 (A221718 n).toNat

end

end A241263.P3603427928024177226

/-!
# A241264: Numbers k such that 2*k^2 + 2*k - 41 is not a prime.

The programs for A241264, the canonical program `A241264.P6428799366880575153` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241264 has offset 1).

The definition of A241264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241264.P13886715589406525940

`lt[A208645(∑{e}[A155769(n), #]), 3]`
-/

namespace A241264.P13886715589406525940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A241264.P13886715589406525940

namespace A241264

/-- `lt[A208645(∑{e}[A155769(n), #]), 3]` -/
def P13886715589406525940.Spec : Prop :=
  ∀ n, (P13886715589406525940.a n : ℤ) = A241264 (n + 1)

end A241264

/-! ## A241264.P6428799366880575153

`lt[∑{p}[A155769(n), #], A002620(n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A241264

/-- `lt[∑{p}[A155769(n), #], A002620(n)]` -/
def P6428799366880575153.Spec : Prop :=
  ∀ n, (P6428799366880575153.a n : ℤ) = A241264 (n + 1)

theorem P6428799366880575153.correct : P6428799366880575153.Spec := by
  intro n
  simp only [A241264, Nat.add_sub_cancel]

end A241264

/-! ## A241264.P12817300633993509633

`eq[1, A000034(∑{p}[A155769(n), #])]`
-/

namespace A241264.P12817300633993509633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (∑ p ∈ Nat.primeFactors (f3 n).natAbs, p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241264.P12817300633993509633

namespace A241264

/-- `eq[1, A000034(∑{p}[A155769(n), #])]` -/
def P12817300633993509633.Spec : Prop :=
  ∀ n, (P12817300633993509633.a n : ℤ) = A241264 (n + 1)

end A241264

/-! ## A241264.P1707360727664223404

`eq[1, A059841(∑{p}[A155769(n), #])]`
-/

namespace A241264.P1707360727664223404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (∑ p ∈ Nat.primeFactors (f3 n).natAbs, p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241264.P1707360727664223404

namespace A241264

/-- `eq[1, A059841(∑{p}[A155769(n), #])]` -/
def P1707360727664223404.Spec : Prop :=
  ∀ n, (P1707360727664223404.a n : ℤ) = A241264 (n + 1)

end A241264

/-! ## A241264.P6486567629958784757

`eq[1, A014963(abs(A155769(n)))]`
-/

namespace A241264.P6486567629958784757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 |A155769 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241264.P6486567629958784757

namespace A241264

/-- `eq[1, A014963(abs(A155769(n)))]` -/
def P6486567629958784757.Spec : Prop :=
  ∀ n, (P6486567629958784757.a n : ℤ) = A241264 (n + 1)

end A241264

/-!
# A241265: Numbers n such that n^4+(n+1)^4 is not prime.

The programs for A241265, there is no canonical definition to state claims against.
-/

/-! ## A241265.P13966890156252968592

`comp[A155211(n+1)-1]+1`
-/

namespace A241265.P13966890156252968592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155211 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A241265.P13966890156252968592

/-! ## A241265.P11371556837511696797

`eq[char[A155211(n+1)], A000007(n)]`
-/

namespace A241265.P11371556837511696797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155211 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A241265.P11371556837511696797

/-! ## A241265.P4574380968217496175

`eq[char[A155211(n+1)], A000038(n)]`
-/

namespace A241265.P4574380968217496175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155211 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A241265.P4574380968217496175

/-! ## A241265.P8779908708290105309

`eq[char[A155211(n+1)], A169585(n)]`
-/

namespace A241265.P8779908708290105309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155211 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A241265.P8779908708290105309

/-! ## A241265.P16074540893850816008

`eq[A008864(n+1)%2, char[A155211(n+1)]]`
-/

namespace A241265.P16074540893850816008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008864 (n + 1)) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155211 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A241265.P16074540893850816008

/-! ## A241265.P6345333873424671065

`eq[A066487(n+1)%A002523(n), A066487(n+1)]`
-/

namespace A241265.P6345333873424671065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066487 (n + 1)) (A002523 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066487 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A241265.P6345333873424671065

/-! ## A241265.P6026479144834394766

`eq[char[A155211(n+1)], A294878(n²)]`
-/

namespace A241265.P6026479144834394766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155211 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294878 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A241265.P6026479144834394766

/-!
# A241266: Numbers n such that 4*n^2+2*n-1 is not prime.

The programs for A241266, the canonical program `A241266.P8342663187428289721` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241266 has offset 1).

The definition of A241266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3891 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241266.P8342663187428289721

`eq[0, A108151(2*n+1)]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A241266

/-- `eq[0, A108151(2*n+1)]+1` -/
def P8342663187428289721.Spec : Prop :=
  ∀ n, (P8342663187428289721.a n : ℤ) = A241266 (n + 1)

theorem P8342663187428289721.correct : P8342663187428289721.Spec := by
  intro n
  simp only [A241266, Nat.add_sub_cancel]

end A241266

/-! ## A241266.P14571132015788264103

`lt[1, A289357(2*(n+1))]+1`
-/

namespace A241266.P14571132015788264103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289357 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A241266.P14571132015788264103

namespace A241266

/-- `lt[1, A289357(2*(n+1))]+1` -/
def P14571132015788264103.Spec : Prop :=
  ∀ n, (P14571132015788264103.a n : ℤ) = A241266 (n + 1)

end A241266

/-! ## A241266.P8323798080280177475

`eq[0, A108151(A004280(n+1))]`
-/

namespace A241266.P8323798080280177475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108151 (A004280 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241266.P8323798080280177475

namespace A241266

/-- `eq[0, A108151(A004280(n+1))]` -/
def P8323798080280177475.Spec : Prop :=
  ∀ n, (P8323798080280177475.a n : ℤ) = A241266 (n + 1)

end A241266

/-! ## A241266.P14329268179670258736

`A052938(eq[and(1, n), A108151(n+1)])`
-/

namespace A241266.P14329268179670258736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241266.P14329268179670258736

namespace A241266

/-- `A052938(eq[and(1, n), A108151(n+1)])` -/
def P14329268179670258736.Spec : Prop :=
  ∀ n, P14329268179670258736.a n = A241266 (n + 1)

end A241266

/-! ## A241266.P12402847021888623641

`A008619(eq[A000035(n), A108151(n+1)])`
-/

namespace A241266.P12402847021888623641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A241266.P12402847021888623641

namespace A241266

/-- `A008619(eq[A000035(n), A108151(n+1)])` -/
def P12402847021888623641.Spec : Prop :=
  ∀ n, P12402847021888623641.a n = A241266 (n + 1)

end A241266

/-! ## A241266.P13481270862924743636

`A080513(eq[A000035(n), A108151(n+1)])`
-/

namespace A241266.P13481270862924743636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A241266.P13481270862924743636

namespace A241266

/-- `A080513(eq[A000035(n), A108151(n+1)])` -/
def P13481270862924743636.Spec : Prop :=
  ∀ n, P13481270862924743636.a n = A241266 (n + 1)

end A241266

/-! ## A241266.P650985022666176801

`A004525(eq[A000035(n), A108151(n+1)])+1`
-/

namespace A241266.P650985022666176801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 1

end

end A241266.P650985022666176801

namespace A241266

/-- `A004525(eq[A000035(n), A108151(n+1)])+1` -/
def P650985022666176801.Spec : Prop :=
  ∀ n, P650985022666176801.a n = A241266 (n + 1)

end A241266

/-! ## A241266.P2371923708396857482

`A008619(eq[A007814(n+1), A108151(n+1)])`
-/

namespace A241266.P2371923708396857482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A241266.P2371923708396857482

namespace A241266

/-- `A008619(eq[A007814(n+1), A108151(n+1)])` -/
def P2371923708396857482.Spec : Prop :=
  ∀ n, P2371923708396857482.a n = A241266 (n + 1)

end A241266

/-! ## A241266.P12132910987416560001

`A080513(eq[A007814(n+1), A108151(n+1)])`
-/

namespace A241266.P12132910987416560001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A241266.P12132910987416560001

namespace A241266

/-- `A080513(eq[A007814(n+1), A108151(n+1)])` -/
def P12132910987416560001.Spec : Prop :=
  ∀ n, P12132910987416560001.a n = A241266 (n + 1)

end A241266

/-! ## A241266.P13811383283149634628

`lt[1, A272903(2*n+3)]+1`
-/

namespace A241266.P13811383283149634628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272903 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A241266.P13811383283149634628

namespace A241266

/-- `lt[1, A272903(2*n+3)]+1` -/
def P13811383283149634628.Spec : Prop :=
  ∀ n, (P13811383283149634628.a n : ℤ) = A241266 (n + 1)

end A241266

/-! ## A241266.P8144695500155748426

`lt[∑{p}[A125202(n+1), #], A125202(n+1)]`
-/

namespace A241266.P8144695500155748426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125202 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125202 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A241266.P8144695500155748426

namespace A241266

/-- `lt[∑{p}[A125202(n+1), #], A125202(n+1)]` -/
def P8144695500155748426.Spec : Prop :=
  ∀ n, (P8144695500155748426.a n : ℤ) = A241266 (n + 1)

end A241266

/-!
# A241267: Numbers n such that 4*n^2 + 4*n + 653 is not prime.

The programs for A241267, there is no canonical definition to state claims against.
-/

/-! ## A241267.P14102560847398461584

`comp[A188459(n+1)]`
-/

namespace A241267.P14102560847398461584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241267.P14102560847398461584

/-! ## A241267.P1313398198972827542

`∑[9^(10*a(n-9))]` with `a(0)=18, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=7, a(8)=8`
-/

namespace A241267.P1313398198972827542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [18, 1, 2, 3, 4, 5, 6, 7, 8] fun n f1 =>
  9 ^ (10 * f1 (n - 9))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241267.P1313398198972827542

/-! ## A241267.P6342166518144670828

`A190482(∑[n]+7)`
-/

namespace A241267.P6342166518144670828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190482 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A241267.P6342166518144670828

/-! ## A241267.P9204487520255010477

`record[18-A256697(2*n)]`
-/

namespace A241267.P9204487520255010477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 - A256697 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241267.P9204487520255010477

/-!
# A241268: Numbers n such that (n+1)^7-n^7 is not prime.

The programs for A241268, there is no canonical definition to state claims against.
-/

/-! ## A241268.P13693977113607700530

`eq[char[A113826(n+1)], A285476(n)]`
-/

namespace A241268.P13693977113607700530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113826 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A241268.P13693977113607700530

/-! ## A241268.P11450679980442242397

`eq[char[A121619(n+1)-1], A285476(n)]`
-/

namespace A241268.P11450679980442242397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121619 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A241268.P11450679980442242397

/-! ## A241268.P9373127613224705122

`eq[char[A023443(A121619(n+1))], A285476(n)]`
-/

namespace A241268.P9373127613224705122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A121619 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A241268.P9373127613224705122

/-! ## A241268.P439612313791891100

`eq[char[A134824(n+2)+A121619(n+1)], A285476(n)]`
-/

namespace A241268.P439612313791891100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A121619 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A241268.P439612313791891100

/-! ## A241268.P54552416356037614

`eq[char[A113826(n+1)], A335379(2*(n+1))]`
-/

namespace A241268.P54552416356037614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113826 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335379 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A241268.P54552416356037614

/-! ## A241268.P14735622324169085728

`eq[char[A121619(n+1)-1], A335379(2*(n+1))]`
-/

namespace A241268.P14735622324169085728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121619 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335379 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A241268.P14735622324169085728

/-! ## A241268.P426169682223049408

`eq[char[A023443(A121619(n+1))], A335379(2*(n+1))]`
-/

namespace A241268.P426169682223049408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A121619 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335379 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A241268.P426169682223049408

/-! ## A241268.P1664314877410827846

`eq[char[A113826(n+1)], A063667(n²)]`
-/

namespace A241268.P1664314877410827846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113826 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063667 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A241268.P1664314877410827846

/-!
# A241269: Denominator of c(n) = (n^2+n+2)/((n+1)*(n+2)*(n+3)).

The programs for A241269, the canonical program `A241269.P7038566982849524924` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241269 has offset 0).

The definition of A241269 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241269.P7038566982849524924

`(n+1)*(n+2)*(n+3)/gcd(4*n-4, n²+n+2)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A241269

/-- `(n+1)*(n+2)*(n+3)/gcd(4*n-4, n²+n+2)` -/
def P7038566982849524924.Spec : Prop :=
  ∀ n, P7038566982849524924.a n = (A241269 n : ℚ)

end A241269

/-!
# A241271: a(n) = 6*a(n-1) + 3*(2^(n-2)-1) for n > 2, a(0)=a(1)=a(2)=0.

The programs for A241271, the canonical program `A241271.P15919960289598323711` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241271 has offset 0).

The definition of A241271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241271.P11588491656515991495

`ogf(3x^3/(1-9x+20x^2-12x^3))`
-/

namespace A241271.P11588491656515991495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 3] [1, -9, 20, -12] n

end

end A241271.P11588491656515991495

namespace A241271

/-- `ogf(3x^3/(1-9x+20x^2-12x^3))` -/
def P11588491656515991495.Spec : Prop :=
  ∀ n, P11588491656515991495.a n = A241271 n

end A241271

/-! ## A241271.P15919960289598323711

`6*a(n-1)+3*(2^(n-2)-1)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A241271

/-- `6*a(n-1)+3*(2^(n-2)-1)` -/
def P15919960289598323711.Spec : Prop :=
  ∀ n, P15919960289598323711.a n = (A241271 n : ℚ)

end A241271

/-! ## A241271.P13850618737115164542

`∑[A003462(A289207(n))*A098011(n+1)]`
-/

namespace A241271.P13850618737115164542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (A289207 n).toNat * A098011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241271.P13850618737115164542

namespace A241271

/-- `∑[A003462(A289207(n))*A098011(n+1)]` -/
def P13850618737115164542.Spec : Prop :=
  ∀ n, P13850618737115164542.a n = A241271 n

end A241271

/-! ## A241271.P18248606169324433543

`A266285(A131577(n)+4*a(n-1)-1)-1` with `a(0)=0`
-/

namespace A241271.P18248606169324433543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A266285 (A131577 n + (4 * a (n - 1) - 1)).toNat - 1

end

end A241271.P18248606169324433543

namespace A241271

/-- `A266285(A131577(n)+4*a(n-1)-1)-1` -/
def P18248606169324433543.Spec : Prop :=
  ∀ n, P18248606169324433543.a n = A241271 n

end A241271

/-!
# A241272: Number of partitions p of n into distinct parts such that max(p) = 5*min(p).

The programs for A241272, there is no canonical definition to state claims against.
-/

/-! ## A241272.P6440158172780631666

`A056980(A240733(n+2)+A007090(n))`
-/

namespace A241272.P6440158172780631666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056980 (A240733 (n + 2) + A007090 n).toNat

end

end A241272.P6440158172780631666

/-! ## A241272.P4724607438397273476

`A033665(A087890(n+1)*A239312(n))`
-/

namespace A241272.P4724607438397273476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 (A087890 (n + 1) * A239312 n).toNat

end

end A241272.P4724607438397273476

/-! ## A241272.P5825498582474627587

`A124763(A333256(n+1)-A063730(n))`
-/

namespace A241272.P5825498582474627587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 (A333256 (n + 1) - A063730 n).toNat

end

end A241272.P5825498582474627587

/-! ## A241272.P16307664075275284226

`A073490(C(A196000(n+3), A000174(n+1)))`
-/

namespace A241272.P16307664075275284226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (Nat.choose (A196000 (n + 3)).toNat (A000174 (n + 1)).toNat)

end

end A241272.P16307664075275284226

/-!
# A241273: Number of partitions p of n into distinct parts such that max(p) = 6*min(p).

The programs for A241273, there is no canonical definition to state claims against.
-/

/-! ## A241273.P8919152007353176951

`A153246(A087153(n+2)-A115584(n+2))`
-/

namespace A241273.P8919152007353176951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153246 (A087153 (n + 2) - A115584 (n + 2)).toNat

end

end A241273.P8919152007353176951

/-!
# A241274: Number of partitions p of n such that (number of numbers in p that have multiplicity 1) = (number of numbers in p having multiplicity > 1).

The programs for A241274, there is no canonical definition to state claims against.
-/

/-! ## A241274.P17093637434582331923

`A330145(n)-A329976(n)`
-/

namespace A241274.P17093637434582331923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330145 n - A329976 n

end

end A241274.P17093637434582331923

/-! ## A241274.P10819576539361710616

`A330146(n)-A330001(n)`
-/

namespace A241274.P10819576539361710616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330146 n - A330001 n

end

end A241274.P10819576539361710616

/-! ## A241274.P10473178925878990938

`A000041(n)-(A330001(n)+A329976(n))`
-/

namespace A241274.P10473178925878990938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A330001 n + A329976 n)

end

end A241274.P10473178925878990938

/-! ## A241274.P17952640773091774877

`sqrt(A001255(n))-(A330001(n)+A329976(n))`
-/

namespace A241274.P17952640773091774877
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A330001 n + A329976 n : ℝ)

end

end A241274.P17952640773091774877

/-! ## A241274.P10413201811867373061

`∑[A002865(n)]-(A330001(n)+A329976(n))`
-/

namespace A241274.P10413201811867373061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A330001 n + A329976 n)

end

end A241274.P10413201811867373061

/-! ## A241274.P18106776359321327856

`A000041(n)-A330147(n)`
-/

namespace A241274.P18106776359321327856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A330147 n

end

end A241274.P18106776359321327856

/-! ## A241274.P15036173064978235640

`A330146(n)+A329976(n)-A330147(n)`
-/

namespace A241274.P15036173064978235640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330146 n + A329976 n - A330147 n

end

end A241274.P15036173064978235640

/-!
# A241275: a(n) = 6*a(n-1) + 5*(2^(n-1)-1) for n > 0, a(0) = 0.

The programs for A241275, the canonical program `A241275.P13418246081477781761` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241275 has offset 0).

The definition of A241275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241275.P6675873677639812532

`ogf(5x^2/(1-9x+20x^2-12x^3))`
-/

namespace A241275.P6675873677639812532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 5] [1, -9, 20, -12] n

end

end A241275.P6675873677639812532

namespace A241275

/-- `ogf(5x^2/(1-9x+20x^2-12x^3))` -/
def P6675873677639812532.Spec : Prop :=
  ∀ n, P6675873677639812532.a n = A241275 n

end A241275

/-! ## A241275.P13418246081477781761

`9*6^(n-2)-5*2^(n-2)+1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A241275

/-- `9*6^(n-2)-5*2^(n-2)+1` -/
def P13418246081477781761.Spec : Prop :=
  ∀ n, P13418246081477781761.a n = (A241275 n : ℚ)

end A241275

/-! ## A241275.P10622278037005832305

`6*a(n-1)+5*(2^(n-1)-1)` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A241275.P10622278037005832305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  6 * a (n - 1) + 5 * ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1)

end

end A241275.P10622278037005832305

namespace A241275

/-- `6*a(n-1)+5*(2^(n-1)-1)` -/
def P10622278037005832305.Spec : Prop :=
  ∀ n, P10622278037005832305.a n = (A241275 n : ℚ)

end A241275

/-! ## A241275.P6712659713459771758

`abs(∑[A000079(n)]-A092803(n))`
-/

namespace A241275.P6712659713459771758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - A092803 n|

end

end A241275.P6712659713459771758

namespace A241275

/-- `abs(∑[A000079(n)]-A092803(n))` -/
def P6712659713459771758.Spec : Prop :=
  ∀ n, P6712659713459771758.a n = A241275 n

end A241275

/-! ## A241275.P418283484638414625

`A074502(n)%A092803(n)`
-/

namespace A241275.P418283484638414625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074502 n) (A092803 n)

end

end A241275.P418283484638414625

namespace A241275

/-- `A074502(n)%A092803(n)` -/
def P418283484638414625.Spec : Prop :=
  ∀ n, P418283484638414625.a n = A241275 n

end A241275

/-! ## A241275.P483450921872428140

`A155597(n)%A090040(n)`
-/

namespace A241275.P483450921872428140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155597 n) (A090040 n)

end

end A241275.P483450921872428140

namespace A241275

/-- `A155597(n)%A090040(n)` -/
def P483450921872428140.Spec : Prop :=
  ∀ n, P483450921872428140.a n = A241275 n

end A241275

/-! ## A241275.P7788260795027923150

`(A074601(n)+1)%A092803(n)`
-/

namespace A241275.P7788260795027923150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074601 n + 1) (A092803 n)

end

end A241275.P7788260795027923150

namespace A241275

/-- `(A074601(n)+1)%A092803(n)` -/
def P7788260795027923150.Spec : Prop :=
  ∀ n, P7788260795027923150.a n = A241275 n

end A241275

/-!
# A241276: Number of partitions of n that come from sizes of conjugacy classes of groups of order n.

The programs for A241276, there is no canonical definition to state claims against.
-/

/-! ## A241276.P5684628516484057814

`A379678(3*n+5)+A070167(A380147(n+1))`
-/

namespace A241276.P5684628516484057814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379678 (3 * n + 5) + A070167 (A380147 (n + 1)).toNat

end

end A241276.P5684628516484057814

/-! ## A241276.P6129210961931588288

`A043568(2*A330774(n))`
-/

namespace A241276.P6129210961931588288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (2 * A330774 n).toNat

end

end A241276.P6129210961931588288

/-! ## A241276.P16005159344782041488

`A043568(lcm(2, A330774(n)))`
-/

namespace A241276.P16005159344782041488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (Int.lcm 2 (A330774 n))

end

end A241276.P16005159344782041488

/-! ## A241276.P13312112839479331679

`A126307(A002033(n)^A051903(n+2))`
-/

namespace A241276.P13312112839479331679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126307 (SequenceMachineLib.roundAway ((A002033 n : ℚ) ^ (A051903 (n + 2) : ℤ))).toNat

end

end A241276.P13312112839479331679

/-!
# A241277: Number of n X n 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241277, there is no canonical definition to state claims against.
-/

/-! ## A241277.P4888433940030661776

`A241283(∑[4*n]+1)`
-/

namespace A241277.P4888433940030661776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A241277.P4888433940030661776

/-! ## A241277.P1750137407218899658

`A241283(A001844(n))+char[7]`
-/

namespace A241277.P1750137407218899658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A241277.P1750137407218899658

/-! ## A241277.P5729214703899338851

`record[A003982(n)*A241283(n+1)]`
-/

namespace A241277.P5729214703899338851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A241283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241277.P5729214703899338851

/-!
# A241278: Number of nX2 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241278, there is no canonical definition to state claims against.
-/

/-! ## A241278.P17457712961279053423

`A241283(∑[n+2])`
-/

namespace A241278.P17457712961279053423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241278.P17457712961279053423

/-!
# A241279: Number of n X 3 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241279, there is no canonical definition to state claims against.
-/

/-! ## A241279.P3424497950202949145

`A241283(∑[n+3]+1)`
-/

namespace A241279.P3424497950202949145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A241279.P3424497950202949145

/-! ## A241279.P4786569855186263746

`record[A241283(A198464(n+1))]`
-/

namespace A241279.P4786569855186263746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241279.P4786569855186263746

/-!
# A241280: Number of nX4 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241280, there is no canonical definition to state claims against.
-/

/-! ## A241280.P5412203589936988571

`A241283(∑[n+4]+3)`
-/

namespace A241280.P5412203589936988571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A241280.P5412203589936988571

/-!
# A241281: Number of nX5 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241281, there is no canonical definition to state claims against.
-/

/-! ## A241281.P10698322614893831102

`A241283(∑[round(1/acot(n))+5]+5)`
-/

namespace A241281.P10698322614893831102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (∑ j ∈ Finset.range (n + 1), f1 j + 5).toNat

end

end A241281.P10698322614893831102

/-! ## A241281.P10227019241011410981

`A241283(Δ[A264443(n)])`
-/

namespace A241281.P10227019241011410981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (f1 (n + 1) - f1 n).toNat

end

end A241281.P10227019241011410981

/-! ## A241281.P1143867789214749846

`A241283(A046691(n+3))`
-/

namespace A241281.P1143867789214749846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (A046691 (n + 3)).toNat

end

end A241281.P1143867789214749846

/-! ## A241281.P12500997301584407042

`A241283(A056115(n)+11)`
-/

namespace A241281.P12500997301584407042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (A056115 n + 11).toNat

end

end A241281.P12500997301584407042

/-! ## A241281.P5266128222296527517

`A241283(eq[3, A152157(n)])`
-/

namespace A241281.P5266128222296527517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241281.P5266128222296527517

/-!
# A241282: Number of nX6 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241282, there is no canonical definition to state claims against.
-/

/-! ## A241282.P7859594769899202282

`A241283(A052905(n+3))`
-/

namespace A241282.P7859594769899202282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (A052905 (n + 3)).toNat

end

end A241282.P7859594769899202282

/-! ## A241282.P6909102286796144410

`A241283(A056119(n)+16)`
-/

namespace A241282.P6909102286796144410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (A056119 n + 16).toNat

end

end A241282.P6909102286796144410

/-! ## A241282.P4833214186275251011

`A241283(eq[3, A219347(n)])`
-/

namespace A241282.P4833214186275251011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241282.P4833214186275251011

/-! ## A241282.P7178058802681343742

`A241283(eq[5, A193592(n)])`
-/

namespace A241282.P7178058802681343742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241282.P7178058802681343742

/-! ## A241282.P4114900299129566692

`A241283(A141214(n+3)-2)`
-/

namespace A241282.P4114900299129566692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (A141214 (n + 3) - 2).toNat

end

end A241282.P4114900299129566692

/-!
# A241284: Number of 2Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241284, there is no canonical definition to state claims against.
-/

/-! ## A241284.P4729500159753843126

`A241283(∑[n+1]+2)`
-/

namespace A241284.P4729500159753843126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A241284.P4729500159753843126

/-!
# A241285: Number of 3Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241285, there is no canonical definition to state claims against.
-/

/-! ## A241285.P10166553460509981823

`A241283(∑[n+2]+4)`
-/

namespace A241285.P10166553460509981823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A241285.P10166553460509981823

/-! ## A241285.P9021075012965816893

`lcm((-1)^n, A241283(A167614(n+1)))`
-/

namespace A241285.P9021075012965816893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A241283 (A167614 (n + 1)).toNat)

end

end A241285.P9021075012965816893

/-! ## A241285.P16743287805490925579

`A241283(A167614(n+1))+A025438(n)`
-/

namespace A241285.P16743287805490925579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (A167614 (n + 1)).toNat + A025438 n

end

end A241285.P16743287805490925579

/-! ## A241285.P6015730640116151101

`A241283(A167614(n+1))+A025442(n)`
-/

namespace A241285.P6015730640116151101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (A167614 (n + 1)).toNat + A025442 n

end

end A241285.P6015730640116151101

/-! ## A241285.P1186784575565448211

`A241283(A167614(n+1))+A066035(n)`
-/

namespace A241285.P1186784575565448211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (A167614 (n + 1)).toNat + A066035 n

end

end A241285.P1186784575565448211

/-!
# A241286: Number of 4Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241286, there is no canonical definition to state claims against.
-/

/-! ## A241286.P4452213716134501032

`A241283(∑[n+3]+7)`
-/

namespace A241286.P4452213716134501032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A241286.P4452213716134501032

/-!
# A241287: Number of 5Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241287, there is no canonical definition to state claims against.
-/

/-! ## A241287.P9702713494074439953

`A241283(∑[n+4]+11)`
-/

namespace A241287.P9702713494074439953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A241287.P9702713494074439953

/-!
# A241288: Number of 6Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or zero plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A241288, there is no canonical definition to state claims against.
-/

/-! ## A241288.P16790779506980200758

`A241283(A166136(n+4))`
-/

namespace A241288.P16790779506980200758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (A166136 (n + 4)).toNat

end

end A241288.P16790779506980200758

/-! ## A241288.P7231388575125059282

`A241283(A056115(n)+21)`
-/

namespace A241288.P7231388575125059282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (A056115 n + 21).toNat

end

end A241288.P7231388575125059282

/-! ## A241288.P7819912537990141518

`A241283(A167499(n+4)+1)`
-/

namespace A241288.P7819912537990141518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (A167499 (n + 4) + 1).toNat

end

end A241288.P7819912537990141518

/-! ## A241288.P12033402224221279853

`A241283(A167487(n+4)-1)`
-/

namespace A241288.P12033402224221279853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (A167487 (n + 4) - 1).toNat

end

end A241288.P12033402224221279853

/-! ## A241288.P12183107275716995613

`A241283(A167614(n+4)+3)`
-/

namespace A241288.P12183107275716995613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241283 (A167614 (n + 4) + 3).toNat

end

end A241288.P12183107275716995613

/-!
# A241289: Numbers n for which in the factorization of n! over distinct terms of A050376, the numbers of prime and nonprime terms are equal.

The programs for A241289, there is no canonical definition to state claims against.
-/

/-! ## A241289.P12153716145626640024

`eq[A055460(n+2), A241139(n+2)]+2`
-/

namespace A241289.P12153716145626640024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055460 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241139 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A241289.P12153716145626640024

