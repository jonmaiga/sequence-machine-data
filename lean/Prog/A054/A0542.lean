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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
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
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A054200: Number of binary vectors (x_1,...x_n) satisfying Sum_{i=1..n} i*x_i = 3 (mod n+1) = size of Varshamov-Tenengolts code VT_3(n).

The programs for A054200, there is no canonical definition to state claims against.
-/

/-! ## A054200.P4543309568386633503

`A053633(∑[C(n, a(n-1))])` with `a(0)=5`
-/

namespace A054200.P4543309568386633503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  Nat.choose n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054200.P4543309568386633503

/-! ## A054200.P10550387829827583738

`A053633(A133263(n)+1)`
-/

namespace A054200.P10550387829827583738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (A133263 n + 1).toNat

end

end A054200.P10550387829827583738

/-! ## A054200.P4675138230461806701

`A053633(∑[A233583(n+1)])`
-/

namespace A054200.P4675138230461806701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054200.P4675138230461806701

/-! ## A054200.P7076606482196620781

`A053633(A089071(n+1)+1+n)`
-/

namespace A054200.P7076606482196620781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (A089071 (n + 1) + 1 + (n : ℤ)).toNat

end

end A054200.P7076606482196620781

/-! ## A054200.P11913366722268694300

`A053633(A134869(n+1)+1-n)`
-/

namespace A054200.P11913366722268694300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (A134869 (n + 1) + (1 - (n : ℤ))).toNat

end

end A054200.P11913366722268694300

/-! ## A054200.P7955916931874761356

`A053633(A036453(n+1)+∑[n]+1)`
-/

namespace A054200.P7955916931874761356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (A036453 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)).toNat

end

end A054200.P7955916931874761356

/-! ## A054200.P13718704019468452240

`A053633(∑[n+1]+2-(A000007(n)+n))`
-/

namespace A054200.P13718704019468452240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ) - (A000007 n + (n : ℤ))).toNat

end

end A054200.P13718704019468452240

/-! ## A054200.P13222171931074918628

`A053633(A122553(n)+A000217(n))`
-/

namespace A054200.P13222171931074918628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (A122553 n + A000217 n).toNat

end

end A054200.P13222171931074918628

/-! ## A054200.P16375132859311998812

`A053633(A157532(n+1)+A000217(n))`
-/

namespace A054200.P16375132859311998812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (A157532 (n + 1) + A000217 n).toNat

end

end A054200.P16375132859311998812

/-! ## A054200.P3413088496030215667

`A053633(record[A069981(n)])`
-/

namespace A054200.P3413088496030215667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054200.P3413088496030215667

/-! ## A054200.P17739363832876388355

`A053633(A069981(2*n))`
-/

namespace A054200.P17739363832876388355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (A069981 (2 * n)).toNat

end

end A054200.P17739363832876388355

/-!
# A054201: a(n) = (n-1)! * Sum_{k=1..n} k^k/k!.

The programs for A054201, there is no canonical definition to state claims against.
-/

/-! ## A054201.P2776131682238560950

`n!*∑[(n+1)^n/n!]`
-/

namespace A054201.P2776131682238560950
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054201.P2776131682238560950

/-! ## A054201.P16422497728020103205

`(n+1)^n+n*a(n-1)` with `a(0)=1`
-/

namespace A054201.P16422497728020103205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) ^ n + n * a (n - 1)

end

end A054201.P16422497728020103205

/-! ## A054201.P77984249526770330

`(n+1)^n+a(n-1)/n^(-1)` with `a(0)=1`
-/

namespace A054201.P77984249526770330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) ^ n : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A054201.P77984249526770330

/-! ## A054201.P14470466737603898905

`n!*∑[A000169(n+1)/A000142(n)]`
-/

namespace A054201.P14470466737603898905
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000169 (n + 1) : ℚ) / (A000142 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054201.P14470466737603898905

/-! ## A054201.P14748941716614461802

`A374844(n+1)/(n+1)`
-/

namespace A054201.P14748941716614461802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374844 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A054201.P14748941716614461802

/-!
# A054202: a(n) = (n-1)! * Sum_{k=1..n} floor(k^k/k!).

The programs for A054202, there is no canonical definition to state claims against.
-/

/-! ## A054202.P9655296978651278083

`n!*∑[A055775(n+1)]`
-/

namespace A054202.P9655296978651278083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054202.P9655296978651278083

/-! ## A054202.P8750971702141546192

`∑[A055775(n+1)]*A000142(n)`
-/

namespace A054202.P8750971702141546192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A054202.P8750971702141546192

/-! ## A054202.P3527098481463359230

`∑[A055775(n+1)]*∏[A028310(n)]`
-/

namespace A054202.P3527098481463359230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A054202.P3527098481463359230

/-! ## A054202.P14874593960595185214

`∑[A055775(n+1)]*A080779(A000096(n))`
-/

namespace A054202.P14874593960595185214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A080779 (A000096 n).toNat

end

end A054202.P14874593960595185214

/-!
# A054203: a(n) is the smallest start of a run of exactly n+1 consecutive primes with n (not necessarily equal) prime differences, each divisible by 6.

The programs for A054203, there is no canonical definition to state claims against.
-/

/-! ## A054203.P15787615679327655528

`A359272(∑[n+1]+3)`
-/

namespace A054203.P15787615679327655528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359272 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A054203.P15787615679327655528

/-!
# A054204: Integers expressible as sums of distinct even-subscripted Fibonacci numbers.

The programs for A054204, the canonical program `A054204.P6482760516605341944` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054204 has offset 1).

The definition of A054204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054204.P6482760516605341944

`∑[A000045(val((n+1)², 2))+1]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A054204

/-- `∑[A000045(val((n+1)², 2))+1]` -/
def P6482760516605341944.Spec : Prop :=
  ∀ n, P6482760516605341944.a n = A054204 (n + 1)

theorem P6482760516605341944.correct : P6482760516605341944.Spec := by
  intro n
  simp only [A054204, Nat.add_sub_cancel]

end A054204

/-! ## A054204.P2965168790920737149

`∑[A001906(A007814(n+1))+1]`
-/

namespace A054204.P2965168790920737149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (A007814 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054204.P2965168790920737149

namespace A054204

/-- `∑[A001906(A007814(n+1))+1]` -/
def P2965168790920737149.Spec : Prop :=
  ∀ n, P2965168790920737149.a n = A054204 (n + 1)

end A054204

/-! ## A054204.P14752413513331071652

`∑[A000045(A037227(n+1)-1)+1]`
-/

namespace A054204.P14752413513331071652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A037227 (n + 1) - 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054204.P14752413513331071652

namespace A054204

/-- `∑[A000045(A037227(n+1)-1)+1]` -/
def P14752413513331071652.Spec : Prop :=
  ∀ n, P14752413513331071652.a n = A054204 (n + 1)

end A054204

/-! ## A054204.P8894398495095267591

`∑[A000045(2*A007814(n+1))+1]`
-/

namespace A054204.P8894398495095267591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * A007814 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054204.P8894398495095267591

namespace A054204

/-- `∑[A000045(2*A007814(n+1))+1]` -/
def P8894398495095267591.Spec : Prop :=
  ∀ n, P8894398495095267591.a n = A054204 (n + 1)

end A054204

/-! ## A054204.P694993840559451382

`A036795(n+1)-1`
-/

namespace A054204.P694993840559451382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036795 (n + 1) - 1

end

end A054204.P694993840559451382

namespace A054204

/-- `A036795(n+1)-1` -/
def P694993840559451382.Spec : Prop :=
  ∀ n, P694993840559451382.a n = A054204 (n + 1)

end A054204

/-! ## A054204.P5717299017549054944

`Δ[∑[A036795(n)]-n]`
-/

namespace A054204.P5717299017549054944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036795 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054204.P5717299017549054944

namespace A054204

/-- `Δ[∑[A036795(n)]-n]` -/
def P5717299017549054944.Spec : Prop :=
  ∀ n, P5717299017549054944.a n = A054204 (n + 1)

end A054204

/-! ## A054204.P17168398331077513176

`A062879(n+2)-A062877(n+1)`
-/

namespace A054204.P17168398331077513176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062879 (n + 2) - A062877 (n + 1)

end

end A054204.P17168398331077513176

namespace A054204

/-- `A062879(n+2)-A062877(n+1)` -/
def P17168398331077513176.Spec : Prop :=
  ∀ n, P17168398331077513176.a n = A054204 (n + 1)

end A054204

/-! ## A054204.P3129940846641657950

`A062879(n+2)+1-A036796(n+1)`
-/

namespace A054204.P3129940846641657950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062879 (n + 2) + (1 - A036796 (n + 1))

end

end A054204.P3129940846641657950

namespace A054204

/-- `A062879(n+2)+1-A036796(n+1)` -/
def P3129940846641657950.Spec : Prop :=
  ∀ n, P3129940846641657950.a n = A054204 (n + 1)

end A054204

/-! ## A054204.P8287007555235883132

`A036796(2*(n+1))-A036796(n+1)`
-/

namespace A054204.P8287007555235883132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036796 (2 * (n + 1)) - A036796 (n + 1)

end

end A054204.P8287007555235883132

namespace A054204

/-- `A036796(2*(n+1))-A036796(n+1)` -/
def P8287007555235883132.Spec : Prop :=
  ∀ n, P8287007555235883132.a n = A054204 (n + 1)

end A054204

/-! ## A054204.P9513429617795861767

`A062877(2*(n+1))-A062877(n+1)`
-/

namespace A054204.P9513429617795861767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062877 (2 * (n + 1)) - A062877 (n + 1)

end

end A054204.P9513429617795861767

namespace A054204

/-- `A062877(2*(n+1))-A062877(n+1)` -/
def P9513429617795861767.Spec : Prop :=
  ∀ n, P9513429617795861767.a n = A054204 (n + 1)

end A054204

/-! ## A054204.P13443118114743671212

`record[∑[A356399(n+1)]]`
-/

namespace A054204.P13443118114743671212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356399 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054204.P13443118114743671212

namespace A054204

/-- `record[∑[A356399(n+1)]]` -/
def P13443118114743671212.Spec : Prop :=
  ∀ n, P13443118114743671212.a n = A054204 (n + 1)

end A054204

/-! ## A054204.P14918646555100375224

`A000201(A062877(n+1))`
-/

namespace A054204.P14918646555100375224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A062877 (n + 1)).toNat

end

end A054204.P14918646555100375224

namespace A054204

/-- `A000201(A062877(n+1))` -/
def P14918646555100375224.Spec : Prop :=
  ∀ n, P14918646555100375224.a n = A054204 (n + 1)

end A054204

/-! ## A054204.P13458480207143091317

`A187945(A178482(n+1))`
-/

namespace A054204.P13458480207143091317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187945 (A178482 (n + 1)).toNat

end

end A054204.P13458480207143091317

namespace A054204

/-- `A187945(A178482(n+1))` -/
def P13458480207143091317.Spec : Prop :=
  ∀ n, P13458480207143091317.a n = A054204 (n + 1)

end A054204

/-! ## A054204.P17176720981914183370

`A005206(A062879(n+2))`
-/

namespace A054204.P17176720981914183370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A062879 (n + 2)).toNat

end

end A054204.P17176720981914183370

namespace A054204

/-- `A005206(A062879(n+2))` -/
def P17176720981914183370.Spec : Prop :=
  ∀ n, P17176720981914183370.a n = A054204 (n + 1)

end A054204

/-! ## A054204.P8241074745198709788

`A189625(A036796(n+1))-1`
-/

namespace A054204.P8241074745198709788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189625 (A036796 (n + 1)).toNat - 1

end

end A054204.P8241074745198709788

namespace A054204

/-- `A189625(A036796(n+1))-1` -/
def P8241074745198709788.Spec : Prop :=
  ∀ n, P8241074745198709788.a n = A054204 (n + 1)

end A054204

/-! ## A054204.P14040825961731188049

`lt[A165277(n+1), 1]+1`
-/

namespace A054204.P14040825961731188049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165277 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A054204.P14040825961731188049

namespace A054204

/-- `lt[A165277(n+1), 1]+1` -/
def P14040825961731188049.Spec : Prop :=
  ∀ n, (P14040825961731188049.a n : ℤ) = A054204 (n + 1)

end A054204

/-! ## A054204.P4127601001766432297

`A023443(A036795(n+1))`
-/

namespace A054204.P4127601001766432297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A036795 (n + 1)).toNat

end

end A054204.P4127601001766432297

namespace A054204

/-- `A023443(A036795(n+1))` -/
def P4127601001766432297.Spec : Prop :=
  ∀ n, P4127601001766432297.a n = A054204 (n + 1)

end A054204

/-! ## A054204.P17033907917433027566

`eq[A005378(n), A309076(n)]`
-/

namespace A054204.P17033907917433027566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309076 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054204.P17033907917433027566

namespace A054204

/-- `eq[A005378(n), A309076(n)]` -/
def P17033907917433027566.Spec : Prop :=
  ∀ n, (P17033907917433027566.a n : ℤ) = A054204 (n + 1)

end A054204

/-! ## A054204.P1097998639323745007

`record[-A309076(n+2)]`
-/

namespace A054204.P1097998639323745007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A309076 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054204.P1097998639323745007

namespace A054204

/-- `record[-A309076(n+2)]` -/
def P1097998639323745007.Spec : Prop :=
  ∀ n, P1097998639323745007.a n = A054204 (n + 1)

end A054204

/-! ## A054204.P11816710380194664104

`A026272(A062879(n+2)-1)`
-/

namespace A054204.P11816710380194664104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A062879 (n + 2) - 1).toNat

end

end A054204.P11816710380194664104

namespace A054204

/-- `A026272(A062879(n+2)-1)` -/
def P11816710380194664104.Spec : Prop :=
  ∀ n, P11816710380194664104.a n = A054204 (n + 1)

end A054204

/-!
# A054208: Consider all integer triples (i,j,k), j >= k > 0, with i^3 = binomial(j+2,3) + binomial(k+2,3), ordered by increasing i; sequence gives i values.

The programs for A054208, there is no canonical definition to state claims against.
-/

/-! ## A054208.P14541615068636465166

`A253474(A108463(n+1))`
-/

namespace A054208.P14541615068636465166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253474 (A108463 (n + 1)).toNat

end

end A054208.P14541615068636465166

/-!
# A054211: Numbers k such that k concatenated with k-1 is prime.

The programs for A054211, there is no canonical definition to state claims against.
-/

/-! ## A054211.P17491350293676458331

`eq[1, A341702(n)]`
-/

namespace A054211.P17491350293676458331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341702 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054211.P17491350293676458331

/-! ## A054211.P14454038747093816684

`A078899(A052089(n+1)+1)`
-/

namespace A054211.P14454038747093816684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078899 (A052089 (n + 1) + 1).toNat

end

end A054211.P14454038747093816684

/-! ## A054211.P7445194886097453662

`A309892(A052089(n+1)+1)`
-/

namespace A054211.P7445194886097453662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309892 (A052089 (n + 1) + 1).toNat

end

end A054211.P7445194886097453662

/-! ## A054211.P14469867881485926649

`A345933(A052089(n+1)+1)`
-/

namespace A054211.P14469867881485926649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345933 (A052089 (n + 1) + 1).toNat

end

end A054211.P14469867881485926649

/-! ## A054211.P16938026592702821651

`A345934(A052089(n+1)+1)`
-/

namespace A054211.P16938026592702821651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345934 (A052089 (n + 1) + 1).toNat

end

end A054211.P16938026592702821651

/-!
# A054213: 

The programs for A054213, there is no canonical definition to state claims against.
-/

/-! ## A054213.P17444562138099889386

`A054212(n+1)^5`
-/

namespace A054213.P17444562138099889386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054212 (n + 1) ^ 5

end

end A054213.P17444562138099889386

/-!
# A054214: Numbers n such that n concatenated with n-1 is a square.

The programs for A054214, there is no canonical definition to state claims against.
-/

/-! ## A054214.P2094394821380505293

`A328089(n+1)+1`
-/

namespace A054214.P2094394821380505293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328089 (n + 1) + 1

end

end A054214.P2094394821380505293

/-!
# A054215: Squares that are concatenations of two consecutive decreasing numbers.

The programs for A054215, there is no canonical definition to state claims against.
-/

/-! ## A054215.P6077101825791240912

`A054216(n+1)²`
-/

namespace A054215.P6077101825791240912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054216 (n + 1) ^ 2

end

end A054215.P6077101825791240912

/-! ## A054215.P3797490158398129729

`(A116273(n+1)+1)²`
-/

namespace A054215.P3797490158398129729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A116273 (n + 1) + 1) ^ 2

end

end A054215.P3797490158398129729

/-! ## A054215.P7035877451668970514

`(A116254(n+1)+2)²`
-/

namespace A054215.P7035877451668970514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A116254 (n + 1) + 2) ^ 2

end

end A054215.P7035877451668970514

/-! ## A054215.P5826972192285871314

`record[A054216(A116549(n))²]`
-/

namespace A054215.P5826972192285871314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054216 (A116549 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054215.P5826972192285871314

/-! ## A054215.P525537390001126499

`A054216(n+1)^(A280865(n)+1)`
-/

namespace A054215.P525537390001126499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054216 (n + 1) : ℚ) ^ (A280865 n + 1 : ℤ)

end

end A054215.P525537390001126499

/-!
# A054216: Numbers m such that m^2 is a concatenation of two consecutive decreasing numbers.

The programs for A054216, there is no canonical definition to state claims against.
-/

/-! ## A054216.P9700593774199769025

`sqrt(A054215(n+1))`
-/

namespace A054216.P9700593774199769025
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A054215 (n + 1) : ℝ)

end

end A054216.P9700593774199769025

/-! ## A054216.P4807515547216464763

`A116273(n+1)+1`
-/

namespace A054216.P4807515547216464763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116273 (n + 1) + 1

end

end A054216.P4807515547216464763

/-! ## A054216.P15460960399517330617

`A116254(n+1)+2`
-/

namespace A054216.P15460960399517330617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116254 (n + 1) + 2

end

end A054216.P15460960399517330617

/-! ## A054216.P105086452108961644

`root(A054215(n+1), Δ[A064466(n)])`
-/

namespace A054216.P105086452108961644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064466 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A054215 (n + 1) : ℝ) ^ (1 / (f1 (n + 1) - f1 n : ℝ))

end

end A054216.P105086452108961644

/-!
# A054217: Primes p with property that p concatenated with its emirp p' (prime reversal) forms a palindromic prime of the form 'primemirp' (rightmost digit of p and leftmost digit of p' are blended together - p and p' palindromic allowed).

The programs for A054217, there is no canonical definition to state claims against.
-/

/-! ## A054217.P3195799522179004208

`∩[A007500(n+1), A258084(n+1)]`
-/

namespace A054217.P3195799522179004208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054217.P3195799522179004208

/-! ## A054217.P4606925373243016509

`p?[A151764(A258084(n+1))]`
-/

namespace A054217.P4606925373243016509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151764 (A258084 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054217.P4606925373243016509

/-! ## A054217.P12692787563474822981

`p?[A151765(p?[A258084(n+1)])]`
-/

namespace A054217.P12692787563474822981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258084 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151765 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054217.P12692787563474822981

/-! ## A054217.P9710357755038935121

`A332088(A084092(n+1))`
-/

namespace A054217.P9710357755038935121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332088 (A084092 (n + 1)).toNat

end

end A054217.P9710357755038935121

/-! ## A054217.P11984364461247933332

`∩[A176548(n+1), A332088(n+1)]`
-/

namespace A054217.P11984364461247933332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054217.P11984364461247933332

/-!
# A054218: Palindromic primes of the form 'primemirp' resulting from A054217.

The programs for A054218, there is no canonical definition to state claims against.
-/

/-! ## A054218.P12087401017096397634

`A056525(A054217(n+1))`
-/

namespace A054218.P12087401017096397634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A054217 (n + 1)).toNat

end

end A054218.P12087401017096397634

/-! ## A054218.P4420170847202743946

`∩[A056525(A007500(n+1)), A084092(n+1)]`
-/

namespace A054218.P4420170847202743946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A007500 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054218.P4420170847202743946

/-! ## A054218.P10267617091524443506

`A056525(∩[A007500(n+1), A258084(n+1)])`
-/

namespace A054218.P10267617091524443506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258084 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A054218.P10267617091524443506

/-! ## A054218.P10933385787822771961

`p?[A056525(A007500(n+1))]`
-/

namespace A054218.P10933385787822771961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A007500 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054218.P10933385787822771961

/-! ## A054218.P6084463878804340236

`p?[A056525(A069706(n+1))]`
-/

namespace A054218.P6084463878804340236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A069706 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054218.P6084463878804340236

/-!
# A054219: Concatenation of n in base 10 down to base 2 is divisible by at least one of these base b numbers, all numbers interpreted as decimals.

The programs for A054219, there is no canonical definition to state claims against.
-/

/-! ## A054219.P66520548319581572

`record[A035033(n+1)%A145154(2*(n+1))]`
-/

namespace A054219.P66520548319581572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035033 (n + 1)) (A145154 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054219.P66520548319581572

/-! ## A054219.P9569528570319991638

`record[(lt[n, A000005(n+1)²]+1)%A145154(2*(n+1))]`
-/

namespace A054219.P9569528570319991638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1 : ℤ) (A145154 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054219.P9569528570319991638

/-! ## A054219.P11135914911305803851

`∑[A003557(A000005(A022861(n+1)))]`
-/

namespace A054219.P11135914911305803851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A000005 (A022861 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054219.P11135914911305803851

/-! ## A054219.P15658550691130771281

`record[A000005(A008619(A263564(n+1)))]`
-/

namespace A054219.P15658550691130771281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008619 (A263564 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054219.P15658550691130771281

/-! ## A054219.P8920739593738214720

`record[A038548(A000010(A183905(n+1)))]`
-/

namespace A054219.P8920739593738214720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A000010 (A183905 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054219.P8920739593738214720

/-!
# A054224: A054221 without cubes.

The programs for A054224, there is no canonical definition to state claims against.
-/

/-! ## A054224.P7963243592404061603

`record[A052410(A054221(n))]`
-/

namespace A054224.P7963243592404061603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A054221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054224.P7963243592404061603

/-! ## A054224.P7488196193935341727

`record[A054221(n)%A054204(A054223(n))]`
-/

namespace A054224.P7488196193935341727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054221 n) (A054204 (A054223 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054224.P7488196193935341727

/-! ## A054224.P6161869884958412979

`filter[A054221(n), A132350(#)]`
-/

namespace A054224.P6161869884958412979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A054224.P6161869884958412979

/-! ## A054224.P16899628322582352349

`∩[A001476(n+1), A054221(n)]`
-/

namespace A054224.P16899628322582352349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054224.P16899628322582352349

/-!
# A054225: Triangle read by rows: row n (n>=0) gives the number of partitions of (n,0), (n-1,1), (n-2,2), ..., (0,n) respectively into sums of pairs.

The programs for A054225, there is no canonical definition to state claims against.
-/

/-! ## A054225.P969065302898788468

`A054241(A054238(n))`
-/

namespace A054225.P969065302898788468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054241 (A054238 n).toNat

end

end A054225.P969065302898788468

/-! ## A054225.P16689134510089054444

`A054241(A346453(n))`
-/

namespace A054225.P16689134510089054444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054241 (A346453 n).toNat

end

end A054225.P16689134510089054444

/-! ## A054225.P9674238145661901768

`A131419(A344646(n))`
-/

namespace A054225.P9674238145661901768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131419 (A344646 n).toNat

end

end A054225.P9674238145661901768

/-! ## A054225.P3813707915061446386

`A353378(A036561(n))`
-/

namespace A054225.P3813707915061446386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353378 (A036561 n).toNat

end

end A054225.P3813707915061446386

/-! ## A054225.P9672068369117716199

`A353378(A230445(n)+1)`
-/

namespace A054225.P9672068369117716199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353378 (A230445 n + 1).toNat

end

end A054225.P9672068369117716199

/-! ## A054225.P11988971569567051007

`A353378(A094617(n+1)-1)`
-/

namespace A054225.P11988971569567051007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353378 (A094617 (n + 1) - 1).toNat

end

end A054225.P11988971569567051007

/-! ## A054225.P8644971957927667384

`A353378(A100851(n)/A059268(n))`
-/

namespace A054225.P8644971957927667384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353378 (SequenceMachineLib.roundAway ((A100851 n : ℚ) / (A059268 n : ℚ))).toNat

end

end A054225.P8644971957927667384

/-! ## A054225.P17431057391479358122

`A001055(A278222(A089633(n)))`
-/

namespace A054225.P17431057391479358122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A278222 (A089633 n).toNat).toNat

end

end A054225.P17431057391479358122

/-! ## A054225.P12499849057772048075

`∑{d}[A278222(A089633(n)), A050370(#)]`
-/

namespace A054225.P12499849057772048075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A089633 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A050370 d

end

end A054225.P12499849057772048075

/-! ## A054225.P3332724787672913616

`A318284(A146985(n))`
-/

namespace A054225.P3332724787672913616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A146985 n).toNat

