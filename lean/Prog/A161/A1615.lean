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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A161500: Primes dividing some member of A073833.

The programs for A161500, there is no canonical definition to state claims against.
-/

/-! ## A161500.P3841063576889812803

`record[p?[A114327(A107143(n+1))]]`
-/

namespace A161500.P3841063576889812803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A107143 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161500.P3841063576889812803

/-! ## A161500.P5104671848490108838

`∩[A002313(A261034(n+1)), A303431(n+1)]`
-/

namespace A161500.P5104671848490108838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (A261034 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161500.P5104671848490108838

/-!
# A161501: a(n) is the smallest positive integer that is a palindrome when represented in binary, and is made by appending some number (zero or more) of binary digits on the right of n's binary representation.

The programs for A161501, there is no canonical definition to state claims against.
-/

/-! ## A161501.P201744493995506027

`A347347(A165789(n+1))%A072180(3*n+1)`
-/

namespace A161501.P201744493995506027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347347 (A165789 (n + 1)).toNat) (A072180 (3 * n + 1))

end

end A161501.P201744493995506027

/-! ## A161501.P9040246916338299093

`A210709(A008578(n+1))+A145800(n+1)`
-/

namespace A161501.P9040246916338299093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (A008578 (n + 1)).toNat + A145800 (n + 1)

end

end A161501.P9040246916338299093

/-! ## A161501.P13871641515219871935

`A210709(A276498(n+2))+A145800(n+1)`
-/

namespace A161501.P13871641515219871935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (A276498 (n + 2)).toNat + A145800 (n + 1)

end

end A161501.P13871641515219871935

/-!
# A161502: a(n) is the smallest number of binary digits that when appended to the right side of the binary representation of n, forms a binary palindrome.

The programs for A161502, there is no canonical definition to state claims against.
-/

/-! ## A161502.P211905535454291099

`floor(log2(A161501(n+1)/(n+1)))`
-/

namespace A161502.P211905535454291099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 ((A161501 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)⌋

end

end A161502.P211905535454291099

/-! ## A161502.P3652835186026989512

`A007814(floor(A161501(n+1)/(n+1)))`
-/

namespace A161502.P3652835186026989512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 ⌊(A161501 (n + 1) : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A161502.P3652835186026989512

/-! ## A161502.P12534356428137634099

`A056239(floor(A161501(n+1)/(n+1)))`
-/

namespace A161502.P12534356428137634099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 ⌊(A161501 (n + 1) : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A161502.P12534356428137634099

/-! ## A161502.P10131777528963631740

`A062799(floor(A161501(n+1)/(n+1)))`
-/

namespace A161502.P10131777528963631740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062799 ⌊(A161501 (n + 1) : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A161502.P10131777528963631740

/-! ## A161502.P18016418144025235005

`A000523(A161501(n+1))-A000523(n+1)`
-/

namespace A161502.P18016418144025235005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A161501 (n + 1)).toNat - A000523 (n + 1)

end

end A161502.P18016418144025235005

/-! ## A161502.P4132597539625921038

`A070939(A161501(n+1))-A070939(n+1)`
-/

namespace A161502.P4132597539625921038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A161501 (n + 1)).toNat - A070939 (n + 1)

end

end A161502.P4132597539625921038

/-! ## A161502.P4593252719699879511

`A070939(A161501(C(n+1, n)))%A070939(n+1)`
-/

namespace A161502.P4593252719699879511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (A161501 (Nat.choose (n + 1) n)).toNat) (A070939 (n + 1))

end

end A161502.P4593252719699879511

/-! ## A161502.P4785499617412281189

`A070939(A161501(n+1))%A000523(A005408(n+1))`
-/

namespace A161502.P4785499617412281189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (A161501 (n + 1)).toNat) (A000523 (A005408 (n + 1)).toNat)

end

end A161502.P4785499617412281189

/-!
# A161503: a(n) = NextPrime(n^n) - PrevPrime(n^n).

The programs for A161503, there is no canonical definition to state claims against.
-/

/-! ## A161503.P14876184718425767614

`A074966(n+2)+A074967(n+2)`
-/

namespace A161503.P14876184718425767614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074966 (n + 2) + A074967 (n + 2)

end

end A161503.P14876184718425767614

/-! ## A161503.P5172406897309552495

`A098682(n+2)-A098681(n+2)`
-/

namespace A161503.P5172406897309552495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098682 (n + 2) - A098681 (n + 2)

end

end A161503.P5172406897309552495

/-! ## A161503.P1779780058624141174

`A074966(n+2)+A074966(n+2)+2*A333184(n+2)`
-/

namespace A161503.P1779780058624141174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074966 (n + 2) + (A074966 (n + 2) + 2 * A333184 (n + 2))

end

end A161503.P1779780058624141174

/-! ## A161503.P9218423304362831131

`2*(A074967(n+2)-A333184(n+2))`
-/

namespace A161503.P9218423304362831131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A074967 (n + 2) - A333184 (n + 2))

end

end A161503.P9218423304362831131

/-! ## A161503.P3289831704284474944

`A004277(A074967(n+2)-A333184(n+2))`
-/

namespace A161503.P3289831704284474944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A074967 (n + 2) - A333184 (n + 2)).toNat

end

end A161503.P3289831704284474944

/-! ## A161503.P16622966705535320708

`A005843(A074967(n+2)-A333184(n+2))`
-/

namespace A161503.P16622966705535320708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A074967 (n + 2) - A333184 (n + 2)).toNat

end

end A161503.P16622966705535320708

/-! ## A161503.P17862607181971559743

`A098682(A020725(n+1))%A098681(n+2)`
-/

namespace A161503.P17862607181971559743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098682 (A020725 (n + 1)).toNat) (A098681 (n + 2))

end

end A161503.P17862607181971559743

/-!
# A161504: Primes congruent to {1, 2, 10, 11, 19, 20} mod 21.

The programs for A161504, the canonical program `A161504.P6427745028966693470` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161504 has offset 1).

The definition of A161504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3471 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161504.P6427745028966693470

`p?[A063214(n+1)+A063213(n+1)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A161504

/-- `p?[A063214(n+1)+A063213(n+1)]` -/
def P6427745028966693470.Spec : Prop :=
  ∀ n, P6427745028966693470.a n = A161504 (n + 1)

theorem P6427745028966693470.correct : P6427745028966693470.Spec := by
  intro n
  simp only [A161504, Nat.add_sub_cancel]

end A161504

/-! ## A161504.P1289155827912601651

`p?[A185048(n+1)+A054966(n+1)]`
-/

namespace A161504.P1289155827912601651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (n + 1) + A054966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161504.P1289155827912601651

namespace A161504

/-- `p?[A185048(n+1)+A054966(n+1)]` -/
def P1289155827912601651.Spec : Prop :=
  ∀ n, P1289155827912601651.a n = A161504 (n + 1)

end A161504

/-! ## A161504.P9749314813706599844

`p?[6*A004523(A008620(n))+n]`
-/

namespace A161504.P9749314813706599844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A004523 (A008620 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161504.P9749314813706599844

namespace A161504

/-- `p?[6*A004523(A008620(n))+n]` -/
def P9749314813706599844.Spec : Prop :=
  ∀ n, P9749314813706599844.a n = A161504 (n + 1)

end A161504

/-! ## A161504.P14225082046008200356

`p?[A109613(A008619(n))+A047446(n+1)]`
-/

namespace A161504.P14225082046008200356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A008619 n).toNat + A047446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161504.P14225082046008200356

namespace A161504

/-- `p?[A109613(A008619(n))+A047446(n+1)]` -/
def P14225082046008200356.Spec : Prop :=
  ∀ n, P14225082046008200356.a n = A161504 (n + 1)

end A161504

/-! ## A161504.P10405305375965092517

`p?[A008458(A265187(n+1))-A008706(n)]`
-/

namespace A161504.P10405305375965092517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A265187 (n + 1)).toNat - A008706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161504.P10405305375965092517

namespace A161504

/-- `p?[A008458(A265187(n+1))-A008706(n)]` -/
def P10405305375965092517.Spec : Prop :=
  ∀ n, P10405305375965092517.a n = A161504 (n + 1)

end A161504

/-! ## A161504.P10679718439492996468

`p?[A301710(A047263(n+1))-A301293(n)]`
-/

namespace A161504.P10679718439492996468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 (A047263 (n + 1)).toNat - A301293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161504.P10679718439492996468

namespace A161504

/-- `p?[A301710(A047263(n+1))-A301293(n)]` -/
def P10679718439492996468.Spec : Prop :=
  ∀ n, P10679718439492996468.a n = A161504 (n + 1)

end A161504

/-! ## A161504.P16311644302096077919

`p?[A287394(A093390(3*(n+1)))+A092038(n+1)]`
-/

namespace A161504.P16311644302096077919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287394 (A093390 (3 * (n + 1))).toNat + A092038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161504.P16311644302096077919

namespace A161504

/-- `p?[A287394(A093390(3*(n+1)))+A092038(n+1)]` -/
def P16311644302096077919.Spec : Prop :=
  ∀ n, P16311644302096077919.a n = A161504 (n + 1)

end A161504

/-!
# A161505: Primes congruent to {1, 7, 8, 25, 26, 32} mod 33.

The programs for A161505, the canonical program `A161505.P14222485162780523660` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161505 has offset 1).

The definition of A161505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161505.P14222485162780523660

`p?[∑[gcd(18, A005899(n))]]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A161505

/-- `p?[∑[gcd(18, A005899(n))]]` -/
def P14222485162780523660.Spec : Prop :=
  ∀ n, (P14222485162780523660.a n : ℤ) = A161505 (n + 1)

theorem P14222485162780523660.correct : P14222485162780523660.Spec := by
  intro n
  simp only [A161505, Nat.add_sub_cancel]

end A161505

/-! ## A161505.P6031581227344946139

`p?[∑[A010139(A047410(n+1))]]`
-/

