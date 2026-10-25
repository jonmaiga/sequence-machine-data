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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
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

/-!
# A266000: Numbers k such that the symmetric representation of sigma(k) has at least two parts of distinct size.

The programs for A266000, there is no canonical definition to state claims against.
-/

/-! ## A266000.P13602150641375105858

`∩[A171581(n+1), comp[A265999(n+1)]]`
-/

namespace A266000.P13602150641375105858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265999 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A266000.P13602150641375105858

/-! ## A266000.P6582682458168829435

`A293754(lt[A250068(n+1), A060763(n+1)])`
-/

namespace A266000.P6582682458168829435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293754 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A266000.P6582682458168829435

/-! ## A266000.P3385889103414149568

`lt[A241558(n+1), A241559(n+1)]+1`
-/

namespace A266000.P3385889103414149568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241559 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A266000.P3385889103414149568

/-! ## A266000.P15649451256955386711

`lt[A000578(A219964(n)), A243822(n+1)]`
-/

namespace A266000.P15649451256955386711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A219964 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A266000.P15649451256955386711

/-! ## A266000.P71118373047853063

`lt[A280996(A020639(n+1)), A236378(n)]`
-/

namespace A266000.P71118373047853063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280996 (A020639 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A266000.P71118373047853063

/-!
# A266001: Numbers with no 0's in their base 3 and base 4 expansions.

The programs for A266001, the canonical program `A266001.P9707974125563261164` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266001 has offset 1).

The definition of A266001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266001.P9707974125563261164

`∩[A023705(n+1), A032924(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A266001

/-- `∩[A023705(n+1), A032924(n+1)]` -/
def P9707974125563261164.Spec : Prop :=
  ∀ n, (P9707974125563261164.a n : ℤ) = A266001 (n + 1)

theorem P9707974125563261164.correct : P9707974125563261164.Spec := by
  intro n
  simp only [A266001, Nat.add_sub_cancel]

end A266001

/-! ## A266001.P6642955562061964358

`eq[exp(A077267(n)), A277872(n)]`
-/

namespace A266001.P6642955562061964358
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A077267 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A266001.P6642955562061964358

namespace A266001

/-- `eq[exp(A077267(n)), A277872(n)]` -/
def P6642955562061964358.Spec : Prop :=
  ∀ n, (P6642955562061964358.a n : ℤ) = A266001 (n + 1)

end A266001

/-! ## A266001.P10493649600063008806

`eq[tan(A077267(n)), A160380(n)]`
-/

namespace A266001.P10493649600063008806
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A077267 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A266001.P10493649600063008806

namespace A266001

/-- `eq[tan(A077267(n)), A160380(n)]` -/
def P10493649600063008806.Spec : Prop :=
  ∀ n, (P10493649600063008806.a n : ℤ) = A266001 (n + 1)

end A266001

/-! ## A266001.P13543130074294825638

`eq[tanh(A077267(n)), A292370(n)]`
-/

namespace A266001.P13543130074294825638
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (A077267 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292370 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A266001.P13543130074294825638

namespace A266001

/-- `eq[tanh(A077267(n)), A292370(n)]` -/
def P13543130074294825638.Spec : Prop :=
  ∀ n, (P13543130074294825638.a n : ℤ) = A266001 (n + 1)

end A266001

/-! ## A266001.P4844973309028886528

`lt[A292370(n)+A212193(n), 1]`
-/

namespace A266001.P4844973309028886528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292370 n + A212193 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A266001.P4844973309028886528

namespace A266001

/-- `lt[A292370(n)+A212193(n), 1]` -/
def P4844973309028886528.Spec : Prop :=
  ∀ n, (P4844973309028886528.a n : ℤ) = A266001 (n + 1)

end A266001

/-! ## A266001.P10763924018866347329

`lt[A212193(n), A000007(A292370(n))]`
-/

namespace A266001.P10763924018866347329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212193 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A292370 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A266001.P10763924018866347329

namespace A266001

/-- `lt[A212193(n), A000007(A292370(n))]` -/
def P10763924018866347329.Spec : Prop :=
  ∀ n, (P10763924018866347329.a n : ℤ) = A266001 (n + 1)

end A266001

/-! ## A266001.P1736883144538556977

`record[A348706(A023705(n+1))]`
-/

namespace A266001.P1736883144538556977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348706 (A023705 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266001.P1736883144538556977

namespace A266001

/-- `record[A348706(A023705(n+1))]` -/
def P1736883144538556977.Spec : Prop :=
  ∀ n, P1736883144538556977.a n = A266001 (n + 1)

end A266001

/-! ## A266001.P16035498150001581088

`eq[exp(A077267(n)), A160380(4*n)]`
-/

namespace A266001.P16035498150001581088
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A077267 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A266001.P16035498150001581088

namespace A266001

/-- `eq[exp(A077267(n)), A160380(4*n)]` -/
def P16035498150001581088.Spec : Prop :=
  ∀ n, (P16035498150001581088.a n : ℤ) = A266001 (n + 1)

end A266001

/-! ## A266001.P9734717921809985355

`eq[sinh(A077267(n)), A160380(4*n+1)]`
-/

namespace A266001.P9734717921809985355
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sinh (A077267 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A266001.P9734717921809985355

namespace A266001

/-- `eq[sinh(A077267(n)), A160380(4*n+1)]` -/
def P9734717921809985355.Spec : Prop :=
  ∀ n, (P9734717921809985355.a n : ℤ) = A266001 (n + 1)

end A266001

/-!
# A266002: Positions in Pi, e, and the Golden Ratio indicate a common digit.

The programs for A266002, there is no canonical definition to state claims against.
-/

/-! ## A266002.P6435777540872694714

`A090230(n)+1`
-/

namespace A266002.P6435777540872694714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090230 n + 1

end

end A266002.P6435777540872694714

/-! ## A266002.P5044453742411441964

`2-(char[A006369(n)]-A090230(n))`
-/

namespace A266002.P5044453742411441964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A090230 n)

end

end A266002.P5044453742411441964

/-! ## A266002.P6097727220179315813

`2-(char[A014682(n)]-A090230(n))`
-/

namespace A266002.P6097727220179315813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A090230 n)

end

end A266002.P6097727220179315813

/-! ## A266002.P5009991858406414321

`1-(A025459(A025459(n))-A090230(n))`
-/

namespace A266002.P5009991858406414321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A025459 (A025459 n).toNat - A090230 n)

end

end A266002.P5009991858406414321

/-! ## A266002.P2072148806133628294

`1-(A102683(A226225(n))-A090230(n))`
-/

namespace A266002.P2072148806133628294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A102683 (A226225 n).toNat - A090230 n)

end

end A266002.P2072148806133628294

/-! ## A266002.P4664766601617318325

`2-(char[A106609(n)]-A090230(n))`
-/

namespace A266002.P4664766601617318325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A090230 n)

end

end A266002.P4664766601617318325

/-! ## A266002.P7500098924606553381

`A020725(A090230(n))`
-/

namespace A266002.P7500098924606553381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A090230 n).toNat

end

end A266002.P7500098924606553381

/-! ## A266002.P13383364172429797704

`A028242(2*A090230(n))`
-/

namespace A266002.P13383364172429797704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A090230 n).toNat

end

end A266002.P13383364172429797704

/-!
# A266003: Least nonnegative integer y such that n = x^4 - y^3 + z^2 for some nonnegative integers x and z, or -1 if no such y exists.

The programs for A266003, there is no canonical definition to state claims against.
-/

/-! ## A266003.P17300798703463681206

`A326783(and(n, 2*n)!)`
-/

namespace A266003.P17300798703463681206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326783 (Nat.factorial (Nat.land n (2 * n)))

end

end A266003.P17300798703463681206

/-! ## A266003.P17316304507394611058

`A181391(n^and(n, 2*n))`
-/

namespace A266003.P17316304507394611058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n ^ Nat.land n (2 * n))

end

end A266003.P17316304507394611058

/-! ## A266003.P5844503289857706803

`Δ[A318166((floor(n/4)+floor((n+1)/4))!)]`
-/

namespace A266003.P5844503289857706803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318166 (Nat.factorial (⌊(n : ℚ) / 4⌋ + ⌊(n + 1 : ℚ) / 4⌋).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266003.P5844503289857706803

/-!
# A266005: Numbers n = p_1^s_1...p_m^s_m such that (p_i^s_i - 1) | n for all 0

The programs for A266005, there is no canonical definition to state claims against.
-/

/-! ## A266005.P4999297610994273552

`∩[A375590(n+1), A377950(n+1)]`
-/

namespace A266005.P4999297610994273552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266005.P4999297610994273552

/-! ## A266005.P11213581140770874505

`∩[A174873(n+1), A341858(n+1)]`
-/

namespace A266005.P11213581140770874505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266005.P11213581140770874505

/-! ## A266005.P8218718203431333360

`∩[A325706(n+1), A341858(n+1)]`
-/

namespace A266005.P8218718203431333360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266005.P8218718203431333360

/-!
# A266006: Number of n X n integer arrays with each element equal to the number of horizontal and antidiagonal neighbors equal to itself.

The programs for A266006, there is no canonical definition to state claims against.
-/

/-! ## A266006.P17472105388015499811

`A266012(∑[4*n]+1)`
-/

namespace A266006.P17472105388015499811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266006.P17472105388015499811

/-! ## A266006.P4662571394003354519

`A266012(A001844(n))+char[12]`
-/

namespace A266006.P4662571394003354519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266006.P4662571394003354519

/-! ## A266006.P4651698867891112021

`A015838(n)*A266012(A001844(n))`
-/

namespace A266006.P4651698867891112021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015838 n * A266012 (A001844 n).toNat

end

end A266006.P4651698867891112021

/-! ## A266006.P9625590834109529002

`A266012(A001844(n))*A304042(n)`
-/

namespace A266006.P9625590834109529002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A001844 n).toNat * A304042 n

end

end A266006.P9625590834109529002

/-! ## A266006.P2474893804300919157

`or(A185329(n), A266012(A001844(n)))`
-/

namespace A266006.P2474893804300919157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185329 n) (A266012 (A001844 n).toNat)

end

end A266006.P2474893804300919157

/-!
# A266007: Number of n X 3 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors equal to itself.

The programs for A266007, the canonical program `A266007.P14819523112823370925` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266007 has offset 1).

The definition of A266007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266007.P14972565227588360910

`ogf((2+4x^2)/(1-x-4x^3))`
-/

namespace A266007.P14972565227588360910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 4] [1, -1, 0, -4] n

end

end A266007.P14972565227588360910

namespace A266007

/-- `ogf((2+4x^2)/(1-x-4x^3))` -/
def P14972565227588360910.Spec : Prop :=
  ∀ n, P14972565227588360910.a n = A266007 (n + 1)

end A266007

/-! ## A266007.P14819523112823370925

`a(n-1)+4*a(n-3)` with `a(0)=2, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266007

/-- `a(n-1)+4*a(n-3)` -/
def P14819523112823370925.Spec : Prop :=
  ∀ n, (P14819523112823370925.a n : ℤ) = A266007 (n + 1)

theorem P14819523112823370925.correct : P14819523112823370925.Spec := by
  intro n
  simp only [A266007, Nat.add_sub_cancel]

end A266007

/-! ## A266007.P3286964309667695417

`a(n-1)+lcm(8, a(n-3))` with `a(0)=2, a(1)=2, a(2)=6`
-/

namespace A266007.P3286964309667695417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 6] fun n a =>
  a (n - 1) + Nat.lcm 8 (a (n - 3))

end

end A266007.P3286964309667695417

namespace A266007

/-- `a(n-1)+lcm(8, a(n-3))` -/
def P3286964309667695417.Spec : Prop :=
  ∀ n, (P3286964309667695417.a n : ℤ) = A266007 (n + 1)

end A266007

/-! ## A266007.P9135011531316849632

`2^(n+1)-A122946(n+1)`
-/

namespace A266007.P9135011531316849632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A122946 (n + 1)

end

end A266007.P9135011531316849632

namespace A266007

/-- `2^(n+1)-A122946(n+1)` -/
def P9135011531316849632.Spec : Prop :=
  ∀ n, P9135011531316849632.a n = A266007 (n + 1)

end A266007

/-! ## A266007.P13511244408742983727

`2*(a(n-1)-A001607(n))` with `a(0)=2`
-/

namespace A266007.P13511244408742983727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (a (n - 1) - A001607 n)

end

end A266007.P13511244408742983727

namespace A266007

/-- `2*(a(n-1)-A001607(n))` -/
def P13511244408742983727.Spec : Prop :=
  ∀ n, P13511244408742983727.a n = A266007 (n + 1)

end A266007

/-! ## A266007.P9017077701715412711

`A089977(n+1)+A089977(n)`
-/

namespace A266007.P9017077701715412711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089977 (n + 1) + A089977 n

end

end A266007.P9017077701715412711

namespace A266007

/-- `A089977(n+1)+A089977(n)` -/
def P9017077701715412711.Spec : Prop :=
  ∀ n, P9017077701715412711.a n = A266007 (n + 1)

end A266007

/-! ## A266007.P5032891891012228018

`abs(Δ[A033999(n)*A089977(n)])`
-/

namespace A266007.P5032891891012228018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A089977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A266007.P5032891891012228018

namespace A266007

/-- `abs(Δ[A033999(n)*A089977(n)])` -/
def P5032891891012228018.Spec : Prop :=
  ∀ n, P5032891891012228018.a n = A266007 (n + 1)

end A266007

/-! ## A266007.P3685667278673337370

`A083318(n+1)-(A122946(n+1)+1)`
-/

namespace A266007.P3685667278673337370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 (n + 1) - (A122946 (n + 1) + 1)

end

end A266007.P3685667278673337370

namespace A266007

/-- `A083318(n+1)-(A122946(n+1)+1)` -/
def P3685667278673337370.Spec : Prop :=
  ∀ n, P3685667278673337370.a n = A266007 (n + 1)

end A266007

/-! ## A266007.P6417418127255017080

`A097334(n+1)+A122946(n+1)-A097334(n)`
-/

namespace A266007.P6417418127255017080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097334 (n + 1) + (A122946 (n + 1) - A097334 n)

end

end A266007.P6417418127255017080

namespace A266007

/-- `A097334(n+1)+A122946(n+1)-A097334(n)` -/
def P6417418127255017080.Spec : Prop :=
  ∀ n, P6417418127255017080.a n = A266007 (n + 1)

end A266007

/-! ## A266007.P611597961556237124

`Δ[A000051(n)+A097334(n)/2]`
-/

namespace A266007.P611597961556237124
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000051 n : ℚ) + (A097334 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266007.P611597961556237124

namespace A266007

/-- `Δ[A000051(n)+A097334(n)/2]` -/
def P611597961556237124.Spec : Prop :=
  ∀ n, P611597961556237124.a n = (A266007 (n + 1) : ℚ)

end A266007

/-! ## A266007.P4283212925338883678

`Δ[A000079(n)+A097334(n)/2]`
-/

namespace A266007.P4283212925338883678
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) + (A097334 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266007.P4283212925338883678

namespace A266007

/-- `Δ[A000079(n)+A097334(n)/2]` -/
def P4283212925338883678.Spec : Prop :=
  ∀ n, P4283212925338883678.a n = (A266007 (n + 1) : ℚ)

end A266007

/-! ## A266007.P17619151215127775725

`Δ[A052548(n)+A097334(n)/2]`
-/

namespace A266007.P17619151215127775725
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052548 n : ℚ) + (A097334 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266007.P17619151215127775725

namespace A266007

/-- `Δ[A052548(n)+A097334(n)/2]` -/
def P17619151215127775725.Spec : Prop :=
  ∀ n, P17619151215127775725.a n = (A266007 (n + 1) : ℚ)

end A266007

/-!
# A266008: Number of n X 4 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors equal to itself.

The programs for A266008, the canonical program `A266008.P4738884288798729973` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266008 has offset 1).

The definition of A266008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 449 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266008.P16034606247493295655

`ogf((1+5x+5x^2-2x^3)/(1+x-3x^2-3x^3+x^4))`
-/

namespace A266008.P16034606247493295655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 5, -2] [1, 1, -3, -3, 1] n

end

end A266008.P16034606247493295655

namespace A266008

/-- `ogf((1+5x+5x^2-2x^3)/(1+x-3x^2-3x^3+x^4))` -/
def P16034606247493295655.Spec : Prop :=
  ∀ n, P16034606247493295655.a n = A266008 (n + 1)

end A266008

/-! ## A266008.P4738884288798729973

`Δ[A180046(2*n+3)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A266008

/-- `Δ[A180046(2*n+3)]` -/
def P4738884288798729973.Spec : Prop :=
  ∀ n, P4738884288798729973.a n = A266008 (n + 1)

theorem P4738884288798729973.correct : P4738884288798729973.Spec := by
  intro n
  simp only [A266008, Nat.add_sub_cancel]

end A266008

/-! ## A266008.P4024604132198189998

`A266012(∑[n+4]+3)`
-/

namespace A266008.P4024604132198189998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A266008.P4024604132198189998

namespace A266008

/-- `A266012(∑[n+4]+3)` -/
def P4024604132198189998.Spec : Prop :=
  ∀ n, P4024604132198189998.a n = A266008 (n + 1)

end A266008

/-! ## A266008.P16202065933249546815

`A266012(A034856(n+3)-1)+char[21]`
-/

namespace A266008.P16202065933249546815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A034856 (n + 3) - 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266008.P16202065933249546815

namespace A266008

/-- `A266012(A034856(n+3)-1)+char[21]` -/
def P16202065933249546815.Spec : Prop :=
  ∀ n, P16202065933249546815.a n = A266008 (n + 1)

end A266008

/-! ## A266008.P2207028614942378425

`A266012(A034856(n+3)-1)/A007318(C(2, n))`
-/

namespace A266008.P2207028614942378425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266012 (A034856 (n + 3) - 1).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A266008.P2207028614942378425

namespace A266008

/-- `A266012(A034856(n+3)-1)/A007318(C(2, n))` -/
def P2207028614942378425.Spec : Prop :=
  ∀ n, P2207028614942378425.a n = (A266008 (n + 1) : ℚ)

end A266008

/-!
# A266009: Number of n X 5 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors equal to itself.

The programs for A266009, there is no canonical definition to state claims against.
-/

/-! ## A266009.P16697525042302213987

`A266012(∑[n+5]+6)`
-/

namespace A266009.P16697525042302213987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A266009.P16697525042302213987

/-! ## A266009.P2194132270885097037

`or(char[2], A266012(A046691(n+3)))`
-/

namespace A266009.P2194132270885097037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A266012 (A046691 (n + 3)).toNat)

end

end A266009.P2194132270885097037

/-! ## A266009.P1589995460467249873

`A266012(A046691(n+3))%A000108(n+2)`
-/

namespace A266009.P1589995460467249873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266012 (A046691 (n + 3)).toNat) (A000108 (n + 2))

end

end A266009.P1589995460467249873

/-! ## A266009.P11973321479539113340

`A000041(C(2, n+2))*A266012(A046691(n+3))`
-/

namespace A266009.P11973321479539113340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A266012 (A046691 (n + 3)).toNat

end

end A266009.P11973321479539113340

/-! ## A266009.P10552020935391337226

`A007318(and(2, n-2))*A266012(A046691(n+3))`
-/

namespace A266009.P10552020935391337226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 ((n : ℤ) - 2)).toNat * A266012 (A046691 (n + 3)).toNat

end

end A266009.P10552020935391337226

/-!
# A266010: Number of nX6 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors equal to itself.

The programs for A266010, there is no canonical definition to state claims against.
-/

/-! ## A266010.P5004567410835703275

`A266012(∑[a(n-1)+1]+7)` with `a(0)=9, a(1)=7`
-/

namespace A266010.P5004567410835703275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 7] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A266010.P5004567410835703275

/-! ## A266010.P5014710139120426150

`A266012(A052905(n+3))`
-/

namespace A266010.P5014710139120426150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A052905 (n + 3)).toNat

end

end A266010.P5014710139120426150

/-! ## A266010.P7581681278443154540

`A266012(A302537(n)+15)`
-/

namespace A266010.P7581681278443154540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A302537 n + 15).toNat

end

end A266010.P7581681278443154540

/-! ## A266010.P4238870838260297063

`A266012(A056119(n)+16)`
-/

namespace A266010.P4238870838260297063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A056119 n + 16).toNat

end

end A266010.P4238870838260297063

/-! ## A266010.P14434521652491559872

`A266012(eq[3, A219347(n)])`
-/

namespace A266010.P14434521652491559872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266010.P14434521652491559872

/-!
# A266011: Number of n X 7 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors equal to itself.

The programs for A266011, there is no canonical definition to state claims against.
-/

/-! ## A266011.P6414106389652412417

`A266012(A055999(n+4))`
-/

namespace A266011.P6414106389652412417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A055999 (n + 4)).toNat

end

end A266011.P6414106389652412417

/-! ## A266011.P16376596965232914143

`A266012(eq[4, A219347(n)])`
-/

namespace A266011.P16376596965232914143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266011.P16376596965232914143

/-! ## A266011.P15402579162604374683

`A266012(eq[6, A193592(n)])`
-/

namespace A266011.P15402579162604374683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266011.P15402579162604374683

/-! ## A266011.P5857028075512977526

`A266012(∑[A020719(n)]+15)`
-/

namespace A266011.P5857028075512977526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (∑ j ∈ Finset.range (n + 1), f1 j + 15).toNat

end

end A266011.P5857028075512977526

/-! ## A266011.P13887589875494955466

`A266012(A155212(n+3)+2)`
-/

namespace A266011.P13887589875494955466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A155212 (n + 3) + 2).toNat

end

end A266011.P13887589875494955466

/-!
# A266012: T(n,k)=Number of nXk integer arrays with each element equal to the number of horizontal and antidiagonal neighbors equal to itself.

The programs for A266012, there is no canonical definition to state claims against.
-/

/-! ## A266012.P12211836981582528381

`(A265991(n+1)^A069010(n))%p?[A153249(n)]`
-/

namespace A266012.P12211836981582528381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A265991 (n + 1) : ℚ) ^ (A069010 n : ℤ))) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A266012.P12211836981582528381

/-! ## A266012.P3900022583701776944

`A000926(A265991(n+1)^A069010(n))`
-/

namespace A266012.P3900022583701776944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (SequenceMachineLib.roundAway ((A265991 (n + 1) : ℚ) ^ (A069010 n : ℤ))).toNat

end

end A266012.P3900022583701776944

/-! ## A266012.P7740376432279155133

`A032559(A265991(n+1)^A069010(n))`
-/

namespace A266012.P7740376432279155133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032559 (SequenceMachineLib.roundAway ((A265991 (n + 1) : ℚ) ^ (A069010 n : ℤ))).toNat

end

end A266012.P7740376432279155133

/-! ## A266012.P7167282857536158347

`A032579(A265991(n+1)^A069010(n))`
-/

namespace A266012.P7167282857536158347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032579 (SequenceMachineLib.roundAway ((A265991 (n + 1) : ℚ) ^ (A069010 n : ℤ))).toNat

end

end A266012.P7167282857536158347

/-! ## A266012.P104616460854706045

`A265991(n+1)^A009194(A111314(n))`
-/

namespace A266012.P104616460854706045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265991 (n + 1) : ℚ) ^ (A009194 (A111314 n).toNat : ℤ)

end

end A266012.P104616460854706045

/-!
# A266013: Number of 3Xn integer arrays with each element equal to the number of horizontal and antidiagonal neighbors equal to itself.

The programs for A266013, there is no canonical definition to state claims against.
-/

/-! ## A266013.P5962725826769145850

`A266012(∑[n+2]+4)`
-/

namespace A266013.P5962725826769145850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A266013.P5962725826769145850

/-! ## A266013.P3231439540532008349

`A266012(A167614(n+1))+char[32]`
-/

namespace A266013.P3231439540532008349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266013.P3231439540532008349

/-! ## A266013.P2254734169597325356

`A266012(A000096(n+1)+4)+char[30]`
-/

namespace A266013.P2254734169597325356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A000096 (n + 1) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266013.P2254734169597325356

/-! ## A266013.P10846911030230407878

`A266012(A167614(n+1))%A228879(n)`
-/

namespace A266013.P10846911030230407878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266012 (A167614 (n + 1)).toNat) (A228879 n)

end

end A266013.P10846911030230407878

/-! ## A266013.P5937091781603908436

`∑{d}[A266012(A167614(n+1)), A000010(#)]`
-/

namespace A266013.P5937091781603908436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A266013.P5937091781603908436

/-!
# A266014: Number of 4Xn integer arrays with each element equal to the number of horizontal and antidiagonal neighbors equal to itself.

The programs for A266014, there is no canonical definition to state claims against.
-/

/-! ## A266014.P8060212481166958904

`A266012(∑[a(n-1)+1]+7)` with `a(0)=3`
-/

namespace A266014.P8060212481166958904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A266014.P8060212481166958904

/-! ## A266014.P13009945090536318164

`A266012(A141214(n)+7)`
-/

namespace A266014.P13009945090536318164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A141214 n + 7).toNat

end

end A266014.P13009945090536318164

/-! ## A266014.P13431105897720909081

`A266012(A052905(n)+9)`
-/

namespace A266014.P13431105897720909081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A052905 n + 9).toNat