end

end A054225.P3332724787672913616

/-!
# A054226: Number of positive integers <= 2^n of form x^2 + 11 y^2.

The programs for A054226, there is no canonical definition to state claims against.
-/

/-! ## A054226.P6835218435430060697

`A333638(A000021(n))`
-/

namespace A054226.P6835218435430060697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333638 (A000021 n).toNat

end

end A054226.P6835218435430060697

/-! ## A054226.P4280463219230258441

`A300465(A032559(n+1))+A054227(n)`
-/

namespace A054226.P4280463219230258441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300465 (A032559 (n + 1)).toNat + A054227 n

end

end A054226.P4280463219230258441

/-! ## A054226.P1393205747613178554

`A056813(A025192(n))-A076277(n+1)`
-/

namespace A054226.P1393205747613178554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A025192 n).toNat - A076277 (n + 1)

end

end A054226.P1393205747613178554

/-! ## A054226.P11177509523638777496

`A257317(A230429(n+1)*A248098(n+1))`
-/

namespace A054226.P11177509523638777496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257317 (A230429 (n + 1) * A248098 (n + 1)).toNat

end

end A054226.P11177509523638777496

/-! ## A054226.P885343251840138234

`A115180(A074045(n))-A050326(A350137(n+1))`
-/

namespace A054226.P885343251840138234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115180 (A074045 n).toNat - A050326 (A350137 (n + 1)).toNat

end

end A054226.P885343251840138234

/-!
# A054227: Number of positive integers <= 2^n of form x^2 + 13 y^2.

The programs for A054227, there is no canonical definition to state claims against.
-/

/-! ## A054227.P11988792062191849950

`A347457(A006093(floor(sqrt(2^n))))`
-/

namespace A054227.P11988792062191849950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347457 (A006093 (Nat.sqrt (2 ^ n))).toNat

end

end A054227.P11988792062191849950

/-! ## A054227.P1882793583871896982

`A067085(A272483(n+1))+floor(n/2)`
-/

namespace A054227.P1882793583871896982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067085 (A272483 (n + 1)).toNat + ⌊(n : ℚ) / 2⌋

end

end A054227.P1882793583871896982

/-! ## A054227.P17866472955071186812

`A049853(n)-A007814(∑[3^n]+2)`
-/

namespace A054227.P17866472955071186812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 n - A007814 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A054227.P17866472955071186812

/-! ## A054227.P18245250361376524775

`A295724(n)+A023532(A073617(n))`
-/

namespace A054227.P18245250361376524775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 n + A023532 (A073617 n).toNat

end

end A054227.P18245250361376524775

/-! ## A054227.P12945211926239767176

`A079959(n)-A331416(A079976(n))`
-/

namespace A054227.P12945211926239767176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079959 n - A331416 (A079976 n).toNat

end

end A054227.P12945211926239767176

/-!
# A054228: Number of positive integers <= 2^n of form x^2 + 14 y^2.

The programs for A054228, there is no canonical definition to state claims against.
-/

/-! ## A054228.P3216602973737758498

`A028495(n)+A016395(A153972(n))`
-/

namespace A054228.P3216602973737758498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 n + A016395 (A153972 n).toNat

end

end A054228.P3216602973737758498

/-! ## A054228.P1722134770887832879

`A138374(A075111(n)+A000041(n))`
-/

namespace A054228.P1722134770887832879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138374 (A075111 n + A000041 n).toNat

end

end A054228.P1722134770887832879

/-! ## A054228.P18201366153882783160

`A326291(A054226(n))+A054227(n)`
-/

namespace A054228.P18201366153882783160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (A054226 n).toNat + A054227 n

end

end A054228.P18201366153882783160

/-! ## A054228.P1453195153621579749

`A028495(n)-A010051(A216688(n))`
-/

namespace A054228.P1453195153621579749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 n - A010051 (A216688 n).toNat

end

end A054228.P1453195153621579749

/-! ## A054228.P15718647323332061090

`A028495(n)-A102683(A028495(n)²)`
-/

namespace A054228.P15718647323332061090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 n - A102683 (A028495 n ^ 2).toNat

end

end A054228.P15718647323332061090

/-!
# A054229: Number of positive integers <= 2^n of form x^2 + 15 y^2.

The programs for A054229, there is no canonical definition to state claims against.
-/

/-! ## A054229.P11527646786424276756

`A224958(n)-A285097(A132056(n+1))`
-/

namespace A054229.P11527646786424276756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224958 n - A285097 (A132056 (n + 1)).toNat

end

end A054229.P11527646786424276756

/-! ## A054229.P3095495770746478076

`Δ[A023193(A214209(n+1)+A202304(n))]`
-/

namespace A054229.P3095495770746478076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A214209 (n + 1) + A202304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054229.P3095495770746478076

/-! ## A054229.P2716812990197130259

`Δ[A023193(A214209(n+1)+A193832(n+1))]`
-/

namespace A054229.P2716812990197130259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A214209 (n + 1) + A193832 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054229.P2716812990197130259

/-! ## A054229.P11874632130470606951

`A391490(A148685(n))`
-/

namespace A054229.P11874632130470606951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391490 (A148685 n).toNat

end

end A054229.P11874632130470606951

/-! ## A054229.P14260141946711554922

`A000196(A082733(n+1))-∑{e}[n+1, #-1]`
-/

namespace A054229.P14260141946711554922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A082733 (n + 1)).toNat - ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1)

end

end A054229.P14260141946711554922

/-!
# A054230: Number of positive integers <= 2^n of form x^2 + 17 y^2.

The programs for A054230, there is no canonical definition to state claims against.
-/

/-! ## A054230.P14815221642102297789

`A026819(A079996(n)+A028956(n))`
-/

namespace A054230.P14815221642102297789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A079996 n + A028956 n).toNat

end

end A054230.P14815221642102297789

/-! ## A054230.P2989880511279313063

`A022003(n)+A000194(A001168(n))`
-/

namespace A054230.P2989880511279313063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n + A000194 (A001168 n).toNat

end

end A054230.P2989880511279313063

/-! ## A054230.P16578981524664212936

`A003056(or(A148329(n), A347589(n)))`
-/

namespace A054230.P16578981524664212936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lor (A148329 n) (A347589 n)).toNat

end

end A054230.P16578981524664212936

/-! ## A054230.P13645606205935329494

`A025427(n+1)+A000194(A001168(n))`
-/

namespace A054230.P13645606205935329494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (n + 1) + A000194 (A001168 n).toNat

end

end A054230.P13645606205935329494

/-! ## A054230.P4836960155137627496

`A003056(or(n, A148329(n)-A003056(n)))`
-/

namespace A054230.P4836960155137627496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lor (n : ℤ) (A148329 n - A003056 n)).toNat

end

end A054230.P4836960155137627496

/-!
# A054231: Number of positive integers <= 2^n of form x^2 + 18 y^2.

The programs for A054231, there is no canonical definition to state claims against.
-/

/-! ## A054231.P14523014981995772714

`A100795(A114500(n))`
-/

namespace A054231.P14523014981995772714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (A114500 n).toNat

end

end A054231.P14523014981995772714

/-! ## A054231.P6727541890367676823

`A074712(A280275(n))`
-/

namespace A054231.P6727541890367676823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074712 (A280275 n).toNat

end

end A054231.P6727541890367676823

/-! ## A054231.P10424372855477248747

`A003056(xor(A000073(n), A261588(n)))`
-/

namespace A054231.P10424372855477248747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.xor (A000073 n) (A261588 n)).toNat

end

end A054231.P10424372855477248747

/-! ## A054231.P16944254641142888422

`A085761(A263594(n+1))`
-/

namespace A054231.P16944254641142888422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085761 (A263594 (n + 1)).toNat

end

end A054231.P16944254641142888422

/-! ## A054231.P18085899259653562194

`A036615(n)+A011655(A019583(n))`
-/

namespace A054231.P18085899259653562194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036615 n + A011655 (A019583 n).toNat

end

end A054231.P18085899259653562194

/-!
# A054232: Number of positive integers <= 2^n of form x^2 + 19 y^2.

The programs for A054232, there is no canonical definition to state claims against.
-/

/-! ## A054232.P12260366910900071009

`A073188(A073192(n))-char[A008864(n+1)]`
-/

namespace A054232.P12260366910900071009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A073192 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A054232.P12260366910900071009

/-! ## A054232.P4908833300210478151

`A103285(n)-A059841(A103293(n))`
-/

namespace A054232.P4908833300210478151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103285 n - A059841 (A103293 n).toNat

end

end A054232.P4908833300210478151

/-! ## A054232.P15138827384887515835

`A213709(n)-A037833(∑[A108360(n)])`
-/

namespace A054232.P15138827384887515835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213709 n - A037833 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054232.P15138827384887515835

/-! ## A054232.P17891898261149681437

`A003056(A113040(n+1)-A088330(n))`
-/

namespace A054232.P17891898261149681437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A113040 (n + 1) - A088330 (n + 10)).toNat

end

end A054232.P17891898261149681437

/-! ## A054232.P13592347839012532258

`A192804(n+1)-A285515(A103293(n))`
-/

namespace A054232.P13592347839012532258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 (n + 1) - A285515 (A103293 n).toNat

end

end A054232.P13592347839012532258

/-!
# A054233: Number of positive integers <= 2^n of form x^2 + 20 y^2.

The programs for A054233, there is no canonical definition to state claims against.
-/

/-! ## A054233.P15996870292819498726

`A137734(n*A082582(n))`
-/

namespace A054233.P15996870292819498726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 ((n : ℤ) * A082582 n).toNat

end

end A054233.P15996870292819498726

/-! ## A054233.P15039128296992529348

`A137734(lcm(n, A082582(n)))`
-/

namespace A054233.P15039128296992529348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (Int.lcm (n : ℤ) (A082582 n))

end

end A054233.P15039128296992529348

/-! ## A054233.P3307383400842620197

`A137734(n*A025242(n+1))`
-/

namespace A054233.P3307383400842620197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 ((n : ℤ) * A025242 (n + 1)).toNat

end

end A054233.P3307383400842620197

/-! ## A054233.P11063775557426028968

`A003984(or(A003056(n), A318395(n)))`
-/

namespace A054233.P11063775557426028968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (Int.lor (A003056 n) (A318395 n)).toNat

end

end A054233.P11063775557426028968

/-! ## A054233.P8644550550179004007

`A022858(n+1)-A326341(A182222(n))`
-/

namespace A054233.P8644550550179004007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022858 (n + 1) - A326341 (A182222 n).toNat

end

end A054233.P8644550550179004007

/-!
# A054234: Consider all integer triples (i,j,k), j,k>0, with i^3=j^3+binomial(k+2,3), ordered by increasing i; sequence gives i values.

The programs for A054234, there is no canonical definition to state claims against.
-/

/-! ## A054234.P12136000226156202504

`A354972(2*(n+2))%A003658(A087804(n+1))`
-/

namespace A054234.P12136000226156202504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354972 (2 * (n + 2))) (A003658 (A087804 (n + 1)).toNat)

end

end A054234.P12136000226156202504

/-!
# A054237: Pair addition table cast as diagonal numbers.

The programs for A054237, there is no canonical definition to state claims against.
-/

/-! ## A054237.P920867588404354050

`A076620(or(A183362(n+1), A209610(n+1)))`
-/

namespace A054237.P920867588404354050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076620 (Int.lor (A183362 (n + 1)) (A209610 (n + 1))).toNat

end

end A054237.P920867588404354050

/-! ## A054237.P14025994376163478493

`A087061(n)+A004218(A139459(n))`
-/

namespace A054237.P14025994376163478493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 n + A004218 (A139459 n).toNat

end

end A054237.P14025994376163478493

/-! ## A054237.P12981920445402860695

`A227944(A091378(n))+A003056(n)`
-/

namespace A054237.P12981920445402860695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227944 (A091378 n).toNat + A003056 n

end

end A054237.P12981920445402860695

/-! ## A054237.P13315784146708075819

`A076620(A209610(n+1)+A183362(n+1))`
-/

namespace A054237.P13315784146708075819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076620 (A209610 (n + 1) + A183362 (n + 1)).toNat

end

end A054237.P13315784146708075819

/-! ## A054237.P18307545419127298894

`A062153(A204197(n+1)*A300273(n+1))`
-/

namespace A054237.P18307545419127298894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A204197 (n + 1) * A300273 (n + 1)).toNat

end

end A054237.P18307545419127298894

/-!
# A054238: Array read by downward antidiagonals: T(i,j) = bits of binary expansion of i interleaved with that of j.

The programs for A054238, the canonical program `A054238.P17285390839564699796` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054238 has offset 0).

The definition of A054238 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A054238.P17285390839564699796

`A000695(row(n)-col(n))+2*A000695(col(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054238

/-- `A000695(row(n)-col(n))+2*A000695(col(n))` -/
def P17285390839564699796.Spec : Prop :=
  ∀ n, P17285390839564699796.a n = A054238 n

theorem P17285390839564699796.correct : P17285390839564699796.Spec := by
  intro n
  simp only [A054238]

end A054238

/-! ## A054238.P1110701450639548861

`A163356(A163357(n))`
-/

namespace A054238.P1110701450639548861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163356 (A163357 n).toNat

end

end A054238.P1110701450639548861

namespace A054238

/-- `A163356(A163357(n))` -/
def P1110701450639548861.Spec : Prop :=
  ∀ n, P1110701450639548861.a n = A054238 n

end A054238

/-! ## A054238.P3222260241080628175

`A163356(A163361(n+1)-1)`
-/

namespace A054238.P3222260241080628175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163356 (A163361 (n + 1) - 1).toNat

end

end A054238.P3222260241080628175

namespace A054238

/-- `A163356(A163361(n+1)-1)` -/
def P3222260241080628175.Spec : Prop :=
  ∀ n, P3222260241080628175.a n = A054238 n

end A054238

/-! ## A054238.P5767590528979508754

`A163356(A163356(A163907(n)))`
-/

namespace A054238.P5767590528979508754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163356 (A163356 (A163907 n).toNat).toNat

end

end A054238.P5767590528979508754

namespace A054238

/-- `A163356(A163356(A163907(n)))` -/
def P5767590528979508754.Spec : Prop :=
  ∀ n, P5767590528979508754.a n = A054238 n

end A054238

/-! ## A054238.P462923440176620148

`A346453(A061579(n))`
-/

namespace A054238.P462923440176620148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346453 (A061579 n).toNat

end

end A054238.P462923440176620148

namespace A054238

/-- `A346453(A061579(n))` -/
def P462923440176620148.Spec : Prop :=
  ∀ n, P462923440176620148.a n = A054238 n

end A054238

/-! ## A054238.P8252529464190806488

`A163906(A163907(n))`
-/

namespace A054238.P8252529464190806488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163906 (A163907 n).toNat

end

end A054238.P8252529464190806488

namespace A054238

/-- `A163906(A163907(n))` -/
def P8252529464190806488.Spec : Prop :=
  ∀ n, P8252529464190806488.a n = A054238 n

end A054238

/-! ## A054238.P5045958100475135701

`A163916(A163917(n))`
-/

namespace A054238.P5045958100475135701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163916 (A163917 n).toNat

end

end A054238.P5045958100475135701

namespace A054238

/-- `A163916(A163917(n))` -/
def P5045958100475135701.Spec : Prop :=
  ∀ n, P5045958100475135701.a n = A054238 n

end A054238

/-! ## A054238.P1444906278953524535

`A057300(A346453(n))`
-/

namespace A054238.P1444906278953524535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A346453 n).toNat

end

end A054238.P1444906278953524535

namespace A054238

/-- `A057300(A346453(n))` -/
def P1444906278953524535.Spec : Prop :=
  ∀ n, P1444906278953524535.a n = A054238 n

end A054238

/-! ## A054238.P17511529823070518923

`A057300(A163486(A147995(n)))`
-/

namespace A054238.P17511529823070518923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A163486 (A147995 n).toNat).toNat

end

end A054238.P17511529823070518923

namespace A054238

/-- `A057300(A163486(A147995(n)))` -/
def P17511529823070518923.Spec : Prop :=
  ∀ n, P17511529823070518923.a n = A054238 n

end A054238

/-! ## A054238.P11880422422868479834

`A163357(A163908(A163357(A163357(A163358(n)))))`
-/

namespace A054238.P11880422422868479834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (A163908 (A163357 (A163357 (A163358 n).toNat).toNat).toNat).toNat

end

end A054238.P11880422422868479834

namespace A054238

/-- `A163357(A163908(A163357(A163357(A163358(n)))))` -/
def P11880422422868479834.Spec : Prop :=
  ∀ n, P11880422422868479834.a n = A054238 n

end A054238

/-! ## A054238.P12489705466416987686

`A163906(A163356(A163917(A163355(A163356(n)))))`
-/

namespace A054238.P12489705466416987686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163906 (A163356 (A163917 (A163355 (A163356 n).toNat).toNat).toNat).toNat

end

end A054238.P12489705466416987686

namespace A054238

/-- `A163906(A163356(A163917(A163355(A163356(n)))))` -/
def P12489705466416987686.Spec : Prop :=
  ∀ n, P12489705466416987686.a n = A054238 n

end A054238

/-! ## A054238.P16938340340067018161

`A163906(A163355(A163357(A163906(A163905(n)))))`
-/

namespace A054238.P16938340340067018161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163906 (A163355 (A163357 (A163906 (A163905 n).toNat).toNat).toNat).toNat

end

end A054238.P16938340340067018161

namespace A054238

/-- `A163906(A163355(A163357(A163906(A163905(n)))))` -/
def P16938340340067018161.Spec : Prop :=
  ∀ n, P16938340340067018161.a n = A054238 n

end A054238

/-! ## A054238.P3964155752500093482

`A163357(A163908(A163357(A163905(A163906(n)))))`
-/

namespace A054238.P3964155752500093482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (A163908 (A163357 (A163905 (A163906 n).toNat).toNat).toNat).toNat

end

end A054238.P3964155752500093482

namespace A054238

/-- `A163357(A163908(A163357(A163905(A163906(n)))))` -/
def P3964155752500093482.Spec : Prop :=
  ∀ n, P3964155752500093482.a n = A054238 n

end A054238

/-! ## A054238.P6449894566748145638

`A163357(A163908(A163357(A163907(A163908(n)))))`
-/

namespace A054238.P6449894566748145638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (A163908 (A163357 (A163907 (A163908 n).toNat).toNat).toNat).toNat

end

end A054238.P6449894566748145638

namespace A054238

/-- `A163357(A163908(A163357(A163907(A163908(n)))))` -/
def P6449894566748145638.Spec : Prop :=
  ∀ n, P6449894566748145638.a n = A054238 n

end A054238

/-! ## A054238.P16496113815911745305

`A163357(A163908(A163357(A163917(A163918(n)))))`
-/

namespace A054238.P16496113815911745305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (A163908 (A163357 (A163917 (A163918 n).toNat).toNat).toNat).toNat

end

end A054238.P16496113815911745305

namespace A054238

/-- `A163357(A163908(A163357(A163917(A163918(n)))))` -/
def P16496113815911745305.Spec : Prop :=
  ∀ n, P16496113815911745305.a n = A054238 n

end A054238

/-! ## A054238.P5832510894399313862

`A163916(A163905(A163357(A163916(A163915(n)))))`
-/

namespace A054238.P5832510894399313862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163916 (A163905 (A163357 (A163916 (A163915 n).toNat).toNat).toNat).toNat

end

end A054238.P5832510894399313862

namespace A054238

/-- `A163916(A163905(A163357(A163916(A163915(n)))))` -/
def P5832510894399313862.Spec : Prop :=
  ∀ n, P5832510894399313862.a n = A054238 n

end A054238

/-! ## A054238.P15920249470593138180

`A048679(A072793(n))`
-/

namespace A054238.P15920249470593138180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (A072793 n).toNat

end

end A054238.P15920249470593138180

namespace A054238

/-- `A048679(A072793(n))` -/
def P15920249470593138180.Spec : Prop :=
  ∀ n, P15920249470593138180.a n = A054238 n

end A054238

/-! ## A054238.P8510732816714215689

`A064707(A163233(n))`
-/

namespace A054238.P8510732816714215689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064707 (A163233 n).toNat

end

end A054238.P8510732816714215689

namespace A054238

/-- `A064707(A163233(n))` -/
def P8510732816714215689.Spec : Prop :=
  ∀ n, P8510732816714215689.a n = A054238 n

end A054238

/-! ## A054238.P6315026631710787438

`A163486(A163545(n))`
-/

namespace A054238.P6315026631710787438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163486 (A163545 n).toNat

end

end A054238.P6315026631710787438

namespace A054238

/-- `A163486(A163545(n))` -/
def P6315026631710787438.Spec : Prop :=
  ∀ n, P6315026631710787438.a n = A054238 n

end A054238

/-! ## A054238.P13178662840118711939

`A057300(A006068(A006068(A163235(n))))`
-/

namespace A054238.P13178662840118711939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A006068 (A006068 (A163235 n).toNat).toNat).toNat

end

end A054238.P13178662840118711939

namespace A054238

/-- `A057300(A006068(A006068(A163235(n))))` -/
def P13178662840118711939.Spec : Prop :=
  ∀ n, P13178662840118711939.a n = A054238 n

end A054238

/-!
# A054239: Inverse of A054238.

The programs for A054239, there is no canonical definition to state claims against.
-/

/-! ## A054239.P9795154902255705499

`A000217(A393253(n))+A059906(n)`
-/

namespace A054239.P9795154902255705499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A393253 n).toNat + A059906 n

end

end A054239.P9795154902255705499

/-! ## A054239.P11839535927089937283

`A163358(A163355(n))`
-/

namespace A054239.P11839535927089937283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 (A163355 n).toNat

end

end A054239.P11839535927089937283

/-! ## A054239.P7703803995719859518

`A163908(A163905(n))`
-/

namespace A054239.P7703803995719859518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163908 (A163905 n).toNat

end

end A054239.P7703803995719859518

/-! ## A054239.P75944397158649840

`A163918(A163915(n))`
-/

namespace A054239.P75944397158649840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163918 (A163915 n).toNat

end

end A054239.P75944397158649840

/-! ## A054239.P3079648178860793288

`A163358(A163905(A163356(n)))`
-/

namespace A054239.P3079648178860793288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 (A163905 (A163356 n).toNat).toNat

end

end A054239.P3079648178860793288

/-! ## A054239.P14119567547330312607

`A163358(A163907(A163358(n)))`
-/

namespace A054239.P14119567547330312607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 (A163907 (A163358 n).toNat).toNat

end

end A054239.P14119567547330312607

/-! ## A054239.P5110100024073576424

`A163358(A163915(A163906(n)))`
-/

namespace A054239.P5110100024073576424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 (A163915 (A163906 n).toNat).toNat

end

end A054239.P5110100024073576424

/-! ## A054239.P18021261698033723436

`A163358(A163917(A163908(n)))`
-/

namespace A054239.P18021261698033723436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 (A163917 (A163908 n).toNat).toNat

end

end A054239.P18021261698033723436

/-! ## A054239.P4455163895308452668

`A163358(A163905(A163905(A163916(n))))`
-/

namespace A054239.P4455163895308452668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 (A163905 (A163905 (A163916 n).toNat).toNat).toNat

end

end A054239.P4455163895308452668

/-! ## A054239.P16127179713693459690

`A163358(A302843(A302846(A302843(n))))`
-/

namespace A054239.P16127179713693459690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 (A302843 (A302846 (A302843 n).toNat).toNat).toNat

end

end A054239.P16127179713693459690

/-! ## A054239.P12019391046587896211

`A163918(A163905(A163905(A163907(A163918(n)))))`
-/

namespace A054239.P12019391046587896211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163918 (A163905 (A163905 (A163907 (A163918 n).toNat).toNat).toNat).toNat

end

end A054239.P12019391046587896211

/-! ## A054239.P3263782938139817180

`A163908(A163355(A163355(A163908(A163907(n)))))`
-/

namespace A054239.P3263782938139817180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163908 (A163355 (A163355 (A163908 (A163907 n).toNat).toNat).toNat).toNat

end

end A054239.P3263782938139817180

/-! ## A054239.P9328200844958446114

`A163908(A163355(A163355(A163918(A163917(n)))))`
-/

namespace A054239.P9328200844958446114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163908 (A163355 (A163355 (A163918 (A163917 n).toNat).toNat).toNat).toNat

end

end A054239.P9328200844958446114

/-! ## A054239.P15353765015128537691

`A163234(A064706(n))`
-/

namespace A054239.P15353765015128537691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163234 (A064706 n).toNat

end

end A054239.P15353765015128537691

/-! ## A054239.P17331748161238621963

`A163546(A163485(n))`
-/

namespace A054239.P17331748161238621963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163546 (A163485 n).toNat

end

end A054239.P17331748161238621963

/-! ## A054239.P10423630787569104315

`A163234(xor(n, A002265(n)))`
-/

namespace A054239.P10423630787569104315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163234 (Int.xor (n : ℤ) (A002265 n)).toNat

end

end A054239.P10423630787569104315

/-! ## A054239.P3082192270245447849

`A163234(A003188(A003188(n)))`
-/

namespace A054239.P3082192270245447849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163234 (A003188 (A003188 n).toNat).toNat

end

end A054239.P3082192270245447849

/-! ## A054239.P11851236885572737466

`A163544(A163485(A057300(n)))`
-/

namespace A054239.P11851236885572737466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163544 (A163485 (A057300 n).toNat).toNat

end

end A054239.P11851236885572737466

/-! ## A054239.P9665157911860259534

`A163238(A003188(A003188(A163241(n))))`
-/

namespace A054239.P9665157911860259534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163238 (A003188 (A003188 (A163241 n).toNat).toNat).toNat

end

end A054239.P9665157911860259534

/-! ## A054239.P13811028126614460775

`A061579(A163544(A163485(A061579(A061579(n)))))`
-/

namespace A054239.P13811028126614460775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A163544 (A163485 (A061579 (A061579 n).toNat).toNat).toNat).toNat

end

end A054239.P13811028126614460775

/-!
# A054240: Bit-interleaved number addition table; like binary addition but carries shift 2 instead of 1; addition base sqrt(2).

The programs for A054240, there is no canonical definition to state claims against.
-/

/-! ## A054240.P8749098956513732242

`A132747(A129455(n))+A003056(n)`
-/

namespace A054240.P8749098956513732242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (A129455 n).toNat + A003056 n

end

end A054240.P8749098956513732242

/-! ## A054240.P11444194206936734616

`A163352(n)+A132747(A129455(n))`
-/

namespace A054240.P11444194206936734616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 n + A132747 (A129455 n).toNat

end

end A054240.P11444194206936734616

/-! ## A054240.P561116120843019148

`A132747(A129455(n))+log2(A137688(n))`
-/

namespace A054240.P561116120843019148
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A132747 (A129455 n).toNat : ℝ) + Real.logb 2 (A137688 n : ℝ)

end

end A054240.P561116120843019148

/-! ## A054240.P825302271802297116

`A132747(A129455(n))+∑[A073424(n)]`
-/

namespace A054240.P825302271802297116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (A129455 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054240.P825302271802297116

/-! ## A054240.P10219856802536964079

`A294317(A286109(n)%A124110(2*n+3))`
-/

namespace A054240.P10219856802536964079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 (Int.tmod (A286109 n) (A124110 (2 * n + 3))).toNat

end

end A054240.P10219856802536964079

/-!
# A054241: Number of partitions of bit-interleaved numbers; partitions of n in base sqrt(2).

The programs for A054241, there is no canonical definition to state claims against.
-/

/-! ## A054241.P11819299627340109076

`A054225(A054239(n))`
-/

namespace A054241.P11819299627340109076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A054239 n).toNat

end

end A054241.P11819299627340109076

/-!
# A054242: Triangle read by rows: row n (n>=0) gives the number of partitions of (n,0), (n-1,1), (n-2,2), ..., (0,n) respectively into sums of distinct pairs.

The programs for A054242, there is no canonical definition to state claims against.
-/

/-! ## A054242.P8456384533408596740

`A045778(A278222(A081118(n+1)-1))`
-/

namespace A054242.P8456384533408596740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A278222 (A081118 (n + 1) - 1).toNat).toNat

end

end A054242.P8456384533408596740

/-! ## A054242.P6870802359717770473

`A318286(A146985(n))`
-/

namespace A054242.P6870802359717770473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (A146985 n).toNat

end

end A054242.P6870802359717770473

/-! ## A054242.P11299123685302815668

`A045778(A036561(n))`
-/

namespace A054242.P11299123685302815668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A036561 n).toNat

end

end A054242.P11299123685302815668

/-! ## A054242.P7278042249124002094

`A045778(A082234(n+1))`
-/

namespace A054242.P7278042249124002094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A082234 (n + 1)).toNat

end

end A054242.P7278042249124002094

/-! ## A054242.P554002985343462739

`A045778(A230445(n)+1)`
-/

namespace A054242.P554002985343462739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A230445 n + 1).toNat

end

end A054242.P554002985343462739

/-! ## A054242.P7233993176376148491

`A045778(A094617(n+1)-1)`
-/

namespace A054242.P7233993176376148491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A094617 (n + 1) - 1).toNat

end

end A054242.P7233993176376148491

/-! ## A054242.P3720767361304851705

`A045778(A081954(n+1)/2)`
-/

namespace A054242.P3720767361304851705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (SequenceMachineLib.roundAway ((A081954 (n + 1) : ℚ) / 2)).toNat

end

end A054242.P3720767361304851705

/-! ## A054242.P7973256000670003724

`A045778(A175840(A061579(n)))`
-/

namespace A054242.P7973256000670003724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A175840 (A061579 n).toNat).toNat

end

end A054242.P7973256000670003724

/-! ## A054242.P13277339352662564338

`A045778(A332815(record[A233277(n)]))`
-/

namespace A054242.P13277339352662564338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A332815 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A054242.P13277339352662564338

/-! ## A054242.P16571405668266537219

`A045778(A013620(n)/A007318(n))`
-/

namespace A054242.P16571405668266537219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (SequenceMachineLib.roundAway ((A013620 n : ℚ) / (A007318 n : ℚ))).toNat

end

end A054242.P16571405668266537219

/-!
# A054243: Number of partitions of n into distinct positive parts <= n, where parts are combined by XOR.

The programs for A054243, the canonical program `A054243.P195251831284751513` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054243 has offset 0).

The definition of A054243 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054243.P195251831284751513

`A000079(n)/A062383(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A054243

/-- `A000079(n)/A062383(n)` -/
def P195251831284751513.Spec : Prop :=
  ∀ n, P195251831284751513.a n = (A054243 n : ℚ)

end A054243

/-! ## A054243.P147500781198168908

`2^floor(n-log2(n+1))`
-/

namespace A054243.P147500781198168908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℝ) - Real.logb 2 (n + 1 : ℝ)⌋ : ℤ)

