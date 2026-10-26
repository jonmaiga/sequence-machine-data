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
import Seq.B000.C013
import Seq.B000.C014
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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
# A180100: a(n) = smallest number k such that five consecutive prime numbers prime(n), prime(n+1), prime(n+2), prime(n+3) and prime(n+4) are divisors of k, k+1, k+2, k+3, and k+4 respectively.

The programs for A180100, there is no canonical definition to state claims against.
-/

/-! ## A180100.P13562627437628652932

`A180159(n+1)%A046303(n+1)`
-/

namespace A180100.P13562627437628652932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180159 (n + 1)) (A046303 (n + 1))

end

end A180100.P13562627437628652932

/-!
# A180101: a(0)=0, a(1)=1; thereafter a(n) = largest prime factor of sum of all previous terms.

The programs for A180101, there is no canonical definition to state claims against.
-/

/-! ## A180101.P14253782236517566040

`Δ[A070229(a(n-1))]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A180101.P14253782236517566040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  A070229 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180101.P14253782236517566040

/-! ## A180101.P9269701356412160723

`Δ[A006530(a(n-1))+a(n-1)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A180101.P9269701356412160723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  A006530 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180101.P9269701356412160723

/-! ## A180101.P10058421427834026363

`A006530((n-a(n-1))*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A180101.P10058421427834026363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A006530 (((n : ℤ) - a (n - 1)) * a (n - 1)).toNat

end

end A180101.P10058421427834026363

/-! ## A180101.P5152019327691167918

`A006530(lcm(a(n-1)-n, a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A180101.P5152019327691167918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A006530 (Int.lcm (a (n - 1) - (n : ℤ)) (a (n - 1)))

end

end A180101.P5152019327691167918

/-! ## A180101.P16101624879450493079

`Δ[A085392(2*a(n-1))+a(n-1)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A180101.P16101624879450493079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  A085392 (2 * f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180101.P16101624879450493079

/-! ## A180101.P10481172373414332813

`Δ[A217581(2*a(n-1))+a(n-1)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A180101.P10481172373414332813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  A217581 (2 * f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180101.P10481172373414332813

/-! ## A180101.P6540155065297424808

`A356427(A180107(n))`
-/

namespace A180101.P6540155065297424808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356427 (A180107 n).toNat

end

end A180101.P6540155065297424808

/-! ## A180101.P7986061956711786221

`Δ[A180107(A199969(n+1))]`
-/

namespace A180101.P7986061956711786221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180107 (A199969 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180101.P7986061956711786221

/-! ## A180101.P5092002080875685749

`Δ[A180107(n)+A060576(n)]`
-/

namespace A180101.P5092002080875685749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180107 n + A060576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180101.P5092002080875685749

/-! ## A180101.P5507994693169852739

`Δ[A180107(n*A060576(n))]`
-/

namespace A180101.P5507994693169852739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180107 ((n : ℤ) * A060576 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180101.P5507994693169852739

/-!
# A180102: a(1)=1; a(n)=percentage of sum of previous terms represented by n.

The programs for A180102, there is no canonical definition to state claims against.
-/

/-! ## A180102.P11239302200948325747

`floor(200/(n+2))`
-/

namespace A180102.P11239302200948325747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊200 / (n + 2 : ℚ)⌋

end

end A180102.P11239302200948325747

/-! ## A180102.P5838575385468158045

`ceil((cosh(6)-(n+3))/(n+2))`
-/

namespace A180102.P5838575385468158045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.cosh (6 : ℝ) - (n + 3 : ℝ)) / (n + 2 : ℝ)⌉

end

end A180102.P5838575385468158045

/-! ## A180102.P3284324145310166536

`ceil((sinh(6)-(n+3))/(n+2))`
-/

namespace A180102.P3284324145310166536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sinh (6 : ℝ) - (n + 3 : ℝ)) / (n + 2 : ℝ)⌉

end

end A180102.P3284324145310166536

/-! ## A180102.P17779743812253122357

`A033421(5*(n+2))`
-/

namespace A180102.P17779743812253122357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033421 (5 * (n + 2))

end

end A180102.P17779743812253122357

/-! ## A180102.P2587976754190179605

`A033422(50*(n+2))`
-/

namespace A180102.P2587976754190179605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033422 (50 * (n + 2))

end

end A180102.P2587976754190179605

/-! ## A180102.P8301301700954693820

`ceil(A158407(n+1)/A027468(n+1))-1`
-/

namespace A180102.P8301301700954693820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158407 (n + 1) : ℚ) / (A027468 (n + 1) : ℚ)⌉ - 1

end

end A180102.P8301301700954693820

/-!
# A180103: Floor( 100*(n-1)/n ).

The programs for A180103, the canonical program `A180103.P8684914553026095451` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180103 has offset 2).

The definition of A180103 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(100*(n+1)/(n+2))` (program `A180103.P8684914553026095451`, by `A180103.P8684914553026095451.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180103.P8684914553026095451

`floor(100*(n+1)/(n+2))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180103

/-- `floor(100*(n+1)/(n+2))` -/
def P8684914553026095451.Spec : Prop :=
  ∀ n, P8684914553026095451.a n = A180103 (n + 2)

theorem P8684914553026095451.correct : P8684914553026095451.Spec := by
  intro n
  simp only [A180103, Nat.add_sub_cancel]

end A180103

/-!
# A180104: Floor( 100*n/(n-1) ).

The programs for A180104, the canonical program `A180104.P13862480783406113679` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180104 has offset 2).

The definition of A180104 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(100*(n+2)/(n+1))` (program `A180104.P13862480783406113679`, by `A180104.P13862480783406113679.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180104.P13862480783406113679

`floor(100*(n+2)/(n+1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180104

/-- `floor(100*(n+2)/(n+1))` -/
def P13862480783406113679.Spec : Prop :=
  ∀ n, P13862480783406113679.a n = A180104 (n + 2)

theorem P13862480783406113679.correct : P13862480783406113679.Spec := by
  intro n
  simp only [A180104, Nat.add_sub_cancel]

end A180104

/-!
# A180107: Partial sums of terms in A180101.

The programs for A180107, the canonical program `A180107.P14694732307174921665` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180107 has offset 0).

The definition of A180107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 634 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180107.P14694732307174921665

`A006530(a(n-1))+a(n-1)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A180107

/-- `A006530(a(n-1))+a(n-1)` -/
def P14694732307174921665.Spec : Prop :=
  ∀ n, P14694732307174921665.a n = A180107 n

theorem P14694732307174921665.correct : P14694732307174921665.Spec := by
  intro n
  simp only [A180107]

end A180107

/-! ## A180107.P17394333893922679796

`A070229(a(n-1))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A180107.P17394333893922679796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A070229 (a (n - 1)).toNat

end

end A180107.P17394333893922679796

namespace A180107

/-- `A070229(a(n-1))` -/
def P17394333893922679796.Spec : Prop :=
  ∀ n, P17394333893922679796.a n = A180107 n

end A180107

/-! ## A180107.P13847197650378168431

`A171462(a(n-1))-1+n` with `a(0)=0, a(1)=1`
-/

namespace A180107.P13847197650378168431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A171462 (a (n - 1)).toNat - 1 + (n : ℤ)

end

end A180107.P13847197650378168431

namespace A180107

/-- `A171462(a(n-1))-1+n` -/
def P13847197650378168431.Spec : Prop :=
  ∀ n, P13847197650378168431.a n = A180107 n

end A180107

/-! ## A180107.P6187140819565185291

`A284695(a(n-1))+a(n-1)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A180107.P6187140819565185291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A284695 (a (n - 1)).toNat + a (n - 1)

end

end A180107.P6187140819565185291

namespace A180107

/-- `A284695(a(n-1))+a(n-1)` -/
def P6187140819565185291.Spec : Prop :=
  ∀ n, P6187140819565185291.a n = A180107 n

end A180107

/-! ## A180107.P15065220337555277604

`A111089(a(n-1))+a(n-1)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A180107.P15065220337555277604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  A111089 (a (n - 1)).toNat + a (n - 1)

end

end A180107.P15065220337555277604

namespace A180107

/-- `A111089(a(n-1))+a(n-1)` -/
def P15065220337555277604.Spec : Prop :=
  ∀ n, P15065220337555277604.a n = A180107 n

end A180107

/-! ## A180107.P2112991999250523020

`A171462(a(n-1))-(1-A028310(n))` with `a(0)=0, a(1)=1`
-/

namespace A180107.P2112991999250523020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A171462 (a (n - 1)).toNat - (1 - A028310 n)

end

end A180107.P2112991999250523020

namespace A180107

/-- `A171462(a(n-1))-(1-A028310(n))` -/
def P2112991999250523020.Spec : Prop :=
  ∀ n, P2112991999250523020.a n = A180107 n

end A180107

/-! ## A180107.P6544440044403701403

`A171462(a(n-1))-(A057427(n)-n)` with `a(0)=0, a(1)=1`
-/

namespace A180107.P6544440044403701403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A171462 (a (n - 1)).toNat - (A057427 n - (n : ℤ))

end

end A180107.P6544440044403701403

namespace A180107

/-- `A171462(a(n-1))-(A057427(n)-n)` -/
def P6544440044403701403.Spec : Prop :=
  ∀ n, P6544440044403701403.a n = A180107 n

end A180107

/-! ## A180107.P18091439625101076466

`∑[A180101(n)]-A180101(n)%A195586(n)`
-/

namespace A180107.P18091439625101076466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.tmod (A180101 n) (A195586 n)

end

end A180107.P18091439625101076466

namespace A180107

/-- `∑[A180101(n)]-A180101(n)%A195586(n)` -/
def P18091439625101076466.Spec : Prop :=
  ∀ n, P18091439625101076466.a n = A180107 n

end A180107

/-! ## A180107.P16565882018969148932

`(A233583(n+1)-A180101(n))*A180101(n)`
-/

namespace A180107.P16565882018969148932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A233583 (n + 1) - A180101 n) * A180101 n

end

end A180107.P16565882018969148932

namespace A180107

/-- `(A233583(n+1)-A180101(n))*A180101(n)` -/
def P16565882018969148932.Spec : Prop :=
  ∀ n, P16565882018969148932.a n = A180107 n

end A180107

/-!
# A180108: Integers where the primes are split into two consecutive numbers.

The programs for A180108, there is no canonical definition to state claims against.
-/

/-! ## A180108.P16276748338465268575

`A186731(A084192(∑[n]))`
-/

namespace A180108.P16276748338465268575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A180108.P16276748338465268575

/-! ## A180108.P3440751388543434017

`A186731(A084193(∑[n]))`
-/

namespace A180108.P3440751388543434017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A180108.P3440751388543434017

/-! ## A180108.P13314268357145286663

`abs(∑[A346482(A005009(n))])`
-/

namespace A180108.P13314268357145286663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346482 (A005009 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A180108.P13314268357145286663

/-! ## A180108.P8518692117695348114

`A186731(A000523(∑[2^(n+1)]))`
-/

namespace A180108.P8518692117695348114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 (A000523 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A180108.P8518692117695348114

/-! ## A180108.P456735471689908875

`A186731(n+1)%A153800(n+1)`
-/

namespace A180108.P456735471689908875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186731 (n + 1)) (A153800 (n + 1))

end

end A180108.P456735471689908875

/-!
# A180111: Number of permutations of 1..n with the Sum_{i=1..n} of (i-p(i))^2 <= (n-1)*n*(n+1)/6.

The programs for A180111, there is no canonical definition to state claims against.
-/

/-! ## A180111.P1285704800207078620

`A000142(n)/2+A056876(n)/2`
-/

namespace A180111.P1285704800207078620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / 2 + (A056876 n : ℚ) / 2

end

end A180111.P1285704800207078620

/-! ## A180111.P8380857457328152885

`A083893(A026652(n+1))+∏[n^round(n/(n+3))]`
-/

namespace A180111.P8380857457328152885
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℚ) / (n + 3 : ℚ)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083893 (A026652 (n + 1)).toNat : ℚ) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A180111.P8380857457328152885

/-! ## A180111.P6556616159284293770

`A007949(A324171(n))+A001710(n)`
-/

namespace A180111.P6556616159284293770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A324171 n).toNat + A001710 n

end

end A180111.P6556616159284293770

/-!
# A180112: Number of permutations of 1..n with the Sum_{i=1..n} of (i-p(i))^2 < (n-1)*n*(n+1)/6.

The programs for A180112, there is no canonical definition to state claims against.
-/

/-! ## A180112.P1616594128430208368

`A000142(n+2)/2-A056876(n+2)/2`
-/

namespace A180112.P1616594128430208368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 2) : ℚ) / 2 - (A056876 (n + 2) : ℚ) / 2

end

end A180112.P1616594128430208368

/-! ## A180112.P3840552917340974646

`(n+2)!-A180111(n+2)`
-/

namespace A180112.P3840552917340974646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℤ) - A180111 (n + 2)

end

end A180112.P3840552917340974646

/-! ## A180112.P12363878616222555365

`A000142(n+2)-A180111(n+2)`
-/

namespace A180112.P12363878616222555365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 2) - A180111 (n + 2)

end

end A180112.P12363878616222555365

/-! ## A180112.P6375430900804252212

`A180111(n+2)-A056876(n+2)`
-/

namespace A180112.P6375430900804252212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180111 (n + 2) - A056876 (n + 2)

end

end A180112.P6375430900804252212

/-!
# A180113: Numbers A179462(n) with a gap of 2 to the following element A179462(n+1).

The programs for A180113, there is no canonical definition to state claims against.
-/

/-! ## A180113.P7582406370500955629

`∩[A179462(n+1)-2, A179462(n+1)]`
-/

namespace A180113.P7582406370500955629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179462 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180113.P7582406370500955629

/-! ## A180113.P8930799390234623146

`eq[A007953(n)+1, A001221(A000217(n+1))]`
-/

namespace A180113.P8930799390234623146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000217 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180113.P8930799390234623146

/-!
# A180114: a(n) = sigma(A001694(n)), sum of divisors of the powerful number A001694(n).

The programs for A180114, there is no canonical definition to state claims against.
-/

/-! ## A180114.P3455505980296541305

`A000203(A001694(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A180114.P3455505980296541305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001694 (n + 1)).toNat

end

end A180114.P3455505980296541305

/-! ## A180114.P11524830868903363106

`∑{d}[1-A224866(n+1), #]`
-/

namespace A180114.P11524830868903363106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A224866 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A180114.P11524830868903363106

/-! ## A180114.P7261628585323508748

`∑{d}[A084371(n+1)*A306458(n+1), #]`
-/

namespace A180114.P7261628585323508748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084371 (n + 1) * A306458 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A180114.P7261628585323508748

/-! ## A180114.P17610766549775737614

`A000203(A224866(n+1)-1)`
-/

namespace A180114.P17610766549775737614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A224866 (n + 1) - 1).toNat

end

end A180114.P17610766549775737614

/-! ## A180114.P12434526959443068089

`A000203(A084371(n+1)*A306458(n+1))`
-/

namespace A180114.P12434526959443068089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A084371 (n + 1) * A306458 (n + 1)).toNat

end

end A180114.P12434526959443068089

/-! ## A180114.P7769954188147923425

`∑{d}[A064549(A306458(n+1)), #]`
-/

namespace A180114.P7769954188147923425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A306458 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A180114.P7769954188147923425

/-! ## A180114.P2015318784252372228

`A000203(eq[1, A055231(n+1)]+1)`
-/

namespace A180114.P2015318784252372228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A180114.P2015318784252372228

/-! ## A180114.P8360910901566476792

`A295294(A224866(n+1)-1)`
-/

namespace A180114.P8360910901566476792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295294 (A224866 (n + 1) - 1).toNat

end

end A180114.P8360910901566476792

/-! ## A180114.P6800548350490353903

`A295294(A001694(2*n+1-n))`
-/

namespace A180114.P6800548350490353903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295294 (A001694 (2 * n + 1 - n)).toNat

end

end A180114.P6800548350490353903

/-! ## A180114.P5730473036084001753

`A295294(lt[n, A295294(n+1)]+1)`
-/

namespace A180114.P5730473036084001753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295294 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A180114.P5730473036084001753

/-! ## A180114.P12187425691012551440

`A295294(A064549(A306458(n+1)))`
-/

namespace A180114.P12187425691012551440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295294 (A064549 (A306458 (n + 1)).toNat).toNat

end

end A180114.P12187425691012551440

/-! ## A180114.P9565196437374331260

`∑{d}[record[A057521(n+1)], #]`
-/

namespace A180114.P9565196437374331260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A180114.P9565196437374331260

/-! ## A180114.P479467300880201388

`A000203(record[A057521(n+1)])`
-/

namespace A180114.P479467300880201388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A180114.P479467300880201388

/-! ## A180114.P5648426866401952886

`A000203(record[(n+1)*A112526(n+1)])`
-/

namespace A180114.P5648426866401952886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A112526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A180114.P5648426866401952886

/-!
# A180115: A109613(n)-fold concatenation of A008619(n).

The programs for A180115, there is no canonical definition to state claims against.
-/

/-! ## A180115.P15137437071713897014

`∑[char[2*n]]*A283351(n+2)`
-/

namespace A180115.P15137437071713897014
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A283351 (n + 2)

end

end A180115.P15137437071713897014

/-! ## A180115.P6105697384217430252

`∑[log2(gcd(2, n))]*A282796(n%2+n)`
-/

namespace A180115.P6105697384217430252
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A282796 (n % 2 + n) : ℝ)

end

end A180115.P6105697384217430252

/-! ## A180115.P9101318010503856497

`(floor(n/2)+1)*A002275(or(1, n+1))`
-/

namespace A180115.P9101318010503856497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 2⌋ + 1) * A002275 (Nat.lor 1 (n + 1))

end

end A180115.P9101318010503856497

/-! ## A180115.P11338604006611903985

`A010785(A151979(n+2))`
-/

namespace A180115.P11338604006611903985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (A151979 (n + 2)).toNat

end

end A180115.P11338604006611903985

/-! ## A180115.P1264734109147434422

`record[A123108(n)*A283351(n)]`
-/

namespace A180115.P1264734109147434422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n * A283351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180115.P1264734109147434422

/-!
# A180116: A008619(n-1)-fold concatenation of A109613(n).

The programs for A180116, there is no canonical definition to state claims against.
-/

/-! ## A180116.P1230970172746296597

`A179309(A146512(n+1))`
-/

namespace A180116.P1230970172746296597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179309 (A146512 (n + 1)).toNat

end

end A180116.P1230970172746296597

/-! ## A180116.P162906049915515286

`A179309(A003630(n+1)-4)`
-/

namespace A180116.P162906049915515286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179309 (A003630 (n + 1) - 4).toNat

end

end A180116.P162906049915515286

/-! ## A180116.P4302867873852156958

`A067513(A286508(n))*A289404(n)`
-/

namespace A180116.P4302867873852156958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A286508 n).toNat * A289404 n

end

end A180116.P4302867873852156958

/-! ## A180116.P13130369778485407011

`A179309(eq[A003815(n), A163806(n)])`
-/

namespace A180116.P13130369778485407011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163806 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179309 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A180116.P13130369778485407011

/-!
# A180117: Numbers n such that n and n+2 are both divisible by exactly 3 primes (counted with multiplicity).

The programs for A180117, the canonical program `A180117.P7084962965851303768` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180117 has offset 1).

The definition of A180117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180117.P12628365187127969361

`A157483(n+1)-1`
-/

namespace A180117.P12628365187127969361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157483 (n + 1) - 1

end

end A180117.P12628365187127969361

namespace A180117

/-- `A157483(n+1)-1` -/
def P12628365187127969361.Spec : Prop :=
  ∀ n, P12628365187127969361.a n = A180117 (n + 1)

end A180117

/-! ## A180117.P16769922524133692913

`record[A273943(A124941(n+1))]`
-/

namespace A180117.P16769922524133692913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A124941 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180117.P16769922524133692913

namespace A180117

/-- `record[A273943(A124941(n+1))]` -/
def P16769922524133692913.Spec : Prop :=
  ∀ n, P16769922524133692913.a n = A180117 (n + 1)

end A180117

/-! ## A180117.P1854323198570088790

`A165326(2*(n+1))+A157483(n+1)`
-/

namespace A180117.P1854323198570088790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (2 * (n + 1)) + A157483 (n + 1)

end

end A180117.P1854323198570088790

namespace A180117

/-- `A165326(2*(n+1))+A157483(n+1)` -/
def P1854323198570088790.Spec : Prop :=
  ∀ n, P1854323198570088790.a n = A180117 (n + 1)

end A180117

/-! ## A180117.P7084962965851303768

`∩[A014612(n+1)-2, A014612(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A180117

/-- `∩[A014612(n+1)-2, A014612(n+1)]` -/
def P7084962965851303768.Spec : Prop :=
  ∀ n, (P7084962965851303768.a n : ℤ) = A180117 (n + 1)

theorem P7084962965851303768.correct : P7084962965851303768.Spec := by
  intro n
  simp only [A180117, Nat.add_sub_cancel]

end A180117

/-! ## A180117.P3098047974237443616

`A157503(gcd(n, n+1))+A157483(n+1)`
-/

namespace A180117.P3098047974237443616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157503 (Nat.gcd n (n + 1)) + A157483 (n + 1)

end

end A180117.P3098047974237443616

namespace A180117

/-- `A157503(gcd(n, n+1))+A157483(n+1)` -/
def P3098047974237443616.Spec : Prop :=
  ∀ n, P3098047974237443616.a n = A180117 (n + 1)

end A180117

/-! ## A180117.P10991789144531268542

`A330025(2*A016885(n))+A157483(n+1)`
-/

namespace A180117.P10991789144531268542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (2 * A016885 n).toNat + A157483 (n + 1)

end

end A180117.P10991789144531268542

namespace A180117

/-- `A330025(2*A016885(n))+A157483(n+1)` -/
def P10991789144531268542.Spec : Prop :=
  ∀ n, P10991789144531268542.a n = A180117 (n + 1)

end A180117

/-! ## A180117.P115568694170465937

`A023443(A157483(n+1))`
-/

namespace A180117.P115568694170465937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A157483 (n + 1)).toNat

end

end A180117.P115568694170465937

namespace A180117

/-- `A023443(A157483(n+1))` -/
def P115568694170465937.Spec : Prop :=
  ∀ n, P115568694170465937.a n = A180117 (n + 1)

end A180117

/-! ## A180117.P4209639456488202446

`A143051(A157483(sqrt(record[(1-n)²])))`
-/

namespace A180117.P4209639456488202446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (A157483 (SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))).toNat).toNat

end

end A180117.P4209639456488202446

namespace A180117

/-- `A143051(A157483(sqrt(record[(1-n)²])))` -/
def P4209639456488202446.Spec : Prop :=
  ∀ n, P4209639456488202446.a n = A180117 (n + 1)

end A180117

/-! ## A180117.P2382984320805797190

`lcm(A024000(A157483(n+1)), A158388(n))`
-/

namespace A180117.P2382984320805797190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A024000 (A157483 (n + 1)).toNat) (A158388 n)

end

end A180117.P2382984320805797190

namespace A180117

/-- `lcm(A024000(A157483(n+1)), A158388(n))` -/
def P2382984320805797190.Spec : Prop :=
  ∀ n, (P2382984320805797190.a n : ℤ) = A180117 (n + 1)

end A180117

/-! ## A180117.P8033993925952027283

`record[A001057(A124941(n+1)-1)]`
-/

namespace A180117.P8033993925952027283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A124941 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180117.P8033993925952027283

namespace A180117

/-- `record[A001057(A124941(n+1)-1)]` -/
def P8033993925952027283.Spec : Prop :=
  ∀ n, P8033993925952027283.a n = A180117 (n + 1)

end A180117

/-! ## A180117.P9627727321294625281

`record[A003602(A124941(n+1)-1)]`
-/

namespace A180117.P9627727321294625281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A124941 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180117.P9627727321294625281

namespace A180117

/-- `record[A003602(A124941(n+1)-1)]` -/
def P9627727321294625281.Spec : Prop :=
  ∀ n, P9627727321294625281.a n = A180117 (n + 1)

end A180117

/-! ## A180117.P3097377999877610064

`eq[A001222(A008574(2*n)), A130675(n+2)]`
-/

namespace A180117.P3097377999877610064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008574 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130675 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180117.P3097377999877610064

namespace A180117

/-- `eq[A001222(A008574(2*n)), A130675(n+2)]` -/
def P3097377999877610064.Spec : Prop :=
  ∀ n, (P3097377999877610064.a n : ℤ) = A180117 (n + 1)

end A180117

/-!
# A180118: a(n) = Sum_{k=1..n} (k+2)!/k! = Sum_{k=1..n} (k+2)*(k+1).

The programs for A180118, the canonical program `A180118.P17753561419811527916` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180118 has offset 0).

The definition of A180118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180118.P17753561419811527916

`n*(n²+6*n+11)/3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180118

/-- `n*(n²+6*n+11)/3` -/
def P17753561419811527916.Spec : Prop :=
  ∀ n, P17753561419811527916.a n = (A180118 n : ℚ)

end A180118

/-! ## A180118.P7762690044697600699

`2*(C(n+3, 3)-1)`
-/

namespace A180118.P7762690044697600699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose (n + 3) 3 : ℤ) - 1)

end

end A180118.P7762690044697600699

namespace A180118

/-- `2*(C(n+3, 3)-1)` -/
def P7762690044697600699.Spec : Prop :=
  ∀ n, P7762690044697600699.a n = A180118 n

end A180118

/-! ## A180118.P588537429385670690

`∑[lcm(n+1, n+2)]-2`
-/

namespace A180118.P588537429385670690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A180118.P588537429385670690

namespace A180118

/-- `∑[lcm(n+1, n+2)]-2` -/
def P588537429385670690.Spec : Prop :=
  ∀ n, P588537429385670690.a n = A180118 n

end A180118

/-! ## A180118.P18069693784026114131

`∑[∑[a(n-1)+2]]` with `a(0)=0, a(1)=6, a(2)=6`
-/

namespace A180118.P18069693784026114131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 6, 6] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180118.P18069693784026114131

namespace A180118

/-- `∑[∑[a(n-1)+2]]` -/
def P18069693784026114131.Spec : Prop :=
  ∀ n, (P18069693784026114131.a n : ℤ) = A180118 n

end A180118

/-! ## A180118.P17514263433097873899

`∑[record[(n-1)*(n-2)]]-2`
-/

namespace A180118.P17514263433097873899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((n : ℤ) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A180118.P17514263433097873899

namespace A180118

/-- `∑[record[(n-1)*(n-2)]]-2` -/
def P17514263433097873899.Spec : Prop :=
  ∀ n, P17514263433097873899.a n = A180118 n

end A180118

/-! ## A180118.P5053782056351423551

`∑[(n+1)*(2%(n+2)+n)]`
-/

namespace A180118.P5053782056351423551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 % (n + 2) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180118.P5053782056351423551

namespace A180118

/-- `∑[(n+1)*(2%(n+2)+n)]` -/
def P5053782056351423551.Spec : Prop :=
  ∀ n, (P5053782056351423551.a n : ℤ) = A180118 n

end A180118

/-! ## A180118.P12697816560754870321

`lcm(2, ∑[n*(n+3)]+2*n)`
-/

namespace A180118.P12697816560754870321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j + 2 * n)

end

end A180118.P12697816560754870321

namespace A180118

/-- `lcm(2, ∑[n*(n+3)]+2*n)` -/
def P12697816560754870321.Spec : Prop :=
  ∀ n, (P12697816560754870321.a n : ℤ) = A180118 n

end A180118

/-! ## A180118.P14866876665443249191

`xor(-2, ∑[-((n+1)*(n+2))])`
-/

namespace A180118.P14866876665443249191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1) * (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180118.P14866876665443249191

namespace A180118

/-- `xor(-2, ∑[-((n+1)*(n+2))])` -/
def P14866876665443249191.Spec : Prop :=
  ∀ n, P14866876665443249191.a n = A180118 n

end A180118

/-! ## A180118.P14999656866969537067

`∑[record[(n-1)²]+n+1]-2`
-/

namespace A180118.P14999656866969537067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A180118.P14999656866969537067

namespace A180118

/-- `∑[record[(n-1)²]+n+1]-2` -/
def P14999656866969537067.Spec : Prop :=
  ∀ n, P14999656866969537067.a n = A180118 n

end A180118

/-! ## A180118.P9831000686228448471

`∑[∑[ogf(8/(1-2x+x^2))]]/4-2`
-/

namespace A180118.P9831000686228448471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4 - 2

end

end A180118.P9831000686228448471

namespace A180118

/-- `∑[∑[ogf(8/(1-2x+x^2))]]/4-2` -/
def P9831000686228448471.Spec : Prop :=
  ∀ n, P9831000686228448471.a n = (A180118 n : ℚ)

end A180118

/-! ## A180118.P15775490692984705679

`a(n-2)+2*(n+1)²` with `a(0)=0, a(1)=6`
-/

namespace A180118.P15775490692984705679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n a =>
  a (n - 2) + 2 * (n + 1) ^ 2

end

end A180118.P15775490692984705679

namespace A180118

/-- `a(n-2)+2*(n+1)²` -/
def P15775490692984705679.Spec : Prop :=
  ∀ n, (P15775490692984705679.a n : ℤ) = A180118 n

end A180118

/-! ## A180118.P11890088424462486639

`C(n+3, 3)-(2-C(n+3, 3))`
-/

namespace A180118.P11890088424462486639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) - (2 - (Nat.choose (n + 3) 3 : ℤ))

end

end A180118.P11890088424462486639

namespace A180118

/-- `C(n+3, 3)-(2-C(n+3, 3))` -/
def P11890088424462486639.Spec : Prop :=
  ∀ n, P11890088424462486639.a n = A180118 n