end

end A266014.P13431105897720909081

/-! ## A266014.P13742459507480813888

`A266012(A055999(n)+10)`
-/

namespace A266014.P13742459507480813888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A055999 n + 10).toNat

end

end A266014.P13742459507480813888

/-! ## A266014.P1449240016764038421

`A266012(Δ[A006503(n)]+7)`
-/

namespace A266014.P1449240016764038421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (f1 (n + 1) - f1 n + 7).toNat

end

end A266014.P1449240016764038421

/-!
# A266015: Number of 5Xn integer arrays with each element equal to the number of horizontal and antidiagonal neighbors equal to itself.

The programs for A266015, there is no canonical definition to state claims against.
-/

/-! ## A266015.P14024077326498774325

`A266012(A167499(n+3))`
-/

namespace A266015.P14024077326498774325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A167499 (n + 3)).toNat

end

end A266015.P14024077326498774325

/-! ## A266015.P13657226284225338377

`A266012(A155212(n)+13)`
-/

namespace A266015.P13657226284225338377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A155212 n + 13).toNat

end

end A266015.P13657226284225338377

/-! ## A266015.P14557800073658491193

`A266012(A056000(n)+15)`
-/

namespace A266015.P14557800073658491193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A056000 n + 15).toNat

end

end A266015.P14557800073658491193

/-! ## A266015.P7856360939155434594

`A266012(eq[7, A066657(n)])`
-/

namespace A266015.P7856360939155434594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266015.P7856360939155434594

/-! ## A266015.P3952377855464241725

`A266012(A000124(n+4)+4)`
-/

namespace A266015.P3952377855464241725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A000124 (n + 4) + 4).toNat

end

end A266015.P3952377855464241725

/-!
# A266016: Number of 6 X n integer arrays with each element equal to the number of horizontal and antidiagonal neighbors equal to itself.

The programs for A266016, there is no canonical definition to state claims against.
-/

/-! ## A266016.P16996190800158944519

`A266012(∑[n+5]+16)`
-/

namespace A266016.P16996190800158944519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A266016.P16996190800158944519

/-! ## A266016.P14731277264431921810

`A266012(A166136(n+4))+char[21]`
-/

namespace A266016.P14731277264431921810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A166136 (n + 4)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266016.P14731277264431921810

/-! ## A266016.P6460239026119265500

`A266012(A167614(n+4)+3)+char[21]`
-/

namespace A266016.P6460239026119265500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A167614 (n + 4) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266016.P6460239026119265500

/-! ## A266016.P12982193068948221120

`A266012(A055998(n+3)+9)+char[20]`
-/

namespace A266016.P12982193068948221120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A055998 (n + 3) + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266016.P12982193068948221120

/-! ## A266016.P2046611578554815965

`A007318(C(n, 2))*A266012(A166136(n+4))`
-/

namespace A266016.P2046611578554815965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A266012 (A166136 (n + 4)).toNat

end

end A266016.P2046611578554815965

/-!
# A266017: Number of 7 X n integer arrays with each element equal to the number of horizontal and antidiagonal neighbors equal to itself.

The programs for A266017, there is no canonical definition to state claims against.
-/

/-! ## A266017.P15754574064768718763

`A266012(A167487(n+5))`
-/

namespace A266017.P15754574064768718763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A167487 (n + 5)).toNat

end

end A266017.P15754574064768718763

/-! ## A266017.P13235388457491547383

`A266012(A302537(n)+27)`
-/

namespace A266017.P13235388457491547383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A302537 n + 27).toNat

end

end A266017.P13235388457491547383

/-! ## A266017.P12469445807457289316

`A266012(A056119(n)+28)`
-/

namespace A266017.P12469445807457289316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A056119 n + 28).toNat

end

end A266017.P12469445807457289316

/-! ## A266017.P9517781034184565565

`A266012(A166136(n+5)+1)`
-/

namespace A266017.P9517781034184565565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A166136 (n + 5) + 1).toNat

end

end A266017.P9517781034184565565

/-! ## A266017.P8311996561530751593

`A266012(A167499(n+5)+2)`
-/

namespace A266017.P8311996561530751593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A167499 (n + 5) + 2).toNat

end

end A266017.P8311996561530751593

/-!
# A266018: Number of n X n integer arrays with each element equal to the number of horizontal, vertical and antidiagonal neighbors exactly one smaller than itself.

The programs for A266018, there is no canonical definition to state claims against.
-/

/-! ## A266018.P11572565319896423148

`A266025(∑[4*n]+1)`
-/

namespace A266018.P11572565319896423148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266018.P11572565319896423148

/-! ## A266018.P15340357612786606752

`record[A266025(Δ[A235355(n)])]`
-/

namespace A266018.P15340357612786606752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266018.P15340357612786606752

/-! ## A266018.P9777021846117777008

`A266025(A001844(n))+char[8]`
-/

namespace A266018.P9777021846117777008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266018.P9777021846117777008

/-! ## A266018.P6572612333935707353

`record[A003982(n)*A266025(n+1)]`
-/

namespace A266018.P6572612333935707353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A266025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266018.P6572612333935707353

/-!
# A266019: Number of nX2 integer arrays with each element equal to the number of horizontal, vertical and antidiagonal neighbors exactly one smaller than itself.

The programs for A266019, there is no canonical definition to state claims against.
-/

/-! ## A266019.P9974299367480517965

`A266025(∑[n+1]+2)`
-/

namespace A266019.P9974299367480517965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A266019.P9974299367480517965

/-! ## A266019.P18040406712008155376

`record[A266025(n+3)/A159841(n)]`
-/

namespace A266019.P18040406712008155376
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266025 (n + 3) : ℚ) / (A159841 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266019.P18040406712008155376

/-! ## A266019.P8254350297059261919

`record[A266025(n+3)/A266033(n+1)]`
-/

namespace A266019.P8254350297059261919
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266025 (n + 3) : ℚ) / (A266033 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266019.P8254350297059261919

/-! ## A266019.P7235424250365950910

`record[A266025(n+3)/A266101(n+1)]`
-/

namespace A266019.P7235424250365950910
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266025 (n + 3) : ℚ) / (A266101 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266019.P7235424250365950910

/-! ## A266019.P1748099590093565226

`record[gcd(A256117(n+1), A266025(n+3))]`
-/

namespace A266019.P1748099590093565226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A256117 (n + 1)) (A266025 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266019.P1748099590093565226

/-!
# A266020: Number of nX3 integer arrays with each element equal to the number of horizontal, vertical and antidiagonal neighbors exactly one smaller than itself.

The programs for A266020, there is no canonical definition to state claims against.
-/

/-! ## A266020.P8108092050693531890

`A266025(∑[n+2]+4)`
-/

namespace A266020.P8108092050693531890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A266020.P8108092050693531890

/-! ## A266020.P2891179553614142470

`record[A266025(A130270(n+1)+3)]`
-/

namespace A266020.P2891179553614142470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (A130270 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266020.P2891179553614142470

/-! ## A266020.P3328167364749978543

`abs(A266025(A167614(n+1))-1)+1`
-/

namespace A266020.P3328167364749978543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A266025 (A167614 (n + 1)).toNat - 1| + 1

end

end A266020.P3328167364749978543

/-! ## A266020.P7577381430691683302

`A266025(A167614(n+1))+A025442(n)`
-/

namespace A266020.P7577381430691683302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (A167614 (n + 1)).toNat + A025442 n

end

end A266020.P7577381430691683302

/-! ## A266020.P17856576759819742504

`A266025(A167614(n+1))+A025466(n)`
-/

namespace A266020.P17856576759819742504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (A167614 (n + 1)).toNat + A025466 n

end

end A266020.P17856576759819742504

/-!
# A266021: Number of nX4 integer arrays with each element equal to the number of horizontal, vertical and antidiagonal neighbors exactly one smaller than itself.

The programs for A266021, there is no canonical definition to state claims against.
-/

/-! ## A266021.P17503566029186713692

`A266025(A141214(n)+7)`
-/

namespace A266021.P17503566029186713692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (A141214 n + 7).toNat

end

end A266021.P17503566029186713692

/-! ## A266021.P16012773122995843811

`A266025(A052905(n)+9)`
-/

namespace A266021.P16012773122995843811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (A052905 n + 9).toNat

end

end A266021.P16012773122995843811

/-! ## A266021.P7684226967821377225

`A266025(A055999(n)+10)`
-/

namespace A266021.P7684226967821377225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (A055999 n + 10).toNat

end

end A266021.P7684226967821377225

/-! ## A266021.P572294090960331097

`A266025(eq[5, A066657(n)])`
-/

namespace A266021.P572294090960331097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266021.P572294090960331097

/-! ## A266021.P12341747634031197570

`A266025(Δ[A008778(n)]+6)`
-/

namespace A266021.P12341747634031197570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (f1 (n + 1) - f1 n + 6).toNat

end

end A266021.P12341747634031197570

/-!
# A266022: Number of nX5 integer arrays with each element equal to the number of horizontal, vertical and antidiagonal neighbors exactly one smaller than itself.

The programs for A266022, there is no canonical definition to state claims against.
-/

/-! ## A266022.P8025370425017124806

`A266025(A167499(n+3))`
-/

namespace A266022.P8025370425017124806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (A167499 (n + 3)).toNat

end

end A266022.P8025370425017124806

/-! ## A266022.P10249495977960861389

`A266025(A155212(n)+13)`
-/

namespace A266022.P10249495977960861389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (A155212 n + 13).toNat

end

end A266022.P10249495977960861389

/-! ## A266022.P9454390446007907547

`A266025(A056000(n)+15)`
-/

namespace A266022.P9454390446007907547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (A056000 n + 15).toNat

end

end A266022.P9454390446007907547

/-! ## A266022.P12592437195122527646

`A266025(eq[7, A066657(n)])`
-/

namespace A266022.P12592437195122527646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266022.P12592437195122527646

/-! ## A266022.P12553402919205793178

`A266025(A167614(n+3)+2)`
-/

namespace A266022.P12553402919205793178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (A167614 (n + 3) + 2).toNat

end

end A266022.P12553402919205793178

/-!
# A266023: Number of nX6 integer arrays with each element equal to the number of horizontal, vertical and antidiagonal neighbors exactly one smaller than itself.

The programs for A266023, there is no canonical definition to state claims against.
-/

/-! ## A266023.P8818513709467389098

`A266025(A166136(n+4))`
-/

namespace A266023.P8818513709467389098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (A166136 (n + 4)).toNat

end

end A266023.P8818513709467389098

/-! ## A266023.P5879982230120722065

`A266025(A167499(n+4)+1)`
-/

namespace A266023.P5879982230120722065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (A167499 (n + 4) + 1).toNat

end

end A266023.P5879982230120722065

/-! ## A266023.P11700385393741581428

`A266025(A133263(n+5)+4)`
-/

namespace A266023.P11700385393741581428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (A133263 (n + 5) + 4).toNat

end

end A266023.P11700385393741581428

/-! ## A266023.P4412419663749081985

`A266025(A000124(n+5)+5)`
-/

namespace A266023.P4412419663749081985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (A000124 (n + 5) + 5).toNat

end

end A266023.P4412419663749081985

/-! ## A266023.P8791676671037100398

`A266025(eq[7, A131818(n+1)])`
-/

namespace A266023.P8791676671037100398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266023.P8791676671037100398

/-!
# A266024: Number of nX7 integer arrays with each element equal to the number of horizontal, vertical and antidiagonal neighbors exactly one smaller than itself.

The programs for A266024, there is no canonical definition to state claims against.
-/

/-! ## A266024.P18094226899487700523

`A266025(A056119(n)+28)`
-/

namespace A266024.P18094226899487700523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (A056119 n + 28).toNat

end

end A266024.P18094226899487700523

/-! ## A266024.P11875979491477304372

`A266025(eq[11, A066657(n)])`
-/

namespace A266024.P11875979491477304372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266024.P11875979491477304372

/-! ## A266024.P6692331043880629323

`A266025(A167499(n+5)+2)`
-/

namespace A266024.P6692331043880629323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (A167499 (n + 5) + 2).toNat

end

end A266024.P6692331043880629323

/-! ## A266024.P15203368716844988002

`A266025(A133263(n+6)+5)`
-/

namespace A266024.P15203368716844988002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (A133263 (n + 6) + 5).toNat

end

end A266024.P15203368716844988002

/-! ## A266024.P16596915315516420167

`A266025(A141214(n+3)+10)`
-/

namespace A266024.P16596915315516420167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266025 (A141214 (n + 3) + 10).toNat

end

end A266024.P16596915315516420167

/-!
# A266025: T(n,k)=Number of nXk integer arrays with each element equal to the number of horizontal, vertical and antidiagonal neighbors exactly one smaller than itself.

The programs for A266025, there is no canonical definition to state claims against.
-/

/-! ## A266025.P3204430530967371767

`∑{d}[A295943(A088153(n)!+n), A006530(#)]`
-/

namespace A266025.P3204430530967371767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295943 (Nat.factorial (A088153 n).toNat + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A006530 d

end

end A266025.P3204430530967371767

/-!
# A266026: Number of n X n integer arrays with each element equal to the number of horizontal and antidiagonal neighbors less than itself.

The programs for A266026, there is no canonical definition to state claims against.
-/

/-! ## A266026.P5004875332192067192

`A266033((n+1)²+n²)`
-/

namespace A266026.P5004875332192067192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 ((n + 1) ^ 2 + n ^ 2)

end

end A266026.P5004875332192067192

/-! ## A266026.P4257621264620566826

`or(A000035(n), A266033(A001844(n)))`
-/

namespace A266026.P4257621264620566826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A266033 (A001844 n).toNat)

end

end A266026.P4257621264620566826

/-! ## A266026.P3958644091593187267

`A266033(A001844(n))+A035640(n+1)`
-/

namespace A266026.P3958644091593187267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (A001844 n).toNat + A035640 (n + 1)

end

end A266026.P3958644091593187267

/-! ## A266026.P6804218388735317514

`or(A135528(n+1), A266033(A001844(n)))`
-/

namespace A266026.P6804218388735317514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A135528 (n + 1)) (A266033 (A001844 n).toNat)

end

end A266026.P6804218388735317514

/-!
# A266027: Number of n X 2 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors less than itself.

The programs for A266027, the canonical program `A266027.P10363229441075989749` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266027 has offset 1).

The definition of A266027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266027.P10363229441075989749

`3*a(n-1)+7*a(n-2)+7*a(n-3)-a(n-4)` with `a(0)=3, a(1)=11, a(2)=55, a(3)=263`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266027

/-- `3*a(n-1)+7*a(n-2)+7*a(n-3)-a(n-4)` -/
def P10363229441075989749.Spec : Prop :=
  ∀ n, P10363229441075989749.a n = A266027 (n + 1)

theorem P10363229441075989749.correct : P10363229441075989749.Spec := by
  intro n
  simp only [A266027, Nat.add_sub_cancel]

end A266027

/-! ## A266027.P11956053981529180909

`A196423(2*(n+1))`
-/

namespace A266027.P11956053981529180909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196423 (2 * (n + 1))

end

end A266027.P11956053981529180909

namespace A266027

/-- `A196423(2*(n+1))` -/
def P11956053981529180909.Spec : Prop :=
  ∀ n, P11956053981529180909.a n = A266027 (n + 1)

end A266027

/-! ## A266027.P4592689468484872558

`record[A196423(A003417(n))]`
-/