namespace A161505.P6031581227344946139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010139 (A047410 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161505.P6031581227344946139

namespace A161505

/-- `p?[∑[A010139(A047410(n+1))]]` -/
def P6031581227344946139.Spec : Prop :=
  ∀ n, P6031581227344946139.a n = A161505 (n + 1)

end A161505

/-!
# A161506: Number of divisors of n that are greater than phi(n)/2, where phi is Euler's totient function.

The programs for A161506, there is no canonical definition to state claims against.
-/

/-! ## A161506.P13117080688881863357

`A227481(2*(n+1))*A227481(A227481(A326589(n)))`
-/

namespace A161506.P13117080688881863357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 (2 * (n + 1)) * A227481 (A227481 (A326589 n).toNat).toNat

end

end A161506.P13117080688881863357

/-! ## A161506.P383543483958494952

`A227481(2*(n+1))%A303640(∑[n]+1)`
-/

namespace A161506.P383543483958494952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227481 (2 * (n + 1))) (A303640 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A161506.P383543483958494952

/-! ## A161506.P17485007170581974723

`A227481(lcm(A103517(n), A124778(n)))`
-/

namespace A161506.P17485007170581974723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 (Int.lcm (A103517 n) (A124778 n))

end

end A161506.P17485007170581974723

/-! ## A161506.P8436544801087253788

`A227481(lt[A330116(n+1), A115046(n)])`
-/

namespace A161506.P8436544801087253788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161506.P8436544801087253788

/-! ## A161506.P184704051340470875

`A240234(A046110(n))+A056137(2*n+2)`
-/

namespace A161506.P184704051340470875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240234 (A046110 n).toNat + A056137 (2 * n + 2)

end

end A161506.P184704051340470875

/-!
# A161507: First occurrence of n in A161506.

The programs for A161507, there is no canonical definition to state claims against.
-/

/-! ## A161507.P13067969651547433523

`record[A120108(lcm(n, A206706(n)))]`
-/

namespace A161507.P13067969651547433523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120108 (Int.lcm (n : ℤ) (A206706 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161507.P13067969651547433523

/-! ## A161507.P7337774772890416791

`record[A225641(comp[xor(n, 2*n)])]`
-/

namespace A161507.P7337774772890416791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225641 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161507.P7337774772890416791

/-! ## A161507.P4528608313570626286

`record[A225640(∑[∑{e}[n+1, #]])]`
-/

namespace A161507.P4528608313570626286
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225640 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161507.P4528608313570626286

/-! ## A161507.P4699916961722085433

`record[A046523(A062993(n))]`
-/

namespace A161507.P4699916961722085433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A062993 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161507.P4699916961722085433

/-!
# A161508: Numbers k such that 2^k-1 has only one primitive prime factor.

The programs for A161508, there is no canonical definition to state claims against.
-/

/-! ## A161508.P16352757102555587936

`eq[1, A086251(n+1)]+1`
-/

namespace A161508.P16352757102555587936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086251 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A161508.P16352757102555587936

/-! ## A161508.P198299311657050112

`eq[2, A063982(n+1)]+1`
-/

namespace A161508.P198299311657050112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063982 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A161508.P198299311657050112

/-! ## A161508.P1285091107477068820

`eq[2, sqrt(a(A086251(n)))]` with `a(0)=0, a(1)=4`
-/

namespace A161508.P1285091107477068820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  Real.sqrt (f2 (A086251 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A161508.P1285091107477068820

/-! ## A161508.P11749469992104474516

`eq[1, A086251(A028310(n))]`
-/

namespace A161508.P11749469992104474516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086251 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161508.P11749469992104474516

/-! ## A161508.P1249989774673826763

`A020725(eq[1, A086251(n+1)])`
-/

namespace A161508.P1249989774673826763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A161508.P1249989774673826763

/-! ## A161508.P1582481219327388023

`eq[2, A002378(a(A086251(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A161508.P1582481219327388023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A002378 (f2 (A086251 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161508.P1582481219327388023

/-! ## A161508.P11766521946545674603

`eq[1, A046800(a(A086251(n)))]` with `a(0)=0, a(1)=2`
-/

namespace A161508.P11766521946545674603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A046800 (f2 (A086251 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161508.P11766521946545674603

/-! ## A161508.P6323648872083107077

`eq[2, A055010(a(A086251(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A161508.P6323648872083107077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A055010 (f2 (A086251 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161508.P6323648872083107077

/-! ## A161508.P10775846731705116636

`eq[2, A000045(a(A086251(n)))]` with `a(0)=0, a(1)=3`
-/

namespace A161508.P10775846731705116636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  A000045 (f2 (A086251 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161508.P10775846731705116636

/-! ## A161508.P9069700179699936052

`eq[2, A000010(a(A086251(n)))]` with `a(0)=1, a(1)=3`
-/

namespace A161508.P9069700179699936052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  A000010 (f2 (A086251 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161508.P9069700179699936052

/-! ## A161508.P3553342440582456137

`eq[2, A000040(a(A086251(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A161508.P3553342440582456137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000040 (f2 (A086251 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161508.P3553342440582456137

/-! ## A161508.P17990557963586712023

`eq[2, A000043(a(A086251(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A161508.P17990557963586712023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000043 (f2 (A086251 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161508.P17990557963586712023

/-! ## A161508.P5241985155436380982

`eq[2, A000079(a(A086251(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A161508.P5241985155436380982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000079 (f2 (A086251 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161508.P5241985155436380982

/-! ## A161508.P1358339108547420030

`eq[2, A000124(a(A086251(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A161508.P1358339108547420030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000124 (f2 (A086251 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161508.P1358339108547420030

/-! ## A161508.P12609506655602303080

`eq[2, A000125(a(A086251(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A161508.P12609506655602303080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000125 (f2 (A086251 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161508.P12609506655602303080

/-! ## A161508.P4813469725961683021

`eq[2, A007318(a(A086251(n)))]` with `a(0)=0, a(1)=4`
-/

namespace A161508.P4813469725961683021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  A007318 (f2 (A086251 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161508.P4813469725961683021

/-! ## A161508.P8865364277292241721

`eq[2, A129693(a(A086251(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A161508.P8865364277292241721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A129693 (f2 (A086251 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161508.P8865364277292241721

/-!
# A161509: The unique primitive prime factor of 2^n-1 for the n in A161508.

The programs for A161509, there is no canonical definition to state claims against.
-/

/-! ## A161509.P3346298035772582978

`A112927(A161508(n+1))`
-/

namespace A161509.P3346298035772582978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112927 (A161508 (n + 1)).toNat

end

end A161509.P3346298035772582978

/-! ## A161509.P5416962221255212370

`A064078(eq[1, A086251(n+1)]+1)`
-/

namespace A161509.P5416962221255212370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A161509.P5416962221255212370

/-! ## A161509.P12884751318180094806

`A064078(eq[2, A063982(n+1)]+1)`
-/

namespace A161509.P12884751318180094806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064078 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A161509.P12884751318180094806

/-! ## A161509.P245712731602937464

`A064078(floor(A161508(n+1)+n/(n+1)))`
-/

namespace A161509.P245712731602937464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064078 ⌊(A161508 (n + 1) : ℚ) + (n : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A161509.P245712731602937464

/-! ## A161509.P3786454643974820735

`A064078(A161508(n+1)%A093106(n+1))`
-/

namespace A161509.P3786454643974820735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064078 (Int.tmod (A161508 (n + 1)) (A093106 (n + 1))).toNat

end

end A161509.P3786454643974820735

/-! ## A161509.P9599949794868704452

`A064078(2*A161508(n+1)-A161508(n+1))`
-/

namespace A161509.P9599949794868704452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064078 (2 * A161508 (n + 1) - A161508 (n + 1)).toNat

end

end A161509.P9599949794868704452

/-!
# A161511: Number of 1...0 pairs in the binary representation of 2n.

The programs for A161511, the canonical program `A161511.P16266007976091900386` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161511 has offset 0).

The definition of A161511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161511.P16266007976091900386

`a(n-A048896(n-1))+1` with `a(0)=0`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A161511

/-- `a(n-A048896(n-1))+1` -/
def P16266007976091900386.Spec : Prop :=
  ∀ n, (P16266007976091900386.a n : ℤ) = A161511 n

theorem P16266007976091900386.correct : P16266007976091900386.Spec := by
  intro n
  simp only [A161511]

end A161511

/-! ## A161511.P7356601569225384346

`A227183(A006068(n))`
-/

namespace A161511.P7356601569225384346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227183 (A006068 n).toNat

end

end A161511.P7356601569225384346

namespace A161511

/-- `A227183(A006068(n))` -/
def P7356601569225384346.Spec : Prop :=
  ∀ n, P7356601569225384346.a n = A161511 n

end A161511

/-! ## A161511.P10841502950980583007

`A056239(A005940(n+1))`
-/

namespace A161511.P10841502950980583007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A005940 (n + 1)).toNat

end

end A161511.P10841502950980583007

namespace A161511

/-- `A056239(A005940(n+1))` -/
def P10841502950980583007.Spec : Prop :=
  ∀ n, P10841502950980583007.a n = A161511 n

end A161511

/-! ## A161511.P5867319373359799097

`A243503(A163511(n))`
-/

namespace A161511.P5867319373359799097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (A163511 n).toNat

end

end A161511.P5867319373359799097

namespace A161511

/-- `A243503(A163511(n))` -/
def P5867319373359799097.Spec : Prop :=
  ∀ n, P5867319373359799097.a n = A161511 n

end A161511

/-! ## A161511.P18292788655237134724

`a(n-A001316(n)/2)+1` with `a(0)=0`
-/

namespace A161511.P18292788655237134724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (SequenceMachineLib.roundAway ((n : ℚ) - (A001316 n : ℚ) / 2)).toNat + 1

end

end A161511.P18292788655237134724

namespace A161511

/-- `a(n-A001316(n)/2)+1` -/
def P18292788655237134724.Spec : Prop :=
  ∀ n, (P18292788655237134724.a n : ℤ) = A161511 n

end A161511

/-! ## A161511.P10570508523246252992

`A055941(n)+A000120(n)`
-/

namespace A161511.P10570508523246252992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 n + A000120 n

end

end A161511.P10570508523246252992

namespace A161511

/-- `A055941(n)+A000120(n)` -/
def P10570508523246252992.Spec : Prop :=
  ∀ n, P10570508523246252992.a n = A161511 n

end A161511

/-! ## A161511.P2442554734286061428

`A326730(n)-A055941(n)`
-/

namespace A161511.P2442554734286061428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326730 n - A055941 n

end

end A161511.P2442554734286061428

namespace A161511

/-- `A326730(n)-A055941(n)` -/
def P2442554734286061428.Spec : Prop :=
  ∀ n, P2442554734286061428.a n = A161511 n

end A161511

/-! ## A161511.P8257070074936643556

`A281392(n)-A359495(n)`
-/

namespace A161511.P8257070074936643556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281392 n - A359495 n

end

end A161511.P8257070074936643556

namespace A161511

/-- `A281392(n)-A359495(n)` -/
def P8257070074936643556.Spec : Prop :=
  ∀ n, P8257070074936643556.a n = A161511 n

end A161511

/-! ## A161511.P12313393349249037179

`A055941(n)+log2(A001316(n))`
-/

namespace A161511.P12313393349249037179
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A055941 n : ℝ) + Real.logb 2 (A001316 n : ℝ)

end

end A161511.P12313393349249037179

namespace A161511

/-- `A055941(n)+log2(A001316(n))` -/
def P12313393349249037179.Spec : Prop :=
  ∀ n, P12313393349249037179.a n = (A161511 n : ℝ)

end A161511

/-! ## A161511.P3744944293463427286

`A023416(n)+a(n%A053644(n))+1` with `a(0)=0`
-/

namespace A161511.P3744944293463427286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A023416 n + (a (Int.tmod (n : ℤ) (A053644 n)).toNat + 1)

end

end A161511.P3744944293463427286

namespace A161511

/-- `A023416(n)+a(n%A053644(n))+1` -/
def P3744944293463427286.Spec : Prop :=
  ∀ n, P3744944293463427286.a n = A161511 n

end A161511

/-! ## A161511.P1440803243864812233

`A029931(n)-A073642(A001316(n)-1)`
-/

namespace A161511.P1440803243864812233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n - A073642 (A001316 n - 1).toNat

end

end A161511.P1440803243864812233

namespace A161511

/-- `A029931(n)-A073642(A001316(n)-1)` -/
def P1440803243864812233.Spec : Prop :=
  ∀ n, P1440803243864812233.a n = A161511 n

end A161511

/-! ## A161511.P10791516243081481400

`A000120(n)+A029931(n)-A000217(A000120(n))`
-/

namespace A161511.P10791516243081481400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (A029931 n - A000217 (A000120 n).toNat)

end

end A161511.P10791516243081481400

namespace A161511

/-- `A000120(n)+A029931(n)-A000217(A000120(n))` -/
def P10791516243081481400.Spec : Prop :=
  ∀ n, P10791516243081481400.a n = A161511 n

end A161511

/-! ## A161511.P7544575185527956692

`A302039(A252753(n))`
-/

namespace A161511.P7544575185527956692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (A252753 n).toNat

end

end A161511.P7544575185527956692

namespace A161511

/-- `A302039(A252753(n))` -/
def P7544575185527956692.Spec : Prop :=
  ∀ n, P7544575185527956692.a n = A161511 n

end A161511

/-! ## A161511.P10429033622480075001

`A055941(2*n)`
-/

namespace A161511.P10429033622480075001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (2 * n)

end

end A161511.P10429033622480075001

namespace A161511

/-- `A055941(2*n)` -/
def P10429033622480075001.Spec : Prop :=
  ∀ n, P10429033622480075001.a n = A161511 n

end A161511

/-! ## A161511.P1311289767696256176

`A029931(2*n)-A000217(A000120(n))`
-/

namespace A161511.P1311289767696256176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (2 * n) - A000217 (A000120 n).toNat

end

end A161511.P1311289767696256176

namespace A161511

/-- `A029931(2*n)-A000217(A000120(n))` -/
def P1311289767696256176.Spec : Prop :=
  ∀ n, P1311289767696256176.a n = A161511 n

end A161511

/-! ## A161511.P9108538112729736871

`A281392(A030101(2*n+1))-1`
-/

namespace A161511.P9108538112729736871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281392 (A030101 (2 * n + 1)).toNat - 1

end

end A161511.P9108538112729736871

namespace A161511

/-- `A281392(A030101(2*n+1))-1` -/
def P9108538112729736871.Spec : Prop :=
  ∀ n, P9108538112729736871.a n = A161511 n

end A161511

/-! ## A161511.P7827557647649795597

`A227183(A335858(2*n+1))-1`
-/

namespace A161511.P7827557647649795597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227183 (A335858 (2 * n + 1)).toNat - 1

end

end A161511.P7827557647649795597

namespace A161511

/-- `A227183(A335858(2*n+1))-1` -/
def P7827557647649795597.Spec : Prop :=
  ∀ n, P7827557647649795597.a n = A161511 n

end A161511

/-! ## A161511.P15570938320478684908

`A036042(A166277(2*n+1))-1`
-/

namespace A161511.P15570938320478684908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (A166277 (2 * n + 1)).toNat - 1

end

end A161511.P15570938320478684908

namespace A161511

/-- `A036042(A166277(2*n+1))-1` -/
def P15570938320478684908.Spec : Prop :=
  ∀ n, P15570938320478684908.a n = A161511 n

end A161511

/-! ## A161511.P2389578741046395746

`A326844(2*A253565(2*n))`
-/

namespace A161511.P2389578741046395746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326844 (2 * A253565 (2 * n)).toNat

end

end A161511.P2389578741046395746

namespace A161511

/-- `A326844(2*A253565(2*n))` -/
def P2389578741046395746.Spec : Prop :=
  ∀ n, P2389578741046395746.a n = A161511 n

end A161511

/-! ## A161511.P13337676788593804907

`A196048(A209636(n))`
-/

namespace A161511.P13337676788593804907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196048 (A209636 n).toNat

end

end A161511.P13337676788593804907

namespace A161511

/-- `A196048(A209636(n))` -/
def P13337676788593804907.Spec : Prop :=
  ∀ n, P13337676788593804907.a n = A161511 n

end A161511

/-!
# A161512: Number of reduced words of length n in the Weyl group A_19.

The programs for A161512, there is no canonical definition to state claims against.
-/

/-! ## A161512.P13978346220934666564

`∑[∑[A161497(A227549(n+1))]]`
-/

namespace A161512.P13978346220934666564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161497 (A227549 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161512.P13978346220934666564

/-!
# A161513: Number of reduced words of length n in the Weyl group A_20.

The programs for A161513, there is no canonical definition to state claims against.
-/

/-! ## A161513.P17997644848618284780

`A162359(n)-A109754(A213109(n))`
-/

namespace A161513.P17997644848618284780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162359 n - A109754 (A213109 n).toNat

end

end A161513.P17997644848618284780

/-!
# A161514: Number of digits in n-th even perfect number written in base 8.

The programs for A161514, there is no canonical definition to state claims against.
-/

/-! ## A161514.P15340329973306311144

`ceil(A133033(n+1)/3)`
-/

namespace A161514.P15340329973306311144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A133033 (n + 1) : ℚ) / 3⌉

end

end A161514.P15340329973306311144

/-! ## A161514.P2648551692149117251

`round(A061645(n+1)/3)`
-/

namespace A161514.P2648551692149117251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A061645 (n + 1) : ℚ) / 3)

end

end A161514.P2648551692149117251

/-! ## A161514.P12029462456072601656

`round(2/3*A000043(n+1))`
-/

namespace A161514.P12029462456072601656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) / 3 * (A000043 (n + 1) : ℚ))

end

end A161514.P12029462456072601656

/-! ## A161514.P10894392807374775960

`floor(2*A090748(n+1)/3)+1`
-/

namespace A161514.P10894392807374775960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((A090748 (n + 1) : ℚ) / 3)⌋ + 1

end

end A161514.P10894392807374775960

/-! ## A161514.P15612727398356861551

`round(2*(A050475(n+1)-1)/3)`
-/

namespace A161514.P15612727398356861551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * (A050475 (n + 1) - 1) : ℚ) / 3)

end

end A161514.P15612727398356861551

/-!
# A161515: Expansion of q-series Sum_{n >= 0} (-1)^n*q^(n*(n + 1)/2)*(1 - q)*(1 - q^2)*...*(1 - q^n) / ((1 + q)*(1 + q^2)*(1 + q^3)*...*(1 + q^n)).

The programs for A161515, the canonical program `A161515.P1171096934450615199` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161515 has offset 0).

The definition of A161515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161515.P1171096934450615199

`A033999(n)*A035185(A017077(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A161515

/-- `A033999(n)*A035185(A017077(n))` -/
def P1171096934450615199.Spec : Prop :=
  ∀ n, P1171096934450615199.a n = A161515 n

theorem P1171096934450615199.correct : P1171096934450615199.Spec := by
  intro n
  simp only [A161515]

end A161515

/-! ## A161515.P4975857246188051896

`A035185(A017077(n))*A056594(2*n)`
-/

namespace A161515.P4975857246188051896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A017077 n).toNat * A056594 (2 * n)

end

end A161515.P4975857246188051896

namespace A161515

/-- `A035185(A017077(n))*A056594(2*n)` -/
def P4975857246188051896.Spec : Prop :=
  ∀ n, P4975857246188051896.a n = A161515 n

end A161515

/-! ## A161515.P13068561337384340664

`A035185(A017077(n))*A164677(2*n+1)`
-/

namespace A161515.P13068561337384340664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A017077 n).toNat * A164677 (2 * n + 1)

end

end A161515.P13068561337384340664

namespace A161515

/-- `A035185(A017077(n))*A164677(2*n+1)` -/
def P13068561337384340664.Spec : Prop :=
  ∀ n, P13068561337384340664.a n = A161515 n

end A161515

/-! ## A161515.P3527674265911815509

`A035185(A017077(n))*A294254(A034856(n+1))`
-/

namespace A161515.P3527674265911815509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A017077 n).toNat * A294254 (A034856 (n + 1)).toNat

end

end A161515.P3527674265911815509

namespace A161515

/-- `A035185(A017077(n))*A294254(A034856(n+1))` -/
def P3527674265911815509.Spec : Prop :=
  ∀ n, P3527674265911815509.a n = A161515 n

end A161515

/-! ## A161515.P15752909459553957598

`A034947(A161712(n))*A035185(A017077(n))`
-/

namespace A161515.P15752909459553957598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A161712 n).toNat * A035185 (A017077 n).toNat

end

end A161515.P15752909459553957598

namespace A161515

/-- `A034947(A161712(n))*A035185(A017077(n))` -/
def P15752909459553957598.Spec : Prop :=
  ∀ n, P15752909459553957598.a n = A161515 n

end A161515

/-!
# A161516: Expansion of 1 + 2*Sum_{n >= 1} (-q)^n*(1 + q^2)*(1 + q^4)*...*(1 + q^(2*k - 2))/ ((1 - q)*(1 - q^3)*...*(1 - q^(2*n - 1))).

The programs for A161516, the canonical program `A161516.P1475536178005719579` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161516 has offset 0).

The definition of A161516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161516.P1475536178005719579

`(-1)^n*A035185(abs(1-8*n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A161516

/-- `(-1)^n*A035185(abs(1-8*n))` -/
def P1475536178005719579.Spec : Prop :=
  ∀ n, P1475536178005719579.a n = A161516 n

theorem P1475536178005719579.correct : P1475536178005719579.Spec := by
  intro n
  simp only [A161516]

end A161516

/-! ## A161516.P2915858338654131085

`A035185(abs(1-8*n))*A087960(n²)`
-/

namespace A161516.P2915858338654131085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 |1 - (8 * n : ℤ)|.toNat * A087960 (n ^ 2)

end

end A161516.P2915858338654131085

namespace A161516

/-- `A035185(abs(1-8*n))*A087960(n²)` -/
def P2915858338654131085.Spec : Prop :=
  ∀ n, P2915858338654131085.a n = A161516 n

end A161516

/-! ## A161516.P5960593902228401236

`A002448(A222229(n)*A318909(n+1))`
-/

namespace A161516.P5960593902228401236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (A222229 n * A318909 (n + 1)).toNat

end

end A161516.P5960593902228401236

namespace A161516

/-- `A002448(A222229(n)*A318909(n+1))` -/
def P5960593902228401236.Spec : Prop :=
  ∀ n, P5960593902228401236.a n = A161516 n

end A161516

/-! ## A161516.P15202495174711461062

`A332823(A127582(n))-A062157(n)`
-/

namespace A161516.P15202495174711461062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332823 (A127582 n).toNat - A062157 n

end

end A161516.P15202495174711461062

namespace A161516

/-- `A332823(A127582(n))-A062157(n)` -/
def P15202495174711461062.Spec : Prop :=
  ∀ n, P15202495174711461062.a n = A161516 n

end A161516

/-! ## A161516.P17544928594882522871

`A002448(n^A226080(n+1))`
-/

namespace A161516.P17544928594882522871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A226080 (n + 1) : ℤ))).toNat

end

end A161516.P17544928594882522871

namespace A161516

/-- `A002448(n^A226080(n+1))` -/
def P17544928594882522871.Spec : Prop :=
  ∀ n, P17544928594882522871.a n = A161516 n

end A161516

/-!
# A161517: Sum of remainders of c mod k where k = 1, 2, 3, ..., c and c is the n-th composite number.

The programs for A161517, the canonical program `A161517.P13785156033217621972` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161517 has offset 1).

The definition of A161517 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A004125, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161517.P13785156033217621972

`A004125(A002808(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A161517

/-- `A004125(A002808(n+1))` -/
def P13785156033217621972.Spec : Prop :=
  ∀ n, P13785156033217621972.a n = A161517 (n + 1)

theorem P13785156033217621972.correct : P13785156033217621972.Spec := by
  intro n
  simp only [A161517, Nat.add_sub_cancel]

end A161517

/-! ## A161517.P3539653856700136549

`A004125(A018252(n+2))`
-/

namespace A161517.P3539653856700136549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (A018252 (n + 2)).toNat

end

end A161517.P3539653856700136549

namespace A161517

/-- `A004125(A018252(n+2))` -/
def P3539653856700136549.Spec : Prop :=
  ∀ n, P3539653856700136549.a n = A161517 (n + 1)

end A161517

/-! ## A161517.P2580142149339425298

`A004125(lt[1, A003415(n)])`
-/

namespace A161517.P2580142149339425298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A161517.P2580142149339425298

namespace A161517

/-- `A004125(lt[1, A003415(n)])` -/
def P2580142149339425298.Spec : Prop :=
  ∀ n, P2580142149339425298.a n = A161517 (n + 1)

end A161517

/-! ## A161517.P4935696482491260960

`A004125(lt[1, A074206(n)])`
-/

namespace A161517.P4935696482491260960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A161517.P4935696482491260960

namespace A161517

/-- `A004125(lt[1, A074206(n)])` -/
def P4935696482491260960.Spec : Prop :=
  ∀ n, P4935696482491260960.a n = A161517 (n + 1)

end A161517

/-! ## A161517.P11875471302316382076

`A004125(A072668(n+1)+1)`
-/

namespace A161517.P11875471302316382076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (A072668 (n + 1) + 1).toNat

end

end A161517.P11875471302316382076

namespace A161517

/-- `A004125(A072668(n+1)+1)` -/
def P11875471302316382076.Spec : Prop :=
  ∀ n, P11875471302316382076.a n = A161517 (n + 1)

end A161517

/-! ## A161517.P17838713512739103985

`A004125(comp[C(A006530(n+1), n)])`
-/

namespace A161517.P17838713512739103985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A161517.P17838713512739103985

namespace A161517

/-- `A004125(comp[C(A006530(n+1), n)])` -/
def P17838713512739103985.Spec : Prop :=
  ∀ n, P17838713512739103985.a n = A161517 (n + 1)

end A161517

/-! ## A161517.P5986387922071946952

`A004125(comp[C(A020639(n+1), n)])`
-/

namespace A161517.P5986387922071946952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A161517.P5986387922071946952

namespace A161517

/-- `A004125(comp[C(A020639(n+1), n)])` -/
def P5986387922071946952.Spec : Prop :=
  ∀ n, P5986387922071946952.a n = A161517 (n + 1)

end A161517

/-! ## A161517.P6286628872553130034

`A004125(lt[1, A001222(n+1)]+1)`
-/

namespace A161517.P6286628872553130034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A161517.P6286628872553130034

namespace A161517

/-- `A004125(lt[1, A001222(n+1)]+1)` -/
def P6286628872553130034.Spec : Prop :=
  ∀ n, P6286628872553130034.a n = A161517 (n + 1)

end A161517

/-! ## A161517.P9781591246620086568

`A004125(lt[2, A000005(n+1)]+1)`
-/

namespace A161517.P9781591246620086568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A161517.P9781591246620086568

namespace A161517

/-- `A004125(lt[2, A000005(n+1)]+1)` -/
def P9781591246620086568.Spec : Prop :=
  ∀ n, P9781591246620086568.a n = A161517 (n + 1)

end A161517

/-! ## A161517.P1939414118947528407

`A004125(lt[A000010(n+1), n]+1)`
-/

namespace A161517.P1939414118947528407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A161517.P1939414118947528407

namespace A161517

/-- `A004125(lt[A000010(n+1), n]+1)` -/
def P1939414118947528407.Spec : Prop :=
  ∀ n, P1939414118947528407.a n = A161517 (n + 1)

end A161517

/-! ## A161517.P16480071841291427330

`A004125(lt[A006530(n+1), n]+1)`
-/

namespace A161517.P16480071841291427330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A161517.P16480071841291427330

namespace A161517

/-- `A004125(lt[A006530(n+1), n]+1)` -/
def P16480071841291427330.Spec : Prop :=
  ∀ n, P16480071841291427330.a n = A161517 (n + 1)

end A161517

/-! ## A161517.P6966152595058923038

`A004125(comp[A000040(n+1)-2]+2)`
-/

namespace A161517.P6966152595058923038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A161517.P6966152595058923038

namespace A161517

/-- `A004125(comp[A000040(n+1)-2]+2)` -/
def P6966152595058923038.Spec : Prop :=
  ∀ n, P6966152595058923038.a n = A161517 (n + 1)

end A161517

/-! ## A161517.P8576738619124041587

`A004125(comp[A006530(n+2)%(n+1)])`
-/

namespace A161517.P8576738619124041587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (n + 2)) (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A161517.P8576738619124041587

namespace A161517

/-- `A004125(comp[A006530(n+2)%(n+1)])` -/
def P8576738619124041587.Spec : Prop :=
  ∀ n, P8576738619124041587.a n = A161517 (n + 1)

end A161517

/-!
# A161518: Number of reduced words of length n in the Weyl group A_21.

The programs for A161518, there is no canonical definition to state claims against.
-/

/-! ## A161518.P7374473572900010228

`A162360(n)-A002863(A041979(n))`
-/

namespace A161518.P7374473572900010228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162360 n - A002863 (A041979 n).toNat

end

end A161518.P7374473572900010228

/-!
# A161519: Expansion of Sum_{n >= 1} (-1)^nq^(n^2+n)(1-q^2)(1-q^4)...(1-q^(2n-2))/((1+q)(1+q^2)...(1+q^(2n))).

The programs for A161519, there is no canonical definition to state claims against.
-/

/-! ## A161519.P12325117352185881322

`Δ[A014681(A046951(A158549(n)))]`
-/

namespace A161519.P12325117352185881322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A046951 (A158549 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161519.P12325117352185881322

/-! ## A161519.P3520118414215088531

`A319307(n+3)%A143486(A291443(n+1))`
-/

namespace A161519.P3520118414215088531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319307 (n + 3)) (A143486 (A291443 (n + 1)).toNat)

end

end A161519.P3520118414215088531

/-!
# A161521: Number of reduced words of length n in the Weyl group A_22.

The programs for A161521, there is no canonical definition to state claims against.
-/

/-! ## A161521.P4719100802836490773

`∑[A161518(n)-A305930(A299905(n))]`
-/

namespace A161521.P4719100802836490773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161518 n - A305930 (A299905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161521.P4719100802836490773

/-!
# A161522: prime(n)*( prime(n)-n ).

The programs for A161522, the canonical program `A161522.P15343640305282241931` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161522 has offset 1).

The definition of A161522 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A033286, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161522.P15343640305282241931

`A001248(n+1)-A033286(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A161522

/-- `A001248(n+1)-A033286(n+1)` -/
def P15343640305282241931.Spec : Prop :=
  ∀ n, P15343640305282241931.a n = A161522 (n + 1)

theorem P15343640305282241931.correct : P15343640305282241931.Spec := by
  intro n
  simp only [A161522, Nat.add_sub_cancel]

end A161522

/-! ## A161522.P17798110496075710104

`A000040(n+1)*A014689(n+1)`
-/

namespace A161522.P17798110496075710104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A014689 (n + 1)

end

end A161522.P17798110496075710104

namespace A161522

/-- `A000040(n+1)*A014689(n+1)` -/
def P17798110496075710104.Spec : Prop :=
  ∀ n, P17798110496075710104.a n = A161522 (n + 1)

end A161522

/-! ## A161522.P16684873657448964767

`Δ[A007504(n)]*A014689(n+1)`
-/

namespace A161522.P16684873657448964767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A014689 (n + 1)

end

end A161522.P16684873657448964767

namespace A161522

/-- `Δ[A007504(n)]*A014689(n+1)` -/
def P16684873657448964767.Spec : Prop :=
  ∀ n, P16684873657448964767.a n = A161522 (n + 1)

end A161522

/-! ## A161522.P10349403778124414839

`lcm(Δ[A022837(n)], A014689(n+1))`
-/

namespace A161522.P10349403778124414839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A014689 (n + 1))

end

end A161522.P10349403778124414839

namespace A161522

/-- `lcm(Δ[A022837(n)], A014689(n+1))` -/
def P10349403778124414839.Spec : Prop :=
  ∀ n, (P10349403778124414839.a n : ℤ) = A161522 (n + 1)

end A161522

/-! ## A161522.P14025343717643653861

`A036689(n+1)-A117495(n+1)`
-/

namespace A161522.P14025343717643653861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) - A117495 (n + 1)

end

end A161522.P14025343717643653861

namespace A161522

/-- `A036689(n+1)-A117495(n+1)` -/
def P14025343717643653861.Spec : Prop :=
  ∀ n, P14025343717643653861.a n = A161522 (n + 1)

end A161522

/-! ## A161522.P3931744974801082344

`A000040(n+1)²-A033286(n+1)`
-/

namespace A161522.P3931744974801082344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A033286 (n + 1)

end

end A161522.P3931744974801082344

namespace A161522

/-- `A000040(n+1)²-A033286(n+1)` -/
def P3931744974801082344.Spec : Prop :=
  ∀ n, P3931744974801082344.a n = A161522 (n + 1)

end A161522

/-! ## A161522.P12394208332867025801

`(A006093(n+1)+1)*A014689(n+1)`
-/

namespace A161522.P12394208332867025801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A014689 (n + 1)

end

end A161522.P12394208332867025801

namespace A161522

/-- `(A006093(n+1)+1)*A014689(n+1)` -/
def P12394208332867025801.Spec : Prop :=
  ∀ n, P12394208332867025801.a n = A161522 (n + 1)

end A161522

/-! ## A161522.P3585049728630223206

`(A065890(n+1)+1)*A000040(n+1)`
-/

namespace A161522.P3585049728630223206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065890 (n + 1) + 1) * A000040 (n + 1)

end

end A161522.P3585049728630223206

namespace A161522

/-- `(A065890(n+1)+1)*A000040(n+1)` -/
def P3585049728630223206.Spec : Prop :=
  ∀ n, P3585049728630223206.a n = A161522 (n + 1)

end A161522

/-! ## A161522.P14546901697103089412

`(A014692(n+1)-1)*A000040(n+1)`
-/

namespace A161522.P14546901697103089412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014692 (n + 1) - 1) * A000040 (n + 1)

end

end A161522.P14546901697103089412

namespace A161522

/-- `(A014692(n+1)-1)*A000040(n+1)` -/
def P14546901697103089412.Spec : Prop :=
  ∀ n, P14546901697103089412.a n = A161522 (n + 1)

end A161522

/-! ## A161522.P16076865808625983925

`(A008864(n+1)-1)*A014689(n+1)`
-/

namespace A161522.P16076865808625983925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1) * A014689 (n + 1)

end

end A161522.P16076865808625983925

namespace A161522

/-- `(A008864(n+1)-1)*A014689(n+1)` -/
def P16076865808625983925.Spec : Prop :=
  ∀ n, P16076865808625983925.a n = A161522 (n + 1)

end A161522

/-! ## A161522.P3391738227708038962

`(A040976(n+1)+2)*A014689(n+1)`
-/

namespace A161522.P3391738227708038962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) * A014689 (n + 1)

end

end A161522.P3391738227708038962

namespace A161522

/-- `(A040976(n+1)+2)*A014689(n+1)` -/
def P3391738227708038962.Spec : Prop :=
  ∀ n, P3391738227708038962.a n = A161522 (n + 1)

end A161522

/-! ## A161522.P1348809411993938861

`(A014692(n+1)+n)*A014689(n+1)`
-/

namespace A161522.P1348809411993938861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014692 (n + 1) + (n : ℤ)) * A014689 (n + 1)

end

end A161522.P1348809411993938861

namespace A161522

/-- `(A014692(n+1)+n)*A014689(n+1)` -/
def P1348809411993938861.Spec : Prop :=
  ∀ n, P1348809411993938861.a n = A161522 (n + 1)

end A161522

/-! ## A161522.P7681565437969466179

`(A131733(n+1)+n)*A000040(n+1)`
-/

namespace A161522.P7681565437969466179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131733 (n + 1) + (n : ℤ)) * A000040 (n + 1)

end

end A161522.P7681565437969466179

namespace A161522

/-- `(A131733(n+1)+n)*A000040(n+1)` -/
def P7681565437969466179.Spec : Prop :=
  ∀ n, P7681565437969466179.a n = A161522 (n + 1)

end A161522

/-! ## A161522.P3699236964424511608

`(A006093(n+1)-n)*A000040(n+1)`
-/

namespace A161522.P3699236964424511608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) - (n : ℤ)) * A000040 (n + 1)

end

end A161522.P3699236964424511608

namespace A161522

/-- `(A006093(n+1)-n)*A000040(n+1)` -/
def P3699236964424511608.Spec : Prop :=
  ∀ n, P3699236964424511608.a n = A161522 (n + 1)

end A161522

/-! ## A161522.P12942737162255096176

`A006093(n+1)*A014692(n+1)-n`
-/

namespace A161522.P12942737162255096176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) * A014692 (n + 1) - (n : ℤ)

end

end A161522.P12942737162255096176

namespace A161522

/-- `A006093(n+1)*A014692(n+1)-n` -/
def P12942737162255096176.Spec : Prop :=
  ∀ n, P12942737162255096176.a n = A161522 (n + 1)

end A161522

/-! ## A161522.P15409623019302232122

`A036689(n+1)-n*A000040(n+1)`
-/

namespace A161522.P15409623019302232122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) - (n : ℤ) * A000040 (n + 1)

end

end A161522.P15409623019302232122

namespace A161522

/-- `A036689(n+1)-n*A000040(n+1)` -/
def P15409623019302232122.Spec : Prop :=
  ∀ n, P15409623019302232122.a n = A161522 (n + 1)

end A161522

/-! ## A161522.P10909560407162120063

`(A095116(n+1)-n)*A014689(n+1)`
-/

namespace A161522.P10909560407162120063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A095116 (n + 1) - (n : ℤ)) * A014689 (n + 1)

end

end A161522.P10909560407162120063

namespace A161522

/-- `(A095116(n+1)-n)*A014689(n+1)` -/
def P10909560407162120063.Spec : Prop :=
  ∀ n, P10909560407162120063.a n = A161522 (n + 1)

end A161522

/-! ## A161522.P16907295435777731330

`A000040(n+1)²-∑[A090942(n+1)]`
-/

namespace A161522.P16907295435777731330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161522.P16907295435777731330

namespace A161522

/-- `A000040(n+1)²-∑[A090942(n+1)]` -/
def P16907295435777731330.Spec : Prop :=
  ∀ n, P16907295435777731330.a n = A161522 (n + 1)

end A161522

/-! ## A161522.P10148480851242608758

`A000040(n+1)*∑[A054541(n+1)-1]`
-/

namespace A161522.P10148480851242608758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161522.P10148480851242608758

namespace A161522

/-- `A000040(n+1)*∑[A054541(n+1)-1]` -/
def P10148480851242608758.Spec : Prop :=
  ∀ n, P10148480851242608758.a n = A161522 (n + 1)

end A161522

/-! ## A161522.P4536398369462463458

`(A007504(n+1)-A007504(n))*A014689(n+1)`
-/

namespace A161522.P4536398369462463458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) - A007504 n) * A014689 (n + 1)

end

end A161522.P4536398369462463458

namespace A161522

/-- `(A007504(n+1)-A007504(n))*A014689(n+1)` -/
def P4536398369462463458.Spec : Prop :=
  ∀ n, P4536398369462463458.a n = A161522 (n + 1)

end A161522

/-!
# A161524: Number of reduced words of length n in the Weyl group A_24.

The programs for A161524, there is no canonical definition to state claims against.
-/

/-! ## A161524.P12784052334494182512

`∑[A010690(A255843(3*n+2))*A161523(n)]`
-/

namespace A161524.P12784052334494182512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010690 (A255843 (3 * n + 2)).toNat * A161523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161524.P12784052334494182512

/-!
# A161525: Number of reduced words of length n in the Weyl group A_25.

The programs for A161525, there is no canonical definition to state claims against.
-/

/-! ## A161525.P5583981238737645661

`A162367(n)-A362046(A003216(n+1))`
-/

namespace A161525.P5583981238737645661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162367 n - A362046 (A003216 (n + 1)).toNat

end

end A161525.P5583981238737645661

/-!
# A161526: Number of reduced words of length n in the Weyl group A_26.

The programs for A161526, there is no canonical definition to state claims against.
-/

/-! ## A161526.P11370547197020829453

`A162368(n)-A144774(A000315(n+1))`
-/

namespace A161526.P11370547197020829453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162368 n - A144774 (A000315 (n + 1)).toNat

end

end A161526.P11370547197020829453

/-!
# A161527: Numerators of cumulative sums of rational sequence A038110(k)/A038111(k).

The programs for A161527, there is no canonical definition to state claims against.
-/

/-! ## A161527.P14768292491964537375

`A053144(n+1)/A058250(n+1)`
-/

namespace A161527.P14768292491964537375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053144 (n + 1) : ℚ) / (A058250 (n + 1) : ℚ)

end

end A161527.P14768292491964537375

/-! ## A161527.P3095386538922032020

`A060753(n+2)-A038110(n+2)`
-/

namespace A161527.P3095386538922032020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060753 (n + 2) - A038110 (n + 2)

end

end A161527.P3095386538922032020

/-! ## A161527.P3079400002999598857

`A060753(n+2)-A076359(A006093(n+2))`
-/

namespace A161527.P3079400002999598857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060753 (n + 2) - A076359 (A006093 (n + 2)).toNat

end

end A161527.P3079400002999598857

/-! ## A161527.P12297263834439169938

`A060753(n+2)-A076359(A008578(n+2))`
-/

namespace A161527.P12297263834439169938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060753 (n + 2) - A076359 (A008578 (n + 2)).toNat

end

end A161527.P12297263834439169938

/-! ## A161527.P14886810323595084170

`A060753(n+2)-A076359(A039915(n+2))`
-/

namespace A161527.P14886810323595084170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060753 (n + 2) - A076359 (A039915 (n + 2)).toNat

end

end A161527.P14886810323595084170

/-! ## A161527.P15916042924219601000

`A060753(n+2)-A076359(A112925(n+2))`
-/

namespace A161527.P15916042924219601000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060753 (n + 2) - A076359 (A112925 (n + 2)).toNat

end

end A161527.P15916042924219601000

/-! ## A161527.P16990131401275669468

`A060753(n+2)-A076359(A157604(n+2))`
-/

namespace A161527.P16990131401275669468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060753 (n + 2) - A076359 (A157604 (n + 2)).toNat

end

end A161527.P16990131401275669468

/-! ## A161527.P3102465186156697035

`A038111(n+2)/A000040(n+2)-A038110(n+2)`
-/

namespace A161527.P3102465186156697035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038111 (n + 2) : ℚ) / (A000040 (n + 2) : ℚ) - (A038110 (n + 2) : ℚ)

end

end A161527.P3102465186156697035

/-! ## A161527.P1395806574182390331

`(A002110(n+1)-A005867(n+1))/A058250(n+1)`
-/

namespace A161527.P1395806574182390331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) - A005867 (n + 1) : ℚ) / (A058250 (n + 1) : ℚ)

end

end A161527.P1395806574182390331

/-! ## A161527.P2949879645713212443

`A002110(n+1)/A058250(n+1)-A038110(n+2)`
-/

namespace A161527.P2949879645713212443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) : ℚ) / (A058250 (n + 1) : ℚ) - (A038110 (n + 2) : ℚ)

end

end A161527.P2949879645713212443

/-!
# A161528: Expansion of the q-series Sum_{n >= 0} (-1)^nq^(n(n+1)/2)(1-q)(1-q^2)...(1-q^n)/((1-q^(n+1))(1-q^(n+2))...(1-q^(2n+1))).

The programs for A161528, the canonical program `A161528.P12747581726242673171` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161528 has offset 0).

The definition of A161528 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035187, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161528.P12747581726242673171

`A035187(5*n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A161528

/-- `A035187(5*n+1)` -/
def P12747581726242673171.Spec : Prop :=
  ∀ n, P12747581726242673171.a n = A161528 n

theorem P12747581726242673171.correct : P12747581726242673171.Spec := by
  intro n
  simp only [A161528]

end A161528

/-! ## A161528.P11892130430721271768

`∑{d}[5*n+1, #²]%5`
-/

namespace A161528.P11892130430721271768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d ^ 2) % 5

end

end A161528.P11892130430721271768

namespace A161528

/-- `∑{d}[5*n+1, #²]%5` -/
def P11892130430721271768.Spec : Prop :=
  ∀ n, (P11892130430721271768.a n : ℤ) = A161528 n

end A161528

/-! ## A161528.P1550958381674201684

`A035202(5*n+1)`
-/

namespace A161528.P1550958381674201684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035202 (5 * n + 1)

end

end A161528.P1550958381674201684

namespace A161528

/-- `A035202(5*n+1)` -/
def P1550958381674201684.Spec : Prop :=
  ∀ n, P1550958381674201684.a n = A161528 n

end A161528

/-! ## A161528.P1773575633038051246

`A035227(5*n+1)`
-/

namespace A161528.P1773575633038051246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035227 (5 * n + 1)

end

end A161528.P1773575633038051246

namespace A161528

/-- `A035227(5*n+1)` -/
def P1773575633038051246.Spec : Prop :=
  ∀ n, P1773575633038051246.a n = A161528 n

end A161528

/-! ## A161528.P18131115274087054372

`A001157(5*n+1)%5`
-/

namespace A161528.P18131115274087054372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001157 (5 * n + 1)) 5