end A180118

/-! ## A180118.P7694370373090928376

`a(n-1)+n*(n+3)+2` with `a(0)=0`
-/

namespace A180118.P7694370373090928376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * (n + 3) + 2

end

end A180118.P7694370373090928376

namespace A180118

/-- `a(n-1)+n*(n+3)+2` -/
def P7694370373090928376.Spec : Prop :=
  ∀ n, (P7694370373090928376.a n : ℤ) = A180118 n

end A180118

/-! ## A180118.P3695983569780013051

`floor(a(n-1)+(3/2+n)²)` with `a(0)=0`
-/

namespace A180118.P3695983569780013051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((3 : ℚ) / 2 + (n : ℚ)) ^ 2⌋

end

end A180118.P3695983569780013051

namespace A180118

/-- `floor(a(n-1)+(3/2+n)²)` -/
def P3695983569780013051.Spec : Prop :=
  ∀ n, P3695983569780013051.a n = A180118 n

end A180118

/-! ## A180118.P8959616988566301177

`n+1+a(n-1)+(n+1)²` with `a(0)=0`
-/

namespace A180118.P8959616988566301177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n + 1 + (a (n - 1) + (n + 1) ^ 2)

end

end A180118.P8959616988566301177

namespace A180118

/-- `n+1+a(n-1)+(n+1)²` -/
def P8959616988566301177.Spec : Prop :=
  ∀ n, (P8959616988566301177.a n : ℤ) = A180118 n

end A180118

/-! ## A180118.P5987451276713275972

`∑[n*(n+3)]+xor(1, 2*n+1)`
-/

namespace A180118.P5987451276713275972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.xor 1 (2 * n + 1)

end

end A180118.P5987451276713275972

namespace A180118

/-- `∑[n*(n+3)]+xor(1, 2*n+1)` -/
def P5987451276713275972.Spec : Prop :=
  ∀ n, (P5987451276713275972.a n : ℤ) = A180118 n

end A180118

/-! ## A180118.P9058410241098789844

`∑[(n+3)*gcd(n, 2*n)]+2*n`
-/

namespace A180118.P9058410241098789844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * Nat.gcd n (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * n

end

end A180118.P9058410241098789844

namespace A180118

/-- `∑[(n+3)*gcd(n, 2*n)]+2*n` -/
def P9058410241098789844.Spec : Prop :=
  ∀ n, (P9058410241098789844.a n : ℤ) = A180118 n

end A180118

/-! ## A180118.P7775923182863732433

`∑[n*C(n+3, n+2)]+2*n`
-/

namespace A180118.P7775923182863732433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (n + 3) (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * n

end

end A180118.P7775923182863732433

namespace A180118

/-- `∑[n*C(n+3, n+2)]+2*n` -/
def P7775923182863732433.Spec : Prop :=
  ∀ n, (P7775923182863732433.a n : ℤ) = A180118 n

end A180118

/-! ## A180118.P16166555564941822564

`∑[n*(n+3)]+and(2*n+1, 2*n)`
-/

namespace A180118.P16166555564941822564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land (2 * n + 1) (2 * n)

end

end A180118.P16166555564941822564

namespace A180118

/-- `∑[n*(n+3)]+and(2*n+1, 2*n)` -/
def P16166555564941822564.Spec : Prop :=
  ∀ n, (P16166555564941822564.a n : ℤ) = A180118 n

end A180118

/-! ## A180118.P12526165558263643345

`∑[2*A253145(n)]`
-/

namespace A180118.P12526165558263643345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180118.P12526165558263643345

namespace A180118

/-- `∑[2*A253145(n)]` -/
def P12526165558263643345.Spec : Prop :=
  ∀ n, P12526165558263643345.a n = A180118 n

end A180118

/-!
# A180119: a(n) = (n+2)! * Sum_{k = 1..n} 1/((k+1)*(k+2)).

The programs for A180119, the canonical program `A180119.P7712605466301032233` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180119 has offset 0).

The definition of A180119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180119.P7712605466301032233

`A000142(n)*A000217(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A180119

/-- `A000142(n)*A000217(n)` -/
def P7712605466301032233.Spec : Prop :=
  ∀ n, P7712605466301032233.a n = A180119 n

theorem P7712605466301032233.correct : P7712605466301032233.Spec := by
  intro n
  simp only [A180119]

end A180119

/-! ## A180119.P3457894409029539060

`n*(n+1)!/2`
-/

namespace A180119.P3457894409029539060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * Nat.factorial (n + 1) : ℚ) / 2

end

end A180119.P3457894409029539060

namespace A180119

/-- `n*(n+1)!/2` -/
def P3457894409029539060.Spec : Prop :=
  ∀ n, P3457894409029539060.a n = (A180119 n : ℚ)

theorem P3457894409029539060.correct : P3457894409029539060.Spec := by
  intro n
  simp only [A180119, Nat.add_sub_cancel, A180119.P3457894409029539060.a, A180119.P7712605466301032233.a, A000142, A000142.P3272619076580183195.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A180119

/-! ## A180119.P4921782345118824974

`n!*∑[n]`
-/

namespace A180119.P4921782345118824974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180119.P4921782345118824974

namespace A180119

/-- `n!*∑[n]` -/
def P4921782345118824974.Spec : Prop :=
  ∀ n, (P4921782345118824974.a n : ℤ) = A180119 n

end A180119

/-! ## A180119.P7357463402377441943

`C(n+1, 2)*n!`
-/

namespace A180119.P7357463402377441943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 * Nat.factorial n

end

end A180119.P7357463402377441943

namespace A180119

/-- `C(n+1, 2)*n!` -/
def P7357463402377441943.Spec : Prop :=
  ∀ n, (P7357463402377441943.a n : ℤ) = A180119 n

theorem P7357463402377441943.correct : P7357463402377441943.Spec := by
  intro n
  simp only [A180119, Nat.add_sub_cancel, A180119.P7357463402377441943.a, A180119.P7712605466301032233.a, A000142, A000142.P3272619076580183195.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A180119

/-! ## A180119.P14481576942614643663

`n/2*∏[n+1]`
-/

namespace A180119.P14481576942614643663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A180119.P14481576942614643663

namespace A180119

/-- `n/2*∏[n+1]` -/
def P14481576942614643663.Spec : Prop :=
  ∀ n, P14481576942614643663.a n = (A180119 n : ℚ)

end A180119

/-! ## A180119.P8447210326801552483

`abs((n²-C(n, 2))*n!)`
-/

namespace A180119.P8447210326801552483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)) * (Nat.factorial n : ℤ)|

end

end A180119.P8447210326801552483

namespace A180119

/-- `abs((n²-C(n, 2))*n!)` -/
def P8447210326801552483.Spec : Prop :=
  ∀ n, P8447210326801552483.a n = A180119 n

end A180119

/-! ## A180119.P9321879300511470003

`abs(n*(a(n-1)+n!))` with `a(0)=0`
-/

namespace A180119.P9321879300511470003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (a (n - 1) + Nat.factorial n)

end

end A180119.P9321879300511470003

namespace A180119

/-- `abs(n*(a(n-1)+n!))` -/
def P9321879300511470003.Spec : Prop :=
  ∀ n, (P9321879300511470003.a n : ℤ) = A180119 n

end A180119

/-! ## A180119.P2261900103030413200

`floor(n*(a(n-1)+n!))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A180119.P2261900103030413200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (a (n - 1) + Nat.factorial n)

end

end A180119.P2261900103030413200

namespace A180119

/-- `floor(n*(a(n-1)+n!))` -/
def P2261900103030413200.Spec : Prop :=
  ∀ n, (P2261900103030413200.a n : ℤ) = A180119 n

end A180119

/-! ## A180119.P15275384215499938458

`ceil(n*(a(n-1)+n!))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A180119.P15275384215499938458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (a (n - 1) + Nat.factorial n)

end

end A180119.P15275384215499938458

namespace A180119

/-- `ceil(n*(a(n-1)+n!))` -/
def P15275384215499938458.Spec : Prop :=
  ∀ n, (P15275384215499938458.a n : ℤ) = A180119 n

end A180119

/-! ## A180119.P13858923816694888046

`round(n*(a(n-1)+n!))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A180119.P13858923816694888046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (a (n - 1) + Nat.factorial n)

end

end A180119.P13858923816694888046

namespace A180119

/-- `round(n*(a(n-1)+n!))` -/
def P13858923816694888046.Spec : Prop :=
  ∀ n, (P13858923816694888046.a n : ℤ) = A180119 n

end A180119

/-!
# A180121: Record high-points in the sequence of Sprague-Grundy values for Grundy's game.

The programs for A180121, there is no canonical definition to state claims against.
-/

/-! ## A180121.P17947491075664914562

`A002188(A180120(n+1))`
-/

namespace A180121.P17947491075664914562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002188 (A180120 (n + 1)).toNat

end

end A180121.P17947491075664914562

/-!
# A180122: First of three "least, sum, least" self-generating sequences.

The programs for A180122, the canonical program `A180122.P4089208892315484481` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180122 has offset 1).

The definition of A180122 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180122.P4089208892315484481

`floor((n+1)*(1+sqrt(3)))-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180122

/-- `floor((n+1)*(1+sqrt(3)))-1` -/
def P4089208892315484481.Spec : Prop :=
  ∀ n, P4089208892315484481.a n = A180122 (n + 1)

theorem P4089208892315484481.correct : P4089208892315484481.Spec := by
  intro n
  simp only [A180122, Nat.add_sub_cancel]

end A180122

/-! ## A180122.P3580220240536959051

`A186539(A054088(n+1)-(n+1))`
-/

namespace A180122.P3580220240536959051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (A054088 (n + 1) - (n + 1 : ℤ)).toNat

end

end A180122.P3580220240536959051

namespace A180122

/-- `A186539(A054088(n+1)-(n+1))` -/
def P3580220240536959051.Spec : Prop :=
  ∀ n, P3580220240536959051.a n = A180122 (n + 1)

end A180122

/-! ## A180122.P6260706755564580114

`A186539(A022838(2*n+1-n))`
-/

namespace A180122.P6260706755564580114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (A022838 (2 * n + 1 - n)).toNat

end

end A180122.P6260706755564580114

namespace A180122

/-- `A186539(A022838(2*n+1-n))` -/
def P6260706755564580114.Spec : Prop :=
  ∀ n, P6260706755564580114.a n = A180122 (n + 1)

end A180122

/-! ## A180122.P12748628422312026453

`A023443(A054088(n+1))`
-/

namespace A180122.P12748628422312026453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A054088 (n + 1)).toNat

end

end A180122.P12748628422312026453

namespace A180122

/-- `A023443(A054088(n+1))` -/
def P12748628422312026453.Spec : Prop :=
  ∀ n, P12748628422312026453.a n = A180122 (n + 1)

end A180122

/-! ## A180122.P6990867901430843236

`A131737(A022805(n+1))`
-/

namespace A180122.P6990867901430843236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (A022805 (n + 1)).toNat

end

end A180122.P6990867901430843236

namespace A180122

/-- `A131737(A022805(n+1))` -/
def P6990867901430843236.Spec : Prop :=
  ∀ n, P6990867901430843236.a n = A180122 (n + 1)

end A180122

/-! ## A180122.P4800919448137388257

`A097337(A054088(n+1)+2*n+1)`
-/

namespace A180122.P4800919448137388257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A054088 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A180122.P4800919448137388257

namespace A180122

/-- `A097337(A054088(n+1)+2*n+1)` -/
def P4800919448137388257.Spec : Prop :=
  ∀ n, P4800919448137388257.a n = A180122 (n + 1)

end A180122

/-!
# A180123: Second of three "least, sum, least" self-generating sequences.

The programs for A180123, the canonical program `A180123.P1250991661855750215` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180123 has offset 1).

The definition of A180123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180123.P1250991661855750215

`floor((n+1)*(sqrt(3)+2))-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180123

/-- `floor((n+1)*(sqrt(3)+2))-1` -/
def P1250991661855750215.Spec : Prop :=
  ∀ n, P1250991661855750215.a n = A180123 (n + 1)

theorem P1250991661855750215.correct : P1250991661855750215.Spec := by
  intro n
  simp only [A180123, Nat.add_sub_cancel]

end A180123

/-! ## A180123.P11519198877059504037

`xor(-floor((sqrt(3)+2)*(n+1)), -1)`
-/

namespace A180123.P11519198877059504037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-⌊(Real.sqrt (3 : ℝ) + 2) * (n + 1 : ℝ)⌋) (-1)

end

end A180123.P11519198877059504037

namespace A180123

/-- `xor(-floor((sqrt(3)+2)*(n+1)), -1)` -/
def P11519198877059504037.Spec : Prop :=
  ∀ n, P11519198877059504037.a n = A180123 (n + 1)

end A180123

/-! ## A180123.P161606990434514830

`abs(1-A003512(n+1))`
-/

namespace A180123.P161606990434514830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A003512 (n + 1)|

end

end A180123.P161606990434514830

namespace A180123

/-- `abs(1-A003512(n+1))` -/
def P161606990434514830.Spec : Prop :=
  ∀ n, P161606990434514830.a n = A180123 (n + 1)

end A180123

/-! ## A180123.P16281166213668753096

`abs(A182778(n+1)-(n+2))`
-/

namespace A180123.P16281166213668753096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182778 (n + 1) - (n + 2 : ℤ)|

end

end A180123.P16281166213668753096

namespace A180123

/-- `abs(A182778(n+1)-(n+2))` -/
def P16281166213668753096.Spec : Prop :=
  ∀ n, P16281166213668753096.a n = A180123 (n + 1)

end A180123

/-! ## A180123.P5131095287448271272

`abs(A022838(n+1)+Δ[n²])`
-/

namespace A180123.P5131095287448271272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022838 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A180123.P5131095287448271272

namespace A180123

/-- `abs(A022838(n+1)+Δ[n²])` -/
def P5131095287448271272.Spec : Prop :=
  ∀ n, P5131095287448271272.a n = A180123 (n + 1)

end A180123

/-! ## A180123.P2938265170084244637

`abs(A166486(2*n+1)-(ceil((sqrt(3)+2)*(n+1))-1))`
-/

namespace A180123.P2938265170084244637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166486 (2 * n + 1) - (⌈(Real.sqrt (3 : ℝ) + 2) * (n + 1 : ℝ)⌉ - 1)|

end

end A180123.P2938265170084244637

namespace A180123

/-- `abs(A166486(2*n+1)-(ceil((sqrt(3)+2)*(n+1))-1))` -/
def P2938265170084244637.Spec : Prop :=
  ∀ n, P2938265170084244637.a n = A180123 (n + 1)

end A180123

/-! ## A180123.P9957694821512193342

`∩[A190674(n+1), A327210(n+1)]`
-/

namespace A180123.P9957694821512193342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180123.P9957694821512193342

namespace A180123

/-- `∩[A190674(n+1), A327210(n+1)]` -/
def P9957694821512193342.Spec : Prop :=
  ∀ n, (P9957694821512193342.a n : ℤ) = A180123 (n + 1)

end A180123

/-! ## A180123.P10564924506617501737

`∩[A327181(n+1), A327210(n+1)]`
-/

namespace A180123.P10564924506617501737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180123.P10564924506617501737

namespace A180123

/-- `∩[A327181(n+1), A327210(n+1)]` -/
def P10564924506617501737.Spec : Prop :=
  ∀ n, (P10564924506617501737.a n : ℤ) = A180123 (n + 1)

end A180123

/-! ## A180123.P15109539999276992499

`A188084(Δ[n²])`
-/

namespace A180123.P15109539999276992499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188084 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A180123.P15109539999276992499

namespace A180123

/-- `A188084(Δ[n²])` -/
def P15109539999276992499.Spec : Prop :=
  ∀ n, P15109539999276992499.a n = A180123 (n + 1)

end A180123

/-! ## A180123.P3208416373543582689

`∩[A188084(n+1), A327210(n+1)]`
-/

namespace A180123.P3208416373543582689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180123.P3208416373543582689

namespace A180123

/-- `∩[A188084(n+1), A327210(n+1)]` -/
def P3208416373543582689.Spec : Prop :=
  ∀ n, (P3208416373543582689.a n : ℤ) = A180123 (n + 1)

end A180123

/-! ## A180123.P7292469814941381

`∩[A188094(n+1), A327210(n+1)]`
-/

namespace A180123.P7292469814941381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180123.P7292469814941381

namespace A180123

/-- `∩[A188094(n+1), A327210(n+1)]` -/
def P7292469814941381.Spec : Prop :=
  ∀ n, (P7292469814941381.a n : ℤ) = A180123 (n + 1)

end A180123

/-! ## A180123.P18432443417333718953

`∩[A188078(n+1), A327210(n+1)]`
-/

namespace A180123.P18432443417333718953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180123.P18432443417333718953

namespace A180123

/-- `∩[A188078(n+1), A327210(n+1)]` -/
def P18432443417333718953.Spec : Prop :=
  ∀ n, (P18432443417333718953.a n : ℤ) = A180123 (n + 1)

end A180123

/-! ## A180123.P11271897214052618701

`A003511(A054088(n+1))`
-/

namespace A180123.P11271897214052618701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (A054088 (n + 1)).toNat

end

end A180123.P11271897214052618701

namespace A180123

/-- `A003511(A054088(n+1))` -/
def P11271897214052618701.Spec : Prop :=
  ∀ n, P11271897214052618701.a n = A180123 (n + 1)

end A180123

/-! ## A180123.P8448563673474096027

`A188070(A180122(n+1))`
-/

namespace A180123.P8448563673474096027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188070 (A180122 (n + 1)).toNat

end

end A180123.P8448563673474096027

namespace A180123

/-- `A188070(A180122(n+1))` -/
def P8448563673474096027.Spec : Prop :=
  ∀ n, P8448563673474096027.a n = A180123 (n + 1)

end A180123

/-! ## A180123.P9397262978629495209

`A003511(∑[A007538(n+1)])`
-/

namespace A180123.P9397262978629495209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A180123.P9397262978629495209

namespace A180123

/-- `A003511(∑[A007538(n+1)])` -/
def P9397262978629495209.Spec : Prop :=
  ∀ n, P9397262978629495209.a n = A180123 (n + 1)

end A180123

/-! ## A180123.P11572071616739090241

`A003511(A003511(2*(n+1)))`
-/

namespace A180123.P11572071616739090241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (A003511 (2 * (n + 1))).toNat

end

end A180123.P11572071616739090241

namespace A180123

/-- `A003511(A003511(2*(n+1)))` -/
def P11572071616739090241.Spec : Prop :=
  ∀ n, P11572071616739090241.a n = A180123 (n + 1)

end A180123

/-! ## A180123.P16777306757974421915

`A188070(A022838(n+1)+n)`
-/

namespace A180123.P16777306757974421915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188070 (A022838 (n + 1) + (n : ℤ)).toNat

end

end A180123.P16777306757974421915

namespace A180123

/-- `A188070(A022838(n+1)+n)` -/
def P16777306757974421915.Spec : Prop :=
  ∀ n, P16777306757974421915.a n = A180123 (n + 1)

end A180123

/-! ## A180123.P10156232645982418181

`A180122(A180122(n+1)+1)/2`
-/

namespace A180123.P10156232645982418181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180122 (A180122 (n + 1) + 1).toNat : ℚ) / 2

end

end A180123.P10156232645982418181

namespace A180123

/-- `A180122(A180122(n+1)+1)/2` -/
def P10156232645982418181.Spec : Prop :=
  ∀ n, P10156232645982418181.a n = (A180123 (n + 1) : ℚ)

end A180123

/-! ## A180123.P5619758307599989077

`A003511(A022838(n+1)+n+1)`
-/

namespace A180123.P5619758307599989077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (A022838 (n + 1) + (n + 1 : ℤ)).toNat

end

end A180123.P5619758307599989077

namespace A180123

/-- `A003511(A022838(n+1)+n+1)` -/
def P5619758307599989077.Spec : Prop :=
  ∀ n, P5619758307599989077.a n = A180123 (n + 1)

end A180123

/-!
# A180124: Third of three "least, sum, least" self-generating sequences.

The programs for A180124, the canonical program `A180124.P11937004442357654605` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180124 has offset 1).

The definition of A180124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180124.P11937004442357654605

`round(sqrt(Δ[(n+1)^3])+n)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180124

/-- `round(sqrt(Δ[(n+1)^3])+n)` -/
def P11937004442357654605.Spec : Prop :=
  ∀ n, P11937004442357654605.a n = A180124 (n + 1)

theorem P11937004442357654605.correct : P11937004442357654605.Spec := by
  intro n
  simp only [A180124, Nat.add_sub_cancel]

end A180124

/-! ## A180124.P17548132818839600719

`A054087(n+2)-1`
-/

namespace A180124.P17548132818839600719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054087 (n + 2) - 1

end

end A180124.P17548132818839600719

namespace A180124

/-- `A054087(n+2)-1` -/
def P17548132818839600719.Spec : Prop :=
  ∀ n, P17548132818839600719.a n = A180124 (n + 1)

end A180124

/-! ## A180124.P4013436934245002497

`round(sqrt(A003215(n+1)))+n`
-/

namespace A180124.P4013436934245002497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A003215 (n + 1) : ℝ)) + (n : ℤ)

end

end A180124.P4013436934245002497

namespace A180124

/-- `round(sqrt(A003215(n+1)))+n` -/
def P4013436934245002497.Spec : Prop :=
  ∀ n, P4013436934245002497.a n = A180124 (n + 1)

end A180124

/-! ## A180124.P13007084640964486625

`∑[A015051(Δ[A054087(n+1)])]`
-/

namespace A180124.P13007084640964486625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054087 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015051 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180124.P13007084640964486625

namespace A180124

/-- `∑[A015051(Δ[A054087(n+1)])]` -/
def P13007084640964486625.Spec : Prop :=
  ∀ n, P13007084640964486625.a n = A180124 (n + 1)

end A180124

/-! ## A180124.P652613876743297826

`∑[A056792(Δ[A054087(n+1)])]`
-/

namespace A180124.P652613876743297826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054087 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180124.P652613876743297826

namespace A180124

/-- `∑[A056792(Δ[A054087(n+1)])]` -/
def P652613876743297826.Spec : Prop :=
  ∀ n, P652613876743297826.a n = A180124 (n + 1)

end A180124

/-! ## A180124.P7772113808386688475

`∑[A059292(Δ[A054087(n+1)])]`
-/

namespace A180124.P7772113808386688475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054087 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059292 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180124.P7772113808386688475

namespace A180124

/-- `∑[A059292(Δ[A054087(n+1)])]` -/
def P7772113808386688475.Spec : Prop :=
  ∀ n, P7772113808386688475.a n = A180124 (n + 1)

end A180124

/-! ## A180124.P2578363512428523084

`A003511(2*n+3)-1`
-/

namespace A180124.P2578363512428523084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (2 * n + 3) - 1

end

end A180124.P2578363512428523084

namespace A180124

/-- `A003511(2*n+3)-1` -/
def P2578363512428523084.Spec : Prop :=
  ∀ n, P2578363512428523084.a n = A180124 (n + 1)

end A180124

/-! ## A180124.P12039009196665373418

`A188070(2*n+3)-2`
-/

namespace A180124.P12039009196665373418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188070 (2 * n + 3) - 2

end

end A180124.P12039009196665373418

namespace A180124

/-- `A188070(2*n+3)-2` -/
def P12039009196665373418.Spec : Prop :=
  ∀ n, P12039009196665373418.a n = A180124 (n + 1)

end A180124

/-! ## A180124.P6352788993504326763

`∑[abs(Δ[A003511(2*n+1)])]`
-/

namespace A180124.P6352788993504326763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180124.P6352788993504326763

namespace A180124

/-- `∑[abs(Δ[A003511(2*n+1)])]` -/
def P6352788993504326763.Spec : Prop :=
  ∀ n, P6352788993504326763.a n = A180124 (n + 1)

end A180124

/-! ## A180124.P2906764600465166259

`∑[Δ[A054406(2*n+1)]-2]`
-/

namespace A180124.P2906764600465166259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180124.P2906764600465166259

namespace A180124

/-- `∑[Δ[A054406(2*n+1)]-2]` -/
def P2906764600465166259.Spec : Prop :=
  ∀ n, P2906764600465166259.a n = A180124 (n + 1)

end A180124

/-! ## A180124.P10955853771010160635

`∑[A000041(Δ[A003511(2*n+1)])]`
-/

namespace A180124.P10955853771010160635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180124.P10955853771010160635

namespace A180124

/-- `∑[A000041(Δ[A003511(2*n+1)])]` -/
def P10955853771010160635.Spec : Prop :=
  ∀ n, P10955853771010160635.a n = A180124 (n + 1)

end A180124

/-! ## A180124.P13666788506452148387

`∑[A003473(Δ[A003511(2*n+1)])]`
-/

namespace A180124.P13666788506452148387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003473 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180124.P13666788506452148387

namespace A180124

/-- `∑[A003473(Δ[A003511(2*n+1)])]` -/
def P13666788506452148387.Spec : Prop :=
  ∀ n, P13666788506452148387.a n = A180124 (n + 1)

end A180124

/-! ## A180124.P17321236482962307099

`∑[A003476(Δ[A003511(2*n+1)])]`
-/

namespace A180124.P17321236482962307099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180124.P17321236482962307099

namespace A180124

/-- `∑[A003476(Δ[A003511(2*n+1)])]` -/
def P17321236482962307099.Spec : Prop :=
  ∀ n, P17321236482962307099.a n = A180124 (n + 1)

end A180124

/-! ## A180124.P17542216703132998979

`∑[A003504(Δ[A003511(2*n+1)])]`
-/

namespace A180124.P17542216703132998979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003504 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180124.P17542216703132998979

namespace A180124

/-- `∑[A003504(Δ[A003511(2*n+1)])]` -/
def P17542216703132998979.Spec : Prop :=
  ∀ n, P17542216703132998979.a n = A180124 (n + 1)

end A180124

/-! ## A180124.P8517448053842844504

`∑[A003508(Δ[A003511(2*n+1)])]`
-/

namespace A180124.P8517448053842844504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003508 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180124.P8517448053842844504

namespace A180124

/-- `∑[A003508(Δ[A003511(2*n+1)])]` -/
def P8517448053842844504.Spec : Prop :=
  ∀ n, P8517448053842844504.a n = A180124 (n + 1)

end A180124

/-! ## A180124.P15964594825346249902

`A054406(2*n+3)-A005843(n+2)`
-/

namespace A180124.P15964594825346249902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (2 * n + 3) - A005843 (n + 2)

end

end A180124.P15964594825346249902

namespace A180124

/-- `A054406(2*n+3)-A005843(n+2)` -/
def P15964594825346249902.Spec : Prop :=
  ∀ n, P15964594825346249902.a n = A180124 (n + 1)

end A180124

/-! ## A180124.P9695878858111156164

`∩[A003511(n+2), A186539(n+2)]-1`
-/

namespace A180124.P9695878858111156164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A180124.P9695878858111156164

namespace A180124

/-- `∩[A003511(n+2), A186539(n+2)]-1` -/
def P9695878858111156164.Spec : Prop :=
  ∀ n, P9695878858111156164.a n = A180124 (n + 1)

end A180124

/-! ## A180124.P7097515423104051019

`A023443(A054087(n+2))`
-/

namespace A180124.P7097515423104051019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A054087 (n + 2)).toNat

end

end A180124.P7097515423104051019

namespace A180124

/-- `A023443(A054087(n+2))` -/
def P7097515423104051019.Spec : Prop :=
  ∀ n, P7097515423104051019.a n = A180124 (n + 1)

end A180124

/-! ## A180124.P1023159016473193649

`A014245(A054088(n+1)+2)+n`
-/

namespace A180124.P1023159016473193649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014245 (A054088 (n + 1) + 2).toNat + (n : ℤ)

end

end A180124.P1023159016473193649

namespace A180124

/-- `A014245(A054088(n+1)+2)+n` -/
def P1023159016473193649.Spec : Prop :=
  ∀ n, P1023159016473193649.a n = A180124 (n + 1)

end A180124

/-! ## A180124.P9765699897532367529

`A014245(A284774(n+1)+2)+n`
-/

namespace A180124.P9765699897532367529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014245 (A284774 (n + 1) + 2).toNat + (n : ℤ)

end

end A180124.P9765699897532367529

namespace A180124

/-- `A014245(A284774(n+1)+2)+n` -/
def P9765699897532367529.Spec : Prop :=
  ∀ n, P9765699897532367529.a n = A180124 (n + 1)

end A180124

/-!
# A180125: Self-convolution of period-doubling sequence A035263.

The programs for A180125, the canonical program `A180125.P7727917654497563634` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180125 has offset 1).

The definition of A180125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180125.P11110077338534980484

`∑[(and(n, -n)%3)%2]-A123087(A153733(n))`
-/

namespace A180125.P11110077338534980484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 3) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A123087 (A153733 n).toNat

end

end A180125.P11110077338534980484

namespace A180125

/-- `∑[(and(n, -n)%3)%2]-A123087(A153733(n))` -/
def P11110077338534980484.Spec : Prop :=
  ∀ n, P11110077338534980484.a n = A180125 (n + 1)

end A180125

/-! ## A180125.P14892539444540239821

`A050292(n)-A123087(floor(n/2^val(n+1, 2)))`
-/

namespace A180125.P14892539444540239821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 n - A123087 ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋.toNat

end

end A180125.P14892539444540239821

namespace A180125

/-- `A050292(n)-A123087(floor(n/2^val(n+1, 2)))` -/
def P14892539444540239821.Spec : Prop :=
  ∀ n, P14892539444540239821.a n = A180125 (n + 1)

end A180125

/-! ## A180125.P7727917654497563634

`A050292(n)-A050292(floor(n/(xor(n, n+1)+1)))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A180125