end

end A054243.P147500781198168908

namespace A054243

/-- `2^floor(n-log2(n+1))` -/
def P147500781198168908.Spec : Prop :=
  ∀ n, P147500781198168908.a n = (A054243 n : ℚ)

end A054243

/-! ## A054243.P14519078744041374874

`a(n-1)+a(n-1)%(a(n-1)+(2*a(n-1))%n)` with `a(0)=1`
-/

namespace A054243.P14519078744041374874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (n - 1) % (a (n - 1) + 2 * a (n - 1) % n)

end

end A054243.P14519078744041374874

namespace A054243

/-- `a(n-1)+a(n-1)%(a(n-1)+(2*a(n-1))%n)` -/
def P14519078744041374874.Spec : Prop :=
  ∀ n, (P14519078744041374874.a n : ℤ) = A054243 n

end A054243

/-! ## A054243.P5450956323805435249

`∏[A043529(abs(1-n))]`
-/

namespace A054243.P5450956323805435249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A054243.P5450956323805435249

namespace A054243

/-- `∏[A043529(abs(1-n))]` -/
def P5450956323805435249.Spec : Prop :=
  ∀ n, P5450956323805435249.a n = A054243 n

end A054243

/-! ## A054243.P15322105954389762737

`∏[A000032(∏{p}[n, val(#, 2)])]`
-/

namespace A054243.P15322105954389762737
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A054243.P15322105954389762737

namespace A054243

/-- `∏[A000032(∏{p}[n, val(#, 2)])]` -/
def P15322105954389762737.Spec : Prop :=
  ∀ n, P15322105954389762737.a n = A054243 n

end A054243

/-! ## A054243.P9997261557062095388

`a(n-1)*A201219(n)` with `a(0)=1, a(1)=1`
-/

namespace A054243.P9997261557062095388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A201219 n

end

end A054243.P9997261557062095388

namespace A054243

/-- `a(n-1)*A201219(n)` -/
def P9997261557062095388.Spec : Prop :=
  ∀ n, P9997261557062095388.a n = A054243 n

end A054243

/-! ## A054243.P2170399215427757634

`∏[2-A063974(2*n+1)]`
-/

namespace A054243.P2170399215427757634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A063974 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A054243.P2170399215427757634

namespace A054243

/-- `∏[2-A063974(2*n+1)]` -/
def P2170399215427757634.Spec : Prop :=
  ∀ n, P2170399215427757634.a n = A054243 n

end A054243

/-! ## A054243.P15617387478921508688

`∏[A000010((n+2)%∏{p}[n, #]+1)]`
-/

namespace A054243.P15617387478921508688
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 2) % (∏ p ∈ Nat.primeFactors (f2 n), p) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A054243.P15617387478921508688

namespace A054243

/-- `∏[A000010((n+2)%∏{p}[n, #]+1)]` -/
def P15617387478921508688.Spec : Prop :=
  ∀ n, P15617387478921508688.a n = A054243 n

end A054243

/-! ## A054243.P8940406557040472794

`∏[A000005(a(floor(n/2))+n%2)]` with `a(0)=1, a(1)=1`
-/

namespace A054243.P8940406557040472794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A000005 (f1 ⌊(n : ℚ) / 2⌋.toNat + ((n % 2 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A054243.P8940406557040472794

namespace A054243

/-- `∏[A000005(a(floor(n/2))+n%2)]` -/
def P8940406557040472794.Spec : Prop :=
  ∀ n, P8940406557040472794.a n = A054243 n

end A054243

/-! ## A054243.P3408840624726681870

`gcd(2, A006530(2*n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A054243.P3408840624726681870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd 2 (A006530 (2 * n) + 1) * a (n - 1)

end

end A054243.P3408840624726681870

namespace A054243

/-- `gcd(2, A006530(2*n)+1)*a(n-1)` -/
def P3408840624726681870.Spec : Prop :=
  ∀ n, (P3408840624726681870.a n : ℤ) = A054243 n

end A054243

/-! ## A054243.P1984191576039641093

`(2-C(A000010(2*n), n))*a(n-1)` with `a(0)=1`
-/

namespace A054243.P1984191576039641093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 - (Nat.choose (A000010 (2 * n)).toNat n : ℤ)) * a (n - 1)

end

end A054243.P1984191576039641093

namespace A054243

/-- `(2-C(A000010(2*n), n))*a(n-1)` -/
def P1984191576039641093.Spec : Prop :=
  ∀ n, P1984191576039641093.a n = A054243 n

end A054243

/-! ## A054243.P14963445160505170547

`∏[A020639(A093659(n))]`
-/

namespace A054243.P14963445160505170547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A093659 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A054243.P14963445160505170547

namespace A054243

/-- `∏[A020639(A093659(n))]` -/
def P14963445160505170547.Spec : Prop :=
  ∀ n, P14963445160505170547.a n = A054243 n

end A054243

/-! ## A054243.P2670663757264044373

`∏[A020639(A284001(n))]`
-/

namespace A054243.P2670663757264044373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A284001 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A054243.P2670663757264044373

namespace A054243

/-- `∏[A020639(A284001(n))]` -/
def P2670663757264044373.Spec : Prop :=
  ∀ n, P2670663757264044373.a n = A054243 n

end A054243

/-! ## A054243.P8110032133471080310

`∏[A020639(A324342(n))]`
-/

namespace A054243.P8110032133471080310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A324342 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A054243.P8110032133471080310

namespace A054243

/-- `∏[A020639(A324342(n))]` -/
def P8110032133471080310.Spec : Prop :=
  ∀ n, P8110032133471080310.a n = A054243 n

end A054243

/-! ## A054243.P206724540946117487

`∏[A020639(A342462(n))]`
-/

namespace A054243.P206724540946117487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A342462 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A054243.P206724540946117487

namespace A054243

/-- `∏[A020639(A342462(n))]` -/
def P206724540946117487.Spec : Prop :=
  ∀ n, P206724540946117487.a n = A054243 n

end A054243

/-! ## A054243.P14307289426568867622

`∏[A020639(A000120(n)!)]`
-/

namespace A054243.P14307289426568867622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial (A000120 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A054243.P14307289426568867622

namespace A054243

/-- `∏[A020639(A000120(n)!)]` -/
def P14307289426568867622.Spec : Prop :=
  ∀ n, P14307289426568867622.a n = A054243 n

end A054243

/-! ## A054243.P3706341177309309423

`∏[A086669(A131136(n+1))]`
-/

namespace A054243.P3706341177309309423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086669 (A131136 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A054243.P3706341177309309423

namespace A054243

/-- `∏[A086669(A131136(n+1))]` -/
def P3706341177309309423.Spec : Prop :=
  ∀ n, P3706341177309309423.a n = A054243 n

end A054243

/-! ## A054243.P5707135634997789506

`∏[A020639(A000010(∏{p}[n, #]))]`
-/

namespace A054243.P5707135634997789506
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (∏ p ∈ Nat.primeFactors (f2 n), p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A054243.P5707135634997789506

namespace A054243

/-- `∏[A020639(A000010(∏{p}[n, #]))]` -/
def P5707135634997789506.Spec : Prop :=
  ∀ n, P5707135634997789506.a n = A054243 n

end A054243

/-! ## A054243.P11631678971592573515

`A000079(n-A029837(n+1))`
-/

namespace A054243.P11631678971592573515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ((n : ℤ) - A029837 (n + 1)).toNat

end

end A054243.P11631678971592573515

namespace A054243

/-- `A000079(n-A029837(n+1))` -/
def P11631678971592573515.Spec : Prop :=
  ∀ n, P11631678971592573515.a n = A054243 n

end A054243

/-! ## A054243.P16652567083776186944

`A000079(n+1-A070941(n))`
-/

namespace A054243.P16652567083776186944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ((n + 1 : ℤ) - A070941 n).toNat

end

end A054243.P16652567083776186944

namespace A054243

/-- `A000079(n+1-A070941(n))` -/
def P16652567083776186944.Spec : Prop :=
  ∀ n, P16652567083776186944.a n = A054243 n

end A054243

/-!
# A054244: Number of partitions of n into distinct positive parts <= n, with parts combined by IOR (inclusive or).

The programs for A054244, there is no canonical definition to state claims against.
-/

/-! ## A054244.P9245468427527295139

`A003465(A000120(n+1))`
-/

namespace A054244.P9245468427527295139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003465 (A000120 (n + 1)).toNat

end

end A054244.P9245468427527295139

/-! ## A054244.P17567060373662886949

`A003465(log2(2*2^(n-∑[val(n+1, 2)])))`
-/

namespace A054244.P17567060373662886949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003465 (SequenceMachineLib.roundAway (Real.logb 2 (2 * (2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ) : ℝ))).toNat

end

end A054244.P17567060373662886949

/-! ## A054244.P11996195045673680232

`A003465(A048881(n)+1)`
-/

namespace A054244.P11996195045673680232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003465 (A048881 n + 1).toNat

end

end A054244.P11996195045673680232

/-! ## A054244.P14833416905798331738

`A003465(∑[1-A007814(n+1)])`
-/

namespace A054244.P14833416905798331738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003465 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054244.P14833416905798331738

/-! ## A054244.P1463494866062173639

`A003465(A070939(2^(n-∑[val(n+1, 2)])))`
-/

namespace A054244.P1463494866062173639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003465 (A070939 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))).toNat).toNat

end

end A054244.P1463494866062173639

/-! ## A054244.P14022636993060876545

`A069626(A019565(n+1))`
-/

namespace A054244.P14022636993060876545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069626 (A019565 (n + 1)).toNat

end

end A054244.P14022636993060876545

/-!
# A054246: Non-Cayley-isomorphic circulant p^2-tournaments, indexed by odd primes p.

The programs for A054246, there is no canonical definition to state claims against.
-/

/-! ## A054246.P7371865910861919462

`A000016(floor(p?[2*n+1]/2))²`
-/

namespace A054246.P7371865910861919462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌋.toNat ^ 2

end

end A054246.P7371865910861919462

/-! ## A054246.P8643866448712922824

`A000016(Δ[A005521(n)])²`
-/

namespace A054246.P8643866448712922824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 (f1 (n + 1) - f1 n).toNat ^ 2

end

end A054246.P8643866448712922824

/-! ## A054246.P15126214581793167345

`A002086(Δ[A005521(n)])²`
-/

namespace A054246.P15126214581793167345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002086 (f1 (n + 1) - f1 n).toNat ^ 2

end

end A054246.P15126214581793167345

/-! ## A054246.P8361583258578728055

`A000016(A005097(n+1))²`
-/

namespace A054246.P8361583258578728055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 (A005097 (n + 1)).toNat ^ 2

end

end A054246.P8361583258578728055

/-! ## A054246.P17377419912953099288

`A000016(A082583(n+1))²`
-/

namespace A054246.P17377419912953099288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 (A082583 (n + 1)).toNat ^ 2

end

end A054246.P17377419912953099288

/-!
# A054247: Number of n X n binary matrices under action of dihedral group of the square D_4.

The programs for A054247, there is no canonical definition to state claims against.
-/

/-! ## A054247.P11458122956811019489

`A343097(∑[n+3])`
-/

namespace A054247.P11458122956811019489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054247.P11458122956811019489

/-! ## A054247.P5270356611517105511

`and(-1, A343097(A141214(n)))`
-/

namespace A054247.P5270356611517105511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A343097 (A141214 n).toNat)

end

end A054247.P5270356611517105511

/-! ## A054247.P13162929422230411268

`record[A343097(record[n-A210472(n)])]`
-/

namespace A054247.P13162929422230411268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A210472 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054247.P13162929422230411268

/-! ## A054247.P1926181514286776358

`record[A343097(eq[1, A246106(n+1)])]`
-/

namespace A054247.P1926181514286776358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054247.P1926181514286776358

/-! ## A054247.P7491792546962946396

`record[A343097(eq[1, A343097(n+1)])]`
-/

namespace A054247.P7491792546962946396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054247.P7491792546962946396

/-!
# A054248: Binary entropy: a(n) = n + min { a(k)+a(n-k) : 1 <= k <= n-1 }.

The programs for A054248, the canonical program `A054248.P10611427663173372780` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054248 has offset 1).

The definition of A054248 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054248.P10611427663173372780

`A123753(n)-n%2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054248

/-- `A123753(n)-n%2` -/
def P10611427663173372780.Spec : Prop :=
  ∀ n, P10611427663173372780.a n = A054248 (n + 1)

theorem P10611427663173372780.correct : P10611427663173372780.Spec := by
  intro n
  simp only [A054248, Nat.add_sub_cancel]

end A054248

/-! ## A054248.P9346473751001283793

`∑[ceil(log2(n+1))]+or(1, n)`
-/

namespace A054248.P9346473751001283793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.lor 1 n : ℤ)

end

end A054248.P9346473751001283793

namespace A054248

/-- `∑[ceil(log2(n+1))]+or(1, n)` -/
def P9346473751001283793.Spec : Prop :=
  ∀ n, P9346473751001283793.a n = A054248 (n + 1)

end A054248

/-! ## A054248.P14750234376170354875

`char[2*n]+∑[ceil(log2(2*n+1))]`
-/

namespace A054248.P14750234376170354875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (2 * n + 1 : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A054248.P14750234376170354875

namespace A054248

/-- `char[2*n]+∑[ceil(log2(2*n+1))]` -/
def P14750234376170354875.Spec : Prop :=
  ∀ n, P14750234376170354875.a n = A054248 (n + 1)

end A054248

/-! ## A054248.P8601464505172411329

`floor(A003314(n+1)+log2(gcd(2, n)))`
-/

namespace A054248.P8601464505172411329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003314 (n + 1) : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)⌋

end

end A054248.P8601464505172411329

namespace A054248

/-- `floor(A003314(n+1)+log2(gcd(2, n)))` -/
def P8601464505172411329.Spec : Prop :=
  ∀ n, P8601464505172411329.a n = A054248 (n + 1)

end A054248

/-! ## A054248.P837078215305378622

`∑[A007456(n+1)+(n+1)%2]`
-/

namespace A054248.P837078215305378622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007456 (n + 1) + (((n + 1) % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054248.P837078215305378622

namespace A054248

/-- `∑[A007456(n+1)+(n+1)%2]` -/
def P837078215305378622.Spec : Prop :=
  ∀ n, P837078215305378622.a n = A054248 (n + 1)

end A054248

/-! ## A054248.P13638371966717586825

`∑[ceil(log2(n+1))-A062157(n)+1]`
-/

namespace A054248.P13638371966717586825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉ - A062157 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054248.P13638371966717586825

namespace A054248

/-- `∑[ceil(log2(n+1))-A062157(n)+1]` -/
def P13638371966717586825.Spec : Prop :=
  ∀ n, P13638371966717586825.a n = A054248 (n + 1)

end A054248

/-! ## A054248.P4399122111955250510

`xor(A000035(n), A123753(n))`
-/

namespace A054248.P4399122111955250510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A123753 n)

end

end A054248.P4399122111955250510

namespace A054248

/-- `xor(A000035(n), A123753(n))` -/
def P4399122111955250510.Spec : Prop :=
  ∀ n, P4399122111955250510.a n = A054248 (n + 1)

end A054248

/-! ## A054248.P12985500593790374475

`A392221(A042964(n+1))`
-/

namespace A054248.P12985500593790374475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392221 (A042964 (n + 1)).toNat

end

end A054248.P12985500593790374475

namespace A054248

/-- `A392221(A042964(n+1))` -/
def P12985500593790374475.Spec : Prop :=
  ∀ n, P12985500593790374475.a n = A054248 (n + 1)

end A054248

/-! ## A054248.P3793024801433267019

`A392221(A053438(n+1))`
-/

namespace A054248.P3793024801433267019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392221 (A053438 (n + 1)).toNat

end

end A054248.P3793024801433267019

namespace A054248

/-- `A392221(A053438(n+1))` -/
def P3793024801433267019.Spec : Prop :=
  ∀ n, P3793024801433267019.a n = A054248 (n + 1)

end A054248

/-! ## A054248.P1401922316119287790

`xor(∑[A070939(2*n)], A000035(n))`
-/

namespace A054248.P1401922316119287790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A000035 n)

end

end A054248.P1401922316119287790

namespace A054248

/-- `xor(∑[A070939(2*n)], A000035(n))` -/
def P1401922316119287790.Spec : Prop :=
  ∀ n, P1401922316119287790.a n = A054248 (n + 1)

end A054248

/-!
# A054249: Alternately subtract and add 1 to digits in decimal expansion of Pi.

The programs for A054249, there is no canonical definition to state claims against.
-/

/-! ## A054249.P11499250465992863480

`A000796(n)-(-1)^n`
-/

namespace A054249.P11499250465992863480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) - (-1) ^ n

end

end A054249.P11499250465992863480

/-! ## A054249.P18099028610503982290

`A110883(n)-a(n-1)` with `a(0)=2`
-/

namespace A054249.P18099028610503982290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A110883 n - a (n - 1)

end

end A054249.P18099028610503982290

/-! ## A054249.P16170747185592598744

`dr(A000796(n))-A033999(n)`
-/

namespace A054249.P16170747185592598744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A000796 (n + 1)) : ℤ) - A033999 n

end

end A054249.P16170747185592598744

/-! ## A054249.P15412783055046373826

`A033999(n+1)+A000796(n)`
-/

namespace A054249.P15412783055046373826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + A000796 (n + 1)

end

end A054249.P15412783055046373826

/-! ## A054249.P7335831858065049786

`9-A030644(n)-A033999(n)`
-/

namespace A054249.P7335831858065049786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A030644 (n + 1) - A033999 n

end

end A054249.P7335831858065049786

/-! ## A054249.P12742049019691891021

`A123152(n+1)-(A033999(n)+1)`
-/

namespace A054249.P12742049019691891021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1) - (A033999 n + 1)

end

end A054249.P12742049019691891021

/-! ## A054249.P3438410560341112020

`A065253(n+1)%10-A033999(n)`
-/

namespace A054249.P3438410560341112020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065253 (n + 1)) 10 - A033999 n

end

end A054249.P3438410560341112020

/-! ## A054249.P5256207678742325170

`A042948(n+1)+A000796(n)-A042964(n+1)`
-/

namespace A054249.P5256207678742325170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (n + 1) + (A000796 (n + 1) - A042964 (n + 1))

end

end A054249.P5256207678742325170

/-! ## A054249.P9222559426540984338

`A062157(n+2)+A000796(n)`
-/

namespace A054249.P9222559426540984338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 2) + A000796 (n + 1)

end

end A054249.P9222559426540984338

/-! ## A054249.P10325654408544301951

`A000035(n)+A000796(n)-A000035(n+1)`
-/

namespace A054249.P10325654408544301951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A000796 (n + 1) - A000035 (n + 1))

end

end A054249.P10325654408544301951

/-! ## A054249.P3981724261822908558

`A054354(A054353(n+2))+A000796(n)`
-/

namespace A054249.P3981724261822908558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (A054353 (n + 2)).toNat + A000796 (n + 1)

end

end A054249.P3981724261822908558

/-! ## A054249.P18157683644474665460

`A001355(2*n+1)-(-1)^n`
-/

namespace A054249.P18157683644474665460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1) - (-1) ^ n

end

end A054249.P18157683644474665460

/-! ## A054249.P12702519943010322683

`A087960(Δ[n²])+A000796(n)`
-/

namespace A054249.P12702519943010322683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A000796 (n + 1)

end

end A054249.P12702519943010322683

/-! ## A054249.P12012959969565121763

`A057077(A005408(n+1))+A000796(n)`
-/

namespace A054249.P12012959969565121763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A005408 (n + 1)).toNat + A000796 (n + 1)

end

end A054249.P12012959969565121763

/-! ## A054249.P523618847157598845

`A046974(n)-A059582(n)-(-1)^n+1`
-/

namespace A054249.P523618847157598845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n - A059582 n - (-1) ^ n + 1

end

end A054249.P523618847157598845

/-! ## A054249.P3239657798029311893

`Δ[A059582(n)-and(1, n)]`
-/

namespace A054249.P3239657798029311893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054249.P3239657798029311893

/-! ## A054249.P10641090475026297625

`Δ[A059841(n)+A059582(n)]`
-/

namespace A054249.P10641090475026297625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054249.P10641090475026297625

/-! ## A054249.P804093686143110031

`Δ[A059582(n)]-A033999(n)`
-/

namespace A054249.P804093686143110031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A033999 n

end

end A054249.P804093686143110031

/-! ## A054249.P11341596709797223255

`A033999(n+1)+Δ[A059582(n)]`
-/

namespace A054249.P11341596709797223255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + (f1 (n + 1) - f1 n)

end

end A054249.P11341596709797223255

/-! ## A054249.P8499567490999373429

`A057077(n²+3)+A000796(n)`
-/

namespace A054249.P8499567490999373429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n ^ 2 + 3) + A000796 (n + 1)

end

end A054249.P8499567490999373429

/-!
# A054254: a(n) is n plus the minimum of the a(i)*a(n-i) of the previous i = 1..n-1.

The programs for A054254, the canonical program `A054254.P11923703867781641244` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054254 has offset 0).

The definition of A054254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054254.P11923703867781641244

`a(n-1)+n` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5, a(4)=8`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054254

/-- `a(n-1)+n` -/
def P11923703867781641244.Spec : Prop :=
  ∀ n, (P11923703867781641244.a n : ℤ) = A054254 n

theorem P11923703867781641244.correct : P11923703867781641244.Spec := by
  intro n
  simp only [A054254]

end A054254

/-! ## A054254.P1943605178761660867

`∑[n-(char[2]+char[4])]`
-/

namespace A054254.P1943605178761660867
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((if ∃ j, f2 j = n then 1 else 0) + (if ∃ j, f3 j = n then 1 else 0) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054254.P1943605178761660867

namespace A054254

/-- `∑[n-(char[2]+char[4])]` -/
def P1943605178761660867.Spec : Prop :=
  ∀ n, P1943605178761660867.a n = A054254 n

end A054254

/-! ## A054254.P14230518271098142483

`∑[n]-floor(atan(∑[n])²)`
-/

namespace A054254.P14230518271098142483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊Real.arctan ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ) ^ 2⌋

end

end A054254.P14230518271098142483

namespace A054254

/-- `∑[n]-floor(atan(∑[n])²)` -/
def P14230518271098142483.Spec : Prop :=
  ∀ n, P14230518271098142483.a n = A054254 n

end A054254

/-! ## A054254.P11218064284821373388

`ceil(∑[n]-atan(∑[n])²)`
-/

namespace A054254.P11218064284821373388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.arctan ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ) ^ 2⌉

end

end A054254.P11218064284821373388

namespace A054254

/-- `ceil(∑[n]-atan(∑[n])²)` -/
def P11218064284821373388.Spec : Prop :=
  ∀ n, P11218064284821373388.a n = A054254 n

end A054254

/-! ## A054254.P1082213569857608224

`∑[n]-sqrt(4%or(1, n))`
-/

namespace A054254.P1082213569857608224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.sqrt ((4 % Nat.lor 1 n : ℕ) : ℝ)

end

end A054254.P1082213569857608224

namespace A054254

/-- `∑[n]-sqrt(4%or(1, n))` -/
def P1082213569857608224.Spec : Prop :=
  ∀ n, P1082213569857608224.a n = (A054254 n : ℝ)

end A054254

/-! ## A054254.P11039355871380268188

`∑[n]-ceil(atan(floor(n/2)))`
-/

namespace A054254.P11039355871380268188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌈Real.arctan (⌊(n : ℚ) / 2⌋ : ℝ)⌉

end

end A054254.P11039355871380268188

namespace A054254

/-- `∑[n]-ceil(atan(floor(n/2)))` -/
def P11039355871380268188.Spec : Prop :=
  ∀ n, P11039355871380268188.a n = A054254 n

end A054254

/-! ## A054254.P2530777829422954565

`floor(atan(atan(9)-n)+∑[n])`
-/

namespace A054254.P2530777829422954565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (Real.arctan (9 : ℝ) - (n : ℝ)) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A054254.P2530777829422954565

namespace A054254

/-- `floor(atan(atan(9)-n)+∑[n])` -/
def P2530777829422954565.Spec : Prop :=
  ∀ n, P2530777829422954565.a n = A054254 n

end A054254

/-! ## A054254.P8063472434753121684

`round(sqrt(A018252(n+2)+∑[n]²))-2`
-/

namespace A054254.P8063472434753121684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018252 (n + 2) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) : ℝ)) - 2