end

end A161528.P18131115274087054372

namespace A161528

/-- `A001157(5*n+1)%5` -/
def P18131115274087054372.Spec : Prop :=
  ∀ n, P18131115274087054372.a n = A161528 n

end A161528

/-! ## A161528.P6877207119629242512

`A078306(5*n+1)%5`
-/

namespace A161528.P6877207119629242512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078306 (5 * n + 1)) 5

end

end A161528.P6877207119629242512

namespace A161528

/-- `A078306(5*n+1)%5` -/
def P6877207119629242512.Spec : Prop :=
  ∀ n, P6877207119629242512.a n = A161528 n

end A161528

/-! ## A161528.P3171256988432765352

`A035187(A016861(n))%5`
-/

namespace A161528.P3171256988432765352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035187 (A016861 n).toNat) 5

end

end A161528.P3171256988432765352

namespace A161528

/-- `A035187(A016861(n))%5` -/
def P3171256988432765352.Spec : Prop :=
  ∀ n, P3171256988432765352.a n = A161528 n

end A161528

/-!
# A161530: Number of reduced words of length n in the Weyl group A_27.

The programs for A161530, there is no canonical definition to state claims against.
-/

/-! ## A161530.P11802769393552249799

`∑[A161526(A056239(2^n))]`
-/

namespace A161530.P11802769393552249799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161526 (A056239 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161530.P11802769393552249799

/-!
# A161531: The number of reachable states in a simple two-player counting game, in which each player starts with the pair (1,1) and one move is to add one of the opponent's numbers to one of your own numbers, but no number can grow above a pre-defined maximum n. The game continues until one of the players has no legal moves left. The winner is the one having the higher sum of his numbers.

The programs for A161531, there is no canonical definition to state claims against.
-/

/-! ## A161531.P1262953097812854798

`A256537(A000079(n))+A160172(n)`
-/

namespace A161531.P1262953097812854798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256537 (A000079 n).toNat + A160172 n

end

end A161531.P1262953097812854798

/-! ## A161531.P13204998057014077849

`∑[A139250(n)+A003987(A092440(n))]`
-/

namespace A161531.P13204998057014077849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n + A003987 (A092440 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161531.P13204998057014077849

/-!
# A161532: a(n) = 2*n^2 + 8*n + 1.

The programs for A161532, the canonical program `A161532.P17103615400908031824` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161532 has offset 0).

The definition of A161532 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+8*n+1` (program `A161532.P17103615400908031824`, by `A161532.P17103615400908031824.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A161532.P17103615400908031824

`2*n²+8*n+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A161532

/-- `2*n²+8*n+1` -/
def P17103615400908031824.Spec : Prop :=
  ∀ n, (P17103615400908031824.a n : ℤ) = A161532 n

theorem P17103615400908031824.correct : P17103615400908031824.Spec := by
  intro n
  simp only [A161532]

end A161532

/-! ## A161532.P10861556871963502304

`∑[a(n-1)+4]` with `a(0)=1, a(1)=10`
-/

namespace A161532.P10861556871963502304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161532.P10861556871963502304

namespace A161532

/-- `∑[a(n-1)+4]` -/
def P10861556871963502304.Spec : Prop :=
  ∀ n, (P10861556871963502304.a n : ℤ) = A161532 n

end A161532

/-! ## A161532.P4706252954224329593

`or(1, 2*n*(n+4))`
-/

namespace A161532.P4706252954224329593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * (n * (n + 4)))

end

end A161532.P4706252954224329593

namespace A161532

/-- `or(1, 2*n*(n+4))` -/
def P4706252954224329593.Spec : Prop :=
  ∀ n, (P4706252954224329593.a n : ℤ) = A161532 n

end A161532

/-! ## A161532.P4168782714435478150

`xor(1, 2*n*(n+4))`
-/

namespace A161532.P4168782714435478150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * (n * (n + 4)))

end

end A161532.P4168782714435478150

namespace A161532

/-- `xor(1, 2*n*(n+4))` -/
def P4168782714435478150.Spec : Prop :=
  ∀ n, (P4168782714435478150.a n : ℤ) = A161532 n

end A161532

/-! ## A161532.P14751740820608875820

`record[2*(2-n)²-7]`
-/

namespace A161532.P14751740820608875820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 - (n : ℤ)) ^ 2 - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161532.P14751740820608875820

namespace A161532

/-- `record[2*(2-n)²-7]` -/
def P14751740820608875820.Spec : Prop :=
  ∀ n, P14751740820608875820.a n = A161532 n

end A161532

/-! ## A161532.P6409157326532591772

`∑[ogf((1+8x-5x^2)/(1-2x+x^2))]`
-/

namespace A161532.P6409157326532591772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, -5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161532.P6409157326532591772

namespace A161532

/-- `∑[ogf((1+8x-5x^2)/(1-2x+x^2))]` -/
def P6409157326532591772.Spec : Prop :=
  ∀ n, P6409157326532591772.a n = A161532 n

end A161532

/-! ## A161532.P9546202371569114242

`ogf((1+8x-5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A161532.P9546202371569114242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, -5] [1, -3, 3, -1] n

end

end A161532.P9546202371569114242

namespace A161532

/-- `ogf((1+8x-5x^2)/(1-3x+3x^2-x^3))` -/
def P9546202371569114242.Spec : Prop :=
  ∀ n, P9546202371569114242.a n = A161532 n

end A161532

/-! ## A161532.P5549939521670812955

`floor((2*n+1)/acot(n+3)+n-2)`
-/

namespace A161532.P5549939521670812955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) / SequenceMachineLib.acot (n + 3 : ℝ) + ((n : ℤ) - 2 : ℝ)⌋

end

end A161532.P5549939521670812955

namespace A161532

/-- `floor((2*n+1)/acot(n+3)+n-2)` -/
def P5549939521670812955.Spec : Prop :=
  ∀ n, P5549939521670812955.a n = A161532 n

end A161532

/-! ## A161532.P6060622513967638781

`ceil((2*n+1)/acot(n+3)+n-3)`
-/

namespace A161532.P6060622513967638781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / SequenceMachineLib.acot (n + 3 : ℝ) + ((n : ℤ) - 3 : ℝ)⌉

end

end A161532.P6060622513967638781

namespace A161532

/-- `ceil((2*n+1)/acot(n+3)+n-3)` -/
def P6060622513967638781.Spec : Prop :=
  ∀ n, P6060622513967638781.a n = A161532 n

end A161532

/-! ## A161532.P3243418909454608069

`and((2*n+1)*(n+3)+n+2, -5)`
-/

namespace A161532.P3243418909454608069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 * n + 1) * (n + 3) + (n + 2) : ℤ) (-5)

end

end A161532.P3243418909454608069

namespace A161532

/-- `and((2*n+1)*(n+3)+n+2, -5)` -/
def P3243418909454608069.Spec : Prop :=
  ∀ n, P3243418909454608069.a n = A161532 n

end A161532

/-! ## A161532.P1437434825275127558

`lcm(2, (n+3)*2*n+2*n+1)/2`
-/

namespace A161532.P1437434825275127558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 ((n + 3) * (2 * n) + (2 * n + 1)) : ℚ) / 2

end

end A161532.P1437434825275127558

namespace A161532

/-- `lcm(2, (n+3)*2*n+2*n+1)/2` -/
def P1437434825275127558.Spec : Prop :=
  ∀ n, P1437434825275127558.a n = (A161532 n : ℚ)

end A161532

/-! ## A161532.P655925446067006696

`gcd((n+3)*2*n+2*n+1, C(2, n+2))`
-/

namespace A161532.P655925446067006696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 3) * (2 * n) + (2 * n + 1)) (Nat.choose 2 (n + 2))

end

end A161532.P655925446067006696

namespace A161532

/-- `gcd((n+3)*2*n+2*n+1, C(2, n+2))` -/
def P655925446067006696.Spec : Prop :=
  ∀ n, (P655925446067006696.a n : ℤ) = A161532 n

end A161532

/-! ## A161532.P8712230079787345099

`((n+3)*2*n+2*n+1)*gcd(n, n+1)`
-/

namespace A161532.P8712230079787345099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 3) * (2 * n) + (2 * n + 1)) * Nat.gcd n (n + 1)

end

end A161532.P8712230079787345099

namespace A161532

/-- `((n+3)*2*n+2*n+1)*gcd(n, n+1)` -/
def P8712230079787345099.Spec : Prop :=
  ∀ n, (P8712230079787345099.a n : ℤ) = A161532 n

theorem P8712230079787345099.correct : P8712230079787345099.Spec := by
  intro n
  simp only [A161532, Nat.add_sub_cancel, A161532.P8712230079787345099.a, A161532.P17103615400908031824.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A161532

/-! ## A161532.P12601271160135340564

`((n+3)*2*n+2*n+1)*and(1, 2*n+1)`
-/

namespace A161532.P12601271160135340564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 3) * (2 * n) + (2 * n + 1)) * Nat.land 1 (2 * n + 1)

end

end A161532.P12601271160135340564

namespace A161532

/-- `((n+3)*2*n+2*n+1)*and(1, 2*n+1)` -/
def P12601271160135340564.Spec : Prop :=
  ∀ n, (P12601271160135340564.a n : ℤ) = A161532 n

theorem P12601271160135340564.correct : P12601271160135340564.Spec := by
  intro n
  simp only [A161532, Nat.add_sub_cancel, A161532.P12601271160135340564.a, A161532.P17103615400908031824.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A161532

/-! ## A161532.P1654562140907247257

`((2*n+1)/C(n+3, n+2)+2*n)*(n+3)`
-/

namespace A161532.P1654562140907247257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℚ) / (Nat.choose (n + 3) (n + 2) : ℚ) + (2 * n : ℚ)) * (n + 3 : ℚ)

end

end A161532.P1654562140907247257

namespace A161532

/-- `((2*n+1)/C(n+3, n+2)+2*n)*(n+3)` -/
def P1654562140907247257.Spec : Prop :=
  ∀ n, P1654562140907247257.a n = (A161532 n : ℚ)

end A161532

/-! ## A161532.P575095423980572441

`abs(1-A152811(n+1))`
-/

namespace A161532.P575095423980572441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A152811 (n + 1)|

end

end A161532.P575095423980572441

namespace A161532

/-- `abs(1-A152811(n+1))` -/
def P575095423980572441.Spec : Prop :=
  ∀ n, P575095423980572441.a n = A161532 n

end A161532

/-! ## A161532.P1530329721541825781

`abs(2-A271625(n+1))`
-/

namespace A161532.P1530329721541825781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A271625 (n + 1)|

end

end A161532.P1530329721541825781

namespace A161532

/-- `abs(2-A271625(n+1))` -/
def P1530329721541825781.Spec : Prop :=
  ∀ n, P1530329721541825781.a n = A161532 n

end A161532

/-! ## A161532.P218803453840287773

`abs(A139570(n)+Δ[n²])`
-/

namespace A161532.P218803453840287773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A139570 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A161532.P218803453840287773

namespace A161532

/-- `abs(A139570(n)+Δ[n²])` -/
def P218803453840287773.Spec : Prop :=
  ∀ n, P218803453840287773.a n = A161532 n

end A161532

/-! ## A161532.P15493034997355770877

`A192845(n+1)%A152813(n)`
-/

namespace A161532.P15493034997355770877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192845 (n + 1)) (A152813 n)

end

end A161532.P15493034997355770877

namespace A161532

/-- `A192845(n+1)%A152813(n)` -/
def P15493034997355770877.Spec : Prop :=
  ∀ n, P15493034997355770877.a n = A161532 n

end A161532

/-!
# A161535: Array read by antidiagonals: Row n contains the positive multiples of the first n primes.

The programs for A161535, there is no canonical definition to state claims against.
-/

/-! ## A161535.P15569997298564592506

`A285533(A109979(n))+A125704(n+1)`
-/

namespace A161535.P15569997298564592506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285533 (A109979 n).toNat + A125704 (n + 1)

end

end A161535.P15569997298564592506

/-! ## A161535.P5333554873367552650

`A111701(A125703(n+1))+1-A186748(n)`
-/

namespace A161535.P5333554873367552650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111701 (A125703 (n + 1)).toNat + (1 - A186748 n)

end

end A161535.P5333554873367552650

/-! ## A161535.P2056579347811617799

`A111701(A125703(n+1))+A063865(A186748(n))`
-/

namespace A161535.P2056579347811617799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111701 (A125703 (n + 1)).toNat + A063865 (A186748 n).toNat

end

end A161535.P2056579347811617799

/-!
# A161536: a(1)=1. a(n) = the smallest integer > a(n-1) that is an (odd) palindrome when written in binary, and is such that (a(n)-a(n-1))/2 is prime.

The programs for A161536, there is no canonical definition to state claims against.
-/

/-! ## A161536.P6945477071848542258

`A163410(comp[Δ[A051802(2^(n+1))]])`
-/