/-- `A050292(n)-A050292(floor(n/(xor(n, n+1)+1)))` -/
def P7727917654497563634.Spec : Prop :=
  ∀ n, P7727917654497563634.a n = A180125 (n + 1)

theorem P7727917654497563634.correct : P7727917654497563634.Spec := by
  intro n
  simp only [A180125, Nat.add_sub_cancel]

end A180125

/-! ## A180125.P12776658486969693795

`∑{d}[n+1, A036987(#-1)*A068639((n+1)/#-1)]`
-/

namespace A180125.P12776658486969693795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A068639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A180125.P12776658486969693795

namespace A180125

/-- `∑{d}[n+1, A036987(#-1)*A068639((n+1)/#-1)]` -/
def P12776658486969693795.Spec : Prop :=
  ∀ n, P12776658486969693795.a n = A180125 (n + 1)

end A180125

/-! ## A180125.P9375052956498993161

`A050292(n)-A050292(A025480(n))`
-/

namespace A180125.P9375052956498993161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 n - A050292 (A025480 n).toNat

end

end A180125.P9375052956498993161

namespace A180125

/-- `A050292(n)-A050292(A025480(n))` -/
def P9375052956498993161.Spec : Prop :=
  ∀ n, P9375052956498993161.a n = A180125 (n + 1)

end A180125

/-! ## A180125.P11212207043270341035

`A050292(n)-A123087(A153733(n))`
-/

namespace A180125.P11212207043270341035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 n - A123087 (A153733 n).toNat

end

end A180125.P11212207043270341035

namespace A180125

/-- `A050292(n)-A123087(A153733(n))` -/
def P11212207043270341035.Spec : Prop :=
  ∀ n, P11212207043270341035.a n = A180125 (n + 1)

end A180125

/-! ## A180125.P5467259186552258217

`A050292(n)-A123087(A000265(n+1))`
-/

namespace A180125.P5467259186552258217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 n - A123087 (A000265 (n + 1)).toNat

end

end A180125.P5467259186552258217

namespace A180125

/-- `A050292(n)-A123087(A000265(n+1))` -/
def P5467259186552258217.Spec : Prop :=
  ∀ n, P5467259186552258217.a n = A180125 (n + 1)

end A180125

/-! ## A180125.P5339617986535121347

`A050292(n)-A123087(A322250(n+1))`
-/

namespace A180125.P5339617986535121347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 n - A123087 (A322250 (n + 1)).toNat

end

end A180125.P5339617986535121347

namespace A180125

/-- `A050292(n)-A123087(A322250(n+1))` -/
def P5339617986535121347.Spec : Prop :=
  ∀ n, P5339617986535121347.a n = A180125 (n + 1)

end A180125

/-! ## A180125.P3252992822079847402

`A123087(2*n)-A123087(A153733(n))`
-/

namespace A180125.P3252992822079847402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 (2 * n) - A123087 (A153733 n).toNat

end

end A180125.P3252992822079847402

namespace A180125

/-- `A123087(2*n)-A123087(A153733(n))` -/
def P3252992822079847402.Spec : Prop :=
  ∀ n, P3252992822079847402.a n = A180125 (n + 1)

end A180125

/-! ## A180125.P9152882357372036903

`A123087(2*n)-A123087(A000265(n+1))`
-/

namespace A180125.P9152882357372036903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 (2 * n) - A123087 (A000265 (n + 1)).toNat

end

end A180125.P9152882357372036903

namespace A180125

/-- `A123087(2*n)-A123087(A000265(n+1))` -/
def P9152882357372036903.Spec : Prop :=
  ∀ n, P9152882357372036903.a n = A180125 (n + 1)

end A180125

/-! ## A180125.P10226714550257540020

`A123087(2*n)-A123087(A322250(n+1))`
-/

namespace A180125.P10226714550257540020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 (2 * n) - A123087 (A322250 (n + 1)).toNat

end

end A180125.P10226714550257540020

namespace A180125

/-- `A123087(2*n)-A123087(A322250(n+1))` -/
def P10226714550257540020.Spec : Prop :=
  ∀ n, P10226714550257540020.a n = A180125 (n + 1)

end A180125

/-!
# A180129: Expansion of log(1/(1-Prime(x))) where Prime(x) = Sum{n>=1} A008578(n)*x^n.

The programs for A180129, there is no canonical definition to state claims against.
-/

/-! ## A180129.P15752200452027972474

`A019487(n)-A070238(A162773(n))`
-/

namespace A180129.P15752200452027972474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019487 n - A070238 (A162773 n).toNat

end

end A180129.P15752200452027972474

/-! ## A180129.P15003875417815008973

`A279784(2*n)+A050723(A006950(2*(n+1)))`
-/

namespace A180129.P15003875417815008973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279784 (2 * n) + A050723 (A006950 (2 * (n + 1))).toNat

end

end A180129.P15003875417815008973

/-!
# A180130: Smallest k such that k*2^n is a sum of two successive primes.

The programs for A180130, there is no canonical definition to state claims against.
-/

/-! ## A180130.P16843224451959262409

`A180138(∑[n+1])`
-/

namespace A180130.P16843224451959262409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180130.P16843224451959262409

/-! ## A180130.P2174962811073627418

`root(A180138(∑[Δ[n²]-n]), 2)²`
-/

namespace A180130.P2174962811073627418
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A180138 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A180130.P2174962811073627418

/-! ## A180130.P10568099445868826128

`A180138(∑[-xor(n, -1)])%or(3, n)²`
-/

namespace A180130.P10568099445868826128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180138 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (Nat.lor 3 n ^ 2 : ℤ)

end

end A180130.P10568099445868826128

/-! ## A180130.P687881653199899881

`or(char[3], A180138(A000217(n+1)))`
-/

namespace A180130.P687881653199899881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A180138 (A000217 (n + 1)).toNat)

end

end A180130.P687881653199899881

/-! ## A180130.P169298424692853408

`A000027(A180138(∑[-xor(n, -1)]))`
-/

namespace A180130.P169298424692853408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A180138 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A180130.P169298424692853408

/-! ## A180130.P5949505878110011141

`A000027(A180138(∑[Δ[n²]-n]))`
-/

namespace A180130.P5949505878110011141
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A180138 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A180130.P5949505878110011141

/-! ## A180130.P13379613251723218643

`A180138(∑[-xor(n, -1)])-(2*A007318(n))%2`
-/

namespace A180130.P13379613251723218643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - Int.tmod (2 * A007318 n) 2

end

end A180130.P13379613251723218643

/-! ## A180130.P17035233047240321322

`A180138(∑[-xor(n, -1)])-A001222(((-1)^n)²)`
-/

namespace A180130.P17035233047240321322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A001222 (((-1) ^ n) ^ 2).toNat

end

end A180130.P17035233047240321322

/-! ## A180130.P9140163089288807080

`A180138(A000217(n+1))%A017353(n)`
-/

namespace A180130.P9140163089288807080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180138 (A000217 (n + 1)).toNat) (A017353 n)

end

end A180130.P9140163089288807080

/-! ## A180130.P13003822486459663027

`A180138(A000217(n+1))+A000007(n+1)`
-/

namespace A180130.P13003822486459663027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A000217 (n + 1)).toNat + A000007 (n + 1)

end

end A180130.P13003822486459663027

/-! ## A180130.P3744907240663983064

`A180138(A008805(2*n))%A005231(n+1)`
-/

namespace A180130.P3744907240663983064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180138 (A008805 (2 * n)).toNat) (A005231 (n + 1))

end

end A180130.P3744907240663983064

/-! ## A180130.P1861751481066131607

`A180138(A000217(n+1))+A008683(2*(n+2)²)`
-/

namespace A180130.P1861751481066131607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A000217 (n + 1)).toNat + A008683 (2 * (n + 2) ^ 2)

end

end A180130.P1861751481066131607

/-! ## A180130.P114949872494283623

`A000041(and(4, -n)/4)-(1-A180138(A000217(n+1)))`
-/

namespace A180130.P114949872494283623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((Int.land 4 (-(n : ℤ)) : ℚ) / 4)).toNat - (1 - A180138 (A000217 (n + 1)).toNat)

end

end A180130.P114949872494283623

/-! ## A180130.P3757058148497193081

`A020639(2*n+1)%2-(1-A180138(A000217(n+1)))`
-/

namespace A180130.P3757058148497193081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (2 * n + 1)) 2 - (1 - A180138 (A000217 (n + 1)).toNat)

end

end A180130.P3757058148497193081

/-!
# A180131: Smallest k such that k*3^n is a sum of two successive primes.

The programs for A180131, there is no canonical definition to state claims against.
-/

/-! ## A180131.P7183290967847572294

`A180138(∑[n+2])`
-/

namespace A180131.P7183290967847572294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180131.P7183290967847572294

/-! ## A180131.P8701169516591955782

`and(-1, A180138(A000096(n+1)))`
-/

namespace A180131.P8701169516591955782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A180138 (A000096 (n + 1)).toNat)

end

end A180131.P8701169516591955782

/-! ## A180131.P845006726971762426

`A000027(A180138(A055998(n)+2))`
-/

namespace A180131.P845006726971762426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A180138 (A055998 n + 2).toNat).toNat

end

end A180131.P845006726971762426

/-! ## A180131.P16983246191395582715

`A180138(A000096(n+1))%A002149(n)`
-/

namespace A180131.P16983246191395582715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180138 (A000096 (n + 1)).toNat) (A002149 n)

end

end A180131.P16983246191395582715

/-! ## A180131.P17027269737102843570

`A180138(A055998(n)+2)%A017152(n)`
-/

namespace A180131.P17027269737102843570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180138 (A055998 n + 2).toNat) (A017152 n)

end

end A180131.P17027269737102843570

/-! ## A180131.P5725571666759838712

`or(A000007(n), A180138(A000096(n+1)))`
-/

namespace A180131.P5725571666759838712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A180138 (A000096 (n + 1)).toNat)

end

end A180131.P5725571666759838712

/-! ## A180131.P9069145153672250254

`abs(A106400(n)*A180138(A000096(n+1)))`
-/

namespace A180131.P9069145153672250254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106400 n * A180138 (A000096 (n + 1)).toNat|

end

end A180131.P9069145153672250254

/-! ## A180131.P2042435411525794570

`A180138(A000096(n+1))+A008683(8*(n+1))`
-/

namespace A180131.P2042435411525794570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A000096 (n + 1)).toNat + A008683 (8 * (n + 1))

end

end A180131.P2042435411525794570

/-! ## A180131.P771439298452784104

`A014963(4*n+6)*A180138(A000096(n+1))`
-/

namespace A180131.P771439298452784104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A180138 (A000096 (n + 1)).toNat

end

end A180131.P771439298452784104

/-! ## A180131.P9082472111717001097

`A180138(A055998(n)+2)+C(2, A000203(n+2))`
-/

namespace A180131.P9082472111717001097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A055998 n + 2).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A180131.P9082472111717001097

/-! ## A180131.P3676342629744188094

`A180138(A055998(n)+2)+A008683(Δ[(14*n)²])`
-/

namespace A180131.P3676342629744188094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (14 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A055998 n + 2).toNat + A008683 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A180131.P3676342629744188094

/-! ## A180131.P7453231120050174416

`A010892(A165988(n))²*A180138(A055998(n)+2)`
-/

namespace A180131.P7453231120050174416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A165988 n).toNat ^ 2 * A180138 (A055998 n + 2).toNat

end

end A180131.P7453231120050174416

/-!
# A180132: Smallest k such that k*5^n is a sum of two successive primes.

The programs for A180132, there is no canonical definition to state claims against.
-/

/-! ## A180132.P2997084240155134889

`A180138(∑[n+4]+3)`
-/

namespace A180132.P2997084240155134889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A180132.P2997084240155134889

/-! ## A180132.P17203084659087539391

`or(char[1], A180138(A027379(n+2)))`
-/

namespace A180132.P17203084659087539391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A180138 (A027379 (n + 2)).toNat)

end

end A180132.P17203084659087539391

/-! ## A180132.P14365492219830922075

`or(char[1], A180138(A055998(n+2)))`
-/

namespace A180132.P14365492219830922075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A180138 (A055998 (n + 2)).toNat)

end

end A180132.P14365492219830922075

/-! ## A180132.P13651766753915224906

`or(char[1], A180138(A000096(n+3)-2))`
-/

namespace A180132.P13651766753915224906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A180138 (A000096 (n + 3) - 2).toNat)

end

end A180132.P13651766753915224906

/-! ## A180132.P4760883502177583265

`A180138(A055998(n+2))%A142241(n)`
-/

namespace A180132.P4760883502177583265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180138 (A055998 (n + 2)).toNat) (A142241 n)

end

end A180132.P4760883502177583265

/-! ## A180132.P1001621078312228203

`A180138(A027379(n+2))%A000124(n+5)`
-/

namespace A180132.P1001621078312228203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180138 (A027379 (n + 2)).toNat) (A000124 (n + 5))

end

end A180132.P1001621078312228203

/-! ## A180132.P3187250416158054692

`A180138(A000096(n+3)-2)%(9*A000040(n+1))`
-/

namespace A180132.P3187250416158054692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180138 (A000096 (n + 3) - 2).toNat) (9 * A000040 (n + 1))

end

end A180132.P3187250416158054692

/-! ## A180132.P7591445398165759806

`A180138(A027379(n+2))+(n+1)%A020639(n+1)`
-/

namespace A180132.P7591445398165759806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A027379 (n + 2)).toNat + Int.tmod (n + 1 : ℤ) (A020639 (n + 1))

end

end A180132.P7591445398165759806

/-!
# A180133: Smallest k such that k*6^n is a sum of two successive primes.

The programs for A180133, there is no canonical definition to state claims against.
-/

/-! ## A180133.P8064453744206198274

`A180138(∑[n+5]+6)`
-/

namespace A180133.P8064453744206198274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A180133.P8064453744206198274

/-! ## A180133.P7307408072631152668

`and(-1, A180138(Δ[A023545(n+1)]))`
-/

namespace A180133.P7307408072631152668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A180138 (f1 (n + 1) - f1 n).toNat)

end

end A180133.P7307408072631152668

/-! ## A180133.P4117725173294091068

`A180138(Δ[A023545(n+1)])%A017245(n)`
-/

namespace A180133.P4117725173294091068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180138 (f1 (n + 1) - f1 n).toNat) (A017245 n)

end

end A180133.P4117725173294091068

/-! ## A180133.P3933826143230244518

`A180138(Δ[A023545(n+1)])+A000007(n+1)`
-/

namespace A180133.P3933826143230244518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A180133.P3933826143230244518

/-! ## A180133.P10706634526360043291

`A054977(n+1)*A180138(Δ[A023545(n+1)])`
-/

namespace A180133.P10706634526360043291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A180138 (f1 (n + 1) - f1 n).toNat

end

end A180133.P10706634526360043291

/-! ## A180133.P12565249028582362768

`A180138(A000217(n+5)-4)%A106499(n+1)`
-/

namespace A180133.P12565249028582362768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180138 (A000217 (n + 5) - 4).toNat) (A106499 (n + 1))

end

end A180133.P12565249028582362768

/-! ## A180133.P688863393620318013

`A000040(n+2)%2*A180138(Δ[A023545(n+1)])`
-/

namespace A180133.P688863393620318013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A180138 (f1 (n + 1) - f1 n).toNat

end

end A180133.P688863393620318013

/-! ## A180133.P4768026491689821135

`A014963(39*(n+1))*A180138(Δ[A023545(n+1)])`
-/

namespace A180133.P4768026491689821135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (39 * (n + 1)) * A180138 (f1 (n + 1) - f1 n).toNat

end

end A180133.P4768026491689821135

/-!
# A180134: Smallest k such that k*7^n is a sum of two successive primes.

The programs for A180134, there is no canonical definition to state claims against.
-/

/-! ## A180134.P1638850701937581922

`A180138(∑[n+6]+10)`
-/

namespace A180134.P1638850701937581922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A180134.P1638850701937581922

/-!
# A180135: Smallest k such that k*11^n is a sum of two successive primes.

The programs for A180135, there is no canonical definition to state claims against.
-/

/-! ## A180135.P13737313417064934933

`A180138(Δ[A101853(n+5)])`
-/

namespace A180135.P13737313417064934933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (f1 (n + 1) - f1 n).toNat

end

end A180135.P13737313417064934933

/-! ## A180135.P4780806798206531527

`A180138(A055999(n+7)-3)`
-/

namespace A180135.P4780806798206531527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A055999 (n + 7) - 3).toNat

end

end A180135.P4780806798206531527

/-! ## A180135.P14459945879586533142

`A180138(A052905(n+7)-4)`
-/

namespace A180135.P14459945879586533142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A052905 (n + 7) - 4).toNat

end

end A180135.P14459945879586533142

/-! ## A180135.P14038110669157916405

`A180138(A046691(n+8)-5)`
-/

namespace A180135.P14038110669157916405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A046691 (n + 8) - 5).toNat

end

end A180135.P14038110669157916405

/-! ## A180135.P18005188897328222755

`A180138(A027379(n+8)-6)`
-/

namespace A180135.P18005188897328222755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A027379 (n + 8) - 6).toNat

end

end A180135.P18005188897328222755

/-! ## A180135.P13969691986790685330

`A180138(A000124(n+10)-10)`
-/

namespace A180135.P13969691986790685330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A000124 (n + 10) - 10).toNat

end

end A180135.P13969691986790685330

/-! ## A180135.P10764804715033177099

`A180138(A166136(n+9)-15)`
-/

namespace A180135.P10764804715033177099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A166136 (n + 9) - 15).toNat

end

end A180135.P10764804715033177099

/-!
# A180136: Smallest k such that k*12^n is a sum of two successive primes.

The programs for A180136, there is no canonical definition to state claims against.
-/

/-! ## A180136.P3151350015170033729

`A180138(A056000(n+7))`
-/

namespace A180136.P3151350015170033729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A056000 (n + 7)).toNat

end

end A180136.P3151350015170033729

/-! ## A180136.P13850613617736843057

`A180138(A000124(n+11)-11)`
-/

namespace A180136.P13850613617736843057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A000124 (n + 11) - 11).toNat

end

end A180136.P13850613617736843057

/-! ## A180136.P13338146911303364090

`A180138(A000217(n+10)+n+1)`
-/

namespace A180136.P13338146911303364090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A000217 (n + 10) + (n + 1 : ℤ)).toNat

end

end A180136.P13338146911303364090

/-! ## A180136.P16965113844138490157

`A180138(A027379(n+8)+n+4)`
-/

namespace A180136.P16965113844138490157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A027379 (n + 8) + (n + 4 : ℤ)).toNat

end

end A180136.P16965113844138490157

/-! ## A180136.P6484283540343051348

`A180138(A055999(n+7)+n+7)`
-/

namespace A180136.P6484283540343051348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A055999 (n + 7) + (n + 7 : ℤ)).toNat

end

end A180136.P6484283540343051348

/-! ## A180136.P5028504504635613309

`A180138(A166136(n+8)+A005408(n+2))`
-/

namespace A180136.P5028504504635613309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A166136 (n + 8) + A005408 (n + 2)).toNat

end

end A180136.P5028504504635613309

/-! ## A180136.P15433520292099455273

`A180138(A034856(n+8)+A005408(n+6))`
-/

namespace A180136.P15433520292099455273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A034856 (n + 8) + A005408 (n + 6)).toNat

end

end A180136.P15433520292099455273

/-! ## A180136.P6200815736339304879

`A180138(A046691(n+7)+A005408(n+7))`
-/

namespace A180136.P6200815736339304879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A046691 (n + 7) + A005408 (n + 7)).toNat

end

end A180136.P6200815736339304879

/-!
# A180137: Smallest k such that k*13^n is a sum of two successive primes.

The programs for A180137, there is no canonical definition to state claims against.
-/

/-! ## A180137.P12206653637811836322

`A180138(A055999(n+9)-5)`
-/

namespace A180137.P12206653637811836322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A055999 (n + 9) - 5).toNat

end

end A180137.P12206653637811836322

/-! ## A180137.P169982176851184074

`A180138(A000124(n+12)-12)`
-/

namespace A180137.P169982176851184074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A000124 (n + 12) - 12).toNat

end

end A180137.P169982176851184074

/-! ## A180137.P5732438328383297322

`A180138(A161680(n+12)+n+1)`
-/

namespace A180137.P5732438328383297322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (A161680 (n + 12) + (n + 1 : ℤ)).toNat

end

end A180137.P5732438328383297322

/-! ## A180137.P11715371552797836011

`A180138(eq[11, A193592(n)])`
-/

namespace A180137.P11715371552797836011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180138 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180137.P11715371552797836011

/-!
# A180138: Table, t, read by antidiagonals: t(b,e) is the smallest k such that k*b^e is a sum of two successive primes.

The programs for A180138, there is no canonical definition to state claims against.
-/

/-! ## A180138.P10564809289259794058

`A033478(A195278(n+1)+A053383(n))`
-/

namespace A180138.P10564809289259794058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033478 (A195278 (n + 1) + A053383 n).toNat

end

end A180138.P10564809289259794058

/-!
# A180139: a(n)=A179387(n)+1.

The programs for A180139, there is no canonical definition to state claims against.
-/

/-! ## A180139.P17869575116827225450

`A179387(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A180139.P17869575116827225450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179387 (n + 1) + 1

end

end A180139.P17869575116827225450

/-! ## A180139.P13479156161476228854

`ceil(root(A179388(n+1), 3)²)+1`
-/

namespace A180139.P13479156161476228854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A179388 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) ^ 2⌉ + 1

end

end A180139.P13479156161476228854

/-! ## A180139.P15329644016285076904

`A020725(A179387(n+1))`
-/

namespace A180139.P15329644016285076904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A179387 (n + 1)).toNat

end

end A180139.P15329644016285076904

/-! ## A180139.P12602962245470363503

`A020725(ceil(root(A179388(n+1), 3)²))`
-/

namespace A180139.P12602962245470363503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 ⌈((A179388 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) ^ 2⌉.toNat

end

end A180139.P12602962245470363503

/-! ## A180139.P1683316889242472659

`A394624(A179386(n+1))+1`
-/

namespace A180139.P1683316889242472659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394624 (A179386 (n + 1)).toNat + 1

end

end A180139.P1683316889242472659

/-!
# A180140: Eight rooks and one berserker on a 3 X 3 chessboard. G.f.: (1+x+x^2)/(1-3*x-5*x^2).

The programs for A180140, the canonical program `A180140.P9269115575225649930` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180140 has offset 0).

The definition of A180140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180140.P9269115575225649930

`3*a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=4, a(2)=18`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180140

/-- `3*a(n-1)+5*a(n-2)` -/
def P9269115575225649930.Spec : Prop :=
  ∀ n, (P9269115575225649930.a n : ℤ) = A180140 n

theorem P9269115575225649930.correct : P9269115575225649930.Spec := by
  intro n
  simp only [A180140]

end A180140

/-! ## A180140.P1897772469667714073

`ogf((1+x+x^2)/(1-3x-5x^2))`
-/

namespace A180140.P1897772469667714073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -3, -5] n

end

end A180140.P1897772469667714073

namespace A180140

/-- `ogf((1+x+x^2)/(1-3x-5x^2))` -/
def P1897772469667714073.Spec : Prop :=
  ∀ n, P1897772469667714073.a n = A180140 n

end A180140

/-!
# A180141: Eight rooks and one berserker on a 3 X 3 chessboard. G.f.: (1 + x - 2*x^2)/(1 - 3*x - 6*x^2).

The programs for A180141, the canonical program `A180141.P17295838885344035598` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180141 has offset 0).

The definition of A180141 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180141.P17295838885344035598

`3*a(n-1)+6*a(n-2)` with `a(0)=1, a(1)=4, a(2)=16`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180141

/-- `3*a(n-1)+6*a(n-2)` -/
def P17295838885344035598.Spec : Prop :=
  ∀ n, (P17295838885344035598.a n : ℤ) = A180141 n

theorem P17295838885344035598.correct : P17295838885344035598.Spec := by
  intro n
  simp only [A180141]

end A180141

/-! ## A180141.P6048584360263923317

`ogf((1+x-2x^2)/(1-3x-6x^2))`
-/

namespace A180141.P6048584360263923317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2] [1, -3, -6] n

end

end A180141.P6048584360263923317

namespace A180141

/-- `ogf((1+x-2x^2)/(1-3x-6x^2))` -/
def P6048584360263923317.Spec : Prop :=
  ∀ n, P6048584360263923317.a n = A180141 n

end A180141

/-! ## A180141.P4279324831289333980

`Δ[A154964(n)]+C(2, n+2)`
-/

namespace A180141.P4279324831289333980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A180141.P4279324831289333980

namespace A180141

/-- `Δ[A154964(n)]+C(2, n+2)` -/
def P4279324831289333980.Spec : Prop :=
  ∀ n, P4279324831289333980.a n = A180141 n

end A180141

/-! ## A180141.P2890055743712480421

`A000007(n)+Δ[A154964(n)]`
-/

namespace A180141.P2890055743712480421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A180141.P2890055743712480421

namespace A180141

/-- `A000007(n)+Δ[A154964(n)]` -/
def P2890055743712480421.Spec : Prop :=
  ∀ n, P2890055743712480421.a n = A180141 n

end A180141

/-! ## A180141.P7316390101248793776

`Δ[A154964(n)+A007051(n)%3]`
-/

namespace A180141.P7316390101248793776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154964 n + Int.tmod (A007051 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180141.P7316390101248793776

namespace A180141

/-- `Δ[A154964(n)+A007051(n)%3]` -/
def P7316390101248793776.Spec : Prop :=
  ∀ n, P7316390101248793776.a n = A180141 n

end A180141

/-! ## A180141.P11098405782103436850

`A154964(n+1)+A000007(n)-A154964(n)`
-/

namespace A180141.P11098405782103436850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154964 (n + 1) + (A000007 n - A154964 n)

end

end A180141.P11098405782103436850

namespace A180141

/-- `A154964(n+1)+A000007(n)-A154964(n)` -/
def P11098405782103436850.Spec : Prop :=
  ∀ n, P11098405782103436850.a n = A180141 n

end A180141

/-! ## A180141.P1690038812509494076

`Δ[A154964(n)%A002310(n)]`
-/

namespace A180141.P1690038812509494076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154964 n) (A002310 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180141.P1690038812509494076

namespace A180141

/-- `Δ[A154964(n)%A002310(n)]` -/
def P1690038812509494076.Spec : Prop :=
  ∀ n, P1690038812509494076.a n = A180141 n

end A180141

/-! ## A180141.P5873087652613068028

`Δ[A154964(n)+A000122(n²)]`
-/

namespace A180141.P5873087652613068028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154964 n + A000122 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180141.P5873087652613068028

namespace A180141

/-- `Δ[A154964(n)+A000122(n²)]` -/
def P5873087652613068028.Spec : Prop :=
  ∀ n, P5873087652613068028.a n = A180141 n

end A180141

/-!
# A180142: Eight rooks and one berserker on a 3 X 3 chessboard. G.f.: (1 + x - x^2)/(1 - 3*x - 3*x^2).

The programs for A180142, the canonical program `A180142.P6829096858064985700` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180142 has offset 0).

The definition of A180142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180142.P6829096858064985700

`3*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=4, a(2)=14`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180142

/-- `3*a(n-1)+3*a(n-2)` -/
def P6829096858064985700.Spec : Prop :=
  ∀ n, (P6829096858064985700.a n : ℤ) = A180142 n

theorem P6829096858064985700.correct : P6829096858064985700.Spec := by
  intro n
  simp only [A180142]

end A180142

/-! ## A180142.P3096700580118493725

`ogf((1+x-x^2)/(1-3x-3x^2))`
-/

namespace A180142.P3096700580118493725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -3, -3] n

end

end A180142.P3096700580118493725

namespace A180142

/-- `ogf((1+x-x^2)/(1-3x-3x^2))` -/
def P3096700580118493725.Spec : Prop :=
  ∀ n, P3096700580118493725.a n = A180142 n

end A180142

/-! ## A180142.P14945097241821232589

`3*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=4, a(2)=14`
-/

namespace A180142.P14945097241821232589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 14] fun n a =>
  3 * (a (n - 1) + a (n - 2))

end

end A180142.P14945097241821232589

namespace A180142

/-- `3*(a(n-1)+a(n-2))` -/
def P14945097241821232589.Spec : Prop :=
  ∀ n, (P14945097241821232589.a n : ℤ) = A180142 n

theorem P14945097241821232589.correct : P14945097241821232589.Spec := by
  intro n
  simp only [A180142, Nat.add_sub_cancel, A180142.P14945097241821232589.a, A180142.P6829096858064985700.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A180142

/-! ## A180142.P17972610149508794058

`ceil(2/3*A134927(n+1))`
-/

namespace A180142.P17972610149508794058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) / 3 * (A134927 (n + 1) : ℚ)⌉

end

end A180142.P17972610149508794058

namespace A180142

/-- `ceil(2/3*A134927(n+1))` -/
def P17972610149508794058.Spec : Prop :=
  ∀ n, P17972610149508794058.a n = A180142 n

end A180142

/-! ## A180142.P15494196159496536739

`A155116(n+1)-A123620(n)`
-/

namespace A180142.P15494196159496536739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155116 (n + 1) - A123620 n

end

end A180142.P15494196159496536739

namespace A180142

/-- `A155116(n+1)-A123620(n)` -/
def P15494196159496536739.Spec : Prop :=
  ∀ n, P15494196159496536739.a n = A180142 n

end A180142

/-! ## A180142.P16783922571519323705

`A155116(n)+2*A030195(n)`
-/

namespace A180142.P16783922571519323705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155116 n + 2 * A030195 n

end

end A180142.P16783922571519323705

namespace A180142

/-- `A155116(n)+2*A030195(n)` -/
def P16783922571519323705.Spec : Prop :=
  ∀ n, P16783922571519323705.a n = A180142 n

end A180142

/-! ## A180142.P8205243971823761944

`2*A125145(n)-A123620(n)`
-/

namespace A180142.P8205243971823761944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125145 n - A123620 n

end

end A180142.P8205243971823761944

namespace A180142

/-- `2*A125145(n)-A123620(n)` -/
def P8205243971823761944.Spec : Prop :=
  ∀ n, P8205243971823761944.a n = A180142 n

end A180142

/-! ## A180142.P12411114837180327988

`A000079(n)/A003945(n)*A108306(n)`
-/

namespace A180142.P12411114837180327988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A003945 n : ℚ) * (A108306 n : ℚ)

end

end A180142.P12411114837180327988

namespace A180142

/-- `A000079(n)/A003945(n)*A108306(n)` -/
def P12411114837180327988.Spec : Prop :=
  ∀ n, P12411114837180327988.a n = (A180142 n : ℚ)

end A180142

/-! ## A180142.P6899873378165388186

`Δ[A196472(n+1)]-A123620(n)`
-/

namespace A180142.P6899873378165388186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A123620 n

end

end A180142.P6899873378165388186

namespace A180142

/-- `Δ[A196472(n+1)]-A123620(n)` -/
def P6899873378165388186.Spec : Prop :=
  ∀ n, P6899873378165388186.a n = A180142 n

end A180142

/-!
# A180143: Eight rooks and one berserker on a 3 X 3 chessboard. G.f.: (1 + x^2)/(1 - 4*x + x^2 + 2*x^3).

The programs for A180143, the canonical program `A180143.P11184966964472110529` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180143 has offset 0).

The definition of A180143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180143.P2522768059494964308

`ogf((1+x^2)/(1-4x+x^2+2x^3))`
-/

namespace A180143.P2522768059494964308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -4, 1, 2] n

end

end A180143.P2522768059494964308

namespace A180143

/-- `ogf((1+x^2)/(1-4x+x^2+2x^3))` -/
def P2522768059494964308.Spec : Prop :=
  ∀ n, P2522768059494964308.a n = A180143 n

end A180143

/-! ## A180143.P11184966964472110529

`2*(a(n-2)+1)+3*a(n-1)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180143