end

end A054254.P8063472434753121684

namespace A054254

/-- `round(sqrt(A018252(n+2)+∑[n]²))-2` -/
def P8063472434753121684.Spec : Prop :=
  ∀ n, P8063472434753121684.a n = A054254 n

end A054254

/-! ## A054254.P4656861931097796140

`A053799(n)-A008752(n)`
-/

namespace A054254.P4656861931097796140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053799 n - A008752 n

end

end A054254.P4656861931097796140

namespace A054254

/-- `A053799(n)-A008752(n)` -/
def P4656861931097796140.Spec : Prop :=
  ∀ n, P4656861931097796140.a n = A054254 n

end A054254

/-! ## A054254.P6756217268706662189

`A212342(n)-A185114(n)`
-/

namespace A054254.P6756217268706662189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212342 n - A185114 n

end

end A054254.P6756217268706662189

namespace A054254

/-- `A212342(n)-A185114(n)` -/
def P6756217268706662189.Spec : Prop :=
  ∀ n, P6756217268706662189.a n = A054254 n

end A054254

/-! ## A054254.P9453638443961002600

`A186752(n+1)+A185013(n)`
-/

namespace A054254.P9453638443961002600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186752 (n + 1) + A185013 n

end

end A054254.P9453638443961002600

namespace A054254

/-- `A186752(n+1)+A185013(n)` -/
def P9453638443961002600.Spec : Prop :=
  ∀ n, P9453638443961002600.a n = A054254 n

end A054254

/-! ## A054254.P18425193600888958412

`∑[n]-A345378(A345379(2*n))`
-/

namespace A054254.P18425193600888958412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A345378 (A345379 (2 * n)).toNat

end

end A054254.P18425193600888958412

namespace A054254

/-- `∑[n]-A345378(A345379(2*n))` -/
def P18425193600888958412.Spec : Prop :=
  ∀ n, P18425193600888958412.a n = A054254 n

end A054254

/-! ## A054254.P12300800078535830794

`∑[n]-A130130(A002265(2*n))`
-/

namespace A054254.P12300800078535830794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A130130 (A002265 (2 * n)).toNat

end

end A054254.P12300800078535830794

namespace A054254

/-- `∑[n]-A130130(A002265(2*n))` -/
def P12300800078535830794.Spec : Prop :=
  ∀ n, P12300800078535830794.a n = A054254 n

end A054254

/-! ## A054254.P4403976980621347856

`floor(∑[log2(A132045(n))])`
-/

namespace A054254.P4403976980621347856
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A132045 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A054254.P4403976980621347856

namespace A054254

/-- `floor(∑[log2(A132045(n))])` -/
def P4403976980621347856.Spec : Prop :=
  ∀ n, P4403976980621347856.a n = A054254 n

end A054254

/-! ## A054254.P11065879117690868883

`round(∑[n*tanh((n+1)/3)])`
-/

namespace A054254.P11065879117690868883
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.tanh ((n + 1 : ℚ) / 3 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054254.P11065879117690868883

namespace A054254

/-- `round(∑[n*tanh((n+1)/3)])` -/
def P11065879117690868883.Spec : Prop :=
  ∀ n, P11065879117690868883.a n = A054254 n

end A054254

/-! ## A054254.P9793692716045047038

`floor(∑[n^tanh((n+1)/3)])`
-/

namespace A054254.P9793692716045047038
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ (Real.tanh ((n + 1 : ℚ) / 3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A054254.P9793692716045047038

namespace A054254

/-- `floor(∑[n^tanh((n+1)/3)])` -/
def P9793692716045047038.Spec : Prop :=
  ∀ n, P9793692716045047038.a n = A054254 n

end A054254

/-! ## A054254.P16287243234110896826

`∑[n]-A130130(∑[A025480(n)])`
-/

namespace A054254.P16287243234110896826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A130130 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

end

end A054254.P16287243234110896826

namespace A054254

/-- `∑[n]-A130130(∑[A025480(n)])` -/
def P16287243234110896826.Spec : Prop :=
  ∀ n, P16287243234110896826.a n = A054254 n

end A054254

/-! ## A054254.P18147623049954924106

`lt[n/2*A222730(n), 3]`
-/

namespace A054254.P18147623049954924106
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A222730 n : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A054254.P18147623049954924106

namespace A054254

/-- `lt[n/2*A222730(n), 3]` -/
def P18147623049954924106.Spec : Prop :=
  ∀ n, (P18147623049954924106.a n : ℤ) = A054254 n

end A054254

/-! ## A054254.P17105447057792124318

`eq[A099395(n+1), A222730(n)]`
-/

namespace A054254.P17105447057792124318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222730 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054254.P17105447057792124318

namespace A054254

/-- `eq[A099395(n+1), A222730(n)]` -/
def P17105447057792124318.Spec : Prop :=
  ∀ n, (P17105447057792124318.a n : ℤ) = A054254 n

end A054254

/-! ## A054254.P16804689400952258527

`eq[A001404(n), A237684(n+1)]`
-/

namespace A054254.P16804689400952258527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001404 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237684 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054254.P16804689400952258527

namespace A054254

/-- `eq[A001404(n), A237684(n+1)]` -/
def P16804689400952258527.Spec : Prop :=
  ∀ n, (P16804689400952258527.a n : ℤ) = A054254 n

end A054254

/-!
# A054255: Triangle T(n,k) (n >= 1, 0<=k<=n) giving number of preferential arrangements of n things beginning with k (transposed, then read by rows).

The programs for A054255, there is no canonical definition to state claims against.
-/

/-! ## A054255.P13623065730589935873

`A090665(∑[char[∑[n]]]²-n)`
-/

namespace A054255.P13623065730589935873
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090665 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A054255.P13623065730589935873

/-! ## A054255.P7858951181763138651

`A057427(n+3)*A090665(A038722(n+1))`
-/

namespace A054255.P7858951181763138651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 3) * A090665 (A038722 (n + 1)).toNat

end

end A054255.P7858951181763138651

/-! ## A054255.P7731660516514242934

`A090665(A038722(n+1))+A000007(3*n+4)`
-/

namespace A054255.P7731660516514242934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090665 (A038722 (n + 1)).toNat + A000007 (3 * n + 4)

end

end A054255.P7731660516514242934

/-! ## A054255.P13616334975682081681

`A090665(A038722(n+1))%A367319(n+1)`
-/

namespace A054255.P13616334975682081681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090665 (A038722 (n + 1)).toNat) (A367319 (n + 1))

end

end A054255.P13616334975682081681

/-! ## A054255.P9170224698262617210

`A090665(A038722(n+1))%A299404(n)`
-/

namespace A054255.P9170224698262617210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090665 (A038722 (n + 1)).toNat) (A299404 n)

end

end A054255.P9170224698262617210

/-! ## A054255.P2902828598146757797

`A119502(n)*A241168(n+1)`
-/

namespace A054255.P2902828598146757797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A241168 (n + 1)

end

end A054255.P2902828598146757797

/-! ## A054255.P3058988663880478820

`A233543(A061579(n))*A241168(n+1)`
-/

namespace A054255.P3058988663880478820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 (A061579 n).toNat * A241168 (n + 1)

end

end A054255.P3058988663880478820

/-!
# A054258: Concatenation of n in base 2 up to base 10 and n in base 10 down to base 2 is prime, all numbers are interpreted as decimals.

The programs for A054258, there is no canonical definition to state claims against.
-/

/-! ## A054258.P8152683568582989069

`∩[A054256(n), A054257(n)]`
-/

namespace A054258.P8152683568582989069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054256 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054258.P8152683568582989069

/-!
# A054259: Squares having last digit equal to the sum of the other digits.

The programs for A054259, there is no canonical definition to state claims against.
-/

/-! ## A054259.P6260361409719433464

`A030134(n+1)²`
-/

namespace A054259.P6260361409719433464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030134 (n + 1) ^ 2

end

end A054259.P6260361409719433464

/-! ## A054259.P11999657861151571176

`A030134(A132264(n+1))^2`
-/

namespace A054259.P11999657861151571176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030134 (A132264 (n + 1)).toNat ^ 2

end

end A054259.P11999657861151571176

/-! ## A054259.P13295053670889150033

`A030134(n+1)*A030134(A260423(n+1))`
-/

namespace A054259.P13295053670889150033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030134 (n + 1) * A030134 (A260423 (n + 1)).toNat

end

end A054259.P13295053670889150033

/-! ## A054259.P1435867472095085192

`A030134(n+1)*A030134(A033619(n+2))`
-/

namespace A054259.P1435867472095085192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030134 (n + 1) * A030134 (A033619 (n + 2)).toNat

end

end A054259.P1435867472095085192

/-! ## A054259.P11698428185344069600

`A030134(n+1)^A181796(A045712(n+1))`
-/

namespace A054259.P11698428185344069600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030134 (n + 1) : ℚ) ^ (A181796 (A045712 (n + 1)).toNat : ℤ)

end

end A054259.P11698428185344069600

/-!
# A054261: Smallest number that contains the first n primes as substrings.

The programs for A054261, there is no canonical definition to state claims against.
-/

/-! ## A054261.P4358639013549894449

`A240959(A100793(n))`
-/

namespace A054261.P4358639013549894449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240959 (A100793 n).toNat

end

end A054261.P4358639013549894449

/-! ## A054261.P15794471378010086060

`A240959(A073787(n)+1)`
-/

namespace A054261.P15794471378010086060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240959 (A073787 n + 1).toNat

end

end A054261.P15794471378010086060

/-!
# A054262: Start with the prime 11; next prime must exceed previous prime and start with last digit of previous prime.

The programs for A054262, there is no canonical definition to state claims against.
-/

/-! ## A054262.P1166516099889990878

`p?[A233742(2*(n+1))+A169939(n+3)]`
-/

namespace A054262.P1166516099889990878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233742 (2 * (n + 1)) + A169939 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054262.P1166516099889990878

/-!
# A054263: Number of palindromic triangular numbers with n digits.

The programs for A054263, there is no canonical definition to state claims against.
-/

/-! ## A054263.P11736936903158748479

`A307367(abs(1-n)+2)`
-/

namespace A054263.P11736936903158748479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307367 (|1 - (n : ℤ)| + 2).toNat

end

end A054263.P11736936903158748479

/-! ## A054263.P10652647377299280248

`A307367(n+1)-floor(acot(n))`
-/

namespace A054263.P10652647377299280248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307367 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A054263.P10652647377299280248

/-! ## A054263.P18094369757950855885

`A307367(n+1)-A000007(n)`
-/

namespace A054263.P18094369757950855885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307367 (n + 1) - A000007 n

end

end A054263.P18094369757950855885

/-! ## A054263.P3346597182998206383

`A307367(n+1)-A112316(n)`
-/

namespace A054263.P3346597182998206383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307367 (n + 1) - A112316 n

end

end A054263.P3346597182998206383

/-! ## A054263.P5625377896194290965

`A307367(n+1)-A151878(n)`
-/

namespace A054263.P5625377896194290965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307367 (n + 1) - A151878 n

end

end A054263.P5625377896194290965

/-! ## A054263.P11857543485470511140

`A307367(n+1)-A151909(n)`
-/

namespace A054263.P11857543485470511140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307367 (n + 1) - A151909 n

end

end A054263.P11857543485470511140

/-! ## A054263.P7949952641115289287

`A307367(n+1)-A151933(n)`
-/

namespace A054263.P7949952641115289287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307367 (n + 1) - A151933 n

end

end A054263.P7949952641115289287

/-! ## A054263.P6667234076213645961

`A307367(n+1)-A151934(n)`
-/

namespace A054263.P6667234076213645961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307367 (n + 1) - A151934 n

end

end A054263.P6667234076213645961

/-! ## A054263.P17346421089659923461

`A307367(n+1)-A151935(n)`
-/

namespace A054263.P17346421089659923461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307367 (n + 1) - A151935 n

end

end A054263.P17346421089659923461

/-!
# A054265: Sum of composite numbers between successive primes.

The programs for A054265, the canonical program `A054265.P10084973758466375610` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054265 has offset 1).

The definition of A054265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054265.P10084973758466375610