namespace A161536.P6945477071848542258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (2 ^ (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163410 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A161536.P6945477071848542258

/-! ## A161536.P8611237941664823517

`A359402(lt[1, ∑{e}[A359389(n+1)+1, #]])`
-/

namespace A161536.P8611237941664823517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359389 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359402 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161536.P8611237941664823517

/-! ## A161536.P381691997072860870

`∩[A080036(n), A329358(A080036(n))]`
-/

namespace A161536.P381691997072860870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329358 (A080036 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161536.P381691997072860870

/-! ## A161536.P1190771992036279190

`A006995(A070939(A217101(∑[n+3])))`
-/

namespace A161536.P1190771992036279190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A070939 (A217101 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A161536.P1190771992036279190

/-!
# A161537: a(n) = n-th composite + n.

The programs for A161537, the canonical program `A161537.P5701896001486132994` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161537 has offset 1).

The definition of A161537 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161537.P5701896001486132994

`A002808(n+1)+n+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A161537

/-- `A002808(n+1)+n+1` -/
def P5701896001486132994.Spec : Prop :=
  ∀ n, P5701896001486132994.a n = A161537 (n + 1)

theorem P5701896001486132994.correct : P5701896001486132994.Spec := by
  intro n
  simp only [A161537, Nat.add_sub_cancel]

end A161537

/-! ## A161537.P11807569076537210172

`A079696(n+1)+n`
-/

namespace A161537.P11807569076537210172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1) + (n : ℤ)

end

end A161537.P11807569076537210172

namespace A161537

/-- `A079696(n+1)+n` -/
def P11807569076537210172.Spec : Prop :=
  ∀ n, P11807569076537210172.a n = A161537 (n + 1)

end A161537

/-! ## A161537.P3988778815203705120

`Δ[A053767(n)]+1+n`
-/

namespace A161537.P3988778815203705120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A161537.P3988778815203705120

namespace A161537

/-- `Δ[A053767(n)]+1+n` -/
def P3988778815203705120.Spec : Prop :=
  ∀ n, P3988778815203705120.a n = A161537 (n + 1)

end A161537

/-! ## A161537.P589060438937759827

`comp[A351078(n)]+1+n`
-/

namespace A161537.P589060438937759827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 + n

end

end A161537.P589060438937759827

namespace A161537

/-- `comp[A351078(n)]+1+n` -/
def P589060438937759827.Spec : Prop :=
  ∀ n, (P589060438937759827.a n : ℤ) = A161537 (n + 1)

end A161537

/-! ## A161537.P1265776632687448259

`A018252(n+2)+1+n`
-/

namespace A161537.P1265776632687448259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) + 1 + (n : ℤ)

end

end A161537.P1265776632687448259

namespace A161537

/-- `A018252(n+2)+1+n` -/
def P1265776632687448259.Spec : Prop :=
  ∀ n, P1265776632687448259.a n = A161537 (n + 1)

end A161537

/-! ## A161537.P1234383498307402536

`A072668(n+1)+2+n`
-/

namespace A161537.P1234383498307402536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) + 2 + (n : ℤ)

end

end A161537.P1234383498307402536

namespace A161537

/-- `A072668(n+1)+2+n` -/
def P1234383498307402536.Spec : Prop :=
  ∀ n, P1234383498307402536.a n = A161537 (n + 1)

end A161537

/-! ## A161537.P17556749270674314136

`A141468(n+3)+1+n`
-/

namespace A161537.P17556749270674314136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3) + 1 + (n : ℤ)

end

end A161537.P17556749270674314136

namespace A161537

/-- `A141468(n+3)+1+n` -/
def P17556749270674314136.Spec : Prop :=
  ∀ n, P17556749270674314136.a n = A161537 (n + 1)

end A161537

/-! ## A161537.P13458757517838484580

`A164028(n+1)+4+n`
-/

namespace A161537.P13458757517838484580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164028 (n + 1) + 4 + (n : ℤ)

end

end A161537.P13458757517838484580

namespace A161537

/-- `A164028(n+1)+4+n` -/
def P13458757517838484580.Spec : Prop :=
  ∀ n, P13458757517838484580.a n = A161537 (n + 1)

end A161537

/-! ## A161537.P16918677062214825426

`A073169(n+1)+2*(n+1)`
-/

namespace A161537.P16918677062214825426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073169 (n + 1) + (2 * (n + 1) : ℤ)

end

end A161537.P16918677062214825426

namespace A161537

/-- `A073169(n+1)+2*(n+1)` -/
def P16918677062214825426.Spec : Prop :=
  ∀ n, P16918677062214825426.a n = A161537 (n + 1)

end A161537

/-! ## A161537.P6651295679418504358

`A282671(n+1)/2+n+1`
-/

namespace A161537.P6651295679418504358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282671 (n + 1) : ℚ) / 2 + (n + 1 : ℚ)

end

end A161537.P6651295679418504358

namespace A161537

/-- `A282671(n+1)/2+n+1` -/
def P6651295679418504358.Spec : Prop :=
  ∀ n, P6651295679418504358.a n = (A161537 (n + 1) : ℚ)

end A161537

/-! ## A161537.P15737813356297594565

`A222307(2*n+3)+n+1`
-/

namespace A161537.P15737813356297594565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 3) + (n + 1 : ℤ)

end

end A161537.P15737813356297594565

namespace A161537

/-- `A222307(2*n+3)+n+1` -/
def P15737813356297594565.Spec : Prop :=
  ∀ n, P15737813356297594565.a n = A161537 (n + 1)

end A161537

/-! ## A161537.P6372658509886152529

`lt[1, A001222(n+1)]+2+n`
-/

namespace A161537.P6372658509886152529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2 + n

end

end A161537.P6372658509886152529

namespace A161537

/-- `lt[1, A001222(n+1)]+2+n` -/
def P6372658509886152529.Spec : Prop :=
  ∀ n, (P6372658509886152529.a n : ℤ) = A161537 (n + 1)

end A161537

/-! ## A161537.P3405830149082960510

`lt[2, A000005(n+1)]+2+n`
-/

namespace A161537.P3405830149082960510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2 + n

end

end A161537.P3405830149082960510

namespace A161537

/-- `lt[2, A000005(n+1)]+2+n` -/
def P3405830149082960510.Spec : Prop :=
  ∀ n, (P3405830149082960510.a n : ℤ) = A161537 (n + 1)

end A161537

/-! ## A161537.P795990129976721937

`lt[A000010(n+1), n]+2+n`
-/

namespace A161537.P795990129976721937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2 + n

end

end A161537.P795990129976721937

namespace A161537

/-- `lt[A000010(n+1), n]+2+n` -/
def P795990129976721937.Spec : Prop :=
  ∀ n, (P795990129976721937.a n : ℤ) = A161537 (n + 1)

end A161537

/-! ## A161537.P3901756239657329548

`lt[A006530(n+1), n]+2+n`
-/

namespace A161537.P3901756239657329548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2 + n

end

end A161537.P3901756239657329548

namespace A161537

/-- `lt[A006530(n+1), n]+2+n` -/
def P3901756239657329548.Spec : Prop :=
  ∀ n, (P3901756239657329548.a n : ℤ) = A161537 (n + 1)

end A161537

/-! ## A161537.P3232990658053801420

`lt[A020639(n+1), n]+2+n`
-/

namespace A161537.P3232990658053801420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2 + n

end

end A161537.P3232990658053801420

namespace A161537

/-- `lt[A020639(n+1), n]+2+n` -/
def P3232990658053801420.Spec : Prop :=
  ∀ n, (P3232990658053801420.a n : ℤ) = A161537 (n + 1)

end A161537

/-! ## A161537.P2011082130260266993

`eq[0, C(2, A000005(n+2))]+n+3`
-/

namespace A161537.P2011082130260266993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + (n + 3)

end

end A161537.P2011082130260266993

namespace A161537

/-- `eq[0, C(2, A000005(n+2))]+n+3` -/
def P2011082130260266993.Spec : Prop :=
  ∀ n, (P2011082130260266993.a n : ℤ) = A161537 (n + 1)

end A161537

/-! ## A161537.P9286363877158333809

`A071228(n+1)/(n+1)+n+1`
-/

namespace A161537.P9286363877158333809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071228 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A161537.P9286363877158333809

namespace A161537

/-- `A071228(n+1)/(n+1)+n+1` -/
def P9286363877158333809.Spec : Prop :=
  ∀ n, P9286363877158333809.a n = (A161537 (n + 1) : ℚ)

end A161537

/-! ## A161537.P16135430358979689796

`lt[n+2, A000203(n+1)]+2+n`
-/

namespace A161537.P16135430358979689796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2 + n

end

end A161537.P16135430358979689796

namespace A161537

/-- `lt[n+2, A000203(n+1)]+2+n` -/
def P16135430358979689796.Spec : Prop :=
  ∀ n, (P16135430358979689796.a n : ℤ) = A161537 (n + 1)

end A161537

/-!
# A161538: Numbers n such that composite (n) + n is a prime, where composite (n) denotes the n-th composite number.

The programs for A161538, there is no canonical definition to state claims against.
-/

/-! ## A161538.P893129248451569676

`A026238(A161542(n+1))`
-/

namespace A161538.P893129248451569676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A161542 (n + 1)).toNat

end

end A161538.P893129248451569676

/-! ## A161538.P16324803859185940560

`A161540(n+1)-A161542(n+1)`
-/

namespace A161538.P16324803859185940560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161540 (n + 1) - A161542 (n + 1)

end

end A161538.P16324803859185940560

/-! ## A161538.P4699290513699543949

`eq[1, A001222(A018252(n+1)+n)]`
-/

namespace A161538.P4699290513699543949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A018252 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161538.P4699290513699543949

/-! ## A161538.P4681728052890573605

`eq[1, A010051(A018252(n+1)+n)]`
-/

namespace A161538.P4681728052890573605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A018252 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161538.P4681728052890573605

/-! ## A161538.P17025610255069375284

`eq[1, A107279(A018252(n+1)+n)]`
-/

namespace A161538.P17025610255069375284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A018252 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161538.P17025610255069375284

/-! ## A161538.P17013902829914779380

`eq[2, A000005(A018252(n+1)+n)]`
-/

namespace A161538.P17013902829914779380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A018252 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161538.P17013902829914779380

/-! ## A161538.P12893921954493393272

`eq[2, A076984(A018252(n+1)+n)]`
-/

namespace A161538.P12893921954493393272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (A018252 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161538.P12893921954493393272

/-! ## A161538.P4305422022615297277

`eq[2, A303809(A018252(n+1)+n)]`
-/

namespace A161538.P4305422022615297277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303809 (A018252 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161538.P4305422022615297277

/-! ## A161538.P9697598384521268046

`eq[1, A032741(comp[A006530(n+1)]+n)]`
-/

namespace A161538.P9697598384521268046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161538.P9697598384521268046

/-! ## A161538.P17432541710886844882

`lt[n+1, A020639(A018252(n+1)+n)]`
-/

namespace A161538.P17432541710886844882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A018252 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161538.P17432541710886844882

/-!
# A161539: Numbers n such that composite (n) + n is a composite, where composite (n) denotes the n-th composite number.

The programs for A161539, there is no canonical definition to state claims against.
-/

/-! ## A161539.P14058603153733604433

`comp[A161538(n+1)-1]+1`
-/

namespace A161539.P14058603153733604433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161538 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A161539.P14058603153733604433

/-! ## A161539.P14158433624638013038

`lt[1, A001222(A018252(n+1)+n)]`
-/

namespace A161539.P14158433624638013038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A018252 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161539.P14158433624638013038

/-! ## A161539.P1839322236009497734

`lt[1, A072491(A018252(n+1)+n)]`
-/

namespace A161539.P1839322236009497734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A018252 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161539.P1839322236009497734

/-! ## A161539.P17968314359302749836

`lt[1, A074206(A018252(n+1)+n)]`
-/

namespace A161539.P17968314359302749836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A018252 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161539.P17968314359302749836

/-! ## A161539.P6914123737661843527

`lt[1, A078898(A018252(n+1)+n)]`
-/

namespace A161539.P6914123737661843527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A018252 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161539.P6914123737661843527

/-! ## A161539.P674312822388329855

`lt[A080339(A018252(n+1)+n), 1]`
-/

namespace A161539.P674312822388329855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A018252 (n + 1) + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161539.P674312822388329855

/-! ## A161539.P2032925278851752327

`lt[1, A082023(A018252(n+1)+n)]`
-/

namespace A161539.P2032925278851752327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 (A018252 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161539.P2032925278851752327

/-! ## A161539.P8754110045583682237

`lt[1, A166974(A018252(n+1)+n)]`
-/

namespace A161539.P8754110045583682237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 (A018252 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161539.P8754110045583682237

/-! ## A161539.P4707737630740665954

`lt[1, A223135(A018252(n+1)+n)]`
-/

namespace A161539.P4707737630740665954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 (A018252 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161539.P4707737630740665954

/-! ## A161539.P6102383538361888165

`lt[2, A000005(A018252(n+1)+n)]`
-/

namespace A161539.P6102383538361888165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A018252 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161539.P6102383538361888165

/-!
# A161540: Primes which are the sum of a smaller n and its composite(n) subscript. A002808 + a(n) (= prime).

The programs for A161540, the canonical program `A161540.P11595900627706559669` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161540 has offset 1).

The definition of A161540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161540.P11595900627706559669

`p?[A161537(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A161540

/-- `p?[A161537(n+1)]` -/
def P11595900627706559669.Spec : Prop :=
  ∀ n, P11595900627706559669.a n = A161540 (n + 1)

theorem P11595900627706559669.correct : P11595900627706559669.Spec := by
  intro n
  simp only [A161540, Nat.add_sub_cancel]

end A161540

/-! ## A161540.P11873168023809315048

`p?[Δ[A051349(n)]+n]`
-/

namespace A161540.P11873168023809315048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161540.P11873168023809315048

namespace A161540

/-- `p?[Δ[A051349(n)]+n]` -/
def P11873168023809315048.Spec : Prop :=
  ∀ n, P11873168023809315048.a n = A161540 (n + 1)

end A161540

/-! ## A161540.P4436748661016997707

`p?[A171504(n+1)-1]`
-/

namespace A161540.P4436748661016997707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171504 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161540.P4436748661016997707

namespace A161540

/-- `p?[A171504(n+1)-1]` -/
def P4436748661016997707.Spec : Prop :=
  ∀ n, P4436748661016997707.a n = A161540 (n + 1)

end A161540

/-! ## A161540.P11897975783368684088

`p?[A018252(n+1)+n]`
-/

namespace A161540.P11897975783368684088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161540.P11897975783368684088

namespace A161540

/-- `p?[A018252(n+1)+n]` -/
def P11897975783368684088.Spec : Prop :=
  ∀ n, P11897975783368684088.a n = A161540 (n + 1)

end A161540

/-! ## A161540.P11455091670832230545

`p?[A079696(n+1)+n]`
-/

namespace A161540.P11455091670832230545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161540.P11455091670832230545

namespace A161540

/-- `p?[A079696(n+1)+n]` -/
def P11455091670832230545.Spec : Prop :=
  ∀ n, P11455091670832230545.a n = A161540 (n + 1)

end A161540

/-! ## A161540.P5674340094476320240

`p?[A141468(n+2)+n]`
-/

namespace A161540.P5674340094476320240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161540.P5674340094476320240

namespace A161540

/-- `p?[A141468(n+2)+n]` -/
def P5674340094476320240.Spec : Prop :=
  ∀ n, P5674340094476320240.a n = A161540 (n + 1)

end A161540

/-! ## A161540.P10706721938360566833

`p?[∑[A054546(n+1)]+n]`
-/

namespace A161540.P10706721938360566833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161540.P10706721938360566833

namespace A161540

/-- `p?[∑[A054546(n+1)]+n]` -/
def P10706721938360566833.Spec : Prop :=
  ∀ n, P10706721938360566833.a n = A161540 (n + 1)

end A161540

/-! ## A161540.P17306683565261496327

`p?[comp[A006530(n+1)]+n]`
-/

namespace A161540.P17306683565261496327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A161540.P17306683565261496327

namespace A161540

/-- `p?[comp[A006530(n+1)]+n]` -/
def P17306683565261496327.Spec : Prop :=
  ∀ n, (P17306683565261496327.a n : ℤ) = A161540 (n + 1)

end A161540

/-! ## A161540.P519008037397697197

`p?[comp[A008578(n+1)]+n]`
-/

namespace A161540.P519008037397697197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A161540.P519008037397697197

namespace A161540

/-- `p?[comp[A008578(n+1)]+n]` -/
def P519008037397697197.Spec : Prop :=
  ∀ n, (P519008037397697197.a n : ℤ) = A161540 (n + 1)

end A161540

/-! ## A161540.P16266049261278812920

`p?[comp[A020639(n+1)]+n]`
-/

namespace A161540.P16266049261278812920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A161540.P16266049261278812920

namespace A161540

/-- `p?[comp[A020639(n+1)]+n]` -/
def P16266049261278812920.Spec : Prop :=
  ∀ n, (P16266049261278812920.a n : ℤ) = A161540 (n + 1)

end A161540

/-! ## A161540.P15219490505342523649

`p?[comp[A025473(n+1)]+n]`
-/

namespace A161540.P15219490505342523649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A161540.P15219490505342523649

namespace A161540

/-- `p?[comp[A025473(n+1)]+n]` -/
def P15219490505342523649.Spec : Prop :=
  ∀ n, (P15219490505342523649.a n : ℤ) = A161540 (n + 1)

end A161540

/-! ## A161540.P7248968076788044723

`p?[comp[A182986(n+1)]+n]`
-/

namespace A161540.P7248968076788044723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A161540.P7248968076788044723

namespace A161540

/-- `p?[comp[A182986(n+1)]+n]` -/
def P7248968076788044723.Spec : Prop :=
  ∀ n, (P7248968076788044723.a n : ℤ) = A161540 (n + 1)

end A161540

/-! ## A161540.P17339914386266789106

`p?[A222307(2*n+1)+n]`
-/

namespace A161540.P17339914386266789106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161540.P17339914386266789106

namespace A161540

/-- `p?[A222307(2*n+1)+n]` -/
def P17339914386266789106.Spec : Prop :=
  ∀ n, P17339914386266789106.a n = A161540 (n + 1)

end A161540

/-! ## A161540.P13829108046950306680

`filter[A161537(n+1), A010051(#)]`
-/

namespace A161540.P13829108046950306680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A161540.P13829108046950306680

namespace A161540

/-- `filter[A161537(n+1), A010051(#)]` -/
def P13829108046950306680.Spec : Prop :=
  ∀ n, P13829108046950306680.a n = A161540 (n + 1)

end A161540

/-! ## A161540.P6374434482938837781

`∩[A000040(n+1), A161537(n+1)]`
-/

namespace A161540.P6374434482938837781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161540.P6374434482938837781

namespace A161540

/-- `∩[A000040(n+1), A161537(n+1)]` -/
def P6374434482938837781.Spec : Prop :=
  ∀ n, (P6374434482938837781.a n : ℤ) = A161540 (n + 1)

end A161540

/-! ## A161540.P7373904935085851457

`∩[A006005(n+1), A161537(n+1)]`
-/

namespace A161540.P7373904935085851457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161540.P7373904935085851457

namespace A161540

/-- `∩[A006005(n+1), A161537(n+1)]` -/
def P7373904935085851457.Spec : Prop :=
  ∀ n, (P7373904935085851457.a n : ℤ) = A161540 (n + 1)

end A161540

/-! ## A161540.P10784611661115626460

`∩[A008578(n+1), A161537(n+1)]`
-/

namespace A161540.P10784611661115626460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161540.P10784611661115626460

namespace A161540

/-- `∩[A008578(n+1), A161537(n+1)]` -/
def P10784611661115626460.Spec : Prop :=
  ∀ n, (P10784611661115626460.a n : ℤ) = A161540 (n + 1)

end A161540

/-! ## A161540.P18282043130086748201

`∩[A033946(n+1), A161537(n+1)]`
-/

namespace A161540.P18282043130086748201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161540.P18282043130086748201

namespace A161540

/-- `∩[A033946(n+1), A161537(n+1)]` -/
def P18282043130086748201.Spec : Prop :=
  ∀ n, (P18282043130086748201.a n : ℤ) = A161540 (n + 1)

end A161540

/-! ## A161540.P16350260477167748294

`∩[A045344(n+1), A161537(n+1)]`
-/

namespace A161540.P16350260477167748294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161540.P16350260477167748294

namespace A161540

/-- `∩[A045344(n+1), A161537(n+1)]` -/
def P16350260477167748294.Spec : Prop :=
  ∀ n, (P16350260477167748294.a n : ℤ) = A161540 (n + 1)

end A161540

/-!
# A161541: Composite which are the sum of a smaller n and its composite(n) subscript A002808 + a(n) (= composite).

The programs for A161541, there is no canonical definition to state claims against.
-/

/-! ## A161541.P3138352342064900123

`A161537(A161539(n+1))`
-/

namespace A161541.P3138352342064900123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161537 (A161539 (n + 1)).toNat

end

end A161541.P3138352342064900123

/-! ## A161541.P12841557709092791698

`filter[A161537(n+1), A005171(#)]`
-/

namespace A161541.P12841557709092791698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A161541.P12841557709092791698

/-! ## A161541.P7706623771367515554

`filter[A161537(n+1), A066247(#)]`
-/

namespace A161541.P7706623771367515554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A161541.P7706623771367515554

/-! ## A161541.P17075233523854015462

`A161543(n+1)+A161539(n+1)`
-/

namespace A161541.P17075233523854015462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161543 (n + 1) + A161539 (n + 1)

end

end A161541.P17075233523854015462

/-! ## A161541.P3844803223537077764

`∩[A002808(n+1), A161537(n+1)]`
-/

namespace A161541.P3844803223537077764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161541.P3844803223537077764

/-! ## A161541.P143958374847982964

`∩[A018252(n+1), A161537(n+1)]`
-/

namespace A161541.P143958374847982964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161541.P143958374847982964

/-! ## A161541.P17933211789470810632

`∩[A056653(n+1), A161537(n+1)]`
-/

namespace A161541.P17933211789470810632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161541.P17933211789470810632

/-! ## A161541.P2594028322426641524

`∩[A065090(n+1), A161537(n+1)]`
-/

namespace A161541.P2594028322426641524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161541.P2594028322426641524

/-! ## A161541.P694160848604710377

`∩[A141468(n+1), A161537(n+1)]`
-/

namespace A161541.P694160848604710377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161541.P694160848604710377

/-! ## A161541.P2182759636419120022

`∩[A161537(n+1), A171581(n+1)]`
-/

namespace A161541.P2182759636419120022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161541.P2182759636419120022

/-!
# A161542: m-th composite composite(m) is included iff composite(m) + m is prime.

The programs for A161542, the canonical program `A161542.P13832799179824774982` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161542 has offset 1).

The definition of A161542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161542.P13832799179824774982

`record[A006530(A161537(n+1))-(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A161542

/-- `record[A006530(A161537(n+1))-(n+1)]` -/
def P13832799179824774982.Spec : Prop :=
  ∀ n, P13832799179824774982.a n = A161542 (n + 1)

theorem P13832799179824774982.correct : P13832799179824774982.Spec := by
  intro n
  simp only [A161542, Nat.add_sub_cancel]

end A161542

/-! ## A161542.P3246305834706824943

`record[A020639(A002808(n+1)+n+1)-(n+1)]`
-/

namespace A161542.P3246305834706824943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002808 (n + 1) + (n + 1 : ℤ)).toNat - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161542.P3246305834706824943

namespace A161542

/-- `record[A020639(A002808(n+1)+n+1)-(n+1)]` -/
def P3246305834706824943.Spec : Prop :=
  ∀ n, P3246305834706824943.a n = A161542 (n + 1)

end A161542

/-! ## A161542.P11776340039897836143

`record[A002808(n+1)/A001222(A161537(n+1))]`
-/

namespace A161542.P11776340039897836143
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (A001222 (A161537 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161542.P11776340039897836143

namespace A161542

/-- `record[A002808(n+1)/A001222(A161537(n+1))]` -/
def P11776340039897836143.Spec : Prop :=
  ∀ n, P11776340039897836143.a n = (A161542 (n + 1) : ℚ)

end A161542

/-! ## A161542.P6902278037409826277

`record[A018252(n+2)%A020639(A161537(n+1))]`
-/

namespace A161542.P6902278037409826277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (n + 2)) (A020639 (A161537 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161542.P6902278037409826277

namespace A161542

/-- `record[A018252(n+2)%A020639(A161537(n+1))]` -/
def P6902278037409826277.Spec : Prop :=
  ∀ n, P6902278037409826277.a n = A161542 (n + 1)

end A161542

/-! ## A161542.P8126892364833286094

`record[A001478(n+1)+A014963(A161537(n+1))]`
-/

namespace A161542.P8126892364833286094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + A014963 (A161537 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161542.P8126892364833286094

namespace A161542

/-- `record[A001478(n+1)+A014963(A161537(n+1))]` -/
def P8126892364833286094.Spec : Prop :=
  ∀ n, P8126892364833286094.a n = A161542 (n + 1)

end A161542

/-! ## A161542.P15571388674674112570

`A002808(A161538(n+1))`
-/

namespace A161542.P15571388674674112570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A161538 (n + 1)).toNat

end

end A161542.P15571388674674112570

namespace A161542

/-- `A002808(A161538(n+1))` -/
def P15571388674674112570.Spec : Prop :=
  ∀ n, P15571388674674112570.a n = A161542 (n + 1)

end A161542

/-! ## A161542.P10902639268644807178

`A018252(A161538(n+1)+1)`
-/

namespace A161542.P10902639268644807178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A161538 (n + 1) + 1).toNat

end

end A161542.P10902639268644807178

namespace A161542

/-- `A018252(A161538(n+1)+1)` -/
def P10902639268644807178.Spec : Prop :=
  ∀ n, P10902639268644807178.a n = A161542 (n + 1)

end A161542

/-! ## A161542.P13710173486392939388

`A065090(A161538(n+1)+2)`
-/

namespace A161542.P13710173486392939388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (A161538 (n + 1) + 2).toNat

end

end A161542.P13710173486392939388

namespace A161542

/-- `A065090(A161538(n+1)+2)` -/
def P13710173486392939388.Spec : Prop :=
  ∀ n, P13710173486392939388.a n = A161542 (n + 1)

end A161542

/-! ## A161542.P16957742509714250120

`A067747(2*A161538(n+1))`
-/

namespace A161542.P16957742509714250120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * A161538 (n + 1)).toNat

end

end A161542.P16957742509714250120

namespace A161542

/-- `A067747(2*A161538(n+1))` -/
def P16957742509714250120.Spec : Prop :=
  ∀ n, P16957742509714250120.a n = A161542 (n + 1)

end A161542

/-! ## A161542.P3780538663505287546

`A161540(n+1)-A161538(n+1)`
-/

namespace A161542.P3780538663505287546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161540 (n + 1) - A161538 (n + 1)

end

end A161542.P3780538663505287546

namespace A161542

/-- `A161540(n+1)-A161538(n+1)` -/
def P3780538663505287546.Spec : Prop :=
  ∀ n, P3780538663505287546.a n = A161542 (n + 1)

end A161542

/-!
# A161543: The m-th composite number composite(m) is a term iff composite(m) + m is composite.

The programs for A161543, there is no canonical definition to state claims against.
-/

/-! ## A161543.P17070357160505946311

`A002808(A161539(n+1))`
-/

namespace A161543.P17070357160505946311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A161539 (n + 1)).toNat

end

end A161543.P17070357160505946311

/-! ## A161543.P9362355209251217278

`A018252(A161539(n+1)+1)`
-/

namespace A161543.P9362355209251217278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A161539 (n + 1) + 1).toNat

end

end A161543.P9362355209251217278

/-! ## A161543.P15169700634610707193

`A065090(A161539(n+1)+2)`
-/

namespace A161543.P15169700634610707193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (A161539 (n + 1) + 2).toNat

end

end A161543.P15169700634610707193

/-! ## A161543.P16311552643629128207

`A141468(A161539(n+1)+2)`
-/

namespace A161543.P16311552643629128207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A161539 (n + 1) + 2).toNat

end

end A161543.P16311552643629128207

/-! ## A161543.P17589865543519246190

`A067747(2*A161539(n+1))`
-/

namespace A161543.P17589865543519246190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * A161539 (n + 1)).toNat

end

end A161543.P17589865543519246190

/-! ## A161543.P5838114829789811577

`A161541(n+1)-A161539(n+1)`
-/

namespace A161543.P5838114829789811577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161541 (n + 1) - A161539 (n + 1)

end

end A161543.P5838114829789811577

/-!
# A161546: Composite numbers whose Spanish names have a composite number of letters.

The programs for A161546, there is no canonical definition to state claims against.
-/

/-! ## A161546.P14448460109618552093

`eq[0, A127786(A305812(A103889(n+1)))]`
-/

namespace A161546.P14448460109618552093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127786 (A305812 (A103889 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161546.P14448460109618552093

/-! ## A161546.P3479270277318968388

`A018252(lt[A343175(n+1), A008306(3*n+2)])`
-/

namespace A161546.P3479270277318968388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008306 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161546.P3479270277318968388

/-!
# A161547: Composite numbers whose Spanish names have a prime number of letters.

The programs for A161547, there is no canonical definition to state claims against.
-/

/-! ## A161547.P17390161901013671746

`eq[A055671(n), A244417(A011762(n))]`
-/

namespace A161547.P17390161901013671746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244417 (A011762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161547.P17390161901013671746

/-! ## A161547.P9065683034472719599

`filter[A151716(n+1), A066247(#)]`
-/

namespace A161547.P9065683034472719599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A161547.P9065683034472719599

/-! ## A161547.P2622662894336041110

`filter[A151716(n+2), A005171(#)]`
-/

namespace A161547.P2622662894336041110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151716 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A161547.P2622662894336041110

/-! ## A161547.P1849858539325696858

`∩[A151716(n+1), A205524(n+1)]`
-/

namespace A161547.P1849858539325696858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161547.P1849858539325696858

/-! ## A161547.P16088129273818476500

`∩[A151716(n+1), A062973(n+2)]`
-/

namespace A161547.P16088129273818476500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161547.P16088129273818476500

/-!
# A161549: a(n) = 2*n^2 + 14*n + 1.

The programs for A161549, the canonical program `A161549.P10873518887571627308` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161549 has offset 0).

The definition of A161549 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+14*n+1` (program `A161549.P10873518887571627308`, by `A161549.P10873518887571627308.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A161549.P10873518887571627308

`2*n²+14*n+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A161549

/-- `2*n²+14*n+1` -/
def P10873518887571627308.Spec : Prop :=
  ∀ n, (P10873518887571627308.a n : ℤ) = A161549 n

theorem P10873518887571627308.correct : P10873518887571627308.Spec := by
  intro n
  simp only [A161549]

end A161549

/-! ## A161549.P15993457825297384909

`∑[a(n-1)+4]` with `a(0)=1, a(1)=16`
-/

namespace A161549.P15993457825297384909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161549.P15993457825297384909

namespace A161549

/-- `∑[a(n-1)+4]` -/
def P15993457825297384909.Spec : Prop :=
  ∀ n, (P15993457825297384909.a n : ℤ) = A161549 n

end A161549

/-! ## A161549.P14102369764586375476

`or(1, (n+7)*2*n)`
-/

namespace A161549.P14102369764586375476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((n + 7) * (2 * n))

end

end A161549.P14102369764586375476

namespace A161549

/-- `or(1, (n+7)*2*n)` -/
def P14102369764586375476.Spec : Prop :=
  ∀ n, (P14102369764586375476.a n : ℤ) = A161549 n

end A161549

/-! ## A161549.P4977234692645249161

`xor(1, (n+7)*2*n)`
-/

namespace A161549.P4977234692645249161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((n + 7) * (2 * n))

end

end A161549.P4977234692645249161

namespace A161549

/-- `xor(1, (n+7)*2*n)` -/
def P4977234692645249161.Spec : Prop :=
  ∀ n, (P4977234692645249161.a n : ℤ) = A161549 n

end A161549

/-! ## A161549.P11904184306167298436

`record[a(n-1)+4*(n+1)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A161549.P11904184306167298436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 1) + 4 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161549.P11904184306167298436

namespace A161549

/-- `record[a(n-1)+4*(n+1)]` -/
def P11904184306167298436.Spec : Prop :=
  ∀ n, (P11904184306167298436.a n : ℤ) = A161549 n

end A161549

/-! ## A161549.P1656209058752890564

`∑[gcd(4*(n+3), A073097(2*n))]`
-/

namespace A161549.P1656209058752890564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 * (n + 3) : ℤ) (A073097 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161549.P1656209058752890564

namespace A161549

/-- `∑[gcd(4*(n+3), A073097(2*n))]` -/
def P1656209058752890564.Spec : Prop :=
  ∀ n, (P1656209058752890564.a n : ℤ) = A161549 n

end A161549

/-! ## A161549.P12651818757151569244

`abs(1-A017545(n)-A046092(n))`
-/

namespace A161549.P12651818757151569244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A017545 n - A046092 n|

end

end A161549.P12651818757151569244

namespace A161549

/-- `abs(1-A017545(n)-A046092(n))` -/
def P12651818757151569244.Spec : Prop :=
  ∀ n, P12651818757151569244.a n = A161549 n

end A161549

/-! ## A161549.P3971665019206949157

`abs(Δ[A005900(n)]+12*n)`
-/

namespace A161549.P3971665019206949157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + (12 * n : ℤ)|

end

end A161549.P3971665019206949157

namespace A161549

/-- `abs(Δ[A005900(n)]+12*n)` -/
def P3971665019206949157.Spec : Prop :=
  ∀ n, P3971665019206949157.a n = A161549 n

end A161549

/-! ## A161549.P4510864546982349477

`∑[record[A019425(n+8)]]`
-/

namespace A161549.P4510864546982349477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (n + 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161549.P4510864546982349477

namespace A161549

/-- `∑[record[A019425(n+8)]]` -/
def P4510864546982349477.Spec : Prop :=
  ∀ n, P4510864546982349477.a n = A161549 n

end A161549

/-! ## A161549.P7149481077812466284

`∑[A008574(A062545(n)-n)]`
-/

namespace A161549.P7149481077812466284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A062545 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161549.P7149481077812466284

namespace A161549

/-- `∑[A008574(A062545(n)-n)]` -/
def P7149481077812466284.Spec : Prop :=
  ∀ n, P7149481077812466284.a n = A161549 n

end A161549

/-! ## A161549.P2022389807658342997

`∑[A008574(A089389(2*(n+1)))]`
-/

namespace A161549.P2022389807658342997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A089389 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161549.P2022389807658342997

namespace A161549

/-- `∑[A008574(A089389(2*(n+1)))]` -/
def P2022389807658342997.Spec : Prop :=
  ∀ n, P2022389807658342997.a n = A161549 n

end A161549

/-! ## A161549.P8981707204130507279

`record[A001844(n)-16*n]`
-/

namespace A161549.P8981707204130507279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - (16 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161549.P8981707204130507279

namespace A161549

/-- `record[A001844(n)-16*n]` -/
def P8981707204130507279.Spec : Prop :=
  ∀ n, P8981707204130507279.a n = A161549 n

end A161549

/-! ## A161549.P4658181757445712460

`A000027(A008594(n)+(n+1)²+n²)`
-/

namespace A161549.P4658181757445712460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A008594 n + ((n + 1) ^ 2 + n ^ 2 : ℤ)).toNat

end

end A161549.P4658181757445712460

namespace A161549

/-- `A000027(A008594(n)+(n+1)²+n²)` -/
def P4658181757445712460.Spec : Prop :=
  ∀ n, P4658181757445712460.a n = A161549 n

end A161549

/-! ## A161549.P887179329173624072

`∩[2*n+1, a(n-1)+4*(n+3)]` with `a(0)=1`
-/

namespace A161549.P887179329173624072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 4 * (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n

end

end A161549.P887179329173624072

namespace A161549

/-- `∩[2*n+1, a(n-1)+4*(n+3)]` -/
def P887179329173624072.Spec : Prop :=
  ∀ n, (P887179329173624072.a n : ℤ) = A161549 n

end A161549

/-! ## A161549.P16456483145041935463

`A000265(A046092(n)+A017533(n))`
-/

namespace A161549.P16456483145041935463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A046092 n + A017533 n).toNat

end

end A161549.P16456483145041935463

namespace A161549

/-- `A000265(A046092(n)+A017533(n))` -/
def P16456483145041935463.Spec : Prop :=
  ∀ n, P16456483145041935463.a n = A161549 n

end A161549

/-! ## A161549.P12576667586454890488

`A000265(A046092(n)-(1-A017545(n)))`
-/

namespace A161549.P12576667586454890488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A046092 n - (1 - A017545 n)).toNat

end

end A161549.P12576667586454890488

namespace A161549

/-- `A000265(A046092(n)-(1-A017545(n)))` -/
def P12576667586454890488.Spec : Prop :=
  ∀ n, P12576667586454890488.a n = A161549 n

end A161549

/-! ## A161549.P1289800901308334004

`A093544(∑[n+3]-2)`
-/

namespace A161549.P1289800901308334004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093544 (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A161549.P1289800901308334004

namespace A161549

/-- `A093544(∑[n+3]-2)` -/
def P1289800901308334004.Spec : Prop :=
  ∀ n, P1289800901308334004.a n = A161549 n

end A161549

/-! ## A161549.P15138796176376352667

`A016813(∑[n+3]-3)`
-/

namespace A161549.P15138796176376352667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (∑ j ∈ Finset.range (n + 1), f1 j - 3)

end

end A161549.P15138796176376352667

namespace A161549

/-- `A016813(∑[n+3]-3)` -/
def P15138796176376352667.Spec : Prop :=
  ∀ n, P15138796176376352667.a n = A161549 n

end A161549

/-! ## A161549.P10276474596057717995

`∑[A004526(A325516(∑[n+3]))]`
-/

namespace A161549.P10276474596057717995
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A325516 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161549.P10276474596057717995

namespace A161549

/-- `∑[A004526(A325516(∑[n+3]))]` -/
def P10276474596057717995.Spec : Prop :=
  ∀ n, P10276474596057717995.a n = A161549 n

end A161549

/-!
# A161550: Largest prime <= n^2+n.

The programs for A161550, there is no canonical definition to state claims against.
-/

/-! ## A161550.P15888743527042059513

`(n+1)*(n+2)-A289357(n+1)`
-/

namespace A161550.P15888743527042059513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) : ℤ) - A289357 (n + 1)

end

end A161550.P15888743527042059513

/-! ## A161550.P5645969325420839455

`A000040(A089610(n+1)+∑[A014085(n)])`
-/

namespace A161550.P5645969325420839455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A089610 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161550.P5645969325420839455

/-! ## A161550.P1566457775264809585

`A000040(A000720(∑[2*(n+1)]))`
-/

namespace A161550.P1566457775264809585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A161550.P1566457775264809585

/-! ## A161550.P5401165009759923874

`A050376(A302778((n+1)*(n+2)))`
-/

namespace A161550.P5401165009759923874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (A302778 ((n + 1) * (n + 2))).toNat

end

end A161550.P5401165009759923874

/-! ## A161550.P8028485484562494911

`A081259(A007980(n))`
-/

namespace A161550.P8028485484562494911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081259 (A007980 n).toNat

end

end A161550.P8028485484562494911

/-! ## A161550.P15482290378573755787

`A060308(∑[n+1])`
-/

namespace A161550.P15482290378573755787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161550.P15482290378573755787

/-! ## A161550.P6625194897127868289

`A000040(A099802(∑[n+1]))`
-/

namespace A161550.P6625194897127868289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A099802 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A161550.P6625194897127868289

/-! ## A161550.P3572538137282873276

`A065769(A151800((n+2)*(n+1)))`
-/

namespace A161550.P3572538137282873276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065769 (A151800 ((n + 2) * (n + 1))).toNat

end

end A161550.P3572538137282873276

/-! ## A161550.P17467912348995673296

`p?[A002262(n+2)*A060308(n+1)]`
-/

namespace A161550.P17467912348995673296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 2) * A060308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A161550.P17467912348995673296

/-!
# A161552: E.g.f. satisfies: A(x,y) = exp(x*y*exp(x*A(x,y))).

The programs for A161552, the canonical program `A161552.P2623612057955738276` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161552 has offset 0).

The definition of A161552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161552.P2623612057955738276

`A003992(abs(1-n))*A059297(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A161552

/-- `A003992(abs(1-n))*A059297(n)` -/
def P2623612057955738276.Spec : Prop :=
  ∀ n, P2623612057955738276.a n = A161552 n

theorem P2623612057955738276.correct : P2623612057955738276.Spec := by
  intro n
  simp only [A161552]

end A161552

/-! ## A161552.P5711489546993257673

`A009998(A056943(n))*A059297(n)`
-/

namespace A161552.P5711489546993257673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 (A056943 n).toNat * A059297 n

end

end A161552.P5711489546993257673

namespace A161552

/-- `A009998(A056943(n))*A059297(n)` -/
def P5711489546993257673.Spec : Prop :=
  ∀ n, P5711489546993257673.a n = A161552 n

end A161552

/-! ## A161552.P10266497919290760150

`A007318(n)*A055570(A123125(n))`
-/

namespace A161552.P10266497919290760150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A055570 (A123125 n).toNat

end

end A161552.P10266497919290760150

namespace A161552

/-- `A007318(n)*A055570(A123125(n))` -/
def P10266497919290760150.Spec : Prop :=
  ∀ n, P10266497919290760150.a n = A161552 n

end A161552

/-! ## A161552.P3382461909511077743

`A055570(A123125(n))*A091918(n)`
-/

namespace A161552.P3382461909511077743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A123125 n).toNat * A091918 n

end

end A161552.P3382461909511077743

namespace A161552

/-- `A055570(A123125(n))*A091918(n)` -/
def P3382461909511077743.Spec : Prop :=
  ∀ n, P3382461909511077743.a n = A161552 n

end A161552

/-! ## A161552.P13183941733404810046

`A055570(A123125(n))*A132749(n)`
-/

namespace A161552.P13183941733404810046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A123125 n).toNat * A132749 n

end

end A161552.P13183941733404810046

namespace A161552

/-- `A055570(A123125(n))*A132749(n)` -/
def P13183941733404810046.Spec : Prop :=
  ∀ n, P13183941733404810046.a n = A161552 n

end A161552

/-!
# A161553: Table which contains in row n the fundamental Pisano period of the Fibonacci sequence (mod n).

The programs for A161553, there is no canonical definition to state claims against.
-/

/-! ## A161553.P5225135135138908016

`A001842(record[A000211(A029916(n))])`
-/

namespace A161553.P5225135135138908016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 (A029916 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A161553.P5225135135138908016

/-! ## A161553.P12650811953927856810

`A308427(A105543(n)+A059995(n))`
-/

namespace A161553.P12650811953927856810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (A105543 n + A059995 n).toNat

end

end A161553.P12650811953927856810

/-! ## A161553.P2561773246129454748

`A280748(∑[n-floor((n+1)/6)]-n+7)`
-/

namespace A161553.P2561773246129454748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n + 1 : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280748 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) + 7).toNat

end

end A161553.P2561773246129454748

/-! ## A161553.P15997633015776044950

`A146093(A034297(n)+3)`
-/

namespace A161553.P15997633015776044950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146093 (A034297 n + 3).toNat

end

end A161553.P15997633015776044950

/-! ## A161553.P9877089898090526610

`A315327(A182522(n))%3`
-/

namespace A161553.P9877089898090526610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A315327 (A182522 n).toNat) 3

end

end A161553.P9877089898090526610

/-!
# A161555: Numerators of sequence of fractions of primes that minimize absolute value of difference between the fractions and 1/4.

The programs for A161555, there is no canonical definition to state claims against.
-/

/-! ## A161555.P11132197728461371374

`A006530(a(n-1)*A024698(n+1))` with `a(0)=2`
-/

namespace A161555.P11132197728461371374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 (a (n - 1) * A024698 (n + 1)).toNat

end

end A161555.P11132197728461371374

/-! ## A161555.P12332994641995126691

`A006530(a(n-1)*A076342(n+2))` with `a(0)=2`
-/

namespace A161555.P12332994641995126691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 (a (n - 1) * A076342 (n + 2)).toNat

end

end A161555.P12332994641995126691

/-! ## A161555.P14455818222289051884

`A006530(lcm(a(n-1), A024698(n+1)))` with `a(0)=2`
-/

namespace A161555.P14455818222289051884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 (Int.lcm (a (n - 1)) (A024698 (n + 1)))

end

end A161555.P14455818222289051884

/-!
# A161556: Exponential Riordan array [1 + (sqrt(Pi)/2)*x*exp(x^2/4)*erf(x/2), x].

The programs for A161556, the canonical program `A161556.P15517187539568904594` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161556 has offset 0).

The definition of A161556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161556.P15517187539568904594

`A072346(A025581(n))*A119467(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A161556

/-- `A072346(A025581(n))*A119467(n)` -/
def P15517187539568904594.Spec : Prop :=
  ∀ n, P15517187539568904594.a n = A161556 n

theorem P15517187539568904594.correct : P15517187539568904594.Spec := by
  intro n
  simp only [A161556]

end A161556

/-! ## A161556.P9682370586550656850

`A081123(A193739(n))*A119467(n)`
-/

namespace A161556.P9682370586550656850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A193739 n).toNat * A119467 n

end

end A161556.P9682370586550656850

namespace A161556

/-- `A081123(A193739(n))*A119467(n)` -/
def P9682370586550656850.Spec : Prop :=
  ∀ n, P9682370586550656850.a n = A161556 n

end A161556

/-! ## A161556.P1181251294069310615

`A067147(n)/A001405(A025581(n))`
-/

namespace A161556.P1181251294069310615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067147 n : ℚ) / (A001405 (A025581 n).toNat : ℚ)

end

end A161556.P1181251294069310615

namespace A161556

/-- `A067147(n)/A001405(A025581(n))` -/
def P1181251294069310615.Spec : Prop :=
  ∀ n, P1181251294069310615.a n = (A161556 n : ℚ)

end A161556

/-! ## A161556.P4535222868216193522

`A116447(A004736(n+1))*A119467(n)`
-/

namespace A161556.P4535222868216193522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116447 (A004736 (n + 1)).toNat * A119467 n

end

end A161556.P4535222868216193522

namespace A161556

/-- `A116447(A004736(n+1))*A119467(n)` -/
def P4535222868216193522.Spec : Prop :=
  ∀ n, P4535222868216193522.a n = A161556 n

end A161556

/-! ## A161556.P16025991022426579783

`A130595(n)/A046854(n)*A242653(n)`
-/

namespace A161556.P16025991022426579783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130595 n : ℚ) / (A046854 n : ℚ) * (A242653 n : ℚ)