namespace A266027.P4592689468484872558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196423 (A003417 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266027.P4592689468484872558

namespace A266027

/-- `record[A196423(A003417(n))]` -/
def P4592689468484872558.Spec : Prop :=
  ∀ n, P4592689468484872558.a n = A266027 (n + 1)

end A266027

/-! ## A266027.P13054115146168758896

`record[A196423(A133265(n))]`
-/

namespace A266027.P13054115146168758896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196423 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266027.P13054115146168758896

namespace A266027

/-- `record[A196423(A133265(n))]` -/
def P13054115146168758896.Spec : Prop :=
  ∀ n, P13054115146168758896.a n = A266027 (n + 1)

end A266027

/-! ## A266027.P7725550700772268664

`record[A196423(Δ[A236453(n)])]`
-/

namespace A266027.P7725550700772268664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196423 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266027.P7725550700772268664

namespace A266027

/-- `record[A196423(Δ[A236453(n)])]` -/
def P7725550700772268664.Spec : Prop :=
  ∀ n, P7725550700772268664.a n = A266027 (n + 1)

end A266027

/-! ## A266027.P3742288206917171540

`record[A196423(A014681(n+1))]`
-/

namespace A266027.P3742288206917171540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196423 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266027.P3742288206917171540

namespace A266027

/-- `record[A196423(A014681(n+1))]` -/
def P3742288206917171540.Spec : Prop :=
  ∀ n, P3742288206917171540.a n = A266027 (n + 1)

end A266027

/-! ## A266027.P6375717286784548775

`record[A196423(A103889(n+1))]`
-/

namespace A266027.P6375717286784548775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196423 (A103889 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266027.P6375717286784548775

namespace A266027

/-- `record[A196423(A103889(n+1))]` -/
def P6375717286784548775.Spec : Prop :=
  ∀ n, P6375717286784548775.a n = A266027 (n + 1)

end A266027

/-! ## A266027.P1874983585592939401

`A232162(2*(n+1))+A214663(2*n+1)`
-/

namespace A266027.P1874983585592939401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232162 (2 * (n + 1)) + A214663 (2 * n + 1)

end

end A266027.P1874983585592939401

namespace A266027

/-- `A232162(2*(n+1))+A214663(2*n+1)` -/
def P1874983585592939401.Spec : Prop :=
  ∀ n, P1874983585592939401.a n = A266027 (n + 1)

end A266027

/-! ## A266027.P9932418578300684277

`A232164(2*(n+1))+A232162(2*(n+1))`
-/

namespace A266027.P9932418578300684277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232164 (2 * (n + 1)) + A232162 (2 * (n + 1))

end

end A266027.P9932418578300684277

namespace A266027

/-- `A232164(2*(n+1))+A232162(2*(n+1))` -/
def P9932418578300684277.Spec : Prop :=
  ∀ n, P9932418578300684277.a n = A266027 (n + 1)

end A266027

/-! ## A266027.P15024663636574145516

`A232165(2*n+1)+A232165(2*(n+1))`
-/

namespace A266027.P15024663636574145516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232165 (2 * n + 1) + A232165 (2 * (n + 1))

end

end A266027.P15024663636574145516

namespace A266027

/-- `A232165(2*n+1)+A232165(2*(n+1))` -/
def P15024663636574145516.Spec : Prop :=
  ∀ n, P15024663636574145516.a n = A266027 (n + 1)

end A266027

/-! ## A266027.P4095986670625959396

`A196423(A103517(n))+A000038(n)`
-/

namespace A266027.P4095986670625959396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196423 (A103517 n).toNat + A000038 n

end

end A266027.P4095986670625959396

namespace A266027

/-- `A196423(A103517(n))+A000038(n)` -/
def P4095986670625959396.Spec : Prop :=
  ∀ n, P4095986670625959396.a n = A266027 (n + 1)

end A266027

/-! ## A266027.P12126018525947310113

`A196423(A005843(n+1))%A196452(n+1)`
-/

namespace A266027.P12126018525947310113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196423 (A005843 (n + 1)).toNat) (A196452 (n + 1))

end

end A266027.P12126018525947310113

namespace A266027

/-- `A196423(A005843(n+1))%A196452(n+1)` -/
def P12126018525947310113.Spec : Prop :=
  ∀ n, P12126018525947310113.a n = A266027 (n + 1)

end A266027

/-! ## A266027.P245142921561694666

`A196423(eq[1, A019430(n)])%A196452(n+1)`
-/

namespace A266027.P245142921561694666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196423 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A196452 (n + 1))

end

end A266027.P245142921561694666

namespace A266027

/-- `A196423(eq[1, A019430(n)])%A196452(n+1)` -/
def P245142921561694666.Spec : Prop :=
  ∀ n, P245142921561694666.a n = A266027 (n + 1)

end A266027

/-!
# A266028: Number of n X 3 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors less than itself.

The programs for A266028, there is no canonical definition to state claims against.
-/

/-! ## A266028.P12179061235291968599

`A266033(∑[n+3]+1)`
-/

namespace A266028.P12179061235291968599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266028.P12179061235291968599

/-! ## A266028.P649357793423716478

`A266033(A034856(n+2))%A337915(n+1)`
-/

namespace A266028.P649357793423716478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266033 (A034856 (n + 2)).toNat) (A337915 (n + 1))

end

end A266028.P649357793423716478

/-!
# A266029: Number of nX4 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors less than itself.

The programs for A266029, there is no canonical definition to state claims against.
-/

/-! ## A266029.P1467710371609497209

`A266033(∑[n+3]+n+4)`
-/

namespace A266029.P1467710371609497209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A266029.P1467710371609497209

/-!
# A266030: Number of nX5 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors less than itself.

The programs for A266030, there is no canonical definition to state claims against.
-/

/-! ## A266030.P7565563813820213191

`A266033(eq[4, A193592(n)])`
-/

namespace A266030.P7565563813820213191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266030.P7565563813820213191

/-! ## A266030.P12022843520213240576

`A266033(eq[5, A239144(n)])`
-/

namespace A266030.P12022843520213240576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266030.P12022843520213240576

/-! ## A266030.P407649288460623928

`A266033(eq[8, A166065(n)])`
-/

namespace A266030.P407649288460623928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266030.P407649288460623928

/-! ## A266030.P7767290346290236939

`A266033(Δ[A023545(n+1)])`
-/

namespace A266030.P7767290346290236939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (f1 (n + 1) - f1 n).toNat

end

end A266030.P7767290346290236939

/-! ## A266030.P4624055956485971532

`A266033(eq[5, A200370(n+1)])`
-/

namespace A266030.P4624055956485971532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266030.P4624055956485971532

/-!
# A266031: Number of nX6 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors less than itself.

The programs for A266031, there is no canonical definition to state claims against.
-/

/-! ## A266031.P8719131870976030394

`A266033(A052905(n+3))`
-/

namespace A266031.P8719131870976030394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (A052905 (n + 3)).toNat

end

end A266031.P8719131870976030394

/-! ## A266031.P4023137601547401707

`A266033(eq[3, A219347(n)])`
-/

namespace A266031.P4023137601547401707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266031.P4023137601547401707

/-! ## A266031.P13110414617561914220

`A266033(eq[5, A193592(n)])`
-/

namespace A266031.P13110414617561914220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266031.P13110414617561914220

/-! ## A266031.P16161960842838208289

`A266033(eq[8, A258709(n)])`
-/

namespace A266031.P16161960842838208289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266031.P16161960842838208289

/-! ## A266031.P13924497895521096124

`A266033(A046691(n+4)-1)`
-/

namespace A266031.P13924497895521096124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (A046691 (n + 4) - 1).toNat

end

end A266031.P13924497895521096124

/-!
# A266032: Number of nX7 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors less than itself.

The programs for A266032, there is no canonical definition to state claims against.
-/

/-! ## A266032.P3491567117481586142

`A266033(A055999(n+4))`
-/

namespace A266032.P3491567117481586142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (A055999 (n + 4)).toNat

end

end A266032.P3491567117481586142

/-! ## A266032.P615965979038703602

`A266033(eq[6, A193592(n)])`
-/

namespace A266032.P615965979038703602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266032.P615965979038703602

/-! ## A266032.P8794804918997129463

`A266033(eq[2, A219347(n)-2])`
-/

namespace A266032.P8794804918997129463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266032.P8794804918997129463

/-! ## A266032.P9126919912499131945

`A266033(eq[7, A200370(n+1)])`
-/

namespace A266032.P9126919912499131945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266032.P9126919912499131945

/-!
# A266034: Number of 2Xn integer arrays with each element equal to the number of horizontal and antidiagonal neighbors less than itself.

The programs for A266034, there is no canonical definition to state claims against.
-/

/-! ## A266034.P16158513603080407845

`A266033(∑[n+1]+2)`
-/

namespace A266034.P16158513603080407845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A266034.P16158513603080407845

/-! ## A266034.P15254165387803589544

`record[gcd(A097230(n), A266033(n+1))]`
-/

namespace A266034.P15254165387803589544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097230 n) (A266033 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266034.P15254165387803589544

/-! ## A266034.P5260715540538695131

`A326292(n)+A266033(A133263(n+1))`
-/

namespace A266034.P5260715540538695131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 n + A266033 (A133263 (n + 1)).toNat

end

end A266034.P5260715540538695131

/-! ## A266034.P3298014760574559353

`A266033(A133263(n+1))+A027641(2*n+3)`
-/

namespace A266034.P3298014760574559353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (A133263 (n + 1)).toNat + A027641 (2 * n + 3)

end

end A266034.P3298014760574559353

/-! ## A266034.P16742128867297721307

`A266033(A133263(n+1))+A106708(A000040(n+1))`
-/

namespace A266034.P16742128867297721307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (A133263 (n + 1)).toNat + A106708 (A000040 (n + 1)).toNat

end

end A266034.P16742128867297721307

/-!
# A266035: Number of 3Xn integer arrays with each element equal to the number of horizontal and antidiagonal neighbors less than itself.

The programs for A266035, there is no canonical definition to state claims against.
-/

/-! ## A266035.P643514893544221445

`A266033(∑[n+2]+4)`
-/

namespace A266035.P643514893544221445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A266035.P643514893544221445

/-! ## A266035.P8579699012224152347

`or(char[n^3], A266033(A167614(n+1)))`
-/

namespace A266035.P8579699012224152347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A266033 (A167614 (n + 1)).toNat)

end

end A266035.P8579699012224152347

/-! ## A266035.P18261412453711391392

`A266033(A167614(n+1))+A185284(n)`
-/

namespace A266035.P18261412453711391392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (A167614 (n + 1)).toNat + A185284 n

end

end A266035.P18261412453711391392

/-! ## A266035.P10613856311878017509

`A266033(A167614(n+1))^A178334(n)`
-/

namespace A266035.P10613856311878017509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266033 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A266035.P10613856311878017509

/-! ## A266035.P517524766478299615

`gcd(A000038(n), A266033(A167614(n+1)))`
-/

namespace A266035.P517524766478299615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A266033 (A167614 (n + 1)).toNat)

end

end A266035.P517524766478299615

/-!
# A266036: Number of 4Xn integer arrays with each element equal to the number of horizontal and antidiagonal neighbors less than itself.

The programs for A266036, there is no canonical definition to state claims against.
-/

/-! ## A266036.P6408638775898936018

`A266033(A141214(n)+7)`
-/

namespace A266036.P6408638775898936018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (A141214 n + 7).toNat

end

end A266036.P6408638775898936018

/-! ## A266036.P16374964037296457703

`A266033(A052905(n)+9)`
-/

namespace A266036.P16374964037296457703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (A052905 n + 9).toNat

end

end A266036.P16374964037296457703

/-! ## A266036.P14557136894661602842

`A266033(A055999(n)+10)`
-/

namespace A266036.P14557136894661602842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (A055999 n + 10).toNat

end

end A266036.P14557136894661602842

/-! ## A266036.P18039824616290092331

`A266033(A167614(n+2)+1)`
-/

namespace A266036.P18039824616290092331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (A167614 (n + 2) + 1).toNat

end

end A266036.P18039824616290092331

/-! ## A266036.P17413690657258978924

`A266033(A166136(n+2)-2)`
-/

namespace A266036.P17413690657258978924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (A166136 (n + 2) - 2).toNat

end

end A266036.P17413690657258978924

/-!
# A266037: Number of 5 X n integer arrays with each element equal to the number of horizontal and antidiagonal neighbors less than itself.

The programs for A266037, there is no canonical definition to state claims against.
-/

/-! ## A266037.P15913791607146082179

`A266033(A155212(n)+13)`
-/

namespace A266037.P15913791607146082179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (A155212 n + 13).toNat

end

end A266037.P15913791607146082179

/-! ## A266037.P17597567133541175621

`A266033(A056000(n)+15)`
-/

namespace A266037.P17597567133541175621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (A056000 n + 15).toNat

end

end A266037.P17597567133541175621

/-! ## A266037.P940371474850317941

`A266033(A166136(n+3)-1)`
-/

namespace A266037.P940371474850317941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (A166136 (n + 3) - 1).toNat

end

end A266037.P940371474850317941

/-! ## A266037.P17461161853932919720

`A266033(A000124(n+4)+4)`
-/

namespace A266037.P17461161853932919720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (A000124 (n + 4) + 4).toNat

end

end A266037.P17461161853932919720

/-! ## A266037.P11502085481680366656

`A266033(eq[6, A131818(n+1)])`
-/

namespace A266037.P11502085481680366656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266037.P11502085481680366656

/-!
# A266038: Number of 6Xn integer arrays with each element equal to the number of horizontal and antidiagonal neighbors less than itself.

The programs for A266038, there is no canonical definition to state claims against.
-/

/-! ## A266038.P14919173993718600668

`A266033(A166136(n+4))`
-/

namespace A266038.P14919173993718600668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (A166136 (n + 4)).toNat

end

end A266038.P14919173993718600668

/-! ## A266038.P16525074579135292056

`A266033(A056115(n)+21)`
-/

namespace A266038.P16525074579135292056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (A056115 n + 21).toNat

end

end A266038.P16525074579135292056

/-! ## A266038.P8510859857925238630

`A266033(eq[6, A130270(n+1)])`
-/

namespace A266038.P8510859857925238630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266038.P8510859857925238630

/-! ## A266038.P15148600131188002205

`A266033(eq[7, A131818(n+1)])`
-/

namespace A266038.P15148600131188002205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266038.P15148600131188002205

/-! ## A266038.P534647279545892361

`A266033(Δ[A023545(n+1)]+10)`
-/

namespace A266038.P534647279545892361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (f1 (n + 1) - f1 n + 10).toNat

end

end A266038.P534647279545892361

/-!
# A266039: Number of 7Xn integer arrays with each element equal to the number of horizontal and antidiagonal neighbors less than itself.

The programs for A266039, there is no canonical definition to state claims against.
-/

/-! ## A266039.P11572100538521761854

`A266033(eq[8, A131818(n+1)])`
-/

namespace A266039.P11572100538521761854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266039.P11572100538521761854

/-!
# A266040: Number of nX2 arrays containing 2 copies of 0..n-1 with no element plus any vertical or antidiagonal neighbor equal to n-1.

The programs for A266040, there is no canonical definition to state claims against.
-/

/-! ## A266040.P17003850862674087481

`A266042(∑[n+2])`
-/

namespace A266040.P17003850862674087481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266042 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266040.P17003850862674087481

/-! ## A266040.P12048755152072526140

`lcm(A001316(n), A266042(A000096(n+1)))`
-/

namespace A266040.P12048755152072526140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 n) (A266042 (A000096 (n + 1)).toNat)

end

end A266040.P12048755152072526140

/-! ## A266040.P4468878146000907649

`A266042(A347553(n+4))+A101637(n+1)`
-/

namespace A266040.P4468878146000907649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266042 (A347553 (n + 4)).toNat + A101637 (n + 1)

end

end A266040.P4468878146000907649

/-! ## A266040.P7364046633535383358

`A266042(A000096(n+1))%A332928(n+1)`
-/

namespace A266040.P7364046633535383358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266042 (A000096 (n + 1)).toNat) (A332928 (n + 1))

end

end A266040.P7364046633535383358

/-! ## A266040.P917721339618637812

`A266042(A347553(n+4))%A001850(3*(n+1))`
-/

namespace A266040.P917721339618637812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266042 (A347553 (n + 4)).toNat) (A001850 (3 * (n + 1)))

end

end A266040.P917721339618637812

/-!
# A266041: Number of nX3 arrays containing 3 copies of 0..n-1 with no element plus any vertical or antidiagonal neighbor equal to n-1.

The programs for A266041, there is no canonical definition to state claims against.
-/

/-! ## A266041.P9471443401126136021

`A266042(∑[n+3]+1)`
-/

namespace A266041.P9471443401126136021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266042 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266041.P9471443401126136021

/-!
# A266042: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with no element plus any vertical or antidiagonal neighbor equal to n-1.

The programs for A266042, there is no canonical definition to state claims against.
-/

/-! ## A266042.P8485674166659494805

`A351846(A266291(n+1)²*A193734(n))`
-/

namespace A266042.P8485674166659494805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A266291 (n + 1) ^ 2 * A193734 n).toNat

end

end A266042.P8485674166659494805

/-! ## A266042.P2595476958545341719

`A177886(A193734(n))`
-/

namespace A266042.P2595476958545341719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177886 (A193734 n).toNat

end

end A266042.P2595476958545341719

/-! ## A266042.P8681890845858085875

`A274710(n*A131689(n))`
-/

namespace A266042.P8681890845858085875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274710 ((n : ℤ) * A131689 n).toNat

end

end A266042.P8681890845858085875

/-! ## A266042.P15741425276829500203

`A379305(A135313(n))+A010054(n)`
-/

namespace A266042.P15741425276829500203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379305 (A135313 n).toNat + A010054 n

end

end A266042.P15741425276829500203

/-! ## A266042.P9353397871766988832

`A357641(A103438(n)^A330942(n))`
-/

namespace A266042.P9353397871766988832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357641 (SequenceMachineLib.roundAway ((A103438 n : ℚ) ^ (A330942 n : ℤ))).toNat

end

end A266042.P9353397871766988832

/-!
# A266043: Number of 3Xn arrays containing n copies of 0..3-1 with no element plus any vertical or antidiagonal neighbor equal to 3-1.

The programs for A266043, there is no canonical definition to state claims against.
-/

/-! ## A266043.P17542135411438914653

`A266042(∑[n+2]+4)`
-/

namespace A266043.P17542135411438914653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266042 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A266043.P17542135411438914653

/-! ## A266043.P10639911080853590558

`lcm(2, A266042(A167614(n+1)))`
-/

namespace A266043.P10639911080853590558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A266042 (A167614 (n + 1)).toNat)

end

end A266043.P10639911080853590558

/-! ## A266043.P17722658570961464053

`A266042(A167614(n+1))+A035041(n)`
-/

namespace A266043.P17722658570961464053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266042 (A167614 (n + 1)).toNat + A035041 n

end

end A266043.P17722658570961464053

/-! ## A266043.P16855068377842262262

`A266042(A167614(n+1))+A064459(n)`
-/

namespace A266043.P16855068377842262262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266042 (A167614 (n + 1)).toNat + A064459 n

end

end A266043.P16855068377842262262

/-!
# A266044: Number of 4Xn arrays containing n copies of 0..4-1 with no element plus any vertical or antidiagonal neighbor equal to 4-1.

The programs for A266044, there is no canonical definition to state claims against.
-/

/-! ## A266044.P9551234611261112889

`A266042(∑[n+3]+7)`
-/

namespace A266044.P9551234611261112889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266042 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A266044.P9551234611261112889

/-!
# A266045: Number of 5Xn arrays containing n copies of 0..5-1 with no element plus any vertical or antidiagonal neighbor equal to 5-1.

The programs for A266045, there is no canonical definition to state claims against.
-/

/-! ## A266045.P13375800023743731297

`A266042(A167499(n+3))`
-/

namespace A266045.P13375800023743731297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266042 (A167499 (n + 3)).toNat

end

end A266045.P13375800023743731297

/-! ## A266045.P3759449193868141769

`A266042(A155212(n)+13)`
-/

namespace A266045.P3759449193868141769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266042 (A155212 n + 13).toNat

end

end A266045.P3759449193868141769

/-!
# A266046: Real part of Q^n, where Q is the quaternion 2 + j + k.

The programs for A266046, the canonical program `A266046.P18004011919526208187` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266046 has offset 0).

The definition of A266046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266046.P18004011919526208187