/-- `2*(a(n-2)+1)+3*a(n-1)` -/
def P11184966964472110529.Spec : Prop :=
  ∀ n, (P11184966964472110529.a n : ℤ) = A180143 n

theorem P11184966964472110529.correct : P11184966964472110529.Spec := by
  intro n
  simp only [A180143]

end A180143

/-! ## A180143.P3511624607938047708

`3*A193653(n)-2`
-/

namespace A180143.P3511624607938047708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A193653 n - 2

end

end A180143.P3511624607938047708

namespace A180143

/-- `3*A193653(n)-2` -/
def P3511624607938047708.Spec : Prop :=
  ∀ n, P3511624607938047708.a n = A180143 n

end A180143

/-! ## A180143.P17968993091001221029

`floor(3/2*A007482(n))`
-/

namespace A180143.P17968993091001221029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (A007482 n : ℚ)⌋

end

end A180143.P17968993091001221029

namespace A180143

/-- `floor(3/2*A007482(n))` -/
def P17968993091001221029.Spec : Prop :=
  ∀ n, P17968993091001221029.a n = A180143 n

end A180143

/-! ## A180143.P9626210804343238695

`floor(3*A007455(2*n)/2)`
-/

namespace A180143.P9626210804343238695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((A007455 (2 * n) : ℚ) / 2)⌋

end

end A180143.P9626210804343238695

namespace A180143

/-- `floor(3*A007455(2*n)/2)` -/
def P9626210804343238695.Spec : Prop :=
  ∀ n, P9626210804343238695.a n = A180143 n

end A180143

/-! ## A180143.P1433168954728276224

`floor(3*A007481(2*n)/2)`
-/

namespace A180143.P1433168954728276224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((A007481 (2 * n) : ℚ) / 2)⌋

end

end A180143.P1433168954728276224

namespace A180143

/-- `floor(3*A007481(2*n)/2)` -/
def P1433168954728276224.Spec : Prop :=
  ∀ n, P1433168954728276224.a n = A180143 n

end A180143

/-! ## A180143.P5810128659305441375

`A230269(n+1)+A055099(n)`
-/

namespace A180143.P5810128659305441375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230269 (n + 1) + A055099 n

end

end A180143.P5810128659305441375

namespace A180143

/-- `A230269(n+1)+A055099(n)` -/
def P5810128659305441375.Spec : Prop :=
  ∀ n, P5810128659305441375.a n = A180143 n

end A180143

/-! ## A180143.P17584653067993792191

`A230269(n+2)+A104934(n)`
-/

namespace A180143.P17584653067993792191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230269 (n + 2) + A104934 n

end

end A180143.P17584653067993792191

namespace A180143

/-- `A230269(n+2)+A104934(n)` -/
def P17584653067993792191.Spec : Prop :=
  ∀ n, P17584653067993792191.a n = A180143 n

end A180143

/-! ## A180143.P9021670827609650474

`A104934(n)+∑[A106434(n+1)]`
-/

namespace A180143.P9021670827609650474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104934 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180143.P9021670827609650474

namespace A180143

/-- `A104934(n)+∑[A106434(n+1)]` -/
def P9021670827609650474.Spec : Prop :=
  ∀ n, P9021670827609650474.a n = A180143 n

end A180143

/-! ## A180143.P13048874306873763420

`∑[A007482(n)]+A230269(n+1)/2`
-/

namespace A180143.P13048874306873763420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007482 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (A230269 (n + 1) : ℚ) / 2

end

end A180143.P13048874306873763420

namespace A180143

/-- `∑[A007482(n)]+A230269(n+1)/2` -/
def P13048874306873763420.Spec : Prop :=
  ∀ n, P13048874306873763420.a n = (A180143 n : ℚ)

end A180143

/-! ## A180143.P7541836113545532335

`4*a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=4, a(2)=16`
-/

namespace A180143.P7541836113545532335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 16] fun n a =>
  4 * a (n - 1) - a (n - 2) - 2 * a (n - 3)

end

end A180143.P7541836113545532335

namespace A180143

/-- `4*a(n-1)-a(n-2)-2*a(n-3)` -/
def P7541836113545532335.Spec : Prop :=
  ∀ n, P7541836113545532335.a n = A180143 n

end A180143

/-! ## A180143.P4815833155650419650

`(Δ[A180144(n)]-1)/2`
-/

namespace A180143.P4815833155650419650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180144 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1 : ℚ) / 2

end

end A180143.P4815833155650419650

namespace A180143

/-- `(Δ[A180144(n)]-1)/2` -/
def P4815833155650419650.Spec : Prop :=
  ∀ n, P4815833155650419650.a n = (A180143 n : ℚ)

end A180143

/-! ## A180143.P4205078474470763434

`A106434(n+2)-A193653(n)`
-/

namespace A180143.P4205078474470763434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106434 (n + 2) - A193653 n

end

end A180143.P4205078474470763434

namespace A180143

/-- `A106434(n+2)-A193653(n)` -/
def P4205078474470763434.Spec : Prop :=
  ∀ n, P4205078474470763434.a n = A180143 n

end A180143

/-! ## A180143.P7438950663593438209

`A230269(n+1)+Δ[A193653(n)]`
-/

namespace A180143.P7438950663593438209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230269 (n + 1) + (f1 (n + 1) - f1 n)

end

end A180143.P7438950663593438209

namespace A180143

/-- `A230269(n+1)+Δ[A193653(n)]` -/
def P7438950663593438209.Spec : Prop :=
  ∀ n, P7438950663593438209.a n = A180143 n

end A180143

/-! ## A180143.P14671745071638584505

`∑[A106434(n+2)]-A055099(n)`
-/

namespace A180143.P14671745071638584505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106434 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A055099 n

end

end A180143.P14671745071638584505

namespace A180143

/-- `∑[A106434(n+2)]-A055099(n)` -/
def P14671745071638584505.Spec : Prop :=
  ∀ n, P14671745071638584505.a n = A180143 n

end A180143

/-! ## A180143.P1062585582308242023

`∑[2*A007482(n)]-A055099(n)`
-/

namespace A180143.P1062585582308242023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A055099 n

end

end A180143.P1062585582308242023

namespace A180143

/-- `∑[2*A007482(n)]-A055099(n)` -/
def P1062585582308242023.Spec : Prop :=
  ∀ n, P1062585582308242023.a n = A180143 n

end A180143

/-!
# A180144: Eight rooks and one berserker on a 3 X 3 chessboard. G.f.: (1 - 2*x^2)/(1 - 4*x + x^2 + 2*x^3).

The programs for A180144, the canonical program `A180144.P15843901264973414733` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180144 has offset 0).

The definition of A180144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180144.P4532584475791517493

`ogf((1-2x^2)/(1-4x+x^2+2x^3))`
-/

namespace A180144.P4532584475791517493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, -4, 1, 2] n

end

end A180144.P4532584475791517493

namespace A180144

/-- `ogf((1-2x^2)/(1-4x+x^2+2x^3))` -/
def P4532584475791517493.Spec : Prop :=
  ∀ n, P4532584475791517493.a n = A180144 n

end A180144

/-! ## A180144.P15843901264973414733

`2*a(n-2)+3*a(n-1)-1` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180144

/-- `2*a(n-2)+3*a(n-1)-1` -/
def P15843901264973414733.Spec : Prop :=
  ∀ n, P15843901264973414733.a n = A180144 n

theorem P15843901264973414733.correct : P15843901264973414733.Spec := by
  intro n
  simp only [A180144]

end A180144

/-! ## A180144.P11506311758343239220

`2*a(n-2)-(1-3*a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A180144.P11506311758343239220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * a (n - 2) - (1 - 3 * a (n - 1))

end

end A180144.P11506311758343239220

namespace A180144

/-- `2*a(n-2)-(1-3*a(n-1))` -/
def P11506311758343239220.Spec : Prop :=
  ∀ n, P11506311758343239220.a n = A180144 n

theorem P11506311758343239220.correct : P11506311758343239220.Spec := by
  intro n
  simp only [A180144, Nat.add_sub_cancel, A180144.P11506311758343239220.a, A180144.P15843901264973414733.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A180144

/-! ## A180144.P7822632308345358110

`ceil(3/4*A007483(n))`
-/

namespace A180144.P7822632308345358110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) / 4 * (A007483 n : ℚ)⌉

end

end A180144.P7822632308345358110

namespace A180144

/-- `ceil(3/4*A007483(n))` -/
def P7822632308345358110.Spec : Prop :=
  ∀ n, P7822632308345358110.a n = A180144 n

end A180144

/-! ## A180144.P10879333986129124767

`A180143(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A180144.P10879333986129124767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A180143 n + (1 - a (n - 1))

end

end A180144.P10879333986129124767

namespace A180144

/-- `A180143(n)+1-a(n-1)` -/
def P10879333986129124767.Spec : Prop :=
  ∀ n, P10879333986129124767.a n = A180144 n

end A180144

/-! ## A180144.P15722153268668310808

`A106434(n+1)+A052986(n)`
-/

namespace A180144.P15722153268668310808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106434 (n + 1) + A052986 n

end

end A180144.P15722153268668310808

namespace A180144

/-- `A106434(n+1)+A052986(n)` -/
def P15722153268668310808.Spec : Prop :=
  ∀ n, P15722153268668310808.a n = A180144 n

end A180144

/-! ## A180144.P3486192309167848189

`∑[A007482(n)]-A230269(n+1)`
-/

namespace A180144.P3486192309167848189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A230269 (n + 1)

end

end A180144.P3486192309167848189

namespace A180144

/-- `∑[A007482(n)]-A230269(n+1)` -/
def P3486192309167848189.Spec : Prop :=
  ∀ n, P3486192309167848189.a n = A180144 n

end A180144

/-! ## A180144.P5836259257655802535

`A055099(n)-A230269(n+1)/2`
-/

namespace A180144.P5836259257655802535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055099 n : ℚ) - (A230269 (n + 1) : ℚ) / 2

end

end A180144.P5836259257655802535

namespace A180144

/-- `A055099(n)-A230269(n+1)/2` -/
def P5836259257655802535.Spec : Prop :=
  ∀ n, P5836259257655802535.a n = (A180144 n : ℚ)

end A180144

/-! ## A180144.P13083695122776679445

`A007483(n)+A052986(n)-A007482(n)`
-/

namespace A180144.P13083695122776679445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007483 n + (A052986 n - A007482 n)

end

end A180144.P13083695122776679445

namespace A180144

/-- `A007483(n)+A052986(n)-A007482(n)` -/
def P13083695122776679445.Spec : Prop :=
  ∀ n, P13083695122776679445.a n = A180144 n

end A180144

/-! ## A180144.P15459584601823017356

`A055099(n)+A055099(n)-∑[A007482(n)]`
-/

namespace A180144.P15459584601823017356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055099 n + (A055099 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180144.P15459584601823017356

namespace A180144

/-- `A055099(n)+A055099(n)-∑[A007482(n)]` -/
def P15459584601823017356.Spec : Prop :=
  ∀ n, P15459584601823017356.a n = A180144 n

end A180144

/-! ## A180144.P9535479032045191137

`A052986(n+1)-A007482(n)`
-/

namespace A180144.P9535479032045191137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052986 (n + 1) - A007482 n

end

end A180144.P9535479032045191137

namespace A180144

/-- `A052986(n+1)-A007482(n)` -/
def P9535479032045191137.Spec : Prop :=
  ∀ n, P9535479032045191137.a n = A180144 n

end A180144

/-! ## A180144.P8099056945487139742

`A104934(n+1)-∑[A007482(n)]`
-/

namespace A180144.P8099056945487139742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104934 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180144.P8099056945487139742

namespace A180144

/-- `A104934(n+1)-∑[A007482(n)]` -/
def P8099056945487139742.Spec : Prop :=
  ∀ n, P8099056945487139742.a n = A180144 n

end A180144

/-! ## A180144.P14318227186301941459

`2*A055099(n)-∑[A007482(n)]`
-/

namespace A180144.P14318227186301941459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055099 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180144.P14318227186301941459

namespace A180144

/-- `2*A055099(n)-∑[A007482(n)]` -/
def P14318227186301941459.Spec : Prop :=
  ∀ n, P14318227186301941459.a n = A180144 n

end A180144

/-! ## A180144.P7926013587667240379

`(Δ[A180143(n)]-A180143(n))/2`
-/

namespace A180144.P7926013587667240379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180143 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A180143 n : ℚ) / 2

end

end A180144.P7926013587667240379

namespace A180144

/-- `(Δ[A180143(n)]-A180143(n))/2` -/
def P7926013587667240379.Spec : Prop :=
  ∀ n, P7926013587667240379.a n = (A180144 n : ℚ)

end A180144

/-! ## A180144.P13152396304078528241

`A052986(n+1)-A007481(2*n)`
-/

namespace A180144.P13152396304078528241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052986 (n + 1) - A007481 (2 * n)

end

end A180144.P13152396304078528241

namespace A180144

/-- `A052986(n+1)-A007481(2*n)` -/
def P13152396304078528241.Spec : Prop :=
  ∀ n, P13152396304078528241.a n = A180144 n

end A180144

/-! ## A180144.P14124480961747599793

`Δ[A193653(n)]-A230269(n+1)/2`
-/

namespace A180144.P14124480961747599793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193653 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (A230269 (n + 1) : ℚ) / 2

end

end A180144.P14124480961747599793

namespace A180144

/-- `Δ[A193653(n)]-A230269(n+1)/2` -/
def P14124480961747599793.Spec : Prop :=
  ∀ n, P14124480961747599793.a n = (A180144 n : ℚ)

end A180144

/-!
# A180145: Eight rooks and one berserker on a 3 X 3 chessboard. G.f.: (1 - 3*x^2)/(1 - 4*x - 3*x^2 + 6*x^3).

The programs for A180145, the canonical program `A180145.P7816460576863047461` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180145 has offset 0).

The definition of A180145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180145.P7816460576863047461

`4*a(n-1)+3*a(n-2)-6*a(n-3)` with `a(0)=1, a(1)=4, a(2)=16`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180145

/-- `4*a(n-1)+3*a(n-2)-6*a(n-3)` -/
def P7816460576863047461.Spec : Prop :=
  ∀ n, P7816460576863047461.a n = A180145 n

theorem P7816460576863047461.correct : P7816460576863047461.Spec := by
  intro n
  simp only [A180145]

end A180145

/-! ## A180145.P14808036641555759811

`∑[ogf((-1+3x^2)/(-1+3x+6x^2))]`
-/

namespace A180145.P14808036641555759811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -3, -6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180145.P14808036641555759811

namespace A180145

/-- `∑[ogf((-1+3x^2)/(-1+3x+6x^2))]` -/
def P14808036641555759811.Spec : Prop :=
  ∀ n, P14808036641555759811.a n = A180145 n

end A180145

/-! ## A180145.P5559573274306144740

`ogf((1-3x^2)/(1-4x-3x^2+6x^3))`
-/

namespace A180145.P5559573274306144740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -4, -3, 6] n

end

end A180145.P5559573274306144740

namespace A180145

/-- `ogf((1-3x^2)/(1-4x-3x^2+6x^3))` -/
def P5559573274306144740.Spec : Prop :=
  ∀ n, P5559573274306144740.a n = A180145 n

end A180145

/-! ## A180145.P14857541971051812425

`3*(a(n-1)+2*a(n-2))-2` with `a(0)=1, a(1)=4`
-/

namespace A180145.P14857541971051812425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * (a (n - 1) + 2 * a (n - 2)) - 2

end

end A180145.P14857541971051812425

namespace A180145

/-- `3*(a(n-1)+2*a(n-2))-2` -/
def P14857541971051812425.Spec : Prop :=
  ∀ n, P14857541971051812425.a n = A180145 n

end A180145

/-! ## A180145.P8308897660813421051

`ceil(A180147(n)/2)`
-/

namespace A180145.P8308897660813421051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A180147 n : ℚ) / 2⌉

end

end A180145.P8308897660813421051

namespace A180145

/-- `ceil(A180147(n)/2)` -/
def P8308897660813421051.Spec : Prop :=
  ∀ n, P8308897660813421051.a n = A180145 n

end A180145

/-! ## A180145.P16673887168801314811

`ceil(A083858(n+2)/4)`
-/

namespace A180145.P16673887168801314811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083858 (n + 2) : ℚ) / 4⌉

end

end A180145.P16673887168801314811

namespace A180145

/-- `ceil(A083858(n+2)/4)` -/
def P16673887168801314811.Spec : Prop :=
  ∀ n, P16673887168801314811.a n = A180145 n

end A180145

/-! ## A180145.P3885790164041233254

`floor((∑[Δ[A083858(n+1)]/2]-2)/2)+2`
-/

namespace A180145.P3885790164041233254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083858 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j - 2) / 2⌋ + 2

end

end A180145.P3885790164041233254

namespace A180145

/-- `floor((∑[Δ[A083858(n+1)]/2]-2)/2)+2` -/
def P3885790164041233254.Spec : Prop :=
  ∀ n, P3885790164041233254.a n = A180145 n

end A180145

/-! ## A180145.P9583030563410919679

`floor((∑[A154964(n+1)+A083858(n)]-2)/2)+2`
-/

namespace A180145.P9583030563410919679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154964 (n + 1) + A083858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j - 2 : ℤ) : ℚ) / 2⌋ + 2

end

end A180145.P9583030563410919679

namespace A180145

/-- `floor((∑[A154964(n+1)+A083858(n)]-2)/2)+2` -/
def P9583030563410919679.Spec : Prop :=
  ∀ n, P9583030563410919679.a n = A180145 n

end A180145

/-!
# A180146: Eight rooks and one berserker on a 3 X 3 chessboard. G.f.: 1/(1 - 4*x - 3*x^2 + 6*x^3).

The programs for A180146, the canonical program `A180146.P7853542746952608689` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180146 has offset 0).

The definition of A180146 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180146.P7853542746952608689

`4*a(n-1)+3*a(n-2)-6*a(n-3)` with `a(0)=1, a(1)=4, a(2)=19`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180146

/-- `4*a(n-1)+3*a(n-2)-6*a(n-3)` -/
def P7853542746952608689.Spec : Prop :=
  ∀ n, P7853542746952608689.a n = A180146 n

theorem P7853542746952608689.correct : P7853542746952608689.Spec := by
  intro n
  simp only [A180146]

end A180146

/-! ## A180146.P3922408522473639471

`ogf(1/(1-4x-3x^2+6x^3))`
-/

namespace A180146.P3922408522473639471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, -3, 6] n

end

end A180146.P3922408522473639471

namespace A180146

/-- `ogf(1/(1-4x-3x^2+6x^3))` -/
def P3922408522473639471.Spec : Prop :=
  ∀ n, P3922408522473639471.a n = A180146 n

end A180146

/-! ## A180146.P1227770416693342012

`∑[3*(a(n-1)+2*a(n-2))]` with `a(0)=1, a(1)=3`
-/

namespace A180146.P1227770416693342012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  3 * (f1 (n - 1) + 2 * f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180146.P1227770416693342012

namespace A180146

/-- `∑[3*(a(n-1)+2*a(n-2))]` -/
def P1227770416693342012.Spec : Prop :=
  ∀ n, (P1227770416693342012.a n : ℤ) = A180146 n

end A180146

/-! ## A180146.P13448208170895421647

`3*(a(n-1)+2*a(n-2))+1` with `a(0)=1, a(1)=4`
-/

namespace A180146.P13448208170895421647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * (a (n - 1) + 2 * a (n - 2)) + 1

end

end A180146.P13448208170895421647

namespace A180146

/-- `3*(a(n-1)+2*a(n-2))+1` -/
def P13448208170895421647.Spec : Prop :=
  ∀ n, (P13448208170895421647.a n : ℤ) = A180146 n

end A180146

/-! ## A180146.P9721461330788592116

`∑[3*(2-(2*(1-a(n-2))-a(n-1)))]` with `a(0)=1, a(1)=3`
-/

namespace A180146.P9721461330788592116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  3 * (2 - (2 * (1 - f1 (n - 2)) - f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180146.P9721461330788592116

namespace A180146

/-- `∑[3*(2-(2*(1-a(n-2))-a(n-1)))]` -/
def P9721461330788592116.Spec : Prop :=
  ∀ n, P9721461330788592116.a n = A180146 n

end A180146

/-! ## A180146.P4253840278913663246

`∑[∑[A354131(n)]]`
-/

namespace A180146.P4253840278913663246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354131 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180146.P4253840278913663246

namespace A180146

/-- `∑[∑[A354131(n)]]` -/
def P4253840278913663246.Spec : Prop :=
  ∀ n, P4253840278913663246.a n = A180146 n

end A180146

/-! ## A180146.P15237423200700066899

`∑[A083858(n+1)]`
-/

namespace A180146.P15237423200700066899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180146.P15237423200700066899

namespace A180146

/-- `∑[A083858(n+1)]` -/
def P15237423200700066899.Spec : Prop :=
  ∀ n, P15237423200700066899.a n = A180146 n

end A180146

/-! ## A180146.P8321474642703215129

`∑[record[A083858(abs(1-n))]]`
-/

namespace A180146.P8321474642703215129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083858 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180146.P8321474642703215129

namespace A180146

/-- `∑[record[A083858(abs(1-n))]]` -/
def P8321474642703215129.Spec : Prop :=
  ∀ n, P8321474642703215129.a n = A180146 n

end A180146

/-! ## A180146.P7872571426440954048

`A180147(n)-3*a(n-1)` with `a(0)=1`
-/

namespace A180146.P7872571426440954048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A180147 n - 3 * a (n - 1)

end

end A180146.P7872571426440954048

namespace A180146

/-- `A180147(n)-3*a(n-1)` -/
def P7872571426440954048.Spec : Prop :=
  ∀ n, P7872571426440954048.a n = A180146 n

end A180146

/-!
# A180147: Eight rooks and one berserker on a 3 X 3 chessboard. G.f.: (1 + 3*x)/(1 - 4*x - 3*x^2 + 6*x^3).

The programs for A180147, the canonical program `A180147.P17058351476802208823` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180147 has offset 0).

The definition of A180147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180147.P17058351476802208823

`4*a(n-1)+3*a(n-2)-6*a(n-3)` with `a(0)=1, a(1)=7, a(2)=31`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180147

/-- `4*a(n-1)+3*a(n-2)-6*a(n-3)` -/
def P17058351476802208823.Spec : Prop :=
  ∀ n, P17058351476802208823.a n = A180147 n

theorem P17058351476802208823.correct : P17058351476802208823.Spec := by
  intro n
  simp only [A180147]

end A180147

/-! ## A180147.P13384634859149845771

`ogf((1+3x)/(1-4x-3x^2+6x^3))`
-/

namespace A180147.P13384634859149845771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -4, -3, 6] n

end

end A180147.P13384634859149845771

namespace A180147

/-- `ogf((1+3x)/(1-4x-3x^2+6x^3))` -/
def P13384634859149845771.Spec : Prop :=
  ∀ n, P13384634859149845771.a n = A180147 n

end A180147

/-! ## A180147.P3311154794761664605

`∑[3*(a(n-1)+2*a(n-2))]` with `a(0)=1, a(1)=6`
-/

namespace A180147.P3311154794761664605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  3 * (f1 (n - 1) + 2 * f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180147.P3311154794761664605

namespace A180147

/-- `∑[3*(a(n-1)+2*a(n-2))]` -/
def P3311154794761664605.Spec : Prop :=
  ∀ n, (P3311154794761664605.a n : ℤ) = A180147 n

end A180147

/-! ## A180147.P7851736693597749175

`3*(2*a(n-2)+a(n-1)+1)+1` with `a(0)=1, a(1)=7`
-/

namespace A180147.P7851736693597749175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  3 * (2 * a (n - 2) + (a (n - 1) + 1)) + 1

end

end A180147.P7851736693597749175

namespace A180147

/-- `3*(2*a(n-2)+a(n-1)+1)+1` -/
def P7851736693597749175.Spec : Prop :=
  ∀ n, (P7851736693597749175.a n : ℤ) = A180147 n

end A180147

/-! ## A180147.P1666721935254626578

`∑[3*(2-(2*(1-a(n-2))-a(n-1)))]` with `a(0)=1, a(1)=6`
-/

namespace A180147.P1666721935254626578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  3 * (2 - (2 * (1 - f1 (n - 2)) - f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180147.P1666721935254626578

namespace A180147

/-- `∑[3*(2-(2*(1-a(n-2))-a(n-1)))]` -/
def P1666721935254626578.Spec : Prop :=
  ∀ n, P1666721935254626578.a n = A180147 n

end A180147

/-! ## A180147.P3086882982382047413

`2*A180145(n)-1`
-/

namespace A180147.P3086882982382047413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180145 n - 1

end

end A180147.P3086882982382047413

namespace A180147

/-- `2*A180145(n)-1` -/
def P3086882982382047413.Spec : Prop :=
  ∀ n, P3086882982382047413.a n = A180147 n

end A180147

/-! ## A180147.P12265692064781234369

`floor(A083858(n+2)/2)`
-/

namespace A180147.P12265692064781234369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083858 (n + 2) : ℚ) / 2⌋

end

end A180147.P12265692064781234369

namespace A180147

/-- `floor(A083858(n+2)/2)` -/
def P12265692064781234369.Spec : Prop :=
  ∀ n, P12265692064781234369.a n = A180147 n

end A180147

/-! ## A180147.P5404598411778766959

`∑[A354131(n+1)/2]`
-/

namespace A180147.P5404598411778766959
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354131 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180147.P5404598411778766959

namespace A180147

/-- `∑[A354131(n+1)/2]` -/
def P5404598411778766959.Spec : Prop :=
  ∀ n, P5404598411778766959.a n = (A180147 n : ℚ)

end A180147

/-! ## A180147.P16300352322862990932

`∑[Δ[A083858(n+1)]/2]`
-/

namespace A180147.P16300352322862990932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083858 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180147.P16300352322862990932

namespace A180147

/-- `∑[Δ[A083858(n+1)]/2]` -/
def P16300352322862990932.Spec : Prop :=
  ∀ n, P16300352322862990932.a n = (A180147 n : ℚ)

end A180147

/-! ## A180147.P1684083856160082912

`∑[A154964(n+1)+A083858(n)]`
-/

namespace A180147.P1684083856160082912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154964 (n + 1) + A083858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180147.P1684083856160082912

namespace A180147

/-- `∑[A154964(n+1)+A083858(n)]` -/
def P1684083856160082912.Spec : Prop :=
  ∀ n, P1684083856160082912.a n = A180147 n

end A180147

/-! ## A180147.P3141721566074712188

`∑[A083858(n+1)+3*A083858(n)]`
-/

namespace A180147.P3141721566074712188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083858 (n + 1) + 3 * A083858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180147.P3141721566074712188

namespace A180147

/-- `∑[A083858(n+1)+3*A083858(n)]` -/
def P3141721566074712188.Spec : Prop :=
  ∀ n, P3141721566074712188.a n = A180147 n

end A180147

/-! ## A180147.P16569888319280833625

`A180146(n+1)+A180146(n)-A180145(n+1)`
-/

namespace A180147.P16569888319280833625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180146 (n + 1) + (A180146 n - A180145 (n + 1))

end

end A180147.P16569888319280833625

namespace A180147

/-- `A180146(n+1)+A180146(n)-A180145(n+1)` -/
def P16569888319280833625.Spec : Prop :=
  ∀ n, P16569888319280833625.a n = A180147 n

end A180147

/-!
# A180148: a(n) = 3*a(n-1) + a(n-2) with a(0)=2 and a(1)=5.

The programs for A180148, the canonical program `A180148.P485411465257610964` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180148 has offset 0).

The definition of A180148 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+a(n-2)` (program `A180148.P485411465257610964`, by `A180148.P485411465257610964.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180148.P485411465257610964

`3*a(n-1)+a(n-2)` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180148

/-- `3*a(n-1)+a(n-2)` -/
def P485411465257610964.Spec : Prop :=
  ∀ n, (P485411465257610964.a n : ℤ) = A180148 n

theorem P485411465257610964.correct : P485411465257610964.Spec := by
  intro n
  simp only [A180148]

end A180148

/-! ## A180148.P10569672631060308187

`2*A006190(n+1)-A006190(n)`
-/

namespace A180148.P10569672631060308187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006190 (n + 1) - A006190 n

end

end A180148.P10569672631060308187

namespace A180148

/-- `2*A006190(n+1)-A006190(n)` -/
def P10569672631060308187.Spec : Prop :=
  ∀ n, P10569672631060308187.a n = A180148 n

end A180148

/-! ## A180148.P4791004863038604502

`ogf((-2+x)/(-1+3x+x^2))`
-/

namespace A180148.P4791004863038604502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -3, -1] n

end

end A180148.P4791004863038604502

namespace A180148

/-- `ogf((-2+x)/(-1+3x+x^2))` -/
def P4791004863038604502.Spec : Prop :=
  ∀ n, P4791004863038604502.a n = A180148 n

end A180148

/-! ## A180148.P8360846204313013188

`a(n-2)+lcm(3, a(n-1))` with `a(0)=2, a(1)=5`
-/

namespace A180148.P8360846204313013188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 2) + Nat.lcm 3 (a (n - 1))