end

end A161556.P16025991022426579783

namespace A161556

/-- `A130595(n)/A046854(n)*A242653(n)` -/
def P16025991022426579783.Spec : Prop :=
  ∀ n, P16025991022426579783.a n = (A161556 n : ℚ)

end A161556

/-! ## A161556.P16799147042851444856

`A114162(n*A128174(n+1))*A128174(n+1)`
-/

namespace A161556.P16799147042851444856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114162 ((n : ℤ) * A128174 (n + 1)).toNat * A128174 (n + 1)

end

end A161556.P16799147042851444856

namespace A161556

/-- `A114162(n*A128174(n+1))*A128174(n+1)` -/
def P16799147042851444856.Spec : Prop :=
  ∀ n, P16799147042851444856.a n = A161556 n

end A161556

/-! ## A161556.P6945914343685331338

`lcm(A104975(n), A114162(n))`
-/

namespace A161556.P6945914343685331338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A104975 n) (A114162 n)

end

end A161556.P6945914343685331338

namespace A161556

/-- `lcm(A104975(n), A114162(n))` -/
def P6945914343685331338.Spec : Prop :=
  ∀ n, (P6945914343685331338.a n : ℤ) = A161556 n

end A161556

/-! ## A161556.P7540649132577976572

`A114162(n)*A128174(n+1)`
-/

namespace A161556.P7540649132577976572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114162 n * A128174 (n + 1)

end

end A161556.P7540649132577976572

namespace A161556

/-- `A114162(n)*A128174(n+1)` -/
def P7540649132577976572.Spec : Prop :=
  ∀ n, P7540649132577976572.a n = A161556 n

end A161556

/-! ## A161556.P581710798025672279

`A059841(A025581(n))*A114162(n)`
-/

namespace A161556.P581710798025672279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A025581 n).toNat * A114162 n

end

end A161556.P581710798025672279

namespace A161556

/-- `A059841(A025581(n))*A114162(n)` -/
def P581710798025672279.Spec : Prop :=
  ∀ n, P581710798025672279.a n = A161556 n

end A161556

/-!
# A161560: a(n) = floor(A000069(n)/2-1/2).

The programs for A161560, the canonical program `A161560.P15052176189256135490` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161560 has offset 1).

The definition of A161560 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161560.P5440181137994840925

`A000069(n+1)-(n+1)`
-/

namespace A161560.P5440181137994840925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) - (n + 1 : ℤ)

end

end A161560.P5440181137994840925

namespace A161560

/-- `A000069(n+1)-(n+1)` -/
def P5440181137994840925.Spec : Prop :=
  ∀ n, P5440181137994840925.a n = A161560 (n + 1)

end A161560

/-! ## A161560.P15052176189256135490

