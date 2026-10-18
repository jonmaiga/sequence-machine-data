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
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
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
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A201600: Primes of the form 6n^2 + 5.

The programs for A201600, the canonical program `A201600.P12161152020140595857` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201600 has offset 1).

The definition of A201600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201600.P12161152020140595857

`p?[6*n²+5]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A201600

/-- `p?[6*n²+5]` -/
def P12161152020140595857.Spec : Prop :=
  ∀ n, (P12161152020140595857.a n : ℤ) = A201600 (n + 1)

theorem P12161152020140595857.correct : P12161152020140595857.Spec := by
  intro n
  simp only [A201600, Nat.add_sub_cancel]

end A201600

/-! ## A201600.P9880372261642071329

`or(1, p?[n*6*n+5])`
-/

namespace A201600.P9880372261642071329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (6 * n) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201600.P9880372261642071329

namespace A201600

/-- `or(1, p?[n*6*n+5])` -/
def P9880372261642071329.Spec : Prop :=
  ∀ n, (P9880372261642071329.a n : ℤ) = A201600 (n + 1)

end A201600

/-! ## A201600.P13567830710084865600

`∏{d}[p?[n*6*n+5], #]`
-/

namespace A201600.P13567830710084865600
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (6 * n) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A201600.P13567830710084865600

namespace A201600

/-- `∏{d}[p?[n*6*n+5], #]` -/
def P13567830710084865600.Spec : Prop :=
  ∀ n, (P13567830710084865600.a n : ℤ) = A201600 (n + 1)

end A201600

/-! ## A201600.P12812789946977521487

`∏{p}[p?[2*n*3*n+5], #]`
-/

namespace A201600.P12812789946977521487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * (3 * n) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A201600.P12812789946977521487

namespace A201600

/-- `∏{p}[p?[2*n*3*n+5], #]` -/
def P12812789946977521487.Spec : Prop :=
  ∀ n, (P12812789946977521487.a n : ℤ) = A201600 (n + 1)

end A201600

/-! ## A201600.P5189695648332596609

`abs(2-p?[n*6*n+5])+2`
-/

namespace A201600.P5189695648332596609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (6 * n) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)| + 2

end

end A201600.P5189695648332596609

namespace A201600

/-- `abs(2-p?[n*6*n+5])+2` -/
def P5189695648332596609.Spec : Prop :=
  ∀ n, P5189695648332596609.a n = A201600 (n + 1)

end A201600

/-! ## A201600.P10663709938332258121

`∑{p}[p?[n*A008458(n)+5], #]`
-/

namespace A201600.P10663709938332258121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008458 n + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201600.P10663709938332258121

namespace A201600

/-- `∑{p}[p?[n*A008458(n)+5], #]` -/
def P10663709938332258121.Spec : Prop :=
  ∀ n, (P10663709938332258121.a n : ℤ) = A201600 (n + 1)

end A201600

/-! ## A201600.P11924934287788388935

`A007318(∑[n])*p?[A097803(n)+2]`
-/

namespace A201600.P11924934287788388935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097803 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A201600.P11924934287788388935

namespace A201600

/-- `A007318(∑[n])*p?[A097803(n)+2]` -/
def P11924934287788388935.Spec : Prop :=
  ∀ n, P11924934287788388935.a n = A201600 (n + 1)

end A201600

/-! ## A201600.P1603350983518155859

`p?[A097803(n)+2]*char[A008612(n)]`
-/

namespace A201600.P1603350983518155859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097803 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A201600.P1603350983518155859

namespace A201600

/-- `p?[A097803(n)+2]*char[A008612(n)]` -/
def P1603350983518155859.Spec : Prop :=
  ∀ n, P1603350983518155859.a n = A201600 (n + 1)

end A201600

/-! ## A201600.P14469430765340355037

`A000007(n+1)+p?[A097803(n)+2]`
-/

namespace A201600.P14469430765340355037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097803 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201600.P14469430765340355037

namespace A201600

/-- `A000007(n+1)+p?[A097803(n)+2]` -/
def P14469430765340355037.Spec : Prop :=
  ∀ n, P14469430765340355037.a n = A201600 (n + 1)

end A201600

/-! ## A201600.P12144650619686898089

`p?[A097803(n)+2]/A007318(C(2, n))`
-/

namespace A201600.P12144650619686898089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097803 n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A201600.P12144650619686898089

namespace A201600

/-- `p?[A097803(n)+2]/A007318(C(2, n))` -/
def P12144650619686898089.Spec : Prop :=
  ∀ n, P12144650619686898089.a n = (A201600 (n + 1) : ℚ)

end A201600

/-! ## A201600.P1913203083831519819

`p?[A097803(n)+2]+A008683(4*(n+1))`
-/

namespace A201600.P1913203083831519819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097803 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * (n + 1))

end

end A201600.P1913203083831519819

namespace A201600

/-- `p?[A097803(n)+2]+A008683(4*(n+1))` -/
def P1913203083831519819.Spec : Prop :=
  ∀ n, P1913203083831519819.a n = A201600 (n + 1)

end A201600

/-! ## A201600.P6091538121247541949

`A014963(6*(n+2))*p?[A097803(n)+2]`
-/

namespace A201600.P6091538121247541949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097803 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201600.P6091538121247541949

namespace A201600

/-- `A014963(6*(n+2))*p?[A097803(n)+2]` -/
def P6091538121247541949.Spec : Prop :=
  ∀ n, P6091538121247541949.a n = A201600 (n + 1)

end A201600

/-! ## A201600.P1200269925053472652

`A000040(n+2)%2*p?[A097803(n)+2]`
-/

namespace A201600.P1200269925053472652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097803 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201600.P1200269925053472652

namespace A201600

/-- `A000040(n+2)%2*p?[A097803(n)+2]` -/
def P1200269925053472652.Spec : Prop :=
  ∀ n, P1200269925053472652.a n = A201600 (n + 1)

end A201600

/-! ## A201600.P14634609158049185829

`gcd(n, A020639(n+1))*p?[A097803(n)+2]`
-/

namespace A201600.P14634609158049185829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097803 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A020639 (n + 1)) : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201600.P14634609158049185829

namespace A201600

/-- `gcd(n, A020639(n+1))*p?[A097803(n)+2]` -/
def P14634609158049185829.Spec : Prop :=
  ∀ n, P14634609158049185829.a n = A201600 (n + 1)

end A201600

/-! ## A201600.P11081375871681646378

`p?[A097803(n)+2]/A007318(ceil(n/(n+1)))`
-/

namespace A201600.P11081375871681646378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097803 n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat : ℚ)

end

end A201600.P11081375871681646378

namespace A201600

/-- `p?[A097803(n)+2]/A007318(ceil(n/(n+1)))` -/
def P11081375871681646378.Spec : Prop :=
  ∀ n, P11081375871681646378.a n = (A201600 (n + 1) : ℚ)

end A201600

/-!
# A201601: Primes of the form 6n^2 + 7.

The programs for A201601, the canonical program `A201601.P5335339501398035875` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201601 has offset 1).

The definition of A201601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201601.P5335339501398035875

`p?[6*n²+7]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A201601

/-- `p?[6*n²+7]` -/
def P5335339501398035875.Spec : Prop :=
  ∀ n, (P5335339501398035875.a n : ℤ) = A201601 (n + 1)

theorem P5335339501398035875.correct : P5335339501398035875.Spec := by
  intro n
  simp only [A201601, Nat.add_sub_cancel]

end A201601

/-! ## A201601.P10135122779485935769

`or(1, p?[3*n*2*n+7])`
-/

namespace A201601.P10135122779485935769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n * (2 * n) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201601.P10135122779485935769

namespace A201601

/-- `or(1, p?[3*n*2*n+7])` -/
def P10135122779485935769.Spec : Prop :=
  ∀ n, (P10135122779485935769.a n : ℤ) = A201601 (n + 1)

end A201601

/-! ## A201601.P13455836681938306011

`∏{p}[p?[3*(n*2*n+3)-2], #]`
-/

namespace A201601.P13455836681938306011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n * (2 * n) + 3) : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201601.P13455836681938306011

namespace A201601

/-- `∏{p}[p?[3*(n*2*n+3)-2], #]` -/
def P13455836681938306011.Spec : Prop :=
  ∀ n, (P13455836681938306011.a n : ℤ) = A201601 (n + 1)

end A201601

/-! ## A201601.P3912126990704850210

`∑{p}[p?[A033581(n)+7], #]`
-/

namespace A201601.P3912126990704850210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201601.P3912126990704850210

namespace A201601

/-- `∑{p}[p?[A033581(n)+7], #]` -/
def P3912126990704850210.Spec : Prop :=
  ∀ n, (P3912126990704850210.a n : ℤ) = A201601 (n + 1)

end A201601

/-! ## A201601.P360079431532068537

`p?[A033581(n)+7]*char[A014681(n)]`
-/

namespace A201601.P360079431532068537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A201601.P360079431532068537

namespace A201601

/-- `p?[A033581(n)+7]*char[A014681(n)]` -/
def P360079431532068537.Spec : Prop :=
  ∀ n, P360079431532068537.a n = A201601 (n + 1)

end A201601

/-! ## A201601.P5740481404005076882

`A000007(n+1)+p?[A033581(n)+7]`
-/

namespace A201601.P5740481404005076882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201601.P5740481404005076882

namespace A201601

/-- `A000007(n+1)+p?[A033581(n)+7]` -/
def P5740481404005076882.Spec : Prop :=
  ∀ n, P5740481404005076882.a n = A201601 (n + 1)

end A201601

/-! ## A201601.P2318464629537663270

`A000035(2*n)+p?[A033581(n)+7]`
-/

namespace A201601.P2318464629537663270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201601.P2318464629537663270

namespace A201601

/-- `A000035(2*n)+p?[A033581(n)+7]` -/
def P2318464629537663270.Spec : Prop :=
  ∀ n, P2318464629537663270.a n = A201601 (n + 1)

end A201601

/-! ## A201601.P2589377554271861096

`A007318(C(2, n))*p?[A033581(n)+7]`
-/

namespace A201601.P2589377554271861096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201601.P2589377554271861096

namespace A201601

/-- `A007318(C(2, n))*p?[A033581(n)+7]` -/
def P2589377554271861096.Spec : Prop :=
  ∀ n, P2589377554271861096.a n = A201601 (n + 1)

end A201601

/-! ## A201601.P4921939004404123603

`p?[A033581(n)+7]/A007318(C(3, n))`
-/

namespace A201601.P4921939004404123603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A201601.P4921939004404123603

namespace A201601

/-- `p?[A033581(n)+7]/A007318(C(3, n))` -/
def P4921939004404123603.Spec : Prop :=
  ∀ n, P4921939004404123603.a n = (A201601 (n + 1) : ℚ)

end A201601

/-! ## A201601.P17785403868681899277

`lcm((-1)^A007318(n), p?[A033581(n)+7])`
-/

namespace A201601.P17785403868681899277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A007318 n : ℤ))) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201601.P17785403868681899277

namespace A201601

/-- `lcm((-1)^A007318(n), p?[A033581(n)+7])` -/
def P17785403868681899277.Spec : Prop :=
  ∀ n, (P17785403868681899277.a n : ℤ) = A201601 (n + 1)

end A201601

/-! ## A201601.P14442451578650042787

`A000041(C(2, n+2))*p?[A033581(n)+7]`
-/

namespace A201601.P14442451578650042787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201601.P14442451578650042787

namespace A201601

/-- `A000041(C(2, n+2))*p?[A033581(n)+7]` -/
def P14442451578650042787.Spec : Prop :=
  ∀ n, P14442451578650042787.a n = A201601 (n + 1)

end A201601

/-! ## A201601.P6130777951948410316

`A000010(gcd(n, n+1))*p?[A033581(n)+7]`
-/

namespace A201601.P6130777951948410316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.gcd n (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201601.P6130777951948410316

namespace A201601

/-- `A000010(gcd(n, n+1))*p?[A033581(n)+7]` -/
def P6130777951948410316.Spec : Prop :=
  ∀ n, P6130777951948410316.a n = A201601 (n + 1)

end A201601

/-! ## A201601.P13312323351595542453

`p?[A033581(n)+7]+A000045(C(n, n+1))`
-/

namespace A201601.P13312323351595542453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A000045 (Nat.choose n (n + 1))

end

end A201601.P13312323351595542453

namespace A201601

/-- `p?[A033581(n)+7]+A000045(C(n, n+1))` -/
def P13312323351595542453.Spec : Prop :=
  ∀ n, P13312323351595542453.a n = A201601 (n + 1)

end A201601

/-! ## A201601.P14291577181473586653

`p?[n*A008458(n)+7]+A008683(4*(n+1))`
-/

namespace A201601.P14291577181473586653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008458 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * (n + 1))

end

end A201601.P14291577181473586653

namespace A201601

/-- `p?[n*A008458(n)+7]+A008683(4*(n+1))` -/
def P14291577181473586653.Spec : Prop :=
  ∀ n, P14291577181473586653.a n = A201601 (n + 1)

end A201601

/-! ## A201601.P7749514426712142499

`A007318(C(2, n)+1)*p?[n*A008458(n)+7]`
-/

namespace A201601.P7749514426712142499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008458 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n + 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201601.P7749514426712142499

namespace A201601

/-- `A007318(C(2, n)+1)*p?[n*A008458(n)+7]` -/
def P7749514426712142499.Spec : Prop :=
  ∀ n, P7749514426712142499.a n = A201601 (n + 1)

end A201601

/-! ## A201601.P11413250526188001053

`A000108(and(1, 1-n))*p?[n*A008458(n)+7]`
-/

namespace A201601.P11413250526188001053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008458 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Int.land 1 (1 - (n : ℤ))).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201601.P11413250526188001053

namespace A201601

/-- `A000108(and(1, 1-n))*p?[n*A008458(n)+7]` -/
def P11413250526188001053.Spec : Prop :=
  ∀ n, P11413250526188001053.a n = A201601 (n + 1)

end A201601

/-! ## A201601.P13400395149281747912

`A014963(30*(n+1))*p?[n*A008458(n)+7]`
-/