`4*a(n-1)-6*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266046

/-- `4*a(n-1)-6*a(n-2)` -/
def P18004011919526208187.Spec : Prop :=
  ∀ n, P18004011919526208187.a n = A266046 n

theorem P18004011919526208187.correct : P18004011919526208187.Spec := by
  intro n
  simp only [A266046]

end A266046

/-! ## A266046.P10838287539630166453

`ogf((1-2x)/(1-4x+6x^2))`
-/

namespace A266046.P10838287539630166453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -4, 6] n

end

end A266046.P10838287539630166453

namespace A266046

/-- `ogf((1-2x)/(1-4x+6x^2))` -/
def P10838287539630166453.Spec : Prop :=
  ∀ n, P10838287539630166453.a n = A266046 n

end A266046

/-! ## A266046.P11934574081576274753

`Δ[A190965(n)]-A190965(n)`
-/

namespace A266046.P11934574081576274753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A190965 n

end

end A266046.P11934574081576274753

namespace A266046

/-- `Δ[A190965(n)]-A190965(n)` -/
def P11934574081576274753.Spec : Prop :=
  ∀ n, P11934574081576274753.a n = A266046 n

end A266046

/-! ## A266046.P14014423553395312798

`A190965(n+1)-2*A190965(n)`
-/

namespace A266046.P14014423553395312798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190965 (n + 1) - 2 * A190965 n

end

end A266046.P14014423553395312798

namespace A266046

/-- `A190965(n+1)-2*A190965(n)` -/
def P14014423553395312798.Spec : Prop :=
  ∀ n, P14014423553395312798.a n = A266046 n

end A266046

/-! ## A266046.P15470448255765847359

`Δ[A190965(n+1)/3]`
-/

namespace A266046.P15470448255765847359
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190965 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266046.P15470448255765847359

namespace A266046

/-- `Δ[A190965(n+1)/3]` -/
def P15470448255765847359.Spec : Prop :=
  ∀ n, P15470448255765847359.a n = (A266046 n : ℚ)

end A266046

/-!
# A266047: Smallest integers of each prime signature of prime factorization palindromes (A265640).

The programs for A266047, there is no canonical definition to state claims against.
-/

/-! ## A266047.P539120262810798948

`filter[A265640(n+1), A322585(#)]`
-/

namespace A266047.P539120262810798948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A266047.P539120262810798948

/-! ## A266047.P13843255891717233337

`∩[A025487(n+1), A265640(n+1)]`
-/

namespace A266047.P13843255891717233337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266047.P13843255891717233337

/-! ## A266047.P10968189384029265046

`∩[A265640(n+1), A333964(n+1)]`
-/

namespace A266047.P10968189384029265046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266047.P10968189384029265046

/-! ## A266047.P10125786595526043839

`∩[A265640(n+1), A178799(n)+a(n-1)]` with `a(0)=1`
-/

namespace A266047.P10125786595526043839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A178799 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A266047.P10125786595526043839

/-! ## A266047.P9090058678134464618

`record[A328479(A265640(n+1))]`
-/

namespace A266047.P9090058678134464618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (A265640 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266047.P9090058678134464618

/-!
# A266048: Number of n X n integer arrays with each element equal to the number of horizontal and antidiagonal neighbors less than or equal to itself.

The programs for A266048, there is no canonical definition to state claims against.
-/

/-! ## A266048.P15045804209659335883

`A266055(∑[4*n]+1)`
-/

namespace A266048.P15045804209659335883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266048.P15045804209659335883

/-! ## A266048.P14648500581241080531

`record[A266055(A330613(n+1))]`
-/

namespace A266048.P14648500581241080531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266048.P14648500581241080531

/-! ## A266048.P9909307343811109955

`A266055(A001844(n))+char[8]`
-/

namespace A266048.P9909307343811109955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266048.P9909307343811109955

/-! ## A266048.P10844318905320238917

`record[A003982(n)*A266055(n+1)]`
-/

namespace A266048.P10844318905320238917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A266055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266048.P10844318905320238917

/-!
# A266049: Number of n X 2 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors less than or equal to itself.

The programs for A266049, the canonical program `A266049.P10051631971625544704` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266049 has offset 1).

The definition of A266049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266049.P10051631971625544704

`3*a(n-1)+7*a(n-2)+7*a(n-3)-a(n-4)` with `a(0)=3, a(1)=7, a(2)=35, a(3)=176`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266049

/-- `3*a(n-1)+7*a(n-2)+7*a(n-3)-a(n-4)` -/
def P10051631971625544704.Spec : Prop :=
  ∀ n, P10051631971625544704.a n = A266049 (n + 1)

theorem P10051631971625544704.correct : P10051631971625544704.Spec := by
  intro n
  simp only [A266049, Nat.add_sub_cancel]

end A266049

/-! ## A266049.P16248068788956060878

`A196537(2*(n+1))`
-/

namespace A266049.P16248068788956060878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196537 (2 * (n + 1))

end

end A266049.P16248068788956060878

namespace A266049

/-- `A196537(2*(n+1))` -/
def P16248068788956060878.Spec : Prop :=
  ∀ n, P16248068788956060878.a n = A266049 (n + 1)

end A266049

/-! ## A266049.P12870711028672748924

`record[A196537(A003417(n))]`
-/

namespace A266049.P12870711028672748924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196537 (A003417 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266049.P12870711028672748924

namespace A266049

/-- `record[A196537(A003417(n))]` -/
def P12870711028672748924.Spec : Prop :=
  ∀ n, P12870711028672748924.a n = A266049 (n + 1)

end A266049

/-! ## A266049.P18290019607866186081

`record[A196537(A014681(n+1))]`
-/

namespace A266049.P18290019607866186081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196537 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266049.P18290019607866186081

namespace A266049

/-- `record[A196537(A014681(n+1))]` -/
def P18290019607866186081.Spec : Prop :=
  ∀ n, P18290019607866186081.a n = A266049 (n + 1)

end A266049

/-! ## A266049.P16247739561029397205

`record[A196537(A093178(n)+1)]`
-/

namespace A266049.P16247739561029397205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196537 (A093178 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266049.P16247739561029397205

namespace A266049

/-- `record[A196537(A093178(n)+1)]` -/
def P16247739561029397205.Spec : Prop :=
  ∀ n, P16247739561029397205.a n = A266049 (n + 1)

end A266049

/-! ## A266049.P13951447858554493074

`A196537(A103517(n))+A000038(n)`
-/

namespace A266049.P13951447858554493074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196537 (A103517 n).toNat + A000038 n

end

end A266049.P13951447858554493074

namespace A266049

/-- `A196537(A103517(n))+A000038(n)` -/
def P13951447858554493074.Spec : Prop :=
  ∀ n, P13951447858554493074.a n = A266049 (n + 1)

end A266049

/-! ## A266049.P14418384648370132490

`A243094(2*(n+1))-A214663(2*(n+1))`
-/

namespace A266049.P14418384648370132490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243094 (2 * (n + 1)) - A214663 (2 * (n + 1))

end

end A266049.P14418384648370132490

namespace A266049

/-- `A243094(2*(n+1))-A214663(2*(n+1))` -/
def P14418384648370132490.Spec : Prop :=
  ∀ n, P14418384648370132490.a n = A266049 (n + 1)

end A266049

/-! ## A266049.P10042230889194586755

`A243094(2*(n+1))-A232164(2*n+3)`
-/

namespace A266049.P10042230889194586755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243094 (2 * (n + 1)) - A232164 (2 * n + 3)

end

end A266049.P10042230889194586755

namespace A266049

/-- `A243094(2*(n+1))-A232164(2*n+3)` -/
def P10042230889194586755.Spec : Prop :=
  ∀ n, P10042230889194586755.a n = A266049 (n + 1)

end A266049

/-!
# A266050: Number of n X 3 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors less than or equal to itself.

The programs for A266050, the canonical program `A266050.P1614792401432881873` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266050 has offset 1).

The definition of A266050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 271 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266050.P1614792401432881873

`2*a(n-1)+2*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=2, a(1)=12, a(2)=20, a(3)=54`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266050

/-- `2*a(n-1)+2*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P1614792401432881873.Spec : Prop :=
  ∀ n, P1614792401432881873.a n = A266050 (n + 1)

theorem P1614792401432881873.correct : P1614792401432881873.Spec := by
  intro n
  simp only [A266050, Nat.add_sub_cancel]

end A266050

/-! ## A266050.P14622988103900373998

`A266055(∑[n+3]+1)`
-/

namespace A266050.P14622988103900373998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266050.P14622988103900373998

namespace A266050

/-- `A266055(∑[n+3]+1)` -/
def P14622988103900373998.Spec : Prop :=
  ∀ n, P14622988103900373998.a n = A266050 (n + 1)

end A266050

/-! ## A266050.P10999884365884110319

`∑{d}[A266055(A034856(n+2)), A000010(#)]`
-/

namespace A266050.P10999884365884110319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (A034856 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A266050.P10999884365884110319

namespace A266050

/-- `∑{d}[A266055(A034856(n+2)), A000010(#)]` -/
def P10999884365884110319.Spec : Prop :=
  ∀ n, P10999884365884110319.a n = A266050 (n + 1)

end A266050

/-!
# A266051: Number of nX4 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors less than or equal to itself.

The programs for A266051, there is no canonical definition to state claims against.
-/

/-! ## A266051.P17744081628527027389

`A266055(A141214(n+1))`
-/

namespace A266051.P17744081628527027389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (A141214 (n + 1)).toNat

end

end A266051.P17744081628527027389

/-! ## A266051.P3524641587620648467

`A266055(A155212(n)+5)`
-/

namespace A266051.P3524641587620648467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (A155212 n + 5).toNat

end

end A266051.P3524641587620648467

/-! ## A266051.P6939371860453376756

`A266055(A056000(n)+7)`
-/

namespace A266051.P6939371860453376756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (A056000 n + 7).toNat

end

end A266051.P6939371860453376756

/-! ## A266051.P6494650216024905130

`A266055(eq[3, A193592(n)])`
-/

namespace A266051.P6494650216024905130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266051.P6494650216024905130

/-! ## A266051.P7882752208591295578

`A266055(A052905(n+1)+2)`
-/

namespace A266051.P7882752208591295578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (A052905 (n + 1) + 2).toNat

end

end A266051.P7882752208591295578

/-!
# A266052: Number of nX5 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors less than or equal to itself.

The programs for A266052, there is no canonical definition to state claims against.
-/

/-! ## A266052.P13800901409895951778

`A266055(A046691(n+3))`
-/

namespace A266052.P13800901409895951778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (A046691 (n + 3)).toNat

end

end A266052.P13800901409895951778

/-! ## A266052.P8524236244916717194

`A266055(A056115(n)+11)`
-/

namespace A266052.P8524236244916717194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (A056115 n + 11).toNat

end

end A266052.P8524236244916717194

/-! ## A266052.P4449514910512431896

`A266055(eq[4, A193592(n)])`
-/

namespace A266052.P4449514910512431896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266052.P4449514910512431896

/-! ## A266052.P15649551086283506101

`A266055(eq[5, A194921(n+1)])`
-/

namespace A266052.P15649551086283506101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266052.P15649551086283506101

/-! ## A266052.P8385880444174862259

`A266055(eq[8, A057728(n+1)])`
-/

namespace A266052.P8385880444174862259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266052.P8385880444174862259

/-!
# A266053: Number of nX6 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors less than or equal to itself.

The programs for A266053, there is no canonical definition to state claims against.
-/

/-! ## A266053.P2802802143604156874

`A266055(A052905(n+3))`
-/

namespace A266053.P2802802143604156874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (A052905 (n + 3)).toNat

end

end A266053.P2802802143604156874

/-! ## A266053.P5909629848810890941

`A266055(eq[3, A219347(n)])`
-/

namespace A266053.P5909629848810890941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266053.P5909629848810890941

/-! ## A266053.P15693456142316214127

`A266055(eq[5, A193592(n)])`
-/

namespace A266053.P15693456142316214127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266053.P15693456142316214127

/-! ## A266053.P17198422061655413245

`A266055(A000217(n+6)-5)`
-/

namespace A266053.P17198422061655413245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (A000217 (n + 6) - 5).toNat

end

end A266053.P17198422061655413245

/-! ## A266053.P5204406389966276823

`A266055(Δ[Δ[A006504(n+1)]])`
-/

namespace A266053.P5204406389966276823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (f1 (n + 1) - f1 n).toNat

end

end A266053.P5204406389966276823

/-!
# A266054: Number of nX7 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors less than or equal to itself.

The programs for A266054, there is no canonical definition to state claims against.
-/

/-! ## A266054.P2630608619857324760

`A266055(A055999(n+4))`
-/

namespace A266054.P2630608619857324760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (A055999 (n + 4)).toNat

end

end A266054.P2630608619857324760

/-! ## A266054.P10306039228730203874

`A266055(eq[4, A219347(n)])`
-/

namespace A266054.P10306039228730203874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266054.P10306039228730203874

/-! ## A266054.P7839969014679403504

`A266055(eq[6, A193592(n)])`
-/

namespace A266054.P7839969014679403504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266054.P7839969014679403504

/-! ## A266054.P12827367003821510562

`A266055(eq[7, A200370(n+1)])`
-/

namespace A266054.P12827367003821510562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266054.P12827367003821510562

/-! ## A266054.P13584402729461983485

`A266055(eq[10, A185782(n+1)])`
-/

namespace A266054.P13584402729461983485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266054.P13584402729461983485

/-!
# A266056: Number of 2Xn integer arrays with each element equal to the number of horizontal and antidiagonal neighbors less than or equal to itself.

The programs for A266056, there is no canonical definition to state claims against.
-/

/-! ## A266056.P9022777803487244716

`A266055(∑[n+1]+2)`
-/

namespace A266056.P9022777803487244716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A266056.P9022777803487244716

/-! ## A266056.P15476948305659693333

`record[A266055(A135223(n+1)+2)]`
-/

namespace A266056.P15476948305659693333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (A135223 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266056.P15476948305659693333

/-! ## A266056.P15836971296582519083

`record[gcd(A097854(n), A266055(n+1))]`
-/

namespace A266056.P15836971296582519083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097854 n) (A266055 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266056.P15836971296582519083

/-! ## A266056.P980518351318860650

`record[gcd(A086810(n), A266055(n+2))]`
-/

namespace A266056.P980518351318860650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086810 n) (A266055 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266056.P980518351318860650

/-! ## A266056.P16812106082910221948

`A266055(A133263(n+1))%A150890(2*n+1)`
-/

namespace A266056.P16812106082910221948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266055 (A133263 (n + 1)).toNat) (A150890 (2 * n + 1))

end

end A266056.P16812106082910221948

/-!
# A266057: Number of 3Xn integer arrays with each element equal to the number of horizontal and antidiagonal neighbors less than or equal to itself.

The programs for A266057, there is no canonical definition to state claims against.
-/

/-! ## A266057.P7749746549257798764

`A266055(∑[n+2]+4)`
-/

namespace A266057.P7749746549257798764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A266057.P7749746549257798764

/-! ## A266057.P10479884980954317758

`A266055(A167614(n+1))+A025469(n)`
-/

namespace A266057.P10479884980954317758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (A167614 (n + 1)).toNat + A025469 n

end

end A266057.P10479884980954317758

/-! ## A266057.P7751880123042783588

`A266055(A167614(n+1))+A184955(n)`
-/

namespace A266057.P7751880123042783588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (A167614 (n + 1)).toNat + A184955 n

end

end A266057.P7751880123042783588

/-! ## A266057.P12339256067845082261

`A025451(n)*A266055(A167614(n+1))`
-/

namespace A266057.P12339256067845082261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n * A266055 (A167614 (n + 1)).toNat

end

end A266057.P12339256067845082261

/-! ## A266057.P16337623486781880735

`A266055(A167614(n+1))^A178489(n)`
-/

namespace A266057.P16337623486781880735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266055 (A167614 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A266057.P16337623486781880735

/-!
# A266058: Number of 4Xn integer arrays with each element equal to the number of horizontal and antidiagonal neighbors less than or equal to itself.

The programs for A266058, there is no canonical definition to state claims against.
-/

/-! ## A266058.P17432188127483183966

`A266055(A141214(n)+7)`
-/

namespace A266058.P17432188127483183966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (A141214 n + 7).toNat

end

end A266058.P17432188127483183966

/-! ## A266058.P7743219313814035876

`A266055(A052905(n)+9)`
-/

namespace A266058.P7743219313814035876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (A052905 n + 9).toNat

end

end A266058.P7743219313814035876

/-! ## A266058.P12220233337731376235

`A266055(A055999(n)+10)`
-/

namespace A266058.P12220233337731376235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (A055999 n + 10).toNat

end

end A266058.P12220233337731376235

/-! ## A266058.P4346271197704646296

`A266055(eq[5, A066657(n)])`
-/

namespace A266058.P4346271197704646296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266058.P4346271197704646296

/-! ## A266058.P16165761112546547291

`A266055(A167614(n+2)+1)`
-/

namespace A266058.P16165761112546547291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (A167614 (n + 2) + 1).toNat

end

end A266058.P16165761112546547291

/-!
# A266059: Number of 5Xn integer arrays with each element equal to the number of horizontal and antidiagonal neighbors less than or equal to itself.

The programs for A266059, there is no canonical definition to state claims against.
-/

/-! ## A266059.P14468927218834510684

`A266055(A167499(n+3))`
-/

namespace A266059.P14468927218834510684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (A167499 (n + 3)).toNat

end

end A266059.P14468927218834510684

/-! ## A266059.P1020138971554228547

`A266055(A056000(n)+15)`
-/

namespace A266059.P1020138971554228547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (A056000 n + 15).toNat

end

end A266059.P1020138971554228547

/-! ## A266059.P4217863608902601290

`A266055(eq[7, A066657(n)])`
-/

namespace A266059.P4217863608902601290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266059.P4217863608902601290

/-! ## A266059.P17118159255974571829

`A266055(eq[6, A131818(n+1)])`
-/

namespace A266059.P17118159255974571829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266059.P17118159255974571829

/-! ## A266059.P18080205720689155353

`A266055(eq[6, A135223(n+1)])`
-/

namespace A266059.P18080205720689155353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266059.P18080205720689155353

/-!
# A266060: Number of 6Xn integer arrays with each element equal to the number of horizontal and antidiagonal neighbors less than or equal to itself.

The programs for A266060, there is no canonical definition to state claims against.
-/

/-! ## A266060.P16317075648493625050

`A266055(A056115(n)+21)`
-/

namespace A266060.P16317075648493625050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (A056115 n + 21).toNat

end

end A266060.P16317075648493625050

/-! ## A266060.P17428761634491940366

`A266055(A167499(n+4)+1)`
-/

namespace A266060.P17428761634491940366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (A167499 (n + 4) + 1).toNat

end

end A266060.P17428761634491940366

/-! ## A266060.P5819982895685209163

`A266055(eq[5, A002262(n)]+1)`
-/

namespace A266060.P5819982895685209163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A266060.P5819982895685209163

/-! ## A266060.P17602518668025948879

`A266055(eq[6, A130270(n+1)])`
-/

namespace A266060.P17602518668025948879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266060.P17602518668025948879

/-! ## A266060.P6395309674615098144

`A266055(eq[7, A131818(n+1)])`
-/

namespace A266060.P6395309674615098144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266060.P6395309674615098144

/-!
# A266061: Number of 7Xn integer arrays with each element equal to the number of horizontal and antidiagonal neighbors less than or equal to itself.

The programs for A266061, there is no canonical definition to state claims against.
-/

/-! ## A266061.P15174339499255616900

`A266055(eq[11, A066657(n)])`
-/

namespace A266061.P15174339499255616900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266061.P15174339499255616900

/-! ## A266061.P8972949718919100

`A266055(A167499(n+5)+2)`
-/

namespace A266061.P8972949718919100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (A167499 (n + 5) + 2).toNat

end

end A266061.P8972949718919100

/-! ## A266061.P2329461528843062504

`A266055(A161680(n+7)+7)`
-/

namespace A266061.P2329461528843062504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (A161680 (n + 7) + 7).toNat

end

end A266061.P2329461528843062504

/-! ## A266061.P17352590853146675131

`A266055(A046691(n+4)+11)`
-/

namespace A266061.P17352590853146675131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (A046691 (n + 4) + 11).toNat

end

end A266061.P17352590853146675131

/-! ## A266061.P13574935143777072217

`A266055(eq[8, A131818(n+1)])`
-/

namespace A266061.P13574935143777072217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266061.P13574935143777072217

/-!
# A266062: Number of nX2 integer arrays with each element equal to the number of horizontal, vertical, diagonal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266062, there is no canonical definition to state claims against.
-/

/-! ## A266062.P2330239285148090336

`A266067(∑[n+1]+2)`
-/

namespace A266062.P2330239285148090336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266067 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A266062.P2330239285148090336

/-! ## A266062.P8445028559689795677

`record[A266067(n+3)/A125694(n)]`
-/

namespace A266062.P8445028559689795677
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266067 (n + 3) : ℚ) / (A125694 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266062.P8445028559689795677

/-! ## A266062.P396011054764610108

`record[A266067(n+3)/A266033(n+1)]`
-/

namespace A266062.P396011054764610108
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266067 (n + 3) : ℚ) / (A266033 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266062.P396011054764610108

/-! ## A266062.P9665730469897346126

`record[A266067(n+3)/A266055(n+1)]`
-/

namespace A266062.P9665730469897346126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266067 (n + 3) : ℚ) / (A266055 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266062.P9665730469897346126

/-! ## A266062.P3823536043557062302

`record[A266067(n+3)/A266101(n+1)]`
-/

namespace A266062.P3823536043557062302
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266067 (n + 3) : ℚ) / (A266101 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266062.P3823536043557062302

/-!
# A266063: Number of nX3 integer arrays with each element equal to the number of horizontal, vertical, diagonal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266063, there is no canonical definition to state claims against.
-/

/-! ## A266063.P4278271146295649116

`A266067(∑[n+2]+4)`
-/

namespace A266063.P4278271146295649116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266067 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A266063.P4278271146295649116

/-! ## A266063.P3609165324058436147

`A266067(A167614(n+1))+A036600(n)`
-/

namespace A266063.P3609165324058436147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266067 (A167614 (n + 1)).toNat + A036600 n

end

end A266063.P3609165324058436147

/-! ## A266063.P8593663490700779070

`A266067(A167614(n+1))+A054908(n)`
-/

namespace A266063.P8593663490700779070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266067 (A167614 (n + 1)).toNat + A054908 n

end

end A266063.P8593663490700779070

/-! ## A266063.P16274922566868549384

`A266067(A167614(n+1))+A165656(n)`
-/

namespace A266063.P16274922566868549384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266067 (A167614 (n + 1)).toNat + A165656 n

end

end A266063.P16274922566868549384

/-! ## A266063.P3472843882788340659

`A266067(A167614(n+1))+A185284(n)`
-/

namespace A266063.P3472843882788340659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266067 (A167614 (n + 1)).toNat + A185284 n

end

end A266063.P3472843882788340659

/-!
# A266064: Number of nX4 integer arrays with each element equal to the number of horizontal, vertical, diagonal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266064, there is no canonical definition to state claims against.
-/

/-! ## A266064.P13716593011907083830

`A266067(A374004(n+1))`
-/

namespace A266064.P13716593011907083830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266067 (A374004 (n + 1)).toNat

end

end A266064.P13716593011907083830

/-! ## A266064.P9657624479137458022

`A266067(A141214(n)+7)`
-/

namespace A266064.P9657624479137458022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266067 (A141214 n + 7).toNat

end

end A266064.P9657624479137458022

/-! ## A266064.P18087351547658247901

`A266067(A052905(n)+9)`
-/

namespace A266064.P18087351547658247901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266067 (A052905 n + 9).toNat

end

end A266064.P18087351547658247901

/-! ## A266064.P14163581456282918563

`A266067(A055999(n)+10)`
-/

namespace A266064.P14163581456282918563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266067 (A055999 n + 10).toNat

end

end A266064.P14163581456282918563

/-! ## A266064.P10209800443196476760

`A266067(eq[5, A066657(n)])`
-/

namespace A266064.P10209800443196476760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266067 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266064.P10209800443196476760

/-!
# A266065: Number of n X 5 integer arrays with each element equal to the number of horizontal, vertical, diagonal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266065, there is no canonical definition to state claims against.
-/

/-! ## A266065.P14423295589109566484

`A266067(∑[n+4]+11)`
-/

namespace A266065.P14423295589109566484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266067 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A266065.P14423295589109566484

/-!
# A266066: Number of nX6 integer arrays with each element equal to the number of horizontal, vertical, diagonal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266066, there is no canonical definition to state claims against.
-/

/-! ## A266066.P10142780909498820247

`A266067(A374007(n+1))`
-/

namespace A266066.P10142780909498820247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266067 (A374007 (n + 1)).toNat

end

end A266066.P10142780909498820247

/-! ## A266066.P5518953418758479393

`A266067(A056115(n)+21)`
-/

namespace A266066.P5518953418758479393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266067 (A056115 n + 21).toNat

end

end A266066.P5518953418758479393

/-! ## A266066.P5003489085399165395

`A266067(A168105(n)-n)`
-/

namespace A266066.P5003489085399165395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266067 (A168105 n - (n : ℤ)).toNat

end

end A266066.P5003489085399165395

/-! ## A266066.P5210498877355718719

`A266067(A167499(n+4)+1)`
-/

namespace A266066.P5210498877355718719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266067 (A167499 (n + 4) + 1).toNat

end

end A266066.P5210498877355718719

/-!
# A266068: Binary representation of the n-th iteration of the "Rule 3" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266068, there is no canonical definition to state claims against.
-/

/-! ## A266068.P15004631964079099162

`A266460(n)-A007088(Δ[A016116(n)])`
-/

namespace A266068.P15004631964079099162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266460 n - A007088 (f1 (n + 1) - f1 n).toNat

end

end A266068.P15004631964079099162

/-! ## A266068.P1564202926561741606

`A007088(A266069(n))`
-/

namespace A266068.P1564202926561741606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266069 n).toNat

end

end A266068.P1564202926561741606

/-! ## A266068.P8650014422711507617

`A007088(and(A266461(n), A266607(n)))`
-/

namespace A266068.P8650014422711507617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A266461 n) (A266607 n)).toNat

end

end A266068.P8650014422711507617

/-! ## A266068.P8755001794175209304

`A007088(and(A266607(n), A266718(n)))`
-/

namespace A266068.P8755001794175209304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A266607 n) (A266718 n)).toNat

end

end A266068.P8755001794175209304

/-! ## A266068.P2707180639956782480

`A007088(A266461(n)-Δ[A016116(n)])`
-/

namespace A266068.P2707180639956782480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A266461 n - (f1 (n + 1) - f1 n)).toNat

end

end A266068.P2707180639956782480

/-!
# A266069: Decimal representation of the n-th iteration of the "Rule 3" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266069, the canonical program `A266069.P2566806973001176226` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266069 has offset 0).

The definition of A266069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266069.P2566806973001176226

`and(A266461(n), A266607(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A266069

/-- `and(A266461(n), A266607(n))` -/
def P2566806973001176226.Spec : Prop :=
  ∀ n, P2566806973001176226.a n = A266069 n

theorem P2566806973001176226.correct : P2566806973001176226.Spec := by
  intro n
  simp only [A266069]

end A266069

/-! ## A266069.P9081254094214926491

`and(A266607(n), A266718(n))`
-/

namespace A266069.P9081254094214926491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266607 n) (A266718 n)

end

end A266069.P9081254094214926491

namespace A266069

/-- `and(A266607(n), A266718(n))` -/
def P9081254094214926491.Spec : Prop :=
  ∀ n, P9081254094214926491.a n = A266069 n

end A266069

/-! ## A266069.P8697731859720180460

`A266461(n)-Δ[A016116(n)]`
-/

namespace A266069.P8697731859720180460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266461 n - (f1 (n + 1) - f1 n)

end

end A266069.P8697731859720180460

namespace A266069

/-- `A266461(n)-Δ[A016116(n)]` -/
def P8697731859720180460.Spec : Prop :=
  ∀ n, P8697731859720180460.a n = A266069 n

end A266069

/-! ## A266069.P11012782839575636037

`A266607(n)-Δ[A052551(n)]`
-/

namespace A266069.P11012782839575636037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266607 n - (f1 (n + 1) - f1 n)

end

end A266069.P11012782839575636037

namespace A266069

/-- `A266607(n)-Δ[A052551(n)]` -/
def P11012782839575636037.Spec : Prop :=
  ∀ n, P11012782839575636037.a n = A266069 n

end A266069

/-! ## A266069.P11363075881109547594

`A266607(n)-A077957(n+1)`
-/

namespace A266069.P11363075881109547594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266607 n - A077957 (n + 1)

end

end A266069.P11363075881109547594

namespace A266069

/-- `A266607(n)-A077957(n+1)` -/
def P11363075881109547594.Spec : Prop :=
  ∀ n, P11363075881109547594.a n = A266069 n

end A266069

/-! ## A266069.P4492620421547490562

`A266607(n)-Δ[A016116(n+2)]`
-/

namespace A266069.P4492620421547490562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266607 n - (f1 (n + 1) - f1 n)

end

end A266069.P4492620421547490562

namespace A266069

/-- `A266607(n)-Δ[A016116(n+2)]` -/
def P4492620421547490562.Spec : Prop :=
  ∀ n, P4492620421547490562.a n = A266069 n

end A266069

/-! ## A266069.P10841980048066211708

`A266607(n)-Δ[2*A016116(n)]`
-/

namespace A266069.P10841980048066211708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266607 n - (f1 (n + 1) - f1 n)

end

end A266069.P10841980048066211708

namespace A266069

/-- `A266607(n)-Δ[2*A016116(n)]` -/
def P10841980048066211708.Spec : Prop :=
  ∀ n, P10841980048066211708.a n = A266069 n

end A266069

/-! ## A266069.P219074583569738758

`xor(A266607(n)-A131572(n), A131572(n))`
-/

namespace A266069.P219074583569738758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A266607 n - A131572 n) (A131572 n)

end

end A266069.P219074583569738758

namespace A266069

/-- `xor(A266607(n)-A131572(n), A131572(n))` -/
def P219074583569738758.Spec : Prop :=
  ∀ n, P219074583569738758.a n = A266069 n

end A266069

/-!
# A266070: Middle column of the "Rule 3" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266070, the canonical program `A266070.P13689117367193603549` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266070 has offset 0).

The definition of A266070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266070.P13689117367193603549

`a(log2(gcd(2, n)))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266070

/-- `a(log2(gcd(2, n)))` -/
def P13689117367193603549.Spec : Prop :=
  ∀ n, (P13689117367193603549.a n : ℤ) = A266070 n

theorem P13689117367193603549.correct : P13689117367193603549.Spec := by
  intro n
  simp only [A266070]

end A266070

/-!
# A266071: Binary representation of the middle column of the "Rule 3" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266071, the canonical program `A266071.P2209691443513624466` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266071 has offset 0).

The definition of A266071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266071.P2209691443513624466

`floor(991*10^n/990)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266071

/-- `floor(991*10^n/990)` -/
def P2209691443513624466.Spec : Prop :=
  ∀ n, P2209691443513624466.a n = A266071 n

theorem P2209691443513624466.correct : P2209691443513624466.Spec := by
  intro n
  simp only [A266071]

end A266071

/-! ## A266071.P6063528543460850704

`n%2+10*a(n-1)` with `a(0)=1, a(1)=10`
-/

namespace A266071.P6063528543460850704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  n % 2 + 10 * a (n - 1)

end

end A266071.P6063528543460850704

namespace A266071

/-- `n%2+10*a(n-1)` -/
def P6063528543460850704.Spec : Prop :=
  ∀ n, (P6063528543460850704.a n : ℤ) = A266071 n

end A266071

/-! ## A266071.P8252780534924870227

`10*a(n-1)+1-char[2*n]` with `a(0)=1, a(1)=10`
-/

namespace A266071.P8252780534924870227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  10 * a (n - 1) + 1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266071.P8252780534924870227

namespace A266071

/-- `10*a(n-1)+1-char[2*n]` -/
def P8252780534924870227.Spec : Prop :=
  ∀ n, P8252780534924870227.a n = A266071 n

end A266071

/-! ## A266071.P7278033345748056540

`or(10*a(n-1), A000035(n))` with `a(0)=1, a(1)=10`
-/

namespace A266071.P7278033345748056540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  Int.lor (10 * a (n - 1)) (A000035 n)

end

end A266071.P7278033345748056540

namespace A266071

/-- `or(10*a(n-1), A000035(n))` -/
def P7278033345748056540.Spec : Prop :=
  ∀ n, P7278033345748056540.a n = A266071 n

end A266071

/-! ## A266071.P1584798975116302090

`∑[A055996(n)+A015585(n)]`
-/

namespace A266071.P1584798975116302090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055996 n + A015585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266071.P1584798975116302090

namespace A266071

/-- `∑[A055996(n)+A015585(n)]` -/
def P1584798975116302090.Spec : Prop :=
  ∀ n, P1584798975116302090.a n = A266071 n

end A266071

/-!
# A266072: Number of ON (black) cells in the n-th iteration of the "Rule 3" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266072, the canonical program `A266072.P16369795506011611604` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266072 has offset 0).

The definition of A266072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266072.P6464588196169188220

`comp[or(2, n)]^(n%2)`
-/

namespace A266072.P6464588196169188220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ (n % 2)

end

end A266072.P6464588196169188220

namespace A266072

/-- `comp[or(2, n)]^(n%2)` -/
def P6464588196169188220.Spec : Prop :=
  ∀ n, (P6464588196169188220.a n : ℤ) = A266072 n

end A266072

/-! ## A266072.P12821061441546033833

`2*n^and(1, n)-1`
-/

namespace A266072.P12821061441546033833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ Nat.land 1 n : ℤ) - 1

end

end A266072.P12821061441546033833

namespace A266072

/-- `2*n^and(1, n)-1` -/
def P12821061441546033833.Spec : Prop :=
  ∀ n, P12821061441546033833.a n = A266072 n

end A266072

/-! ## A266072.P16369795506011611604

`2*gcd(n, or(1, n))-1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266072

/-- `2*gcd(n, or(1, n))-1` -/
def P16369795506011611604.Spec : Prop :=
  ∀ n, P16369795506011611604.a n = A266072 n

theorem P16369795506011611604.correct : P16369795506011611604.Spec := by
  intro n
  simp only [A266072]

end A266072

/-! ## A266072.P2449838523495077315

`2*C(n, and(1, n))-1`
-/

namespace A266072.P2449838523495077315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose n (Nat.land 1 n) : ℤ) - 1