`floor(A000069(n+1)/2-1/2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A161560

/-- `floor(A000069(n+1)/2-1/2)` -/
def P15052176189256135490.Spec : Prop :=
  ∀ n, P15052176189256135490.a n = A161560 (n + 1)

theorem P15052176189256135490.correct : P15052176189256135490.Spec := by
  intro n
  simp only [A161560, Nat.add_sub_cancel]

end A161560

/-! ## A161560.P10022701127605853200

`n-char[xor(n, Δ[n²])]`
-/

namespace A161560.P10022701127605853200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A161560.P10022701127605853200

namespace A161560

/-- `n-char[xor(n, Δ[n²])]` -/
def P10022701127605853200.Spec : Prop :=
  ∀ n, P10022701127605853200.a n = A161560 (n + 1)

end A161560

/-! ## A161560.P15069404349995114420

`n-char[comp[xor(n, 2*n)]]`
-/

namespace A161560.P15069404349995114420
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A161560.P15069404349995114420

namespace A161560

/-- `n-char[comp[xor(n, 2*n)]]` -/
def P15069404349995114420.Spec : Prop :=
  ∀ n, P15069404349995114420.a n = A161560 (n + 1)

end A161560

/-! ## A161560.P12953167367784959737

`char[xor(n, 2*n)]-1+n`
-/

namespace A161560.P12953167367784959737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 1 + (n : ℤ)

end

end A161560.P12953167367784959737

namespace A161560

/-- `char[xor(n, 2*n)]-1+n` -/
def P12953167367784959737.Spec : Prop :=
  ∀ n, P12953167367784959737.a n = A161560 (n + 1)

end A161560

/-! ## A161560.P9414786292171924607

`n-(1-char[xor(n, 2*n)])`
-/

namespace A161560.P9414786292171924607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A161560.P9414786292171924607

namespace A161560

/-- `n-(1-char[xor(n, 2*n)])` -/
def P9414786292171924607.Spec : Prop :=
  ∀ n, P9414786292171924607.a n = A161560 (n + 1)

end A161560

/-! ## A161560.P16057482170546054898

`comp[xor(n, 2*(n+1))]-n`
-/

namespace A161560.P16057482170546054898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A161560.P16057482170546054898

namespace A161560

/-- `comp[xor(n, 2*(n+1))]-n` -/
def P16057482170546054898.Spec : Prop :=
  ∀ n, P16057482170546054898.a n = A161560 (n + 1)

end A161560

/-! ## A161560.P18185930779374617628

`comp[xor(n, 2*n)]-1-n`
-/

namespace A161560.P18185930779374617628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 1 - (n : ℤ)

end

end A161560.P18185930779374617628

namespace A161560

/-- `comp[xor(n, 2*n)]-1-n` -/
def P18185930779374617628.Spec : Prop :=
  ∀ n, P18185930779374617628.a n = A161560 (n + 1)

end A161560

/-! ## A161560.P97586618381862949

`comp[xor(n, 2*n)]%(n+1)`
-/

namespace A161560.P97586618381862949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 1)

end

end A161560.P97586618381862949

namespace A161560

/-- `comp[xor(n, 2*n)]%(n+1)` -/
def P97586618381862949.Spec : Prop :=
  ∀ n, (P97586618381862949.a n : ℤ) = A161560 (n + 1)

end A161560

/-! ## A161560.P9854410410874766552

`n+1-gcd(2, a(and(n, n-1)))` with `a(0)=0`
-/

namespace A161560.P9854410410874766552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1 : ℤ) - (Int.gcd 2 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) : ℤ)

end

end A161560.P9854410410874766552

namespace A161560

/-- `n+1-gcd(2, a(and(n, n-1)))` -/
def P9854410410874766552.Spec : Prop :=
  ∀ n, P9854410410874766552.a n = A161560 (n + 1)

end A161560

/-! ## A161560.P4676498890279678993

`and(1, a(and(n, n-1)))+n-1` with `a(0)=0`
-/

namespace A161560.P4676498890279678993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land 1 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) + ((n : ℤ) - 1)

end

end A161560.P4676498890279678993

namespace A161560

/-- `and(1, a(and(n, n-1)))+n-1` -/
def P4676498890279678993.Spec : Prop :=
  ∀ n, P4676498890279678993.a n = A161560 (n + 1)

end A161560

/-! ## A161560.P7459427977503308516

`n-A010060(n)`
-/

namespace A161560.P7459427977503308516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A010060 n

end

end A161560.P7459427977503308516

namespace A161560

/-- `n-A010060(n)` -/
def P7459427977503308516.Spec : Prop :=
  ∀ n, P7459427977503308516.a n = A161560 (n + 1)

end A161560

/-! ## A161560.P18079616200549343711

`n-log2(A001285(n))`
-/

namespace A161560.P18079616200549343711
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 (A001285 n : ℝ)

end

end A161560.P18079616200549343711

namespace A161560

/-- `n-log2(A001285(n))` -/
def P18079616200549343711.Spec : Prop :=
  ∀ n, P18079616200549343711.a n = (A161560 (n + 1) : ℝ)

end A161560

/-! ## A161560.P3305367450254979838

`A010059(n)-1+n`
-/

namespace A161560.P3305367450254979838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n - 1 + (n : ℤ)

end

end A161560.P3305367450254979838

namespace A161560

/-- `A010059(n)-1+n` -/
def P3305367450254979838.Spec : Prop :=
  ∀ n, P3305367450254979838.a n = A161560 (n + 1)

end A161560

/-!
# A161561: The smallest number larger than n with digital sum equal to n.

The programs for A161561, there is no canonical definition to state claims against.
-/

/-! ## A161561.P1391150586438562405

`A175674(A175674(n+1)+n+1)+A051885(n+1)`
-/

namespace A161561.P1391150586438562405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175674 (A175674 (n + 1) + (n + 1 : ℤ)).toNat + A051885 (n + 1)

end

end A161561.P1391150586438562405

/-! ## A161561.P11700632357016851258

`A199344(a(n-1))` with `a(0)=10`
-/

namespace A161561.P11700632357016851258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A199344 (a (n - 1)).toNat

end

end A161561.P11700632357016851258

/-! ## A161561.P12200491810904756478

`a(n-1)+10^A102683(a(n-1))` with `a(0)=10`
-/

namespace A161561.P12200491810904756478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [10] fun n a =>
  a (n - 1) + (10 : ℚ) ^ (A102683 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℤ)

end

end A161561.P12200491810904756478

/-! ## A161561.P5300781755685088052

`eq[A033339(n+1), A138471(n)]`
-/

namespace A161561.P5300781755685088052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138471 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161561.P5300781755685088052

/-! ## A161561.P121219729196984531

`eq[A016042(n), A138471(n)]`
-/

namespace A161561.P121219729196984531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016042 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138471 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161561.P121219729196984531

/-!
# A161562: Even numbers n such that { n-p ; p prime, 2 < p < n/2 } contains at least twice as many primes as composites.

The programs for A161562, there is no canonical definition to state claims against.
-/

/-! ## A161562.P7787097813079122269

`∑[A033926(A299195(n))+1]`
-/

namespace A161562.P7787097813079122269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033926 (A299195 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161562.P7787097813079122269

/-! ## A161562.P9852661416485580849

`∑[A296076(A264879(n+4))]`
-/

namespace A161562.P9852661416485580849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296076 (A264879 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161562.P9852661416485580849

/-! ## A161562.P13232410149937829934

`∑[A202111(A204514(n+3))+1]`
-/

namespace A161562.P13232410149937829934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202111 (A204514 (n + 3)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161562.P13232410149937829934

/-! ## A161562.P7046662915348382433

`∑[A057467(∑[A302647(n+6)]+1)]`
-/

namespace A161562.P7046662915348382433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302647 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057467 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161562.P7046662915348382433

/-! ## A161562.P14474644475832045236

`∑[A046523(A255274(n+2)^n+1)]`
-/

namespace A161562.P14474644475832045236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A255274 (n + 2) ^ n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161562.P14474644475832045236

/-!
# A161563: Factorials of double factorials.

The programs for A161563, there is no canonical definition to state claims against.
-/

/-! ## A161563.P1044883515635571556

`A006882(n)!`
-/

namespace A161563.P1044883515635571556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A006882 n).toNat

end

end A161563.P1044883515635571556

/-! ## A161563.P9419219046569232521

`A000142(lcm(n, A006882(n)))`
-/

namespace A161563.P9419219046569232521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (Int.lcm (n : ℤ) (A006882 n))

end

end A161563.P9419219046569232521

/-! ## A161563.P9384364739301327263

`A000142(A006882(n)%A002109(n))`
-/

namespace A161563.P9384364739301327263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (Int.tmod (A006882 n) (A002109 n)).toNat

end

end A161563.P9384364739301327263

/-!
# A161565: E.g.f. satisfies: A(x) = exp(x*exp(2*x*A(x))).

The programs for A161565, there is no canonical definition to state claims against.
-/

/-! ## A161565.P12086751027832730981

`A211275(round(1/acot(n))+((n+2)^(n+1)-1)/(n+1)²)`
-/

namespace A161565.P12086751027832730981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211275 (SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) : ℚ) + (((n + 2) ^ (n + 1) : ℤ) - 1 : ℚ) / ((n + 1) ^ 2 : ℚ))).toNat

end

end A161565.P12086751027832730981

/-! ## A161565.P6861325295310925326

`ceil((A000203(A227544(n))+1)/2)`
-/

namespace A161565.P6861325295310925326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000203 (A227544 n).toNat + 1 : ℚ) / 2⌉

end

end A161565.P6861325295310925326

/-!
# A161566: E.g.f. satisfies: A(x) = exp(2*x*exp(x*A(x))).

The programs for A161566, there is no canonical definition to state claims against.
-/

/-! ## A161566.P3230470306467474434

`A260731(n!+3^n*n!)`
-/

namespace A161566.P3230470306467474434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (Nat.factorial n + 3 ^ n * Nat.factorial n)

end

end A161566.P3230470306467474434

/-!
# A161567: E.g.f. satisfies: A(x) = exp(x*exp(x*A(x)^2)).

The programs for A161567, there is no canonical definition to state claims against.
-/

/-! ## A161567.P1192036039114318207

`A022838(floor(sqrt(A300590(n))))`
-/

namespace A161567.P1192036039114318207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (Int.sqrt (A300590 n)).toNat

end

end A161567.P1192036039114318207

/-! ## A161567.P15087367047555818095

`A137753(A002445(n))+A036679(n)`
-/

namespace A161567.P15087367047555818095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137753 (A002445 n).toNat + A036679 n

end

end A161567.P15087367047555818095

/-!
# A161568: E.g.f. satisfies: A(x) = exp(2*x*exp(3*x*A(x))).

The programs for A161568, there is no canonical definition to state claims against.
-/

/-! ## A161568.P8043820809296395158

`A007417(A088662(∑[n]))`
-/

namespace A161568.P8043820809296395158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (A088662 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A161568.P8043820809296395158

/-!
# A161569: Sum of first n nonprimes minus their indices.

The programs for A161569, the canonical program `A161569.P6850851275196449247` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161569 has offset 1).

The definition of A161569 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161569.P16848218158142617428

`A051349(n+1)-(n+1)*(n+2)/2`
-/

namespace A161569.P16848218158142617428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051349 (n + 1) : ℚ) - (n + 1 : ℚ) * ((n + 2 : ℚ) / 2)

end

end A161569.P16848218158142617428

namespace A161569

/-- `A051349(n+1)-(n+1)*(n+2)/2` -/
def P16848218158142617428.Spec : Prop :=
  ∀ n, P16848218158142617428.a n = (A161569 (n + 1) : ℚ)

end A161569

/-! ## A161569.P6850851275196449247

`a(n-1)+A018252(n+1)-(n+1)` with `a(0)=0`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A161569

/-- `a(n-1)+A018252(n+1)-(n+1)` -/
def P6850851275196449247.Spec : Prop :=
  ∀ n, P6850851275196449247.a n = A161569 (n + 1)

theorem P6850851275196449247.correct : P6850851275196449247.Spec := by
  intro n
  simp only [A161569, Nat.add_sub_cancel]

end A161569

/-! ## A161569.P9701514302156641996

`∑[A073425(n)]`
-/

namespace A161569.P9701514302156641996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161569.P9701514302156641996

namespace A161569

/-- `∑[A073425(n)]` -/
def P9701514302156641996.Spec : Prop :=
  ∀ n, P9701514302156641996.a n = A161569 (n + 1)

end A161569

/-! ## A161569.P10908499080386305918

`A053767(n)-(∑[n]+n)`
-/

namespace A161569.P10908499080386305918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n - ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)

end

end A161569.P10908499080386305918

namespace A161569

/-- `A053767(n)-(∑[n]+n)` -/
def P10908499080386305918.Spec : Prop :=
  ∀ n, P10908499080386305918.a n = A161569 (n + 1)

end A161569

/-! ## A161569.P6227760060354248229

`∑[∑[A054546(n+1)-1]]`
-/

namespace A161569.P6227760060354248229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161569.P6227760060354248229

namespace A161569

/-- `∑[∑[A054546(n+1)-1]]` -/
def P6227760060354248229.Spec : Prop :=
  ∀ n, P6227760060354248229.a n = A161569 (n + 1)

end A161569

/-! ## A161569.P13189964927659149636

`∑[comp[A006093(n+1)]-n]`
-/

namespace A161569.P13189964927659149636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161569.P13189964927659149636

namespace A161569

/-- `∑[comp[A006093(n+1)]-n]` -/
def P13189964927659149636.Spec : Prop :=
  ∀ n, P13189964927659149636.a n = A161569 (n + 1)

end A161569

/-! ## A161569.P1943564225523041180

`∑[A018252(n+1)-(n+1)]`
-/

namespace A161569.P1943564225523041180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161569.P1943564225523041180

namespace A161569

/-- `∑[A018252(n+1)-(n+1)]` -/
def P1943564225523041180.Spec : Prop :=
  ∀ n, P1943564225523041180.a n = A161569 (n + 1)

end A161569

/-! ## A161569.P1754666888584634092

`∑[A060462(n+1)-n]-1`
-/

namespace A161569.P1754666888584634092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A161569.P1754666888584634092

namespace A161569

/-- `∑[A060462(n+1)-n]-1` -/
def P1754666888584634092.Spec : Prop :=
  ∀ n, P1754666888584634092.a n = A161569 (n + 1)

end A161569

/-! ## A161569.P2542244382577381703

`∑[A141468(n+2)-(n+1)]`
-/

namespace A161569.P2542244382577381703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161569.P2542244382577381703

namespace A161569

/-- `∑[A141468(n+2)-(n+1)]` -/
def P2542244382577381703.Spec : Prop :=
  ∀ n, P2542244382577381703.a n = A161569 (n + 1)

end A161569

/-! ## A161569.P9619425618535587616

`∑[eq[1, A005171(n+1)]-n]`
-/

namespace A161569.P9619425618535587616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161569.P9619425618535587616

namespace A161569

/-- `∑[eq[1, A005171(n+1)]-n]` -/
def P9619425618535587616.Spec : Prop :=
  ∀ n, P9619425618535587616.a n = A161569 (n + 1)

end A161569

/-! ## A161569.P1214647648110688060

`∑[lt[A010051(n+1), 1]-n]`
-/

namespace A161569.P1214647648110688060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161569.P1214647648110688060

namespace A161569

/-- `∑[lt[A010051(n+1), 1]-n]` -/
def P1214647648110688060.Spec : Prop :=
  ∀ n, P1214647648110688060.a n = A161569 (n + 1)

end A161569

/-! ## A161569.P284180528493080032

`∑[comp[record[A000010(n+1)]]-n]`
-/

namespace A161569.P284180528493080032
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161569.P284180528493080032

namespace A161569

/-- `∑[comp[record[A000010(n+1)]]-n]` -/
def P284180528493080032.Spec : Prop :=
  ∀ n, P284180528493080032.a n = A161569 (n + 1)

end A161569

/-! ## A161569.P16626132120492316184

`∑[comp[A000040(n+1)-1]-n]`
-/

namespace A161569.P16626132120492316184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161569.P16626132120492316184

namespace A161569

/-- `∑[comp[A000040(n+1)-1]-n]` -/
def P16626132120492316184.Spec : Prop :=
  ∀ n, P16626132120492316184.a n = A161569 (n + 1)

end A161569

/-! ## A161569.P3605117185242462062

`∑[comp[A006530(n+2)-1]-n]`
-/

namespace A161569.P3605117185242462062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161569.P3605117185242462062

namespace A161569

/-- `∑[comp[A006530(n+2)-1]-n]` -/
def P3605117185242462062.Spec : Prop :=
  ∀ n, P3605117185242462062.a n = A161569 (n + 1)

end A161569

/-! ## A161569.P10852975902201133750

`∑[comp[A020639(n+2)-1]-n]`
-/

namespace A161569.P10852975902201133750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161569.P10852975902201133750

namespace A161569

/-- `∑[comp[A020639(n+2)-1]-n]` -/
def P10852975902201133750.Spec : Prop :=
  ∀ n, P10852975902201133750.a n = A161569 (n + 1)

end A161569

/-! ## A161569.P5280524396964214058

`∑[comp[eq[2, A000005(n+1)]]-n]`
-/

namespace A161569.P5280524396964214058
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161569.P5280524396964214058

namespace A161569

/-- `∑[comp[eq[2, A000005(n+1)]]-n]` -/
def P5280524396964214058.Spec : Prop :=
  ∀ n, P5280524396964214058.a n = A161569 (n + 1)

end A161569

/-! ## A161569.P4565378752057257512

`∑[A000720(A018252(n+1))]`
-/

namespace A161569.P4565378752057257512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161569.P4565378752057257512

namespace A161569

/-- `∑[A000720(A018252(n+1))]` -/
def P4565378752057257512.Spec : Prop :=
  ∀ n, P4565378752057257512.a n = A161569 (n + 1)

end A161569

/-! ## A161569.P6835302083771245159

`∑[A023443(A018252(n+1)-n)]`
-/

namespace A161569.P6835302083771245159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A018252 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161569.P6835302083771245159

namespace A161569

/-- `∑[A023443(A018252(n+1)-n)]` -/
def P6835302083771245159.Spec : Prop :=
  ∀ n, P6835302083771245159.a n = A161569 (n + 1)

end A161569

/-! ## A161569.P12935461596317336187

`∑[A199969(A018252(n+1)-n)]`
-/

namespace A161569.P12935461596317336187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A018252 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161569.P12935461596317336187

namespace A161569

/-- `∑[A199969(A018252(n+1)-n)]` -/
def P12935461596317336187.Spec : Prop :=
  ∀ n, P12935461596317336187.a n = A161569 (n + 1)

end A161569

/-! ## A161569.P9289421558934822271

`A112997(n+1)-A071411(n+1)`
-/

namespace A161569.P9289421558934822271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112997 (n + 1) - A071411 (n + 1)

end

end A161569.P9289421558934822271

namespace A161569

/-- `A112997(n+1)-A071411(n+1)` -/
def P9289421558934822271.Spec : Prop :=
  ∀ n, P9289421558934822271.a n = A161569 (n + 1)

end A161569

/-!
# A161570: Sum of all numbers from n up to A018252(n).

The programs for A161570, the canonical program `A161570.P5322671682470775106` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161570 has offset 1).

The definition of A161570 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161570.P5322671682470775106

`A000217(A018252(n+1))-A000217(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A161570

/-- `A000217(A018252(n+1))-A000217(n)` -/
def P5322671682470775106.Spec : Prop :=
  ∀ n, P5322671682470775106.a n = A161570 (n + 1)

theorem P5322671682470775106.correct : P5322671682470775106.Spec := by
  intro n
  simp only [A161570, Nat.add_sub_cancel]

end A161570

/-! ## A161570.P9811021339782461750

`A324600(n+1)-∑[n]`
-/

namespace A161570.P9811021339782461750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324600 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A161570.P9811021339782461750

namespace A161570

/-- `A324600(n+1)-∑[n]` -/
def P9811021339782461750.Spec : Prop :=
  ∀ n, P9811021339782461750.a n = A161570 (n + 1)

end A161570

/-! ## A161570.P17999374857574203113

`C(Δ[A051349(n)]+1, 2)-∑[n]`
-/

namespace A161570.P17999374857574203113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (f1 (n + 1) - f1 n + 1).toNat 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A161570.P17999374857574203113

namespace A161570

/-- `C(Δ[A051349(n)]+1, 2)-∑[n]` -/
def P17999374857574203113.Spec : Prop :=
  ∀ n, P17999374857574203113.a n = A161570 (n + 1)

end A161570

/-! ## A161570.P4662177037736028191

`C(A141468(n+2)+1, 2)-∑[n]`
-/

namespace A161570.P4662177037736028191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A141468 (n + 2) + 1).toNat 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A161570.P4662177037736028191

namespace A161570

/-- `C(A141468(n+2)+1, 2)-∑[n]` -/
def P4662177037736028191.Spec : Prop :=
  ∀ n, P4662177037736028191.a n = A161570 (n + 1)

end A161570

/-! ## A161570.P8222851950863816594

`C(comp[A000040(n+1)-1]+2, 2)-∑[n]`
-/

namespace A161570.P8222851950863816594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A161570.P8222851950863816594

namespace A161570

/-- `C(comp[A000040(n+1)-1]+2, 2)-∑[n]` -/
def P8222851950863816594.Spec : Prop :=
  ∀ n, P8222851950863816594.a n = A161570 (n + 1)

end A161570

/-! ## A161570.P7748426097631126392

`C(comp[A006530(n+2)-1]+2, 2)-∑[n]`
-/

namespace A161570.P7748426097631126392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A161570.P7748426097631126392

namespace A161570

/-- `C(comp[A006530(n+2)-1]+2, 2)-∑[n]` -/
def P7748426097631126392.Spec : Prop :=
  ∀ n, P7748426097631126392.a n = A161570 (n + 1)

end A161570

/-! ## A161570.P3878650409858598252

`C(comp[A020639(n+2)-1]+2, 2)-∑[n]`
-/

namespace A161570.P3878650409858598252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A161570.P3878650409858598252

namespace A161570

/-- `C(comp[A020639(n+2)-1]+2, 2)-∑[n]` -/
def P3878650409858598252.Spec : Prop :=
  ∀ n, P3878650409858598252.a n = A161570 (n + 1)

end A161570

/-! ## A161570.P9537718174504322271

`A000217(Δ[A051349(n)])-∑[n]`
-/

namespace A161570.P9537718174504322271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (n + 1) - f1 n).toNat - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A161570.P9537718174504322271

namespace A161570

/-- `A000217(Δ[A051349(n)])-∑[n]` -/
def P9537718174504322271.Spec : Prop :=
  ∀ n, P9537718174504322271.a n = A161570 (n + 1)

end A161570

/-! ## A161570.P9959286562210903862

`A000124(Δ[A051349(n)])-A000124(n)`
-/

namespace A161570.P9959286562210903862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (f1 (n + 1) - f1 n).toNat - A000124 n

end

end A161570.P9959286562210903862

namespace A161570

/-- `A000124(Δ[A051349(n)])-A000124(n)` -/
def P9959286562210903862.Spec : Prop :=
  ∀ n, P9959286562210903862.a n = A161570 (n + 1)

end A161570

/-! ## A161570.P8742089652461621456

`A000124(A018252(n+1))-A000124(n)`
-/

namespace A161570.P8742089652461621456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A018252 (n + 1)).toNat - A000124 n

end

end A161570.P8742089652461621456

namespace A161570

/-- `A000124(A018252(n+1))-A000124(n)` -/
def P8742089652461621456.Spec : Prop :=
  ∀ n, P8742089652461621456.a n = A161570 (n + 1)

end A161570

/-!
# A161574: a(n) = the second smallest positive integer with exactly n divisors.

The programs for A161574, there is no canonical definition to state claims against.
-/

/-! ## A161574.P8252313187786798601

`A073915(∑[n+1]+2)`
-/

namespace A161574.P8252313187786798601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073915 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A161574.P8252313187786798601

/-! ## A161574.P13569998403357339013

`A079427(A005179(n+2))`
-/

namespace A161574.P13569998403357339013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079427 (A005179 (n + 2)).toNat

end

end A161574.P13569998403357339013

/-! ## A161574.P8984471336808978648

`A079427(sqrt(A130279(n+2)))`
-/

namespace A161574.P8984471336808978648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079427 (SequenceMachineLib.roundAway (Real.sqrt (A130279 (n + 2) : ℝ))).toNat

end

end A161574.P8984471336808978648

/-! ## A161574.P12080889093601783157

`A079427(A140635(A037019(n+2)))`
-/

namespace A161574.P12080889093601783157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079427 (A140635 (A037019 (n + 2)).toNat).toNat

end

end A161574.P12080889093601783157

/-!
# A161576: a(1)=1. a(n) = the smallest integer > a(n-1) such that d(a(n)) > d(n), where d(n) = the number of divisors of n.

The programs for A161576, there is no canonical definition to state claims against.
-/

/-! ## A161576.P10165277757501553743

`A004539(A091523(n+2))+2*n+1`
-/

namespace A161576.P10165277757501553743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (A091523 (n + 2)).toNat + (2 * n + 1 : ℤ)

end

end A161576.P10165277757501553743

/-! ## A161576.P17507662748721690192

`A346418(A346455(3*n+5))+A189726(3*n+1)`
-/

namespace A161576.P17507662748721690192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346418 (A346455 (3 * n + 5)).toNat + A189726 (3 * n + 1)

end

end A161576.P17507662748721690192

/-! ## A161576.P18409782879249304620

`2*(n+1)-A361024(A050468(n+1))`
-/

namespace A161576.P18409782879249304620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A361024 (A050468 (n + 1)).toNat

end

end A161576.P18409782879249304620

/-! ## A161576.P4376720831839302784

`A382960(2*(n+1))-A382972(A320160(n+1))`
-/

namespace A161576.P4376720831839302784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382960 (2 * (n + 1)) - A382972 (A320160 (n + 1)).toNat

end

end A161576.P4376720831839302784

/-! ## A161576.P795400766557641897

`A026498(A003963(n+1)*A221937(n+2))+2*n`
-/

namespace A161576.P795400766557641897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026498 (A003963 (n + 1) * A221937 (n + 2)).toNat + (2 * n : ℤ)

end

end A161576.P795400766557641897

/-!
# A161578: a(1)=2. a(n) = the smallest integer > a(n-1) such that d(a(n)) <= d(n), where d(n) = the number of divisors of n.