`(A000040(n+2)+A000040(n+1))*(A000040(n+2)-A000040(n+1)-1)/2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A054265

/-- `(A000040(n+2)+A000040(n+1))*(A000040(n+2)-A000040(n+1)-1)/2` -/
def P10084973758466375610.Spec : Prop :=
  ∀ n, P10084973758466375610.a n = (A054265 (n + 1) : ℚ)

end A054265

/-! ## A054265.P7204080684512051372

`A062047(n+1)+A062046(n+1)`
-/

namespace A054265.P7204080684512051372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062047 (n + 1) + A062046 (n + 1)

end

end A054265.P7204080684512051372

namespace A054265

/-- `A062047(n+1)+A062046(n+1)` -/
def P7204080684512051372.Spec : Prop :=
  ∀ n, P7204080684512051372.a n = A054265 (n + 1)

end A054265

/-! ## A054265.P2330068996910119590

`A065091(n+1)+A060325(n+2)`
-/

namespace A054265.P2330068996910119590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A060325 (n + 2)

end

end A054265.P2330068996910119590

namespace A054265

/-- `A065091(n+1)+A060325(n+2)` -/
def P2330068996910119590.Spec : Prop :=
  ∀ n, P2330068996910119590.a n = A054265 (n + 1)

end A054265

/-! ## A054265.P1087078146854492395

`A371201(n+1)-A000040(n+1)`
-/

namespace A054265.P1087078146854492395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371201 (n + 1) - A000040 (n + 1)

end

end A054265.P1087078146854492395

namespace A054265

/-- `A371201(n+1)-A000040(n+1)` -/
def P1087078146854492395.Spec : Prop :=
  ∀ n, P1087078146854492395.a n = A054265 (n + 1)

end A054265

/-! ## A054265.P17899488199694908172

`A046933(n+1)*A162735(n+1)`
-/

namespace A054265.P17899488199694908172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1) * A162735 (n + 1)

end

end A054265.P17899488199694908172

namespace A054265

/-- `A046933(n+1)*A162735(n+1)` -/
def P17899488199694908172.Spec : Prop :=
  ∀ n, P17899488199694908172.a n = A054265 (n + 1)

end A054265

/-! ## A054265.P8581033042124597791

`(A078444(n+1)+1)*A046933(n+1)`
-/

namespace A054265.P8581033042124597791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078444 (n + 1) + 1) * A046933 (n + 1)

end

end A054265.P8581033042124597791

namespace A054265

/-- `(A078444(n+1)+1)*A046933(n+1)` -/
def P8581033042124597791.Spec : Prop :=
  ∀ n, P8581033042124597791.a n = A054265 (n + 1)

end A054265

/-! ## A054265.P17286771302663821862

`(A069482(n+1)-A001043(n+1))/2`
-/

namespace A054265.P17286771302663821862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069482 (n + 1) - A001043 (n + 1) : ℚ) / 2

end

end A054265.P17286771302663821862

namespace A054265

/-- `(A069482(n+1)-A001043(n+1))/2` -/
def P17286771302663821862.Spec : Prop :=
  ∀ n, P17286771302663821862.a n = (A054265 (n + 1) : ℚ)

end A054265

/-! ## A054265.P3217861661094902647

`A001043(n+1)/2*A046933(n+1)`
-/

namespace A054265.P3217861661094902647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001043 (n + 1) : ℚ) / 2 * (A046933 (n + 1) : ℚ)

end

end A054265.P3217861661094902647

namespace A054265

/-- `A001043(n+1)/2*A046933(n+1)` -/
def P3217861661094902647.Spec : Prop :=
  ∀ n, P3217861661094902647.a n = (A054265 (n + 1) : ℚ)

end A054265

/-! ## A054265.P1359428018307542074

`A001043(n+1)*(A001223(n+1)-1)/2`
-/

namespace A054265.P1359428018307542074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001043 (n + 1) : ℚ) * ((A001223 (n + 1) - 1 : ℚ) / 2)

end

end A054265.P1359428018307542074

namespace A054265

/-- `A001043(n+1)*(A001223(n+1)-1)/2` -/
def P1359428018307542074.Spec : Prop :=
  ∀ n, P1359428018307542074.a n = (A054265 (n + 1) : ℚ)

end A054265

/-! ## A054265.P15344145692742137964

`A124434(n+1)-A124434(n+1)/A001223(n+1)`
-/

namespace A054265.P15344145692742137964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124434 (n + 1) : ℚ) - (A124434 (n + 1) : ℚ) / (A001223 (n + 1) : ℚ)

end

end A054265.P15344145692742137964

namespace A054265

/-- `A124434(n+1)-A124434(n+1)/A001223(n+1)` -/
def P15344145692742137964.Spec : Prop :=
  ∀ n, P15344145692742137964.a n = (A054265 (n + 1) : ℚ)

end A054265

/-! ## A054265.P15883080079170576928

`Δ[A045717(n+1)]`
-/

namespace A054265.P15883080079170576928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054265.P15883080079170576928

namespace A054265

/-- `Δ[A045717(n+1)]` -/
def P15883080079170576928.Spec : Prop :=
  ∀ n, P15883080079170576928.a n = A054265 (n + 1)

end A054265

/-! ## A054265.P5724354924525442404

`Δ[A079725(n+1)]`
-/

namespace A054265.P5724354924525442404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054265.P5724354924525442404

namespace A054265

/-- `Δ[A079725(n+1)]` -/
def P5724354924525442404.Spec : Prop :=
  ∀ n, P5724354924525442404.a n = A054265 (n + 1)

end A054265

/-! ## A054265.P16310207201330665471

`A008837(n+2)-A034953(n+1)`
-/

namespace A054265.P16310207201330665471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 2) - A034953 (n + 1)

end

end A054265.P16310207201330665471

namespace A054265

/-- `A008837(n+2)-A034953(n+1)` -/
def P16310207201330665471.Spec : Prop :=
  ∀ n, P16310207201330665471.a n = A054265 (n + 1)

end A054265

/-! ## A054265.P14333275685971367601

`A060325(n+2)+A000040(n+2)`
-/

namespace A054265.P14333275685971367601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060325 (n + 2) + A000040 (n + 2)

end

end A054265.P14333275685971367601

namespace A054265

/-- `A060325(n+2)+A000040(n+2)` -/
def P14333275685971367601.Spec : Prop :=
  ∀ n, P14333275685971367601.a n = A054265 (n + 1)

end A054265

/-! ## A054265.P5091498746741833756

`A045717(n+2)-A045717(n+1)`
-/

namespace A054265.P5091498746741833756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045717 (n + 2) - A045717 (n + 1)

end

end A054265.P5091498746741833756

namespace A054265

/-- `A045717(n+2)-A045717(n+1)` -/
def P5091498746741833756.Spec : Prop :=
  ∀ n, P5091498746741833756.a n = A054265 (n + 1)

end A054265

/-! ## A054265.P15508650017304596007

`A138383(n+1)-A000040(n+2)`
-/

namespace A054265.P15508650017304596007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138383 (n + 1) - A000040 (n + 2)

end

end A054265.P15508650017304596007

namespace A054265

/-- `A138383(n+1)-A000040(n+2)` -/
def P15508650017304596007.Spec : Prop :=
  ∀ n, P15508650017304596007.a n = A054265 (n + 1)

end A054265

/-! ## A054265.P18102228459455509478

`A112456(n+2)-A034953(n+1)`
-/

namespace A054265.P18102228459455509478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112456 (n + 2) - A034953 (n + 1)

end

end A054265.P18102228459455509478

namespace A054265

/-- `A112456(n+2)-A034953(n+1)` -/
def P18102228459455509478.Spec : Prop :=
  ∀ n, P18102228459455509478.a n = A054265 (n + 1)

end A054265

/-! ## A054265.P2000238558733912533

`A079725(n+2)-A079725(n+1)`
-/

namespace A054265.P2000238558733912533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079725 (n + 2) - A079725 (n + 1)

end

end A054265.P2000238558733912533

namespace A054265

/-- `A079725(n+2)-A079725(n+1)` -/
def P2000238558733912533.Spec : Prop :=
  ∀ n, P2000238558733912533.a n = A054265 (n + 1)

end A054265

/-! ## A054265.P5670271564347943730

`Δ[C(A000040(n+1), 2)-A007504(n)]`
-/

namespace A054265.P5670271564347943730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000040 (n + 1)).toNat 2 : ℤ) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054265.P5670271564347943730

namespace A054265

/-- `Δ[C(A000040(n+1), 2)-A007504(n)]` -/
def P5670271564347943730.Spec : Prop :=
  ∀ n, P5670271564347943730.a n = A054265 (n + 1)

end A054265

/-! ## A054265.P10688352768536441078

`A008837(n+2)-(A008837(n+1)+A000040(n+1))`
-/

namespace A054265.P10688352768536441078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 2) - (A008837 (n + 1) + A000040 (n + 1))

end

end A054265.P10688352768536441078

namespace A054265

/-- `A008837(n+2)-(A008837(n+1)+A000040(n+1))` -/
def P10688352768536441078.Spec : Prop :=
  ∀ n, P10688352768536441078.a n = A054265 (n + 1)

end A054265

/-!
# A054266: Sum of composite numbers between prime p and nextprime(p) is palindromic.

The programs for A054266, there is no canonical definition to state claims against.
-/

/-! ## A054266.P14305790338708313179

`A006530(A309532(n+1)+A066258(n+1))`
-/

namespace A054266.P14305790338708313179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A309532 (n + 1) + A066258 (n + 1)).toNat

end

end A054266.P14305790338708313179

/-!
# A054267: Sum of composite numbers between prime p and nextprime(p) is palindromic with restriction 'p + 1 <> sum'.

The programs for A054267, there is no canonical definition to state claims against.
-/

/-! ## A054267.P9034597798040975620

`∩[A049591(n+1), A054266(n+1)]`
-/

namespace A054267.P9034597798040975620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054267.P9034597798040975620

/-! ## A054267.P2566260305982285359

`∩[A054266(n+1), A061838(A061840(n+1))]`
-/

namespace A054267.P2566260305982285359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061838 (A061840 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054267.P2566260305982285359

/-!
# A054269: Length of period of continued fraction for sqrt(prime(n)).

The programs for A054269, there is no canonical definition to state claims against.
-/

/-! ## A054269.P5952772840911884583

`A003285(A000040(n+1))`
-/

namespace A054269.P5952772840911884583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A000040 (n + 1)).toNat

end

end A054269.P5952772840911884583

/-! ## A054269.P15595071170376977707

`A035015(A071403(n+1))`
-/

namespace A054269.P15595071170376977707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035015 (A071403 (n + 1)).toNat

end

end A054269.P15595071170376977707

/-! ## A054269.P3899663395586337019

`A013943(A112045(n+1))`
-/

namespace A054269.P3899663395586337019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013943 (A112045 (n + 1)).toNat

end

end A054269.P3899663395586337019

/-! ## A054269.P10145477600548462813

`A013943(A165994(n+1)+1)`
-/

namespace A054269.P10145477600548462813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013943 (A165994 (n + 1) + 1).toNat

end

end A054269.P10145477600548462813

/-! ## A054269.P12924020283915157651

`A097853(p?[comp[n²]])`
-/

namespace A054269.P12924020283915157651
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A054269.P12924020283915157651

/-! ## A054269.P13298377734783371495

`A003285(eq[1, ∑{e}[n, #]])`
-/

namespace A054269.P13298377734783371495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A054269.P13298377734783371495

/-! ## A054269.P14285790759489048298

`A003285(Δ[A007504(n)])`
-/

namespace A054269.P14285790759489048298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (f1 (n + 1) - f1 n).toNat

end

end A054269.P14285790759489048298

/-! ## A054269.P17918700993528939319

`A003285(record[A051698(n)])`
-/

namespace A054269.P17918700993528939319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054269.P17918700993528939319

/-! ## A054269.P9890165664808745210

`A097853(A006005(n+1))`
-/

namespace A054269.P9890165664808745210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (A006005 (n + 1)).toNat

end

end A054269.P9890165664808745210

/-! ## A054269.P12467122020377842015

`A097853(A161847(n+1))`
-/

namespace A054269.P12467122020377842015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (A161847 (n + 1)).toNat

end

end A054269.P12467122020377842015

/-! ## A054269.P3024293936635478992

`A003285(A008578(n+2))`
-/

namespace A054269.P3024293936635478992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A008578 (n + 2)).toNat

end

end A054269.P3024293936635478992

/-! ## A054269.P4703852326015849735

`A097853(A075643(n+2))`
-/

namespace A054269.P4703852326015849735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (A075643 (n + 2)).toNat

end

end A054269.P4703852326015849735

/-! ## A054269.P9303889278555645447

`A003285(A182986(n+2))`
-/

namespace A054269.P9303889278555645447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A182986 (n + 2)).toNat

end

end A054269.P9303889278555645447

/-! ## A054269.P13668373875490561358

`A003285(eq[1, A003415(n)])`
-/

namespace A054269.P13668373875490561358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054269.P13668373875490561358

/-! ## A054269.P17824046924150820645

`A003285(eq[1, A328847(n)])`
-/

namespace A054269.P17824046924150820645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054269.P17824046924150820645

/-! ## A054269.P18202121691584608522

`A003285(record[A006530(n+2)])`
-/

namespace A054269.P18202121691584608522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054269.P18202121691584608522

/-! ## A054269.P14311401903039795774

`A003285(record[A020639(n+2)])`
-/

namespace A054269.P14311401903039795774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054269.P14311401903039795774

/-! ## A054269.P1310718069347797785

`A097853(record[A006530(n+2)])`
-/

namespace A054269.P1310718069347797785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054269.P1310718069347797785

/-! ## A054269.P9205821685321442947

`A097853(record[A020639(n+2)])`
-/

namespace A054269.P9205821685321442947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054269.P9205821685321442947

/-! ## A054269.P3994656794698030871

`A003285(record[A000010(n+1)+1])`
-/

namespace A054269.P3994656794698030871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054269.P3994656794698030871

/-!
# A054270: Largest prime below prime(n)^2 (A001248).

The programs for A054270, the canonical program `A054270.P1038476005510522765` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054270 has offset 1).

The definition of A054270 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054270.P1038476005510522765

`A000040(A000879(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A054270

/-- `A000040(A000879(n+1))` -/
def P1038476005510522765.Spec : Prop :=
  ∀ n, P1038476005510522765.a n = A054270 (n + 1)

theorem P1038476005510522765.correct : P1038476005510522765.Spec := by
  intro n
  simp only [A054270, Nat.add_sub_cancel]

end A054270

/-! ## A054270.P8882210745380569894

`A007917(A000040(n+1)²)`
-/

namespace A054270.P8882210745380569894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A000040 (n + 1) ^ 2).toNat

end

end A054270.P8882210745380569894

namespace A054270

/-- `A007917(A000040(n+1)²)` -/
def P8882210745380569894.Spec : Prop :=
  ∀ n, P8882210745380569894.a n = A054270 (n + 1)

end A054270

/-! ## A054270.P2046392643702610312

`A173926(n)+a(n-1)` with `a(0)=3`
-/

namespace A054270.P2046392643702610312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A173926 n + a (n - 1)

end

end A054270.P2046392643702610312

namespace A054270

/-- `A173926(n)+a(n-1)` -/
def P2046392643702610312.Spec : Prop :=
  ∀ n, P2046392643702610312.a n = A054270 (n + 1)

end A054270

/-! ## A054270.P18083635426430780943

`A001248(n+1)-A054271(n+1)`
-/

namespace A054270.P18083635426430780943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A054271 (n + 1)

end

end A054270.P18083635426430780943

namespace A054270

/-- `A001248(n+1)-A054271(n+1)` -/
def P18083635426430780943.Spec : Prop :=
  ∀ n, P18083635426430780943.a n = A054270 (n + 1)

end A054270

/-! ## A054270.P11703593241070377915

`A000040(n+1)²-A054271(n+1)`
-/

namespace A054270.P11703593241070377915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A054271 (n + 1)

end

end A054270.P11703593241070377915

namespace A054270

/-- `A000040(n+1)²-A054271(n+1)` -/
def P11703593241070377915.Spec : Prop :=
  ∀ n, P11703593241070377915.a n = A054270 (n + 1)

end A054270

/-! ## A054270.P1476555145564351998

`A062772(n+1)-(A091666(n+1)+A054271(n+1))`
-/

namespace A054270.P1476555145564351998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062772 (n + 1) - (A091666 (n + 1) + A054271 (n + 1))

end

end A054270.P1476555145564351998

namespace A054270

/-- `A062772(n+1)-(A091666(n+1)+A054271(n+1))` -/
def P1476555145564351998.Spec : Prop :=
  ∀ n, P1476555145564351998.a n = A054270 (n + 1)

end A054270

/-! ## A054270.P13694843539699879357

`A053001(A000040(n+1))`
-/

namespace A054270.P13694843539699879357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (A000040 (n + 1)).toNat

end

end A054270.P13694843539699879357

namespace A054270

/-- `A053001(A000040(n+1))` -/
def P13694843539699879357.Spec : Prop :=
  ∀ n, P13694843539699879357.a n = A054270 (n + 1)

end A054270

/-! ## A054270.P10804285684991253042

`A053001(A008578(n+2))`
-/

namespace A054270.P10804285684991253042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (A008578 (n + 2)).toNat

end

end A054270.P10804285684991253042

namespace A054270

/-- `A053001(A008578(n+2))` -/
def P10804285684991253042.Spec : Prop :=
  ∀ n, P10804285684991253042.a n = A054270 (n + 1)

end A054270

/-! ## A054270.P3483943176087119303

`A053001(A182986(n+2))`
-/

namespace A054270.P3483943176087119303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (A182986 (n + 2)).toNat

end

end A054270.P3483943176087119303

namespace A054270

/-- `A053001(A182986(n+2))` -/
def P3483943176087119303.Spec : Prop :=
  ∀ n, P3483943176087119303.a n = A054270 (n + 1)

end A054270

/-! ## A054270.P10514792203655663236

`A053001(sqrt(A001248(n+1)))`
-/

namespace A054270.P10514792203655663236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A054270.P10514792203655663236

namespace A054270

/-- `A053001(sqrt(A001248(n+1)))` -/
def P10514792203655663236.Spec : Prop :=
  ∀ n, P10514792203655663236.a n = A054270 (n + 1)

end A054270

/-! ## A054270.P7176142577106180682

`A053001(record[A006530(n+2)])`
-/

namespace A054270.P7176142577106180682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054270.P7176142577106180682

namespace A054270

/-- `A053001(record[A006530(n+2)])` -/
def P7176142577106180682.Spec : Prop :=
  ∀ n, P7176142577106180682.a n = A054270 (n + 1)

end A054270

/-! ## A054270.P12776592329579851137

`A053001(record[A014963(n+2)])`
-/

namespace A054270.P12776592329579851137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054270.P12776592329579851137

namespace A054270

/-- `A053001(record[A014963(n+2)])` -/
def P12776592329579851137.Spec : Prop :=
  ∀ n, P12776592329579851137.a n = A054270 (n + 1)

end A054270

/-! ## A054270.P3018812869222957844

`A053001(record[A020639(n+2)])`
-/

namespace A054270.P3018812869222957844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054270.P3018812869222957844

namespace A054270

/-- `A053001(record[A020639(n+2)])` -/
def P3018812869222957844.Spec : Prop :=
  ∀ n, P3018812869222957844.a n = A054270 (n + 1)

end A054270

/-! ## A054270.P9957810036387042794

`A053001(A007504(n+1)-A007504(n))`
-/

namespace A054270.P9957810036387042794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (A007504 (n + 1) - A007504 n).toNat

end

end A054270.P9957810036387042794

namespace A054270

/-- `A053001(A007504(n+1)-A007504(n))` -/
def P9957810036387042794.Spec : Prop :=
  ∀ n, P9957810036387042794.a n = A054270 (n + 1)

end A054270

/-! ## A054270.P11037432028471077876

`A001248(n+1)-A056927(sqrt(A001248(n+1)))`
-/

namespace A054270.P11037432028471077876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A056927 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A054270.P11037432028471077876

namespace A054270

/-- `A001248(n+1)-A056927(sqrt(A001248(n+1)))` -/
def P11037432028471077876.Spec : Prop :=
  ∀ n, P11037432028471077876.a n = A054270 (n + 1)

end A054270

/-! ## A054270.P10201222906526411999

`∩[A037208(n+1), A053607(n+1)]`
-/

namespace A054270.P10201222906526411999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054270.P10201222906526411999

namespace A054270

/-- `∩[A037208(n+1), A053607(n+1)]` -/
def P10201222906526411999.Spec : Prop :=
  ∀ n, (P10201222906526411999.a n : ℤ) = A054270 (n + 1)

end A054270

/-! ## A054270.P9297145402356315699

`∩[A037208(n+1), A053001(n+2)]`
-/

namespace A054270.P9297145402356315699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054270.P9297145402356315699

namespace A054270

/-- `∩[A037208(n+1), A053001(n+2)]` -/
def P9297145402356315699.Spec : Prop :=
  ∀ n, (P9297145402356315699.a n : ℤ) = A054270 (n + 1)

end A054270

/-! ## A054270.P652247332883082304

`p?[A037208(n+1)]`
-/

namespace A054270.P652247332883082304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054270.P652247332883082304

namespace A054270

/-- `p?[A037208(n+1)]` -/
def P652247332883082304.Spec : Prop :=
  ∀ n, P652247332883082304.a n = A054270 (n + 1)

end A054270

/-! ## A054270.P14782092557533129133

`∩[A037208(n+1), A360567(n+1)]`
-/

namespace A054270.P14782092557533129133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054270.P14782092557533129133

namespace A054270

/-- `∩[A037208(n+1), A360567(n+1)]` -/
def P14782092557533129133.Spec : Prop :=
  ∀ n, (P14782092557533129133.a n : ℤ) = A054270 (n + 1)

end A054270

/-! ## A054270.P6818646876923846870

`∩[A360567(n+1), A053001(n+2)]`
-/

namespace A054270.P6818646876923846870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054270.P6818646876923846870

namespace A054270

/-- `∩[A360567(n+1), A053001(n+2)]` -/
def P6818646876923846870.Spec : Prop :=
  ∀ n, (P6818646876923846870.a n : ℤ) = A054270 (n + 1)

end A054270

/-!
# A054271: Difference between prime(n)^2 and the previous prime.

The programs for A054271, the canonical program `A054271.P15805124556475953257` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054271 has offset 1).

The definition of A054271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054271.P15805124556475953257

`A000040(n+1)²-A007917(A000040(n+1)²)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054271

/-- `A000040(n+1)²-A007917(A000040(n+1)²)` -/
def P15805124556475953257.Spec : Prop :=
  ∀ n, P15805124556475953257.a n = A054271 (n + 1)

theorem P15805124556475953257.correct : P15805124556475953257.Spec := by
  intro n
  simp only [A054271, Nat.add_sub_cancel]

end A054271

/-! ## A054271.P1599914643439914482

`A001248(n+1)-A054270(n+1)`
-/

namespace A054271.P1599914643439914482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A054270 (n + 1)

end

end A054271.P1599914643439914482

namespace A054271

/-- `A001248(n+1)-A054270(n+1)` -/
def P1599914643439914482.Spec : Prop :=
  ∀ n, P1599914643439914482.a n = A054271 (n + 1)

end A054271

/-! ## A054271.P15748371215068954220

`A000040(n+1)²-A054270(n+1)`
-/

namespace A054271.P15748371215068954220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A054270 (n + 1)

end

end A054271.P15748371215068954220

namespace A054271

/-- `A000040(n+1)²-A054270(n+1)` -/
def P15748371215068954220.Spec : Prop :=
  ∀ n, P15748371215068954220.a n = A054271 (n + 1)

end A054271

/-! ## A054271.P17333388283226222639

`(A008864(n+1)-1)²%A054270(n+1)`
-/

namespace A054271.P17333388283226222639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A008864 (n + 1) - 1) ^ 2) (A054270 (n + 1))

end

end A054271.P17333388283226222639

namespace A054271

/-- `(A008864(n+1)-1)²%A054270(n+1)` -/
def P17333388283226222639.Spec : Prop :=
  ∀ n, P17333388283226222639.a n = A054271 (n + 1)

end A054271

/-! ## A054271.P8957263450194927908

`(∑[A125266(n+1)]-1)²%A054270(n+1)`
-/

namespace A054271.P8957263450194927908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j - 1) ^ 2) (A054270 (n + 1))

end

end A054271.P8957263450194927908

namespace A054271

/-- `(∑[A125266(n+1)]-1)²%A054270(n+1)` -/
def P8957263450194927908.Spec : Prop :=
  ∀ n, P8957263450194927908.a n = A054271 (n + 1)

end A054271

/-! ## A054271.P4123232921206962504

`(A014688(n+1)-(n+1))²%A054270(n+1)`
-/

namespace A054271.P4123232921206962504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A014688 (n + 1) - (n + 1 : ℤ)) ^ 2) (A054270 (n + 1))

end

end A054271.P4123232921206962504

namespace A054271

/-- `(A014688(n+1)-(n+1))²%A054270(n+1)` -/
def P4123232921206962504.Spec : Prop :=
  ∀ n, P4123232921206962504.a n = A054271 (n + 1)

end A054271

/-! ## A054271.P6725330527862120530

`A000879(n+1)+A053683(n+1)-A054270(n+1)`
-/

namespace A054271.P6725330527862120530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 1) + (A053683 (n + 1) - A054270 (n + 1))

end

end A054271.P6725330527862120530

namespace A054271

/-- `A000879(n+1)+A053683(n+1)-A054270(n+1)` -/
def P6725330527862120530.Spec : Prop :=
  ∀ n, P6725330527862120530.a n = A054271 (n + 1)

end A054271

/-! ## A054271.P16302578734928560321

`A062772(n+1)-(A091666(n+1)+A054270(n+1))`
-/

namespace A054271.P16302578734928560321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062772 (n + 1) - (A091666 (n + 1) + A054270 (n + 1))

end

end A054271.P16302578734928560321

namespace A054271

/-- `A062772(n+1)-(A091666(n+1)+A054270(n+1))` -/
def P16302578734928560321.Spec : Prop :=
  ∀ n, P16302578734928560321.a n = A054271 (n + 1)

end A054271

/-! ## A054271.P17038195325679904959

`A056927(p?[comp[n²]])`
-/

namespace A054271.P17038195325679904959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A054271.P17038195325679904959

namespace A054271

/-- `A056927(p?[comp[n²]])` -/
def P17038195325679904959.Spec : Prop :=
  ∀ n, P17038195325679904959.a n = A054271 (n + 1)

end A054271

/-! ## A054271.P16763268731317668671

`A056927(Δ[A007504(n)])`
-/

namespace A054271.P16763268731317668671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (f1 (n + 1) - f1 n).toNat

end

end A054271.P16763268731317668671

namespace A054271

/-- `A056927(Δ[A007504(n)])` -/
def P16763268731317668671.Spec : Prop :=
  ∀ n, P16763268731317668671.a n = A054271 (n + 1)

end A054271

/-! ## A054271.P7258246157339001046

`A056927(A000040(n+1))`
-/

namespace A054271.P7258246157339001046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (A000040 (n + 1)).toNat

end

end A054271.P7258246157339001046

namespace A054271

/-- `A056927(A000040(n+1))` -/
def P7258246157339001046.Spec : Prop :=
  ∀ n, P7258246157339001046.a n = A054271 (n + 1)

end A054271

/-! ## A054271.P4959231391917976517

`A056927(A008578(n+2))`
-/

namespace A054271.P4959231391917976517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (A008578 (n + 2)).toNat

end

end A054271.P4959231391917976517

namespace A054271

/-- `A056927(A008578(n+2))` -/
def P4959231391917976517.Spec : Prop :=
  ∀ n, P4959231391917976517.a n = A054271 (n + 1)

end A054271

/-! ## A054271.P13918657874375334354

`A056927(A182986(n+2))`
-/

namespace A054271.P13918657874375334354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (A182986 (n + 2)).toNat