end

end A180148.P8360846204313013188

namespace A180148

/-- `a(n-2)+lcm(3, a(n-1))` -/
def P8360846204313013188.Spec : Prop :=
  ∀ n, (P8360846204313013188.a n : ℤ) = A180148 n

end A180148

/-! ## A180148.P9500800466810376811

`4*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=2, a(1)=5`
-/

namespace A180148.P9500800466810376811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  4 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A180148.P9500800466810376811

namespace A180148

/-- `4*a(n-1)-(a(n-1)-a(n-2))` -/
def P9500800466810376811.Spec : Prop :=
  ∀ n, P9500800466810376811.a n = A180148 n

end A180148

/-! ## A180148.P14818461350107326673

`a(n-1)+a(n-1)+a(n-1)+a(n-2)` with `a(0)=2, a(1)=5`
-/

namespace A180148.P14818461350107326673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + a (n - 2)))

end

end A180148.P14818461350107326673

namespace A180148

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-2)` -/
def P14818461350107326673.Spec : Prop :=
  ∀ n, (P14818461350107326673.a n : ℤ) = A180148 n

theorem P14818461350107326673.correct : P14818461350107326673.Spec := by
  intro n
  simp only [A180148, Nat.add_sub_cancel, A180148.P14818461350107326673.a, A180148.P485411465257610964.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A180148

/-! ## A180148.P10743392631514918706

`A052924(n)+∑[A052924(n)]`
-/

namespace A180148.P10743392631514918706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180148.P10743392631514918706

namespace A180148

/-- `A052924(n)+∑[A052924(n)]` -/
def P10743392631514918706.Spec : Prop :=
  ∀ n, P10743392631514918706.a n = A180148 n

end A180148

/-! ## A180148.P2485263741944513997

`A052924(n)+A006190(n+1)`
-/

namespace A180148.P2485263741944513997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 n + A006190 (n + 1)

end

end A180148.P2485263741944513997

namespace A180148

/-- `A052924(n)+A006190(n+1)` -/
def P2485263741944513997.Spec : Prop :=
  ∀ n, P2485263741944513997.a n = A180148 n

end A180148

/-! ## A180148.P11468961251309561228

`A052991(n+1)-A006190(n)`
-/

namespace A180148.P11468961251309561228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052991 (n + 1) - A006190 n

end

end A180148.P11468961251309561228

namespace A180148

/-- `A052991(n+1)-A006190(n)` -/
def P11468961251309561228.Spec : Prop :=
  ∀ n, P11468961251309561228.a n = A180148 n

end A180148

/-! ## A180148.P4036242505766797460

`A006497(n)+2*A006190(n)`
-/

namespace A180148.P4036242505766797460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 n + 2 * A006190 n

end

end A180148.P4036242505766797460

namespace A180148

/-- `A006497(n)+2*A006190(n)` -/
def P4036242505766797460.Spec : Prop :=
  ∀ n, P4036242505766797460.a n = A180148 n

end A180148

/-! ## A180148.P8450764744052141050

`A006190(n+1)+Δ[A006190(n)]`
-/

namespace A180148.P8450764744052141050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 (n + 1) + (f1 (n + 1) - f1 n)

end

end A180148.P8450764744052141050

namespace A180148

/-- `A006190(n+1)+Δ[A006190(n)]` -/
def P8450764744052141050.Spec : Prop :=
  ∀ n, P8450764744052141050.a n = A180148 n

end A180148

/-! ## A180148.P5582249680656781481

`A108300(n)+A107855(2*(n+1))`
-/

namespace A180148.P5582249680656781481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108300 n + A107855 (2 * (n + 1))

end

end A180148.P5582249680656781481

namespace A180148

/-- `A108300(n)+A107855(2*(n+1))` -/
def P5582249680656781481.Spec : Prop :=
  ∀ n, P5582249680656781481.a n = A180148 n

end A180148

/-! ## A180148.P11531207696463577103

`A052991(n+1)-A305889(2*n)`
-/

namespace A180148.P11531207696463577103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052991 (n + 1) - A305889 (2 * n)

end

end A180148.P11531207696463577103

namespace A180148

/-- `A052991(n+1)-A305889(2*n)` -/
def P11531207696463577103.Spec : Prop :=
  ∀ n, P11531207696463577103.a n = A180148 n

end A180148

/-! ## A180148.P810921551173602678

`A052924(n+1)-A305889(2*n+1)`
-/

namespace A180148.P810921551173602678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 (n + 1) - A305889 (2 * n + 1)

end

end A180148.P810921551173602678

namespace A180148

/-- `A052924(n+1)-A305889(2*n+1)` -/
def P810921551173602678.Spec : Prop :=
  ∀ n, P810921551173602678.a n = A180148 n

end A180148

/-! ## A180148.P18313284502971379455

`A305889(2*n+3)-A305889(2*n)`
-/

namespace A180148.P18313284502971379455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 (2 * n + 3) - A305889 (2 * n)

end

end A180148.P18313284502971379455

namespace A180148

/-- `A305889(2*n+3)-A305889(2*n)` -/
def P18313284502971379455.Spec : Prop :=
  ∀ n, P18313284502971379455.a n = A180148 n

end A180148

/-! ## A180148.P4016228365554569765

`A305889(2*n)+Δ[A305889(2*n+1)]`
-/

namespace A180148.P4016228365554569765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 (2 * n) + (f1 (n + 1) - f1 n)

end

end A180148.P4016228365554569765

namespace A180148

/-- `A305889(2*n)+Δ[A305889(2*n+1)]` -/
def P4016228365554569765.Spec : Prop :=
  ∀ n, P4016228365554569765.a n = A180148 n

end A180148

/-! ## A180148.P7867199626908463458

`A003688(n+1)+A006497(n)-A052924(n)`
-/

namespace A180148.P7867199626908463458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003688 (n + 1) + (A006497 n - A052924 n)

end

end A180148.P7867199626908463458

namespace A180148

/-- `A003688(n+1)+A006497(n)-A052924(n)` -/
def P7867199626908463458.Spec : Prop :=
  ∀ n, P7867199626908463458.a n = A180148 n

end A180148

/-! ## A180148.P17206206677309894947

`A052924(n+1)+A052924(n)-A003688(n+1)`
-/

namespace A180148.P17206206677309894947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 (n + 1) + (A052924 n - A003688 (n + 1))

end

end A180148.P17206206677309894947

namespace A180148

/-- `A052924(n+1)+A052924(n)-A003688(n+1)` -/
def P17206206677309894947.Spec : Prop :=
  ∀ n, P17206206677309894947.a n = A180148 n

end A180148

/-! ## A180148.P1993612313452496219

`A052991(n+1)+A052991(n+1)-A052924(n+1)`
-/

namespace A180148.P1993612313452496219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052991 (n + 1) + (A052991 (n + 1) - A052924 (n + 1))

end

end A180148.P1993612313452496219

namespace A180148

/-- `A052991(n+1)+A052991(n+1)-A052924(n+1)` -/
def P1993612313452496219.Spec : Prop :=
  ∀ n, P1993612313452496219.a n = A180148 n

end A180148

/-! ## A180148.P16697850743969468569

`record[Δ[A249579(2*n+5)]]`
-/

namespace A180148.P16697850743969468569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180148.P16697850743969468569

namespace A180148

/-- `record[Δ[A249579(2*n+5)]]` -/
def P16697850743969468569.Spec : Prop :=
  ∀ n, P16697850743969468569.a n = A180148 n

end A180148

/-!
# A180149: Integers with precisely two partitions into sums of four squares of nonnegative numbers.

The programs for A180149, there is no canonical definition to state claims against.
-/

/-! ## A180149.P3525582016275115307

`eq[2, A002635(n)]`
-/

namespace A180149.P3525582016275115307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180149.P3525582016275115307

/-! ## A180149.P5787249016152688711

`eq[2, A025428(n)+A000164(n)]`
-/

namespace A180149.P5787249016152688711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n + A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180149.P5787249016152688711

/-! ## A180149.P9964461712973987325

`eq[A025429(n)+2, A000174(n)]`
-/

namespace A180149.P9964461712973987325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180149.P9964461712973987325

/-! ## A180149.P16762041503572134550

`eq[A000164(n), A051652(A025428(n))]`
-/

namespace A180149.P16762041503572134550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051652 (A025428 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180149.P16762041503572134550

/-! ## A180149.P786402306851278652

`eq[A000174(n), A058321(A025429(n))]`
-/

namespace A180149.P786402306851278652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058321 (A025429 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180149.P786402306851278652

/-!
# A180150: Numbers n such that n and n+2 are both divisible by exactly 4 primes (counted with multiplicity).

The programs for A180150, there is no canonical definition to state claims against.
-/

/-! ## A180150.P2250428887780482381

`A157484(n+1)-1`
-/

namespace A180150.P2250428887780482381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157484 (n + 1) - 1

end

end A180150.P2250428887780482381

/-! ## A180150.P14586625432622371779

`A165326(2*(n+1))+A157484(n+1)`
-/

namespace A180150.P14586625432622371779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (2 * (n + 1)) + A157484 (n + 1)

end

end A180150.P14586625432622371779

/-! ## A180150.P2294263213636916083

`∩[A014613(n+1)-2, A014613(n+1)]`
-/

namespace A180150.P2294263213636916083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180150.P2294263213636916083

/-! ## A180150.P16982480052619403051

`A340142(A000040(n+1))+A157484(n+1)`
-/

namespace A180150.P16982480052619403051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340142 (A000040 (n + 1)).toNat + A157484 (n + 1)

end

end A180150.P16982480052619403051

/-! ## A180150.P14573724475394477257

`A023443(A157484(n+1))`
-/

namespace A180150.P14573724475394477257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A157484 (n + 1)).toNat

end

end A180150.P14573724475394477257

/-! ## A180150.P16787952866295181486

`A023444(A157484(n+1)+1)`
-/

namespace A180150.P16787952866295181486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A157484 (n + 1) + 1).toNat

end

end A180150.P16787952866295181486

/-! ## A180150.P2829652025987276087

`A289207(A157484(n+1)+1)`
-/

namespace A180150.P2829652025987276087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A157484 (n + 1) + 1).toNat

end

end A180150.P2829652025987276087

/-! ## A180150.P18371406078826620471

`xor(A020985(A087768(n+1))², A157484(n+1))`
-/

namespace A180150.P18371406078826620471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020985 (A087768 (n + 1)).toNat ^ 2) (A157484 (n + 1))

end

end A180150.P18371406078826620471

/-!
# A180151: Numbers k such that k and k + 2 are both divisible by exactly five primes (counted with multiplicity).

The programs for A180151, there is no canonical definition to state claims against.
-/

/-! ## A180151.P9694681423587790698

`A157485(n+1)-1`
-/

namespace A180151.P9694681423587790698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157485 (n + 1) - 1

end

end A180151.P9694681423587790698

/-! ## A180151.P5043693749360554634

`A157503(gcd(n, n+1))+A157485(n+1)`
-/

namespace A180151.P5043693749360554634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157503 (Nat.gcd n (n + 1)) + A157485 (n + 1)

end

end A180151.P5043693749360554634

/-! ## A180151.P18187723796620260170

`A227618(Δ[A001950(n+1)])+A157485(n+1)`
-/

namespace A180151.P18187723796620260170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227618 (f1 (n + 1) - f1 n).toNat + A157485 (n + 1)

end

end A180151.P18187723796620260170

/-! ## A180151.P10591449204073744417

`A260196(n+2)+A157485(n+1)`
-/

namespace A180151.P10591449204073744417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A157485 (n + 1)

end

end A180151.P10591449204073744417

/-! ## A180151.P7641925378333735085

`A165326(2*(n+1))+A157485(n+1)`
-/

namespace A180151.P7641925378333735085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (2 * (n + 1)) + A157485 (n + 1)

end

end A180151.P7641925378333735085

/-! ## A180151.P15181402222145038450

`∩[A014614(n+1)-2, A014614(n+1)]`
-/

namespace A180151.P15181402222145038450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180151.P15181402222145038450

/-! ## A180151.P13289156385801197658

`A321804(A124780(n))+A157485(n+1)`
-/

namespace A180151.P13289156385801197658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A124780 n).toNat + A157485 (n + 1)

end

end A180151.P13289156385801197658

/-! ## A180151.P3609155832169626677

`A000027(A157485(n+1))+A008683(A089628(n+3))`
-/

namespace A180151.P3609155832169626677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A157485 (n + 1)).toNat + A008683 (A089628 (n + 3)).toNat

end

end A180151.P3609155832169626677

/-! ## A180151.P3569038055892439702

`A182394(A260805(n+1))+A157485(n+1)`
-/

namespace A180151.P3569038055892439702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (A260805 (n + 1)).toNat + A157485 (n + 1)

end

end A180151.P3569038055892439702

/-! ## A180151.P12700344724064273448

`A182394(A260808(n+1))+A157485(n+1)`
-/

namespace A180151.P12700344724064273448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (A260808 (n + 1)).toNat + A157485 (n + 1)

end

end A180151.P12700344724064273448

/-!
# A180152: Numbers k such that the sum of the first k semiprimes is a prime.

The programs for A180152, there is no canonical definition to state claims against.
-/

/-! ## A180152.P1680073221713703725

`eq[1, ∑{e}[∑[A001358(n+1)], #]]+1`
-/

namespace A180152.P1680073221713703725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A180152.P1680073221713703725

/-! ## A180152.P15337840419022910792

`eq[1, ∑{e}[∑[A088707(n+1)-1], #]]+1`
-/

namespace A180152.P15337840419022910792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A180152.P15337840419022910792

/-! ## A180152.P7363400756906586204

`eq[1, A001222(A062198(n+1))]+1`
-/

namespace A180152.P7363400756906586204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A062198 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180152.P7363400756906586204

/-! ## A180152.P5768708994132218407

`eq[1, A001222(∑[A001358(n+1)])]+1`
-/

namespace A180152.P5768708994132218407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180152.P5768708994132218407

/-! ## A180152.P15953807405464556655

`lt[A000005(∑[A001358(n+1)]), 3]+1`
-/

namespace A180152.P15953807405464556655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A180152.P15953807405464556655

/-!
# A180153: a(n) = 10*a(n-1) + A109242(n).

The programs for A180153, the canonical program `A180153.P10697429087781370174` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180153 has offset 1).

The definition of A180153 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180153.P10697429087781370174

`10*a(n-1)+A109242(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A180153

/-- `10*a(n-1)+A109242(n)` -/
def P10697429087781370174.Spec : Prop :=
  ∀ n, P10697429087781370174.a n = A180153 (n + 1)

theorem P10697429087781370174.correct : P10697429087781370174.Spec := by
  intro n
  simp only [A180153, Nat.add_sub_cancel]

end A180153

/-! ## A180153.P4232628003322749221

`∑[10^n*∑[∑[10^n]]]`
-/

namespace A180153.P4232628003322749221
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180153.P4232628003322749221

namespace A180153

/-- `∑[10^n*∑[∑[10^n]]]` -/
def P4232628003322749221.Spec : Prop :=
  ∀ n, (P4232628003322749221.a n : ℤ) = A180153 (n + 1)

end A180153

/-!
# A180154: Number of permutations of 0..(n-1) with the sum of the maximum of each adjacent pair = n*(n-1)/2 + floor((n-1)^2/8).

The programs for A180154, there is no canonical definition to state claims against.
-/

/-! ## A180154.P6700255224775727509

`A319803(A350680(n)+A319825(n+1))`
-/

namespace A180154.P6700255224775727509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319803 (A350680 n + A319825 (n + 1)).toNat

end

end A180154.P6700255224775727509

/-! ## A180154.P15483033514496858663

`A248566(A219661(n+1)+A051467(abs(1-n)))`
-/

namespace A180154.P15483033514496858663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248566 (A219661 (n + 1) + A051467 |1 - (n : ℤ)|.toNat).toNat

end

end A180154.P15483033514496858663

/-!
# A180156: Sequence from adding the twin primes and dividing by the digit sum of twin primes.

The programs for A180156, there is no canonical definition to state claims against.
-/

/-! ## A180156.P11935251064550605026

`round(A054735(n+1)/A166173(n+1))`
-/

namespace A180156.P11935251064550605026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A054735 (n + 1) : ℚ) / (A166173 (n + 1) : ℚ))

end

end A180156.P11935251064550605026

/-! ## A180156.P14220639515653664061

`round(A176810(n+1)/A166173(n+1))`
-/

namespace A180156.P14220639515653664061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A176810 (n + 1) : ℚ) / (A166173 (n + 1) : ℚ))

end

end A180156.P14220639515653664061

/-! ## A180156.P9377118210290863588

`round(2*A006512(n+1)/A166173(n+1))`
-/

namespace A180156.P9377118210290863588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((A006512 (n + 1) : ℚ) / (A166173 (n + 1) : ℚ)))

end

end A180156.P9377118210290863588

/-! ## A180156.P9513059621788116681

`round(A004273(A006512(n+1))/A166173(n+1))`
-/

namespace A180156.P9513059621788116681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004273 (A006512 (n + 1)).toNat : ℚ) / (A166173 (n + 1) : ℚ))

end

end A180156.P9513059621788116681

/-!
# A180157: Arithmetic mean of digits is not an integer.

The programs for A180157, the canonical program `A180157.P3041833401943682686` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180157 has offset 1).

The definition of A180157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180157.P15252784616459473995

`comp[A061383(n)]`
-/

namespace A180157.P15252784616459473995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A180157.P15252784616459473995

namespace A180157

/-- `comp[A061383(n)]` -/
def P15252784616459473995.Spec : Prop :=
  ∀ n, (P15252784616459473995.a n : ℤ) = A180157 (n + 1)

end A180157

/-! ## A180157.P3041833401943682686

`lt[0, A180160(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A180157

/-- `lt[0, A180160(n)]` -/
def P3041833401943682686.Spec : Prop :=
  ∀ n, (P3041833401943682686.a n : ℤ) = A180157 (n + 1)

theorem P3041833401943682686.correct : P3041833401943682686.Spec := by
  intro n
  simp only [A180157, Nat.add_sub_cancel]

end A180157

/-! ## A180157.P1380136770568779225

`eq[1, A010815(a(A180160(n)))]` with `a(0)=94`
-/

namespace A180157.P1380136770568779225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [94] fun n f2 =>
  A010815 (f2 (A180160 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180157.P1380136770568779225

namespace A180157

/-- `eq[1, A010815(a(A180160(n)))]` -/
def P1380136770568779225.Spec : Prop :=
  ∀ n, (P1380136770568779225.a n : ℤ) = A180157 (n + 1)

end A180157

/-! ## A180157.P8922952742681225803

`eq[7, A283002(a(A180160(n))+1)]` with `a(0)=1`
-/

namespace A180157.P8922952742681225803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A283002 (f2 (A180160 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180157.P8922952742681225803

namespace A180157

/-- `eq[7, A283002(a(A180160(n))+1)]` -/
def P8922952742681225803.Spec : Prop :=
  ∀ n, (P8922952742681225803.a n : ℤ) = A180157 (n + 1)

end A180157

/-! ## A180157.P2155403354065605335

`lt[A004426(n), A004427(n)]`
-/

namespace A180157.P2155403354065605335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180157.P2155403354065605335

namespace A180157

/-- `lt[A004426(n), A004427(n)]` -/
def P2155403354065605335.Spec : Prop :=
  ∀ n, (P2155403354065605335.a n : ℤ) = A180157 (n + 1)

end A180157

/-!
# A180158: Number of ways are there to score a break of n points at snooker. Assuming an infinite number of reds are available, along with the usual six colors, and a break alternates red-color-red-...

The programs for A180158, the canonical program `A180158.P15869508502651761621` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180158 has offset 0).

The definition of A180158 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180158.P15869508502651761621

`a(n-3)+a(n-4)+a(n-5)+a(n-6)+a(n-7)+a(n-8)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=2, a(5)=2, a(6)=3, a(7)=5`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180158

/-- `a(n-3)+a(n-4)+a(n-5)+a(n-6)+a(n-7)+a(n-8)` -/
def P15869508502651761621.Spec : Prop :=
  ∀ n, (P15869508502651761621.a n : ℤ) = A180158 n

theorem P15869508502651761621.correct : P15869508502651761621.Spec := by
  intro n
  simp only [A180158]

end A180158

/-! ## A180158.P3403540112705389993

`A017821(abs(1-n))+A017821(n)`
-/

namespace A180158.P3403540112705389993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017821 |1 - (n : ℤ)|.toNat + A017821 n

end

end A180158.P3403540112705389993

namespace A180158

/-- `A017821(abs(1-n))+A017821(n)` -/
def P3403540112705389993.Spec : Prop :=
  ∀ n, P3403540112705389993.a n = A180158 n

end A180158

/-!
# A180160: (sum of digits) mod (number of digits) of n in decimal representation.

The programs for A180160, the canonical program `A180160.P17039234537924765232` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180160 has offset 0).

The definition of A180160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180160.P6035813949972719237

`∑{digits}[n, #-A004426(n)]`
-/

namespace A180160.P6035813949972719237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℤ) - A004426 n).sum

end

end A180160.P6035813949972719237

namespace A180160

/-- `∑{digits}[n, #-A004426(n)]` -/
def P6035813949972719237.Spec : Prop :=
  ∀ n, P6035813949972719237.a n = A180160 n

end A180160

/-! ## A180160.P17039234537924765232

`∑{digits}[n, #]%A055642(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A180160

/-- `∑{digits}[n, #]%A055642(n)` -/
def P17039234537924765232.Spec : Prop :=
  ∀ n, P17039234537924765232.a n = A180160 n

theorem P17039234537924765232.correct : P17039234537924765232.Spec := by
  intro n
  simp only [A180160]

end A180160

/-! ## A180160.P8385553413768780585

`A007953(n)%A055642(n)`
-/

namespace A180160.P8385553413768780585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 n) (A055642 n)

end

end A180160.P8385553413768780585

namespace A180160

/-- `A007953(n)%A055642(n)` -/
def P8385553413768780585.Spec : Prop :=
  ∀ n, P8385553413768780585.a n = A180160 n

end A180160

/-! ## A180160.P10685719111238694529

`sqrt(A118881(n))%A055642(n)`
-/

namespace A180160.P10685719111238694529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A118881 n : ℝ))) (A055642 n)

end

end A180160.P10685719111238694529

namespace A180160

/-- `sqrt(A118881(n))%A055642(n)` -/
def P10685719111238694529.Spec : Prop :=
  ∀ n, P10685719111238694529.a n = A180160 n

end A180160

/-! ## A180160.P3637504802251878155

`(A169805(n)/2)%dr(A348783(n))`
-/

namespace A180160.P3637504802251878155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)) (SequenceMachineLib.digitalRoot (A348783 n) : ℤ)

end

end A180160.P3637504802251878155

namespace A180160

/-- `(A169805(n)/2)%dr(A348783(n))` -/
def P3637504802251878155.Spec : Prop :=
  ∀ n, P3637504802251878155.a n = A180160 n

end A180160

/-! ## A180160.P6120019261600944625

`ceil(A057147(n)/(n+1))%dr(A348783(n))`
-/

namespace A180160.P6120019261600944625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A057147 n : ℚ) / (n + 1 : ℚ)⌉ (SequenceMachineLib.digitalRoot (A348783 n) : ℤ)

end

end A180160.P6120019261600944625

namespace A180160

/-- `ceil(A057147(n)/(n+1))%dr(A348783(n))` -/
def P6120019261600944625.Spec : Prop :=
  ∀ n, P6120019261600944625.a n = A180160 n

end A180160

/-! ## A180160.P10976481507731980041

`A004525(A169805(n))%A055642(n)`
-/

namespace A180160.P10976481507731980041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004525 (A169805 n).toNat) (A055642 n)

end

end A180160.P10976481507731980041

namespace A180160

/-- `A004525(A169805(n))%A055642(n)` -/
def P10976481507731980041.Spec : Prop :=
  ∀ n, P10976481507731980041.a n = A180160 n

end A180160

/-! ## A180160.P11182388527075662360

`A007953(n)-A004426(n)*A055642(n)`
-/

namespace A180160.P11182388527075662360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - A004426 n * A055642 n

end

end A180160.P11182388527075662360

namespace A180160

/-- `A007953(n)-A004426(n)*A055642(n)` -/
def P11182388527075662360.Spec : Prop :=
  ∀ n, P11182388527075662360.a n = A180160 n

end A180160

/-! ## A180160.P11546874183430953841

`A005665(n)%A371384(n)`
-/

namespace A180160.P11546874183430953841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005665 n) (A371384 n)

end

end A180160.P11546874183430953841

namespace A180160

/-- `A005665(n)%A371384(n)` -/
def P11546874183430953841.Spec : Prop :=
  ∀ n, P11546874183430953841.a n = A180160 n

end A180160

/-! ## A180160.P2805062411751914867

`A002450(n)%A371384(n)`
-/

namespace A180160.P2805062411751914867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002450 n) (A371384 n)

end

end A180160.P2805062411751914867

namespace A180160

/-- `A002450(n)%A371384(n)` -/
def P2805062411751914867.Spec : Prop :=
  ∀ n, P2805062411751914867.a n = A180160 n

end A180160

/-! ## A180160.P6691208524646036348

`(A007953(n)^A196222(n))%A043562(n)`
-/

namespace A180160.P6691208524646036348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A007953 n : ℚ) ^ (A196222 n : ℤ))) (A043562 n)

end

end A180160.P6691208524646036348

namespace A180160

/-- `(A007953(n)^A196222(n))%A043562(n)` -/
def P6691208524646036348.Spec : Prop :=
  ∀ n, P6691208524646036348.a n = A180160 n

end A180160

/-! ## A180160.P16577602033836614100

`A000035(A110725(n))`
-/

namespace A180160.P16577602033836614100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A110725 n).toNat

end

end A180160.P16577602033836614100

namespace A180160

/-- `A000035(A110725(n))` -/
def P16577602033836614100.Spec : Prop :=
  ∀ n, P16577602033836614100.a n = A180160 n

end A180160

/-! ## A180160.P8220166806818992833

`A151949(A000196(n²))%2`
-/

namespace A180160.P8220166806818992833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151949 (A000196 (n ^ 2)).toNat) 2

end

end A180160.P8220166806818992833

namespace A180160

/-- `A151949(A000196(n²))%2` -/
def P8220166806818992833.Spec : Prop :=
  ∀ n, P8220166806818992833.a n = A180160 n

end A180160

/-! ## A180160.P17506489775683995563

`A374097(n)^3^n`
-/

namespace A180160.P17506489775683995563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374097 n ^ 3 ^ n

end

end A180160.P17506489775683995563

namespace A180160

/-- `A374097(n)^3^n` -/
def P17506489775683995563.Spec : Prop :=
  ∀ n, P17506489775683995563.a n = A180160 n

end A180160

/-! ## A180160.P489614564917849975

`val(A002276(A065031(n)), 3)`
-/

namespace A180160.P489614564917849975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002276 (A065031 n).toNat).toNat 3

end

end A180160.P489614564917849975

namespace A180160

/-- `val(A002276(A065031(n)), 3)` -/
def P489614564917849975.Spec : Prop :=
  ∀ n, (P489614564917849975.a n : ℤ) = A180160 n

end A180160

/-!
# A180161: Numbers that are the sum of two nonnegative squares but are not perfect powers.

The programs for A180161, the canonical program `A180161.P2242092877248082385` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180161 has offset 1).

The definition of A180161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9983 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180161.P2242092877248082385