The programs for A161578, there is no canonical definition to state claims against.
-/

/-! ## A161578.P7643784863329723927

`lt[A003415(n), A218825(A005250(2*(n+1)))]`
-/

namespace A161578.P7643784863329723927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218825 (A005250 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A161578.P7643784863329723927

/-! ## A161578.P5768746031528125560

`lt[A174725(n+1), A091840(A214015(n+1)+1)]+1`
-/

namespace A161578.P5768746031528125560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091840 (A214015 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A161578.P5768746031528125560

/-!
# A161579: Positions n such that A010060(n) = A010060(n+3).

The programs for A161579, the canonical program `A161579.P6316794683403160465` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161579 has offset 1).

The definition of A161579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161579.P6316794683403160465

`lt[1, xor(n, n+3)%6]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A161579

/-- `lt[1, xor(n, n+3)%6]` -/
def P6316794683403160465.Spec : Prop :=
  ∀ n, (P6316794683403160465.a n : ℤ) = A161579 (n + 1)

theorem P6316794683403160465.correct : P6316794683403160465.Spec := by
  intro n
  simp only [A161579, Nat.add_sub_cancel]

end A161579

/-! ## A161579.P7910503145210023722

`comp[A161580(n+1)]`
-/

namespace A161579.P7910503145210023722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A161579.P7910503145210023722

namespace A161579

/-- `comp[A161580(n+1)]` -/
def P7910503145210023722.Spec : Prop :=
  ∀ n, (P7910503145210023722.a n : ℤ) = A161579 (n + 1)

end A161579

/-! ## A161579.P2172138460016831938

`lt[A316828(xor(2*(n+3), 2*n)), 1]`
-/

namespace A161579.P2172138460016831938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (Nat.xor (2 * (n + 3)) (2 * n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161579.P2172138460016831938

namespace A161579

/-- `lt[A316828(xor(2*(n+3), 2*n)), 1]` -/
def P2172138460016831938.Spec : Prop :=
  ∀ n, (P2172138460016831938.a n : ℤ) = A161579 (n + 1)

end A161579

/-! ## A161579.P10121596445205797544

`eq[A010060(n+3), A010060(n)]`
-/

namespace A161579.P10121596445205797544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161579.P10121596445205797544

namespace A161579

/-- `eq[A010060(n+3), A010060(n)]` -/
def P10121596445205797544.Spec : Prop :=
  ∀ n, (P10121596445205797544.a n : ℤ) = A161579 (n + 1)

end A161579

/-! ## A161579.P2429334251679726187

`comp[A121539(n+1)+A121539(n+2)]`
-/

namespace A161579.P2429334251679726187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121539 (n + 1) + A121539 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A161579.P2429334251679726187

namespace A161579

/-- `comp[A121539(n+1)+A121539(n+2)]` -/
def P2429334251679726187.Spec : Prop :=
  ∀ n, (P2429334251679726187.a n : ℤ) = A161579 (n + 1)

end A161579

/-! ## A161579.P5101551835455899063

`comp[A003159(n+2)-(2-A003159(n+1))]`
-/

namespace A161579.P5101551835455899063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 2) - (2 - A003159 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A161579.P5101551835455899063

namespace A161579

/-- `comp[A003159(n+2)-(2-A003159(n+1))]` -/
def P5101551835455899063.Spec : Prop :=
  ∀ n, (P5101551835455899063.a n : ℤ) = A161579 (n + 1)

end A161579

/-! ## A161579.P9034774708154548768

`eq[A035263(ceil(n/2)+1), A035263(n+1)]`
-/

namespace A161579.P9034774708154548768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (⌈(n : ℚ) / 2⌉ + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161579.P9034774708154548768

namespace A161579

/-- `eq[A035263(ceil(n/2)+1), A035263(n+1)]` -/
def P9034774708154548768.Spec : Prop :=
  ∀ n, (P9034774708154548768.a n : ℤ) = A161579 (n + 1)

end A161579

/-! ## A161579.P5882655617317993481

`∑[gcd(2, Δ[A026465(n+1)])]-1`
-/

namespace A161579.P5882655617317993481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A161579.P5882655617317993481

namespace A161579

/-- `∑[gcd(2, Δ[A026465(n+1)])]-1` -/
def P5882655617317993481.Spec : Prop :=
  ∀ n, P5882655617317993481.a n = A161579 (n + 1)

end A161579

/-! ## A161579.P13961000894736693938

`eq[1, A324468(A324468(n+1)²)]`
-/

namespace A161579.P13961000894736693938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324468 (A324468 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161579.P13961000894736693938

namespace A161579

/-- `eq[1, A324468(A324468(n+1)²)]` -/
def P13961000894736693938.Spec : Prop :=
  ∀ n, (P13961000894736693938.a n : ℤ) = A161579 (n + 1)

end A161579

/-! ## A161579.P4753018534649555485

`eq[A035263(n+1), A039963(n+1)]`
-/

namespace A161579.P4753018534649555485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161579.P4753018534649555485

namespace A161579

/-- `eq[A035263(n+1), A039963(n+1)]` -/
def P4753018534649555485.Spec : Prop :=
  ∀ n, (P4753018534649555485.a n : ℤ) = A161579 (n + 1)

end A161579

/-! ## A161579.P16480456352891529236

`eq[abs(A029883(n+3)), A039963(n)]`
-/

namespace A161579.P16480456352891529236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A029883 (n + 3)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161579.P16480456352891529236

namespace A161579

/-- `eq[abs(A029883(n+3)), A039963(n)]` -/
def P16480456352891529236.Spec : Prop :=
  ∀ n, (P16480456352891529236.a n : ℤ) = A161579 (n + 1)

end A161579

/-! ## A161579.P13366427483570716731

`eq[Δ[A096268(n+1)]², 1-A096268(n)]`
-/

namespace A161579.P13366427483570716731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A096268 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A161579.P13366427483570716731

namespace A161579

/-- `eq[Δ[A096268(n+1)]², 1-A096268(n)]` -/
def P13366427483570716731.Spec : Prop :=
  ∀ n, (P13366427483570716731.a n : ℤ) = A161579 (n + 1)

end A161579

/-! ## A161579.P18015446984561431691

`A121539(n+1)-A328981(A121539(n+1)+2)`
-/

namespace A161579.P18015446984561431691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121539 (n + 1) - A328981 (A121539 (n + 1) + 2).toNat

end

end A161579.P18015446984561431691

namespace A161579

/-- `A121539(n+1)-A328981(A121539(n+1)+2)` -/
def P18015446984561431691.Spec : Prop :=
  ∀ n, P18015446984561431691.a n = A161579 (n + 1)

end A161579

/-! ## A161579.P16023194857230289132

`eq[A268676(n+3), A268676(n)]`
-/

namespace A161579.P16023194857230289132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161579.P16023194857230289132

namespace A161579

/-- `eq[A268676(n+3), A268676(n)]` -/
def P16023194857230289132.Spec : Prop :=
  ∀ n, (P16023194857230289132.a n : ℤ) = A161579 (n + 1)

end A161579

/-! ## A161579.P5205093851363726095

`A161824(Δ[n²])/2`
-/

namespace A161579.P5205093851363726095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161824 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A161579.P5205093851363726095

namespace A161579

/-- `A161824(Δ[n²])/2` -/
def P5205093851363726095.Spec : Prop :=
  ∀ n, P5205093851363726095.a n = (A161579 (n + 1) : ℚ)

end A161579

/-! ## A161579.P12734933596058750572

`eq[A039963(2*n), A039963(n+1)]`
-/

namespace A161579.P12734933596058750572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161579.P12734933596058750572

namespace A161579

/-- `eq[A039963(2*n), A039963(n+1)]` -/
def P12734933596058750572.Spec : Prop :=
  ∀ n, (P12734933596058750572.a n : ℤ) = A161579 (n + 1)

end A161579

/-! ## A161579.P2640459630248027874

`A004524(A161580(n+1)+1)-1`
-/

namespace A161579.P2640459630248027874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A161580 (n + 1) + 1).toNat - 1

end

end A161579.P2640459630248027874

namespace A161579

/-- `A004524(A161580(n+1)+1)-1` -/
def P2640459630248027874.Spec : Prop :=
  ∀ n, P2640459630248027874.a n = A161579 (n + 1)

end A161579

/-! ## A161579.P9740165959259459927

`eq[A029884(2*n)², A029884(n+1)²]`
-/

namespace A161579.P9740165959259459927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029884 (2 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029884 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161579.P9740165959259459927

namespace A161579

/-- `eq[A029884(2*n)², A029884(n+1)²]` -/
def P9740165959259459927.Spec : Prop :=
  ∀ n, (P9740165959259459927.a n : ℤ) = A161579 (n + 1)

end A161579

/-! ## A161579.P17197843033962750389

`eq[ratio[A309873(n+2)], A309873(2*(n+1))]`
-/

namespace A161579.P17197843033962750389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f3 j : ℚ)) n

end

end A161579.P17197843033962750389

namespace A161579

/-- `eq[ratio[A309873(n+2)], A309873(2*(n+1))]` -/
def P17197843033962750389.Spec : Prop :=
  ∀ n, (P17197843033962750389.a n : ℤ) = A161579 (n + 1)

end A161579

/-! ## A161579.P9182169395923122710

`eq[Δ[A096268(n+1)]², A096268(2*n+1)]`
-/

namespace A161579.P9182169395923122710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A161579.P9182169395923122710

namespace A161579

/-- `eq[Δ[A096268(n+1)]², A096268(2*n+1)]` -/
def P9182169395923122710.Spec : Prop :=
  ∀ n, (P9182169395923122710.a n : ℤ) = A161579 (n + 1)

end A161579

/-!
# A161580: Positions n such that A010060(n) + A010060(n+3) = 1.

The programs for A161580, the canonical program `A161580.P16151939867536482856` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161580 has offset 1).

The definition of A161580 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161580.P16151939867536482856

`eq[1, xor(n, n+3)%3]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A161580

/-- `eq[1, xor(n, n+3)%3]` -/
def P16151939867536482856.Spec : Prop :=
  ∀ n, (P16151939867536482856.a n : ℤ) = A161580 (n + 1)

theorem P16151939867536482856.correct : P16151939867536482856.Spec := by
  intro n
  simp only [A161580, Nat.add_sub_cancel]

end A161580

/-! ## A161580.P1201230070949779422

`lt[1, and(n+3, -(n+1))%3]`
-/

namespace A161580.P1201230070949779422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n + 3 : ℤ) (-(n + 1 : ℤ))) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A161580.P1201230070949779422

namespace A161580

/-- `lt[1, and(n+3, -(n+1))%3]` -/
def P1201230070949779422.Spec : Prop :=
  ∀ n, (P1201230070949779422.a n : ℤ) = A161580 (n + 1)

end A161580

/-! ## A161580.P7586757122214096801

`lt[(n+1-and(n, n+3))%3, 1]`
-/

namespace A161580.P7586757122214096801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) - (Nat.land n (n + 3) : ℤ)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A161580.P7586757122214096801

namespace A161580

/-- `lt[(n+1-and(n, n+3))%3, 1]` -/
def P7586757122214096801.Spec : Prop :=
  ∀ n, (P7586757122214096801.a n : ℤ) = A161580 (n + 1)

end A161580

/-! ## A161580.P17655417714131369357

`A395089(n)+A079523(n+1)`
-/

namespace A161580.P17655417714131369357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395089 n + A079523 (n + 1)

end

end A161580.P17655417714131369357

namespace A161580

/-- `A395089(n)+A079523(n+1)` -/
def P17655417714131369357.Spec : Prop :=
  ∀ n, P17655417714131369357.a n = A161580 (n + 1)

end A161580

/-! ## A161580.P18286257108386399457

`A036554(n+1)-A395088(n)`
-/

namespace A161580.P18286257108386399457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1) - A395088 n

end

end A161580.P18286257108386399457

namespace A161580

/-- `A036554(n+1)-A395088(n)` -/
def P18286257108386399457.Spec : Prop :=
  ∀ n, P18286257108386399457.a n = A161580 (n + 1)

end A161580

/-! ## A161580.P12898871887297528947

`A003159(n+1)+A003160(n+1)+n`
-/

namespace A161580.P12898871887297528947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1) + (A003160 (n + 1) + (n : ℤ))

end

end A161580.P12898871887297528947

namespace A161580

/-- `A003159(n+1)+A003160(n+1)+n` -/
def P12898871887297528947.Spec : Prop :=
  ∀ n, P12898871887297528947.a n = A161580 (n + 1)

end A161580

/-! ## A161580.P3389254479924712805

`∑[A194688(n+1)]-A194688(n+1)/2`
-/

namespace A161580.P3389254479924712805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194688 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (A194688 (n + 1) : ℚ) / 2

end

end A161580.P3389254479924712805

namespace A161580

/-- `∑[A194688(n+1)]-A194688(n+1)/2` -/
def P3389254479924712805.Spec : Prop :=
  ∀ n, P3389254479924712805.a n = (A161580 (n + 1) : ℚ)

end A161580

/-! ## A161580.P5136973941285913244

`A121539(n+1)+A121539(n+2)`
-/

namespace A161580.P5136973941285913244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121539 (n + 1) + A121539 (n + 2)

end

end A161580.P5136973941285913244

namespace A161580

/-- `A121539(n+1)+A121539(n+2)` -/
def P5136973941285913244.Spec : Prop :=
  ∀ n, P5136973941285913244.a n = A161580 (n + 1)

end A161580

/-! ## A161580.P9935667933578820768

`A284391(n+2)+A079523(n+1)`
-/

namespace A161580.P9935667933578820768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284391 (n + 2) + A079523 (n + 1)

end

end A161580.P9935667933578820768

namespace A161580

/-- `A284391(n+2)+A079523(n+1)` -/
def P9935667933578820768.Spec : Prop :=
  ∀ n, P9935667933578820768.a n = A161580 (n + 1)

end A161580

/-! ## A161580.P11558487566394480654

`A003159(n+2)+A003159(n+1)-2`
-/

namespace A161580.P11558487566394480654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 2) + (A003159 (n + 1) - 2)

end

end A161580.P11558487566394480654

namespace A161580

/-- `A003159(n+2)+A003159(n+1)-2` -/
def P11558487566394480654.Spec : Prop :=
  ∀ n, P11558487566394480654.a n = A161580 (n + 1)

end A161580

/-! ## A161580.P373408894434322230

`A003156(n+2)-A026465(n+2)+n`
-/

namespace A161580.P373408894434322230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (n + 2) - A026465 (n + 2) + (n : ℤ)

end

end A161580.P373408894434322230

namespace A161580

/-- `A003156(n+2)-A026465(n+2)+n` -/
def P373408894434322230.Spec : Prop :=
  ∀ n, P373408894434322230.a n = A161580 (n + 1)

end A161580

/-! ## A161580.P15050654846867899550

`A162648(n+1)+Δ[A162648(n+1)/2]`
-/

namespace A161580.P15050654846867899550
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162648 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162648 (n + 1) : ℚ) + (f1 (n + 1) - f1 n)

end

end A161580.P15050654846867899550

namespace A161580

/-- `A162648(n+1)+Δ[A162648(n+1)/2]` -/
def P15050654846867899550.Spec : Prop :=
  ∀ n, P15050654846867899550.a n = (A161580 (n + 1) : ℚ)

end A161580

/-! ## A161580.P17800350857740554062

`A036554(n+1)+A286044(n+2)-A092606(n+1)`
-/

namespace A161580.P17800350857740554062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1) + (A286044 (n + 2) - A092606 (n + 1))

end

end A161580.P17800350857740554062

namespace A161580

/-- `A036554(n+1)+A286044(n+2)-A092606(n+1)` -/
def P17800350857740554062.Spec : Prop :=
  ∀ n, P17800350857740554062.a n = A161580 (n + 1)

end A161580

/-! ## A161580.P18097098410481449927

`A036554(n+1)-(A286044(n+1)+A286044(n+2))`
-/

namespace A161580.P18097098410481449927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1) - (A286044 (n + 1) + A286044 (n + 2))

end

end A161580.P18097098410481449927

namespace A161580

/-- `A036554(n+1)-(A286044(n+1)+A286044(n+2))` -/
def P18097098410481449927.Spec : Prop :=
  ∀ n, P18097098410481449927.a n = A161580 (n + 1)

end A161580

/-! ## A161580.P7271608832390795398

`A096268(A003159(n+1))+A079523(n+1)`
-/

namespace A161580.P7271608832390795398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A003159 (n + 1)).toNat + A079523 (n + 1)

end

end A161580.P7271608832390795398

namespace A161580

/-- `A096268(A003159(n+1))+A079523(n+1)` -/
def P7271608832390795398.Spec : Prop :=
  ∀ n, P7271608832390795398.a n = A161580 (n + 1)

end A161580

/-! ## A161580.P16683338347035920657

`A036554(n+1)-A091297(A003159(n+1))`
-/

namespace A161580.P16683338347035920657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1) - A091297 (A003159 (n + 1)).toNat

end

end A161580.P16683338347035920657

namespace A161580

/-- `A036554(n+1)-A091297(A003159(n+1))` -/
def P16683338347035920657.Spec : Prop :=
  ∀ n, P16683338347035920657.a n = A161580 (n + 1)

end A161580

/-! ## A161580.P16150249134633786107

`A036554(n+1)-A091297(A036554(n+1)/2)`
-/

namespace A161580.P16150249134633786107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1) - A091297 (SequenceMachineLib.roundAway ((A036554 (n + 1) : ℚ) / 2)).toNat

end

end A161580.P16150249134633786107

namespace A161580

/-- `A036554(n+1)-A091297(A036554(n+1)/2)` -/
def P16150249134633786107.Spec : Prop :=
  ∀ n, P16150249134633786107.a n = A161580 (n + 1)

end A161580

/-! ## A161580.P9448497103972070814

`A284391(n+2)+eq[A010060(n), A010060(n+1)]`
-/

namespace A161580.P9448497103972070814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284391 (n + 2) + (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A161580.P9448497103972070814

namespace A161580

/-- `A284391(n+2)+eq[A010060(n), A010060(n+1)]` -/
def P9448497103972070814.Spec : Prop :=
  ∀ n, P9448497103972070814.a n = A161580 (n + 1)

end A161580

/-! ## A161580.P142119435019628255

`A036554(n+1)-A284391(lt[0, val(n+1, 2)%2]-n+2)`
-/

namespace A161580.P142119435019628255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1) - A284391 ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n : ℤ) + 2).toNat

end

end A161580.P142119435019628255

namespace A161580

/-- `A036554(n+1)-A284391(lt[0, val(n+1, 2)%2]-n+2)` -/
def P142119435019628255.Spec : Prop :=
  ∀ n, P142119435019628255.a n = A161580 (n + 1)

end A161580

/-! ## A161580.P7196784148165772761

`A036554(n+1)-A284391(eq[1, and(1-2*n, 2*n)%3]+1+n-2*n)`
-/

namespace A161580.P7196784148165772761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (1 - (2 * n : ℤ)) (2 * n : ℤ)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1) - A284391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 + n - 2 * n)

end

end A161580.P7196784148165772761

namespace A161580

/-- `A036554(n+1)-A284391(eq[1, and(1-2*n, 2*n)%3]+1+n-2*n)` -/
def P7196784148165772761.Spec : Prop :=
  ∀ n, P7196784148165772761.a n = A161580 (n + 1)

end A161580

/-!
# A161581: a(n) = (3n)!/(n!(n+1)!(n+2)!).

The programs for A161581, the canonical program `A161581.P6997675696429681006` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161581 has offset 3).

The definition of A161581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161581.P6997675696429681006