end

end A054271.P13918657874375334354

namespace A054271

/-- `A056927(A182986(n+2))` -/
def P13918657874375334354.Spec : Prop :=
  ∀ n, P13918657874375334354.a n = A054271 (n + 1)

end A054271

/-! ## A054271.P9702644955924461954

`A056927(sqrt(A001248(n+1)))`
-/

namespace A054271.P9702644955924461954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A054271.P9702644955924461954

namespace A054271

/-- `A056927(sqrt(A001248(n+1)))` -/
def P9702644955924461954.Spec : Prop :=
  ∀ n, P9702644955924461954.a n = A054271 (n + 1)

end A054271

/-! ## A054271.P4332328347820444878

`A056927(record[A006530(n+2)])`
-/

namespace A054271.P4332328347820444878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054271.P4332328347820444878

namespace A054271

/-- `A056927(record[A006530(n+2)])` -/
def P4332328347820444878.Spec : Prop :=
  ∀ n, P4332328347820444878.a n = A054271 (n + 1)

end A054271

/-! ## A054271.P989452699255624173

`A056927(record[A014963(n+2)])`
-/

namespace A054271.P989452699255624173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054271.P989452699255624173

namespace A054271

/-- `A056927(record[A014963(n+2)])` -/
def P989452699255624173.Spec : Prop :=
  ∀ n, P989452699255624173.a n = A054271 (n + 1)

end A054271

/-! ## A054271.P14196748989297292483

`A056927(record[A020639(n+2)])`
-/

namespace A054271.P14196748989297292483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054271.P14196748989297292483

namespace A054271

/-- `A056927(record[A020639(n+2)])` -/
def P14196748989297292483.Spec : Prop :=
  ∀ n, P14196748989297292483.a n = A054271 (n + 1)

end A054271

/-! ## A054271.P3405340476358219923

`A056927(A007504(n+1)-A007504(n))`
-/

namespace A054271.P3405340476358219923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (A007504 (n + 1) - A007504 n).toNat

end

end A054271.P3405340476358219923

namespace A054271

/-- `A056927(A007504(n+1)-A007504(n))` -/
def P3405340476358219923.Spec : Prop :=
  ∀ n, P3405340476358219923.a n = A054271 (n + 1)

end A054271

/-! ## A054271.P7159452546665345345

`A001248(n+1)-A053001(A000040(n+1))`
-/

namespace A054271.P7159452546665345345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A053001 (A000040 (n + 1)).toNat

end

end A054271.P7159452546665345345

namespace A054271

/-- `A001248(n+1)-A053001(A000040(n+1))` -/
def P7159452546665345345.Spec : Prop :=
  ∀ n, P7159452546665345345.a n = A054271 (n + 1)

end A054271

/-! ## A054271.P10427863916422780721

`A001248(n+1)-A053001(sqrt(A001248(n+1)))`
-/

namespace A054271.P10427863916422780721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A053001 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A054271.P10427863916422780721

namespace A054271

/-- `A001248(n+1)-A053001(sqrt(A001248(n+1)))` -/
def P10427863916422780721.Spec : Prop :=
  ∀ n, P10427863916422780721.a n = A054271 (n + 1)

end A054271

/-!
# A054272: Number of primes in the interval [prime(n), prime(n)^2].

The programs for A054272, the canonical program `A054272.P16500536369367462355` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054272 has offset 1).

The definition of A054272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054272.P16500536369367462355

`A250474(n+1)-2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A054272

/-- `A250474(n+1)-2` -/
def P16500536369367462355.Spec : Prop :=
  ∀ n, P16500536369367462355.a n = A054272 (n + 1)

theorem P16500536369367462355.correct : P16500536369367462355.Spec := by
  intro n
  simp only [A054272, Nat.add_sub_cancel]

end A054272

/-! ## A054272.P7599446224829390081

`A000879(n+1)-n`
-/

namespace A054272.P7599446224829390081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 1) - (n : ℤ)

end

end A054272.P7599446224829390081

namespace A054272

/-- `A000879(n+1)-n` -/
def P7599446224829390081.Spec : Prop :=
  ∀ n, P7599446224829390081.a n = A054272 (n + 1)

theorem P7599446224829390081.correct : P7599446224829390081.Spec := by
  intro n
  simp only [A054272, Nat.add_sub_cancel, A054272.P7599446224829390081.a, A054272.P16500536369367462355.a, A000879, A000879.P11642258310759995278.a, A250474, A250474.P15580657759443600580.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A250473, A250473.P15728952414264512561.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A054272

/-! ## A054272.P7914308005580880597

`A250473(n+1)-1`
-/

namespace A054272.P7914308005580880597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 1) - 1

end

end A054272.P7914308005580880597

namespace A054272

/-- `A250473(n+1)-1` -/
def P7914308005580880597.Spec : Prop :=
  ∀ n, P7914308005580880597.a n = A054272 (n + 1)

theorem P7914308005580880597.correct : P7914308005580880597.Spec := by
  intro n
  simp only [A054272, Nat.add_sub_cancel, A054272.P7914308005580880597.a, A054272.P16500536369367462355.a, A250473, A250473.P15728952414264512561.a, A250474, A250474.P15580657759443600580.a, A000879, A000879.P11642258310759995278.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A054272

/-! ## A054272.P16071419364143431661

`1+A000720(A000040(n+1)²)-(n+1)`
-/

namespace A054272.P16071419364143431661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000720 (A000040 (n + 1) ^ 2).toNat - (n + 1 : ℤ)

end

end A054272.P16071419364143431661

namespace A054272

/-- `1+A000720(A000040(n+1)²)-(n+1)` -/
def P16071419364143431661.Spec : Prop :=
  ∀ n, P16071419364143431661.a n = A054272 (n + 1)

theorem P16071419364143431661.correct : P16071419364143431661.Spec := by
  intro n
  simp only [A054272, Nat.add_sub_cancel, A054272.P16071419364143431661.a, A054272.P16500536369367462355.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A250474, A250474.P15580657759443600580.a, A250473, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A054272

/-! ## A054272.P17841330048715652955

`∑[A050216(n)]-n`
-/

namespace A054272.P17841330048715652955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A054272.P17841330048715652955

namespace A054272

/-- `∑[A050216(n)]-n` -/
def P17841330048715652955.Spec : Prop :=
  ∀ n, P17841330048715652955.a n = A054272 (n + 1)

end A054272

/-! ## A054272.P5523462965399285651

`A251723(n)+a(n-1)` with `a(0)=2`
-/

namespace A054272.P5523462965399285651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A251723 n + a (n - 1)

end

end A054272.P5523462965399285651

namespace A054272

/-- `A251723(n)+a(n-1)` -/
def P5523462965399285651.Spec : Prop :=
  ∀ n, P5523462965399285651.a n = A054272 (n + 1)

end A054272

/-! ## A054272.P15517261785856195517

`A001489(n)+A000879(n+1)`
-/

namespace A054272.P15517261785856195517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + A000879 (n + 1)

end

end A054272.P15517261785856195517

namespace A054272

/-- `A001489(n)+A000879(n+1)` -/
def P15517261785856195517.Spec : Prop :=
  ∀ n, P15517261785856195517.a n = A054272 (n + 1)

theorem P15517261785856195517.correct : P15517261785856195517.Spec := by
  intro n
  simp only [A054272, Nat.add_sub_cancel, A054272.P15517261785856195517.a, A054272.P16500536369367462355.a, A000879, A000879.P11642258310759995278.a, A001489, A001489.P15233530513763566776.a, A250474, A250474.P15580657759443600580.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A250473, A250473.P15728952414264512561.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A054272

/-! ## A054272.P2771608158198160984

`A024000(n+1)+A000879(n+1)`
-/

namespace A054272.P2771608158198160984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (n + 1) + A000879 (n + 1)

end

end A054272.P2771608158198160984

namespace A054272

/-- `A024000(n+1)+A000879(n+1)` -/
def P2771608158198160984.Spec : Prop :=
  ∀ n, P2771608158198160984.a n = A054272 (n + 1)

theorem P2771608158198160984.correct : P2771608158198160984.Spec := by
  intro n
  simp only [A054272, Nat.add_sub_cancel, A054272.P2771608158198160984.a, A054272.P16500536369367462355.a, A000879, A000879.P11642258310759995278.a, A024000, A024000.P8748414335487061084.a, A250474, A250474.P15580657759443600580.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A250473, A250473.P15728952414264512561.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A054272

/-! ## A054272.P11247469290482838027

`A022958(n+2)+A000879(n+1)`
-/

namespace A054272.P11247469290482838027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (n + 2) + A000879 (n + 1)

end

end A054272.P11247469290482838027

namespace A054272

/-- `A022958(n+2)+A000879(n+1)` -/
def P11247469290482838027.Spec : Prop :=
  ∀ n, P11247469290482838027.a n = A054272 (n + 1)

theorem P11247469290482838027.correct : P11247469290482838027.Spec := by
  intro n
  simp only [A054272, Nat.add_sub_cancel, A054272.P11247469290482838027.a, A054272.P16500536369367462355.a, A000879, A000879.P11642258310759995278.a, A022958, A022958.P1044776346471009207.a, A250474, A250474.P15580657759443600580.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A250473, A250473.P15728952414264512561.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A054272

/-! ## A054272.P8173619760393840546

`∑[A251723(A000007(n)+n)+1]-n`
-/

namespace A054272.P8173619760393840546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251723 (A000007 n + (n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A054272.P8173619760393840546

namespace A054272

/-- `∑[A251723(A000007(n)+n)+1]-n` -/
def P8173619760393840546.Spec : Prop :=
  ∀ n, P8173619760393840546.a n = A054272 (n + 1)

end A054272

/-! ## A054272.P464313158856217488

`A000040(n+1)²-(A053683(n+1)+n)`
-/

namespace A054272.P464313158856217488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - (A053683 (n + 1) + (n : ℤ))

end

end A054272.P464313158856217488

namespace A054272

/-- `A000040(n+1)²-(A053683(n+1)+n)` -/
def P464313158856217488.Spec : Prop :=
  ∀ n, P464313158856217488.a n = A054272 (n + 1)

theorem P464313158856217488.correct : P464313158856217488.Spec := by
  intro n
  simp only [A054272, Nat.add_sub_cancel, A054272.P464313158856217488.a, A054272.P16500536369367462355.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A053683, A053683.P15420794164900351699.a, A250474, A250474.P15580657759443600580.a, A000879, A000879.P11642258310759995278.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A054272

/-! ## A054272.P13704931486089742639

`A001248(n+1)-A120389(n+1)-(n+1)`
-/

namespace A054272.P13704931486089742639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A120389 (n + 1) - (n + 1 : ℤ)

end

end A054272.P13704931486089742639

namespace A054272

/-- `A001248(n+1)-A120389(n+1)-(n+1)` -/
def P13704931486089742639.Spec : Prop :=
  ∀ n, P13704931486089742639.a n = A054272 (n + 1)

end A054272

/-! ## A054272.P17718900091429118031

`A066883(n+1)+A000040(n+1)`
-/

namespace A054272.P17718900091429118031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066883 (n + 1) + A000040 (n + 1)

end

end A054272.P17718900091429118031

namespace A054272

/-- `A066883(n+1)+A000040(n+1)` -/
def P17718900091429118031.Spec : Prop :=
  ∀ n, P17718900091429118031.a n = A054272 (n + 1)

theorem P17718900091429118031.correct : P17718900091429118031.Spec := by
  intro n
  simp only [A054272, Nat.add_sub_cancel, A054272.P17718900091429118031.a, A054272.P16500536369367462355.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A066883, A066883.P6672544760734734469.a, A250474, A250474.P15580657759443600580.a, A250473, A250473.P15728952414264512561.a, A000879, A000879.P11642258310759995278.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A054272

/-! ## A054272.P6736102597377446443

`A066883(n+1)+A066886(n+1)-A127918(n+1)`
-/

namespace A054272.P6736102597377446443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066883 (n + 1) + (A066886 (n + 1) - A127918 (n + 1))

end

end A054272.P6736102597377446443

namespace A054272

/-- `A066883(n+1)+A066886(n+1)-A127918(n+1)` -/
def P6736102597377446443.Spec : Prop :=
  ∀ n, P6736102597377446443.a n = A054272 (n + 1)

end A054272

/-! ## A054272.P6141822994978810528

`A062773(n+1)-(n+1)`
-/

namespace A054272.P6141822994978810528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062773 (n + 1) - (n + 1 : ℤ)

end

end A054272.P6141822994978810528

namespace A054272

/-- `A062773(n+1)-(n+1)` -/
def P6141822994978810528.Spec : Prop :=
  ∀ n, P6141822994978810528.a n = A054272 (n + 1)

end A054272

/-! ## A054272.P11419314832037470254

`A181962(n+1)-Δ[n²]`
-/

namespace A054272.P11419314832037470254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181962 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A054272.P11419314832037470254

namespace A054272

/-- `A181962(n+1)-Δ[n²]` -/
def P11419314832037470254.Spec : Prop :=
  ∀ n, P11419314832037470254.a n = A054272 (n + 1)

theorem P11419314832037470254.correct : P11419314832037470254.Spec := by
  intro n
  simp only [A054272, Nat.add_sub_cancel, A054272.P11419314832037470254.f1, A054272.P11419314832037470254.a, A054272.P16500536369367462355.a, A181962, A181962.P15147201020200271264.a, A250474, A250474.P15580657759443600580.a, A000879, A000879.P11642258310759995278.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A054272

/-! ## A054272.P530960380751717450

`A250477(n+1)-(A256469(n+1)+A256449(n+1))`
-/

namespace A054272.P530960380751717450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250477 (n + 1) - (A256469 (n + 1) + A256449 (n + 1))

end

end A054272.P530960380751717450

namespace A054272

/-- `A250477(n+1)-(A256469(n+1)+A256449(n+1))` -/
def P530960380751717450.Spec : Prop :=
  ∀ n, P530960380751717450.a n = A054272 (n + 1)

theorem P530960380751717450.correct : P530960380751717450.Spec := by
  intro n
  simp only [A054272, Nat.add_sub_cancel, A054272.P530960380751717450.a, A054272.P16500536369367462355.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256449, A256449.P3394376339508603245.a, A256469, A256469.P956244140118081997.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A256447, A256447.P10526496064396814310.a, A256448, A256448.P8888948745584736931.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A054272

/-! ## A054272.P12959961655866440427

`A073882(A000040(n+1))`
-/

namespace A054272.P12959961655866440427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073882 (A000040 (n + 1)).toNat

end

end A054272.P12959961655866440427

namespace A054272

/-- `A073882(A000040(n+1))` -/
def P12959961655866440427.Spec : Prop :=
  ∀ n, P12959961655866440427.a n = A054272 (n + 1)

end A054272

/-! ## A054272.P4533064545344141247

`A073882(A008578(n+2))`
-/

namespace A054272.P4533064545344141247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073882 (A008578 (n + 2)).toNat

end

end A054272.P4533064545344141247

namespace A054272

/-- `A073882(A008578(n+2))` -/
def P4533064545344141247.Spec : Prop :=
  ∀ n, P4533064545344141247.a n = A054272 (n + 1)

end A054272

/-! ## A054272.P6591355122510984286

`A073882(A182986(n+2))`
-/

namespace A054272.P6591355122510984286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073882 (A182986 (n + 2)).toNat

end

end A054272.P6591355122510984286

namespace A054272

/-- `A073882(A182986(n+2))` -/
def P6591355122510984286.Spec : Prop :=
  ∀ n, P6591355122510984286.a n = A054272 (n + 1)

end A054272

/-!
# A054275: Susceptibility series H_2 for 2-dimensional Ising model (divided by 2).

The programs for A054275, the canonical program `A054275.P16507263762178672501` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054275 has offset 0).

The definition of A054275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054275.P16507263762178672501

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=8, a(2)=24, a(3)=52, a(4)=90`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054275

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P16507263762178672501.Spec : Prop :=
  ∀ n, P16507263762178672501.a n = A054275 n

theorem P16507263762178672501.correct : P16507263762178672501.Spec := by
  intro n
  simp only [A054275]

end A054275

/-! ## A054275.P9397556570710337812

`A005897(n)-∑[and(n, -2)]`
-/

namespace A054275.P9397556570710337812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054275.P9397556570710337812

namespace A054275

/-- `A005897(n)-∑[and(n, -2)]` -/
def P9397556570710337812.Spec : Prop :=
  ∀ n, P9397556570710337812.a n = A054275 n

end A054275

/-! ## A054275.P4663727059735747966

`A005899(n)+ceil(3/2*n²)`
-/

namespace A054275.P4663727059735747966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n + ⌈(3 : ℚ) / 2 * (n ^ 2 : ℚ)⌉

end

end A054275.P4663727059735747966

namespace A054275

/-- `A005899(n)+ceil(3/2*n²)` -/
def P4663727059735747966.Spec : Prop :=
  ∀ n, P4663727059735747966.a n = A054275 n

end A054275

/-! ## A054275.P6266723993210135589

`A010001(n)+n²-(∑[or(1, n)]-1)+n`
-/

namespace A054275.P6266723993210135589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 n + (n ^ 2 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) + (n : ℤ)

end

end A054275.P6266723993210135589

namespace A054275

/-- `A010001(n)+n²-(∑[or(1, n)]-1)+n` -/
def P6266723993210135589.Spec : Prop :=
  ∀ n, P6266723993210135589.a n = A054275 n

end A054275

/-! ## A054275.P16665164788605779258

`C(11*n, 2)/11+∑[char[1]+n]+1-A007590(n)`
-/

namespace A054275.P16665164788605779258
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (11 * n) 2 : ℚ) / 11 + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) - (A007590 n : ℚ)

end

end A054275.P16665164788605779258

namespace A054275

/-- `C(11*n, 2)/11+∑[char[1]+n]+1-A007590(n)` -/
def P16665164788605779258.Spec : Prop :=
  ∀ n, P16665164788605779258.a n = (A054275 n : ℚ)

end A054275

/-! ## A054275.P15741364523629208253

`A010001(n)+A000982(n)`
-/

namespace A054275.P15741364523629208253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 n + A000982 n

end

end A054275.P15741364523629208253

namespace A054275

/-- `A010001(n)+A000982(n)` -/
def P15741364523629208253.Spec : Prop :=
  ∀ n, P15741364523629208253.a n = A054275 n

end A054275

/-! ## A054275.P9524436752119950501

`A105343(n)+A033429(n)`
-/

namespace A054275.P9524436752119950501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105343 n + A033429 n

end

end A054275.P9524436752119950501

namespace A054275

/-- `A105343(n)+A033429(n)` -/
def P9524436752119950501.Spec : Prop :=
  ∀ n, P9524436752119950501.a n = A054275 n

end A054275

/-! ## A054275.P10405878346814857896

`A005897(n)-A007590(n)`
-/

namespace A054275.P10405878346814857896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n - A007590 n

end

end A054275.P10405878346814857896

namespace A054275

/-- `A005897(n)-A007590(n)` -/
def P10405878346814857896.Spec : Prop :=
  ∀ n, P10405878346814857896.a n = A054275 n

end A054275

/-! ## A054275.P5142407860338326316

`A005919(n)-A032528(n)`
-/

namespace A054275.P5142407860338326316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 n - A032528 n

end

end A054275.P5142407860338326316

namespace A054275

/-- `A005919(n)-A032528(n)` -/
def P5142407860338326316.Spec : Prop :=
  ∀ n, P5142407860338326316.a n = A054275 n

end A054275

/-! ## A054275.P6934236064774054194

`A008527(n)-A032526(n)`
-/

namespace A054275.P6934236064774054194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n - A032526 n

end

end A054275.P6934236064774054194

namespace A054275

/-- `A008527(n)-A032526(n)` -/
def P6934236064774054194.Spec : Prop :=
  ∀ n, P6934236064774054194.a n = A054275 n

end A054275

/-! ## A054275.P12458041979079444968

`A010002(n)-A032525(n)`
-/

namespace A054275.P12458041979079444968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010002 n - A032525 n

end

end A054275.P12458041979079444968

namespace A054275

/-- `A010002(n)-A032525(n)` -/
def P12458041979079444968.Spec : Prop :=
  ∀ n, P12458041979079444968.a n = A054275 n

end A054275

/-! ## A054275.P14835444722454261261

`A238410(n+1)+A005899(n)`
-/

namespace A054275.P14835444722454261261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238410 (n + 1) + A005899 n

end

end A054275.P14835444722454261261

namespace A054275

/-- `A238410(n+1)+A005899(n)` -/
def P14835444722454261261.Spec : Prop :=
  ∀ n, P14835444722454261261.a n = A054275 n

end A054275

/-! ## A054275.P4893612475842508139

`A389625(n)+A130877(n+1)`
-/

namespace A054275.P4893612475842508139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389625 n + A130877 (n + 1)

end

end A054275.P4893612475842508139

namespace A054275

/-- `A389625(n)+A130877(n+1)` -/
def P4893612475842508139.Spec : Prop :=
  ∀ n, P4893612475842508139.a n = A054275 n

end A054275

/-! ## A054275.P8928625028548985911

`A211013(n)-A063289(n+2)`
-/

namespace A054275.P8928625028548985911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211013 n - A063289 (n + 2)

end

end A054275.P8928625028548985911

namespace A054275

/-- `A211013(n)-A063289(n+2)` -/
def P8928625028548985911.Spec : Prop :=
  ∀ n, P8928625028548985911.a n = A054275 n

end A054275

/-! ## A054275.P231074875509126275

`A009946(n)+2*A000982(n)`
-/

namespace A054275.P231074875509126275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 n + 2 * A000982 n

end

end A054275.P231074875509126275

namespace A054275

/-- `A009946(n)+2*A000982(n)` -/
def P231074875509126275.Spec : Prop :=
  ∀ n, P231074875509126275.a n = A054275 n

end A054275

/-! ## A054275.P5769839332164059786

`2*A008527(n)-A007899(n)`
-/

namespace A054275.P5769839332164059786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008527 n - A007899 n

end

end A054275.P5769839332164059786

namespace A054275

/-- `2*A008527(n)-A007899(n)` -/
def P5769839332164059786.Spec : Prop :=
  ∀ n, P5769839332164059786.a n = A054275 n

end A054275

/-! ## A054275.P2041816544188845885

`2*A005897(n)-A299289(n)`
-/

namespace A054275.P2041816544188845885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005897 n - A299289 n

end

end A054275.P2041816544188845885

namespace A054275

/-- `2*A005897(n)-A299289(n)` -/
def P2041816544188845885.Spec : Prop :=
  ∀ n, P2041816544188845885.a n = A054275 n

end A054275

/-! ## A054275.P14225602915616115468

`2*A299287(n)-A005901(n)`
-/

namespace A054275.P14225602915616115468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299287 n - A005901 n

end

end A054275.P14225602915616115468

namespace A054275

/-- `2*A299287(n)-A005901(n)` -/
def P14225602915616115468.Spec : Prop :=
  ∀ n, P14225602915616115468.a n = A054275 n

end A054275

/-! ## A054275.P2085571535917284517

`A000982(n)+A005897(n)-n²`
-/

namespace A054275.P2085571535917284517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n + (A005897 n - (n ^ 2 : ℤ))

end

end A054275.P2085571535917284517

namespace A054275

/-- `A000982(n)+A005897(n)-n²` -/
def P2085571535917284517.Spec : Prop :=
  ∀ n, P2085571535917284517.a n = A054275 n

end A054275

/-! ## A054275.P6500774242548463082

`n²+A005897(n)-A032528(n)`
-/

namespace A054275.P6500774242548463082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A005897 n - A032528 n)

end

end A054275.P6500774242548463082

namespace A054275

/-- `n²+A005897(n)-A032528(n)` -/
def P6500774242548463082.Spec : Prop :=
  ∀ n, P6500774242548463082.a n = A054275 n

end A054275

/-!
# A054276: Positions of 0's in the decimal expansion of exp(1).

The programs for A054276, there is no canonical definition to state claims against.
-/

/-! ## A054276.P7649442291734750145

`A053659(n+1)+1`
-/