namespace A201601.P13400395149281747912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008458 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (30 * (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201601.P13400395149281747912

namespace A201601

/-- `A014963(30*(n+1))*p?[n*A008458(n)+7]` -/
def P13400395149281747912.Spec : Prop :=
  ∀ n, P13400395149281747912.a n = A201601 (n + 1)

end A201601

/-! ## A201601.P9436809351357710526

`p?[n*A008458(n)+7]+(n+1)%A006530(n+1)`
-/

namespace A201601.P9436809351357710526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008458 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (n + 1 : ℤ) (A006530 (n + 1))

end

end A201601.P9436809351357710526

namespace A201601

/-- `p?[n*A008458(n)+7]+(n+1)%A006530(n+1)` -/
def P9436809351357710526.Spec : Prop :=
  ∀ n, P9436809351357710526.a n = A201601 (n + 1)

end A201601

/-! ## A201601.P3012068134314728583

`p?[A033581(n)+7]/A008683(A005117(n+1))²`
-/

namespace A201601.P3012068134314728583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A008683 (A005117 (n + 1)).toNat ^ 2 : ℚ)

end

end A201601.P3012068134314728583

namespace A201601

/-- `p?[A033581(n)+7]/A008683(A005117(n+1))²` -/
def P3012068134314728583.Spec : Prop :=
  ∀ n, P3012068134314728583.a n = (A201601 (n + 1) : ℚ)

end A201601

/-!
# A201602: Primes of the form 7n^2 + 1.

The programs for A201602, there is no canonical definition to state claims against.
-/

/-! ## A201602.P1323819215907543243

`A158556(A132190(n+1)/2)`
-/

namespace A201602.P1323819215907543243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158556 (SequenceMachineLib.roundAway ((A132190 (n + 1) : ℚ) / 2)).toNat

end

end A201602.P1323819215907543243

/-! ## A201602.P16800733342186172292

`A247541(A132190(n+1))`
-/

namespace A201602.P16800733342186172292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 (A132190 (n + 1)).toNat

end

end A201602.P16800733342186172292

/-! ## A201602.P11539056440532380642

`A005905(A132190(n+1))/A000034(A057979(2*(n+1)))`
-/

namespace A201602.P11539056440532380642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005905 (A132190 (n + 1)).toNat : ℚ) / (A000034 (A057979 (2 * (n + 1))).toNat : ℚ)

end

end A201602.P11539056440532380642

/-! ## A201602.P8485528374161886259

`A005905(A132190(n+1))/A000034(A071934(2*n+3))`
-/

namespace A201602.P8485528374161886259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005905 (A132190 (n + 1)).toNat : ℚ) / (A000034 (A071934 (2 * n + 3)).toNat : ℚ)

end

end A201602.P8485528374161886259

/-! ## A201602.P14340553105326509646

`A321324(7*A132190(n+1))`
-/

namespace A201602.P14340553105326509646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321324 (7 * A132190 (n + 1)).toNat

end

end A201602.P14340553105326509646

/-! ## A201602.P16540121669751562006

`∩[A093359(n+1), A158556(n)]`
-/

namespace A201602.P16540121669751562006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158556 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201602.P16540121669751562006

/-! ## A201602.P7684912307253688956

`∩[A093359(n+1), A247541(n)]`
-/

namespace A201602.P7684912307253688956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201602.P7684912307253688956

/-! ## A201602.P3698953021764967273

`p?[7*n²+1]`
-/

namespace A201602.P3698953021764967273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201602.P3698953021764967273

/-! ## A201602.P13969549571848397849

`or(1, p?[xor(1, 7*n²)])`
-/

namespace A201602.P13969549571848397849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (7 * n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201602.P13969549571848397849

/-!
# A201603: Primes of the form 7n^2 + 2.

The programs for A201603, there is no canonical definition to state claims against.
-/

/-! ## A201603.P6311208760043863749

`p?[7*n²+2]`
-/

namespace A201603.P6311208760043863749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201603.P6311208760043863749

/-! ## A201603.P12361170018884680745

`∏{d}[p?[n*7*n+2], #]`
-/

namespace A201603.P12361170018884680745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (7 * n) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A201603.P12361170018884680745

/-! ## A201603.P16276001827606609989

`∑{p}[p?[n*7*n+2], #]`
-/

namespace A201603.P16276001827606609989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (7 * n) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A201603.P16276001827606609989

/-! ## A201603.P18252393823604853435

`∏{p}[p?[n*7*n+2], #]`
-/

namespace A201603.P18252393823604853435
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (7 * n) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A201603.P18252393823604853435

/-! ## A201603.P821437504300425878

`A000027(p?[A247541(n)+1])`
-/

namespace A201603.P821437504300425878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A201603.P821437504300425878

/-!
# A201604: Primes of the form 7n^2 + 3.

The programs for A201604, there is no canonical definition to state claims against.
-/

/-! ## A201604.P6639375206567526870

`p?[7*n²+3]`
-/

namespace A201604.P6639375206567526870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 2 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201604.P6639375206567526870

/-! ## A201604.P3876634813018249231

`∏{d}[p?[xor(3, 7*n²)], #]`
-/

namespace A201604.P3876634813018249231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (7 * n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A201604.P3876634813018249231

/-! ## A201604.P10048288725597895751

`∏{p}[p?[xor(3, 7*n²)], #]`
-/

namespace A201604.P10048288725597895751
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (7 * n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A201604.P10048288725597895751

/-! ## A201604.P13415516968106332614

`or(1, p?[n*7*n+3])`
-/

namespace A201604.P13415516968106332614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (7 * n) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201604.P13415516968106332614

/-! ## A201604.P6586963842680413234

`A007318(∑[n])*p?[A158556(n)+2]`
-/

namespace A201604.P6586963842680413234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158556 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A201604.P6586963842680413234

/-!
# A201605: Primes of the form 7n^2 + 4.

The programs for A201605, there is no canonical definition to state claims against.
-/

/-! ## A201605.P8448069328336495304

`p?[7*n²+4]`
-/

namespace A201605.P8448069328336495304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 2 + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201605.P8448069328336495304

/-! ## A201605.P84066835026527684

`or(1, p?[7*n*n+4])`
-/

namespace A201605.P84066835026527684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n * n) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201605.P84066835026527684

/-! ## A201605.P15594906288297760402

`∏{d}[p?[A247541(n)+3], #]`
-/

namespace A201605.P15594906288297760402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A201605.P15594906288297760402

/-! ## A201605.P4782987645786653104

`∑{p}[p?[A247541(n+1)+3], #]`
-/

namespace A201605.P4782987645786653104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 (n + 1) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201605.P4782987645786653104

/-! ## A201605.P14510582205236687545

`C(p?[A247541(n)+3], A087960(n)²)`
-/

namespace A201605.P14510582205236687545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat (A087960 n ^ 2).toNat

end

end A201605.P14510582205236687545

/-! ## A201605.P12829386317094393587

`A000007(n+1)+p?[A247541(n)+3]`
-/

namespace A201605.P12829386317094393587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201605.P12829386317094393587

/-! ## A201605.P14452054203613122052

`A127391(2*n)+p?[A247541(n)+3]`
-/

namespace A201605.P14452054203613122052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127391 (2 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201605.P14452054203613122052

/-! ## A201605.P3590969194738561067

`∏{p}[p?[A005918(n+1)+A005899(n+1)], #]`
-/

namespace A201605.P3590969194738561067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 (n + 1) + A005899 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201605.P3590969194738561067

/-! ## A201605.P17661848351341372522

`and(1, A014963(n+1))!*p?[A247541(n)+3]`
-/

namespace A201605.P17661848351341372522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A014963 (n + 1))).toNat : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201605.P17661848351341372522

/-! ## A201605.P10414785071640867828

`A000027(p?[A247541(n)+3])`
-/

namespace A201605.P10414785071640867828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A201605.P10414785071640867828

/-!
# A201606: Primes of the form 7n^2 + 5.

The programs for A201606, there is no canonical definition to state claims against.
-/

/-! ## A201606.P5779635324455430750

`p?[7*n²+5]`
-/

namespace A201606.P5779635324455430750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 2 + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201606.P5779635324455430750

/-! ## A201606.P7824234376992751205

`∏{d}[p?[n*7*n+5], #]`
-/

namespace A201606.P7824234376992751205
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (7 * n) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A201606.P7824234376992751205

/-! ## A201606.P11212040817771192066

`or(1, p?[A158556(n)+4])`
-/

namespace A201606.P11212040817771192066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158556 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201606.P11212040817771192066

/-! ## A201606.P5151080588051285144

`or(1, p?[A033582(n)+5])`
-/

namespace A201606.P5151080588051285144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033582 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201606.P5151080588051285144

/-! ## A201606.P1825649481966655

`A007318(∑[n])*p?[A158556(n)+4]`
-/

namespace A201606.P1825649481966655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158556 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A201606.P1825649481966655

/-!
# A201607: Primes of the form 7n^2 + 6.

The programs for A201607, there is no canonical definition to state claims against.
-/

/-! ## A201607.P6092021631518898409

`p?[7*n²+6]`
-/

namespace A201607.P6092021631518898409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 2 + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201607.P6092021631518898409

/-! ## A201607.P2607760449490092004

`record[p?[a(n-2)+28*n]]` with `a(0)=13, a(1)=2`
-/

namespace A201607.P2607760449490092004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [13, 2] fun n f2 =>
  f2 (n - 2) + 28 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201607.P2607760449490092004

/-! ## A201607.P5697535134926659841

`or(1, p?[A247541(n)+5])`
-/

namespace A201607.P5697535134926659841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201607.P5697535134926659841

/-! ## A201607.P3059373049382850894

`A007318(∑[n])*p?[A247541(n)+5]`
-/

namespace A201607.P3059373049382850894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A201607.P3059373049382850894

/-! ## A201607.P14322421588791951975

`p?[A247541(n)+5]/A007318(∑[n+1])`
-/

namespace A201607.P14322421588791951975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 n + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A201607.P14322421588791951975

/-!
# A201608: Primes of the form 7n^2 + 8.

The programs for A201608, there is no canonical definition to state claims against.
-/

/-! ## A201608.P15408406527362324114

`p?[7*n²+8]`
-/

namespace A201608.P15408406527362324114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 2 + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201608.P15408406527362324114

/-! ## A201608.P2366730495492623640

`or(1, p?[A247541(n)+7])`
-/

namespace A201608.P2366730495492623640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201608.P2366730495492623640

/-! ## A201608.P8426620036133676517

`A020985(n)²*p?[xor(7, A247541(n))]`
-/

namespace A201608.P8426620036133676517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A247541 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201608.P8426620036133676517

/-! ## A201608.P3390713870008303123

`A112315(n+1)+p?[A247541(n)+7]`
-/

namespace A201608.P3390713870008303123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112315 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201608.P3390713870008303123

/-! ## A201608.P13952944201249673855

`A000007(n+1)+p?[xor(7, A247541(n))]`
-/

namespace A201608.P13952944201249673855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A247541 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201608.P13952944201249673855

/-!
# A201609: Primes of the form 7n^2 + 9.

The programs for A201609, there is no canonical definition to state claims against.
-/

/-! ## A201609.P13016136475165058170

`p?[7*n²+9]`
-/

namespace A201609.P13016136475165058170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 2 + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201609.P13016136475165058170

/-! ## A201609.P2783096172912869461

`or(1, p?[A005919(n)+7])`
-/

namespace A201609.P2783096172912869461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201609.P2783096172912869461

/-! ## A201609.P1048914174687186362

`or(1, p?[A247541(n)+8])`
-/

namespace A201609.P1048914174687186362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 n + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201609.P1048914174687186362

/-! ## A201609.P14099360097123875600

`∏{p}[p?[A005919(n+1)+7], #]`
-/

namespace A201609.P14099360097123875600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 (n + 1) + 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201609.P14099360097123875600

/-! ## A201609.P8795600256279972385

`∏{p}[p?[A247541(n+1)+8], #]`
-/

namespace A201609.P8795600256279972385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 (n + 1) + 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201609.P8795600256279972385

/-! ## A201609.P13535401430001444434

`A007318(∑[n])*p?[A247541(n)+8]`
-/

namespace A201609.P13535401430001444434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 n + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A201609.P13535401430001444434

/-! ## A201609.P1849574551514394824

`p?[A247541(n)+8]/A007318(C(2, n))`
-/

namespace A201609.P1849574551514394824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 n + 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A201609.P1849574551514394824

/-! ## A201609.P14825616859582817924

`p?[A247541(n)+8]^A007318(C(n, 2))`
-/

namespace A201609.P14825616859582817924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 n + 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A007318 (Nat.choose n 2) : ℤ)

end

end A201609.P14825616859582817924

/-! ## A201609.P10305034210238006265

`p?[A247541(n)+8]/A007318(∑[n+1])`
-/

namespace A201609.P10305034210238006265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 n + 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A201609.P10305034210238006265

/-! ## A201609.P11671616133534175635

`p?[A247541(n)+8]+A008683(4*(n+1))`
-/

namespace A201609.P11671616133534175635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 n + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * (n + 1))

end

end A201609.P11671616133534175635

/-!
# A201610: Primes of the form 7n^2 + 10.

The programs for A201610, there is no canonical definition to state claims against.
-/

/-! ## A201610.P14309579646609782219

`p?[7*n²+10]`
-/

namespace A201610.P14309579646609782219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 2 + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201610.P14309579646609782219

/-! ## A201610.P9388044425241955414

`or(1, p?[A005919(n)+8])`
-/

namespace A201610.P9388044425241955414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 n + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201610.P9388044425241955414

/-! ## A201610.P13393606814568870675

`∑{p}[p?[A005919(n+1)+8], #]`
-/

namespace A201610.P13393606814568870675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 (n + 1) + 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201610.P13393606814568870675

/-! ## A201610.P205079180428382586

`∏{p}[p?[A005919(2*n+1)+8], #]`
-/

namespace A201610.P205079180428382586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 (2 * n + 1) + 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A201610.P205079180428382586

/-! ## A201610.P6207711006913822805

`abs(p?[A005919(n)+8]*A033999(n))`
-/

namespace A201610.P6207711006913822805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 n + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A033999 n|

end

end A201610.P6207711006913822805

/-! ## A201610.P3435515238531722003

`A007318(C(2, n))*p?[A005919(n)+8]`
-/

namespace A201610.P3435515238531722003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 n + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201610.P3435515238531722003

/-! ## A201610.P12362754299865654445

`p?[A005919(n)+8]%A000032(n+13)`
-/