`1/2*A005789(n+3)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A161581

/-- `1/2*A005789(n+3)` -/
def P6997675696429681006.Spec : Prop :=
  ∀ n, P6997675696429681006.a n = (A161581 (n + 3) : ℚ)

end A161581

/-! ## A161581.P11356537841607389644

`A006480(n+3)/((n+4)²*(n+5))`
-/

namespace A161581.P11356537841607389644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006480 (n + 3) : ℚ) / ((n + 4) ^ 2 * (n + 5) : ℚ)

end

end A161581.P11356537841607389644

namespace A161581

/-- `A006480(n+3)/((n+4)²*(n+5))` -/
def P11356537841607389644.Spec : Prop :=
  ∀ n, P11356537841607389644.a n = (A161581 (n + 3) : ℚ)

end A161581

/-! ## A161581.P12121363315235482954

`A005789(n+3)/2`
-/

namespace A161581.P12121363315235482954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005789 (n + 3) : ℚ) / 2

end

end A161581.P12121363315235482954

namespace A161581

/-- `A005789(n+3)/2` -/
def P12121363315235482954.Spec : Prop :=
  ∀ n, P12121363315235482954.a n = (A161581 (n + 3) : ℚ)

end A161581

/-! ## A161581.P15717190699551295244

`A060854(A167614(n+3))/2`
-/

namespace A161581.P15717190699551295244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060854 (A167614 (n + 3)).toNat : ℚ) / 2

end

end A161581.P15717190699551295244

namespace A161581

/-- `A060854(A167614(n+3))/2` -/
def P15717190699551295244.Spec : Prop :=
  ∀ n, P15717190699551295244.a n = (A161581 (n + 3) : ℚ)

end A161581

/-! ## A161581.P13112351345194765798

`A060854(A055998(n+3)+1)/2`
-/

namespace A161581.P13112351345194765798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060854 (A055998 (n + 3) + 1).toNat : ℚ) / 2

end

end A161581.P13112351345194765798

namespace A161581

/-- `A060854(A055998(n+3)+1)/2` -/
def P13112351345194765798.Spec : Prop :=
  ∀ n, P13112351345194765798.a n = (A161581 (n + 3) : ℚ)

end A161581

/-!
# A161582: The list of the k values in the common solutions to the 2 equations 5*k+1 = A^2, 9*k+1 = B^2.

The programs for A161582, the canonical program `A161582.P12958749018995494899` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161582 has offset 1).

The definition of A161582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161582.P12958749018995494899

`48*a(n-1)-48*a(n-2)+a(n-3)` with `a(0)=0, a(1)=7, a(2)=336`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A161582

/-- `48*a(n-1)-48*a(n-2)+a(n-3)` -/
def P12958749018995494899.Spec : Prop :=
  ∀ n, P12958749018995494899.a n = A161582 (n + 1)

theorem P12958749018995494899.correct : P12958749018995494899.Spec := by
  intro n
  simp only [A161582, Nat.add_sub_cancel]

end A161582

/-! ## A161582.P1733850851686838783

`(-1)^(n+2)*7*A156093(n)`
-/

namespace A161582.P1733850851686838783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 2) * (7 * A156093 n)

end

end A161582.P1733850851686838783

namespace A161582

/-- `(-1)^(n+2)*7*A156093(n)` -/
def P1733850851686838783.Spec : Prop :=
  ∀ n, P1733850851686838783.a n = A161582 (n + 1)

end A161582

/-! ## A161582.P14509389772789716811

`(-1)^(n+2)*7*A156092(n)/9`
-/

namespace A161582.P14509389772789716811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (n + 2) * (7 * A156092 n) : ℚ) / 9

end

end A161582.P14509389772789716811

namespace A161582

/-- `(-1)^(n+2)*7*A156092(n)/9` -/
def P14509389772789716811.Spec : Prop :=
  ∀ n, P14509389772789716811.a n = (A161582 (n + 1) : ℚ)

end A161582

/-! ## A161582.P12371879323547303756

`∑[A049686(n)]`
-/

namespace A161582.P12371879323547303756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049686 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161582.P12371879323547303756

namespace A161582

/-- `∑[A049686(n)]` -/
def P12371879323547303756.Spec : Prop :=
  ∀ n, P12371879323547303756.a n = A161582 (n + 1)

end A161582

/-! ## A161582.P4910410645577480638

`record[∑[A156088(n)]]`
-/

namespace A161582.P4910410645577480638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161582.P4910410645577480638

namespace A161582

/-- `record[∑[A156088(n)]]` -/
def P4910410645577480638.Spec : Prop :=
  ∀ n, P4910410645577480638.a n = A161582 (n + 1)

end A161582

/-! ## A161582.P16625870582831149236

`∑[A004187(2*n)]`
-/

namespace A161582.P16625870582831149236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004187 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161582.P16625870582831149236

namespace A161582

/-- `∑[A004187(2*n)]` -/
def P16625870582831149236.Spec : Prop :=
  ∀ n, P16625870582831149236.a n = A161582 (n + 1)

end A161582

/-! ## A161582.P4328240268910397460

`∑[A000045(8*n)/3]`
-/

namespace A161582.P4328240268910397460
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (8 * n) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161582.P4328240268910397460

namespace A161582

/-- `∑[A000045(8*n)/3]` -/
def P4328240268910397460.Spec : Prop :=
  ∀ n, P4328240268910397460.a n = (A161582 (n + 1) : ℚ)

end A161582

/-! ## A161582.P11350669132777216334

`A004187(n+n)+a(n-1)` with `a(0)=0`
-/

namespace A161582.P11350669132777216334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004187 (n + n) + a (n - 1)

end

end A161582.P11350669132777216334

namespace A161582

/-- `A004187(n+n)+a(n-1)` -/
def P11350669132777216334.Spec : Prop :=
  ∀ n, P11350669132777216334.a n = A161582 (n + 1)

end A161582

/-! ## A161582.P7628757763080852668

`floor((A000045(2*(2*n+1))/3)²)`
-/

namespace A161582.P7628757763080852668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000045 (2 * (2 * n + 1)) : ℚ) / 3) ^ 2⌋

end

end A161582.P7628757763080852668

namespace A161582

/-- `floor((A000045(2*(2*n+1))/3)²)` -/
def P7628757763080852668.Spec : Prop :=
  ∀ n, P7628757763080852668.a n = A161582 (n + 1)

end A161582

/-! ## A161582.P12743013736785439528

`∑[A049655(n)-A049654(n)]`
-/

namespace A161582.P12743013736785439528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049655 n - A049654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161582.P12743013736785439528

namespace A161582

/-- `∑[A049655(n)-A049654(n)]` -/
def P12743013736785439528.Spec : Prop :=
  ∀ n, P12743013736785439528.a n = A161582 (n + 1)

end A161582

/-!
# A161583: The list of the k values in the common solutions to the 2 equations 15*k+1 = A^2, 19*k+1 = B^2.

The programs for A161583, there is no canonical definition to state claims against.
-/

/-! ## A161583.P6245621350163321228

`(A161599(n+1)-A078366(n))*A078366(n)`
-/

namespace A161583.P6245621350163321228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161599 (n + 1) - A078366 n) * A078366 n

end

end A161583.P6245621350163321228

/-! ## A161583.P14844330080561058463

`round(A161595(n+1)²/15)`
-/

namespace A161583.P14844330080561058463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A161595 (n + 1) ^ 2 : ℚ) / 15)

end

end A161583.P14844330080561058463

/-! ## A161583.P4669963688067910294

`round(A161599(n+1)²/19)`
-/

namespace A161583.P4669963688067910294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A161599 (n + 1) ^ 2 : ℚ) / 19)

end

end A161583.P4669963688067910294

/-! ## A161583.P14366109798159037484

`A097831(2*n)-A078366(n)²`
-/

namespace A161583.P14366109798159037484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097831 (2 * n) - A078366 n ^ 2

end

end A161583.P14366109798159037484

/-! ## A161583.P16870285244133156387

`A097831(2*n)-∑[A078366(2*n)]`
-/

namespace A161583.P16870285244133156387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078366 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097831 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161583.P16870285244133156387

/-!
# A161584: The list of the k values in the common solutions to the 2 equations 13*k+1 = A^2, 17*k+1 = B^2.

The programs for A161584, there is no canonical definition to state claims against.
-/

/-! ## A161584.P10221159874305590357

`∑[record[A000035(n)*A078364(n)]]`
-/

namespace A161584.P10221159874305590357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A078364 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161584.P10221159874305590357

/-! ## A161584.P14889785025417742269

`(A161591(n+1)-A078364(n))*A078364(n)`
-/

namespace A161584.P14889785025417742269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161591 (n + 1) - A078364 n) * A078364 n

end

end A161584.P14889785025417742269

/-! ## A161584.P4379632214996778651

`round(A160682(n+1)²/13)`
-/

namespace A161584.P4379632214996778651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A160682 (n + 1) ^ 2 : ℚ) / 13)

end

end A161584.P4379632214996778651

/-! ## A161584.P1109751781519705434

`A097829(2*n)-A078364(n)²`
-/

namespace A161584.P1109751781519705434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097829 (2 * n) - A078364 n ^ 2

end

end A161584.P1109751781519705434

/-! ## A161584.P860655208938185511

`A097829(2*n)-∑[A078364(2*n)]`
-/

namespace A161584.P860655208938185511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078364 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097829 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161584.P860655208938185511

/-!
# A161585: The list of the k values in the common solutions to the 2 equations 7*k+1 = A^2, 11*k+1 = B^2.

The programs for A161585, there is no canonical definition to state claims against.
-/

/-! ## A161585.P9051720325880647148

`∑[A018913(2*n)]`
-/

namespace A161585.P9051720325880647148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018913 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161585.P9051720325880647148

/-! ## A161585.P1873206738938043941

`A018913(n+n)+a(n-1)` with `a(0)=0`
-/

namespace A161585.P1873206738938043941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A018913 (n + n) + a (n - 1)

end

end A161585.P1873206738938043941

/-! ## A161585.P12522000104866268972

`∑[record[A018913(A230641(n))]]`
-/

namespace A161585.P12522000104866268972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018913 (A230641 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161585.P12522000104866268972

/-! ## A161585.P712479720518511826

`lcm(∑[A070998(n)], A018913(n))`
-/

namespace A161585.P712479720518511826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070998 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A018913 n)

end

end A161585.P712479720518511826

/-! ## A161585.P203485088247826027

`A018913(n+1)*A018913(n)`
-/

namespace A161585.P203485088247826027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018913 (n + 1) * A018913 n

end

end A161585.P203485088247826027

/-! ## A161585.P12216965937228651426

`A018913(n)/3*A065100(n)`
-/

namespace A161585.P12216965937228651426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018913 n : ℚ) / 3 * (A065100 n : ℚ)

end

end A161585.P12216965937228651426

/-! ## A161585.P10294359358894378876

`(A057081(n)-A018913(n))*A018913(n)`
-/

namespace A161585.P10294359358894378876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057081 n - A018913 n) * A018913 n

end

end A161585.P10294359358894378876

/-! ## A161585.P2422606754019983761

`∑[∑[A056918(2*n+1)]-A056918(2*n+1)]`
-/

namespace A161585.P2422606754019983761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056918 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A056918 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161585.P2422606754019983761

/-!
# A161586: The list of the k values in the common solutions to the 2 equations 9*k+1=A^2, 13*k+1=B^2.

The programs for A161586, there is no canonical definition to state claims against.
-/

/-! ## A161586.P17653193894348098082

`round(A092936(2*n+1)/9)`
-/

namespace A161586.P17653193894348098082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A092936 (2 * n + 1) : ℚ) / 9)

end

end A161586.P17653193894348098082

/-! ## A161586.P13416307499618811353

`(A004190(n)-A078922(n+1))*A004190(n)`
-/

namespace A161586.P13416307499618811353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004190 n - A078922 (n + 1)) * A004190 n

end

end A161586.P13416307499618811353

/-! ## A161586.P14628215662304998711

`∑[A004190(2*n+1)]-A004190(2*n+1)`
-/

namespace A161586.P14628215662304998711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004190 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004190 (2 * n + 1)

end

end A161586.P14628215662304998711

/-!
# A161587: a(n) = 13*n^2 + 10*n + 1.

The programs for A161587, the canonical program `A161587.P766217848207806068` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161587 has offset 0).

The definition of A161587 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*n²+10*n+1` (program `A161587.P766217848207806068`, by `A161587.P766217848207806068.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A161587.P766217848207806068

`13*n²+10*n+1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A161587

/-- `13*n²+10*n+1` -/
def P766217848207806068.Spec : Prop :=
  ∀ n, (P766217848207806068.a n : ℤ) = A161587 n

theorem P766217848207806068.correct : P766217848207806068.Spec := by
  intro n
  simp only [A161587]

end A161587

/-! ## A161587.P12073411580383877144

`∑[a(n-1)+26]` with `a(0)=1, a(1)=23`
-/

namespace A161587.P12073411580383877144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 23] fun n f1 =>
  f1 (n - 1) + 26

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161587.P12073411580383877144

namespace A161587

/-- `∑[a(n-1)+26]` -/
def P12073411580383877144.Spec : Prop :=
  ∀ n, (P12073411580383877144.a n : ℤ) = A161587 n

end A161587

/-! ## A161587.P5888378759726152079

`∑[ogf((1+21x+4x^2)/(1-2x+x^2))]`
-/

namespace A161587.P5888378759726152079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 21, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161587.P5888378759726152079

namespace A161587

/-- `∑[ogf((1+21x+4x^2)/(1-2x+x^2))]` -/
def P5888378759726152079.Spec : Prop :=
  ∀ n, P5888378759726152079.a n = A161587 n

end A161587

/-! ## A161587.P6546903070259404363

`abs(n*(n-3)-A195026(n)-1)`
-/

namespace A161587.P6546903070259404363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * ((n : ℤ) - 3) - A195026 n - 1|

end

end A161587.P6546903070259404363

namespace A161587

/-- `abs(n*(n-3)-A195026(n)-1)` -/
def P6546903070259404363.Spec : Prop :=
  ∀ n, P6546903070259404363.a n = A161587 n

end A161587

/-! ## A161587.P11409225808404786073

`A017474(n)%A016958(n)`
-/

namespace A161587.P11409225808404786073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017474 n) (A016958 n)

end

end A161587.P11409225808404786073

namespace A161587

/-- `A017474(n)%A016958(n)` -/
def P11409225808404786073.Spec : Prop :=
  ∀ n, P11409225808404786073.a n = A161587 n

end A161587

/-! ## A161587.P16546131924185086194

`record[n²-A266087(n+1)]`
-/

namespace A161587.P16546131924185086194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A266087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161587.P16546131924185086194

namespace A161587

/-- `record[n²-A266087(n+1)]` -/
def P16546131924185086194.Spec : Prop :=
  ∀ n, P16546131924185086194.a n = A161587 n

end A161587

/-! ## A161587.P15959813174693318815

`∑[abs(3-2*A312938(3*n))]`
-/

namespace A161587.P15959813174693318815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - 2 * A312938 (3 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161587.P15959813174693318815

namespace A161587

/-- `∑[abs(3-2*A312938(3*n))]` -/
def P15959813174693318815.Spec : Prop :=
  ∀ n, P15959813174693318815.a n = A161587 n

end A161587

/-! ## A161587.P358822919234689154

`∑[A023443(abs(abs(2*(n+1)-29*n)-n))]`
-/

namespace A161587.P358822919234689154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 |(|(2 * (n + 1) : ℤ) - (29 * n : ℤ)| - (n : ℤ))|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161587.P358822919234689154

namespace A161587

/-- `∑[A023443(abs(abs(2*(n+1)-29*n)-n))]` -/
def P358822919234689154.Spec : Prop :=
  ∀ n, P358822919234689154.a n = A161587 n

end A161587

/-!
# A161588: The list of the k values in the common solutions to the 2 equations 11*k+1 = A^2, 15*k+1 = B^2.

The programs for A161588, there is no canonical definition to state claims against.
-/

/-! ## A161588.P13478181210930570888

`round(A085260(n+1)²/11)`
-/

namespace A161588.P13478181210930570888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A085260 (n + 1) ^ 2 : ℚ) / 11)

end

end A161588.P13478181210930570888

/-! ## A161588.P12370506839272741597

`lcm(A004442(n)-n, floor(A085260(n+1)²/11))`
-/

namespace A161588.P12370506839272741597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004442 n - (n : ℤ)) ⌊(A085260 (n + 1) ^ 2 : ℚ) / 11⌋

end

end A161588.P12370506839272741597

/-! ## A161588.P18236823826647564354

`(A078362(n)-A085260(n+1))*A078362(n)`
-/

namespace A161588.P18236823826647564354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078362 n - A085260 (n + 1)) * A078362 n

end

end A161588.P18236823826647564354

/-! ## A161588.P7571339282452943241

`floor(A000038(A284249(n))+A085260(n+1)²/11)`
-/

namespace A161588.P7571339282452943241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000038 (A284249 n).toNat : ℚ) + (A085260 (n + 1) ^ 2 : ℚ) / 11⌋

end

end A161588.P7571339282452943241

/-! ## A161588.P2565690682600536749

`floor(A185284(A205573(n))+A085260(n+1)²/11)`
-/

namespace A161588.P2565690682600536749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A185284 (A205573 n).toNat : ℚ) + (A085260 (n + 1) ^ 2 : ℚ) / 11⌋

end

end A161588.P2565690682600536749

/-!
# A161591: The list of the B values in the common solutions to the 2 equations 13*k + 1 = A^2, 17*k + 1 = B^2.

The programs for A161591, there is no canonical definition to state claims against.
-/

/-! ## A161591.P6909622671025786595

`ogf((1+x)/(1-15x+x^2))`
-/

namespace A161591.P6909622671025786595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -15, 1] n

end

end A161591.P6909622671025786595

/-! ## A161591.P9484179401241401857

`15*a(n-1)-a(n-2)` with `a(0)=1, a(1)=16`
-/

namespace A161591.P9484179401241401857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 16] fun n a =>
  15 * a (n - 1) - a (n - 2)

end

end A161591.P9484179401241401857

/-! ## A161591.P17061709884123553287

`Δ[A098302(n)]`
-/

namespace A161591.P17061709884123553287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161591.P17061709884123553287

/-! ## A161591.P11670417138287281078

`∑[A078365(n)]-1`
-/

namespace A161591.P11670417138287281078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A161591.P11670417138287281078

/-! ## A161591.P17161931586630062430

`A098302(n+1)-A098302(n)`
-/

namespace A161591.P17161931586630062430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098302 (n + 1) - A098302 n

end

end A161591.P17161931586630062430

/-! ## A161591.P661878719173604736

`∑[2*A160682(n+1)]-A160682(n+1)`
-/

namespace A161591.P661878719173604736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A160682 (n + 1)

end

end A161591.P661878719173604736

/-! ## A161591.P1881751747570574415

`A030452(2*(n+1))-A030452(2*n+1)`
-/

namespace A161591.P1881751747570574415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030452 (2 * (n + 1)) - A030452 (2 * n + 1)

end

end A161591.P1881751747570574415

/-!
# A161594: a(n) = R(f(n)), where R = A004086 = reverse (decimal) digits, f = A071786 = reverse digits of prime factors.

The programs for A161594, there is no canonical definition to state claims against.
-/

/-! ## A161594.P8277352944720355200

`A004086(A071786(n+1))`
-/

namespace A161594.P8277352944720355200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A071786 (n + 1)).toNat

end

end A161594.P8277352944720355200

/-! ## A161594.P2909390067352101126

`A004086(A151765(A004086(n+1)))`
-/

namespace A161594.P2909390067352101126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A151765 (A004086 (n + 1)).toNat).toNat

end

end A161594.P2909390067352101126

/-! ## A161594.P14821530992017198986

`A056964(A071786(n+1))-A071786(A000027(n+1))`
-/

namespace A161594.P14821530992017198986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A071786 (n + 1)).toNat - A071786 (A000027 (n + 1)).toNat

end

end A161594.P14821530992017198986

/-! ## A161594.P8707931765888913358

`A135020(A071786(2*(n+1)))`
-/

namespace A161594.P8707931765888913358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (A071786 (2 * (n + 1))).toNat

end

end A161594.P8707931765888913358

/-! ## A161594.P7835292010926860038

`A135020(A071786(n+1)+A071786(n+1))`
-/

namespace A161594.P7835292010926860038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (A071786 (n + 1) + A071786 (n + 1)).toNat

end

end A161594.P7835292010926860038

/-! ## A161594.P16388764764205782072

`A004093(A071786(5*(n+1)))`
-/

namespace A161594.P16388764764205782072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (A071786 (5 * (n + 1))).toNat

end

end A161594.P16388764764205782072

/-! ## A161594.P11030840771736381865

`A068636(A071786(10*(n+1)))`
-/

namespace A161594.P11030840771736381865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068636 (A071786 (10 * (n + 1))).toNat

end

end A161594.P11030840771736381865

/-!
# A161595: The list of the A values in the common solutions to the 2 equations 15*k+1=A^2, 19*k+1=B^2.

The programs for A161595, the canonical program `A161595.P12284245329557157698` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161595 has offset 1).

The definition of A161595 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161595.P12284245329557157698

`17*a(n-1)-a(n-2)` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A161595

/-- `17*a(n-1)-a(n-2)` -/
def P12284245329557157698.Spec : Prop :=
  ∀ n, P12284245329557157698.a n = A161595 (n + 1)

theorem P12284245329557157698.correct : P12284245329557157698.Spec := by
  intro n
  simp only [A161595, Nat.add_sub_cancel]

end A161595

/-! ## A161595.P2719660475070042267

`ogf((1-x)/(1-17x+x^2))`
-/

namespace A161595.P2719660475070042267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -17, 1] n

end

end A161595.P2719660475070042267

namespace A161595

/-- `ogf((1-x)/(1-17x+x^2))` -/
def P2719660475070042267.Spec : Prop :=
  ∀ n, P2719660475070042267.a n = A161595 (n + 1)

end A161595

/-! ## A161595.P12887094790440768893

`A078367(n)-a(n-1)` with `a(0)=1`
-/

namespace A161595.P12887094790440768893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078367 n - a (n - 1)

end

end A161595.P12887094790440768893

namespace A161595

/-- `A078367(n)-a(n-1)` -/
def P12887094790440768893.Spec : Prop :=
  ∀ n, P12887094790440768893.a n = A161595 (n + 1)

end A161595

/-! ## A161595.P4862082227114941703

`A099273(n+1)+A099273(n)`
-/

namespace A161595.P4862082227114941703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099273 (n + 1) + A099273 n

end

end A161595.P4862082227114941703

namespace A161595

/-- `A099273(n+1)+A099273(n)` -/
def P4862082227114941703.Spec : Prop :=
  ∀ n, P4862082227114941703.a n = A161595 (n + 1)

end A161595

/-! ## A161595.P6318313690199087026

`abs(Δ[A033999(n)*A099273(n)])`
-/

namespace A161595.P6318313690199087026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A099273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A161595.P6318313690199087026

namespace A161595

/-- `abs(Δ[A033999(n)*A099273(n)])` -/
def P6318313690199087026.Spec : Prop :=
  ∀ n, P6318313690199087026.a n = A161595 (n + 1)

end A161595

/-! ## A161595.P14889419000557447317

`2*A078366(n)-A161599(n+1)`
-/

namespace A161595.P14889419000557447317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078366 n - A161599 (n + 1)

end

end A161595.P14889419000557447317

namespace A161595

/-- `2*A078366(n)-A161599(n+1)` -/
def P14889419000557447317.Spec : Prop :=
  ∀ n, P14889419000557447317.a n = A161595 (n + 1)

end A161595

/-! ## A161595.P15290001696312084326

`Δ[A161599(n+1)-A078366(n)]`
-/

namespace A161595.P15290001696312084326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161599 (n + 1) - A078366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161595.P15290001696312084326

namespace A161595

/-- `Δ[A161599(n+1)-A078366(n)]` -/
def P15290001696312084326.Spec : Prop :=
  ∀ n, P15290001696312084326.a n = A161595 (n + 1)

end A161595

/-!
# A161597: Numbers such that TITO(n) = n, where TITO(n) = A161594(n).

The programs for A161597, there is no canonical definition to state claims against.
-/

/-! ## A161597.P13473231987962713950

`∪[A000040(n+1), A161600(n+1)]`
-/

namespace A161597.P13473231987962713950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161597.P13473231987962713950

/-! ## A161597.P18316849976805166678

`∪[A008578(n+1), A161600(n+1)]`
-/

namespace A161597.P18316849976805166678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161597.P18316849976805166678

/-! ## A161597.P9243755399894206304

`∪[A033946(n+1), A161600(n+1)]`
-/

namespace A161597.P9243755399894206304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161597.P9243755399894206304

/-! ## A161597.P1616207276893519062

`∪[A046022(n+1), A161600(n+1)]`
-/

namespace A161597.P1616207276893519062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161597.P1616207276893519062

/-! ## A161597.P10234943538537785240

`∪[A051948(n+1), A161600(n+1)]`
-/

namespace A161597.P10234943538537785240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161597.P10234943538537785240

/-! ## A161597.P11088924045710255769

`∪[A067126(n+1), A161600(n+1)]`
-/

namespace A161597.P11088924045710255769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A161597.P11088924045710255769

/-! ## A161597.P8182023099727301394

`eq[n, A161594(A028310(n))]`
-/

namespace A161597.P8182023099727301394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161594 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161597.P8182023099727301394

/-! ## A161597.P11106474050321560201

`A072227(A133137(n+1))`
-/

namespace A161597.P11106474050321560201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072227 (A133137 (n + 1)).toNat

end

end A161597.P11106474050321560201

/-!
# A161598: Numbers such that TITO(n) is not equal to n, where TITO(n) = A161594(n).

The programs for A161598, there is no canonical definition to state claims against.
-/

/-! ## A161598.P17605741576132568318

`eq[char[A161597(n+1)], A000007(n)]`
-/

namespace A161598.P17605741576132568318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161597 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A161598.P17605741576132568318

/-! ## A161598.P16399853917471510823

`eq[char[A161597(n+1)], A000038(n)]`
-/

namespace A161598.P16399853917471510823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161597 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A161598.P16399853917471510823

/-! ## A161598.P2025873347929301039

`eq[char[A161597(n+1)], A020761(n)]`
-/

namespace A161598.P2025873347929301039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161597 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A161598.P2025873347929301039

/-! ## A161598.P4141105036867690794

`eq[char[A161597(n+1)], A130706(n)]`
-/

namespace A161598.P4141105036867690794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161597 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A161598.P4141105036867690794

/-! ## A161598.P15826246117917401139

`eq[char[A161597(n+1)], A154955(n+1)]`
-/

namespace A161598.P15826246117917401139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161597 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A161598.P15826246117917401139

/-! ## A161598.P1955941978909736851

`eq[0, A019590(n+1)+char[A161597(n+1)]]`
-/

namespace A161598.P1955941978909736851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161597 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161598.P1955941978909736851

/-!
# A161599: The list of the B values in the common solutions to the 2 equations 15*k + 1 = A^2, 19*k + 1 = B^2.

The programs for A161599, there is no canonical definition to state claims against.
-/

/-! ## A161599.P14859172815607287984

`ogf((1+x)/(1-17x+x^2))`
-/

namespace A161599.P14859172815607287984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -17, 1] n

end

end A161599.P14859172815607287984

/-! ## A161599.P4034928658672430710

`17*a(n-1)-a(n-2)` with `a(0)=1, a(1)=18`
-/

namespace A161599.P4034928658672430710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 18] fun n a =>
  17 * a (n - 1) - a (n - 2)

end

end A161599.P4034928658672430710

/-! ## A161599.P4574155245445290046

`Δ[A098304(n)]`
-/

namespace A161599.P4574155245445290046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161599.P4574155245445290046

/-! ## A161599.P135636001129994128

`∑[A078367(n)]-1`
-/

namespace A161599.P135636001129994128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A161599.P135636001129994128

/-! ## A161599.P1390224771168621178

`A098304(n+1)-A098304(n)`
-/

namespace A161599.P1390224771168621178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098304 (n + 1) - A098304 n

end

end A161599.P1390224771168621178

/-! ## A161599.P9222965420087612956

`∑[2*A161595(n+1)]-A161595(n+1)`
-/

namespace A161599.P9222965420087612956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A161595 (n + 1)

end

end A161599.P9222965420087612956