end

end A266072.P2449838523495077315

namespace A266072

/-- `2*C(n, and(1, n))-1` -/
def P2449838523495077315.Spec : Prop :=
  ∀ n, P2449838523495077315.a n = A266072 n

end A266072

/-! ## A266072.P14356596476018786662

`xor(3, 2*n)^and(1, n)`
-/

namespace A266072.P14356596476018786662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (2 * n) ^ Nat.land 1 n

end

end A266072.P14356596476018786662

namespace A266072

/-- `xor(3, 2*n)^and(1, n)` -/
def P14356596476018786662.Spec : Prop :=
  ∀ n, (P14356596476018786662.a n : ℤ) = A266072 n

end A266072

/-! ## A266072.P11851806019339883132

`lcm(2, C(n, and(1, n)))-1`
-/

namespace A266072.P11851806019339883132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (Nat.choose n (Nat.land 1 n)) : ℤ) - 1

end

end A266072.P11851806019339883132

namespace A266072

/-- `lcm(2, C(n, and(1, n)))-1` -/
def P11851806019339883132.Spec : Prop :=
  ∀ n, P11851806019339883132.a n = A266072 n

end A266072

/-! ## A266072.P2341597206791881335

`(n-1+n)^and(1, n)`
-/

namespace A266072.P2341597206791881335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 + (n : ℤ)) ^ Nat.land 1 n

end

end A266072.P2341597206791881335

namespace A266072

/-- `(n-1+n)^and(1, n)` -/
def P2341597206791881335.Spec : Prop :=
  ∀ n, P2341597206791881335.a n = A266072 n

end A266072

/-! ## A266072.P17014923684702126665

`(1-n)*(-1)^n+n`
-/

namespace A266072.P17014923684702126665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * (-1) ^ n + (n : ℤ)

end

end A266072.P17014923684702126665

namespace A266072

/-- `(1-n)*(-1)^n+n` -/
def P17014923684702126665.Spec : Prop :=
  ∀ n, P17014923684702126665.a n = A266072 n

end A266072

/-! ## A266072.P1708576758614773990

`abs(1-2*n*and(1, n))`
-/

namespace A266072.P1708576758614773990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * (n * Nat.land 1 n) : ℤ)|

end

end A266072.P1708576758614773990

namespace A266072

/-- `abs(1-2*n*and(1, n))` -/
def P1708576758614773990.Spec : Prop :=
  ∀ n, P1708576758614773990.a n = A266072 n

end A266072

/-! ## A266072.P4494455835649949955

`∏{d}[and(1, -n), 2*n-#]`
-/

namespace A266072.P4494455835649949955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, ((2 * n : ℤ) - (d : ℤ))

end

end A266072.P4494455835649949955

namespace A266072

/-- `∏{d}[and(1, -n), 2*n-#]` -/
def P4494455835649949955.Spec : Prop :=
  ∀ n, P4494455835649949955.a n = A266072 n

end A266072

/-! ## A266072.P12436109115399560210

`gcd(1-2*n, (n+1)%2)`
-/

namespace A266072.P12436109115399560210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (2 * n : ℤ)) (((n + 1) % 2 : ℕ) : ℤ)

end

end A266072.P12436109115399560210

namespace A266072

/-- `gcd(1-2*n, (n+1)%2)` -/
def P12436109115399560210.Spec : Prop :=
  ∀ n, (P12436109115399560210.a n : ℤ) = A266072 n

end A266072

/-! ## A266072.P7842974844145499479

`xor(3, 2*n)%(2*(n+1))`
-/

namespace A266072.P7842974844145499479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (2 * n) % (2 * (n + 1))

end

end A266072.P7842974844145499479

namespace A266072

/-- `xor(3, 2*n)%(2*(n+1))` -/
def P7842974844145499479.Spec : Prop :=
  ∀ n, (P7842974844145499479.a n : ℤ) = A266072 n

end A266072

/-! ## A266072.P5761779564934404085

`or(1, (n-1)*2*and(1, n))`
-/

namespace A266072.P5761779564934404085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((n : ℤ) - 1) * (2 * Nat.land 1 n : ℤ))

end

end A266072.P5761779564934404085

namespace A266072

/-- `or(1, (n-1)*2*and(1, n))` -/
def P5761779564934404085.Spec : Prop :=
  ∀ n, P5761779564934404085.a n = A266072 n

end A266072

/-! ## A266072.P6925313253912920026

`xor(1, (n-1)*2*and(1, n))`
-/

namespace A266072.P6925313253912920026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((n : ℤ) - 1) * (2 * Nat.land 1 n : ℤ))

end

end A266072.P6925313253912920026

namespace A266072

/-- `xor(1, (n-1)*2*and(1, n))` -/
def P6925313253912920026.Spec : Prop :=
  ∀ n, P6925313253912920026.a n = A266072 n

end A266072

/-! ## A266072.P16671157462162451598

`ogf((1+x-x^2+3x^3)/(1-2x^2+x^4))`
-/

namespace A266072.P16671157462162451598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, 3] [1, 0, -2, 0, 1] n

end

end A266072.P16671157462162451598

namespace A266072

/-- `ogf((1+x-x^2+3x^3)/(1-2x^2+x^4))` -/
def P16671157462162451598.Spec : Prop :=
  ∀ n, P16671157462162451598.a n = A266072 n

end A266072

/-! ## A266072.P10192938360526485100

`floor((2*n-1)/a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A266072.P10192938360526485100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  ⌊((2 * n : ℤ) - 1 : ℚ) / (a (n - 1) : ℚ)⌋

end

end A266072.P10192938360526485100

namespace A266072

/-- `floor((2*n-1)/a(n-1))` -/
def P10192938360526485100.Spec : Prop :=
  ∀ n, P10192938360526485100.a n = A266072 n

end A266072

/-! ## A266072.P9617030926997058089

`floor(a(n-2)+4/a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A266072.P9617030926997058089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  ⌊(a (n - 2) : ℚ) + 4 / (a (n - 1) : ℚ)⌋

end

end A266072.P9617030926997058089

namespace A266072

/-- `floor(a(n-2)+4/a(n-1))` -/
def P9617030926997058089.Spec : Prop :=
  ∀ n, P9617030926997058089.a n = A266072 n

end A266072

/-! ## A266072.P13820960467351779946

`floor((n-(1-n))/floor(a(n-1)))` with `a(0)=1, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A266072.P13820960467351779946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  ⌊((n : ℤ) - (1 - (n : ℤ)) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A266072.P13820960467351779946

namespace A266072

/-- `floor((n-(1-n))/floor(a(n-1)))` -/
def P13820960467351779946.Spec : Prop :=
  ∀ n, P13820960467351779946.a n = A266072 n

end A266072

/-! ## A266072.P5358693260649577639

`and(2*n+1, 1-and(2, 2*n+1)²)`
-/

namespace A266072.P5358693260649577639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) (1 - (Nat.land 2 (2 * n + 1) ^ 2 : ℤ))

end

end A266072.P5358693260649577639

namespace A266072

/-- `and(2*n+1, 1-and(2, 2*n+1)²)` -/
def P5358693260649577639.Spec : Prop :=
  ∀ n, P5358693260649577639.a n = A266072 n

end A266072

/-! ## A266072.P12484582012993875883

`Δ[A247375(n)]`
-/

namespace A266072.P12484582012993875883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266072.P12484582012993875883

namespace A266072

/-- `Δ[A247375(n)]` -/
def P12484582012993875883.Spec : Prop :=
  ∀ n, P12484582012993875883.a n = A266072 n

end A266072

/-!
# A266073: Number of OFF (white) cells in the n-th iteration of the "Rule 3" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266073, the canonical program `A266073.P3925894849911884854` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266073 has offset 0).

The definition of A266073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266073.P3925894849911884854

`2*gcd(n, n%2)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266073

/-- `2*gcd(n, n%2)` -/
def P3925894849911884854.Spec : Prop :=
  ∀ n, (P3925894849911884854.a n : ℤ) = A266073 n

theorem P3925894849911884854.correct : P3925894849911884854.Spec := by
  intro n
  simp only [A266073]

end A266073

/-! ## A266073.P17569535121902591809

`gcd(2*n, Δ[or(1, n)])`
-/

namespace A266073.P17569535121902591809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A266073.P17569535121902591809

namespace A266073

/-- `gcd(2*n, Δ[or(1, n)])` -/
def P17569535121902591809.Spec : Prop :=
  ∀ n, (P17569535121902591809.a n : ℤ) = A266073 n

end A266073

/-! ## A266073.P15674682582554379928

`and(2*n, Δ[xor(1, n)])`
-/

namespace A266073.P15674682582554379928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A266073.P15674682582554379928

namespace A266073

/-- `and(2*n, Δ[xor(1, n)])` -/
def P15674682582554379928.Spec : Prop :=
  ∀ n, P15674682582554379928.a n = A266073 n

end A266073

/-! ## A266073.P15039645961220988351

`2*n^∑[(-1)^n]`
-/

namespace A266073.P15039645961220988351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A266073.P15039645961220988351

namespace A266073

/-- `2*n^∑[(-1)^n]` -/
def P15039645961220988351.Spec : Prop :=
  ∀ n, P15039645961220988351.a n = (A266073 n : ℚ)

end A266073

/-! ## A266073.P12531882173797070448

`2*n/n^and(1, n)`
-/

namespace A266073.P12531882173797070448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (n ^ Nat.land 1 n : ℚ)

end

end A266073.P12531882173797070448

namespace A266073

/-- `2*n/n^and(1, n)` -/
def P12531882173797070448.Spec : Prop :=
  ∀ n, P12531882173797070448.a n = (A266073 n : ℚ)

end A266073

/-! ## A266073.P7562112701215196465

`2*n/C(n, and(1, n))`
-/

namespace A266073.P7562112701215196465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (Nat.choose n (Nat.land 1 n) : ℚ)

end

end A266073.P7562112701215196465

namespace A266073

/-- `2*n/C(n, and(1, n))` -/
def P7562112701215196465.Spec : Prop :=
  ∀ n, P7562112701215196465.a n = (A266073 n : ℚ)

end A266073

/-! ## A266073.P7485249316485410942

`xor(2, a(n-2))+2` with `a(0)=0, a(1)=2`
-/

namespace A266073.P7485249316485410942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  Nat.xor 2 (a (n - 2)) + 2

end

end A266073.P7485249316485410942

namespace A266073

/-- `xor(2, a(n-2))+2` -/
def P7485249316485410942.Spec : Prop :=
  ∀ n, (P7485249316485410942.a n : ℤ) = A266073 n

end A266073

/-! ## A266073.P883636584576969412

`-xor(-4, a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A266073.P883636584576969412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  -Int.xor (-4) (a (n - 2))

end

end A266073.P883636584576969412

namespace A266073

/-- `-xor(-4, a(n-2))` -/
def P883636584576969412.Spec : Prop :=
  ∀ n, P883636584576969412.a n = A266073 n

end A266073

/-! ## A266073.P11507809943731672084

`2*n/n^(n²%2)`
-/

namespace A266073.P11507809943731672084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (n ^ (n ^ 2 % 2) : ℚ)

end

end A266073.P11507809943731672084

namespace A266073

/-- `2*n/n^(n²%2)` -/
def P11507809943731672084.Spec : Prop :=
  ∀ n, P11507809943731672084.a n = (A266073 n : ℚ)

end A266073

/-! ## A266073.P6682004066509077304

`2*or(1, n)-a(n-1)` with `a(0)=0`
-/

namespace A266073.P6682004066509077304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * Nat.lor 1 n : ℤ) - a (n - 1)

end

end A266073.P6682004066509077304

namespace A266073

/-- `2*or(1, n)-a(n-1)` -/
def P6682004066509077304.Spec : Prop :=
  ∀ n, P6682004066509077304.a n = A266073 n

end A266073

/-! ## A266073.P11129107075924189356

`ogf((2x+4x^2-2x^3)/(1-2x^2+x^4))`
-/

namespace A266073.P11129107075924189356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 4, -2] [1, 0, -2, 0, 1] n

end

end A266073.P11129107075924189356

namespace A266073

/-- `ogf((2x+4x^2-2x^3)/(1-2x^2+x^4))` -/
def P11129107075924189356.Spec : Prop :=
  ∀ n, P11129107075924189356.a n = A266073 n

end A266073

/-! ## A266073.P1245945042861112461

`and((2*and(1, n))²-1, 2*n)`
-/

namespace A266073.P1245945042861112461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((2 * Nat.land 1 n) ^ 2 : ℤ) - 1) (2 * n : ℤ)

end

end A266073.P1245945042861112461

namespace A266073

/-- `and((2*and(1, n))²-1, 2*n)` -/
def P1245945042861112461.Spec : Prop :=
  ∀ n, P1245945042861112461.a n = A266073 n

end A266073

/-! ## A266073.P18293374330876027927

`floor(4*n/a(n-1))` with `a(0)=0, a(1)=2, a(2)=4, a(3)=2`
-/

namespace A266073.P18293374330876027927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4, 2] fun n a =>
  ⌊4 * ((n : ℚ) / (a (n - 1) : ℚ))⌋

end

end A266073.P18293374330876027927

namespace A266073

/-- `floor(4*n/a(n-1))` -/
def P18293374330876027927.Spec : Prop :=
  ∀ n, P18293374330876027927.a n = A266073 n

end A266073

/-! ## A266073.P13543389654976045572

`(n-1)*a(n-1)%4+2` with `a(0)=0`
-/

namespace A266073.P13543389654976045572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n : ℤ) - 1) * Int.tmod (a (n - 1)) 4 + 2

end

end A266073.P13543389654976045572

namespace A266073

/-- `(n-1)*a(n-1)%4+2` -/
def P13543389654976045572.Spec : Prop :=
  ∀ n, P13543389654976045572.a n = A266073 n

end A266073

/-! ## A266073.P4353768105345174075

`a(n-2)-4*(1-n)%2` with `a(0)=0, a(1)=2`
-/

namespace A266073.P4353768105345174075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) - 4 * Int.tmod (1 - (n : ℤ)) 2

end

end A266073.P4353768105345174075

namespace A266073

/-- `a(n-2)-4*(1-n)%2` -/
def P4353768105345174075.Spec : Prop :=
  ∀ n, P4353768105345174075.a n = A266073 n

end A266073

/-! ## A266073.P7150219999219482430

`n/(floor(a(n-1)/4)+1/2)` with `a(0)=0`
-/

namespace A266073.P7150219999219482430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) / ((⌊a (n - 1) / 4⌋ : ℚ) + (1 : ℚ) / 2)

end

end A266073.P7150219999219482430

namespace A266073

/-- `n/(floor(a(n-1)/4)+1/2)` -/
def P7150219999219482430.Spec : Prop :=
  ∀ n, P7150219999219482430.a n = (A266073 n : ℚ)

end A266073

/-! ## A266073.P17554007952808460562

`a(n-2)+and(2, a(n-1))²` with `a(0)=0, a(1)=2`
-/

namespace A266073.P17554007952808460562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + Nat.land 2 (a (n - 1)) ^ 2

end

end A266073.P17554007952808460562

namespace A266073

/-- `a(n-2)+and(2, a(n-1))²` -/
def P17554007952808460562.Spec : Prop :=
  ∀ n, (P17554007952808460562.a n : ℤ) = A266073 n

end A266073

/-! ## A266073.P14496903078500526631

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=2`
-/

namespace A266073.P14496903078500526631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4, 2] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A266073.P14496903078500526631