namespace A201610.P12362754299865654445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 n + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000032 (n + 13))

end

end A201610.P12362754299865654445

/-! ## A201610.P950522143145444846

`p?[A005919(n)+8]+A000045(C(n, 64))`
-/

namespace A201610.P950522143145444846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 n + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A000045 (Nat.choose n 64)

end

end A201610.P950522143145444846

/-! ## A201610.P204786201634830108

`A007318(and(1, -n))*p?[A005919(n)+8]`
-/

namespace A201610.P204786201634830108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 n + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201610.P204786201634830108

/-! ## A201610.P12392394764827931862

`A014963(6*(n+1))*p?[A005919(n)+8]`
-/

namespace A201610.P12392394764827931862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 n + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201610.P12392394764827931862

/-!
# A201611: Primes of the form 8n^2 + 3.

The programs for A201611, there is no canonical definition to state claims against.
-/

/-! ## A201611.P3609339717538199171

`∩[A199854(n+1), A093328(n)]`
-/

namespace A201611.P3609339717538199171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093328 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201611.P3609339717538199171

/-! ## A201611.P12738736101517034603

`∩[A199854(n+1), A201473(n+1)]`
-/

namespace A201611.P12738736101517034603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201611.P12738736101517034603

/-! ## A201611.P12404403859717541582

`∩[A107007(n+1), A093328(n)]`
-/

namespace A201611.P12404403859717541582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093328 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201611.P12404403859717541582

/-! ## A201611.P10752328414470210635

`∩[A107007(n+1), A201473(n+1)]`
-/

namespace A201611.P10752328414470210635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201611.P10752328414470210635

/-! ## A201611.P16998953284444877281

`p?[8*n²+3]`
-/

namespace A201611.P16998953284444877281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n ^ 2 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201611.P16998953284444877281

/-!
# A201612: Primes of the form 8n^2 + 5.

The programs for A201612, the canonical program `A201612.P142028785547822355` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201612 has offset 1).

The definition of A201612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4996 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201612.P142028785547822355