namespace A054276.P7649442291734750145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053659 (n + 1) + 1

end

end A054276.P7649442291734750145

/-! ## A054276.P4723372800565656922

`eq[0, A001113(n)]+1`
-/

namespace A054276.P4723372800565656922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054276.P4723372800565656922

/-! ## A054276.P11966863168809883978

`lt[A001113(n+1), 1]+2`
-/

namespace A054276.P11966863168809883978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1 + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A054276.P11966863168809883978

/-! ## A054276.P9646555505471153532

`eq[9, A153805(n)]+2`
-/

namespace A054276.P9646555505471153532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A054276.P9646555505471153532

/-! ## A054276.P11158059583756983311

`lt[A086997(n+1), 1]+1`
-/

namespace A054276.P11158059583756983311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086997 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A054276.P11158059583756983311

/-! ## A054276.P13798358798685315123

`A011760(A053659(n+1))`
-/

namespace A054276.P13798358798685315123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A053659 (n + 1)).toNat

end

end A054276.P13798358798685315123

/-! ## A054276.P5948942185806234382

`A020725(eq[0, A001113(n)])`
-/

namespace A054276.P5948942185806234382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054276.P5948942185806234382

/-! ## A054276.P10567013137332435038

`eq[A000796(n), A073212(n)]+1`
-/

namespace A054276.P10567013137332435038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A054276.P10567013137332435038

/-! ## A054276.P7668026414780380982

`eq[A000796(n), A187747(n)]+1`
-/

namespace A054276.P7668026414780380982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A054276.P7668026414780380982

/-! ## A054276.P15630432584628710042

`eq[A073212(n), A187747(n)]+1`
-/

namespace A054276.P15630432584628710042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A054276.P15630432584628710042

/-! ## A054276.P18325254901503958479

`lt[A001113(n-A057427(n)), 1]`
-/

namespace A054276.P18325254901503958479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (((n : ℤ) - A057427 n).toNat + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A054276.P18325254901503958479

/-! ## A054276.P6850406666525089355

`eq[A187747(n), A231325(n+1)]+1`
-/

namespace A054276.P6850406666525089355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231325 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A054276.P6850406666525089355

/-! ## A054276.P14388971307819547286

`eq[0, A001355(2*(n+1))]+1`
-/

namespace A054276.P14388971307819547286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054276.P14388971307819547286

/-! ## A054276.P17973018075894314393

`eq[1, A001355(A004277(n))+1]`
-/

namespace A054276.P17973018075894314393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A004277 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054276.P17973018075894314393

/-!
# A054277: Positions of 1's in the decimal expansion of exp(1).

The programs for A054277, there is no canonical definition to state claims against.
-/

/-! ## A054277.P14068465294604414503

`A053687(n)+1`
-/

namespace A054277.P14068465294604414503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053687 n + 1

end

end A054277.P14068465294604414503

/-! ## A054277.P10597478153839298105

`eq[1, A001113(n)]+1`
-/

namespace A054277.P10597478153839298105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054277.P10597478153839298105

/-! ## A054277.P8343356290462819974

`2-(A106400(n)²-A053687(n))`
-/

namespace A054277.P8343356290462819974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A106400 n ^ 2 - A053687 n)

end

end A054277.P8343356290462819974

/-! ## A054277.P13601633212017913028

`eq[1, A086996(n)]+1`
-/

namespace A054277.P13601633212017913028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086996 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054277.P13601633212017913028

/-! ## A054277.P18066482669009171128

`eq[1, A091131(n+1)]+2`
-/

namespace A054277.P18066482669009171128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (n + 1 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A054277.P18066482669009171128

/-! ## A054277.P409374484847804286

`A020725(A053687(n))`
-/

namespace A054277.P409374484847804286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A053687 n).toNat

end

end A054277.P409374484847804286

/-! ## A054277.P2453816042152389968

`A020725(eq[1, A001113(n)])`
-/

namespace A054277.P2453816042152389968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054277.P2453816042152389968

/-! ## A054277.P7177919140173060400

`A103517(eq[1, A001113(n)])/2`
-/

namespace A054277.P7177919140173060400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A054277.P7177919140173060400

/-! ## A054277.P248251877068897559

`eq[A073212(n), A123152(n+1)]+1`
-/

namespace A054277.P248251877068897559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A054277.P248251877068897559

/-! ## A054277.P5842740591414917058

`eq[1, A001355(2*(n+1))]+1`
-/

namespace A054277.P5842740591414917058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054277.P5842740591414917058

/-! ## A054277.P2185174108271274044

`A008619(2*A053687(n))`
-/

namespace A054277.P2185174108271274044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A053687 n).toNat

end

end A054277.P2185174108271274044

/-! ## A054277.P6097406888348100604

`eq[1, A001355(A004277(n))]`
-/

namespace A054277.P6097406888348100604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054277.P6097406888348100604

/-! ## A054277.P17480412005289776804

`eq[1, A001355(A004273(n)+1)]`
-/

namespace A054277.P17480412005289776804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A004273 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054277.P17480412005289776804

/-! ## A054277.P6681969101941098269

`A008619(2*eq[1, A001113(n)])`
-/

namespace A054277.P6681969101941098269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054277.P6681969101941098269

/-! ## A054277.P282093960819188577

`A052938(2*eq[1, A001113(n)])`
-/

namespace A054277.P282093960819188577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054277.P282093960819188577

/-! ## A054277.P203306148635088464

`A008611(3*A053687(n))`
-/

namespace A054277.P203306148635088464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A053687 n).toNat

end

end A054277.P203306148635088464

/-!
# A054278: Positions of 2's in the decimal expansion of exp(1).

The programs for A054278, there is no canonical definition to state claims against.
-/

/-! ## A054278.P7366055950941245780

`eq[2, A001113(n)]+1`
-/

namespace A054278.P7366055950941245780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054278.P7366055950941245780

/-! ## A054278.P18318983528415856477

`eq[2, A001355(2*(n+1))]+1`
-/

namespace A054278.P18318983528415856477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054278.P18318983528415856477

/-! ## A054278.P5817898536368581973

`eq[2, A001355(A004277(n))]`
-/

namespace A054278.P5817898536368581973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054278.P5817898536368581973

/-! ## A054278.P8003713782491214833

`eq[2, A001355(A004273(n)+1)]`
-/

namespace A054278.P8003713782491214833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A004273 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054278.P8003713782491214833

/-! ## A054278.P11564068884813449311

`A008619(2*eq[2, A001113(n)])`
-/

namespace A054278.P11564068884813449311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054278.P11564068884813449311

/-! ## A054278.P4855443465969585934

`A052938(2*eq[2, A001113(n)])`
-/

namespace A054278.P4855443465969585934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054278.P4855443465969585934

/-! ## A054278.P4634047719816788758

`A008619(A005408(eq[2, A001113(n)]))`
-/

namespace A054278.P4634047719816788758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A054278.P4634047719816788758

/-! ## A054278.P14761696495434021220

`A065033(A103517(eq[2, A001113(n)]))`
-/

namespace A054278.P14761696495434021220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A054278.P14761696495434021220

/-!
# A054279: Positions of 3's in the decimal expansion of exp(1).

The programs for A054279, there is no canonical definition to state claims against.
-/

/-! ## A054279.P11868405947003722163

`A053689(n)+1`
-/

namespace A054279.P11868405947003722163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053689 n + 1

end

end A054279.P11868405947003722163

/-! ## A054279.P18275517553005949733

`eq[3, A001113(n)]+1`
-/

namespace A054279.P18275517553005949733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054279.P18275517553005949733

/-! ## A054279.P10510199074264171806

`A011760(A053689(n))`
-/

namespace A054279.P10510199074264171806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A053689 n).toNat

end

end A054279.P10510199074264171806

/-! ## A054279.P9400627683999272719

`A020725(eq[3, A001113(n)])`
-/

namespace A054279.P9400627683999272719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054279.P9400627683999272719

/-! ## A054279.P16350814907459782443

`A008619(2*A053689(n))`
-/

namespace A054279.P16350814907459782443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A053689 n).toNat

end

end A054279.P16350814907459782443

/-! ## A054279.P13712779126725822606

`A028242(2*A053689(n))`
-/

namespace A054279.P13712779126725822606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A053689 n).toNat

end

end A054279.P13712779126725822606

/-! ## A054279.P8976048883182550246

`A029579(2*A053689(n))`
-/

namespace A054279.P8976048883182550246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A053689 n).toNat

end

end A054279.P8976048883182550246

/-! ## A054279.P4348163517595811713

`A052938(2*A053689(n))`
-/

namespace A054279.P4348163517595811713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A053689 n).toNat

end

end A054279.P4348163517595811713

/-! ## A054279.P12134028889992510804

`1-A001057(2*A053689(n))`
-/

namespace A054279.P12134028889992510804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001057 (2 * A053689 n).toNat

end

end A054279.P12134028889992510804

/-! ## A054279.P7119788480809203832

`A001057(or(1, 2*A053689(n)))`
-/

namespace A054279.P7119788480809203832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.lor 1 (2 * A053689 n)).toNat

end

end A054279.P7119788480809203832

/-! ## A054279.P10501983110295436262

`A008611(3*A053689(n))`
-/

namespace A054279.P10501983110295436262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A053689 n).toNat

end

end A054279.P10501983110295436262

/-! ## A054279.P4870426082491160142

`A008620(3*A053689(n))`
-/

namespace A054279.P4870426082491160142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A053689 n).toNat

end

end A054279.P4870426082491160142

/-!
# A054280: Positions of 4's in the decimal expansion of exp(1).

The programs for A054280, there is no canonical definition to state claims against.
-/

/-! ## A054280.P7957813707527891499

`A053690(n+1)+1`
-/

namespace A054280.P7957813707527891499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053690 (n + 1) + 1

end

end A054280.P7957813707527891499

/-! ## A054280.P18247893630606498111

`eq[4, A001113(n)]+1`
-/

namespace A054280.P18247893630606498111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054280.P18247893630606498111

/-! ## A054280.P4889071752399983042

`eq[4, A001113(abs(1-n))]`
-/

namespace A054280.P4889071752399983042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (|1 - (n : ℤ)|.toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054280.P4889071752399983042

/-! ## A054280.P1544956937098937543

`eq[10, A086996(n)/10]+1`
-/

namespace A054280.P1544956937098937543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086996 (n + 1) : ℚ) / 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A054280.P1544956937098937543

/-! ## A054280.P14485473193090002079

`A020725(A053690(n+1))`
-/

namespace A054280.P14485473193090002079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A053690 (n + 1)).toNat

end

end A054280.P14485473193090002079

/-! ## A054280.P1481831885784082202

`A020725(eq[4, A001113(n)])`
-/

namespace A054280.P1481831885784082202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054280.P1481831885784082202

/-! ## A054280.P8735967056752320023

`eq[4, A001355(2*(n+1))]+1`
-/

namespace A054280.P8735967056752320023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054280.P8735967056752320023

/-! ## A054280.P6136238621622281326

`eq[2, A001355(A004277(n))-2]`
-/

namespace A054280.P6136238621622281326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A004277 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054280.P6136238621622281326

/-! ## A054280.P15565456335920643645

`eq[4, A001355(A004273(n)+1)]`
-/

namespace A054280.P15565456335920643645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A004273 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054280.P15565456335920643645

/-! ## A054280.P17872259512757344568

`eq[4, A001355(A065033(4*n))]`
-/

namespace A054280.P17872259512757344568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A065033 (4 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054280.P17872259512757344568

/-!
# A054281: Positions of 5's in the decimal expansion of exp(1).

The programs for A054281, there is no canonical definition to state claims against.
-/

/-! ## A054281.P6609657548747315651

`A053675(n)+1`
-/

namespace A054281.P6609657548747315651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053675 n + 1

end

end A054281.P6609657548747315651

/-! ## A054281.P13876136164719445241

`eq[5, A001113(n)]+1`
-/

namespace A054281.P13876136164719445241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054281.P13876136164719445241

/-! ## A054281.P13802887772573754987

`eq[4, A121239(n)]+1`
-/

namespace A054281.P13802887772573754987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054281.P13802887772573754987

/-! ## A054281.P3827353215106626668

`A020725(A053675(n))`
-/

namespace A054281.P3827353215106626668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A053675 n).toNat

end

end A054281.P3827353215106626668

/-! ## A054281.P11755880744593486515

`eq[2, A153805(A289207(n))-2]`
-/

namespace A054281.P11755880744593486515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 (A289207 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054281.P11755880744593486515

/-! ## A054281.P17709163606567030289

`eq[5, A001355(2*(n+1))]+1`
-/

namespace A054281.P17709163606567030289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054281.P17709163606567030289

/-! ## A054281.P16568164425166640757

`A008619(2*A053675(n))`
-/

namespace A054281.P16568164425166640757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A053675 n).toNat

end

end A054281.P16568164425166640757

/-! ## A054281.P1896351588535292784

`A008611(3*A053675(n))`
-/

namespace A054281.P1896351588535292784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A053675 n).toNat

end

end A054281.P1896351588535292784

/-! ## A054281.P3552970614147939491

`A008620(3*A053675(n))`
-/

namespace A054281.P3552970614147939491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A053675 n).toNat

end

end A054281.P3552970614147939491

/-!
# A054282: Positions of 6's in the decimal expansion of exp(1).

The programs for A054282, there is no canonical definition to state claims against.
-/

/-! ## A054282.P4079203830918369735

`A053679(n)+1`
-/

namespace A054282.P4079203830918369735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053679 n + 1

end

end A054282.P4079203830918369735

/-! ## A054282.P371737661179802836

`eq[6, A001113(n)]+1`
-/

namespace A054282.P371737661179802836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054282.P371737661179802836

/-! ## A054282.P10562825051410613855

`2-(A033999(n)²-A053679(n))`
-/

namespace A054282.P10562825051410613855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A033999 n ^ 2 - A053679 n)

end

end A054282.P10562825051410613855

/-! ## A054282.P3941672222477484546

`A011760(A053679(n))`
-/

namespace A054282.P3941672222477484546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A053679 n).toNat

end

end A054282.P3941672222477484546

/-! ## A054282.P15986738371142386670

`eq[1, A153805(A289207(n))-2]`
-/

namespace A054282.P15986738371142386670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 (A289207 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054282.P15986738371142386670

/-! ## A054282.P11793109425859468478

`A008619(2*A053679(n))`
-/

namespace A054282.P11793109425859468478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A053679 n).toNat

end

end A054282.P11793109425859468478

/-! ## A054282.P2454599980669624636

`A028242(2*A053679(n))`
-/

namespace A054282.P2454599980669624636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A053679 n).toNat

end

end A054282.P2454599980669624636

/-! ## A054282.P17457382537677646443

`A008611(3*A053679(n))`
-/

namespace A054282.P17457382537677646443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A053679 n).toNat

end

end A054282.P17457382537677646443

/-! ## A054282.P14603801169908072173

`A008620(3*A053679(n))`
-/

namespace A054282.P14603801169908072173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A053679 n).toNat

end

end A054282.P14603801169908072173

/-!
# A054283: Positions of 7's in the decimal expansion of exp(1).

The programs for A054283, there is no canonical definition to state claims against.
-/

/-! ## A054283.P13273750011232071527

`A053680(n)+1`
-/

namespace A054283.P13273750011232071527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053680 n + 1

end

end A054283.P13273750011232071527

/-! ## A054283.P3580310933830830716

`eq[7, A001113(n)]+1`
-/

namespace A054283.P3580310933830830716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054283.P3580310933830830716

/-! ## A054283.P18305906465232075407

`1-(A004524(Δ[A004524(n)])-A053680(n))`
-/

namespace A054283.P18305906465232075407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A004524 (f1 (n + 1) - f1 n).toNat - A053680 n)

end

end A054283.P18305906465232075407

/-! ## A054283.P1975984865151482886

`eq[2, A121239(n)]+1`
-/

namespace A054283.P1975984865151482886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054283.P1975984865151482886

/-! ## A054283.P16112973993041424319

`eq[2, A153805(n)]+2`
-/

namespace A054283.P16112973993041424319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A054283.P16112973993041424319

/-! ## A054283.P9558290632849759404

`lt[2, A086997(n+1)]+1`
-/

namespace A054283.P9558290632849759404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086997 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A054283.P9558290632849759404

/-! ## A054283.P9103614293936440911

`A020725(A053680(n))`
-/

namespace A054283.P9103614293936440911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A053680 n).toNat

end

end A054283.P9103614293936440911

/-! ## A054283.P13325842876080211531

`2-A001489(eq[2, A153805(n)])`
-/

namespace A054283.P13325842876080211531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054283.P13325842876080211531

/-! ## A054283.P8102981074962914799

`eq[A086997(n+1), A157532(n+1)]+1`
-/

namespace A054283.P8102981074962914799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A054283.P8102981074962914799

/-! ## A054283.P10788532576555029751

`A052938(2*A053680(n))`
-/

namespace A054283.P10788532576555029751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A053680 n).toNat

end

end A054283.P10788532576555029751

/-! ## A054283.P15603003104531935931

`eq[7, A001355(A004273(n)+1)]`
-/

namespace A054283.P15603003104531935931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A004273 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054283.P15603003104531935931

/-!
# A054284: Positions of 8's in the decimal expansion of exp(1).

The programs for A054284, there is no canonical definition to state claims against.
-/

/-! ## A054284.P11840374054552674567

`A053681(n)+1`
-/

namespace A054284.P11840374054552674567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053681 n + 1

end

end A054284.P11840374054552674567

/-! ## A054284.P8714747978233503642

`A000041(n)-(A000065(n)-A053681(n))`
-/

namespace A054284.P8714747978233503642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A000065 n - A053681 n)

end

end A054284.P8714747978233503642

/-! ## A054284.P6974339415102603998

`eq[1, A153805(n)]+2`
-/

namespace A054284.P6974339415102603998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A054284.P6974339415102603998

/-! ## A054284.P624808352862495879

`A020725(A053681(n))`
-/

namespace A054284.P624808352862495879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A053681 n).toNat

end

end A054284.P624808352862495879

/-! ## A054284.P11735909197172489366

`2-A001489(eq[1, A153805(n)])`
-/

namespace A054284.P11735909197172489366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054284.P11735909197172489366

/-! ## A054284.P10726972875026092587

`eq[1, A121239(n)]+1`
-/

namespace A054284.P10726972875026092587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054284.P10726972875026092587

/-! ## A054284.P14551175544229830369

`eq[1, A153805(A289207(n))]`
-/

namespace A054284.P14551175544229830369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 (A289207 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054284.P14551175544229830369

/-! ## A054284.P4762233719773032487

`A008619(2*A053681(n))`
-/

namespace A054284.P4762233719773032487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A053681 n).toNat

end

end A054284.P4762233719773032487

/-! ## A054284.P2430337717703982999

`A052938(2*A053681(n))`
-/

namespace A054284.P2430337717703982999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A053681 n).toNat

end

end A054284.P2430337717703982999

/-! ## A054284.P3634812419491571694

`A029579(2*A053681(n))`
-/

namespace A054284.P3634812419491571694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A053681 n).toNat

end

end A054284.P3634812419491571694

/-! ## A054284.P4623506446127385987

`A008611(3*A053681(n))`
-/

namespace A054284.P4623506446127385987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A053681 n).toNat

end

end A054284.P4623506446127385987

/-! ## A054284.P1961134903535565231

`A008620(3*A053681(n))`
-/

namespace A054284.P1961134903535565231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A053681 n).toNat

end

end A054284.P1961134903535565231

/-!
# A054285: Positions of 9's in the decimal expansion of exp(1).

The programs for A054285, there is no canonical definition to state claims against.
-/

/-! ## A054285.P11094680865001621972

`eq[9, A001113(n)]+1`
-/

namespace A054285.P11094680865001621972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054285.P11094680865001621972

/-! ## A054285.P5741182870494722743

`eq[9, A001113(abs(1-n))]`
-/

namespace A054285.P5741182870494722743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (|1 - (n : ℤ)|.toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054285.P5741182870494722743

/-! ## A054285.P3316013462476954893

`A053682(n+1)+1`
-/

namespace A054285.P3316013462476954893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053682 (n + 1) + 1

end

end A054285.P3316013462476954893

/-! ## A054285.P9342709705683236980

`eq[0, A121239(n)]+1`
-/

namespace A054285.P9342709705683236980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054285.P9342709705683236980

/-! ## A054285.P10296680495013000035

`A020725(A053682(n+1))`
-/

namespace A054285.P10296680495013000035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A053682 (n + 1)).toNat

end

end A054285.P10296680495013000035

/-! ## A054285.P3672139207800152652

`eq[0, A153805(A289207(n))]`
-/