`record[A052410(A000415(n+1))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A180161

/-- `record[A052410(A000415(n+1))]` -/
def P2242092877248082385.Spec : Prop :=
  ∀ n, P2242092877248082385.a n = A180161 (n + 1)

theorem P2242092877248082385.correct : P2242092877248082385.Spec := by
  intro n
  simp only [A180161, Nat.add_sub_cancel]

end A180161

/-! ## A180161.P5052670389560700886

`record[A052410(A000404(n+1))]`
-/

namespace A180161.P5052670389560700886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A000404 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180161.P5052670389560700886

namespace A180161

/-- `record[A052410(A000404(n+1))]` -/
def P5052670389560700886.Spec : Prop :=
  ∀ n, P5052670389560700886.a n = A180161 (n + 1)

end A180161

/-! ## A180161.P15850705962080702744

`record[A052410(A001481(n+3))]`
-/

namespace A180161.P15850705962080702744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A001481 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180161.P15850705962080702744

namespace A180161

/-- `record[A052410(A001481(n+3))]` -/
def P15850705962080702744.Spec : Prop :=
  ∀ n, P15850705962080702744.a n = A180161 (n + 1)

end A180161

/-! ## A180161.P664075559028427591

`record[A052410(A024509(n+1))]`
-/

namespace A180161.P664075559028427591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A024509 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180161.P664075559028427591

namespace A180161

/-- `record[A052410(A024509(n+1))]` -/
def P664075559028427591.Spec : Prop :=
  ∀ n, P664075559028427591.a n = A180161 (n + 1)

end A180161

/-! ## A180161.P14499151658409561469

`filter[A007916(n+1), A229062(#)]`
-/

namespace A180161.P14499151658409561469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A180161.P14499151658409561469

namespace A180161

/-- `filter[A007916(n+1), A229062(#)]` -/
def P14499151658409561469.Spec : Prop :=
  ∀ n, P14499151658409561469.a n = A180161 (n + 1)

end A180161

/-! ## A180161.P9667432867598224379

`∩[A000404(n+1), A007916(n+1)]`
-/

namespace A180161.P9667432867598224379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180161.P9667432867598224379

namespace A180161

/-- `∩[A000404(n+1), A007916(n+1)]` -/
def P9667432867598224379.Spec : Prop :=
  ∀ n, (P9667432867598224379.a n : ℤ) = A180161 (n + 1)

end A180161

/-! ## A180161.P10890511230256141375

`∩[A000415(n+1), A007916(n+1)]`
-/

namespace A180161.P10890511230256141375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180161.P10890511230256141375

namespace A180161

/-- `∩[A000415(n+1), A007916(n+1)]` -/
def P10890511230256141375.Spec : Prop :=
  ∀ n, (P10890511230256141375.a n : ℤ) = A180161 (n + 1)

end A180161

/-! ## A180161.P11154139937636373689

`∩[A001481(n+1), A007916(n+1)]`
-/

namespace A180161.P11154139937636373689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180161.P11154139937636373689

namespace A180161

/-- `∩[A001481(n+1), A007916(n+1)]` -/
def P11154139937636373689.Spec : Prop :=
  ∀ n, (P11154139937636373689.a n : ℤ) = A180161 (n + 1)

end A180161

/-! ## A180161.P127764415903869875

`filter[A175082(n+2), A229062(#)]`
-/

namespace A180161.P127764415903869875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A180161.P127764415903869875

namespace A180161

/-- `filter[A175082(n+2), A229062(#)]` -/
def P127764415903869875.Spec : Prop :=
  ∀ n, P127764415903869875.a n = A180161 (n + 1)

end A180161

/-! ## A180161.P11212617178972472299

`∩[A000404(n+1), A175082(n+1)]`
-/

namespace A180161.P11212617178972472299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180161.P11212617178972472299

namespace A180161

/-- `∩[A000404(n+1), A175082(n+1)]` -/
def P11212617178972472299.Spec : Prop :=
  ∀ n, (P11212617178972472299.a n : ℤ) = A180161 (n + 1)

end A180161

/-! ## A180161.P8321237514959354489

`∩[A000415(n+1), A175082(n+1)]`
-/

namespace A180161.P8321237514959354489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180161.P8321237514959354489

namespace A180161

/-- `∩[A000415(n+1), A175082(n+1)]` -/
def P8321237514959354489.Spec : Prop :=
  ∀ n, (P8321237514959354489.a n : ℤ) = A180161 (n + 1)

end A180161

/-! ## A180161.P2057547975120767074

`filter[A000404(n+1), A132350(#)]`
-/

namespace A180161.P2057547975120767074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A180161.P2057547975120767074

namespace A180161

/-- `filter[A000404(n+1), A132350(#)]` -/
def P2057547975120767074.Spec : Prop :=
  ∀ n, P2057547975120767074.a n = A180161 (n + 1)

end A180161

/-! ## A180161.P13471565631073005448

`filter[A000415(n+1), A132350(#)]`
-/

namespace A180161.P13471565631073005448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A180161.P13471565631073005448

namespace A180161

/-- `filter[A000415(n+1), A132350(#)]` -/
def P13471565631073005448.Spec : Prop :=
  ∀ n, P13471565631073005448.a n = A180161 (n + 1)

end A180161

/-! ## A180161.P1517599038725217303

`filter[A001481(n+3), A132350(#)]`
-/

namespace A180161.P1517599038725217303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A180161.P1517599038725217303

namespace A180161

/-- `filter[A001481(n+3), A132350(#)]` -/
def P1517599038725217303.Spec : Prop :=
  ∀ n, P1517599038725217303.a n = A180161 (n + 1)

end A180161

/-! ## A180161.P17370918178404189626

`∩[A000415(n+1), A120629(n+1)]`
-/

namespace A180161.P17370918178404189626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180161.P17370918178404189626

namespace A180161

/-- `∩[A000415(n+1), A120629(n+1)]` -/
def P17370918178404189626.Spec : Prop :=
  ∀ n, (P17370918178404189626.a n : ℤ) = A180161 (n + 1)

end A180161

/-!
# A180162: a(n) is the smallest number N such that sigma(N) is an n-th power but not a higher power, with a(n) = 0 if no such number exists.

The programs for A180162, there is no canonical definition to state claims against.
-/

/-! ## A180162.P7631685740062210797

`ceil(3^(a(n-1)-atan(n)))` with `a(0)=1`
-/

namespace A180162.P7631685740062210797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(3 : ℝ) ^ ((a (n - 1) : ℝ) - Real.arctan (n : ℝ))⌉

end

end A180162.P7631685740062210797

/-!
# A180163: Products of pairs of amicable numbers (see A063990).

The programs for A180163, there is no canonical definition to state claims against.
-/

/-! ## A180163.P9269918571190167261

`A063990(2*(n+1)-1)*A063990(2*(n+1))`
-/

namespace A180163.P9269918571190167261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (2 * (n + 1) - 1) * A063990 (2 * (n + 1))

end

end A180163.P9269918571190167261

/-! ## A180163.P16067294055390474262

`A063990(2*n+1)*A279812(2*(n+1))/2`
-/

namespace A180163.P16067294055390474262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063990 (2 * n + 1) * A279812 (2 * (n + 1)) : ℚ) / 2

end

end A180163.P16067294055390474262

/-! ## A180163.P12187565629512338559

`A000027(A063990(2*n+1))*A063990(2*(n+1))`
-/

namespace A180163.P12187565629512338559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A063990 (2 * n + 1)).toNat * A063990 (2 * (n + 1))

end

end A180163.P12187565629512338559

/-!
# A180164: The sum of the two numbers in an amicable pair, A002025(n) + A002046(n).

The programs for A180164, there is no canonical definition to state claims against.
-/

/-! ## A180164.P4806334578672856164

`A259180(2*(n+1)-1)+A259180(2*(n+1))`
-/

namespace A180164.P4806334578672856164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259180 (2 * (n + 1) - 1) + A259180 (2 * (n + 1))

end

end A180164.P4806334578672856164

/-! ## A180164.P1601238742378759501

`2*A275315(n+1)`
-/

namespace A180164.P1601238742378759501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A275315 (n + 1)

end

end A180164.P1601238742378759501

/-! ## A180164.P3144193502029564369

`A002025(n+1)+A002046(n+1)`
-/

namespace A180164.P3144193502029564369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002025 (n + 1) + A002046 (n + 1)

end

end A180164.P3144193502029564369

/-! ## A180164.P12825272411285834670

`A066539(n+1)+2*A002025(n+1)`
-/

namespace A180164.P12825272411285834670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066539 (n + 1) + 2 * A002025 (n + 1)

end

end A180164.P12825272411285834670

/-! ## A180164.P6176377593524240129

`2*A002046(n+1)-A066539(n+1)`
-/

namespace A180164.P6176377593524240129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002046 (n + 1) - A066539 (n + 1)

end

end A180164.P6176377593524240129

/-! ## A180164.P13617135639750880180

`A275315(A000027(n+1))+A275315(n+1)`
-/

namespace A180164.P13617135639750880180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275315 (A000027 (n + 1)).toNat + A275315 (n + 1)

end

end A180164.P13617135639750880180

/-! ## A180164.P7323287695715634082

`A002025(n+1)+A061469(n+1)*A180327(n+1)`
-/

namespace A180164.P7323287695715634082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002025 (n + 1) + A061469 (n + 1) * A180327 (n + 1)

end

end A180164.P7323287695715634082

/-! ## A180164.P13984688377415946770

`A002046(n+1)+A061469(n+1)*A180326(n+1)`
-/

namespace A180164.P13984688377415946770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002046 (n + 1) + A061469 (n + 1) * A180326 (n + 1)

end

end A180164.P13984688377415946770

/-! ## A180164.P12142183417199100100

`(A180327(n+1)+A180326(n+1))*A061469(n+1)`
-/

namespace A180164.P12142183417199100100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A180327 (n + 1) + A180326 (n + 1)) * A061469 (n + 1)

end

end A180164.P12142183417199100100

/-! ## A180164.P6841750257518391424

`A002025(n+1)+A180202(n+1)/A002025(n+1)`
-/

namespace A180164.P6841750257518391424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002025 (n + 1) : ℚ) + (A180202 (n + 1) : ℚ) / (A002025 (n + 1) : ℚ)

end

end A180164.P6841750257518391424

/-! ## A180164.P16411567464004170213

`A002046(n+1)+A180202(n+1)/A002046(n+1)`
-/

namespace A180164.P16411567464004170213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002046 (n + 1) : ℚ) + (A180202 (n + 1) : ℚ) / (A002046 (n + 1) : ℚ)

end

end A180164.P16411567464004170213

/-! ## A180164.P1026852320865181506

`A275315(n+1)+A275315(n+2)-A275066(n+1)`
-/

namespace A180164.P1026852320865181506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275315 (n + 1) + (A275315 (n + 2) - A275066 (n + 1))

end

end A180164.P1026852320865181506

/-!
# A180165: Triangle read by rows, derived from an array of sequences generated from (1 + x)/ (1 - r*x - r*x^2).

The programs for A180165, there is no canonical definition to state claims against.
-/

/-! ## A180165.P483163246001300379

`A179943(n)+A124762(A179937(n+1))`
-/

namespace A180165.P483163246001300379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179943 n + A124762 (A179937 (n + 1)).toNat

end

end A180165.P483163246001300379

/-! ## A180165.P15849976202909030309

`A208337(A187829(n+1))+A286012(n+1)-A038137(n)`
-/

namespace A180165.P15849976202909030309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208337 (A187829 (n + 1)).toNat + (A286012 (n + 1) - A038137 n)

end

end A180165.P15849976202909030309

/-! ## A180165.P6489205762906852871

`A087845(A249252(n))`
-/

namespace A180165.P6489205762906852871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087845 (A249252 n).toNat

end

end A180165.P6489205762906852871

/-! ## A180165.P10933171484467873273

`A355443(A007713(n))+A179943(n)`
-/

namespace A180165.P10933171484467873273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355443 (A007713 n).toNat + A179943 n

end

end A180165.P10933171484467873273

/-! ## A180165.P44186655059508770

`A082892(A062264(n))`
-/

namespace A180165.P44186655059508770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082892 (A062264 n).toNat

end

end A180165.P44186655059508770

/-!
# A180166: Row sums of triangle A180165.

The programs for A180166, there is no canonical definition to state claims against.
-/

/-! ## A180166.P1105530120973314061

`A149893(n)+A001222(A274275(n+1))`
-/

namespace A180166.P1105530120973314061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149893 n + A001222 (A274275 (n + 1)).toNat

end

end A180166.P1105530120973314061

/-! ## A180166.P9316181997116703643

`A125173(A001349(n))+A149890(n)+n`
-/

namespace A180166.P9316181997116703643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125173 (A001349 n).toNat + (A149890 n + (n : ℤ))

end

end A180166.P9316181997116703643

/-!
# A180167: a(0) = 1, a(1) = 7; a(n)= 6*a(n-1) + 6*a(n-2) for n>1.

The programs for A180167, the canonical program `A180167.P5597444822315288477` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180167 has offset 0).

The definition of A180167 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+6*a(n-2)` (program `A180167.P5597444822315288477`, by `A180167.P5597444822315288477.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180167.P5597444822315288477

`6*a(n-1)+6*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180167

/-- `6*a(n-1)+6*a(n-2)` -/
def P5597444822315288477.Spec : Prop :=
  ∀ n, (P5597444822315288477.a n : ℤ) = A180167 n

theorem P5597444822315288477.correct : P5597444822315288477.Spec := by
  intro n
  simp only [A180167]

end A180167

/-! ## A180167.P10869653525656639757

`7^n-A395828(n)`
-/

namespace A180167.P10869653525656639757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) - A395828 n

end

end A180167.P10869653525656639757

namespace A180167

/-- `7^n-A395828(n)` -/
def P10869653525656639757.Spec : Prop :=
  ∀ n, P10869653525656639757.a n = A180167 n

theorem P10869653525656639757.correct : P10869653525656639757.Spec := by
  intro n
  simp only [A180167, Nat.add_sub_cancel, A180167.P10869653525656639757.a, A180167.P5597444822315288477.a, A395828, A395828.P2810719931447247323.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A180167

/-! ## A180167.P17991705626651480154

`ogf((1+x)/(1-6x-6x^2))`
-/

namespace A180167.P17991705626651480154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -6, -6] n

end

end A180167.P17991705626651480154

namespace A180167

/-- `ogf((1+x)/(1-6x-6x^2))` -/
def P17991705626651480154.Spec : Prop :=
  ∀ n, P17991705626651480154.a n = A180167 n

end A180167

/-! ## A180167.P15565784736409855426

`6*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=7`
-/

namespace A180167.P15565784736409855426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  6 * (a (n - 1) + a (n - 2))

end

end A180167.P15565784736409855426

namespace A180167

/-- `6*(a(n-1)+a(n-2))` -/
def P15565784736409855426.Spec : Prop :=
  ∀ n, (P15565784736409855426.a n : ℤ) = A180167 n

theorem P15565784736409855426.correct : P15565784736409855426.Spec := by
  intro n
  simp only [A180167, Nat.add_sub_cancel, A180167.P15565784736409855426.a, A180167.P5597444822315288477.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A180167

/-! ## A180167.P14022324206658146771

`A155127(n+1)/5`
-/

namespace A180167.P14022324206658146771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155127 (n + 1) : ℚ) / 5

end

end A180167.P14022324206658146771

namespace A180167

/-- `A155127(n+1)/5` -/
def P14022324206658146771.Spec : Prop :=
  ∀ n, P14022324206658146771.a n = (A180167 n : ℚ)

end A180167

/-! ## A180167.P16856585975811386073

`A057089(n+1)/6`
-/

namespace A180167.P16856585975811386073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057089 (n + 1) : ℚ) / 6

end

end A180167.P16856585975811386073

namespace A180167

/-- `A057089(n+1)/6` -/
def P16856585975811386073.Spec : Prop :=
  ∀ n, P16856585975811386073.a n = (A180167 n : ℚ)

end A180167

/-! ## A180167.P13064520584190562819

`A180165(A052905(n+3))`
-/

namespace A180167.P13064520584190562819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180165 (A052905 (n + 3)).toNat

end

end A180167.P13064520584190562819

namespace A180167

/-- `A180165(A052905(n+3))` -/
def P13064520584190562819.Spec : Prop :=
  ∀ n, P13064520584190562819.a n = A180167 n

end A180167

/-! ## A180167.P13941966428388007128

`A180165((n+4)²-A000096(n))`
-/

namespace A180167.P13941966428388007128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180165 (((n + 4) ^ 2 : ℤ) - A000096 n).toNat

end

end A180167.P13941966428388007128

namespace A180167

/-- `A180165((n+4)²-A000096(n))` -/
def P13941966428388007128.Spec : Prop :=
  ∀ n, P13941966428388007128.a n = A180167 n

end A180167

/-!
# A180168: a(n) = 2*a(n-1) + 5*a(n-2), a(0) = 1, a(1) = 3.

The programs for A180168, the canonical program `A180168.P551879337798560394` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180168 has offset 0).

The definition of A180168 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+5*a(n-2)` (program `A180168.P551879337798560394`, by `A180168.P551879337798560394.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180168.P551879337798560394

`2*a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180168

/-- `2*a(n-1)+5*a(n-2)` -/
def P551879337798560394.Spec : Prop :=
  ∀ n, (P551879337798560394.a n : ℤ) = A180168 n

theorem P551879337798560394.correct : P551879337798560394.Spec := by
  intro n
  simp only [A180168]

end A180168

/-! ## A180168.P16057659176922095088

`A002532(n)+A002532(n+1)`
-/

namespace A180168.P16057659176922095088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002532 n + A002532 (n + 1)

end

end A180168.P16057659176922095088

namespace A180168

/-- `A002532(n)+A002532(n+1)` -/
def P16057659176922095088.Spec : Prop :=
  ∀ n, P16057659176922095088.a n = A180168 n

end A180168

/-! ## A180168.P17775819559654169638

`A176812(n)/3`
-/

namespace A180168.P17775819559654169638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176812 n : ℚ) / 3

end

end A180168.P17775819559654169638

namespace A180168

/-- `A176812(n)/3` -/
def P17775819559654169638.Spec : Prop :=
  ∀ n, P17775819559654169638.a n = (A180168 n : ℚ)

end A180168

/-! ## A180168.P6419739892018950906

`ogf((1+x)/(1-2x-5x^2))`
-/

namespace A180168.P6419739892018950906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -2, -5] n

end

end A180168.P6419739892018950906

namespace A180168

/-- `ogf((1+x)/(1-2x-5x^2))` -/
def P6419739892018950906.Spec : Prop :=
  ∀ n, P6419739892018950906.a n = A180168 n

end A180168

/-! ## A180168.P15735895777978948551

`lcm(2, a(n-1))+lcm(5, a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A180168.P15735895777978948551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.lcm 2 (a (n - 1)) + Nat.lcm 5 (a (n - 2))

end

end A180168.P15735895777978948551

namespace A180168

/-- `lcm(2, a(n-1))+lcm(5, a(n-2))` -/
def P15735895777978948551.Spec : Prop :=
  ∀ n, (P15735895777978948551.a n : ℤ) = A180168 n

end A180168

/-! ## A180168.P8185640958154153205

`3*a(n-1)-(a(n-1)-5*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A180168.P8185640958154153205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * a (n - 1) - (a (n - 1) - 5 * a (n - 2))

end

end A180168.P8185640958154153205

namespace A180168

/-- `3*a(n-1)-(a(n-1)-5*a(n-2))` -/
def P8185640958154153205.Spec : Prop :=
  ∀ n, P8185640958154153205.a n = A180168 n

end A180168

/-! ## A180168.P6995713415999945861

`A083694(n)+A002533(n)`
-/

namespace A180168.P6995713415999945861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083694 n + A002533 n

end

end A180168.P6995713415999945861

namespace A180168

/-- `A083694(n)+A002533(n)` -/
def P6995713415999945861.Spec : Prop :=
  ∀ n, P6995713415999945861.a n = A180168 n

end A180168

/-! ## A180168.P16428061215749522635

`A002532(n)+∑[A002533(n)]`
-/

namespace A180168.P16428061215749522635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002532 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180168.P16428061215749522635

namespace A180168

/-- `A002532(n)+∑[A002533(n)]` -/
def P16428061215749522635.Spec : Prop :=
  ∀ n, P16428061215749522635.a n = A180168 n

end A180168

/-! ## A180168.P11216339228693230935

`A083694(n)+Δ[A002532(n)]`
-/

namespace A180168.P11216339228693230935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083694 n + (f1 (n + 1) - f1 n)

end

end A180168.P11216339228693230935

namespace A180168

/-- `A083694(n)+Δ[A002532(n)]` -/
def P11216339228693230935.Spec : Prop :=
  ∀ n, P11216339228693230935.a n = A180168 n

end A180168

/-! ## A180168.P6046565636403437751

`A002533(n)-(A002532(n)-A083695(n))`
-/

namespace A180168.P6046565636403437751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 n - (A002532 n - A083695 n)

end

end A180168.P6046565636403437751

namespace A180168

/-- `A002533(n)-(A002532(n)-A083695(n))` -/
def P6046565636403437751.Spec : Prop :=
  ∀ n, P6046565636403437751.a n = A180168 n

end A180168

/-! ## A180168.P9063489555651303843

`A123011(n)-A083694(n)`
-/

namespace A180168.P9063489555651303843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123011 n - A083694 n

end

end A180168.P9063489555651303843

namespace A180168

/-- `A123011(n)-A083694(n)` -/
def P9063489555651303843.Spec : Prop :=
  ∀ n, P9063489555651303843.a n = A180168 n

end A180168

/-! ## A180168.P341091389501111877

`A123011(n)-2*A002532(n)`
-/

namespace A180168.P341091389501111877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123011 n - 2 * A002532 n

end

end A180168.P341091389501111877

namespace A180168

/-- `A123011(n)-2*A002532(n)` -/
def P341091389501111877.Spec : Prop :=
  ∀ n, P341091389501111877.a n = A180168 n

end A180168

/-! ## A180168.P13134127410640728637

`(A123011(n)+A002533(n))/2`
-/

namespace A180168.P13134127410640728637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123011 n + A002533 n : ℚ) / 2

end

end A180168.P13134127410640728637

namespace A180168

/-- `(A123011(n)+A002533(n))/2` -/
def P13134127410640728637.Spec : Prop :=
  ∀ n, P13134127410640728637.a n = (A180168 n : ℚ)

end A180168

/-! ## A180168.P16729874717171625801

`A083694(n)+Δ[A083695(n)-A083694(n)]`
-/

namespace A180168.P16729874717171625801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083695 n - A083694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083694 n + (f1 (n + 1) - f1 n)

end

end A180168.P16729874717171625801

namespace A180168

/-- `A083694(n)+Δ[A083695(n)-A083694(n)]` -/
def P16729874717171625801.Spec : Prop :=
  ∀ n, P16729874717171625801.a n = A180168 n

end A180168

/-! ## A180168.P15752575545177097871

`A123011(n+1)/5`
-/

namespace A180168.P15752575545177097871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123011 (n + 1) : ℚ) / 5

end

end A180168.P15752575545177097871

namespace A180168

/-- `A123011(n+1)/5` -/
def P15752575545177097871.Spec : Prop :=
  ∀ n, P15752575545177097871.a n = (A180168 n : ℚ)

end A180168

/-!
# A180169: a(n) = sigma(A180162(n)), where A180162(n) is the smallest N such that sigma(N) is an n-th power, or 0 if no such N can be found.

The programs for A180169, there is no canonical definition to state claims against.
-/

/-! ## A180169.P17337200343292882255