`record[A201474(n+1)%or(2, A201474(n+1))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A201612

/-- `record[A201474(n+1)%or(2, A201474(n+1))]` -/
def P142028785547822355.Spec : Prop :=
  ∀ n, P142028785547822355.a n = A201612 (n + 1)

theorem P142028785547822355.correct : P142028785547822355.Spec := by
  intro n
  simp only [A201612, Nat.add_sub_cancel]

end A201612

/-! ## A201612.P15978074095519181909

`∩[A107144(n+1), A201474(n+1)]`
-/

namespace A201612.P15978074095519181909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201612.P15978074095519181909

namespace A201612

/-- `∩[A107144(n+1), A201474(n+1)]` -/
def P15978074095519181909.Spec : Prop :=
  ∀ n, (P15978074095519181909.a n : ℤ) = A201612 (n + 1)

end A201612

/-! ## A201612.P15540195992799390735

`p?[8*n²+5]`
-/

namespace A201612.P15540195992799390735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n ^ 2 + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201612.P15540195992799390735

namespace A201612

/-- `p?[8*n²+5]` -/
def P15540195992799390735.Spec : Prop :=
  ∀ n, (P15540195992799390735.a n : ℤ) = A201612 (n + 1)

end A201612

/-! ## A201612.P2777627130763047601

`or(1, p?[n*8*n+5])`
-/

namespace A201612.P2777627130763047601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (8 * n) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201612.P2777627130763047601

namespace A201612

/-- `or(1, p?[n*8*n+5])` -/
def P2777627130763047601.Spec : Prop :=
  ∀ n, (P2777627130763047601.a n : ℤ) = A201612 (n + 1)

end A201612

/-! ## A201612.P7556381754489085498

`∏{p}[p?[n*8*n+5], #]`
-/

namespace A201612.P7556381754489085498
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (8 * n) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A201612.P7556381754489085498

namespace A201612

/-- `∏{p}[p?[n*8*n+5], #]` -/
def P7556381754489085498.Spec : Prop :=
  ∀ n, (P7556381754489085498.a n : ℤ) = A201612 (n + 1)

end A201612

/-! ## A201612.P3155759888608020083

`A000007(n+1)+p?[A093328(2*n)+2]`
-/

namespace A201612.P3155759888608020083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093328 (2 * n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201612.P3155759888608020083

namespace A201612

/-- `A000007(n+1)+p?[A093328(2*n)+2]` -/
def P3155759888608020083.Spec : Prop :=
  ∀ n, P3155759888608020083.a n = A201612 (n + 1)

end A201612

/-! ## A201612.P10567769835635778887

`A007318(C(2, n))*p?[A093328(2*n)+2]`
-/

namespace A201612.P10567769835635778887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093328 (2 * n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201612.P10567769835635778887

namespace A201612

/-- `A007318(C(2, n))*p?[A093328(2*n)+2]` -/
def P10567769835635778887.Spec : Prop :=
  ∀ n, P10567769835635778887.a n = A201612 (n + 1)

end A201612

/-! ## A201612.P924065499140508542

`A000203(gcd(n, n+1))*p?[A093328(2*n)+2]`
-/

namespace A201612.P924065499140508542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093328 (2 * n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.gcd n (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201612.P924065499140508542

namespace A201612

/-- `A000203(gcd(n, n+1))*p?[A093328(2*n)+2]` -/
def P924065499140508542.Spec : Prop :=
  ∀ n, P924065499140508542.a n = A201612 (n + 1)

end A201612

/-! ## A201612.P6218480237205419752

`(A000010(n+1)%2)!*p?[A093328(2*n)+2]`
-/

namespace A201612.P6218480237205419752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093328 (2 * n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000010 (n + 1)) 2).toNat : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201612.P6218480237205419752

namespace A201612

/-- `(A000010(n+1)%2)!*p?[A093328(2*n)+2]` -/
def P6218480237205419752.Spec : Prop :=
  ∀ n, P6218480237205419752.a n = A201612 (n + 1)

end A201612

/-! ## A201612.P3077652591159059575

`∩[A007521(n+1), A201474(n+1)]`
-/

namespace A201612.P3077652591159059575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201612.P3077652591159059575

namespace A201612

/-- `∩[A007521(n+1), A201474(n+1)]` -/
def P3077652591159059575.Spec : Prop :=
  ∀ n, (P3077652591159059575.a n : ℤ) = A201612 (n + 1)

end A201612

/-!
# A201613: Primes of the form p^2 + 2q^2 with p and q odd primes.

The programs for A201613, there is no canonical definition to state claims against.
-/

/-! ## A201613.P6890103432732246764

`A260553(n+2)`
-/

namespace A201613.P6890103432732246764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260553 (n + 2)

end

end A201613.P6890103432732246764

/-! ## A201613.P10682761541936621578

`record[A260553(A262672(abs(1-n)))]`
-/

namespace A201613.P10682761541936621578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260553 (A262672 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201613.P10682761541936621578

/-! ## A201613.P1076158149607687118

`record[A260553(A262672(2*n)-1)]`
-/

namespace A201613.P1076158149607687118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260553 (A262672 (2 * n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201613.P1076158149607687118

/-! ## A201613.P12680165776293781674

`A260553(log2(A020707(n)))%A016972(n)`
-/

namespace A201613.P12680165776293781674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260553 (SequenceMachineLib.roundAway (Real.logb 2 (A020707 n : ℝ))).toNat) (A016972 n)

end

end A201613.P12680165776293781674

/-! ## A201613.P13595621436936606698

`p?[A260553(log2(A020707(n)))]`
-/

namespace A201613.P13595621436936606698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260553 (SequenceMachineLib.roundAway (Real.logb 2 (A020707 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201613.P13595621436936606698

/-! ## A201613.P8366504104781115289

`record[A260553(A028242(comp[∑[n]]-n))]`
-/

namespace A201613.P8366504104781115289
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260553 (A028242 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201613.P8366504104781115289

/-!
# A201617: Number of n X n 0..3 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201617, there is no canonical definition to state claims against.
-/

/-! ## A201617.P4244574308992471067

`A201625(∑[4*n]+1)`
-/

namespace A201617.P4244574308992471067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201625 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201617.P4244574308992471067

/-!
# A201618: Number of n X 1 0..3 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201618, the canonical program `A201618.P9294934584635095668` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201618 has offset 1).

The definition of A201618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201618.P9294934584635095668

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=4, a(3)=10, a(4)=16, a(5)=26, a(6)=40, a(7)=59`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A201618

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P9294934584635095668.Spec : Prop :=
  ∀ n, P9294934584635095668.a n = A201618 (n + 1)

theorem P9294934584635095668.correct : P9294934584635095668.Spec := by
  intro n
  simp only [A201618, Nat.add_sub_cancel]

end A201618

/-! ## A201618.P14197884680727414600

`A097230(A046691(n+3))`
-/

namespace A201618.P14197884680727414600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097230 (A046691 (n + 3)).toNat

end

end A201618.P14197884680727414600

namespace A201618

/-- `A097230(A046691(n+3))` -/
def P14197884680727414600.Spec : Prop :=
  ∀ n, P14197884680727414600.a n = A201618 (n + 1)

end A201618

/-! ## A201618.P10929363618670938642

`A097230(Δ[A023545(n+1)])`
-/

namespace A201618.P10929363618670938642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097230 (f1 (n + 1) - f1 n).toNat

end

end A201618.P10929363618670938642

namespace A201618

/-- `A097230(Δ[A023545(n+1)])` -/
def P10929363618670938642.Spec : Prop :=
  ∀ n, P10929363618670938642.a n = A201618 (n + 1)

end A201618

/-! ## A201618.P17619574168661329106

`A180177(A167614(n+3)+1)`
-/

namespace A201618.P17619574168661329106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180177 (A167614 (n + 3) + 1).toNat

end

end A201618.P17619574168661329106

namespace A201618

/-- `A180177(A167614(n+3)+1)` -/
def P17619574168661329106.Spec : Prop :=
  ∀ n, P17619574168661329106.a n = A201618 (n + 1)

end A201618

/-! ## A201618.P5227520963232843280

`A097230(A000217(n+4)+n+1)`
-/

namespace A201618.P5227520963232843280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097230 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A201618.P5227520963232843280

namespace A201618

/-- `A097230(A000217(n+4)+n+1)` -/
def P5227520963232843280.Spec : Prop :=
  ∀ n, P5227520963232843280.a n = A201618 (n + 1)

end A201618

/-! ## A201618.P15877491698152361165

`A097230(A167499(n+2)+2*n)`
-/

namespace A201618.P15877491698152361165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097230 (A167499 (n + 2) + (2 * n : ℤ)).toNat

end

end A201618.P15877491698152361165

namespace A201618

/-- `A097230(A167499(n+2)+2*n)` -/
def P15877491698152361165.Spec : Prop :=
  ∀ n, P15877491698152361165.a n = A201618 (n + 1)

end A201618

/-!
# A201619: Number of nX2 0..3 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201619, there is no canonical definition to state claims against.
-/

/-! ## A201619.P13554388096274803301

`A201625(∑[n+1]+2)`
-/

namespace A201619.P13554388096274803301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201625 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201619.P13554388096274803301

/-! ## A201619.P15989543974927809903

`record[A201625(A359279(n+1)+2)]`
-/

namespace A201619.P15989543974927809903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201625 (A359279 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201619.P15989543974927809903

/-! ## A201619.P16952086804857644033

`record[A201625(A249725(2*(n+1)))]`
-/

namespace A201619.P16952086804857644033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201625 (A249725 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201619.P16952086804857644033

/-! ## A201619.P10434269976444653494

`record[A010054(n)*A201625(n+2)]`
-/

namespace A201619.P10434269976444653494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A201625 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201619.P10434269976444653494

/-! ## A201619.P7057507295324424289

`record[root(A201625(n+2), A201634(n))]`
-/

namespace A201619.P7057507295324424289
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A201625 (n + 2) : ℝ) ^ (1 / (A201634 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201619.P7057507295324424289

/-!
# A201620: Number of nX3 0..3 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201620, there is no canonical definition to state claims against.
-/

/-! ## A201620.P15548982348300809168

`A201625(∑[n+2]+4)`
-/

namespace A201620.P15548982348300809168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201625 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201620.P15548982348300809168

/-! ## A201620.P3615576043715002408

`record[A010054(n)*A201625(n+3)]`
-/

namespace A201620.P3615576043715002408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A201625 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201620.P3615576043715002408

/-! ## A201620.P1560358493668794155

`record[root(A201625(n+3), A055129(n+1))]`
-/

namespace A201620.P1560358493668794155
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A201625 (n + 3) : ℝ) ^ (1 / (A055129 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201620.P1560358493668794155

/-! ## A201620.P2345460082977406611

`A201625(A167614(n+1))+A086015(n)`
-/

namespace A201620.P2345460082977406611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201625 (A167614 (n + 1)).toNat + A086015 n

end

end A201620.P2345460082977406611

/-! ## A201620.P7860401079351292717

`A201625(A167614(n+1))+A184955(n)`
-/

namespace A201620.P7860401079351292717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201625 (A167614 (n + 1)).toNat + A184955 n

end

end A201620.P7860401079351292717

/-!
# A201621: Number of nX4 0..3 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201621, there is no canonical definition to state claims against.
-/

/-! ## A201621.P858153436432105794

`A201625(∑[n+3]+7)`
-/

namespace A201621.P858153436432105794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201625 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A201621.P858153436432105794

/-! ## A201621.P1012252480383081807

`A201625(A055999(n)+10)%A241127(n+1)`
-/

namespace A201621.P1012252480383081807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201625 (A055999 n + 10).toNat) (A241127 (n + 1))

end

end A201621.P1012252480383081807

/-! ## A201621.P8208252473902084257

`or(A040081(n+1), A201625(A055999(n)+10))`
-/

namespace A201621.P8208252473902084257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040081 (n + 1)) (A201625 (A055999 n + 10).toNat)

end

end A201621.P8208252473902084257

/-!
# A201622: Number of nX5 0..3 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201622, there is no canonical definition to state claims against.
-/

/-! ## A201622.P5706747442401016168

`A201625(A374005(n+1))`
-/

namespace A201622.P5706747442401016168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201625 (A374005 (n + 1)).toNat

end

end A201622.P5706747442401016168

/-! ## A201622.P10520498616305330929

`A201625(A167499(n+3))`
-/

namespace A201622.P10520498616305330929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201625 (A167499 (n + 3)).toNat

end

end A201622.P10520498616305330929

/-! ## A201622.P789360717201095580

`A201625(A155212(n)+13)`
-/

namespace A201622.P789360717201095580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201625 (A155212 n + 13).toNat

end

end A201622.P789360717201095580

/-! ## A201622.P6708713628899805993

`A201625(A056000(n)+15)`
-/

namespace A201622.P6708713628899805993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201625 (A056000 n + 15).toNat

end

end A201622.P6708713628899805993

/-! ## A201622.P2052522464029198249

`A201625(eq[7, A066657(n)])`
-/

namespace A201622.P2052522464029198249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201625 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201622.P2052522464029198249

/-!
# A201623: Number of nX6 0..3 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201623, there is no canonical definition to state claims against.
-/

/-! ## A201623.P16416301717243709189

`A201625(A374007(n+1))`
-/

namespace A201623.P16416301717243709189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201625 (A374007 (n + 1)).toNat

end

end A201623.P16416301717243709189

/-! ## A201623.P17817662157877783129

`A201625(A166136(n+4))`
-/

namespace A201623.P17817662157877783129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201625 (A166136 (n + 4)).toNat

end

end A201623.P17817662157877783129

/-! ## A201623.P6142412918460264278

`A201625(A056115(n)+21)`
-/

namespace A201623.P6142412918460264278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201625 (A056115 n + 21).toNat

end

end A201623.P6142412918460264278

/-! ## A201623.P7571801562714753703

`A201625(A167499(n+4)+1)`
-/

namespace A201623.P7571801562714753703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201625 (A167499 (n + 4) + 1).toNat

end

end A201623.P7571801562714753703

/-!
# A201624: Number of nX7 0..3 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201624, there is no canonical definition to state claims against.
-/

/-! ## A201624.P15901494299225953892

`A201625(A374008(n+1))`
-/

namespace A201624.P15901494299225953892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201625 (A374008 (n + 1)).toNat

end

end A201624.P15901494299225953892

/-!
# A201626: Number of ways to place n nonattacking wazirs on an n X n toroidal board.

The programs for A201626, there is no canonical definition to state claims against.
-/

/-! ## A201626.P3602075321616378888

`lcm(A037474(A308332(n)), A046530(n+1))`
-/

namespace A201626.P3602075321616378888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A037474 (A308332 n).toNat) (A046530 (n + 1))

end

end A201626.P3602075321616378888

/-!
# A201627: E.g.f. satisfies: A(x) = 1/(1 - sin(x*A(x))).

The programs for A201627, there is no canonical definition to state claims against.
-/

/-! ## A201627.P16632300469866556804

`A214222(n+1)/(n+1)`
-/

namespace A201627.P16632300469866556804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214222 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A201627.P16632300469866556804

/-! ## A201627.P1760981134739418115

`(n+1)^A008683(A020483(n))*A214222(n+1)`
-/

namespace A201627.P1760981134739418115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A214222 (n + 1) : ℚ)

end

end A201627.P1760981134739418115

/-!
# A201628: E.g.f. satisfies: A(x) = 1/(1 - sinh(x*A(x))).

The programs for A201628, there is no canonical definition to state claims against.
-/

/-! ## A201628.P421038821416234195

`A214223(n+1)/(n+1)`
-/

namespace A201628.P421038821416234195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214223 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A201628.P421038821416234195

/-! ## A201628.P2363418725981597290

`A392789(n)+A003415(A296406(n))`
-/

namespace A201628.P2363418725981597290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392789 n + A003415 (A296406 n).toNat

end

end A201628.P2363418725981597290

/-!
# A201629: a(n) = n if n is even and otherwise its nearest multiple of 4.

The programs for A201629, the canonical program `A201629.P2149105021995043293` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201629 has offset 0).

The definition of A201629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201629.P8958724683879640613

`n-sin(π*n/2)`
-/

namespace A201629.P8958724683879640613
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.sin (Real.pi * ((n : ℚ) / 2 : ℝ))

end

end A201629.P8958724683879640613

namespace A201629

/-- `n-sin(π*n/2)` -/
def P8958724683879640613.Spec : Prop :=
  ∀ n, P8958724683879640613.a n = (A201629 n : ℝ)

end A201629

/-! ## A201629.P2149105021995043293

`2*A004524(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A201629

/-- `2*A004524(n+1)` -/
def P2149105021995043293.Spec : Prop :=
  ∀ n, P2149105021995043293.a n = A201629 n

theorem P2149105021995043293.correct : P2149105021995043293.Spec := by
  intro n
  simp only [A201629]

end A201629

/-! ## A201629.P1289177562835994194

`∑[and(2, n)]`
-/

namespace A201629.P1289177562835994194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201629.P1289177562835994194

namespace A201629

/-- `∑[and(2, n)]` -/
def P1289177562835994194.Spec : Prop :=
  ∀ n, (P1289177562835994194.a n : ℤ) = A201629 n

end A201629

/-! ## A201629.P4418585688469935045

`Δ[or(1, C(n, 2))]`
-/

namespace A201629.P4418585688469935045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A201629.P4418585688469935045

namespace A201629

/-- `Δ[or(1, C(n, 2))]` -/
def P4418585688469935045.Spec : Prop :=
  ∀ n, P4418585688469935045.a n = A201629 n

end A201629

/-! ## A201629.P17058720343874822588

`Δ[and(C(n, 2), -2)]`
-/

namespace A201629.P17058720343874822588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.choose n 2 : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201629.P17058720343874822588

namespace A201629

/-- `Δ[and(C(n, 2), -2)]` -/
def P17058720343874822588.Spec : Prop :=
  ∀ n, P17058720343874822588.a n = A201629 n

end A201629

/-! ## A201629.P13815440517090849705

`∑[or(n, -3)+3]`
-/

namespace A201629.P13815440517090849705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-3) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201629.P13815440517090849705

namespace A201629

/-- `∑[or(n, -3)+3]` -/
def P13815440517090849705.Spec : Prop :=
  ∀ n, P13815440517090849705.a n = A201629 n

end A201629

/-! ## A201629.P9489790747802181523

`∑[2*char[or(2, n)]]`
-/

namespace A201629.P9489790747802181523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201629.P9489790747802181523

namespace A201629

/-- `∑[2*char[or(2, n)]]` -/
def P9489790747802181523.Spec : Prop :=
  ∀ n, (P9489790747802181523.a n : ℤ) = A201629 n

end A201629

/-! ## A201629.P1883612891997516634

`∑[(n²-n)%4]`
-/

namespace A201629.P1883612891997516634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - (n : ℤ)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201629.P1883612891997516634

namespace A201629

/-- `∑[(n²-n)%4]` -/
def P1883612891997516634.Spec : Prop :=
  ∀ n, P1883612891997516634.a n = A201629 n

end A201629

/-! ## A201629.P17072768339665038774

`∑[2*C(n, 2)%2]`
-/

namespace A201629.P17072768339665038774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.choose n 2 % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201629.P17072768339665038774

namespace A201629

/-- `∑[2*C(n, 2)%2]` -/
def P17072768339665038774.Spec : Prop :=
  ∀ n, (P17072768339665038774.a n : ℤ) = A201629 n

end A201629

/-! ## A201629.P9418915567016272487

`∑[2-or(2, n)+n]`
-/

namespace A201629.P9418915567016272487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.lor 2 n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201629.P9418915567016272487

namespace A201629

/-- `∑[2-or(2, n)+n]` -/
def P9418915567016272487.Spec : Prop :=
  ∀ n, P9418915567016272487.a n = A201629 n

end A201629

/-! ## A201629.P10373590250394150776

`∑[2-(or(2, n)-n)]`
-/

namespace A201629.P10373590250394150776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Nat.lor 2 n : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201629.P10373590250394150776

namespace A201629

/-- `∑[2-(or(2, n)-n)]` -/
def P10373590250394150776.Spec : Prop :=
  ∀ n, P10373590250394150776.a n = A201629 n

end A201629

/-! ## A201629.P2486643578299227251

`∑[2*C(n, or(2, n))]`
-/

namespace A201629.P2486643578299227251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n (Nat.lor 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201629.P2486643578299227251

namespace A201629

/-- `∑[2*C(n, or(2, n))]` -/
def P2486643578299227251.Spec : Prop :=
  ∀ n, (P2486643578299227251.a n : ℤ) = A201629 n

end A201629

/-! ## A201629.P5610096867161427958

`∑[xor(2, xor(n, or(2, n)))]`
-/

namespace A201629.P5610096867161427958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.xor n (Nat.lor 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201629.P5610096867161427958

namespace A201629

/-- `∑[xor(2, xor(n, or(2, n)))]` -/
def P5610096867161427958.Spec : Prop :=
  ∀ n, (P5610096867161427958.a n : ℤ) = A201629 n

end A201629

/-! ## A201629.P4192859878549933999

`∑[2-a(n-2)]` with `a(0)=0, a(1)=0`
-/

namespace A201629.P4192859878549933999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  2 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201629.P4192859878549933999

namespace A201629

/-- `∑[2-a(n-2)]` -/
def P4192859878549933999.Spec : Prop :=
  ∀ n, P4192859878549933999.a n = A201629 n

end A201629

/-! ## A201629.P7526920814387580360

`(n%4-2)%2+n`
-/

namespace A201629.P7526920814387580360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n % 4 : ℕ) : ℤ) - 2) 2 + (n : ℤ)

end

end A201629.P7526920814387580360

namespace A201629

/-- `(n%4-2)%2+n` -/
def P7526920814387580360.Spec : Prop :=
  ∀ n, P7526920814387580360.a n = A201629 n

end A201629

/-! ## A201629.P9658559804886139072

`and(n+1, gcd(2, n)-4)`
-/

namespace A201629.P9658559804886139072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((Nat.gcd 2 n : ℤ) - 4)

end

end A201629.P9658559804886139072

namespace A201629

/-- `and(n+1, gcd(2, n)-4)` -/
def P9658559804886139072.Spec : Prop :=
  ∀ n, P9658559804886139072.a n = A201629 n

end A201629

/-! ## A201629.P2102190876931537954

`n+1-C(2, and(3, n))`
-/

namespace A201629.P2102190876931537954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.choose 2 (Nat.land 3 n) : ℤ)

end

end A201629.P2102190876931537954

namespace A201629

/-- `n+1-C(2, and(3, n))` -/
def P2102190876931537954.Spec : Prop :=
  ∀ n, P2102190876931537954.a n = A201629 n

end A201629

/-! ## A201629.P9711927039082638123

`and(n+1, and(2, n)-4)`
-/

namespace A201629.P9711927039082638123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((Nat.land 2 n : ℤ) - 4)

end

end A201629.P9711927039082638123

namespace A201629

/-- `and(n+1, and(2, n)-4)` -/
def P9711927039082638123.Spec : Prop :=
  ∀ n, P9711927039082638123.a n = A201629 n

end A201629

/-! ## A201629.P9339379754394332075

`Δ[2*floor(C(n, 2)/2)]`
-/

namespace A201629.P9339379754394332075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(Nat.choose n 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201629.P9339379754394332075

namespace A201629

/-- `Δ[2*floor(C(n, 2)/2)]` -/
def P9339379754394332075.Spec : Prop :=
  ∀ n, P9339379754394332075.a n = A201629 n

end A201629

/-! ## A201629.P8758187778186018279

`floor(∑[(2*n)%8/3])`
-/

namespace A201629.P8758187778186018279
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n % 8 : ℕ) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A201629.P8758187778186018279

namespace A201629

/-- `floor(∑[(2*n)%8/3])` -/
def P8758187778186018279.Spec : Prop :=
  ∀ n, P8758187778186018279.a n = A201629 n

end A201629

/-!
# A201630: a(n) = a(n-1) + 2*a(n-2) with n>1, a(0)=2, a(1)=7.

The programs for A201630, the canonical program `A201630.P14709642753176078319` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201630 has offset 0).

The definition of A201630 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)` (program `A201630.P14709642753176078319`, by `A201630.P14709642753176078319.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A201630.P2984652934752921579

`3*2^n-(-1)^n`
-/

namespace A201630.P2984652934752921579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) - (-1) ^ n

end

end A201630.P2984652934752921579

namespace A201630

/-- `3*2^n-(-1)^n` -/
def P2984652934752921579.Spec : Prop :=
  ∀ n, P2984652934752921579.a n = A201630 n

theorem P2984652934752921579.correct : P2984652934752921579.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A201630, Nat.add_sub_cancel, A201630.P2984652934752921579.a, A201630.P14709642753176078319.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A201630, Nat.add_sub_cancel, A201630.P2984652934752921579.a, A201630.P14709642753176078319.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A201630

/-! ## A201630.P14709642753176078319

`a(n-1)+2*a(n-2)` with `a(0)=2, a(1)=7`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A201630

/-- `a(n-1)+2*a(n-2)` -/
def P14709642753176078319.Spec : Prop :=
  ∀ n, (P14709642753176078319.a n : ℤ) = A201630 n

theorem P14709642753176078319.correct : P14709642753176078319.Spec := by
  intro n
  simp only [A201630]

end A201630

/-! ## A201630.P10908724960975429475

`A097581(A042948(n+1))`
-/

namespace A201630.P10908724960975429475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097581 (A042948 (n + 1)).toNat

end

end A201630.P10908724960975429475

namespace A201630

/-- `A097581(A042948(n+1))` -/
def P10908724960975429475.Spec : Prop :=
  ∀ n, P10908724960975429475.a n = A201630 n

end A201630

/-! ## A201630.P4113435277832284483

`A097581(A338062(n+1))`
-/

namespace A201630.P4113435277832284483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097581 (A338062 (n + 1)).toNat

end

end A201630.P4113435277832284483

namespace A201630

/-- `A097581(A338062(n+1))` -/
def P4113435277832284483.Spec : Prop :=
  ∀ n, P4113435277832284483.a n = A201630 n

end A201630

/-! ## A201630.P10021281297495861470

`xor(A007283(n), A084181(n))`
-/

namespace A201630.P10021281297495861470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007283 n) (A084181 n)

end

end A201630.P10021281297495861470

namespace A201630

/-- `xor(A007283(n), A084181(n))` -/
def P10021281297495861470.Spec : Prop :=
  ∀ n, P10021281297495861470.a n = A201630 n

end A201630

/-! ## A201630.P7776975907065567990

`xor(A279872(n), A280345(n))`
-/

namespace A201630.P7776975907065567990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A279872 n) (A280345 n)

end

end A201630.P7776975907065567990

namespace A201630

/-- `xor(A279872(n), A280345(n))` -/
def P7776975907065567990.Spec : Prop :=
  ∀ n, P7776975907065567990.a n = A201630 n

end A201630

/-! ## A201630.P778168188786509635

`Δ[A192033(n+1)]`
-/

namespace A201630.P778168188786509635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201630.P778168188786509635

namespace A201630

/-- `Δ[A192033(n+1)]` -/
def P778168188786509635.Spec : Prop :=
  ∀ n, P778168188786509635.a n = A201630 n

end A201630

/-! ## A201630.P8570806189113883664

`∪[A198693(n), A199116(n)]`
-/

namespace A201630.P8570806189113883664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198693 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199116 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A201630.P8570806189113883664

namespace A201630

/-- `∪[A198693(n), A199116(n)]` -/
def P8570806189113883664.Spec : Prop :=
  ∀ n, (P8570806189113883664.a n : ℤ) = A201630 n

end A201630

/-! ## A201630.P6390036049022556609

`xor(A091629(n+1), A321643(n))`
-/

namespace A201630.P6390036049022556609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A091629 (n + 1)) (A321643 n)

end

end A201630.P6390036049022556609

namespace A201630

/-- `xor(A091629(n+1), A321643(n))` -/
def P6390036049022556609.Spec : Prop :=
  ∀ n, P6390036049022556609.a n = A201630 n

end A201630

/-!
# A201631: a(n) is the number of Fibonacci meanders of length m*n and central angle 360/m degrees where m = 2.

The programs for A201631, there is no canonical definition to state claims against.
-/

/-! ## A201631.P12267495548038832214

`∑[A051291(n)]`
-/

namespace A201631.P12267495548038832214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201631.P12267495548038832214

/-! ## A201631.P4771734613006748807

`∑[A077419(Δ[n²])]`
-/

namespace A201631.P4771734613006748807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077419 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201631.P4771734613006748807

/-! ## A201631.P10620838629703011002

`∑[record[A077419(xor(1, n))]]`
-/

namespace A201631.P10620838629703011002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077419 (Nat.xor 1 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201631.P10620838629703011002

/-! ## A201631.P11104010408214043454

`∑[record[A077419(n*n%2)]]`
-/

namespace A201631.P11104010408214043454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077419 (n * (n % 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201631.P11104010408214043454

/-! ## A201631.P14474024086522676777

`∑[record[A077419(lcm(4, n+1)/4)]]`
-/

namespace A201631.P14474024086522676777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077419 (SequenceMachineLib.roundAway ((Nat.lcm 4 (n + 1) : ℚ) / 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201631.P14474024086522676777

/-! ## A201631.P1866541287308527161

`A110198(n+1)-A203611(n+1)`
-/

namespace A201631.P1866541287308527161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110198 (n + 1) - A203611 (n + 1)

end

end A201631.P1866541287308527161

/-! ## A201631.P1192660344295063699

`A051291(n)+A110198(n)-A203611(n)`
-/

namespace A201631.P1192660344295063699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051291 n + (A110198 n - A203611 n)

end

end A201631.P1192660344295063699

/-! ## A201631.P9500559436222336183

`A110198(n+1)+A110236(n+1)-A051291(n+1)`
-/

namespace A201631.P9500559436222336183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110198 (n + 1) + (A110236 (n + 1) - A051291 (n + 1))

end

end A201631.P9500559436222336183

/-! ## A201631.P17220073031629106083

`∑[A110320(n+1)+A004148(n)]-A110320(n+1)`
-/

namespace A201631.P17220073031629106083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110320 (n + 1) + A004148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A110320 (n + 1)

end

end A201631.P17220073031629106083

/-! ## A201631.P4464122775142775905

`∑[A079487(A001105(n+1)-1)]`
-/

namespace A201631.P4464122775142775905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A001105 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201631.P4464122775142775905

/-!
# A201632: If the sum of the squares of 4 consecutive numbers is a triangular number t(u), then a(n) is its index u.

The programs for A201632, there is no canonical definition to state claims against.
-/

/-! ## A201632.P2745229556449025343

`2*A252747(n+1)-1`
-/

namespace A201632.P2745229556449025343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A252747 (n + 1) - 1

end

end A201632.P2745229556449025343

/-! ## A201632.P1931759156264366556

`A033999(2*n+1)+2*A252747(n+1)`
-/

namespace A201632.P1931759156264366556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + 2 * A252747 (n + 1)

end

end A201632.P1931759156264366556

/-! ## A201632.P18300942391007696187

`A010815(A007318(C(3, n)))+2*A252747(n+1)`
-/

namespace A201632.P18300942391007696187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A007318 (Nat.choose 3 n)).toNat + 2 * A252747 (n + 1)

end

end A201632.P18300942391007696187

/-! ## A201632.P6977496971233126647

`A252747(n+1)+A252747(n+1)-A309873(n+1)²`
-/

namespace A201632.P6977496971233126647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252747 (n + 1) + (A252747 (n + 1) - A309873 (n + 1) ^ 2)

end

end A201632.P6977496971233126647

/-! ## A201632.P7724444929964773735

`A008683(A181758(n+1))+2*A252747(n+1)`
-/

namespace A201632.P7724444929964773735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A181758 (n + 1)).toNat + 2 * A252747 (n + 1)

end

end A201632.P7724444929964773735

/-!
# A201633: Numbers k such that Sum_{j=0..3} (k + j)^2 is a triangular number.

The programs for A201633, there is no canonical definition to state claims against.
-/

/-! ## A201633.P2800225631817010203

`floor(A252747(n+1)/sqrt(2))-1`
-/

namespace A201633.P2800225631817010203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A252747 (n + 1) : ℝ) / Real.sqrt (2 : ℝ)⌋ - 1

end

end A201633.P2800225631817010203

/-!
# A201634: Triangle read by rows, n>=0, k>=0, T(n,n) = 2^n, T(n,k) = sum_{j=0..k} T(n-1,j) for k=0..n-1.

The programs for A201634, there is no canonical definition to state claims against.
-/

/-! ## A201634.P7863354155379766483

`A247023(A061579(n))`
-/

namespace A201634.P7863354155379766483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247023 (A061579 n).toNat

end

end A201634.P7863354155379766483

/-! ## A201634.P6583449774413020795

`A247023(A114327(n)+n)`
-/

namespace A201634.P6583449774413020795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247023 (A114327 n + (n : ℤ)).toNat

end

end A201634.P6583449774413020795

/-! ## A201634.P12394112117361462518

`A247023(A038722(n+1)-1)`
-/

namespace A201634.P12394112117361462518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247023 (A038722 (n + 1) - 1).toNat

end

end A201634.P12394112117361462518

/-! ## A201634.P1232444941178550161

`A247023(A002378(n)%A014132(n+1))`
-/

namespace A201634.P1232444941178550161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247023 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A201634.P1232444941178550161

/-! ## A201634.P9690961199131937574

`A247023(A004273(A038722(n+1))%A038722(n+1))`
-/

namespace A201634.P9690961199131937574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247023 (Int.tmod (A004273 (A038722 (n + 1)).toNat) (A038722 (n + 1))).toNat

end

end A201634.P9690961199131937574

/-!
# A201635: Triangle formed by T(n,n) = (-1)^n*Sum_{j=0..n} C(-n,j), T(n,k) = Sum_{j=0..k} T(n-1,j) for k=0..n-1, and n>=0, read by rows.

The programs for A201635, there is no canonical definition to state claims against.
-/

/-! ## A201635.P17671424916137720708

`A059259(A245300(n)-A051162(n))`
-/

namespace A201635.P17671424916137720708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 (A245300 n - A051162 n).toNat

end

end A201635.P17671424916137720708

/-! ## A201635.P13584606323273486137

`A108561(A245300(n))`
-/

namespace A201635.P13584606323273486137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (A245300 n).toNat

end

end A201635.P13584606323273486137

/-! ## A201635.P6959127381325494729

`A112465(A245300(n)+A025581(n))`
-/

namespace A201635.P6959127381325494729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (A245300 n + A025581 n).toNat

end

end A201635.P6959127381325494729

/-! ## A201635.P5275796239414441939

`gcd(A112555(A245300(n)), A133089(n))`
-/

namespace A201635.P5275796239414441939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112555 (A245300 n).toNat) (A133089 n)

end

end A201635.P5275796239414441939

/-! ## A201635.P3611010439213320527

`abs(A020985(n)*A112555(A245300(n)))`
-/

namespace A201635.P3611010439213320527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020985 n * A112555 (A245300 n).toNat|

end

end A201635.P3611010439213320527

/-! ## A201635.P3182840428167783210

`lcm(A017077(n)%2, A112555(A245300(n)))`
-/

namespace A201635.P3182840428167783210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A017077 n) 2) (A112555 (A245300 n).toNat)

end

end A201635.P3182840428167783210

/-! ## A201635.P6160600517359301818

`abs(A112555(A245300(n))%(A048337(n+1)+1))`
-/

namespace A201635.P6160600517359301818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A112555 (A245300 n).toNat) (A048337 (n + 1) + 1)|