namespace A266073

/-- `2*a(n-2)-a(n-4)` -/
def P14496903078500526631.Spec : Prop :=
  ∀ n, P14496903078500526631.a n = A266073 n

end A266073

/-! ## A266073.P13668476362909949706

`gcd(2-a(n-1), n/(1-1/2))` with `a(0)=0`
-/

namespace A266073.P13668476362909949706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.gcd (2 - (a (n - 1) : ℤ)) (SequenceMachineLib.roundAway ((n : ℚ) / (1 - (1 : ℚ) / 2)))

end

end A266073.P13668476362909949706

namespace A266073

/-- `gcd(2-a(n-1), n/(1-1/2))` -/
def P13668476362909949706.Spec : Prop :=
  ∀ n, (P13668476362909949706.a n : ℤ) = A266073 n

end A266073

/-! ## A266073.P10651527865034993881

`(a(n-2)+4)/3%a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A266073.P10651527865034993881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  (a (n - 2) + 4) / (Int.tmod 3 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)

end

end A266073.P10651527865034993881

namespace A266073

/-- `(a(n-2)+4)/3%a(n-1)` -/
def P10651527865034993881.Spec : Prop :=
  ∀ n, P10651527865034993881.a n = (A266073 n : ℚ)

end A266073

/-!
# A266074: Total number of OFF (white) cells after n iterations of the "Rule 3" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266074, the canonical program `A266074.P13498364541412967355` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266074 has offset 0).

The definition of A266074 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266074.P13498364541412967355

`2*A135276(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A266074

/-- `2*A135276(n)` -/
def P13498364541412967355.Spec : Prop :=
  ∀ n, P13498364541412967355.a n = A266074 n

theorem P13498364541412967355.correct : P13498364541412967355.Spec := by
  intro n
  simp only [A266074]

end A266074

/-! ## A266074.P4801410317426225772

`∑[2*gcd(n, n%2)]`
-/

namespace A266074.P4801410317426225772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd n (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266074.P4801410317426225772

namespace A266074

/-- `∑[2*gcd(n, n%2)]` -/
def P4801410317426225772.Spec : Prop :=
  ∀ n, (P4801410317426225772.a n : ℤ) = A266074 n

end A266074

/-! ## A266074.P14448871710650872400

`2*(floor(n/2)²+n)`
-/

namespace A266074.P14448871710650872400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (⌊(n : ℚ) / 2⌋ ^ 2 + (n : ℤ))

end

end A266074.P14448871710650872400

namespace A266074

/-- `2*(floor(n/2)²+n)` -/
def P14448871710650872400.Spec : Prop :=
  ∀ n, P14448871710650872400.a n = A266074 n

end A266074

/-! ## A266074.P1914366298497408167

`∑[gcd(2*n, Δ[or(1, n)])]`
-/

namespace A266074.P1914366298497408167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266074.P1914366298497408167

namespace A266074

/-- `∑[gcd(2*n, Δ[or(1, n)])]` -/
def P1914366298497408167.Spec : Prop :=
  ∀ n, (P1914366298497408167.a n : ℤ) = A266074 n

end A266074

/-! ## A266074.P4269962607583541525

`∑[and(2*n, Δ[xor(1, n)])]`
-/

namespace A266074.P4269962607583541525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266074.P4269962607583541525

namespace A266074

/-- `∑[and(2*n, Δ[xor(1, n)])]` -/
def P4269962607583541525.Spec : Prop :=
  ∀ n, P4269962607583541525.a n = A266074 n

end A266074

/-! ## A266074.P18374801787779709554

`∑[2*n^((n+1)%2)]`
-/

namespace A266074.P18374801787779709554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ ((n + 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266074.P18374801787779709554

namespace A266074

/-- `∑[2*n^((n+1)%2)]` -/
def P18374801787779709554.Spec : Prop :=
  ∀ n, (P18374801787779709554.a n : ℤ) = A266074 n

end A266074

/-! ## A266074.P2578147846715673102

`∑[2*n^and(1, n+1)]`
-/

namespace A266074.P2578147846715673102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ Nat.land 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266074.P2578147846715673102

namespace A266074

/-- `∑[2*n^and(1, n+1)]` -/
def P2578147846715673102.Spec : Prop :=
  ∀ n, (P2578147846715673102.a n : ℤ) = A266074 n

end A266074

/-! ## A266074.P3938841854465843685

`∑[2*C(n, and(1, n+1))]`
-/

namespace A266074.P3938841854465843685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n (Nat.land 1 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266074.P3938841854465843685

namespace A266074

/-- `∑[2*C(n, and(1, n+1))]` -/
def P3938841854465843685.Spec : Prop :=
  ∀ n, (P3938841854465843685.a n : ℤ) = A266074 n

end A266074

/-! ## A266074.P5657019922436788117

`∑[2*n/n^and(1, n)]`
-/

namespace A266074.P5657019922436788117
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (n ^ Nat.land 1 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266074.P5657019922436788117

namespace A266074

/-- `∑[2*n/n^and(1, n)]` -/
def P5657019922436788117.Spec : Prop :=
  ∀ n, P5657019922436788117.a n = (A266074 n : ℚ)

end A266074

/-! ## A266074.P8885493288657550043

`∑[2*n/C(n, and(1, n))]`
-/

namespace A266074.P8885493288657550043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (Nat.choose n (Nat.land 1 n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266074.P8885493288657550043

namespace A266074

/-- `∑[2*n/C(n, and(1, n))]` -/
def P8885493288657550043.Spec : Prop :=
  ∀ n, P8885493288657550043.a n = (A266074 n : ℚ)

end A266074

/-! ## A266074.P17715952320485494641

`∑[xor(2, a(n-2))+2]` with `a(0)=0, a(1)=2`
-/

namespace A266074.P17715952320485494641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  Nat.xor 2 (f1 (n - 2)) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266074.P17715952320485494641

namespace A266074

/-- `∑[xor(2, a(n-2))+2]` -/
def P17715952320485494641.Spec : Prop :=
  ∀ n, (P17715952320485494641.a n : ℤ) = A266074 n

end A266074

/-! ## A266074.P17518664444147528985

`∑[2*C(n, and(1, n-1)²)]`
-/

namespace A266074.P17518664444147528985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n (Int.land 1 ((n : ℤ) - 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266074.P17518664444147528985

namespace A266074

/-- `∑[2*C(n, and(1, n-1)²)]` -/
def P17518664444147528985.Spec : Prop :=
  ∀ n, (P17518664444147528985.a n : ℤ) = A266074 n

end A266074

/-! ## A266074.P14884700669444600695

`a(or(1, n-2))+2*n` with `a(0)=0, a(1)=2`
-/

namespace A266074.P14884700669444600695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (Int.lor 1 ((n : ℤ) - 2)).toNat + 2 * n

end

end A266074.P14884700669444600695

namespace A266074

/-- `a(or(1, n-2))+2*n` -/
def P14884700669444600695.Spec : Prop :=
  ∀ n, (P14884700669444600695.a n : ℤ) = A266074 n

end A266074

/-! ## A266074.P8295996018036208787

`∑[2*xor(1, n+1)%(n+1)]`
-/

namespace A266074.P8295996018036208787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.xor 1 (n + 1) % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266074.P8295996018036208787

namespace A266074

/-- `∑[2*xor(1, n+1)%(n+1)]` -/
def P8295996018036208787.Spec : Prop :=
  ∀ n, (P8295996018036208787.a n : ℤ) = A266074 n

end A266074

/-! ## A266074.P10647760144728490784

`∑[and(4*and(1, n)-1, 2*n)]`
-/

namespace A266074.P10647760144728490784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((4 * Nat.land 1 n : ℤ) - 1) (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266074.P10647760144728490784

namespace A266074

/-- `∑[and(4*and(1, n)-1, 2*n)]` -/
def P10647760144728490784.Spec : Prop :=
  ∀ n, P10647760144728490784.a n = A266074 n

end A266074

/-! ## A266074.P6829447813608871532

`∪[2*n², (n+2)*2*n]`
-/

namespace A266074.P6829447813608871532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A266074.P6829447813608871532

namespace A266074

/-- `∪[2*n², (n+2)*2*n]` -/
def P6829447813608871532.Spec : Prop :=
  ∀ n, (P6829447813608871532.a n : ℤ) = A266074 n

end A266074

/-! ## A266074.P4325779207734239312

`∑[ogf((2x+4x^2-2x^3)/(1-2x^2+x^4))]`
-/

namespace A266074.P4325779207734239312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 4, -2] [1, 0, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266074.P4325779207734239312

namespace A266074

/-- `∑[ogf((2x+4x^2-2x^3)/(1-2x^2+x^4))]` -/
def P4325779207734239312.Spec : Prop :=
  ∀ n, P4325779207734239312.a n = A266074 n

end A266074

/-! ## A266074.P9156234169680927863

`∑[(2*n)%a(n-2)²]` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A266074.P9156234169680927863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4] fun n f1 =>
  2 * n % f1 (n - 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266074.P9156234169680927863

namespace A266074

/-- `∑[(2*n)%a(n-2)²]` -/
def P9156234169680927863.Spec : Prop :=
  ∀ n, (P9156234169680927863.a n : ℤ) = A266074 n

end A266074

/-! ## A266074.P9579448796292225662

`2*∑[floor(n/a(n-1))]-2` with `a(0)=1`
-/

namespace A266074.P9579448796292225662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(n : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - 2

end

end A266074.P9579448796292225662

namespace A266074

/-- `2*∑[floor(n/a(n-1))]-2` -/
def P9579448796292225662.Spec : Prop :=
  ∀ n, P9579448796292225662.a n = A266074 n

end A266074

/-! ## A266074.P3710845460874689111

`∑[2*n^∑[floor(a(n-2))]]` with `a(0)=1, a(1)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A266074.P3710845460874689111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266074.P3710845460874689111

namespace A266074

/-- `∑[2*n^∑[floor(a(n-2))]]` -/
def P3710845460874689111.Spec : Prop :=
  ∀ n, P3710845460874689111.a n = (A266074 n : ℚ)

end A266074

/-!
# A266075: Number of n X n integer arrays with each element equal to the number of horizontal and vertical neighbors differing from itself by exactly one.

The programs for A266075, there is no canonical definition to state claims against.
-/

/-! ## A266075.P17236508807441059463

`A266081(∑[4*n]+1)`
-/

namespace A266075.P17236508807441059463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266081 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266075.P17236508807441059463

/-! ## A266075.P15916373787419580727

`A266081(A001844(n))+char[13]`
-/

namespace A266075.P15916373787419580727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266081 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266075.P15916373787419580727

/-! ## A266075.P15221359330607040340

`A220122(n)*A266081(A001844(n))`
-/

namespace A266075.P15221359330607040340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 n * A266081 (A001844 n).toNat

end

end A266075.P15221359330607040340

/-! ## A266075.P15883130495231016061

`A266081(A001844(n))^A304042(n)`
-/

namespace A266075.P15883130495231016061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266081 (A001844 n).toNat : ℚ) ^ (A304042 n : ℤ)

end

end A266075.P15883130495231016061

/-! ## A266075.P13470076244425534750

`or(A000007(n), A266081(A001844(n)))`
-/

namespace A266075.P13470076244425534750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A266081 (A001844 n).toNat)

end

end A266075.P13470076244425534750

/-!
# A266076: Number of n X 3 integer arrays with each element equal to the number of horizontal and vertical neighbors differing from itself by exactly one.

The programs for A266076, the canonical program `A266076.P9651517374421518601` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266076 has offset 1).

The definition of A266076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 603 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266076.P9651517374421518601

`a(n-1)+a(n-3)+a(n-6)-a(n-7)-a(n-9)` with `a(0)=2, a(1)=4, a(2)=4, a(3)=6, a(4)=5, a(5)=12, a(6)=10, a(7)=16, a(8)=21`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266076

/-- `a(n-1)+a(n-3)+a(n-6)-a(n-7)-a(n-9)` -/
def P9651517374421518601.Spec : Prop :=
  ∀ n, P9651517374421518601.a n = A266076 (n + 1)

theorem P9651517374421518601.correct : P9651517374421518601.Spec := by
  intro n
  simp only [A266076, Nat.add_sub_cancel]

end A266076

/-! ## A266076.P14047793410715436988

`A266081(∑[n+2]+4)`
-/

namespace A266076.P14047793410715436988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266081 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A266076.P14047793410715436988

namespace A266076

/-- `A266081(∑[n+2]+4)` -/
def P14047793410715436988.Spec : Prop :=
  ∀ n, P14047793410715436988.a n = A266076 (n + 1)

end A266076

/-! ## A266076.P1412539368699677676

`or(char[4], A266081(A167614(n+1)))`
-/

namespace A266076.P1412539368699677676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A266081 (A167614 (n + 1)).toNat)

end

end A266076.P1412539368699677676

namespace A266076

/-- `or(char[4], A266081(A167614(n+1)))` -/
def P1412539368699677676.Spec : Prop :=
  ∀ n, P1412539368699677676.a n = A266076 (n + 1)

end A266076

/-! ## A266076.P16310690128617698109

`A266081(A055998(n)+6)+char[26]`
-/

namespace A266076.P16310690128617698109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266081 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266076.P16310690128617698109

namespace A266076

/-- `A266081(A055998(n)+6)+char[26]` -/
def P16310690128617698109.Spec : Prop :=
  ∀ n, P16310690128617698109.a n = A266076 (n + 1)

end A266076

/-! ## A266076.P1711546652911834190

`A266081(A152950(n+3))+char[40]`
-/

namespace A266076.P1711546652911834190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266081 (A152950 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A266076.P1711546652911834190

namespace A266076

/-- `A266081(A152950(n+3))+char[40]` -/
def P1711546652911834190.Spec : Prop :=
  ∀ n, P1711546652911834190.a n = A266076 (n + 1)

end A266076

/-!
# A266077: Number of nX4 integer arrays with each element equal to the number of horizontal and vertical neighbors differing from itself by exactly one.

The programs for A266077, there is no canonical definition to state claims against.
-/

/-! ## A266077.P17293269144443447892

`A266081(A374004(n+1))`
-/

namespace A266077.P17293269144443447892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266081 (A374004 (n + 1)).toNat

end

end A266077.P17293269144443447892

/-! ## A266077.P12918171018759986073

`A266081(A141214(n)+7)`
-/

namespace A266077.P12918171018759986073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266081 (A141214 n + 7).toNat

end

end A266077.P12918171018759986073

/-! ## A266077.P14323506870998329106

`A266081(A052905(n)+9)`
-/

namespace A266077.P14323506870998329106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266081 (A052905 n + 9).toNat

end

end A266077.P14323506870998329106

/-! ## A266077.P12056531542580918878

`A266081(A055999(n)+10)`
-/

namespace A266077.P12056531542580918878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266081 (A055999 n + 10).toNat

end

end A266077.P12056531542580918878

/-! ## A266077.P97801447188801711

`A266081(Δ[A005586(n)]+5)`
-/

namespace A266077.P97801447188801711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266081 (f1 (n + 1) - f1 n + 5).toNat

end

end A266077.P97801447188801711

/-!
# A266078: Number of nX5 integer arrays with each element equal to the number of horizontal and vertical neighbors differing from itself by exactly one.

The programs for A266078, there is no canonical definition to state claims against.
-/

/-! ## A266078.P15234932351590973295

`A266081(A374005(n+1))`
-/

namespace A266078.P15234932351590973295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266081 (A374005 (n + 1)).toNat

end

end A266078.P15234932351590973295

/-! ## A266078.P14612379279501690611

`A266081(A167499(n+3))`
-/

namespace A266078.P14612379279501690611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266081 (A167499 (n + 3)).toNat

end

end A266078.P14612379279501690611

/-! ## A266078.P15086380155984188114

`A266081(A155212(n)+13)`
-/

namespace A266078.P15086380155984188114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266081 (A155212 n + 13).toNat

end

end A266078.P15086380155984188114

/-! ## A266078.P2738324814304535002

`A266081(A056000(n)+15)`
-/

namespace A266078.P2738324814304535002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266081 (A056000 n + 15).toNat

end

end A266078.P2738324814304535002

/-! ## A266078.P9211163625140760199

`A266081(∑[A020705(n)]+11)`
-/

namespace A266078.P9211163625140760199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266081 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A266078.P9211163625140760199

/-!
# A266079: Number of nX6 integer arrays with each element equal to the number of horizontal and vertical neighbors differing from itself by exactly one.

The programs for A266079, there is no canonical definition to state claims against.
-/

/-! ## A266079.P1343763843238260828

`A266081(A374007(n+1))`
-/

namespace A266079.P1343763843238260828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266081 (A374007 (n + 1)).toNat

end

end A266079.P1343763843238260828

/-! ## A266079.P10608342606557505208

`A266081(A166136(n+4))`
-/

namespace A266079.P10608342606557505208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266081 (A166136 (n + 4)).toNat

end

end A266079.P10608342606557505208

/-! ## A266079.P8367144354362096487

`A266081(A056115(n)+21)`
-/

namespace A266079.P8367144354362096487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266081 (A056115 n + 21).toNat

end

end A266079.P8367144354362096487

/-! ## A266079.P18216855981283359211

`record[A266081(A000124(n)+5)]`
-/

namespace A266079.P18216855981283359211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266081 (A000124 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266079.P18216855981283359211

/-! ## A266079.P13967781774698345828

`record[A266081(A000217(n)+6)]`
-/

namespace A266079.P13967781774698345828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266081 (A000217 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266079.P13967781774698345828

/-!
# A266080: Number of nX7 integer arrays with each element equal to the number of horizontal and vertical neighbors differing from itself by exactly one.

The programs for A266080, there is no canonical definition to state claims against.
-/

/-! ## A266080.P16670544865188699497

`A266081(A374008(n+1))`
-/

namespace A266080.P16670544865188699497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266081 (A374008 (n + 1)).toNat

end

end A266080.P16670544865188699497

/-! ## A266080.P9962549686242565809

`A266081(A167487(n+5))`
-/

namespace A266080.P9962549686242565809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266081 (A167487 (n + 5)).toNat

end

end A266080.P9962549686242565809

/-! ## A266080.P4605742079113721359

`A266081(A056119(n)+28)`
-/

namespace A266080.P4605742079113721359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266081 (A056119 n + 28).toNat

end

end A266080.P4605742079113721359

/-! ## A266080.P6818740882529828669

`A266081(A167614(n+5)+4)`
-/

namespace A266080.P6818740882529828669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266081 (A167614 (n + 5) + 4).toNat

end

end A266080.P6818740882529828669

/-! ## A266080.P4868040152945734592

`A266081(A000124(n+6)+6)`
-/

namespace A266080.P4868040152945734592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266081 (A000124 (n + 6) + 6).toNat

end

end A266080.P4868040152945734592

/-!
# A266081: T(n,k)=Number of nXk integer arrays with each element equal to the number of horizontal and vertical neighbors differing from itself by exactly one.

The programs for A266081, there is no canonical definition to state claims against.
-/

/-! ## A266081.P14762613575021021729

`A126131(A196544(n+1)%A339645(3*n+4))`
-/

namespace A266081.P14762613575021021729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126131 (Int.tmod (A196544 (n + 1)) (A339645 (3 * n + 4))).toNat

end

end A266081.P14762613575021021729

/-! ## A266081.P5845060735898733820

`A040586(A222853(n+1))`
-/

namespace A266081.P5845060735898733820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040586 (A222853 (n + 1)).toNat

end

end A266081.P5845060735898733820

/-! ## A266081.P11940464753429199041

`A126131(A196544(n+1))`
-/

namespace A266081.P11940464753429199041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126131 (A196544 (n + 1)).toNat

end

end A266081.P11940464753429199041

/-! ## A266081.P12147445373652420685

`A211999(A296588(n+1))`
-/

namespace A266081.P12147445373652420685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211999 (A296588 (n + 1)).toNat

end

end A266081.P12147445373652420685

/-!
# A266082: Length of shortest Fibonacci addition chain for n.

The programs for A266082, there is no canonical definition to state claims against.
-/

/-! ## A266082.P17074067444562144256

`A000195(A067323(n)+A046815(n+1))`
-/

namespace A266082.P17074067444562144256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A067323 n + A046815 (n + 1)).toNat

end

end A266082.P17074067444562144256

/-! ## A266082.P3135030520894575140

`A077429(A272556(n)+A248851(n))`
-/

namespace A266082.P3135030520894575140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077429 (A272556 n + A248851 n).toNat

end

end A266082.P3135030520894575140

/-! ## A266082.P2030664925626004744

`A105195(n+1)-A122180(A329002(n))`
-/

namespace A266082.P2030664925626004744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105195 (n + 1) - A122180 (A329002 n).toNat

end

end A266082.P2030664925626004744

/-! ## A266082.P3046822421823337180

`A095792(n)+A001222(A228099(n))`
-/

namespace A266082.P3046822421823337180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095792 n + A001222 (A228099 n).toNat

end

end A266082.P3046822421823337180

/-! ## A266082.P4379371418798071491

`A023967(A002145(n+1)-A294847(n))`
-/

namespace A266082.P4379371418798071491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023967 (A002145 (n + 1) - A294847 n).toNat

end

end A266082.P4379371418798071491

/-!
# A266083: a(n) = Sum_{k = 0..n - 1} (a(n - 1) + k) for n>0, a(0) = 1.

The programs for A266083, the canonical program `A266083.P4065445321454144771` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266083 has offset 0).

The definition of A266083 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266083.P4065445321454144771

`n*a(n-1)+C(n, 2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266083

/-- `n*a(n-1)+C(n, 2)` -/
def P4065445321454144771.Spec : Prop :=
  ∀ n, (P4065445321454144771.a n : ℤ) = A266083 n

theorem P4065445321454144771.correct : P4065445321454144771.Spec := by
  intro n
  simp only [A266083]

end A266083

/-! ## A266083.P13917927391360516867

`∑[n]+n*(a(n-1)-1)` with `a(0)=1`
-/

namespace A266083.P13917927391360516867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ) * (a (n - 1) - 1)

end

end A266083.P13917927391360516867

namespace A266083

/-- `∑[n]+n*(a(n-1)-1)` -/
def P13917927391360516867.Spec : Prop :=
  ∀ n, P13917927391360516867.a n = A266083 n

end A266083

/-! ## A266083.P17121526464737788828

`∑[n]-n*(1-a(n-1))` with `a(0)=1`
-/

namespace A266083.P17121526464737788828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) * (1 - a (n - 1))

end

end A266083.P17121526464737788828

namespace A266083

/-- `∑[n]-n*(1-a(n-1))` -/
def P17121526464737788828.Spec : Prop :=
  ∀ n, P17121526464737788828.a n = A266083 n

end A266083

/-! ## A266083.P7630221390457553923

`n*(a(n-1)+(n-1)/2)` with `a(0)=1`
-/

namespace A266083.P7630221390457553923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (a (n - 1) + ((n : ℤ) - 1 : ℚ) / 2)

end

end A266083.P7630221390457553923

namespace A266083

/-- `n*(a(n-1)+(n-1)/2)` -/
def P7630221390457553923.Spec : Prop :=
  ∀ n, P7630221390457553923.a n = (A266083 n : ℚ)

end A266083

/-! ## A266083.P273500104319836553

`floor(n*(a(n-1)-(1-n)/2))` with `a(0)=1`
-/

namespace A266083.P273500104319836553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℚ) * ((a (n - 1) : ℚ) - (1 - (n : ℤ) : ℚ) / 2)⌋

end

end A266083.P273500104319836553

namespace A266083

/-- `floor(n*(a(n-1)-(1-n)/2))` -/
def P273500104319836553.Spec : Prop :=
  ∀ n, P273500104319836553.a n = A266083 n

end A266083

/-! ## A266083.P8783436817010134348

`(2*a(n-1)-(1-n))*n/2` with `a(0)=1`
-/

namespace A266083.P8783436817010134348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 * a (n - 1) - (1 - (n : ℤ) : ℚ)) * ((n : ℚ) / 2)

end

end A266083.P8783436817010134348

namespace A266083

/-- `(2*a(n-1)-(1-n))*n/2` -/
def P8783436817010134348.Spec : Prop :=
  ∀ n, P8783436817010134348.a n = (A266083 n : ℚ)

end A266083

/-! ## A266083.P14460451358084648092

`(n-1+a(n-1)+a(n-2))*(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A266083.P14460451358084648092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((n : ℤ) - 1 + (a (n - 1) + a (n - 2))) * ((n : ℤ) - 1)

end

end A266083.P14460451358084648092

namespace A266083

/-- `(n-1+a(n-1)+a(n-2))*(n-1)` -/
def P14460451358084648092.Spec : Prop :=
  ∀ n, P14460451358084648092.a n = A266083 n

end A266083

/-! ## A266083.P16842028293067803255

`A038155(n)+n!`
-/

namespace A266083.P16842028293067803255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038155 n + (Nat.factorial n : ℤ)

end

end A266083.P16842028293067803255

namespace A266083

/-- `A038155(n)+n!` -/
def P16842028293067803255.Spec : Prop :=
  ∀ n, P16842028293067803255.a n = A266083 n

end A266083

/-! ## A266083.P8736135200295864306

`(A019465(2*n)-n)/2`
-/

namespace A266083.P8736135200295864306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019465 (2 * n) - (n : ℤ) : ℚ) / 2

end

end A266083.P8736135200295864306

namespace A266083

/-- `(A019465(2*n)-n)/2` -/
def P8736135200295864306.Spec : Prop :=
  ∀ n, P8736135200295864306.a n = (A266083 n : ℚ)

end A266083

/-!
# A266084: Expansion of (5 - x - x^2 - x^3 - x^4 + 4*x^5)/( x^6 - x^5 - x + 1).

The programs for A266084, the canonical program `A266084.P11990452410958323871` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266084 has offset 0).

The definition of A266084 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((5-x-x^2-x^3-x^4+4x^5)/(1-x-x^5+x^6))` (program `A266084.P11990452410958323871`, by `A266084.P11990452410958323871.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A266084.P5003406606837295002

`5+5*floor(n/5)-n%5`
-/

namespace A266084.P5003406606837295002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 + 5 * ⌊(n : ℚ) / 5⌋ - ((n % 5 : ℕ) : ℤ)

end

end A266084.P5003406606837295002

namespace A266084

/-- `5+5*floor(n/5)-n%5` -/
def P5003406606837295002.Spec : Prop :=
  ∀ n, P5003406606837295002.a n = A266084 n

end A266084

/-! ## A266084.P11990452410958323871

`ogf((5-x-x^2-x^3-x^4+4x^5)/(1-x-x^5+x^6))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266084

/-- `ogf((5-x-x^2-x^3-x^4+4x^5)/(1-x-x^5+x^6))` -/
def P11990452410958323871.Spec : Prop :=
  ∀ n, P11990452410958323871.a n = A266084 n

theorem P11990452410958323871.correct : P11990452410958323871.Spec := by
  intro n
  simp only [A266084]

end A266084

/-! ## A266084.P7663220104866632691

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=5, a(1)=4, a(2)=3, a(3)=2, a(4)=1, a(5)=10`
-/

namespace A266084.P7663220104866632691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 4, 3, 2, 1, 10] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A266084.P7663220104866632691

namespace A266084

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P7663220104866632691.Spec : Prop :=
  ∀ n, P7663220104866632691.a n = A266084 n

end A266084

/-! ## A266084.P14719066397970301726

`n+1+2*A257145(n+3)`
-/

namespace A266084.P14719066397970301726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + 2 * A257145 (n + 3)

end

end A266084.P14719066397970301726

namespace A266084

/-- `n+1+2*A257145(n+3)` -/
def P14719066397970301726.Spec : Prop :=
  ∀ n, P14719066397970301726.a n = A266084 n

end A266084

/-! ## A266084.P197580630016159860

`5-2*n%5+n`
-/

namespace A266084.P197580630016159860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - ((2 * (n % 5) : ℕ) : ℤ) + (n : ℤ)

end

end A266084.P197580630016159860

namespace A266084

/-- `5-2*n%5+n` -/
def P197580630016159860.Spec : Prop :=
  ∀ n, P197580630016159860.a n = A266084 n

end A266084

/-! ## A266084.P2933387626062756242

`5-((2*n)%10-n)`
-/

namespace A266084.P2933387626062756242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (((2 * n % 10 : ℕ) : ℤ) - (n : ℤ))

end

end A266084.P2933387626062756242

namespace A266084

/-- `5-((2*n)%10-n)` -/
def P2933387626062756242.Spec : Prop :=
  ∀ n, P2933387626062756242.a n = A266084 n

end A266084

/-! ## A266084.P17686178207635352406

`5-(n+n)%10+n`
-/

namespace A266084.P17686178207635352406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (((n + n) % 10 : ℕ) : ℤ) + (n : ℤ)

end

end A266084.P17686178207635352406

namespace A266084

/-- `5-(n+n)%10+n` -/
def P17686178207635352406.Spec : Prop :=
  ∀ n, P17686178207635352406.a n = A266084 n

end A266084

/-! ## A266084.P23299047009353054

`-(2*n)%10+5+n`
-/

namespace A266084.P23299047009353054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(2 * n : ℤ)) 10 + 5 + (n : ℤ)

end

end A266084.P23299047009353054

namespace A266084

/-- `-(2*n)%10+5+n` -/
def P23299047009353054.Spec : Prop :=
  ∀ n, P23299047009353054.a n = A266084 n

end A266084

/-! ## A266084.P16620698715788136250

`a(n-5)+5` with `a(0)=5, a(1)=4, a(2)=3, a(3)=2, a(4)=1`
-/

namespace A266084.P16620698715788136250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 4, 3, 2, 1] fun n a =>
  a (n - 5) + 5

end

end A266084.P16620698715788136250

namespace A266084

/-- `a(n-5)+5` -/
def P16620698715788136250.Spec : Prop :=
  ∀ n, (P16620698715788136250.a n : ℤ) = A266084 n

end A266084

/-! ## A266084.P13161979290517542609

`5*(2*floor(n/5)+1)-n`
-/

namespace A266084.P13161979290517542609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (2 * ⌊(n : ℚ) / 5⌋ + 1) - (n : ℤ)

end

end A266084.P13161979290517542609

namespace A266084

/-- `5*(2*floor(n/5)+1)-n` -/
def P13161979290517542609.Spec : Prop :=
  ∀ n, P13161979290517542609.a n = A266084 n

end A266084

/-! ## A266084.P8145088512083293875

`A065186(A065186(A277618(A065187(n+1))))`
-/

namespace A266084.P8145088512083293875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065186 (A065186 (A277618 (A065187 (n + 1)).toNat).toNat).toNat

end

end A266084.P8145088512083293875

namespace A266084

/-- `A065186(A065186(A277618(A065187(n+1))))` -/
def P8145088512083293875.Spec : Prop :=
  ∀ n, P8145088512083293875.a n = A266084 n

end A266084

/-! ## A266084.P14826921289812625054

`A023446(A096230(n+1)+n)`
-/

namespace A266084.P14826921289812625054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A096230 (n + 1) + (n : ℤ)).toNat

end

end A266084.P14826921289812625054

namespace A266084

/-- `A023446(A096230(n+1)+n)` -/
def P14826921289812625054.Spec : Prop :=
  ∀ n, P14826921289812625054.a n = A266084 n

end A266084

/-! ## A266084.P6604618014100286981

`A277618(A065187(A277618(A277618(n+1))))`
-/

namespace A266084.P6604618014100286981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277618 (A065187 (A277618 (A277618 (n + 1)).toNat).toNat).toNat

end

end A266084.P6604618014100286981

namespace A266084

/-- `A277618(A065187(A277618(A277618(n+1))))` -/
def P6604618014100286981.Spec : Prop :=
  ∀ n, P6604618014100286981.a n = A266084 n

end A266084

/-! ## A266084.P7826462202668167049

`A065258(A277618(A277618(A065257(n+1))))`
-/

namespace A266084.P7826462202668167049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065258 (A277618 (A277618 (A065257 (n + 1)).toNat).toNat).toNat

end

end A266084.P7826462202668167049

namespace A266084

/-- `A065258(A277618(A277618(A065257(n+1))))` -/
def P7826462202668167049.Spec : Prop :=
  ∀ n, P7826462202668167049.a n = A266084 n

end A266084

/-! ## A266084.P1526893747254270765

`Δ[∑[n]-A145924(2*n)]`
-/

namespace A266084.P1526893747254270765
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A145924 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266084.P1526893747254270765

namespace A266084

/-- `Δ[∑[n]-A145924(2*n)]` -/
def P1526893747254270765.Spec : Prop :=
  ∀ n, P1526893747254270765.a n = A266084 n

end A266084

/-!
# A266085: Alternating sum of heptagonal numbers.

The programs for A266085, the canonical program `A266085.P8934070150528959644` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266085 has offset 0).

The definition of A266085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266085.P8934070150528959644

`((10*n²+4*n-3)*(-1)^n+3)/8`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266085

/-- `((10*n²+4*n-3)*(-1)^n+3)/8` -/
def P8934070150528959644.Spec : Prop :=
  ∀ n, P8934070150528959644.a n = (A266085 n : ℚ)

end A266085

/-! ## A266085.P17311948633606759950

`∑[ogf((-x+4x^2)/(1+3x+3x^2+x^3))]`
-/

namespace A266085.P17311948633606759950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 4] [1, 3, 3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266085.P17311948633606759950

namespace A266085

/-- `∑[ogf((-x+4x^2)/(1+3x+3x^2+x^3))]` -/
def P17311948633606759950.Spec : Prop :=
  ∀ n, P17311948633606759950.a n = A266085 n

end A266085

/-! ## A266085.P16460548113928175687

`ogf((-x+4x^2)/(1+2x-2x^3-x^4))`
-/

namespace A266085.P16460548113928175687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 4] [1, 2, 0, -2, -1] n

end

end A266085.P16460548113928175687

namespace A266085

/-- `ogf((-x+4x^2)/(1+2x-2x^3-x^4))` -/
def P16460548113928175687.Spec : Prop :=
  ∀ n, P16460548113928175687.a n = A266085 n

end A266085

/-! ## A266085.P10041638884746449700

`∑[(5*C(n, 2)+n)*(-1)^n]`
-/

namespace A266085.P10041638884746449700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * Nat.choose n 2 + n : ℤ) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266085.P10041638884746449700

namespace A266085

/-- `∑[(5*C(n, 2)+n)*(-1)^n]` -/
def P10041638884746449700.Spec : Prop :=
  ∀ n, P10041638884746449700.a n = A266085 n

end A266085

/-! ## A266085.P4993721448720902707

`(-1)^n*∑[∑[gcd(2, n)²]-4]`
-/

namespace A266085.P4993721448720902707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266085.P4993721448720902707

namespace A266085

/-- `(-1)^n*∑[∑[gcd(2, n)²]-4]` -/
def P4993721448720902707.Spec : Prop :=
  ∀ n, P4993721448720902707.a n = A266085 n

end A266085

/-! ## A266085.P16198713157492452552

`(-1)^n*∑[A008851(n+1)]`
-/

namespace A266085.P16198713157492452552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A266085.P16198713157492452552

namespace A266085

/-- `(-1)^n*∑[A008851(n+1)]` -/
def P16198713157492452552.Spec : Prop :=
  ∀ n, P16198713157492452552.a n = A266085 n

end A266085

/-! ## A266085.P2309798191162276052

`∑[A000566(n)*A033999(n)]`
-/

namespace A266085.P2309798191162276052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266085.P2309798191162276052

namespace A266085

/-- `∑[A000566(n)*A033999(n)]` -/
def P2309798191162276052.Spec : Prop :=
  ∀ n, P2309798191162276052.a n = A266085 n

end A266085

/-! ## A266085.P14424654096843730286

`A152032(n)-A131386(n+1)`
-/

namespace A266085.P14424654096843730286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152032 n - A131386 (n + 1)

end

end A266085.P14424654096843730286

namespace A266085

/-- `A152032(n)-A131386(n+1)` -/
def P14424654096843730286.Spec : Prop :=
  ∀ n, P14424654096843730286.a n = A266085 n

end A266085

/-! ## A266085.P7017488770178497071

`2*A266086(n)-A266087(n)`
-/

namespace A266085.P7017488770178497071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266086 n - A266087 n

end

end A266085.P7017488770178497071

namespace A266085

/-- `2*A266086(n)-A266087(n)` -/
def P7017488770178497071.Spec : Prop :=
  ∀ n, P7017488770178497071.a n = A266085 n

end A266085

/-! ## A266085.P14896490140898478206

`1/A280560(n)*A195015(n)`
-/

namespace A266085.P14896490140898478206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A280560 n : ℚ) * (A195015 n : ℚ)

end

end A266085.P14896490140898478206

namespace A266085

/-- `1/A280560(n)*A195015(n)` -/
def P14896490140898478206.Spec : Prop :=
  ∀ n, P14896490140898478206.a n = (A266085 n : ℚ)

end A266085

/-! ## A266085.P16356560373161706989

`∑[(A004442(n)-n)*A000566(n)]`
-/

namespace A266085.P16356560373161706989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A000566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266085.P16356560373161706989

namespace A266085

/-- `∑[(A004442(n)-n)*A000566(n)]` -/
def P16356560373161706989.Spec : Prop :=
  ∀ n, P16356560373161706989.a n = A266085 n

end A266085

/-! ## A266085.P8954408931838190291

`(A198442(n+1)+n²)*A033999(n)`
-/

namespace A266085.P8954408931838190291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A198442 (n + 1) + (n ^ 2 : ℤ)) * A033999 n

end

end A266085.P8954408931838190291

namespace A266085

/-- `(A198442(n+1)+n²)*A033999(n)` -/
def P8954408931838190291.Spec : Prop :=
  ∀ n, P8954408931838190291.a n = A266085 n

end A266085

/-! ## A266085.P10117932073748508801

`∑[A008851(n+1)]*A187307(3*n)`
-/

namespace A266085.P10117932073748508801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A187307 (3 * n)

end

end A266085.P10117932073748508801

namespace A266085

/-- `∑[A008851(n+1)]*A187307(3*n)` -/
def P10117932073748508801.Spec : Prop :=
  ∀ n, P10117932073748508801.a n = A266085 n

end A266085

/-!
# A266086: Alternating sum of 9-gonal (or nonagonal) numbers.

The programs for A266086, the canonical program `A266086.P15089936574538687383` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266086 has offset 0).

The definition of A266086 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266086.P15089936574538687383

`((14*n²+4*n-5)*(-1)^n+5)/8`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266086

/-- `((14*n²+4*n-5)*(-1)^n+5)/8` -/
def P15089936574538687383.Spec : Prop :=
  ∀ n, P15089936574538687383.a n = (A266086 n : ℚ)

end A266086

/-! ## A266086.P14068149995672188035

`∑[ogf((-x+6x^2)/(1+3x+3x^2+x^3))]`
-/

namespace A266086.P14068149995672188035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 6] [1, 3, 3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266086.P14068149995672188035

namespace A266086

/-- `∑[ogf((-x+6x^2)/(1+3x+3x^2+x^3))]` -/
def P14068149995672188035.Spec : Prop :=
  ∀ n, P14068149995672188035.a n = A266086 n

end A266086

/-! ## A266086.P18116509135981871084

`ogf((-x+6x^2)/(1+2x-2x^3-x^4))`
-/

namespace A266086.P18116509135981871084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 6] [1, 2, 0, -2, -1] n

end

end A266086.P18116509135981871084

namespace A266086

/-- `ogf((-x+6x^2)/(1+2x-2x^3-x^4))` -/
def P18116509135981871084.Spec : Prop :=
  ∀ n, P18116509135981871084.a n = A266086 n

end A266086

/-! ## A266086.P2420458635887936264

`∑[(-1)^n*A001106(n)]`
-/

namespace A266086.P2420458635887936264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266086.P2420458635887936264

namespace A266086

/-- `∑[(-1)^n*A001106(n)]` -/
def P2420458635887936264.Spec : Prop :=
  ∀ n, P2420458635887936264.a n = A266086 n

end A266086

/-! ## A266086.P4768688928057862975

`∑[A001106(n)*A033999(n)]`
-/

namespace A266086.P4768688928057862975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266086.P4768688928057862975

namespace A266086

/-- `∑[A001106(n)*A033999(n)]` -/
def P4768688928057862975.Spec : Prop :=
  ∀ n, P4768688928057862975.a n = A266086 n

end A266086

/-! ## A266086.P16628112761637139260

`∑[A047274(n+1)]*A033999(n)`
-/

namespace A266086.P16628112761637139260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A266086.P16628112761637139260

namespace A266086

/-- `∑[A047274(n+1)]*A033999(n)` -/
def P16628112761637139260.Spec : Prop :=
  ∀ n, P16628112761637139260.a n = A266086 n

end A266086

/-! ## A266086.P6104838787710399227

`∑[A047274(n+1)]*A009001(2*n)`
-/

namespace A266086.P6104838787710399227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A009001 (2 * n)

end

end A266086.P6104838787710399227

namespace A266086

/-- `∑[A047274(n+1)]*A009001(2*n)` -/
def P6104838787710399227.Spec : Prop :=
  ∀ n, P6104838787710399227.a n = A266086 n

end A266086

/-! ## A266086.P5948984860270362238

`A008619(14*A004526(n))*A130472(n)`
-/

namespace A266086.P5948984860270362238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (14 * A004526 n).toNat * A130472 n

end

end A266086.P5948984860270362238

namespace A266086

/-- `A008619(14*A004526(n))*A130472(n)` -/
def P5948984860270362238.Spec : Prop :=
  ∀ n, P5948984860270362238.a n = A266086 n

end A266086

/-! ## A266086.P6054447905558126341

`∑[A001106(n)/A033999(n²)]`
-/

namespace A266086.P6054447905558126341
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001106 n : ℚ) / (A033999 (n ^ 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266086.P6054447905558126341

namespace A266086

/-- `∑[A001106(n)/A033999(n²)]` -/
def P6054447905558126341.Spec : Prop :=
  ∀ n, P6054447905558126341.a n = (A266086 n : ℚ)

end A266086

/-!
# A266087: Alternating sum of 11-gonal (or hendecagonal) numbers.

The programs for A266087, the canonical program `A266087.P138332667262037751` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266087 has offset 0).

The definition of A266087 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266087.P138332667262037751

`((18*n²+4*n-7)*(-1)^n+7)/8`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266087

/-- `((18*n²+4*n-7)*(-1)^n+7)/8` -/
def P138332667262037751.Spec : Prop :=
  ∀ n, P138332667262037751.a n = (A266087 n : ℚ)

end A266087

/-! ## A266087.P14472982041872710867

`∑[ogf((-x+8x^2)/(1+3x+3x^2+x^3))]`
-/

namespace A266087.P14472982041872710867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 8] [1, 3, 3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266087.P14472982041872710867

namespace A266087

/-- `∑[ogf((-x+8x^2)/(1+3x+3x^2+x^3))]` -/
def P14472982041872710867.Spec : Prop :=
  ∀ n, P14472982041872710867.a n = A266087 n

end A266087

/-! ## A266087.P4908203223900515294

`∑[(-1)^n*A051682(n)]`
-/

namespace A266087.P4908203223900515294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A051682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266087.P4908203223900515294

namespace A266087

/-- `∑[(-1)^n*A051682(n)]` -/
def P4908203223900515294.Spec : Prop :=
  ∀ n, P4908203223900515294.a n = A266087 n

end A266087

/-! ## A266087.P12177429254401738929

`∑[(C(3*n, 2)-2*n)*A033999(n)]`
-/

namespace A266087.P12177429254401738929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (3 * n) 2 : ℤ) - (2 * n : ℤ)) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266087.P12177429254401738929

namespace A266087

/-- `∑[(C(3*n, 2)-2*n)*A033999(n)]` -/
def P12177429254401738929.Spec : Prop :=
  ∀ n, P12177429254401738929.a n = A266087 n

end A266087

/-! ## A266087.P2012917617497965338

`∑[A051682(n)/A033999(n)]`
-/

namespace A266087.P2012917617497965338
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051682 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266087.P2012917617497965338

namespace A266087

/-- `∑[A051682(n)/A033999(n)]` -/
def P2012917617497965338.Spec : Prop :=
  ∀ n, P2012917617497965338.a n = (A266087 n : ℚ)

end A266087

/-! ## A266087.P4083543924476243882

`2*A266085(n)-A083392(n)`
-/

namespace A266087.P4083543924476243882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266085 n - A083392 n

end

end A266087.P4083543924476243882

namespace A266087

/-- `2*A266085(n)-A083392(n)` -/
def P4083543924476243882.Spec : Prop :=
  ∀ n, P4083543924476243882.a n = A266087 n

end A266087

/-! ## A266087.P1446934574404903156

`2*A266086(n)-A266085(n)`
-/

namespace A266087.P1446934574404903156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266086 n - A266085 n

end

end A266087.P1446934574404903156

namespace A266087

/-- `2*A266086(n)-A266085(n)` -/
def P1446934574404903156.Spec : Prop :=
  ∀ n, P1446934574404903156.a n = A266087 n

end A266087

/-! ## A266087.P16176580067480810948

`∑[((3*n-2)*4*n-A152773(n))*A033999(n)]`
-/

namespace A266087.P16176580067480810948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((3 * n : ℤ) - 2) * (4 * n : ℤ) - A152773 n) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266087.P16176580067480810948

namespace A266087

/-- `∑[((3*n-2)*4*n-A152773(n))*A033999(n)]` -/
def P16176580067480810948.Spec : Prop :=
  ∀ n, P16176580067480810948.a n = A266087 n

end A266087

/-!
# A266088: Alternating sum of 12-gonal (or dodecagonal) numbers.

The programs for A266088, the canonical program `A266088.P3493175022002876960` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266088 has offset 0).

The definition of A266088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A266088.P3493175022002876960

`1+(-1)^n*(5*n²+n-2)/2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A266088

/-- `1+(-1)^n*(5*n²+n-2)/2` -/
def P3493175022002876960.Spec : Prop :=
  ∀ n, P3493175022002876960.a n = (A266088 n : ℚ)

end A266088

/-! ## A266088.P16685853459341875049

`∑[ogf((-x+9x^2)/(1+3x+3x^2+x^3))]`
-/

namespace A266088.P16685853459341875049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 9] [1, 3, 3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266088.P16685853459341875049

namespace A266088

/-- `∑[ogf((-x+9x^2)/(1+3x+3x^2+x^3))]` -/
def P16685853459341875049.Spec : Prop :=
  ∀ n, P16685853459341875049.a n = A266088 n

end A266088

/-! ## A266088.P3253608602650890234

`∑[(-1)^n*A051624(n)]`
-/

namespace A266088.P3253608602650890234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A051624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266088.P3253608602650890234

namespace A266088

/-- `∑[(-1)^n*A051624(n)]` -/
def P3253608602650890234.Spec : Prop :=
  ∀ n, P3253608602650890234.a n = A266088 n

end A266088

/-! ## A266088.P3581652667106331540

`∑[n*(-1)^n]*A017281(floor(n/2))`
-/

namespace A266088.P3581652667106331540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A017281 ⌊(n : ℚ) / 2⌋.toNat

end

end A266088.P3581652667106331540

namespace A266088

/-- `∑[n*(-1)^n]*A017281(floor(n/2))` -/
def P3581652667106331540.Spec : Prop :=
  ∀ n, P3581652667106331540.a n = A266088 n

end A266088

/-! ## A266088.P15005005323464107327

`∑[A051624(n)*A056594(2*n)]`
-/

namespace A266088.P15005005323464107327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051624 n * A056594 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266088.P15005005323464107327

namespace A266088

/-- `∑[A051624(n)*A056594(2*n)]` -/
def P15005005323464107327.Spec : Prop :=
  ∀ n, P15005005323464107327.a n = A266088 n

end A266088

/-!
# A266089: Lexicographically smallest permutation of natural numbers such that in binary representation the number of ones of adjacent terms differ exactly by one.

The programs for A266089, there is no canonical definition to state claims against.
-/

/-! ## A266089.P1370500880214545022

`or(A160017(n), A329450(A034518(n+1)))`
-/

namespace A266089.P1370500880214545022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A160017 n) (A329450 (A034518 (n + 1)).toNat)

end

end A266089.P1370500880214545022

/-! ## A266089.P18379407816886796079

`or(A266154(n), A329450(A034518(n+1)))`
-/

namespace A266089.P18379407816886796079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266154 n) (A329450 (A034518 (n + 1)).toNat)

end

end A266089.P18379407816886796079

/-! ## A266089.P12477092897516865445

`A160017(n)%A001665(n)`
-/

namespace A266089.P12477092897516865445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160017 n) (A001665 n)

end

end A266089.P12477092897516865445

/-! ## A266089.P4888020877258277767

`A266154(n)%A001665(n)`
-/

namespace A266089.P4888020877258277767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266154 n) (A001665 n)

end

end A266089.P4888020877258277767

/-! ## A266089.P15339879405912636629

`xor(n, A007949(A284003(n)))`
-/

namespace A266089.P15339879405912636629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A007949 (A284003 n).toNat)

end

end A266089.P15339879405912636629

/-!
# A266090: Decimal representation of the n-th iteration of the "Rule 17" elementary cellular automaton starting with a single ON (black) cell.

The programs for A266090, the canonical program `A266090.P15536049013854608840` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A266090 has offset 0).

The definition of A266090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A266090.P15536049013854608840

`and(A266671(n), A267003(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A266090

/-- `and(A266671(n), A267003(n))` -/
def P15536049013854608840.Spec : Prop :=
  ∀ n, P15536049013854608840.a n = A266090 n

theorem P15536049013854608840.correct : P15536049013854608840.Spec := by
  intro n
  simp only [A266090]

end A266090

/-! ## A266090.P9669991455559798985

`and(A266671(n), A267271(n))`
-/

namespace A266090.P9669991455559798985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266671 n) (A267271 n)

end

end A266090.P9669991455559798985

namespace A266090

/-- `and(A266671(n), A267271(n))` -/
def P9669991455559798985.Spec : Prop :=
  ∀ n, P9669991455559798985.a n = A266090 n

end A266090

/-! ## A266090.P3733867915668454561

`and(record[gcd(2, n)^(n+1)-1], A266069(3*n))`
-/

namespace A266090.P3733867915668454561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ (n + 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A266069 (3 * n))

end

end A266090.P3733867915668454561

namespace A266090

/-- `and(record[gcd(2, n)^(n+1)-1], A266069(3*n))` -/
def P3733867915668454561.Spec : Prop :=
  ∀ n, P3733867915668454561.a n = A266090 n

end A266090

/-! ## A266090.P6336868860447749623

`A266069(3*n)%A266069(Δ[A001105(n)])`
-/

namespace A266090.P6336868860447749623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266069 (3 * n)) (A266069 (f1 (n + 1) - f1 n).toNat)

end

end A266090.P6336868860447749623

namespace A266090

/-- `A266069(3*n)%A266069(Δ[A001105(n)])` -/
def P6336868860447749623.Spec : Prop :=
  ∀ n, P6336868860447749623.a n = A266090 n

end A266090

/-!
# A266091: a(n) = Product_{k=0..n} (3*k)!/(n+k)!.

The programs for A266091, there is no canonical definition to state claims against.
-/

/-! ## A266091.P13341502896730202779

`∏[C(3*n, n)/A088218(n)]`
-/

namespace A266091.P13341502896730202779
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℚ) / (A088218 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A266091.P13341502896730202779

/-! ## A266091.P2509028652166547706

`∏[A005809(n)/A088218(n)]`
-/

namespace A266091.P2509028652166547706
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005809 n : ℚ) / (A088218 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A266091.P2509028652166547706

/-! ## A266091.P4574893174624153423

`2*a(n-1)*A001448(n)/A005810(n)` with `a(0)=1`
-/

namespace A266091.P4574893174624153423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) * ((A001448 n : ℚ) / (A005810 n : ℚ))

end

end A266091.P4574893174624153423

/-! ## A266091.P18041093181273812012

`∏[C(3*n, n)]/A296590(n)`
-/

namespace A266091.P18041093181273812012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A296590 n : ℚ)

end

end A266091.P18041093181273812012

/-!
# A266093: Number of B-diagrams G such that the number of vertices of G is |G|=n.

The programs for A266093, there is no canonical definition to state claims against.
-/

/-! ## A266093.P1908043542652099022

`∑[A326575(record[A351771(n)])]`
-/

namespace A266093.P1908043542652099022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351771 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326575 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266093.P1908043542652099022

/-!
# A266094: a(n) is the sum of the divisors of the smallest number k such that the symmetric representation of sigma(k) has n parts.

The programs for A266094, there is no canonical definition to state claims against.
-/

/-! ## A266094.P226519222353853566

`A000203(A239663(n+1))`
-/

namespace A266094.P226519222353853566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A239663 (n + 1)).toNat

end

end A266094.P226519222353853566

/-! ## A266094.P18063932951976768680

`∑{d}[A346969(A000124(n)), #]`
-/

namespace A266094.P18063932951976768680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346969 (A000124 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A266094.P18063932951976768680

/-! ## A266094.P5040090340813489430

`A000203(A346969(∑[n]+1))`
-/

namespace A266094.P5040090340813489430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A346969 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A266094.P5040090340813489430

/-! ## A266094.P16256260957085087089

`∑{d}[A239663(A071786(n+1)), #]`
-/

namespace A266094.P16256260957085087089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239663 (A071786 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A266094.P16256260957085087089

/-! ## A266094.P10256881581911709239

`∑{d}[A346969(record[A286235(n+1)]), #]`
-/

namespace A266094.P10256881581911709239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286235 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346969 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A266094.P10256881581911709239

/-!
# A266095: Number of n X n integer arrays with each element equal to the number of horizontal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266095, there is no canonical definition to state claims against.
-/

/-! ## A266095.P6872371735468804096

`A266101(∑[4*n]+1)`
-/

namespace A266095.P6872371735468804096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266095.P6872371735468804096

/-! ## A266095.P8680627671470204126

`record[A266101(Δ[A235355(n)])]`
-/

namespace A266095.P8680627671470204126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266095.P8680627671470204126

/-! ## A266095.P12960039245218753290

`abs(A266101(A001844(n))-1)+1`
-/

namespace A266095.P12960039245218753290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A266101 (A001844 n).toNat - 1| + 1

end

end A266095.P12960039245218753290

/-! ## A266095.P8680895992129490404

`record[A003982(n)*A266101(n+1)]`
-/

namespace A266095.P8680895992129490404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A266101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266095.P8680895992129490404

/-! ## A266095.P13241072311093151709

`record[gcd(A165795(n), A266101(n+1))]`
-/

namespace A266095.P13241072311093151709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165795 n) (A266101 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266095.P13241072311093151709

/-!
# A266096: Number of n X 3 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266096, there is no canonical definition to state claims against.
-/

/-! ## A266096.P4235285254342240583

`A266101(∑[n+3]+1)`
-/

namespace A266096.P4235285254342240583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A266096.P4235285254342240583

/-! ## A266096.P15406688779153248426

`A266101(Δ[A008778(n)])*A304042(n)`
-/

namespace A266096.P15406688779153248426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (f1 (n + 1) - f1 n).toNat * A304042 n

end

end A266096.P15406688779153248426

/-! ## A266096.P4111119564251931414

`A266101(Δ[A008778(n)])%A017105(n)`
-/

namespace A266096.P4111119564251931414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266101 (f1 (n + 1) - f1 n).toNat) (A017105 n)

end

end A266096.P4111119564251931414

/-! ## A266096.P4463303369668794677

`record[A266101(A286159(n+5))]`
-/

namespace A266096.P4463303369668794677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (A286159 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A266096.P4463303369668794677

/-!
# A266097: Number of nX4 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266097, there is no canonical definition to state claims against.
-/

/-! ## A266097.P12224155875015015000

`A266101(A141214(n+1))`
-/

namespace A266097.P12224155875015015000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (A141214 (n + 1)).toNat

end

end A266097.P12224155875015015000

/-! ## A266097.P13277506155643973759

`A266101(A155212(n)+5)`
-/

namespace A266097.P13277506155643973759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (A155212 n + 5).toNat

end

end A266097.P13277506155643973759

/-! ## A266097.P4640962570760853701

`A266101(Δ[A006416(n+2)])`
-/

namespace A266097.P4640962570760853701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (f1 (n + 1) - f1 n).toNat

end

end A266097.P4640962570760853701

/-! ## A266097.P4825231191935861425

`A266101(A046691(n+2)+1)`
-/

namespace A266097.P4825231191935861425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (A046691 (n + 2) + 1).toNat

end

end A266097.P4825231191935861425

/-! ## A266097.P16312311780255038232

`A266101(A052905(n+1)+2)`
-/

namespace A266097.P16312311780255038232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (A052905 (n + 1) + 2).toNat

end

end A266097.P16312311780255038232

/-!
# A266098: Number of nX5 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266098, there is no canonical definition to state claims against.
-/

/-! ## A266098.P3739732731670147641

`A266101(Δ[A264443(n)])`
-/

namespace A266098.P3739732731670147641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (f1 (n + 1) - f1 n).toNat

end

end A266098.P3739732731670147641

/-! ## A266098.P8013132790580801787

`A266101(eq[4, A193592(n)])`
-/

namespace A266098.P8013132790580801787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266098.P8013132790580801787

/-! ## A266098.P6477672576342320762

`A266101(Δ[A023545(n+1)])`
-/

namespace A266098.P6477672576342320762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (f1 (n + 1) - f1 n).toNat

end

end A266098.P6477672576342320762

/-! ## A266098.P10886755106376480493

`A266101(eq[3, A144018(n+1)])`
-/

namespace A266098.P10886755106376480493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266098.P10886755106376480493

/-! ## A266098.P17977382729277177826

`A266101(eq[4, A049286(n+1)])`
-/

namespace A266098.P17977382729277177826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266098.P17977382729277177826

/-!
# A266099: Number of nX6 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors exactly one smaller than itself.

The programs for A266099, there is no canonical definition to state claims against.
-/

/-! ## A266099.P18098565629740042982

`A266101(eq[3, A219347(n)])`
-/

namespace A266099.P18098565629740042982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266099.P18098565629740042982

/-! ## A266099.P14681064174212251839

`A266101(eq[5, A193592(n)])`
-/

namespace A266099.P14681064174212251839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266099.P14681064174212251839

/-! ## A266099.P4992510883528854615

`A266101(eq[6, A200370(n+1)])`
-/

namespace A266099.P4992510883528854615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266099.P4992510883528854615

/-! ## A266099.P16922437666085661877

`A266101(eq[7, A049286(n+1)])`
-/

namespace A266099.P16922437666085661877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266099.P16922437666085661877

/-! ## A266099.P14076683522510660123

`A266101(eq[8, A185782(n+1)])`
-/

namespace A266099.P14076683522510660123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A266099.P14076683522510660123