`A000203(A180162(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A180169.P17337200343292882255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A180162 n).toNat

end

end A180169.P17337200343292882255

/-! ## A180169.P15486633348654557365

`∏{p}[A180162(n), A034448(#)]`
-/

namespace A180169.P15486633348654557365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A034448 p

end

end A180169.P15486633348654557365

/-! ## A180169.P16064896810548158868

`∏{p}[A180162(n), A378648(#)]`
-/

namespace A180169.P16064896810548158868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A378648 p

end

end A180169.P16064896810548158868

/-!
# A180170: a(0) = 1, a(n) = n*a(n-1)*A014963(n).

The programs for A180170, the canonical program `A180170.P8442958474247998015` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180170 has offset 0).

The definition of A180170 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180170.P8442958474247998015

`n!*A003418(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A180170

/-- `n!*A003418(n)` -/
def P8442958474247998015.Spec : Prop :=
  ∀ n, P8442958474247998015.a n = A180170 n

theorem P8442958474247998015.correct : P8442958474247998015.Spec := by
  intro n
  simp only [A180170]

end A180170

/-! ## A180170.P14997807448425996425

`n*a(n-1)*A014963(n)` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A180170.P14997807448425996425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * a (n - 1) * A014963 n

end

end A180170.P14997807448425996425

namespace A180170

/-- `n*a(n-1)*A014963(n)` -/
def P14997807448425996425.Spec : Prop :=
  ∀ n, P14997807448425996425.a n = A180170 n

end A180170

/-! ## A180170.P13777925248638860323

`n*lcm(n!, a(n-1))` with `a(0)=1`
-/

namespace A180170.P13777925248638860323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * Nat.lcm (Nat.factorial n) (a (n - 1))

end

end A180170.P13777925248638860323

namespace A180170

/-- `n*lcm(n!, a(n-1))` -/
def P13777925248638860323.Spec : Prop :=
  ∀ n, (P13777925248638860323.a n : ℤ) = A180170 n

end A180170

/-! ## A180170.P18021739539486682954

`a(n-1)*A140580(n)` with `a(0)=1`
-/

namespace A180170.P18021739539486682954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A140580 n

end

end A180170.P18021739539486682954

namespace A180170

/-- `a(n-1)*A140580(n)` -/
def P18021739539486682954.Spec : Prop :=
  ∀ n, P18021739539486682954.a n = A180170 n

end A180170

/-! ## A180170.P2742633425331082873

`n!*∏[A014963(∏{p}[n, #])]`
-/

namespace A180170.P2742633425331082873
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A180170.P2742633425331082873

namespace A180170

/-- `n!*∏[A014963(∏{p}[n, #])]` -/
def P2742633425331082873.Spec : Prop :=
  ∀ n, P2742633425331082873.a n = A180170 n

end A180170

/-! ## A180170.P15454131550120806652

`n*a(n-1)*A014963(n)` with `a(0)=1`
-/

namespace A180170.P15454131550120806652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (a (n - 1) * A014963 n)

end

end A180170.P15454131550120806652

namespace A180170

/-- `n*a(n-1)*A014963(n)` -/
def P15454131550120806652.Spec : Prop :=
  ∀ n, P15454131550120806652.a n = A180170 n

end A180170

/-! ## A180170.P11484860863821885286

`A000142(n)*A003418(n)`
-/

namespace A180170.P11484860863821885286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A003418 n

end

end A180170.P11484860863821885286

namespace A180170

/-- `A000142(n)*A003418(n)` -/
def P11484860863821885286.Spec : Prop :=
  ∀ n, P11484860863821885286.a n = A180170 n

end A180170

/-! ## A180170.P11212756653143306179

`A180000(n)*A193282(n)`
-/

namespace A180170.P11212756653143306179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180000 n * A193282 n

end

end A180170.P11212756653143306179

namespace A180170

/-- `A180000(n)*A193282(n)` -/
def P11212756653143306179.Spec : Prop :=
  ∀ n, P11212756653143306179.a n = A180170 n

end A180170

/-! ## A180170.P6207213045262950923

`A003418(n)*A214080(n²)`
-/

namespace A180170.P6207213045262950923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n * A214080 (n ^ 2)

end

end A180170.P6207213045262950923

namespace A180170

/-- `A003418(n)*A214080(n²)` -/
def P6207213045262950923.Spec : Prop :=
  ∀ n, P6207213045262950923.a n = A180170 n

end A180170

/-! ## A180170.P18023356588969597043

`A081125(n)²*A180000(n)`
-/

namespace A180170.P18023356588969597043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081125 n ^ 2 * A180000 n

end

end A180170.P18023356588969597043

namespace A180170

/-- `A081125(n)²*A180000(n)` -/
def P18023356588969597043.Spec : Prop :=
  ∀ n, P18023356588969597043.a n = A180170 n

end A180170

/-!
# A180171: Triangle read by rows: R(n,k) is the number of k-reverses of n.

The programs for A180171, there is no canonical definition to state claims against.
-/

/-! ## A180171.P6120489756534593474

`A180653(n+1)+A179519(n+1)`
-/

namespace A180171.P6120489756534593474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180653 (n + 1) + A179519 (n + 1)

end

end A180171.P6120489756534593474

/-! ## A180171.P14557028341065413746

`A180279(n+1)+A180653(n+1)-A181111(n+1)`
-/

namespace A180171.P14557028341065413746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180279 (n + 1) + (A180653 (n + 1) - A181111 (n + 1))

end

end A180171.P14557028341065413746

/-! ## A180171.P11361148080848536591

`A180653(n+1)+A171712(n+1)*A179317(n+1)`
-/

namespace A180171.P11361148080848536591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180653 (n + 1) + A171712 (n + 1) * A179317 (n + 1)

end

end A180171.P11361148080848536591

/-! ## A180171.P1006985295471250314

`A180653(n+1)+A040001(A002260(n+1))*A179317(n+1)`
-/

namespace A180171.P1006985295471250314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180653 (n + 1) + A040001 (A002260 (n + 1)).toNat * A179317 (n + 1)

end

end A180171.P1006985295471250314

/-! ## A180171.P722699166048437209

`A180653(n+1)+A180424(n+1)*A193738(n)-A181111(n+1)`
-/

namespace A180171.P722699166048437209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180653 (n + 1) + (A180424 (n + 1) * A193738 n - A181111 (n + 1))

end

end A180171.P722699166048437209

/-!
# A180172: a(n) = gcd(prime(n)+2, n).

The programs for A180172, the canonical program `A180172.P1749624586852156181` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180172 has offset 1).

The definition of A180172 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000040(n+1)+2, n+1)` (program `A180172.P1749624586852156181`, by `A180172.P1749624586852156181.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180172.P3119067719325580293

`gcd(n+1, A000040(n+1)+2)`
-/

namespace A180172.P3119067719325580293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000040 (n + 1) + 2)

end

end A180172.P3119067719325580293

namespace A180172

/-- `gcd(n+1, A000040(n+1)+2)` -/
def P3119067719325580293.Spec : Prop :=
  ∀ n, (P3119067719325580293.a n : ℤ) = A180172 (n + 1)

end A180172

/-! ## A180172.P1749624586852156181

`gcd(A000040(n+1)+2, n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A180172

/-- `gcd(A000040(n+1)+2, n+1)` -/
def P1749624586852156181.Spec : Prop :=
  ∀ n, (P1749624586852156181.a n : ℤ) = A180172 (n + 1)

theorem P1749624586852156181.correct : P1749624586852156181.Spec := by
  intro n
  simp only [A180172, Nat.add_sub_cancel]

end A180172

/-! ## A180172.P11480918897039442858

`gcd(n+1, A052147(n+1))`
-/

namespace A180172.P11480918897039442858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A052147 (n + 1))

end

end A180172.P11480918897039442858

namespace A180172

/-- `gcd(n+1, A052147(n+1))` -/
def P11480918897039442858.Spec : Prop :=
  ∀ n, (P11480918897039442858.a n : ℤ) = A180172 (n + 1)

end A180172

/-! ## A180172.P16143882984538573636

`gcd(A174008(n+1)+2, record[2-xor(1, -n)])`
-/

namespace A180172.P16143882984538573636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A174008 (n + 1) + 2) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A180172.P16143882984538573636

namespace A180172

/-- `gcd(A174008(n+1)+2, record[2-xor(1, -n)])` -/
def P16143882984538573636.Spec : Prop :=
  ∀ n, (P16143882984538573636.a n : ℤ) = A180172 (n + 1)

end A180172

/-! ## A180172.P1191453578684147078

`gcd(A008864(n+1)+1, (n+1)*(-1)^n)`
-/

namespace A180172.P1191453578684147078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008864 (n + 1) + 1) ((n + 1 : ℤ) * (-1) ^ n)

end

end A180172.P1191453578684147078

namespace A180172

/-- `gcd(A008864(n+1)+1, (n+1)*(-1)^n)` -/
def P1191453578684147078.Spec : Prop :=
  ∀ n, (P1191453578684147078.a n : ℤ) = A180172 (n + 1)

end A180172

/-! ## A180172.P16897593420892021155

`gcd(A052147(n+1), A103517(n))`
-/

namespace A180172.P16897593420892021155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052147 (n + 1)) (A103517 n)

end

end A180172.P16897593420892021155

namespace A180172

/-- `gcd(A052147(n+1), A103517(n))` -/
def P16897593420892021155.Spec : Prop :=
  ∀ n, (P16897593420892021155.a n : ℤ) = A180172 (n + 1)

end A180172

/-! ## A180172.P8133347445259041468

`gcd(A000265(n+1), A123123(n+1))`
-/

namespace A180172.P8133347445259041468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (n + 1)) (A123123 (n + 1))

end

end A180172.P8133347445259041468

namespace A180172

/-- `gcd(A000265(n+1), A123123(n+1))` -/
def P8133347445259041468.Spec : Prop :=
  ∀ n, (P8133347445259041468.a n : ℤ) = A180172 (n + 1)

end A180172

/-! ## A180172.P15956896896269567974

`gcd(A055670(n+1)-n, A131738(n))`
-/

namespace A180172.P15956896896269567974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055670 (n + 1) - (n : ℤ)) (A131738 n)

end

end A180172.P15956896896269567974

namespace A180172

/-- `gcd(A055670(n+1)-n, A131738(n))` -/
def P15956896896269567974.Spec : Prop :=
  ∀ n, (P15956896896269567974.a n : ℤ) = A180172 (n + 1)

end A180172

/-! ## A180172.P12958715955474785686

`gcd(A014692(n+1)+1, A000027(n+1))`
-/

namespace A180172.P12958715955474785686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014692 (n + 1) + 1) (A000027 (n + 1))

end

end A180172.P12958715955474785686

namespace A180172

/-- `gcd(A014692(n+1)+1, A000027(n+1))` -/
def P12958715955474785686.Spec : Prop :=
  ∀ n, (P12958715955474785686.a n : ℤ) = A180172 (n + 1)

end A180172

/-! ## A180172.P7851490102879198456

`gcd(A096197(n+1)+1, A061019(n+1))`
-/

namespace A180172.P7851490102879198456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096197 (n + 1) + 1) (A061019 (n + 1))

end

end A180172.P7851490102879198456

namespace A180172

/-- `gcd(A096197(n+1)+1, A061019(n+1))` -/
def P7851490102879198456.Spec : Prop :=
  ∀ n, (P7851490102879198456.a n : ℤ) = A180172 (n + 1)

end A180172

/-! ## A180172.P13432462361781240908

`gcd(A131733(n+1)-n, A087156(n+1))`
-/

namespace A180172.P13432462361781240908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131733 (n + 1) - (n : ℤ)) (A087156 (n + 1))

end

end A180172.P13432462361781240908

namespace A180172

/-- `gcd(A131733(n+1)-n, A087156(n+1))` -/
def P13432462361781240908.Spec : Prop :=
  ∀ n, (P13432462361781240908.a n : ℤ) = A180172 (n + 1)

end A180172

/-! ## A180172.P11307255211965596726

`gcd(A008578(n+2)+2, A028310(n+1))`
-/

namespace A180172.P11307255211965596726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008578 (n + 2) + 2) (A028310 (n + 1))

end

end A180172.P11307255211965596726

namespace A180172

/-- `gcd(A008578(n+2)+2, A028310(n+1))` -/
def P11307255211965596726.Spec : Prop :=
  ∀ n, (P11307255211965596726.a n : ℤ) = A180172 (n + 1)

end A180172

/-! ## A180172.P7781962200045981362

`gcd(xor(n, -1), record[A000010(n+1)+3])`
-/

namespace A180172.P7781962200045981362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A180172.P7781962200045981362

namespace A180172

/-- `gcd(xor(n, -1), record[A000010(n+1)+3])` -/
def P7781962200045981362.Spec : Prop :=
  ∀ n, (P7781962200045981362.a n : ℤ) = A180172 (n + 1)

end A180172

/-! ## A180172.P10047489934875550364

`gcd(C(n+1, n), record[A006530(n+2)+2])`
-/

namespace A180172.P10047489934875550364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (n + 1) n : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A180172.P10047489934875550364

namespace A180172

/-- `gcd(C(n+1, n), record[A006530(n+2)+2])` -/
def P10047489934875550364.Spec : Prop :=
  ∀ n, (P10047489934875550364.a n : ℤ) = A180172 (n + 1)

end A180172

/-! ## A180172.P11963409923784775512

`gcd(-xor(n, -1), record[A020639(n+2)+2])`
-/

namespace A180172.P11963409923784775512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-Int.xor (n : ℤ) (-1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A180172.P11963409923784775512

namespace A180172

/-- `gcd(-xor(n, -1), record[A020639(n+2)+2])` -/
def P11963409923784775512.Spec : Prop :=
  ∀ n, (P11963409923784775512.a n : ℤ) = A180172 (n + 1)

end A180172

/-! ## A180172.P11121827395757895299

`gcd(A082500(2*(n+1))+2, A082500(2*n+1))`
-/

namespace A180172.P11121827395757895299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082500 (2 * (n + 1)) + 2) (A082500 (2 * n + 1))

end

end A180172.P11121827395757895299

namespace A180172

/-- `gcd(A082500(2*(n+1))+2, A082500(2*n+1))` -/
def P11121827395757895299.Spec : Prop :=
  ∀ n, (P11121827395757895299.a n : ℤ) = A180172 (n + 1)

end A180172

/-! ## A180172.P4570697556265132186

`gcd(A134735(2*n+1)-A103517(2*n), 4*(n+1))`
-/

namespace A180172.P4570697556265132186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134735 (2 * n + 1) - A103517 (2 * n)) (4 * (n + 1) : ℤ)

end

end A180172.P4570697556265132186

namespace A180172

/-- `gcd(A134735(2*n+1)-A103517(2*n), 4*(n+1))` -/
def P4570697556265132186.Spec : Prop :=
  ∀ n, (P4570697556265132186.a n : ℤ) = A180172 (n + 1)

end A180172

/-! ## A180172.P14607529151356687445

`gcd(record[A014963(2*n+1)]-2*n, ∑[n])`
-/

namespace A180172.P14607529151356687445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (2 * n : ℤ)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A180172.P14607529151356687445

namespace A180172

/-- `gcd(record[A014963(2*n+1)]-2*n, ∑[n])` -/
def P14607529151356687445.Spec : Prop :=
  ∀ n, (P14607529151356687445.a n : ℤ) = A180172 (n + 1)

end A180172

/-! ## A180172.P12687599981262655676

`A087267(A055670(n+1)+1)`
-/

namespace A180172.P12687599981262655676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087267 (A055670 (n + 1) + 1).toNat

end

end A180172.P12687599981262655676

namespace A180172

/-- `A087267(A055670(n+1)+1)` -/
def P12687599981262655676.Spec : Prop :=
  ∀ n, P12687599981262655676.a n = A180172 (n + 1)

end A180172

/-! ## A180172.P1513671701703557263

`A087267(or(1, A008864(n+1)))`
-/

namespace A180172.P1513671701703557263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087267 (Int.lor 1 (A008864 (n + 1))).toNat

end

end A180172.P1513671701703557263

namespace A180172

/-- `A087267(or(1, A008864(n+1)))` -/
def P1513671701703557263.Spec : Prop :=
  ∀ n, P1513671701703557263.a n = A180172 (n + 1)

end A180172

/-!
# A180173: a(n) = gcd(prime(n)-2, n).

The programs for A180173, the canonical program `A180173.P6989963796229651165` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180173 has offset 1).

The definition of A180173 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000040(n+1)-2, n+1)` (program `A180173.P6989963796229651165`, by `A180173.P6989963796229651165.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180173.P16892520533338411394

`gcd(n+1, A000040(n+1)-2)`
-/

namespace A180173.P16892520533338411394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000040 (n + 1) - 2)

end

end A180173.P16892520533338411394

namespace A180173

/-- `gcd(n+1, A000040(n+1)-2)` -/
def P16892520533338411394.Spec : Prop :=
  ∀ n, (P16892520533338411394.a n : ℤ) = A180173 (n + 1)

end A180173

/-! ## A180173.P6989963796229651165

`gcd(A000040(n+1)-2, n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A180173

/-- `gcd(A000040(n+1)-2, n+1)` -/
def P6989963796229651165.Spec : Prop :=
  ∀ n, (P6989963796229651165.a n : ℤ) = A180173 (n + 1)

theorem P6989963796229651165.correct : P6989963796229651165.Spec := by
  intro n
  simp only [A180173, Nat.add_sub_cancel]

end A180173

/-! ## A180173.P7124029970426353603

`gcd(n+1, A040976(n+1))`
-/

namespace A180173.P7124029970426353603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A040976 (n + 1))

end

end A180173.P7124029970426353603

namespace A180173

/-- `gcd(n+1, A040976(n+1))` -/
def P7124029970426353603.Spec : Prop :=
  ∀ n, (P7124029970426353603.a n : ℤ) = A180173 (n + 1)

end A180173

/-! ## A180173.P8164100611328019152

`gcd(A030640(n), A129726(n+1))`
-/

namespace A180173.P8164100611328019152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030640 n) (A129726 (n + 1))

end

end A180173.P8164100611328019152

namespace A180173

/-- `gcd(A030640(n), A129726(n+1))` -/
def P8164100611328019152.Spec : Prop :=
  ∀ n, (P8164100611328019152.a n : ℤ) = A180173 (n + 1)

end A180173

/-! ## A180173.P16332014791744083934

`gcd(A000265(n+1), A140777(n+1))`
-/

namespace A180173.P16332014791744083934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (n + 1)) (A140777 (n + 1))

end

end A180173.P16332014791744083934

namespace A180173

/-- `gcd(A000265(n+1), A140777(n+1))` -/
def P16332014791744083934.Spec : Prop :=
  ∀ n, (P16332014791744083934.a n : ℤ) = A180173 (n + 1)

end A180173

/-! ## A180173.P15193664102023221771

`gcd(1-A006093(n+1), A103517(n))`
-/

namespace A180173.P15193664102023221771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A006093 (n + 1)) (A103517 n)

end

end A180173.P15193664102023221771

namespace A180173

/-- `gcd(1-A006093(n+1), A103517(n))` -/
def P15193664102023221771.Spec : Prop :=
  ∀ n, (P15193664102023221771.a n : ℤ) = A180173 (n + 1)

end A180173

/-! ## A180173.P12127223968975975131

`gcd(A006093(n+1)+n, A131738(n))`
-/

namespace A180173.P12127223968975975131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006093 (n + 1) + (n : ℤ)) (A131738 n)

end

end A180173.P12127223968975975131

namespace A180173

/-- `gcd(A006093(n+1)+n, A131738(n))` -/
def P12127223968975975131.Spec : Prop :=
  ∀ n, (P12127223968975975131.a n : ℤ) = A180173 (n + 1)

end A180173

/-! ## A180173.P7848012785929600980

`gcd(1-A065890(n+1), A000027(n+1))`
-/

namespace A180173.P7848012785929600980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A065890 (n + 1)) (A000027 (n + 1))

end

end A180173.P7848012785929600980

namespace A180173

/-- `gcd(1-A065890(n+1), A000027(n+1))` -/
def P7848012785929600980.Spec : Prop :=
  ∀ n, (P7848012785929600980.a n : ℤ) = A180173 (n + 1)

end A180173

/-! ## A180173.P7829327701047233045

`gcd(1-A060822(n+1), A061019(n+1))`
-/

namespace A180173.P7829327701047233045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A060822 (n + 1)) (A061019 (n + 1))

end

end A180173.P7829327701047233045

namespace A180173

/-- `gcd(1-A060822(n+1), A061019(n+1))` -/
def P7829327701047233045.Spec : Prop :=
  ∀ n, (P7829327701047233045.a n : ℤ) = A180173 (n + 1)

end A180173

/-! ## A180173.P5513075755272502331

`gcd(A095116(n+1)+n, A066043(n+1))`
-/

namespace A180173.P5513075755272502331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A095116 (n + 1) + (n : ℤ)) (A066043 (n + 1))

end

end A180173.P5513075755272502331

namespace A180173

/-- `gcd(A095116(n+1)+n, A066043(n+1))` -/
def P5513075755272502331.Spec : Prop :=
  ∀ n, (P5513075755272502331.a n : ℤ) = A180173 (n + 1)

end A180173

/-! ## A180173.P4091658536109810820

`gcd(2-A008578(n+2), A028310(n+1))`
-/

namespace A180173.P4091658536109810820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A008578 (n + 2)) (A028310 (n + 1))

end

end A180173.P4091658536109810820

namespace A180173

/-- `gcd(2-A008578(n+2), A028310(n+1))` -/
def P4091658536109810820.Spec : Prop :=
  ∀ n, (P4091658536109810820.a n : ℤ) = A180173 (n + 1)

end A180173

/-! ## A180173.P11643077085643723282

`gcd(-xor(n, -1), record[A000010(n+1)-1])`
-/

namespace A180173.P11643077085643723282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-Int.xor (n : ℤ) (-1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A180173.P11643077085643723282

namespace A180173

/-- `gcd(-xor(n, -1), record[A000010(n+1)-1])` -/
def P11643077085643723282.Spec : Prop :=
  ∀ n, (P11643077085643723282.a n : ℤ) = A180173 (n + 1)

end A180173

/-! ## A180173.P10137107346835605665

`gcd(xor(n, -1), eq[2, A000005(n+2)])`
-/

namespace A180173.P10137107346835605665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A180173.P10137107346835605665

namespace A180173

/-- `gcd(xor(n, -1), eq[2, A000005(n+2)])` -/
def P10137107346835605665.Spec : Prop :=
  ∀ n, (P10137107346835605665.a n : ℤ) = A180173 (n + 1)

end A180173

/-! ## A180173.P9292652704186637993

`gcd(C(n+1, n), lt[n, A000010(n+2)])`
-/

namespace A180173.P9292652704186637993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose (n + 1) n) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A180173.P9292652704186637993

namespace A180173

/-- `gcd(C(n+1, n), lt[n, A000010(n+2)])` -/
def P9292652704186637993.Spec : Prop :=
  ∀ n, (P9292652704186637993.a n : ℤ) = A180173 (n + 1)

end A180173

/-! ## A180173.P9192305892091162912

`gcd(A008578(n+2)-2, A060681(2*(n+1)))`
-/

namespace A180173.P9192305892091162912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008578 (n + 2) - 2) (A060681 (2 * (n + 1)))

end

end A180173.P9192305892091162912

namespace A180173

/-- `gcd(A008578(n+2)-2, A060681(2*(n+1)))` -/
def P9192305892091162912.Spec : Prop :=
  ∀ n, (P9192305892091162912.a n : ℤ) = A180173 (n + 1)

end A180173

/-! ## A180173.P7675883851455802263

`gcd(2-A082500(2*(n+1)), A082500(2*n+1))`
-/

namespace A180173.P7675883851455802263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A082500 (2 * (n + 1))) (A082500 (2 * n + 1))

end

end A180173.P7675883851455802263

namespace A180173

/-- `gcd(2-A082500(2*(n+1)), A082500(2*n+1))` -/
def P7675883851455802263.Spec : Prop :=
  ∀ n, (P7675883851455802263.a n : ℤ) = A180173 (n + 1)

end A180173

/-! ## A180173.P1679483941813327035

`gcd(A134735(2*n+1)+A103517(2*n), 4*(n+1))`
-/

namespace A180173.P1679483941813327035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134735 (2 * n + 1) + A103517 (2 * n)) (4 * (n + 1) : ℤ)

end

end A180173.P1679483941813327035

namespace A180173

/-- `gcd(A134735(2*n+1)+A103517(2*n), 4*(n+1))` -/
def P1679483941813327035.Spec : Prop :=
  ∀ n, (P1679483941813327035.a n : ℤ) = A180173 (n + 1)

end A180173

/-! ## A180173.P15661037386400190775

`gcd(n+1, record[A007431(n)])`
-/

namespace A180173.P15661037386400190775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A180173.P15661037386400190775

namespace A180173

/-- `gcd(n+1, record[A007431(n)])` -/
def P15661037386400190775.Spec : Prop :=
  ∀ n, (P15661037386400190775.a n : ℤ) = A180173 (n + 1)

end A180173

/-! ## A180173.P11849066554351308377

`gcd(record[A007431(n)], A103517(n))`
-/

namespace A180173.P11849066554351308377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A103517 n)

end

end A180173.P11849066554351308377

namespace A180173

/-- `gcd(record[A007431(n)], A103517(n))` -/
def P11849066554351308377.Spec : Prop :=
  ∀ n, (P11849066554351308377.a n : ℤ) = A180173 (n + 1)

end A180173

/-! ## A180173.P651123892227572855

`gcd(A040976(n+1), A176900(n))`
-/

namespace A180173.P651123892227572855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040976 (n + 1)) (A176900 n)

end

end A180173.P651123892227572855

namespace A180173

/-- `gcd(A040976(n+1), A176900(n))` -/
def P651123892227572855.Spec : Prop :=
  ∀ n, (P651123892227572855.a n : ℤ) = A180173 (n + 1)

end A180173

/-!
# A180175: Diagonal sums of A164844.

The programs for A180175, the canonical program `A180175.P1721137477292752312` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180175 has offset 1).

The definition of A180175 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180175.P1721137477292752312

`11*a(n-1)-9*a(n-2)-10*a(n-3)` with `a(0)=1, a(1)=10, a(2)=101`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180175

/-- `11*a(n-1)-9*a(n-2)-10*a(n-3)` -/
def P1721137477292752312.Spec : Prop :=
  ∀ n, P1721137477292752312.a n = A180175 (n + 1)

theorem P1721137477292752312.correct : P1721137477292752312.Spec := by
  intro n
  simp only [A180175, Nat.add_sub_cancel]

end A180175

/-! ## A180175.P10259564246080577504

`(90*10^n-A022100(n))/89`
-/

namespace A180175.P10259564246080577504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((90 * 10 ^ n : ℤ) - A022100 n : ℚ) / 89

end

end A180175.P10259564246080577504

namespace A180175

/-- `(90*10^n-A022100(n))/89` -/
def P10259564246080577504.Spec : Prop :=
  ∀ n, P10259564246080577504.a n = (A180175 (n + 1) : ℚ)

end A180175

/-! ## A180175.P8257425463883809648

`ogf((1-x)/(1-11x+9x^2+10x^3))`
-/

namespace A180175.P8257425463883809648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -11, 9, 10] n

end

end A180175.P8257425463883809648

namespace A180175

/-- `ogf((1-x)/(1-11x+9x^2+10x^3))` -/
def P8257425463883809648.Spec : Prop :=
  ∀ n, P8257425463883809648.a n = A180175 (n + 1)

end A180175

/-! ## A180175.P13215558466513840583

`Δ[A094704(n)]`
-/

namespace A180175.P13215558466513840583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180175.P13215558466513840583

namespace A180175

/-- `Δ[A094704(n)]` -/
def P13215558466513840583.Spec : Prop :=
  ∀ n, P13215558466513840583.a n = A180175 (n + 1)

end A180175

/-! ## A180175.P16089383981265882430

`Δ[A000045(n)+10*a(n-1)]` with `a(0)=0`
-/

namespace A180175.P16089383981265882430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000045 n + 10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180175.P16089383981265882430

namespace A180175

/-- `Δ[A000045(n)+10*a(n-1)]` -/
def P16089383981265882430.Spec : Prop :=
  ∀ n, P16089383981265882430.a n = A180175 (n + 1)

end A180175

/-! ## A180175.P3529889728431368662

`A000045(n-1)+10*a(n-1)` with `a(0)=1`
-/

namespace A180175.P3529889728431368662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (n - 1) + 10 * a (n - 1)

end

end A180175.P3529889728431368662

namespace A180175

/-- `A000045(n-1)+10*a(n-1)` -/
def P3529889728431368662.Spec : Prop :=
  ∀ n, P3529889728431368662.a n = A180175 (n + 1)

end A180175

/-! ## A180175.P16002811859863330143

`A094704(n+1)-A094704(n)`
-/

namespace A180175.P16002811859863330143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094704 (n + 1) - A094704 n

end

end A180175.P16002811859863330143

namespace A180175

/-- `A094704(n+1)-A094704(n)` -/
def P16002811859863330143.Spec : Prop :=
  ∀ n, P16002811859863330143.a n = A180175 (n + 1)

end A180175

/-!
# A180177: Triangle read by rows: T(n,k) is the number of compositions of n without 2's and having k parts; 1<=k<=n.

The programs for A180177, there is no canonical definition to state claims against.
-/

/-! ## A180177.P7985594026488384456

`A097230(A061579(n))`
-/

namespace A180177.P7985594026488384456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097230 (A061579 n).toNat

end

end A180177.P7985594026488384456

/-! ## A180177.P5943331039577830368

`A097230(A114327(n)+n)`
-/

namespace A180177.P5943331039577830368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097230 (A114327 n + (n : ℤ)).toNat

end

end A180177.P5943331039577830368

/-! ## A180177.P13385535778453140693

`A097230(A038722(n+1)-1)`
-/

namespace A180177.P13385535778453140693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097230 (A038722 (n + 1) - 1).toNat

end

end A180177.P13385535778453140693

/-! ## A180177.P8221922324576639331

`A097230(A093995(n+1)-(n+1))`
-/

namespace A180177.P8221922324576639331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097230 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A180177.P8221922324576639331

/-! ## A180177.P9493899916559347866

`A097230(A038722(n+2))`
-/

namespace A180177.P9493899916559347866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097230 (A038722 (n + 2)).toNat

end

end A180177.P9493899916559347866

/-!
# A180178: Triangle read by rows: T(n,k) is the number of compositions of n without 3's and having k parts; 1 <= k <= n.

The programs for A180178, there is no canonical definition to state claims against.
-/

/-! ## A180178.P5404407012287859524

`gcd(A185284(2*(n+2))%2, A101950(n))`
-/

namespace A180178.P5404407012287859524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A185284 (2 * (n + 2))) 2) (A101950 n)

end

end A180178.P5404407012287859524

/-! ## A180178.P4406556491170790910

`gcd(A104562(n), A107846(A026021(n)))`
-/

namespace A180178.P4406556491170790910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A104562 n) (A107846 (A026021 n).toNat)

end

end A180178.P4406556491170790910

/-! ## A180178.P3708872515411976136

`gcd(A101950(n), A178616(A030108(n)))`
-/

namespace A180178.P3708872515411976136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101950 n) (A178616 (A030108 n).toNat)

end

end A180178.P3708872515411976136

/-! ## A180178.P12157057943683380748

`abs(A335520(A016885(n))+A104562(n))`
-/

namespace A180178.P12157057943683380748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A335520 (A016885 n).toNat + A104562 n|

end

end A180178.P12157057943683380748

/-! ## A180178.P16734459296956402544

`gcd(A101950(A319655(n)), A196776(3*n+5))`
-/

namespace A180178.P16734459296956402544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101950 (A319655 n).toNat) (A196776 (3 * n + 5))

end

end A180178.P16734459296956402544

/-!
# A180179: Triangle read by rows: T(n,k) is the number of compositions of n without 4's and having k parts; 1 <= k <= n.

The programs for A180179, there is no canonical definition to state claims against.
-/

/-! ## A180179.P13402870493567516891

`A121548(n+1)^A266344(A006498(n))`
-/

namespace A180179.P13402870493567516891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121548 (n + 1) : ℚ) ^ (A266344 (A006498 n).toNat : ℤ)

end

end A180179.P13402870493567516891

/-! ## A180179.P10612074020033890848

`or(A000161(A028321(n)), A121548(n+1))`
-/

namespace A180179.P10612074020033890848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000161 (A028321 n).toNat) (A121548 (n + 1))

end

end A180179.P10612074020033890848

/-! ## A180179.P2094268744003226736

`or(A055641(A085158(n)), A121548(n+1))`
-/

namespace A180179.P2094268744003226736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 (A085158 n).toNat) (A121548 (n + 1))

end

end A180179.P2094268744003226736

/-! ## A180179.P13615828297478073191

`or(A121548(n+1), A340507(A176230(n)))`
-/

namespace A180179.P13615828297478073191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A121548 (n + 1)) (A340507 (A176230 n).toNat)

end

end A180179.P13615828297478073191

/-! ## A180179.P7670690888113273361

`or(A107846(A000043(n+1)), A121548(n+1))`
-/

namespace A180179.P7670690888113273361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107846 (A000043 (n + 1)).toNat) (A121548 (n + 1))

end

end A180179.P7670690888113273361

/-!
# A180180: Triangle read by rows: T(n,k) is the number of compositions of n without 5's and having k parts; 1 <= k <= n.

The programs for A180180, there is no canonical definition to state claims against.
-/

/-! ## A180180.P8195225410704198388

`A007318(n)-A325801(A288039(n))`
-/

namespace A180180.P8195225410704198388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A325801 (A288039 n).toNat

end

end A180180.P8195225410704198388

/-! ## A180180.P6740718871805020024

`A007318(n)-A216279(A000141(n+1))`
-/

namespace A180180.P6740718871805020024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A216279 (A000141 (n + 1)).toNat

end

end A180180.P6740718871805020024

/-! ## A180180.P10973647756896930458

`A007318(n)-A165112(A010893(2*(n+2)))`
-/

namespace A180180.P10973647756896930458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A165112 (A010893 (2 * (n + 2) + 13)).toNat

end

end A180180.P10973647756896930458

/-! ## A180180.P1939184811643243493

`A007318(n)-val(A006651(n+6)+1, 9)`
-/

namespace A180180.P1939184811643243493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - (SequenceMachineLib.valuation (A006651 (n + 6) + 1).toNat 9 : ℤ)

end

end A180180.P1939184811643243493

/-! ## A180180.P12742998900373685372

`and(A007318(n), A141548(A124773(n)))`
-/

namespace A180180.P12742998900373685372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007318 n) (A141548 (A124773 n).toNat)

end

end A180180.P12742998900373685372

/-!
# A180181: Triangle read by rows: T(n,k) is the number of compositions of n without 6's and having k parts; 1 <= k <= n.

The programs for A180181, there is no canonical definition to state claims against.
-/

/-! ## A180181.P11661535830006644576

`and(A007318(n), A002321(A262616(n)))`
-/

namespace A180181.P11661535830006644576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007318 n) (A002321 (A262616 n).toNat)

end

end A180181.P11661535830006644576

/-! ## A180181.P14893143908046279835

`and(A002321(A262616(n)), A180183(n+1))`
-/

namespace A180181.P14893143908046279835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002321 (A262616 n).toNat) (A180183 (n + 1))

end

end A180181.P14893143908046279835

/-! ## A180181.P9641733551114161335

`A007318(n)-A278478(A034699(83*(n+1)²))`
-/

namespace A180181.P9641733551114161335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A278478 (A034699 (83 * (n + 1) ^ 2)).toNat

end

end A180181.P9641733551114161335

/-! ## A180181.P15106847495160413133

`A007318(n)-A343959(A157636(2*(n+2)))`
-/

namespace A180181.P15106847495160413133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A343959 (A157636 (2 * (n + 2))).toNat

end

end A180181.P15106847495160413133

/-! ## A180181.P5317753635557744651

`A007318(n)-A335446(A285959(n+1))`
-/

namespace A180181.P5317753635557744651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A335446 (A285959 (n + 1)).toNat

end

end A180181.P5317753635557744651