end

end A201635.P6160600517359301818

/-! ## A201635.P13746176951790585423

`abs(A112555(A245300(n))%A245824(n+2))`
-/

namespace A201635.P13746176951790585423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A112555 (A245300 n).toNat) (A245824 (n + 2))|

end

end A201635.P13746176951790585423

/-!
# A201636: Triangle read by rows, n>=0, k>=0, T(0,0) = 1, T(n,k) = Sum_{j=0..k} (C(n+k,k-j)*(-1)^(k-j)*2^(n-j)*Sum_{i=0..j} (C(n+j,i)*|S(n+j-i,j-i)|)), S = Stirling number of first kind.

The programs for A201636, there is no canonical definition to state claims against.
-/

/-! ## A201636.P16553610464424206664

`2^(C(comp[∑[n]]-n, 2)-(n+1))*A269940(n)`
-/

namespace A201636.P16553610464424206664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A269940 n : ℚ)

end

end A201636.P16553610464424206664

/-! ## A201636.P2395178716571244443

`A130321(n)*A269940(n)`
-/

namespace A201636.P2395178716571244443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A269940 n

end

end A201636.P2395178716571244443

/-! ## A201636.P13372230039107522538

`sqrt(A262616(n))*A269940(n)`
-/

namespace A201636.P13372230039107522538
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A269940 n : ℝ)

end

end A201636.P13372230039107522538

/-! ## A201636.P667170271194059509

`A057728(n+1)*A269940(n)`
-/

namespace A201636.P667170271194059509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) * A269940 n

end

end A201636.P667170271194059509

/-! ## A201636.P18318486961973176019

`A000079(A025581(n))*A269940(n)`
-/

namespace A201636.P18318486961973176019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A269940 n

end

end A201636.P18318486961973176019

/-!
# A201637: Triangle of second-order Eulerian numbers T(n,k) (n>=0, 0 <= k <= n) read by rows.

The programs for A201637, there is no canonical definition to state claims against.
-/

/-! ## A201637.P9063942751920306908

`A340556(ceil(acot(n)+n))`
-/

namespace A201637.P9063942751920306908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340556 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A201637.P9063942751920306908

/-! ## A201637.P6128689094379219202

`A340556((n+1)%(2*n+1))`
-/

namespace A201637.P6128689094379219202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340556 ((n + 1) % (2 * n + 1))

end

end A201637.P6128689094379219202

/-! ## A201637.P16613172941261807724

`A340556(A087156(n+1))`
-/

namespace A201637.P16613172941261807724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340556 (A087156 (n + 1)).toNat

end

end A201637.P16613172941261807724

/-! ## A201637.P15486504763375412011

`A340556(A254667(n+1))`
-/

namespace A201637.P15486504763375412011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340556 (A254667 (n + 1)).toNat

end

end A201637.P15486504763375412011

/-! ## A201637.P10831105824021017196

`A340556(A199969(n+2))`
-/

namespace A201637.P10831105824021017196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340556 (A199969 (n + 2)).toNat

end

end A201637.P10831105824021017196

/-! ## A201637.P64576388943190847

`A340556(A054977(n)+n)`
-/

namespace A201637.P64576388943190847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340556 (A054977 n + (n : ℤ)).toNat

end

end A201637.P64576388943190847

/-! ## A201637.P16531421545846050865

`A340556(Δ[A002262(n)]+n)`
-/

namespace A201637.P16531421545846050865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340556 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A201637.P16531421545846050865

/-! ## A201637.P6658420047945976076

`A340556(n+1)+A000007(n)`
-/

namespace A201637.P6658420047945976076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340556 (n + 1) + A000007 n

end

end A201637.P6658420047945976076

/-! ## A201637.P5621130178972214601

`A340556(A002260(n+2)+n-A002260(n+1))`
-/

namespace A201637.P5621130178972214601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340556 (A002260 (n + 2) + ((n : ℤ) - A002260 (n + 1))).toNat

end

end A201637.P5621130178972214601

/-! ## A201637.P4835924589945993507

`A163936(n+1)+A340556(n+1)-A288874(n+1)`
-/

namespace A201637.P4835924589945993507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163936 (n + 1) + (A340556 (n + 1) - A288874 (n + 1))

end

end A201637.P4835924589945993507

/-! ## A201637.P12545962434953449053

`A288874(A002378(n)%A080036(n))`
-/

namespace A201637.P12545962434953449053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A201637.P12545962434953449053

/-! ## A201637.P16459022533955165312

`A288874(A061579(n))`
-/

namespace A201637.P16459022533955165312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (A061579 n).toNat

end

end A201637.P16459022533955165312

/-! ## A201637.P17490455393039999643

`A288874(A114327(n)+n)`
-/

namespace A201637.P17490455393039999643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (A114327 n + (n : ℤ)).toNat

end

end A201637.P17490455393039999643

/-! ## A201637.P3528224198730612917

`A288874(A038722(n+1)-1)`
-/

namespace A201637.P3528224198730612917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (A038722 (n + 1) - 1).toNat

end

end A201637.P3528224198730612917

/-! ## A201637.P2473387110174345732

`A288874(A002024(n+1)*A002024(n+1)-(n+1))`
-/