namespace A054285.P3672139207800152652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 (A289207 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054285.P3672139207800152652

/-! ## A054285.P5102971702978031653

`A020725(eq[9, A001113(n)])`
-/

namespace A054285.P5102971702978031653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054285.P5102971702978031653

/-! ## A054285.P4092193255709487030

`A153152(A053682(Δ[n²]-n))`
-/

namespace A054285.P4092193255709487030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A053682 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A054285.P4092193255709487030

/-! ## A054285.P18164041806592260610

`eq[9, A001355(A004277(n))]`
-/

namespace A054285.P18164041806592260610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054285.P18164041806592260610

/-! ## A054285.P16117273767075929305

`eq[9, A001355(A000007(n)+2*n)]`
-/

namespace A054285.P16117273767075929305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A000007 n + (2 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054285.P16117273767075929305

/-! ## A054285.P1652211891116859603

`eq[9, A001355(A000007(n)+n+n)]`
-/

namespace A054285.P1652211891116859603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A000007 n + (n : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054285.P1652211891116859603

/-!
# A054286: Positions of 0's in the decimal expansion of the Golden Ratio (sqrt(5)+1)/2.

The programs for A054286, there is no canonical definition to state claims against.
-/

/-! ## A054286.P10695978512492980106

`eq[0, A001622(n)]+1`
-/

namespace A054286.P10695978512492980106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054286.P10695978512492980106

/-! ## A054286.P13509115955414449373

`lt[A094214(n), 1]+2`
-/

namespace A054286.P13509115955414449373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094214 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A054286.P13509115955414449373

/-! ## A054286.P4510706247320846729

`eq[0, A104457(n)]+1`
-/

namespace A054286.P4510706247320846729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054286.P4510706247320846729

/-! ## A054286.P17618833349693632124

`eq[9, A109866(n+1)]+1`
-/

namespace A054286.P17618833349693632124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054286.P17618833349693632124

/-! ## A054286.P838530766699629612

`A020725(eq[0, A001622(n)])`
-/

namespace A054286.P838530766699629612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054286.P838530766699629612

/-! ## A054286.P9395472231867799800

`A065475(eq[0, A001622(n)])`
-/

namespace A054286.P9395472231867799800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054286.P9395472231867799800

/-! ## A054286.P17965756405735043131

`A114637(eq[0, A001622(n)])`
-/

namespace A054286.P17965756405735043131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054286.P17965756405735043131

/-! ## A054286.P142211299955545152

`A020725(eq[0, A104457(n)])`
-/

namespace A054286.P142211299955545152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054286.P142211299955545152

/-! ## A054286.P10209955529974427709

`A153152(eq[0, A001622(n)])`
-/

namespace A054286.P10209955529974427709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054286.P10209955529974427709

/-! ## A054286.P16317908949487000753

`A065475(eq[0, A104457(n)])`
-/

namespace A054286.P16317908949487000753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054286.P16317908949487000753

/-! ## A054286.P10106236697449994204

`A153152(eq[0, A104457(n)])`
-/

namespace A054286.P10106236697449994204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054286.P10106236697449994204

/-! ## A054286.P17336540736906892808

`lt[A001622(n-A057427(n)), 1]`
-/

namespace A054286.P17336540736906892808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (((n : ℤ) - A057427 n).toNat + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A054286.P17336540736906892808

/-! ## A054286.P15615324011004714287

`eq[9, A109866(A233583(n+1))]`
-/

namespace A054286.P15615324011004714287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054286.P15615324011004714287

/-!
# A054287: Positions of 1's in the decimal expansion of (1 + sqrt(5))/2.

The programs for A054287, there is no canonical definition to state claims against.
-/

/-! ## A054287.P15336901162865156987

`eq[1, A001622(n)]+1`
-/

namespace A054287.P15336901162865156987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054287.P15336901162865156987

/-! ## A054287.P12424842145261917035

`eq[1, A001622(abs(1-n))]`
-/

namespace A054287.P12424842145261917035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (|1 - (n : ℤ)|.toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054287.P12424842145261917035

/-! ## A054287.P14415067013868541721

`eq[8, A109866(n+1)]+1`
-/

namespace A054287.P14415067013868541721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054287.P14415067013868541721

/-! ## A054287.P15711888981293913723

`A008619(2*eq[1, A001622(n)])`
-/

namespace A054287.P15711888981293913723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054287.P15711888981293913723

/-! ## A054287.P14946040766571863374

`A028242(2*eq[1, A001622(n)])`
-/

namespace A054287.P14946040766571863374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054287.P14946040766571863374

/-! ## A054287.P13324523895436534176

`A131732(2*eq[1, A001622(n)])`
-/

namespace A054287.P13324523895436534176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054287.P13324523895436534176

/-! ## A054287.P6767740707137689807

`A008619(A005408(eq[1, A001622(n)]))`
-/

namespace A054287.P6767740707137689807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A054287.P6767740707137689807

/-!
# A054288: Positions of 2's in the decimal expansion of (1 + sqrt(5))/2.

The programs for A054288, there is no canonical definition to state claims against.
-/

/-! ## A054288.P3323134885081848942

`eq[2, A001622(n)]+1`
-/

namespace A054288.P3323134885081848942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054288.P3323134885081848942

/-! ## A054288.P3445615983627831753

`eq[2, A094214(n)]+2`
-/

namespace A054288.P3445615983627831753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A054288.P3445615983627831753

/-! ## A054288.P15887129051050470897

`eq[2, A020837(n)]+1`
-/

namespace A054288.P15887129051050470897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054288.P15887129051050470897

/-! ## A054288.P8064364211126578812

`eq[2, A104457(n+1)]+2`
-/

namespace A054288.P8064364211126578812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A054288.P8064364211126578812

/-! ## A054288.P10292919308876519855

`eq[7, A109866(n+1)]+1`
-/

namespace A054288.P10292919308876519855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054288.P10292919308876519855

/-! ## A054288.P9477170984103142948

`A020725(eq[2, A001622(n)])`
-/

namespace A054288.P9477170984103142948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054288.P9477170984103142948

/-! ## A054288.P2563103699804687098

`A065475(eq[2, A001622(n)])`
-/

namespace A054288.P2563103699804687098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054288.P2563103699804687098

/-! ## A054288.P14694147902715398112

`A114637(eq[2, A001622(n)])`
-/

namespace A054288.P14694147902715398112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054288.P14694147902715398112

/-! ## A054288.P13125747469052454195

`eq[7, A109866(A028310(n))]`
-/

namespace A054288.P13125747469052454195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054288.P13125747469052454195

/-! ## A054288.P13404227281779570012

`A008619(2*eq[2, A001622(n)])`
-/

namespace A054288.P13404227281779570012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054288.P13404227281779570012

/-! ## A054288.P7618492593540694502

`A008619(2*eq[2, A020837(n)])`
-/

namespace A054288.P7618492593540694502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054288.P7618492593540694502

/-! ## A054288.P11745394697781465258

`A052938(2*eq[2, A020837(n)])`
-/

namespace A054288.P11745394697781465258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054288.P11745394697781465258

/-! ## A054288.P8956795346007073298

`A028242(2*eq[2, A001622(n)])`
-/

namespace A054288.P8956795346007073298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054288.P8956795346007073298

/-! ## A054288.P2821052900595678150

`A131732(2*eq[2, A001622(n)])`
-/

namespace A054288.P2821052900595678150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054288.P2821052900595678150

/-! ## A054288.P8763962968673778130

`eq[7, A109866(A233583(n+1))]`
-/

namespace A054288.P8763962968673778130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054288.P8763962968673778130

/-!
# A054289: Positions of 3's in the decimal expansion of (1 + sqrt(5))/2.

The programs for A054289, there is no canonical definition to state claims against.
-/

/-! ## A054289.P3313064656794976435

`eq[3, A001622(n)]+1`
-/

namespace A054289.P3313064656794976435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054289.P3313064656794976435

/-! ## A054289.P2094540625408220355

`A020725(eq[3, A001622(n)])`
-/

namespace A054289.P2094540625408220355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054289.P2094540625408220355

/-! ## A054289.P5789910613749473853

`A065475(eq[3, A001622(n)])`
-/

namespace A054289.P5789910613749473853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054289.P5789910613749473853

/-! ## A054289.P10425084813928849740

`A114637(eq[3, A001622(n)])`
-/

namespace A054289.P10425084813928849740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054289.P10425084813928849740

/-! ## A054289.P15621916119525716588

`eq[3, A020837(n)]+1`
-/

namespace A054289.P15621916119525716588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054289.P15621916119525716588

/-! ## A054289.P10036034122016911413

`A020725(eq[3, A104457(n)])`
-/

namespace A054289.P10036034122016911413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054289.P10036034122016911413

/-! ## A054289.P4469712099363897302

`A153152(eq[3, A001622(n)])`
-/

namespace A054289.P4469712099363897302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054289.P4469712099363897302

/-! ## A054289.P3363380282529431122

`A065475(eq[3, A104457(n)])`
-/

namespace A054289.P3363380282529431122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054289.P3363380282529431122

/-! ## A054289.P8886143597746299393

`A153152(eq[3, A104457(n)])`
-/

namespace A054289.P8886143597746299393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054289.P8886143597746299393

/-! ## A054289.P1664890863510449981

`A153152(eq[6, A079585(n)])`
-/

namespace A054289.P1664890863510449981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054289.P1664890863510449981

/-!
# A054290: Positions of 4's in the decimal expansion of (1+sqrt(5))/2.

The programs for A054290, there is no canonical definition to state claims against.
-/

/-! ## A054290.P16254467359932434280

`eq[4, A001622(n)]+1`
-/

namespace A054290.P16254467359932434280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054290.P16254467359932434280

/-! ## A054290.P4154639414087189178

`eq[4, A020837(n)]+1`
-/

namespace A054290.P4154639414087189178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054290.P4154639414087189178

/-! ## A054290.P13770194377519401036

`eq[4, A104457(n)]+1`
-/

namespace A054290.P13770194377519401036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054290.P13770194377519401036

/-! ## A054290.P18064131818947816428

`eq[5, A079585(n)]+1`
-/

namespace A054290.P18064131818947816428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079585 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054290.P18064131818947816428

/-! ## A054290.P15439060294091098961

`A020725(eq[4, A001622(n)])`
-/

namespace A054290.P15439060294091098961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054290.P15439060294091098961

/-! ## A054290.P11017595327572404915

`A065475(eq[4, A001622(n)])`
-/

namespace A054290.P11017595327572404915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054290.P11017595327572404915

/-! ## A054290.P4418907166726576177

`A114637(eq[4, A001622(n)])`
-/

namespace A054290.P4418907166726576177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054290.P4418907166726576177

/-! ## A054290.P7562453136500854872

`A020725(eq[4, A104457(n)])`
-/

namespace A054290.P7562453136500854872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054290.P7562453136500854872

/-! ## A054290.P541777321189258234

`A065475(eq[4, A104457(n)])`
-/

namespace A054290.P541777321189258234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054290.P541777321189258234

/-! ## A054290.P14998039300349046218

`A008619(A005408(eq[4, A001622(n)]))`
-/

namespace A054290.P14998039300349046218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A054290.P14998039300349046218

/-!
# A054291: Positions of 5's in the decimal expansion of (1+sqrt(5))/2.

The programs for A054291, there is no canonical definition to state claims against.
-/

/-! ## A054291.P9985384789615373708

`eq[4, A079585(n)]+1`
-/

namespace A054291.P9985384789615373708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079585 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054291.P9985384789615373708

/-! ## A054291.P1096221906215847468

`eq[5, A020837(n)]+1`
-/

namespace A054291.P1096221906215847468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054291.P1096221906215847468

/-! ## A054291.P5052361111244669755

`A020725(eq[4, A079585(n)])`
-/

namespace A054291.P5052361111244669755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054291.P5052361111244669755

/-! ## A054291.P356938174478525229

`A020725(eq[5, A001622(n)])`
-/

namespace A054291.P356938174478525229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054291.P356938174478525229

/-! ## A054291.P6175677442611229135

`A065475(eq[5, A001622(n)])`
-/

namespace A054291.P6175677442611229135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054291.P6175677442611229135

/-! ## A054291.P13592494360760605243

`A114637(eq[5, A001622(n)])`
-/

namespace A054291.P13592494360760605243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054291.P13592494360760605243

/-! ## A054291.P5971291874116481415

`A020725(eq[5, A104457(n)])`
-/

namespace A054291.P5971291874116481415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054291.P5971291874116481415

/-!
# A054292: Positions of 6's in the decimal expansion of (1+sqrt(5))/2.

The programs for A054292, there is no canonical definition to state claims against.
-/

/-! ## A054292.P1763840996600767214

`eq[6, A001622(n)]+1`
-/

namespace A054292.P1763840996600767214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054292.P1763840996600767214

/-! ## A054292.P6752362380930998067

`eq[6, A094214(n)]+2`
-/

namespace A054292.P6752362380930998067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A054292.P6752362380930998067

/-! ## A054292.P15761667482736858193

`eq[3, A079585(n)]+1`
-/

namespace A054292.P15761667482736858193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079585 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054292.P15761667482736858193

/-! ## A054292.P3476709919759013386

`eq[3, A132338(n)]+2`
-/

namespace A054292.P3476709919759013386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132338 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A054292.P3476709919759013386

/-! ## A054292.P10048100556457301991

`eq[3, A109866(n+1)]+1`
-/

namespace A054292.P10048100556457301991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054292.P10048100556457301991

/-! ## A054292.P9574635332517323330

`A020725(eq[3, A079585(n)])`
-/

namespace A054292.P9574635332517323330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054292.P9574635332517323330

/-! ## A054292.P17978140759229857291

`A020725(eq[6, A001622(n)])`
-/

namespace A054292.P17978140759229857291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054292.P17978140759229857291

/-! ## A054292.P4267286452581140718

`A020725(eq[6, A104457(n)])`
-/

namespace A054292.P4267286452581140718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054292.P4267286452581140718

/-! ## A054292.P3461827523300416044

`eq[1, A109866(A028310(n))-2]`
-/

namespace A054292.P3461827523300416044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054292.P3461827523300416044

/-!
# A054293: Positions of 7's in the decimal expansion of (1+sqrt(5))/2.

The programs for A054293, there is no canonical definition to state claims against.
-/

/-! ## A054293.P16046177045116738399

`eq[2, A132338(n)]+2`
-/

namespace A054293.P16046177045116738399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132338 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A054293.P16046177045116738399

/-! ## A054293.P10678801263474021631

`eq[7, A020837(n)]+1`
-/

namespace A054293.P10678801263474021631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054293.P10678801263474021631

/-! ## A054293.P10811589736602009251

`eq[7, A104457(n)]+1`
-/

namespace A054293.P10811589736602009251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054293.P10811589736602009251

/-! ## A054293.P10290955028065942430

`eq[2, A109866(n+1)]+1`
-/

namespace A054293.P10290955028065942430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054293.P10290955028065942430

/-! ## A054293.P12219885068417162037

`eq[2, A079585(n+1)]+2`
-/

namespace A054293.P12219885068417162037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079585 (n + 1 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A054293.P12219885068417162037

/-! ## A054293.P876361535041946945

`eq[2, A109866(A028310(n))]`
-/

namespace A054293.P876361535041946945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054293.P876361535041946945

/-! ## A054293.P1714120902254504993

`A020725(eq[7, A001622(n)])`
-/

namespace A054293.P1714120902254504993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054293.P1714120902254504993

/-! ## A054293.P13019793098112133198

`A065475(eq[7, A001622(n)])`
-/

namespace A054293.P13019793098112133198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054293.P13019793098112133198

/-! ## A054293.P7183372234118048918

`A114637(eq[7, A001622(n)])`
-/

namespace A054293.P7183372234118048918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054293.P7183372234118048918

/-! ## A054293.P2754929342185234668

`A020725(eq[7, A104457(n)])`
-/

namespace A054293.P2754929342185234668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054293.P2754929342185234668

/-! ## A054293.P10611067717687786987

`A153152(eq[7, A001622(n)])`
-/

namespace A054293.P10611067717687786987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054293.P10611067717687786987

/-! ## A054293.P13922047034869715309

`A153152(eq[7, A104457(n)])`
-/

namespace A054293.P13922047034869715309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054293.P13922047034869715309

/-! ## A054293.P18057320489417224968

`eq[2, A109866(A233583(n+1))]`
-/

namespace A054293.P18057320489417224968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054293.P18057320489417224968

/-!
# A054294: Positions of 8's in the decimal expansion of (1+sqrt(5))/2.

The programs for A054294, there is no canonical definition to state claims against.
-/

/-! ## A054294.P11835772013538156989

`eq[8, A001622(n)]+1`
-/

namespace A054294.P11835772013538156989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054294.P11835772013538156989

/-! ## A054294.P10519817642497530546

`eq[8, A094214(n)]+2`
-/

namespace A054294.P10519817642497530546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A054294.P10519817642497530546

/-! ## A054294.P291536756218902657

`eq[1, A079585(n)]+1`
-/

namespace A054294.P291536756218902657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079585 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054294.P291536756218902657

/-! ## A054294.P14390082724522480709

`eq[1, A132338(n)]+2`
-/

namespace A054294.P14390082724522480709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132338 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A054294.P14390082724522480709

/-! ## A054294.P17170165757653035528

`eq[1, A109866(n+1)]+1`
-/

namespace A054294.P17170165757653035528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054294.P17170165757653035528

/-! ## A054294.P11885411346741979808

`A020725(eq[1, A079585(n)])`
-/

namespace A054294.P11885411346741979808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054294.P11885411346741979808

/-! ## A054294.P17982394407463374725

`eq[1, A109866(A028310(n))]`
-/

namespace A054294.P17982394407463374725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054294.P17982394407463374725

/-! ## A054294.P16670102026530258620

`A020725(eq[8, A001622(n)])`
-/

namespace A054294.P16670102026530258620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054294.P16670102026530258620

/-! ## A054294.P9479046651967784057

`A065475(eq[8, A001622(n)])`
-/

namespace A054294.P9479046651967784057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054294.P9479046651967784057

/-! ## A054294.P12698670401397567896

`A020725(eq[8, A104457(n)])`
-/

namespace A054294.P12698670401397567896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054294.P12698670401397567896

/-! ## A054294.P4304599298080446415

`eq[1, A109866(A233583(n+1))]`
-/

namespace A054294.P4304599298080446415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054294.P4304599298080446415

/-!
# A054295: Positions of 9's in the decimal expansion of 1/2*(sqrt(5)+1).

The programs for A054295, there is no canonical definition to state claims against.
-/

/-! ## A054295.P16490926406749167021

`eq[9, A001622(n)]+1`
-/

namespace A054295.P16490926406749167021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054295.P16490926406749167021

/-! ## A054295.P17141068889025416805

`eq[0, A079585(n)]+1`
-/

namespace A054295.P17141068889025416805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079585 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054295.P17141068889025416805

/-! ## A054295.P17150502829278521519

`eq[9, A020837(n)]+1`
-/

namespace A054295.P17150502829278521519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054295.P17150502829278521519

/-! ## A054295.P9173747500515342600

`eq[0, A109866(n+1)]+1`
-/

namespace A054295.P9173747500515342600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054295.P9173747500515342600

/-! ## A054295.P16082019555941534928

`A020725(eq[0, A079585(n)])`
-/

namespace A054295.P16082019555941534928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054295.P16082019555941534928

/-! ## A054295.P15331991227801695236

`eq[0, A109866(A028310(n))]`
-/

namespace A054295.P15331991227801695236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054295.P15331991227801695236

/-! ## A054295.P13601300337097753137

`A065475(eq[9, A001622(n)])`
-/

namespace A054295.P13601300337097753137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054295.P13601300337097753137

/-! ## A054295.P16910533397861467323

`A020725(eq[9, A104457(n)])`
-/

namespace A054295.P16910533397861467323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054295.P16910533397861467323

/-! ## A054295.P16217527831604220223

`A065475(eq[9, A104457(n)])`
-/

namespace A054295.P16217527831604220223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054295.P16217527831604220223

/-! ## A054295.P15037651718911856031

`eq[0, A109866(A233583(n+1))]`
-/

namespace A054295.P15037651718911856031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054295.P15037651718911856031

/-!
# A054296: Positions of 0's in the decimal expansion of sqrt(2).

The programs for A054296, there is no canonical definition to state claims against.
-/

/-! ## A054296.P18272136913364626149

`eq[0, A002193(n)]+1`
-/

namespace A054296.P18272136913364626149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054296.P18272136913364626149

/-! ## A054296.P12946267892199348246

`eq[0, A120731(n)]`
-/

namespace A054296.P12946267892199348246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054296.P12946267892199348246

/-! ## A054296.P4337014905396985148

`eq[0, A014176(n)]+1`
-/

namespace A054296.P4337014905396985148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054296.P4337014905396985148

/-! ## A054296.P13216758920817445582

`eq[0, A188582(n)]+2`
-/

namespace A054296.P13216758920817445582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A054296.P13216758920817445582

/-! ## A054296.P4903088400182440668

`A020725(eq[0, A002193(n)])`
-/

namespace A054296.P4903088400182440668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054296.P4903088400182440668

/-! ## A054296.P10258447867414854431

`A065475(eq[0, A002193(n)])`
-/

namespace A054296.P10258447867414854431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054296.P10258447867414854431

/-! ## A054296.P10608133501870013628

`eq[0, A002193(abs(A024000(n)))]`
-/

namespace A054296.P10608133501870013628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (|A024000 n|.toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054296.P10608133501870013628

/-!
# A054297: Positions of 1's in the decimal expansion of sqrt(2).

The programs for A054297, there is no canonical definition to state claims against.
-/

/-! ## A054297.P17036560937615767893

`eq[1, A002193(n)]+1`
-/

namespace A054297.P17036560937615767893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054297.P17036560937615767893

/-! ## A054297.P1068235330461533702

`eq[1, A002193(abs(1-n))]`
-/

namespace A054297.P1068235330461533702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (|1 - (n : ℤ)|.toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054297.P1068235330461533702

/-! ## A054297.P10995142492849808235

`eq[1, A120731(n)]`
-/

namespace A054297.P10995142492849808235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054297.P10995142492849808235

/-! ## A054297.P5984141190471353704

`1-A001489(eq[1, A002193(n)])`
-/

namespace A054297.P5984141190471353704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054297.P5984141190471353704

/-! ## A054297.P2596566537254262203

`2-A024000(eq[1, A002193(n)])`
-/

namespace A054297.P2596566537254262203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A024000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054297.P2596566537254262203

/-! ## A054297.P4208262049623543422

`eq[A002193(n-A057427(n)), A057427(n)]`
-/

namespace A054297.P4208262049623543422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (((n : ℤ) - A057427 n).toNat + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054297.P4208262049623543422

/-! ## A054297.P4552940765642246838

`A008619(2*eq[1, A002193(n)])`
-/

namespace A054297.P4552940765642246838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054297.P4552940765642246838

/-! ## A054297.P2022204720217969639

`A028242(2*eq[1, A002193(n)])`
-/

namespace A054297.P2022204720217969639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054297.P2022204720217969639

/-! ## A054297.P17294081406000423362

`A110514(2*eq[1, A002193(n)])`
-/

namespace A054297.P17294081406000423362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054297.P17294081406000423362

/-! ## A054297.P2019736822127362011

`A065033(A005408(eq[1, A002193(n)]))`
-/

namespace A054297.P2019736822127362011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A054297.P2019736822127362011

/-!
# A054298: Positions of 2's in the decimal expansion of sqrt(2).

The programs for A054298, there is no canonical definition to state claims against.
-/

/-! ## A054298.P15352710715673624064

`eq[2, A002193(n)]+1`
-/

namespace A054298.P15352710715673624064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054298.P15352710715673624064

/-! ## A054298.P6146832909880203103

`eq[2, A120731(n)]`
-/

namespace A054298.P6146832909880203103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054298.P6146832909880203103

/-! ## A054298.P4928213241839284497

`eq[2, A188582(n)]+2`
-/

namespace A054298.P4928213241839284497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A054298.P4928213241839284497

/-! ## A054298.P4589894649920223050

`eq[2, A014176(n+1)]+2`
-/

namespace A054298.P4589894649920223050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 (n + 1 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A054298.P4589894649920223050

/-! ## A054298.P8824257140318358294

`A020725(eq[2, A002193(n)])`
-/

namespace A054298.P8824257140318358294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054298.P8824257140318358294

/-! ## A054298.P4509217710631410470

`A065475(eq[2, A002193(n)])`
-/

namespace A054298.P4509217710631410470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054298.P4509217710631410470

/-! ## A054298.P17640377426248275451

`eq[2, A002193(abs(A024000(n)))]`
-/

namespace A054298.P17640377426248275451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (|A024000 n|.toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054298.P17640377426248275451

/-! ## A054298.P187410400154576888

`1-A001489(eq[2, A002193(n)])`
-/

namespace A054298.P187410400154576888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054298.P187410400154576888

/-! ## A054298.P14449036836287627832

`2-A024000(eq[2, A002193(n)])`
-/

namespace A054298.P14449036836287627832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A024000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054298.P14449036836287627832

/-! ## A054298.P14815920808649620427

`eq[2, A002193(n-A057427(n))]`
-/

namespace A054298.P14815920808649620427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (((n : ℤ) - A057427 n).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054298.P14815920808649620427

/-! ## A054298.P17811717362314867114

`A008619(2*eq[2, A002193(n)])`
-/

namespace A054298.P17811717362314867114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054298.P17811717362314867114

/-! ## A054298.P11803628521471267679

`A028242(2*eq[2, A002193(n)])`
-/

namespace A054298.P11803628521471267679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054298.P11803628521471267679

/-! ## A054298.P4335553683069405526

`A110514(2*eq[2, A002193(n)])`
-/

namespace A054298.P4335553683069405526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054298.P4335553683069405526

/-!
# A054299: Positions of 3's in the decimal expansion of sqrt(2).

The programs for A054299, there is no canonical definition to state claims against.
-/

/-! ## A054299.P201184694879023874

`eq[3, A002193(n)]+1`
-/

namespace A054299.P201184694879023874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054299.P201184694879023874

/-! ## A054299.P10441836079825551676

`eq[3, A188582(n)]+2`
-/

namespace A054299.P10441836079825551676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A054299.P10441836079825551676

/-! ## A054299.P9420967939089377851

`eq[3, A120731(n+1)]+1`
-/

namespace A054299.P9420967939089377851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 (n + 1 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054299.P9420967939089377851

/-! ## A054299.P4762403935692302012

`A020725(eq[3, A002193(n)])`
-/

namespace A054299.P4762403935692302012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054299.P4762403935692302012

/-! ## A054299.P10765749918492485180

`A065475(eq[3, A002193(n)])`
-/

namespace A054299.P10765749918492485180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054299.P10765749918492485180

/-! ## A054299.P1764085655116638014

`eq[3, A120731(A028310(n))]`
-/

namespace A054299.P1764085655116638014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 ((A028310 n).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054299.P1764085655116638014

/-! ## A054299.P6209031814381806789

`A153152(eq[3, A002193(n)])`
-/

namespace A054299.P6209031814381806789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054299.P6209031814381806789

/-! ## A054299.P4163764672374253333

`A153152(eq[3, A014176(n)])`
-/

namespace A054299.P4163764672374253333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054299.P4163764672374253333

/-! ## A054299.P12752357289231410032

`eq[3, A120731(A233583(n+1))]`
-/

namespace A054299.P12752357289231410032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 ((A233583 (n + 1)).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054299.P12752357289231410032