/-!
# A180182: Triangle read by rows: T(n,k) is the number of compositions of n without 7's and having k parts; 1 <= k <= n.

The programs for A180182, there is no canonical definition to state claims against.
-/

/-! ## A180182.P1213769023828223166

`A213888(n+1)+A007318(n)-A213889(n+1)`
-/

namespace A180182.P1213769023828223166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213888 (n + 1) + (A007318 n - A213889 (n + 1))

end

end A180182.P1213769023828223166

/-! ## A180182.P9412211465860215496

`gcd(A016389(A233271(n)), A061676(n+1))`
-/

namespace A180182.P9412211465860215496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016389 (A233271 n).toNat) (A061676 (n + 1))

end

end A180182.P9412211465860215496

/-! ## A180182.P13947120549392015234

`or(A061676(n+1), A178798(A109128(n+2)))`
-/

namespace A180182.P13947120549392015234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061676 (n + 1)) (A178798 (A109128 (n + 2)).toNat)

end

end A180182.P13947120549392015234

/-! ## A180182.P14636951017647069434

`A061676(n+1)-A178798(A097609(n))`
-/

namespace A180182.P14636951017647069434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061676 (n + 1) - A178798 (A097609 n).toNat

end

end A180182.P14636951017647069434

/-! ## A180182.P1371135628633725152

`A061676(n+1)^A026794(A119502(n))`
-/

namespace A180182.P1371135628633725152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061676 (n + 1) : ℚ) ^ (A026794 (A119502 n).toNat : ℤ)

end

end A180182.P1371135628633725152

/-!
# A180183: Triangle read by rows: T(n,k) is the number of compositions of n without 8's and having k parts; 1 <= k <= n.

The programs for A180183, there is no canonical definition to state claims against.
-/

/-! ## A180183.P16310040831013491662

`Δ[A111660(2*n+1)]*A007318(n)`
-/

namespace A180183.P16310040831013491662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A007318 n

end

end A180183.P16310040831013491662

/-! ## A180183.P11571776110556815706

`A007318(n)-A185264(A033739(n))`
-/

namespace A180183.P11571776110556815706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A185264 (A033739 n).toNat

end

end A180183.P11571776110556815706

/-! ## A180183.P12648293996837549502

`A007318(n)-A277156(A000065(n))`
-/

namespace A180183.P12648293996837549502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A277156 (A000065 n).toNat

end

end A180183.P12648293996837549502

/-! ## A180183.P12029127990017280018

`A007318(n)-A224447(A073202(n))`
-/

namespace A180183.P12029127990017280018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A224447 (A073202 n).toNat

end

end A180183.P12029127990017280018

/-! ## A180183.P4138116471331714012

`lcm(A007318(n), A011587(A031285(n)))`
-/

namespace A180183.P4138116471331714012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A011587 (A031285 n).toNat)

end

end A180183.P4138116471331714012

/-!
# A180184: Irregular triangle read by rows: T(n,k) is the number of compositions of n with k parts, all >= 4, for n >= 4 and 1 <= k <= floor(n/4).

The programs for A180184, there is no canonical definition to state claims against.
-/

/-! ## A180184.P7499924770328994952

`gcd(A317500(n), A318772(n))`
-/

namespace A180184.P7499924770328994952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A317500 n) (A318772 n)

end

end A180184.P7499924770328994952

/-! ## A180184.P12065832248601559368

`gcd(A000027(A317500(n)), A318773(n))`
-/

namespace A180184.P12065832248601559368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A317500 n).toNat) (A318773 n)

end

end A180184.P12065832248601559368

/-! ## A180184.P4301499583931312157

`gcd(A317501(n), A318773(n))`
-/

namespace A180184.P4301499583931312157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A317501 n) (A318773 n)

end

end A180184.P4301499583931312157

/-! ## A180184.P5011291933897576064

`A361338(A059023(n+4)+A009998(2*(n+2)))`
-/

namespace A180184.P5011291933897576064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361338 (A059023 (n + 4) + A009998 (2 * (n + 2))).toNat

end

end A180184.P5011291933897576064

/-!
# A180187: Number of successions in all the permutations p of [n] such that p(1)=1 and having no 3-sequences. A succession of a permutation p is a position i such that p(i +1) - p(i) = 1.

The programs for A180187, there is no canonical definition to state claims against.
-/

/-! ## A180187.P6091499558760946887

`A165960(n)-2*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A180187.P6091499558760946887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A165960 n - 2 * a (n - 1)

end

end A180187.P6091499558760946887

/-! ## A180187.P15850378747488333819

`A216718(∑[n]+3)%A003048(n+1)`
-/

namespace A180187.P15850378747488333819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216718 (∑ j ∈ Finset.range (n + 1), f1 j + 3)) (A003048 (n + 1))

end

end A180187.P15850378747488333819

/-! ## A180187.P5042689962747861124

`A059995(or(8, A230056(n)))`
-/

namespace A180187.P5042689962747861124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (Int.lor 8 (A230056 n)).toNat

end

end A180187.P5042689962747861124

/-!
# A180188: Triangle read by rows: T(n,k) is the number of permutations of [n] with k circular successions (0<=k<=n-1). A circular succession in a permutation p of [n] is either a pair p(i), p(i+1), where p(i+1)=p(i)+1 or the pair p(n), p(1) if p(1)=p(n)+1.

The programs for A180188, the canonical program `A180188.P17065688349002946383` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180188 has offset 1).

The definition of A180188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180188.P10196648579927752990

`∑[char[∑[n]]]*A008290(n)`
-/

namespace A180188.P10196648579927752990
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A008290 n

end

end A180188.P10196648579927752990

namespace A180188

/-- `∑[char[∑[n]]]*A008290(n)` -/
def P10196648579927752990.Spec : Prop :=
  ∀ n, P10196648579927752990.a n = A180188 (n + 1)

end A180188

/-! ## A180188.P17065688349002946383

`A002024(n+1)*A098825(A061579(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A180188

/-- `A002024(n+1)*A098825(A061579(n))` -/
def P17065688349002946383.Spec : Prop :=
  ∀ n, P17065688349002946383.a n = A180188 (n + 1)

theorem P17065688349002946383.correct : P17065688349002946383.Spec := by
  intro n
  simp only [A180188, Nat.add_sub_cancel]

end A180188

/-! ## A180188.P15741805708608129990

`(A003056(n)+1)*A098825(A061579(n))`
-/

namespace A180188.P15741805708608129990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 1) * A098825 (A061579 n).toNat

end

end A180188.P15741805708608129990

namespace A180188

/-- `(A003056(n)+1)*A098825(A061579(n))` -/
def P15741805708608129990.Spec : Prop :=
  ∀ n, P15741805708608129990.a n = A180188 (n + 1)

end A180188

/-! ## A180188.P10607267939475116214

`A002024(n+1)*A098825(A038722(n+2))`
-/

namespace A180188.P10607267939475116214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A098825 (A038722 (n + 2)).toNat

end

end A180188.P10607267939475116214

namespace A180188

/-- `A002024(n+1)*A098825(A038722(n+2))` -/
def P10607267939475116214.Spec : Prop :=
  ∀ n, P10607267939475116214.a n = A180188 (n + 1)

end A180188

/-! ## A180188.P3120171026485248009

`(A003056(n)+1)*A098825(A038722(n+2))`
-/

namespace A180188.P3120171026485248009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 1) * A098825 (A038722 (n + 2)).toNat

end

end A180188.P3120171026485248009

namespace A180188

/-- `(A003056(n)+1)*A098825(A038722(n+2))` -/
def P3120171026485248009.Spec : Prop :=
  ∀ n, P3120171026485248009.a n = A180188 (n + 1)

end A180188

/-! ## A180188.P13822656154794620534

`(A003056(n)+1)*A098825(A114327(n)+n)`
-/

namespace A180188.P13822656154794620534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 1) * A098825 (A114327 n + (n : ℤ)).toNat

end

end A180188.P13822656154794620534

namespace A180188

/-- `(A003056(n)+1)*A098825(A114327(n)+n)` -/
def P13822656154794620534.Spec : Prop :=
  ∀ n, P13822656154794620534.a n = A180188 (n + 1)

end A180188

/-!
# A180189: Number of permutations of [n] having exactly 1 circular succession. A circular succession in a permutation p of [n] is either a pair p(i), p(i+1), where p(i+1)=p(i)+1 or the pair p(n), p(1) if p(1)=p(n)+1.

The programs for A180189, the canonical program `A180189.P10168693953757439281` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180189 has offset 1).

The definition of A180189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180189.P10168693953757439281

`2*A000387(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A180189

/-- `2*A000387(n+1)` -/
def P10168693953757439281.Spec : Prop :=
  ∀ n, P10168693953757439281.a n = A180189 (n + 1)

theorem P10168693953757439281.correct : P10168693953757439281.Spec := by
  intro n
  simp only [A180189, Nat.add_sub_cancel]

end A180189

/-! ## A180189.P5781914181054454251

`(n+1)*(a(n-1)-n*(-1)^n)` with `a(0)=0`
-/

namespace A180189.P5781914181054454251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1 : ℤ) * (a (n - 1) - (n : ℤ) * (-1) ^ n)

end

end A180189.P5781914181054454251

namespace A180189

/-- `(n+1)*(a(n-1)-n*(-1)^n)` -/
def P5781914181054454251.Spec : Prop :=
  ∀ n, P5781914181054454251.a n = A180189 (n + 1)

end A180189

/-! ## A180189.P5255181089623752402

`A180188(∑[n]+2)`
-/

namespace A180189.P5255181089623752402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180188 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A180189.P5255181089623752402

namespace A180189

/-- `A180188(∑[n]+2)` -/
def P5255181089623752402.Spec : Prop :=
  ∀ n, P5255181089623752402.a n = A180189 (n + 1)

end A180189

/-! ## A180189.P15390197928548865353

`Δ[2*∑[A000387(n)]]`
-/

namespace A180189.P15390197928548865353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000387 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180189.P15390197928548865353

namespace A180189

/-- `Δ[2*∑[A000387(n)]]` -/
def P15390197928548865353.Spec : Prop :=
  ∀ n, P15390197928548865353.a n = A180189 (n + 1)

end A180189

/-! ## A180189.P13334843778334639289

`2*A145225(∑[n+1])`
-/

namespace A180189.P13334843778334639289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145225 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180189.P13334843778334639289

namespace A180189

/-- `2*A145225(∑[n+1])` -/
def P13334843778334639289.Spec : Prop :=
  ∀ n, P13334843778334639289.a n = A180189 (n + 1)

end A180189

/-! ## A180189.P13363858807889953520

`abs(A182386(n+1)+n)`
-/

namespace A180189.P13363858807889953520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182386 (n + 1) + (n : ℤ)|

end

end A180189.P13363858807889953520

namespace A180189

/-- `abs(A182386(n+1)+n)` -/
def P13363858807889953520.Spec : Prop :=
  ∀ n, P13363858807889953520.a n = A180189 (n + 1)

end A180189

/-! ## A180189.P39335581616578903

`(n+1)*xor(1, A000166(n))`
-/

namespace A180189.P39335581616578903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.xor 1 (A000166 n)

end

end A180189.P39335581616578903

namespace A180189

/-- `(n+1)*xor(1, A000166(n))` -/
def P39335581616578903.Spec : Prop :=
  ∀ n, P39335581616578903.a n = A180189 (n + 1)

end A180189

/-! ## A180189.P3697029946945397016

`A181983(n)+A000166(n+1)`
-/

namespace A180189.P3697029946945397016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 n + A000166 (n + 1)

end

end A180189.P3697029946945397016

namespace A180189

/-- `A181983(n)+A000166(n+1)` -/
def P3697029946945397016.Spec : Prop :=
  ∀ n, P3697029946945397016.a n = A180189 (n + 1)

end A180189

/-! ## A180189.P15156880493600721842

`A000166(n+1)-A038608(n)`
-/

namespace A180189.P15156880493600721842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (n + 1) - A038608 n

end

end A180189.P15156880493600721842

namespace A180189

/-- `A000166(n+1)-A038608(n)` -/
def P15156880493600721842.Spec : Prop :=
  ∀ n, P15156880493600721842.a n = A180189 (n + 1)

end A180189

/-! ## A180189.P9531361129722753232

`A348311(n+1)-A000240(n+1)`
-/

namespace A180189.P9531361129722753232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348311 (n + 1) - A000240 (n + 1)

end

end A180189.P9531361129722753232

namespace A180189

/-- `A348311(n+1)-A000240(n+1)` -/
def P9531361129722753232.Spec : Prop :=
  ∀ n, P9531361129722753232.a n = A180189 (n + 1)

end A180189

/-!
# A180191: Number of permutations of [n] having at least one succession. A succession of a permutation p is a position i such that p(i+1)-p(i) = 1.

The programs for A180191, the canonical program `A180191.P1102953380152495368` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180191 has offset 1).

The definition of A180191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180191.P1102953380152495368

`A002467(n+1)-A000166(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A180191

/-- `A002467(n+1)-A000166(n)` -/
def P1102953380152495368.Spec : Prop :=
  ∀ n, P1102953380152495368.a n = A180191 (n + 1)

theorem P1102953380152495368.correct : P1102953380152495368.Spec := by
  intro n
  simp only [A180191, Nat.add_sub_cancel]

end A180191

/-! ## A180191.P1161508871721924671

`(n+1)!-A000255(n)`
-/

namespace A180191.P1161508871721924671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A000255 n

end

end A180191.P1161508871721924671

namespace A180191

/-- `(n+1)!-A000255(n)` -/
def P1161508871721924671.Spec : Prop :=
  ∀ n, P1161508871721924671.a n = A180191 (n + 1)

end A180191

/-! ## A180191.P11210852815997255084

`abs(Δ[n*(1-a(n-1))])-n!` with `a(0)=1`
-/

namespace A180191.P11210852815997255084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) * (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - (Nat.factorial n : ℤ)

end

end A180191.P11210852815997255084

namespace A180191

/-- `abs(Δ[n*(1-a(n-1))])-n!` -/
def P11210852815997255084.Spec : Prop :=
  ∀ n, P11210852815997255084.a n = A180191 (n + 1)

end A180191

/-! ## A180191.P11392427869858051076

`A324362(∑[n+2]-1)`
-/

namespace A180191.P11392427869858051076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A180191.P11392427869858051076

namespace A180191

/-- `A324362(∑[n+2]-1)` -/
def P11392427869858051076.Spec : Prop :=
  ∀ n, P11392427869858051076.a n = A180191 (n + 1)

end A180191

/-! ## A180191.P139700297730187700

`A052169(n+2)-n!`
-/

namespace A180191.P139700297730187700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052169 (n + 2) - (Nat.factorial n : ℤ)

end

end A180191.P139700297730187700

namespace A180191

/-- `A052169(n+2)-n!` -/
def P139700297730187700.Spec : Prop :=
  ∀ n, P139700297730187700.a n = A180191 (n + 1)

end A180191

/-! ## A180191.P9711575588247055692

`A002467(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A180191.P9711575588247055692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002467 n + (n : ℤ) * a (n - 1)

end

end A180191.P9711575588247055692

namespace A180191

/-- `A002467(n)+n*a(n-1)` -/
def P9711575588247055692.Spec : Prop :=
  ∀ n, P9711575588247055692.a n = A180191 (n + 1)

end A180191

/-! ## A180191.P3670887978810306790

`abs(Δ[n*(1-a(n-1))])-A000142(n)` with `a(0)=1, a(1)=0`
-/

namespace A180191.P3670887978810306790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (n : ℤ) * (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A000142 n

end

end A180191.P3670887978810306790

namespace A180191

/-- `abs(Δ[n*(1-a(n-1))])-A000142(n)` -/
def P3670887978810306790.Spec : Prop :=
  ∀ n, P3670887978810306790.a n = A180191 (n + 1)

end A180191

/-! ## A180191.P13461263870216637491

`A052169(n+2)-A000142(n)`
-/

namespace A180191.P13461263870216637491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052169 (n + 2) - A000142 n

end

end A180191.P13461263870216637491

namespace A180191

/-- `A052169(n+2)-A000142(n)` -/
def P13461263870216637491.Spec : Prop :=
  ∀ n, P13461263870216637491.a n = A180191 (n + 1)

end A180191

/-! ## A180191.P13576064034895177070

`A155521(n)+n*A000166(n)`
-/

namespace A180191.P13576064034895177070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155521 n + (n : ℤ) * A000166 n

end

end A180191.P13576064034895177070

namespace A180191

/-- `A155521(n)+n*A000166(n)` -/
def P13576064034895177070.Spec : Prop :=
  ∀ n, P13576064034895177070.a n = A180191 (n + 1)

end A180191

/-! ## A180191.P12642896213286039500

`record[A103452(n+1)*A324362(n)]`
-/

namespace A180191.P12642896213286039500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 (n + 1) * A324362 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180191.P12642896213286039500

namespace A180191

/-- `record[A103452(n+1)*A324362(n)]` -/
def P12642896213286039500.Spec : Prop :=
  ∀ n, P12642896213286039500.a n = A180191 (n + 1)

end A180191

/-!
# A180193: Triangle read by rows: T(n,k) is the number of permutations of [n] having k blocks of odd length (0<=k<=n).

The programs for A180193, there is no canonical definition to state claims against.
-/

/-! ## A180193.P3005580528437583191

`and(A004273(A155100(n)), A032757(n+1))`
-/

namespace A180193.P3005580528437583191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004273 (A155100 n).toNat) (A032757 (n + 1))

end

end A180193.P3005580528437583191

/-! ## A180193.P2250444092335080657

`A361499(A129945(n+2))`
-/

namespace A180193.P2250444092335080657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361499 (A129945 (n + 2)).toNat

end

end A180193.P2250444092335080657

/-! ## A180193.P15858005557968019623

`A215887(A107729(n)^3)`
-/

namespace A180193.P15858005557968019623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (A107729 n ^ 3).toNat

end

end A180193.P15858005557968019623

/-! ## A180193.P8923910749694557089

`A131810(2*(A186492(n)+1))`
-/

namespace A180193.P8923910749694557089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131810 (2 * (A186492 n + 1)).toNat

end

end A180193.P8923910749694557089

/-! ## A180193.P3775621611679372138

`A368413(A258307(n))+A238762(n)`
-/

namespace A180193.P3775621611679372138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368413 (A258307 n).toNat + A238762 n

end

end A180193.P3775621611679372138

/-!
# A180195: a(n) = (-1)^n*Sum((-1)^j*b(j), j=1..n), where b(n)=(n-1)!*(n^2 - n + 1) = A001564(n-1) (n>=1).

The programs for A180195, there is no canonical definition to state claims against.
-/

/-! ## A180195.P17885073063426600747

`Δ[Δ[n!]-a(n-1)]` with `a(0)=0`
-/

namespace A180195.P17885073063426600747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180195.P17885073063426600747

/-! ## A180195.P5122438203440615773

`Δ[Δ[n*a(n-1)]]-a(n-1)` with `a(0)=1`
-/

namespace A180195.P5122438203440615773
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  n * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A180195.P5122438203440615773

/-! ## A180195.P6871404543066823548

`A001564(n)-a(n-1)` with `a(0)=1`
-/

namespace A180195.P6871404543066823548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001564 n - a (n - 1)

end

end A180195.P6871404543066823548

/-! ## A180195.P9210295938284198311

`Δ[Δ[A000142(n)]]-a(n-1)` with `a(0)=1`
-/

namespace A180195.P9210295938284198311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A180195.P9210295938284198311

/-! ## A180195.P15116435121436227016

`Δ[Δ[A005165(n)-A000034(n)]]`
-/

namespace A180195.P15116435121436227016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005165 n - A000034 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180195.P15116435121436227016

/-!
# A180196: Triangle read by rows: T(n,k) is the number of permutations of [n] that have k isolated entries (0 <= k <= n).

The programs for A180196, there is no canonical definition to state claims against.
-/

/-! ## A180196.P9806694299948069571

`A000120(A321716(n))*A105422(n)`
-/

namespace A180196.P9806694299948069571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A321716 n).toNat * A105422 n

end

end A180196.P9806694299948069571

/-! ## A180196.P9913022252835996512

`A000120(A333476(n))*A105422(n)`
-/

namespace A180196.P9913022252835996512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A333476 n).toNat * A105422 n

end

end A180196.P9913022252835996512

/-! ## A180196.P10187530347214636765

`A000120(A321716(n))*A162986(n)`
-/

namespace A180196.P10187530347214636765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A321716 n).toNat * A162986 n

end

end A180196.P10187530347214636765

/-! ## A180196.P16787371889936925065

`A162986(n)*A171848(A166295(n+1))`
-/

namespace A180196.P16787371889936925065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162986 n * A171848 (A166295 (n + 1)).toNat

end

end A180196.P16787371889936925065

/-!
# A180198: a(n) = A180200(A180200(n)).

The programs for A180198, the canonical program `A180198.P17584943030396836814` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180198 has offset 0).

The definition of A180198 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180200, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A180198.P17584943030396836814

`A180200(A180200(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A180198

/-- `A180200(A180200(n))` -/
def P17584943030396836814.Spec : Prop :=
  ∀ n, P17584943030396836814.a n = A180198 n

theorem P17584943030396836814.correct : P17584943030396836814.Spec := by
  intro n
  simp only [A180198]

end A180198

/-! ## A180198.P11746582977005735115

`A006068(A154435(n))`
-/

namespace A180198.P11746582977005735115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A154435 n).toNat

end

end A180198.P11746582977005735115

namespace A180198

/-- `A006068(A154435(n))` -/
def P11746582977005735115.Spec : Prop :=
  ∀ n, P11746582977005735115.a n = A180198 n

end A180198

/-! ## A180198.P9546100869187249228

`A292600(A154435(2*n))`
-/

namespace A180198.P9546100869187249228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A154435 (2 * n)).toNat

end

end A180198.P9546100869187249228

namespace A180198

/-- `A292600(A154435(2*n))` -/
def P9546100869187249228.Spec : Prop :=
  ∀ n, P9546100869187249228.a n = A180198 n

end A180198

/-! ## A180198.P9943149776975299882

`A006068(A006068(A154436(A006068(n))))`
-/

namespace A180198.P9943149776975299882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A006068 (A154436 (A006068 n).toNat).toNat).toNat

end

end A180198.P9943149776975299882

namespace A180198

/-- `A006068(A006068(A154436(A006068(n))))` -/
def P9943149776975299882.Spec : Prop :=
  ∀ n, P9943149776975299882.a n = A180198 n

end A180198

/-! ## A180198.P13471933941139963647

`A154435(A063946(A154435(A063946(n))))`
-/

namespace A180198.P13471933941139963647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154435 (A063946 (A154435 (A063946 n).toNat).toNat).toNat

end

end A180198.P13471933941139963647

namespace A180198

/-- `A154435(A063946(A154435(A063946(n))))` -/
def P13471933941139963647.Spec : Prop :=
  ∀ n, P13471933941139963647.a n = A180198 n

end A180198

/-! ## A180198.P5276012494987258848

`A006068(A233279(A233279(A003188(n))))`
-/

namespace A180198.P5276012494987258848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A233279 (A233279 (A003188 n).toNat).toNat).toNat

end

end A180198.P5276012494987258848

namespace A180198

/-- `A006068(A233279(A233279(A003188(n))))` -/
def P5276012494987258848.Spec : Prop :=
  ∀ n, P5276012494987258848.a n = A180198 n

end A180198

/-! ## A180198.P10365080984603345141

`A064707(A180201(A180201(A064707(n))))`
-/

namespace A180198.P10365080984603345141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064707 (A180201 (A180201 (A064707 n).toNat).toNat).toNat

end

end A180198.P10365080984603345141

namespace A180198

/-- `A064707(A180201(A180201(A064707(n))))` -/
def P10365080984603345141.Spec : Prop :=
  ∀ n, P10365080984603345141.a n = A180198 n

end A180198

/-! ## A180198.P14216625940861054580

`A064707(A233279(A064706(A233279(n))))`
-/

namespace A180198.P14216625940861054580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064707 (A233279 (A064706 (A233279 n).toNat).toNat).toNat

end

end A180198.P14216625940861054580

namespace A180198

/-- `A064707(A233279(A064706(A233279(n))))` -/
def P14216625940861054580.Spec : Prop :=
  ∀ n, P14216625940861054580.a n = A180198 n

end A180198

/-! ## A180198.P18239440659081688192

`A092569(A233279(A233279(A092569(n))))`
-/

namespace A180198.P18239440659081688192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A233279 (A233279 (A092569 n).toNat).toNat).toNat

end

end A180198.P18239440659081688192

namespace A180198

/-- `A092569(A233279(A233279(A092569(n))))` -/
def P18239440659081688192.Spec : Prop :=
  ∀ n, P18239440659081688192.a n = A180198 n

end A180198

/-! ## A180198.P12878959698842424527

`A056539(A335858(A056539(A335858(n))))`
-/

namespace A180198.P12878959698842424527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A335858 (A056539 (A335858 n).toNat).toNat).toNat

end

end A180198.P12878959698842424527

namespace A180198

/-- `A056539(A335858(A056539(A335858(n))))` -/
def P12878959698842424527.Spec : Prop :=
  ∀ n, P12878959698842424527.a n = A180198 n

end A180198

/-!
# A180199: a(n) = A180201(A180201(n)).

The programs for A180199, the canonical program `A180199.P7858093965837242731` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180199 has offset 0).

The definition of A180199 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180201, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A180199.P7858093965837242731

`A180201(A180201(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A180199

/-- `A180201(A180201(n))` -/
def P7858093965837242731.Spec : Prop :=
  ∀ n, P7858093965837242731.a n = A180199 n

theorem P7858093965837242731.correct : P7858093965837242731.Spec := by
  intro n
  simp only [A180199]

end A180199

/-! ## A180199.P3273256521836752440

`A154436(xor(n, floor(n/2)))`
-/

namespace A180199.P3273256521836752440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A180199.P3273256521836752440

namespace A180199

/-- `A154436(xor(n, floor(n/2)))` -/
def P3273256521836752440.Spec : Prop :=
  ∀ n, P3273256521836752440.a n = A180199 n

end A180199

/-! ## A180199.P434929275567422288

`A154436(abs(xor(n, n-∑[n%2])))`
-/

namespace A180199.P434929275567422288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 |Int.xor (n : ℤ) ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))|.toNat

end

end A180199.P434929275567422288

namespace A180199

/-- `A154436(abs(xor(n, n-∑[n%2])))` -/
def P434929275567422288.Spec : Prop :=
  ∀ n, P434929275567422288.a n = A180199 n

end A180199

/-! ## A180199.P10535163637403078453

`A154436(abs(xor(n, (or(1, n)-1)/2)))`
-/

namespace A180199.P10535163637403078453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 |Int.xor (n : ℤ) (SequenceMachineLib.roundAway (((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2))|.toNat

end

end A180199.P10535163637403078453

namespace A180199

/-- `A154436(abs(xor(n, (or(1, n)-1)/2)))` -/
def P10535163637403078453.Spec : Prop :=
  ∀ n, P10535163637403078453.a n = A180199 n

end A180199

/-! ## A180199.P10958452672094040260

`A154436(-ceil(xor(2*n, -n)/2))`
-/

namespace A180199.P10958452672094040260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 (-⌈(Int.xor (2 * n : ℤ) (-(n : ℤ)) : ℚ) / 2⌉).toNat

end

end A180199.P10958452672094040260

namespace A180199

/-- `A154436(-ceil(xor(2*n, -n)/2))` -/
def P10958452672094040260.Spec : Prop :=
  ∀ n, P10958452672094040260.a n = A180199 n

end A180199

/-! ## A180199.P8723313685515855967

`A154436(∑[gcd(2, n+1)]-and(2*n+1, n+1))`
-/

namespace A180199.P8723313685515855967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 (∑ j ∈ Finset.range (n + 1), f1 j - Nat.land (2 * n + 1) (n + 1))

end

end A180199.P8723313685515855967

namespace A180199

/-- `A154436(∑[gcd(2, n+1)]-and(2*n+1, n+1))` -/
def P8723313685515855967.Spec : Prop :=
  ∀ n, P8723313685515855967.a n = A180199 n

end A180199

/-! ## A180199.P18221292068301739794

`A154436(A003188(n))`
-/

namespace A180199.P18221292068301739794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 (A003188 n).toNat

end

end A180199.P18221292068301739794

namespace A180199

/-- `A154436(A003188(n))` -/
def P18221292068301739794.Spec : Prop :=
  ∀ n, P18221292068301739794.a n = A180199 n

end A180199

/-! ## A180199.P8357561330346400011

`A261349(2*A003188(n))`
-/

namespace A180199.P8357561330346400011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261349 (2 * A003188 n).toNat

end

end A180199.P8357561330346400011

namespace A180199

/-- `A261349(2*A003188(n))` -/
def P8357561330346400011.Spec : Prop :=
  ∀ n, P8357561330346400011.a n = A180199 n

end A180199

/-! ## A180199.P8000047844484217205

`A154436(A286548(n)+n)`
-/

namespace A180199.P8000047844484217205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 (A286548 n + (n : ℤ)).toNat

end

end A180199.P8000047844484217205

namespace A180199

/-- `A154436(A286548(n)+n)` -/
def P8000047844484217205.Spec : Prop :=
  ∀ n, P8000047844484217205.a n = A180199 n

end A180199

/-! ## A180199.P16370771611010025848

`A154436(A064706(A006068(n)))`
-/

namespace A180199.P16370771611010025848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 (A064706 (A006068 n).toNat).toNat

end

end A180199.P16370771611010025848

namespace A180199

/-- `A154436(A064706(A006068(n)))` -/
def P16370771611010025848.Spec : Prop :=
  ∀ n, P16370771611010025848.a n = A180199 n

end A180199