namespace A201637.P2473387110174345732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (A002024 (n + 1) * A002024 (n + 1) - (n + 1 : ℤ)).toNat

end

end A201637.P2473387110174345732

/-! ## A201637.P8997251980730553703

`A288874(A038722(n+2))+A000007(n)`
-/

namespace A201637.P8997251980730553703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (A038722 (n + 2)).toNat + A000007 n

end

end A201637.P8997251980730553703

/-! ## A201637.P18057236743245550773

`A340556(A233583(n+2))`
-/

namespace A201637.P18057236743245550773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340556 (A233583 (n + 2)).toNat

end

end A201637.P18057236743245550773

/-!
# A201639: Triangle read by rows, T(n,k) for 0<=k<=n, generalizes the Motzkin lattice paths with weights of A003645.

The programs for A201639, the canonical program `A201639.P15906228441824827675` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201639 has offset 0).

The definition of A201639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6555 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201639.P15906228441824827675

`A039598(n)*A130321(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A201639

/-- `A039598(n)*A130321(n)` -/
def P15906228441824827675.Spec : Prop :=
  ∀ n, P15906228441824827675.a n = A201639 n

theorem P15906228441824827675.correct : P15906228441824827675.Spec := by
  intro n
  simp only [A201639]

end A201639

/-! ## A201639.P8990865728561928039

`A000079(A025581(n))*A039598(n)`
-/

namespace A201639.P8990865728561928039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A039598 n

end

end A201639.P8990865728561928039

namespace A201639

/-- `A000079(A025581(n))*A039598(n)` -/
def P8990865728561928039.Spec : Prop :=
  ∀ n, P8990865728561928039.a n = A201639 n

end A201639

/-! ## A201639.P16887439303550573930

`A039598(n)*A059268(A061579(n))`
-/

namespace A201639.P16887439303550573930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 n * A059268 (A061579 n).toNat

end

end A201639.P16887439303550573930

namespace A201639

/-- `A039598(n)*A059268(A061579(n))` -/
def P16887439303550573930.Spec : Prop :=
  ∀ n, P16887439303550573930.a n = A201639 n

end A201639

/-! ## A201639.P6959756487420846709

`A038207(n)/A007318(n)*A039598(n)`
-/

namespace A201639.P6959756487420846709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n : ℚ) / (A007318 n : ℚ) * (A039598 n : ℚ)

end

end A201639.P6959756487420846709

namespace A201639

/-- `A038207(n)/A007318(n)*A039598(n)` -/
def P6959756487420846709.Spec : Prop :=
  ∀ n, P6959756487420846709.a n = (A201639 n : ℚ)

end A201639

/-! ## A201639.P7049434191677317267

`A155761(A185869(n+1))`
-/

namespace A201639.P7049434191677317267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155761 (A185869 (n + 1)).toNat

end

end A201639.P7049434191677317267

namespace A201639

/-- `A155761(A185869(n+1))` -/
def P7049434191677317267.Spec : Prop :=
  ∀ n, P7049434191677317267.a n = A201639 n

end A201639

/-! ## A201639.P9954261298575016901

`A001316(A173787(n))*A039598(n)`
-/

namespace A201639.P9954261298575016901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A173787 n).toNat * A039598 n

end

end A201639.P9954261298575016901

namespace A201639

/-- `A001316(A173787(n))*A039598(n)` -/
def P9954261298575016901.Spec : Prop :=
  ∀ n, P9954261298575016901.a n = A201639 n

end A201639

/-!
# A201640: a(n) = Sum_{k=1..n} k*binomial(n, k)^3*(n^2 + n - k*n - k + k^2)/((n - k + 1)^2*n).

The programs for A201640, there is no canonical definition to state claims against.
-/

/-! ## A201640.P5616126651959081050

`A314406(A002893(n)-1)`
-/

namespace A201640.P5616126651959081050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314406 (A002893 n - 1).toNat

end

end A201640.P5616126651959081050

/-!
# A201641: Triangle read by rows, T(n,k) for 0<=k<=n, generalizes the colored Motzkin paths of A129400.

The programs for A201641, there is no canonical definition to state claims against.
-/

/-! ## A201641.P1067042386656624278

`A064189(n)*A130321(n)`
-/

namespace A201641.P1067042386656624278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 n * A130321 n

end

end A201641.P1067042386656624278

/-! ## A201641.P7113425704039215721

`sqrt(A262616(n))*A064189(n)`
-/

namespace A201641.P7113425704039215721
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A064189 n : ℝ)

end

end A201641.P7113425704039215721

/-! ## A201641.P9199950720221566480

`A000079(A025581(n))*A064189(n)`
-/

namespace A201641.P9199950720221566480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A064189 n

end

end A201641.P9199950720221566480

/-! ## A201641.P8432732949783844238

`A059268(A061579(n))*A064189(n)`
-/

namespace A201641.P8432732949783844238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A061579 n).toNat * A064189 n

end

end A201641.P8432732949783844238

/-! ## A201641.P16572099998827541796

`A026300(A061579(n))*A130321(n)`
-/

namespace A201641.P16572099998827541796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A061579 n).toNat * A130321 n

end

end A201641.P16572099998827541796

/-! ## A201641.P1255746211692011806

`A038207(n)/A007318(n)*A064189(n)`
-/

namespace A201641.P1255746211692011806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n : ℚ) / (A007318 n : ℚ) * (A064189 n : ℚ)

end

end A201641.P1255746211692011806

/-!
# A201643: John Leech's example of a set of eleven distinct odd numbers the sum of whose reciprocals is 1.

The programs for A201643, there is no canonical definition to state claims against.
-/

/-! ## A201643.P11597347845626217883

`A018736(A251726(n+1))`
-/

namespace A201643.P11597347845626217883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018736 (A251726 (n + 1)).toNat

end

end A201643.P11597347845626217883

/-! ## A201643.P8602447586569409358

`A018736(comp[A019257(n+3)])`
-/

namespace A201643.P8602447586569409358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019257 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018736 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A201643.P8602447586569409358

/-! ## A201643.P7157486152413339746

`A018736(lt[n, A004086(n²)])`
-/

namespace A201643.P7157486152413339746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A201643.P7157486152413339746

/-! ## A201643.P6296098628458794791

`filter[A018736(n+2), A105586(#)]`
-/

namespace A201643.P6296098628458794791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018736 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105586 (f1 j).toNat = 1) n)

end

end A201643.P6296098628458794791

/-! ## A201643.P13800066656213061516

`filter[A018736(n+2), A144609(#)]`
-/

namespace A201643.P13800066656213061516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018736 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144609 (f1 j).toNat = 1) n)

end

end A201643.P13800066656213061516

/-!
# A201645: G.f.: x/sqrt(1 + x^2 - 2*x*sqrt(1 + 4*x^2)).

The programs for A201645, there is no canonical definition to state claims against.
-/

/-! ## A201645.P16019898168286383248

`A349177(A036591(n))+A282695(n+1)`
-/

namespace A201645.P16019898168286383248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349177 (A036591 n).toNat + A282695 (n + 1)

end

end A201645.P16019898168286383248

/-! ## A201645.P14755642339471437259

`A324695(A325341(n+1)+A007021(n+3))`
-/

namespace A201645.P14755642339471437259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324695 (A325341 (n + 1) + A007021 (n + 3)).toNat

end

end A201645.P14755642339471437259

/-!
# A201646: The second of the five known sets of nine distinct odd numbers the sum of whose reciprocals is 1.

The programs for A201646, there is no canonical definition to state claims against.
-/

/-! ## A201646.P1928486519669588112

`record[A201647(n+1)%A176682(n+3)]`
-/

namespace A201646.P1928486519669588112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201647 (n + 1)) (A176682 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201646.P1928486519669588112

/-! ## A201646.P9775604883870943528

`∪[A201647(n+2), A211121(A027383(n))]`
-/

namespace A201646.P9775604883870943528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201647 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211121 (A027383 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A201646.P9775604883870943528

/-! ## A201646.P2889919926359052084

`∪[A201648(n+2), A211121(A027383(n))]`
-/

namespace A201646.P2889919926359052084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201648 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211121 (A027383 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A201646.P2889919926359052084

/-!
# A201647: The third of the five known sets of nine distinct odd numbers the sum of whose reciprocals is 1.

The programs for A201647, there is no canonical definition to state claims against.
-/

/-! ## A201647.P10799991478908499502

`record[A201646(n+1)%A103471(n+3)]`
-/

namespace A201647.P10799991478908499502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201646 (n + 1)) (A103471 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201647.P10799991478908499502

/-! ## A201647.P5574802577802677712

`A003964(or(A201637(n), A201646(n+1)))`
-/

namespace A201647.P5574802577802677712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003964 (Int.lor (A201637 n) (A201646 (n + 1))).toNat

end

end A201647.P5574802577802677712

/-! ## A201647.P5054738186124078968

`A171890(A001349(n))+A044825(2*(n+1))`
-/

namespace A201647.P5054738186124078968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171890 (A001349 n).toNat + A044825 (2 * (n + 1))

end

end A201647.P5054738186124078968

/-! ## A201647.P10528239313707461934

`A201646(A044819(n+1))%A078008(n+4)`
-/

namespace A201647.P10528239313707461934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201646 (A044819 (n + 1)).toNat) (A078008 (n + 4))

end

end A201647.P10528239313707461934

/-!
# A201648: The fourth of the five known sets of nine distinct odd numbers the sum of whose reciprocals is 1.

The programs for A201648, there is no canonical definition to state claims against.
-/

/-! ## A201648.P4108890509969829008

`A005496(A047080(n)*A260391(n+1))`
-/

namespace A201648.P4108890509969829008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A047080 n * A260391 (n + 1)).toNat

end

end A201648.P4108890509969829008

/-! ## A201648.P8064489752239411987

`A005496(lcm(A257365(n), A260391(n+1)))`
-/

namespace A201648.P8064489752239411987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (Int.lcm (A257365 n) (A260391 (n + 1)))

end

end A201648.P8064489752239411987

/-! ## A201648.P6645077759801327356

`or(A201646(n+1), A327069(A000322(n)))`
-/

namespace A201648.P6645077759801327356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A201646 (n + 1)) (A327069 (A000322 n).toNat)

end

end A201648.P6645077759801327356

/-! ## A201648.P2551426859218432565

`or(A201647(n+1), A353398(A131708(n)))`
-/

namespace A201648.P2551426859218432565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A201647 (n + 1)) (A353398 (A131708 n).toNat)

end

end A201648.P2551426859218432565

/-!
# A201650: Allan Johnson's set of 48 squarefree numbers whose reciprocals add to 1, with the property that each number has exactly two distinct prime factors.

The programs for A201650, there is no canonical definition to state claims against.
-/

/-! ## A201650.P4646628254140937376

`eq[A083952(A097886(n+1)²), A286852(n)]`
-/

namespace A201650.P4646628254140937376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083952 (A097886 (n + 1) ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A201650.P4646628254140937376

/-! ## A201650.P7902243635503030970

`A001358(lt[A303280(3*n+5), A275914(n+1)])`
-/

namespace A201650.P7902243635503030970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303280 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A201650.P7902243635503030970

/-! ## A201650.P5408368217641404969

`∩[A115956(n+1), A316521(n+2)]`
-/

namespace A201650.P5408368217641404969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316521 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201650.P5408368217641404969

/-! ## A201650.P10700081285158562903

`A006881(∑[A052409(2*(8*n+9)²-1)])`
-/

namespace A201650.P10700081285158562903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (2 * (8 * n + 9) ^ 2 - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A201650.P10700081285158562903

/-! ## A201650.P15616292744645680905

`∩[A006881(n+1), A231238(n+1)]`
-/

namespace A201650.P15616292744645680905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201650.P15616292744645680905

/-!
# A201651: Bit-interleaved number addition table (cf. A054240) as triangle read by rows: T(n,k) = n and k added in binary representation, where carries shift 2 instead of 1, 0 <= k <= n.

The programs for A201651, there is no canonical definition to state claims against.
-/

/-! ## A201651.P469943017614859715

`A054240(A245300(n))`
-/

namespace A201651.P469943017614859715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054240 (A245300 n).toNat

end

end A201651.P469943017614859715

/-!
# A201652: A085623(n)/2.

The programs for A201652, there is no canonical definition to state claims against.
-/

/-! ## A201652.P3981807034322605783

`A085623(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A201652.P3981807034322605783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085623 (n + 2) : ℚ) / 2

end

end A201652.P3981807034322605783

/-! ## A201652.P14287687704570685014

`A001281(A085623(n+2))`
-/

namespace A201652.P14287687704570685014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A085623 (n + 2)).toNat

end

end A201652.P14287687704570685014

/-! ## A201652.P1138770047024577739

`A004526(A085623(n+2)+1)`
-/

namespace A201652.P1138770047024577739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A085623 (n + 2) + 1).toNat

end

end A201652.P1138770047024577739

/-! ## A201652.P15816095563518022760

`A028242(A085623(n+2)+1)`
-/

namespace A201652.P15816095563518022760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A085623 (n + 2) + 1).toNat

end

end A201652.P15816095563518022760

/-! ## A201652.P13836936143714308274

`A173989(A085623(n+2)+1)`
-/

namespace A201652.P13836936143714308274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173989 (A085623 (n + 2) + 1).toNat

end

end A201652.P13836936143714308274

/-! ## A201652.P5045894483250559959

`A026741(A085623(n+2)+2)-1`
-/

namespace A201652.P5045894483250559959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A085623 (n + 2) + 2).toNat - 1

end

end A201652.P5045894483250559959

/-! ## A201652.P1071582293930297659

`A026741(A085623(n+2))%A000124(n)`
-/

namespace A201652.P1071582293930297659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026741 (A085623 (n + 2)).toNat) (A000124 n)

end

end A201652.P1071582293930297659

/-!
# A201684: a(n) = 2*A052186(n) - n!.

The programs for A201684, there is no canonical definition to state claims against.
-/

/-! ## A201684.P10124883592206137407

`2*A052186(n)-n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A201684.P10124883592206137407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052186 n - (Nat.factorial n : ℤ)

end

end A201684.P10124883592206137407

/-! ## A201684.P7288677598955234412

`2*A052186(n)-A000142(n)`
-/

namespace A201684.P7288677598955234412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052186 n - A000142 n

end

end A201684.P7288677598955234412

/-! ## A201684.P18082681912971193516

`2*A145878(A000217(n))-A000142(n)`
-/

namespace A201684.P18082681912971193516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145878 (A000217 n).toNat - A000142 n

end

end A201684.P18082681912971193516

/-! ## A201684.P13709320668001074801

`2*A145878(A000217(n))-A081123(A005843(n))`
-/

namespace A201684.P13709320668001074801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145878 (A000217 n).toNat - A081123 (A005843 n).toNat

end

end A201684.P13709320668001074801

/-! ## A201684.P4174084898031526734

`2*A052186(n)+A000142(n)*A057428(A044725(n+1))`
-/

namespace A201684.P4174084898031526734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052186 n + A000142 n * A057428 (A044725 (n + 1)).toNat

end

end A201684.P4174084898031526734

/-!
# A201685: Triangular array read by rows. T(n,k) is the number of connected endofunctions on {1,2,...,n} that have exactly k nodes in the unique cycle of its digraph representation.

The programs for A201685, the canonical program `A201685.P14021662077219839221` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201685 has offset 1).

The definition of A201685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201685.P3001152549770835878

`A033842(n)*A137948(n)`
-/

namespace A201685.P3001152549770835878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033842 n * A137948 n

end

end A201685.P3001152549770835878

namespace A201685

/-- `A033842(n)*A137948(n)` -/
def P3001152549770835878.Spec : Prop :=
  ∀ n, P3001152549770835878.a n = A201685 (n + 1)

end A201685

/-! ## A201685.P14021662077219839221

`A008279(n)*A095888(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A201685

/-- `A008279(n)*A095888(n+1)` -/
def P14021662077219839221.Spec : Prop :=
  ∀ n, P14021662077219839221.a n = A201685 (n + 1)

theorem P14021662077219839221.correct : P14021662077219839221.Spec := by
  intro n
  simp only [A201685, Nat.add_sub_cancel]

end A201685

/-! ## A201685.P8872367175821760901

`A061356(n+2)*A233543(n)`
-/

namespace A201685.P8872367175821760901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061356 (n + 2) * A233543 n

end

end A201685.P8872367175821760901

namespace A201685

/-- `A061356(n+2)*A233543(n)` -/
def P8872367175821760901.Spec : Prop :=
  ∀ n, P8872367175821760901.a n = A201685 (n + 1)

end A201685

/-! ## A201685.P756404180788829485

`A002262(n)!*A061356(n+2)`
-/

namespace A201685.P756404180788829485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A061356 (n + 2)

end

end A201685.P756404180788829485

namespace A201685

/-- `A002262(n)!*A061356(n+2)` -/
def P756404180788829485.Spec : Prop :=
  ∀ n, P756404180788829485.a n = A201685 (n + 1)

end A201685

/-! ## A201685.P13197859396589668443

`A066324(n+1)/A002260(n+1)`
-/

namespace A201685.P13197859396589668443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066324 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A201685.P13197859396589668443

namespace A201685

/-- `A066324(n+1)/A002260(n+1)` -/
def P13197859396589668443.Spec : Prop :=
  ∀ n, P13197859396589668443.a n = (A201685 (n + 1) : ℚ)

end A201685

/-! ## A201685.P2458389701560796690

`A066324(n+1)/(A002262(n)+1)`
-/

namespace A201685.P2458389701560796690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066324 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)

end

end A201685.P2458389701560796690

namespace A201685

/-- `A066324(n+1)/(A002262(n)+1)` -/
def P2458389701560796690.Spec : Prop :=
  ∀ n, P2458389701560796690.a n = (A201685 (n + 1) : ℚ)

end A201685

/-! ## A201685.P2169458114971363227

`A066324(n+1)/sqrt(A133819(n+1))`
-/

namespace A201685.P2169458114971363227
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A066324 (n + 1) : ℝ) / Real.sqrt (A133819 (n + 1) : ℝ)

end

end A201685.P2169458114971363227

namespace A201685

/-- `A066324(n+1)/sqrt(A133819(n+1))` -/
def P2169458114971363227.Spec : Prop :=
  ∀ n, P2169458114971363227.a n = (A201685 (n + 1) : ℝ)

end A201685

/-! ## A201685.P17943394121815452193

`A219694(A038722(n+1))/A002260(n+1)`
-/

namespace A201685.P17943394121815452193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219694 (A038722 (n + 1)).toNat : ℚ) / (A002260 (n + 1) : ℚ)

end

end A201685.P17943394121815452193

namespace A201685

/-- `A219694(A038722(n+1))/A002260(n+1)` -/
def P17943394121815452193.Spec : Prop :=
  ∀ n, P17943394121815452193.a n = (A201685 (n + 1) : ℚ)

end A201685

/-! ## A201685.P4456243248199834679

`A068424(n+1)/A002024(n+1)²*A095896(n+1)`
-/

namespace A201685.P4456243248199834679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068424 (n + 1) : ℚ) / (A002024 (n + 1) ^ 2 : ℚ) * (A095896 (n + 1) : ℚ)

end

end A201685.P4456243248199834679

namespace A201685

/-- `A068424(n+1)/A002024(n+1)²*A095896(n+1)` -/
def P4456243248199834679.Spec : Prop :=
  ∀ n, P4456243248199834679.a n = (A201685 (n + 1) : ℚ)

end A201685

/-! ## A201685.P12751183064385705678

`A066324(n+1)/A000005(A059268(n))`
-/

namespace A201685.P12751183064385705678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066324 (n + 1) : ℚ) / (A000005 (A059268 n).toNat : ℚ)

end

end A201685.P12751183064385705678

namespace A201685

/-- `A066324(n+1)/A000005(A059268(n))` -/
def P12751183064385705678.Spec : Prop :=
  ∀ n, P12751183064385705678.a n = (A201685 (n + 1) : ℚ)

end A201685

/-!
# A201686: a(n) = binomial(n, [n/2]) - 2.

The programs for A201686, the canonical program `A201686.P5560453005708353295` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201686 has offset 0).

The definition of A201686 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201686.P5560453005708353295

`C(n, floor(n/2))-2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A201686

/-- `C(n, floor(n/2))-2` -/
def P5560453005708353295.Spec : Prop :=
  ∀ n, P5560453005708353295.a n = A201686 n

theorem P5560453005708353295.correct : P5560453005708353295.Spec := by
  intro n
  simp only [A201686]

end A201686

/-! ## A201686.P6175808956074591783

`A014495(n)-1`
-/

namespace A201686.P6175808956074591783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 n - 1

end

end A201686.P6175808956074591783

namespace A201686

/-- `A014495(n)-1` -/
def P6175808956074591783.Spec : Prop :=
  ∀ n, P6175808956074591783.a n = A201686 n

end A201686

/-! ## A201686.P13221277622957658097

`A001405(n)-2`
-/

namespace A201686.P13221277622957658097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - 2

end

end A201686.P13221277622957658097

namespace A201686

/-- `A001405(n)-2` -/
def P13221277622957658097.Spec : Prop :=
  ∀ n, P13221277622957658097.a n = A201686 n

end A201686

/-! ## A201686.P3459665068444066415

`A051920(n)-3`
-/

namespace A201686.P3459665068444066415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 n - 3

end

end A201686.P3459665068444066415

namespace A201686

/-- `A051920(n)-3` -/
def P3459665068444066415.Spec : Prop :=
  ∀ n, P3459665068444066415.a n = A201686 n

end A201686

/-! ## A201686.P4358290757739712918

`abs(A126930(n))-2`
-/

namespace A201686.P4358290757739712918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126930 n| - 2

end

end A201686.P4358290757739712918

namespace A201686

/-- `abs(A126930(n))-2` -/
def P4358290757739712918.Spec : Prop :=
  ∀ n, P4358290757739712918.a n = A201686 n

end A201686

/-! ## A201686.P14584165942090035934

`A210736(n+1)-2`
-/

namespace A201686.P14584165942090035934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) - 2

end

end A201686.P14584165942090035934

namespace A201686

/-- `A210736(n+1)-2` -/
def P14584165942090035934.Spec : Prop :=
  ∀ n, P14584165942090035934.a n = A201686 n

end A201686

/-! ## A201686.P11797065454807217379

`A395396(n)-A000035(n)`
-/

namespace A201686.P11797065454807217379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395396 n - A000035 n

end

end A201686.P11797065454807217379

namespace A201686

/-- `A395396(n)-A000035(n)` -/
def P11797065454807217379.Spec : Prop :=
  ∀ n, P11797065454807217379.a n = A201686 n

end A201686

/-! ## A201686.P8457700351363719169

`(∏[2*or(1, n)/(n+1)]-2)/2-1`
-/

namespace A201686.P8457700351363719169
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j - 2) / 2 - 1

end

end A201686.P8457700351363719169

namespace A201686

/-- `(∏[2*or(1, n)/(n+1)]-2)/2-1` -/
def P8457700351363719169.Spec : Prop :=
  ∀ n, P8457700351363719169.a n = (A201686 n : ℚ)

end A201686

/-! ## A201686.P8963630679712492122

`Δ[∑[(n-1)*a(n-1)/floor(n/2)]-2*n]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A201686.P8963630679712492122
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n f2 =>
  ((n : ℤ) - 1 : ℚ) * (f2 (n - 1) / (⌊(n : ℚ) / 2⌋ : ℚ))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (2 * n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201686.P8963630679712492122

namespace A201686

/-- `Δ[∑[(n-1)*a(n-1)/floor(n/2)]-2*n]` -/
def P8963630679712492122.Spec : Prop :=
  ∀ n, P8963630679712492122.a n = (A201686 n : ℚ)

end A201686

/-! ## A201686.P17118953406259669175

`A218008(n)/2-1`
-/

namespace A201686.P17118953406259669175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218008 n : ℚ) / 2 - 1

end

end A201686.P17118953406259669175

namespace A201686

/-- `A218008(n)/2-1` -/
def P17118953406259669175.Spec : Prop :=
  ∀ n, P17118953406259669175.a n = (A201686 n : ℚ)

end A201686

/-! ## A201686.P832086153167654617

`Δ[A072100(n+1)]-2`
-/

namespace A201686.P832086153167654617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A201686.P832086153167654617

namespace A201686

/-- `Δ[A072100(n+1)]-2` -/
def P832086153167654617.Spec : Prop :=
  ∀ n, P832086153167654617.a n = A201686 n

end A201686

/-! ## A201686.P17331205223554865131

`A063886(n+1)/2-2`
-/

namespace A201686.P17331205223554865131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063886 (n + 1) : ℚ) / 2 - 2

end

end A201686.P17331205223554865131

namespace A201686

/-- `A063886(n+1)/2-2` -/
def P17331205223554865131.Spec : Prop :=
  ∀ n, P17331205223554865131.a n = (A201686 n : ℚ)

end A201686

/-! ## A201686.P13924920160150699477

`A000918(n)-A045621(n)`
-/

namespace A201686.P13924920160150699477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n - A045621 n

end

end A201686.P13924920160150699477

namespace A201686

/-- `A000918(n)-A045621(n)` -/
def P13924920160150699477.Spec : Prop :=
  ∀ n, P13924920160150699477.a n = A201686 n

end A201686

/-! ## A201686.P12854828037139970924

`A261681(n)-A000051(n)`
-/

namespace A201686.P12854828037139970924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261681 n - A000051 n

end

end A201686.P12854828037139970924

namespace A201686

/-- `A261681(n)-A000051(n)` -/
def P12854828037139970924.Spec : Prop :=
  ∀ n, P12854828037139970924.a n = A201686 n

end A201686

/-! ## A201686.P6020340022103780602

`A000225(n)+A261681(n)-A000079(n+1)`
-/

namespace A201686.P6020340022103780602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A261681 n - A000079 (n + 1))

end

end A201686.P6020340022103780602

namespace A201686

/-- `A000225(n)+A261681(n)-A000079(n+1)` -/
def P6020340022103780602.Spec : Prop :=
  ∀ n, P6020340022103780602.a n = A201686 n

end A201686

/-! ## A201686.P3788490214998695049

`A100071(n+1)/(n+1)-2`
-/

namespace A201686.P3788490214998695049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100071 (n + 1) : ℚ) / (n + 1 : ℚ) - 2

end

end A201686.P3788490214998695049

namespace A201686

/-- `A100071(n+1)/(n+1)-2` -/
def P3788490214998695049.Spec : Prop :=
  ∀ n, P3788490214998695049.a n = (A201686 n : ℚ)

end A201686

/-! ## A201686.P4815023022006178557

`A059481(A101881(n))-2`
-/

namespace A201686.P4815023022006178557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (A101881 n).toNat - 2

end

end A201686.P4815023022006178557

namespace A201686

/-- `A059481(A101881(n))-2` -/
def P4815023022006178557.Spec : Prop :=
  ∀ n, P4815023022006178557.a n = A201686 n

end A201686

/-! ## A201686.P17255969025654085589

`A059481(A165157(n+1))-2`
-/

namespace A201686.P17255969025654085589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (A165157 (n + 1)).toNat - 2

end

end A201686.P17255969025654085589

namespace A201686

/-- `A059481(A165157(n+1))-2` -/
def P17255969025654085589.Spec : Prop :=
  ∀ n, P17255969025654085589.a n = A201686 n

end A201686

/-! ## A201686.P15131652172466549264

`abs(C(n, ∑[n%2])-1)-1`
-/

namespace A201686.P15131652172466549264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1| - 1

end

end A201686.P15131652172466549264

namespace A201686

/-- `abs(C(n, ∑[n%2])-1)-1` -/
def P15131652172466549264.Spec : Prop :=
  ∀ n, P15131652172466549264.a n = A201686 n

end A201686

/-! ## A201686.P14628838444930326403

`or(C(n, round(n/2)), char[1])-2`
-/

namespace A201686.P14628838444930326403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor (Nat.choose n (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat) (if ∃ j, f1 j = n then 1 else 0) : ℤ) - 2

end

end A201686.P14628838444930326403

namespace A201686

/-- `or(C(n, round(n/2)), char[1])-2` -/
def P14628838444930326403.Spec : Prop :=
  ∀ n, P14628838444930326403.a n = A201686 n

end A201686

/-!
# A201687: a(1)=0; a(n) = b(n) - Sum_{r=1..n-1} a(r)*b(n-1-r), where b(n) = A000085(n).

The programs for A201687, there is no canonical definition to state claims against.
-/

/-! ## A201687.P17419200674538279604

`A067628(A052882(n))-n`
-/

namespace A201687.P17419200674538279604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067628 (A052882 n).toNat - (n : ℤ)

end

end A201687.P17419200674538279604

/-! ## A201687.P8743912978901666021

`A045623(n)-A007954(A097678(n))`
-/

namespace A201687.P8743912978901666021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n - A007954 (A097678 n).toNat

end

end A201687.P8743912978901666021

/-! ## A201687.P12843296297142728521

`A005843(A242566(n))%A242565(n+1)`
-/

namespace A201687.P12843296297142728521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A242566 n).toNat) (A242565 (n + 1))

end

end A201687.P12843296297142728521

/-!
# A201688: Primes of the form p^2 + 18, where p is prime.

The programs for A201688, there is no canonical definition to state claims against.
-/

/-! ## A201688.P6261556525210193503

`∩[A201613(n+1), A259054(n+1)]`
-/

namespace A201688.P6261556525210193503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201688.P6261556525210193503

/-! ## A201688.P6441080746985971225

`∩[A201613(n+1), A241848(n)]`
-/

namespace A201688.P6441080746985971225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241848 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201688.P6441080746985971225

/-! ## A201688.P16158635045059328371

`∩[A259054(n+1), A260553(n+1)]`
-/

namespace A201688.P16158635045059328371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201688.P16158635045059328371

/-! ## A201688.P376297493968656695

`∩[A241848(2*n+1), A260553(n+2)]`
-/

namespace A201688.P376297493968656695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241848 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260553 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201688.P376297493968656695

/-! ## A201688.P9658461627016461528

`∩[A260553(n+1), A241848(n)]`
-/

namespace A201688.P9658461627016461528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241848 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201688.P9658461627016461528

/-! ## A201688.P11047383401868892448

`p?[A045636(n+1)+14]`
-/

namespace A201688.P11047383401868892448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1) + 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201688.P11047383401868892448

/-! ## A201688.P820332295072672401

`p?[A000040(n+1)²+18]`
-/

namespace A201688.P820332295072672401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201688.P820332295072672401

/-! ## A201688.P9436945112739077895

`p?[A241848(p?[2*n+1])]`
-/

namespace A201688.P9436945112739077895
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241848 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201688.P9436945112739077895

/-! ## A201688.P11395335710311667441

`p?[A000040(n+2)^2+18]`
-/

namespace A201688.P11395335710311667441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) ^ 2 + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201688.P11395335710311667441

/-! ## A201688.P14695491401209975600

`p?[A241848(A000040(n+1))]`
-/

namespace A201688.P14695491401209975600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241848 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201688.P14695491401209975600

/-!
# A201690: Number of permutations of [n] avoiding the pattern 123 (with a dot over the 3).

The programs for A201690, there is no canonical definition to state claims against.
-/

/-! ## A201690.P2520626964981486446

`or(A089064(n), A249833(n))`
-/

namespace A201690.P2520626964981486446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089064 n) (A249833 n)

end

end A201690.P2520626964981486446

/-! ## A201690.P14412142903991391216

`floor(A323694(n)/A323672(n))`
-/

namespace A201690.P14412142903991391216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323694 n : ℚ) / (A323672 n : ℚ)⌋

end

end A201690.P14412142903991391216

/-! ## A201690.P10683303470749991873

`∑[A217033(n)]-A005001(n)`
-/

namespace A201690.P10683303470749991873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005001 n

end

end A201690.P10683303470749991873

/-!
# A201691: Number of permutations of [n] avoiding the pattern 132 (with a dot over the 2).

The programs for A201691, there is no canonical definition to state claims against.
-/

/-! ## A201691.P8858881691587474243

`A093859(a(n-1))-(2-a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A201691.P8858881691587474243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A093859 (a (n - 1)).toNat - (2 - a (n - 1))

end

end A201691.P8858881691587474243

/-! ## A201691.P540620799203407317

`A340764(A001563(n)+2)`
-/

namespace A201691.P540620799203407317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A001563 n + 2).toNat

end

end A201691.P540620799203407317

/-! ## A201691.P14969108252418544439

`A340764(or(2, A001563(n)))`
-/

namespace A201691.P14969108252418544439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (Int.lor 2 (A001563 n)).toNat

end

end A201691.P14969108252418544439

/-!
# A201692: Number of permutations that avoid the consecutive pattern 1423.

The programs for A201692, there is no canonical definition to state claims against.
-/

/-! ## A201692.P8222362146119065861

`or(A004137(A004149(n)), A117156(n))`
-/

namespace A201692.P8222362146119065861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004137 (A004149 n).toNat) (A117156 n)

end

end A201692.P8222362146119065861

/-! ## A201692.P5203224721792947711

`or(A117156(n), A353698(A287804(n)))`
-/

namespace A201692.P5203224721792947711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A117156 n) (A353698 (A287804 n).toNat)

end

end A201692.P5203224721792947711

/-! ## A201692.P6710674853589233322

`A113229(n)-A346633(A181153(n+3))`
-/

namespace A201692.P6710674853589233322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113229 n - A346633 (A181153 (n + 3)).toNat

end

end A201692.P6710674853589233322

/-! ## A201692.P11910026475133095786

`A185284(A049445(2*n+1))+A117226(n)`
-/

namespace A201692.P11910026475133095786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A049445 (2 * n + 1)).toNat + A117226 n

end

end A201692.P11910026475133095786

/-!
# A201693: Number of permutations that avoid the consecutive pattern 2413.

The programs for A201693, there is no canonical definition to state claims against.
-/

/-! ## A201693.P9320740239251577449

`or(A113228(n), A127324(A054499(n)))`
-/

namespace A201693.P9320740239251577449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A113228 n) (A127324 (A054499 n).toNat)

end

end A201693.P9320740239251577449

/-! ## A201693.P4840524746015515983

`or(A113228(n), A286324(A073995(n+1)))`
-/

namespace A201693.P4840524746015515983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A113228 n) (A286324 (A073995 (n + 1)).toNat)

end

end A201693.P4840524746015515983

/-!
# A201694: Number of n X n 0..2 arrays with rows and columns lexicographically nondecreasing read forwards and nonincreasing read backwards.

The programs for A201694, there is no canonical definition to state claims against.
-/

/-! ## A201694.P8486187772756505588

`A201700(∑[4*n]+1)`
-/

namespace A201694.P8486187772756505588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201700 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201694.P8486187772756505588

/-! ## A201694.P2534393412156319290

`record[A201700(A050187(n)+1)]`
-/

namespace A201694.P2534393412156319290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201700 (A050187 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201694.P2534393412156319290

/-! ## A201694.P13826319411843348712

`record[A003982(n)*A201700(n+1)]`
-/

namespace A201694.P13826319411843348712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A201700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201694.P13826319411843348712

/-!
# A201695: Number of n X 3 0..2 arrays with rows and columns lexicographically nondecreasing read forwards and nonincreasing read backwards.

The programs for A201695, the canonical program `A201695.P8535351927767018830` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201695 has offset 1).

The definition of A201695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201695.P8535351927767018830

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=18, a(2)=116, a(3)=395, a(4)=989`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A201695

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P8535351927767018830.Spec : Prop :=
  ∀ n, P8535351927767018830.a n = A201695 (n + 1)

theorem P8535351927767018830.correct : P8535351927767018830.Spec := by
  intro n
  simp only [A201695, Nat.add_sub_cancel]

end A201695

/-! ## A201695.P15410226513991874120

`3/2*(n+1)^4+4/3*(n+1)^3-4*(n+1)²-29/6*(n+1)+9`
-/

namespace A201695.P15410226513991874120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * ((n + 1) ^ 4 : ℚ) + (4 : ℚ) / 3 * ((n + 1) ^ 3 : ℚ) - (4 * (n + 1) ^ 2 : ℚ) - (29 : ℚ) / 6 * (n + 1 : ℚ) + 9

end

end A201695.P15410226513991874120

namespace A201695

/-- `3/2*(n+1)^4+4/3*(n+1)^3-4*(n+1)²-29/6*(n+1)+9` -/
def P15410226513991874120.Spec : Prop :=
  ∀ n, P15410226513991874120.a n = (A201695 (n + 1) : ℚ)

theorem P15410226513991874120.correct : P15410226513991874120.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A201695, Nat.add_sub_cancel, A201695.P15410226513991874120.a, A201695.P8535351927767018830.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A201695, Nat.add_sub_cancel, A201695.P15410226513991874120.a, A201695.P8535351927767018830.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A201695

/-! ## A201695.P13019360519730318797

`A201700(∑[n+2]+4)`
-/

namespace A201695.P13019360519730318797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201700 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201695.P13019360519730318797

namespace A201695

/-- `A201700(∑[n+2]+4)` -/
def P13019360519730318797.Spec : Prop :=
  ∀ n, P13019360519730318797.a n = A201695 (n + 1)

end A201695

/-!
# A201696: Number of n X 4 0..2 arrays with rows and columns lexicographically nondecreasing read forwards and nonincreasing read backwards.

The programs for A201696, there is no canonical definition to state claims against.
-/

/-! ## A201696.P8780486537062447577

`A201700(∑[7-(6-a(n-1))%n])` with `a(0)=1, a(1)=13, a(2)=5`
-/

namespace A201696.P8780486537062447577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 13, 5] fun n f1 =>
  7 - Int.tmod (6 - f1 (n - 1)) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201700 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A201696.P8780486537062447577

/-! ## A201696.P5012787432504936244

`A201700(A374004(n+1))`
-/

namespace A201696.P5012787432504936244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201700 (A374004 (n + 1)).toNat

end

end A201696.P5012787432504936244

/-! ## A201696.P15598228300771871732

`A201700(A141214(n)+7)`
-/

namespace A201696.P15598228300771871732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201700 (A141214 n + 7).toNat

end

end A201696.P15598228300771871732

/-! ## A201696.P17867497951308754715

`A201700(A052905(n)+9)`
-/

namespace A201696.P17867497951308754715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201700 (A052905 n + 9).toNat

end

end A201696.P17867497951308754715

/-! ## A201696.P8353773864431893244

`A201700(A055999(n)+10)`
-/

namespace A201696.P8353773864431893244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201700 (A055999 n + 10).toNat

end

end A201696.P8353773864431893244

/-!
# A201697: Number of nX5 0..2 arrays with rows and columns lexicographically nondecreasing read forwards and nonincreasing read backwards.

The programs for A201697, there is no canonical definition to state claims against.
-/

/-! ## A201697.P8393466082453708914

`A201700(∑[7-(6-a(n-1))%n])` with `a(0)=15, a(1)=5`
-/

namespace A201697.P8393466082453708914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [15, 5] fun n f1 =>
  7 - Int.tmod (6 - f1 (n - 1)) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201700 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A201697.P8393466082453708914

/-! ## A201697.P2560156440420994962

`A201700(A374005(n+1))`
-/

namespace A201697.P2560156440420994962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201700 (A374005 (n + 1)).toNat

end

end A201697.P2560156440420994962

/-! ## A201697.P9206193706015228176

`A201700(A155212(n)+13)`
-/

namespace A201697.P9206193706015228176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201700 (A155212 n + 13).toNat

end

end A201697.P9206193706015228176

/-! ## A201697.P14972995684731068696

`A201700(A056000(n)+15)`
-/

namespace A201697.P14972995684731068696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201700 (A056000 n + 15).toNat

end

end A201697.P14972995684731068696

/-! ## A201697.P3615574671503503579

`A201700(eq[7, A066657(n)])`
-/

namespace A201697.P3615574671503503579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201700 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201697.P3615574671503503579

/-!
# A201698: Number of nX6 0..2 arrays with rows and columns lexicographically nondecreasing read forwards and nonincreasing read backwards.

The programs for A201698, there is no canonical definition to state claims against.
-/

/-! ## A201698.P6266242718926500324

`A201700(∑[7-(6-a(n-1))%n])` with `a(0)=21, a(1)=6`
-/

namespace A201698.P6266242718926500324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [21, 6] fun n f1 =>
  7 - Int.tmod (6 - f1 (n - 1)) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201700 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A201698.P6266242718926500324

/-! ## A201698.P17201270231895852562

`A201700(A374007(n+1))`
-/

namespace A201698.P17201270231895852562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201700 (A374007 (n + 1)).toNat

end

end A201698.P17201270231895852562

/-! ## A201698.P8470506478263342033

`A201700(A056115(n)+21)`
-/

namespace A201698.P8470506478263342033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201700 (A056115 n + 21).toNat

end

end A201698.P8470506478263342033

/-! ## A201698.P11479384816079437922

`A201700(eq[6, A256910(n)])`
-/

namespace A201698.P11479384816079437922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201700 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201698.P11479384816079437922

/-! ## A201698.P17175161781625488063

`A201700(A167614(n+4)+3)`
-/

namespace A201698.P17175161781625488063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201700 (A167614 (n + 4) + 3).toNat

end

end A201698.P17175161781625488063

/-!
# A201699: Number of nX7 0..2 arrays with rows and columns lexicographically nondecreasing read forwards and nonincreasing read backwards.

The programs for A201699, there is no canonical definition to state claims against.
-/

/-! ## A201699.P18399384323660819981

`A201700(∑[7-(6-a(n-1))%n])` with `a(0)=28`
-/

namespace A201699.P18399384323660819981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [28] fun n f1 =>
  7 - Int.tmod (6 - f1 (n - 1)) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201700 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A201699.P18399384323660819981

/-! ## A201699.P11364472019168770664

`A201700(A374008(n+1))`
-/

namespace A201699.P11364472019168770664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201700 (A374008 (n + 1)).toNat

end

end A201699.P11364472019168770664

/-! ## A201699.P6274858151168039073

`A201700(A056119(n)+28)`
-/

namespace A201699.P6274858151168039073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201700 (A056119 n + 28).toNat

end

end A201699.P6274858151168039073

/-! ## A201699.P8789475525088392577

`A201700(eq[11, A066657(n)])`
-/

namespace A201699.P8789475525088392577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201700 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201699.P8789475525088392577

/-! ## A201699.P1207650461221659844

`A201700(A000217(n+6)+7)`
-/

namespace A201699.P1207650461221659844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201700 (A000217 (n + 6) + 7).toNat

end

end A201699.P1207650461221659844

