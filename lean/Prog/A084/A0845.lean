import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A084500: a(0)=0, after which each n occurs A084506(n) times.

The programs for A084500, the canonical program `A084500.P364298964088149` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084500 has offset 0).

The definition of A084500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084500.P364298964088149

`∑[char[A084505(n)+1]]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A084500

/-- `∑[char[A084505(n)+1]]` -/
def P364298964088149.Spec : Prop :=
  ∀ n, (P364298964088149.a n : ℤ) = A084500 n

theorem P364298964088149.correct : P364298964088149.Spec := by
  intro n
  simp only [A084500]

end A084500

/-!
# A084501: An infinite juggling sequence of three balls: successively larger ground-state 3-ball site swaps listed in lexicographic order.

The programs for A084501, there is no canonical definition to state claims against.
-/

/-! ## A084501.P12172637507697594501

`A084489(n+1)+2-n`
-/

namespace A084501.P12172637507697594501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084489 (n + 1) + (2 - (n : ℤ))

end

end A084501.P12172637507697594501

/-! ## A084501.P3990342542310937901

`Δ[A073642(A084503(n))]+3`
-/

namespace A084501.P3990342542310937901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A084503 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A084501.P3990342542310937901

/-! ## A084501.P15311238036289783146

`abs(A084489(n+1)+A022958(n))`
-/

namespace A084501.P15311238036289783146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084489 (n + 1) + A022958 n|

end

end A084501.P15311238036289783146

/-! ## A084501.P7574261292034318249

`log2(A084503(n+1)+Δ[A084503(n)]+1)`
-/

namespace A084501.P7574261292034318249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084503 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A084503 (n + 1) + (f1 (n + 1) - f1 n) + 1 : ℝ)

end

end A084501.P7574261292034318249

/-! ## A084501.P9556952143935557259

`A000120(A084503(n+1)+Δ[A084503(n)])`
-/

namespace A084501.P9556952143935557259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A084503 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A084501.P9556952143935557259

/-! ## A084501.P13165266637639557499

`A000120(A084503(n+1)+A084503(n+1)-A084503(n))`
-/

namespace A084501.P13165266637639557499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A084503 (n + 1) + (A084503 (n + 1) - A084503 n)).toNat

end

end A084501.P13165266637639557499

/-! ## A084501.P13037507140482755204

`A009056(A084489(n+1))-n`
-/

namespace A084501.P13037507140482755204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A084489 (n + 1)).toNat - (n : ℤ)

end

end A084501.P13037507140482755204

/-!
# A084502: Successively larger 3-ball ground-state site swaps of A084501 in concatenated decimal notation.

The programs for A084502, there is no canonical definition to state claims against.
-/

/-! ## A084502.P11834761065884625502

`A032834(lt[A298937(n), A034261(n)])-1`
-/

namespace A084502.P11834761065884625502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298937 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) - 1

end

end A084502.P11834761065884625502

/-!
# A084503: Binary juggling state vectors (given in decimal), associated with the three balls juggling sequence A084501.

The programs for A084503, there is no canonical definition to state claims against.
-/

/-! ## A084503.P17570772714524315133

`(a(n-1)+2^A084501(n)-1)/2` with `a(0)=7, a(1)=7`
-/

namespace A084503.P17570772714524315133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7, 7] fun n a =>
  (a (n - 1) + (2 : ℚ) ^ (A084501 n : ℤ) - 1) / 2

end

end A084503.P17570772714524315133

/-! ## A084503.P15189292937028207351

`A068505(A084504(n))`
-/

namespace A084503.P15189292937028207351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A084504 n).toNat

end

end A084503.P15189292937028207351

/-!
# A084504: Sequence A084503 in binary.

The programs for A084504, there is no canonical definition to state claims against.
-/

/-! ## A084504.P10705581781114422446

`A007088(A084503(n))`
-/

namespace A084504.P10705581781114422446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A084503 n).toNat

end

end A084504.P10705581781114422446

/-! ## A084504.P9652724788816012057

`A185544(2*A084503(n))`
-/

namespace A084504.P9652724788816012057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A084503 n).toNat

end

end A084504.P9652724788816012057

/-! ## A084504.P10452495265321430606

`A084524(A237252(n+1))`
-/

namespace A084504.P10452495265321430606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084524 (A237252 (n + 1)).toNat

end

end A084504.P10452495265321430606

/-! ## A084504.P14999811493682160277

`A086818(A326698(n+2))`
-/

namespace A084504.P14999811493682160277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086818 (A326698 (n + 2)).toNat

end

end A084504.P14999811493682160277

/-! ## A084504.P13796020365185098319

`A084524(A242529(n+2))`
-/

namespace A084504.P13796020365185098319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084524 (A242529 (n + 2)).toNat

end

end A084504.P13796020365185098319

/-!
# A084505: Partial sums of A084506.

The programs for A084505, the canonical program `A084505.P12495345020168809625` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084505 has offset 0).

The definition of A084505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084505.P12495345020168809625

`A084506(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A084505

/-- `A084506(n)+a(n-1)` -/
def P12495345020168809625.Spec : Prop :=
  ∀ n, P12495345020168809625.a n = A084505 n

theorem P12495345020168809625.correct : P12495345020168809625.Spec := by
  intro n
  simp only [A084505]

end A084505

/-! ## A084505.P8414729528618031039

`∑[A084506(A028310(n))]-1`
-/

namespace A084505.P8414729528618031039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084506 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A084505.P8414729528618031039

namespace A084505

/-- `∑[A084506(A028310(n))]-1` -/
def P8414729528618031039.Spec : Prop :=
  ∀ n, P8414729528618031039.a n = A084505 n

end A084505

/-! ## A084505.P7298245727594796600

`∑[A084506(n+1)]-A084506(n+1)`
-/

namespace A084505.P7298245727594796600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A084506 (n + 1)

end

end A084505.P7298245727594796600

namespace A084505

/-- `∑[A084506(n+1)]-A084506(n+1)` -/
def P7298245727594796600.Spec : Prop :=
  ∀ n, P7298245727594796600.a n = A084505 n

end A084505

/-! ## A084505.P15891075678999045499

`eq[1, gcd(A084500(n+1), A084500(n))]`
-/

namespace A084505.P15891075678999045499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084500 (n + 1)) (A084500 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084505.P15891075678999045499

namespace A084505

/-- `eq[1, gcd(A084500(n+1), A084500(n))]` -/
def P15891075678999045499.Spec : Prop :=
  ∀ n, (P15891075678999045499.a n : ℤ) = A084505 n

end A084505

/-! ## A084505.P13717473458849428497

`∑[A084506(n+1)]-A110591(A086570(n))`
-/

namespace A084505.P13717473458849428497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A110591 (A086570 n).toNat

end

end A084505.P13717473458849428497

namespace A084505

/-- `∑[A084506(n+1)]-A110591(A086570(n))` -/
def P13717473458849428497.Spec : Prop :=
  ∀ n, P13717473458849428497.a n = A084505 n

end A084505

/-!
# A084506: The length of each successively larger 3-ball ground-state site swap given in A084501, i.e., the number of digits in each term of A084502.

The programs for A084506, the canonical program `A084506.P17794317409769825461` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084506 has offset 1).

The definition of A084506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084506.P17794317409769825461

`a(ceil(n/4))+1` with `a(0)=1, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084506

/-- `a(ceil(n/4))+1` -/
def P17794317409769825461.Spec : Prop :=
  ∀ n, (P17794317409769825461.a n : ℤ) = A084506 (n + 1)

theorem P17794317409769825461.correct : P17794317409769825461.Spec := by
  intro n
  simp only [A084506, Nat.add_sub_cancel]

end A084506

/-! ## A084506.P17373161213449120101

`Δ[A084505(n)]`
-/

namespace A084506.P17373161213449120101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084506.P17373161213449120101

namespace A084506

/-- `Δ[A084505(n)]` -/
def P17373161213449120101.Spec : Prop :=
  ∀ n, P17373161213449120101.a n = A084506 (n + 1)

end A084506

/-! ## A084506.P1209266873335470080

`∑[char[A084508(n)]]`
-/

namespace A084506.P1209266873335470080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084508 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084506.P1209266873335470080

namespace A084506

/-- `∑[char[A084508(n)]]` -/
def P1209266873335470080.Spec : Prop :=
  ∀ n, (P1209266873335470080.a n : ℤ) = A084506 (n + 1)

end A084506

/-! ## A084506.P17595900222848726818

`∑[char[A094373(2*n)]]+1`
-/

namespace A084506.P17595900222848726818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A084506.P17595900222848726818

namespace A084506

/-- `∑[char[A094373(2*n)]]+1` -/
def P17595900222848726818.Spec : Prop :=
  ∀ n, (P17595900222848726818.a n : ℤ) = A084506 (n + 1)

end A084506

/-! ## A084506.P4496497143545492033

`∑[char[A131577(2*n)+1]]+1`
-/

namespace A084506.P4496497143545492033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (2 * n) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A084506.P4496497143545492033

namespace A084506

/-- `∑[char[A131577(2*n)+1]]+1` -/
def P4496497143545492033.Spec : Prop :=
  ∀ n, (P4496497143545492033.a n : ℤ) = A084506 (n + 1)

end A084506

/-! ## A084506.P6073164626095581697

`∑[char[∑[A098011(2*n+1)]]]+1`
-/

namespace A084506.P6073164626095581697
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A084506.P6073164626095581697

namespace A084506

/-- `∑[char[∑[A098011(2*n+1)]]]+1` -/
def P6073164626095581697.Spec : Prop :=
  ∀ n, (P6073164626095581697.a n : ℤ) = A084506 (n + 1)

end A084506

/-! ## A084506.P4012192235250652071

`ceil((log2(A004277(n)+2*n)+1)/2)`
-/

namespace A084506.P4012192235250652071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.logb 2 (A004277 n + (2 * n : ℤ) : ℝ) + 1) / 2⌉

end

end A084506.P4012192235250652071

namespace A084506

/-- `ceil((log2(A004277(n)+2*n)+1)/2)` -/
def P4012192235250652071.Spec : Prop :=
  ∀ n, P4012192235250652071.a n = A084506 (n + 1)

end A084506

/-! ## A084506.P16697694646353696048

`∑[char[floor(2^(n-1))*A000079(n)+1]]+1`
-/

namespace A084506.P16697694646353696048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * A000079 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A084506.P16697694646353696048

namespace A084506

/-- `∑[char[floor(2^(n-1))*A000079(n)+1]]+1` -/
def P16697694646353696048.Spec : Prop :=
  ∀ n, (P16697694646353696048.a n : ℤ) = A084506 (n + 1)

end A084506

/-! ## A084506.P3798570516415756316

`A084505(n+1)-A084505(n)`
-/

namespace A084506.P3798570516415756316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084505 (n + 1) - A084505 n

end

end A084506.P3798570516415756316

namespace A084506

/-- `A084505(n+1)-A084505(n)` -/
def P3798570516415756316.Spec : Prop :=
  ∀ n, P3798570516415756316.a n = A084506 (n + 1)

end A084506

/-! ## A084506.P5129488710285426240

`∑[char[A004171(n)*A167851(n+1)+1]]+1`
-/

namespace A084506.P5129488710285426240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n * A167851 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A084506.P5129488710285426240

namespace A084506

/-- `∑[char[A004171(n)*A167851(n+1)+1]]+1` -/
def P5129488710285426240.Spec : Prop :=
  ∀ n, (P5129488710285426240.a n : ℤ) = A084506 (n + 1)

end A084506

/-! ## A084506.P3433728992018586939

`A070941(A334233(n))`
-/

namespace A084506.P3433728992018586939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 (A334233 n).toNat

end

end A084506.P3433728992018586939

namespace A084506

/-- `A070941(A334233(n))` -/
def P3433728992018586939.Spec : Prop :=
  ∀ n, P3433728992018586939.a n = A084506 (n + 1)

end A084506

/-! ## A084506.P10504173568545617446

`ceil((log2(A004277(2*n))+1)/2)`
-/

namespace A084506.P10504173568545617446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.logb 2 (A004277 (2 * n) : ℝ) + 1) / 2⌉

end

end A084506.P10504173568545617446

namespace A084506

/-- `ceil((log2(A004277(2*n))+1)/2)` -/
def P10504173568545617446.Spec : Prop :=
  ∀ n, P10504173568545617446.a n = A084506 (n + 1)

end A084506

/-! ## A084506.P16834246399201567463

`A070939(A206915(2*n))`
-/

namespace A084506.P16834246399201567463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A206915 (2 * n)).toNat

end

end A084506.P16834246399201567463

namespace A084506

/-- `A070939(A206915(2*n))` -/
def P16834246399201567463.Spec : Prop :=
  ∀ n, P16834246399201567463.a n = A084506 (n + 1)

end A084506

/-! ## A084506.P3333023010573238990

`A029837(A004760(A246017(A004760(n+1))+1)+1)`
-/

namespace A084506.P3333023010573238990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A004760 (A246017 (A004760 (n + 1)).toNat + 1).toNat + 1).toNat

end

end A084506.P3333023010573238990

namespace A084506

/-- `A029837(A004760(A246017(A004760(n+1))+1)+1)` -/
def P3333023010573238990.Spec : Prop :=
  ∀ n, P3333023010573238990.a n = A084506 (n + 1)

end A084506

/-! ## A084506.P15388044448126054818

`A110591(A086570(n))`
-/

namespace A084506.P15388044448126054818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A086570 n).toNat

end

end A084506.P15388044448126054818

namespace A084506

/-- `A110591(A086570(n))` -/
def P15388044448126054818.Spec : Prop :=
  ∀ n, P15388044448126054818.a n = A084506 (n + 1)

end A084506

/-! ## A084506.P5545483849697637

`A110591(A133655(n))`
-/

namespace A084506.P5545483849697637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A133655 n).toNat

end

end A084506.P5545483849697637

namespace A084506

/-- `A110591(A133655(n))` -/
def P5545483849697637.Spec : Prop :=
  ∀ n, P5545483849697637.a n = A084506 (n + 1)

end A084506

/-! ## A084506.P15542211208811168951

`A110591(A008574(2*n)-1)`
-/

namespace A084506.P15542211208811168951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A008574 (2 * n) - 1).toNat

end

end A084506.P15542211208811168951

namespace A084506

/-- `A110591(A008574(2*n)-1)` -/
def P15542211208811168951.Spec : Prop :=
  ∀ n, P15542211208811168951.a n = A084506 (n + 1)

end A084506

/-! ## A084506.P4256273302261915894

`A070939(A000267(A265359(A002620(n+1))))`
-/

namespace A084506.P4256273302261915894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A000267 (A265359 (A002620 (n + 1)).toNat).toNat).toNat

end

end A084506.P4256273302261915894

namespace A084506

/-- `A070939(A000267(A265359(A002620(n+1))))` -/
def P4256273302261915894.Spec : Prop :=
  ∀ n, P4256273302261915894.a n = A084506 (n + 1)

end A084506

/-! ## A084506.P7191369699238556741

`A084556(A191247(n+1)+n)`
-/

namespace A084506.P7191369699238556741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (A191247 (n + 1) + (n : ℤ)).toNat

end

end A084506.P7191369699238556741

namespace A084506

/-- `A084556(A191247(n+1)+n)` -/
def P7191369699238556741.Spec : Prop :=
  ∀ n, P7191369699238556741.a n = A084506 (n + 1)

end A084506

/-!
# A084508: Partial sums of A084509. Positions of ones in the first differences of A084506.

The programs for A084508, the canonical program `A084508.P1995433140387097716` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084508 has offset 0).

The definition of A084508 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084508.P1995433140387097716

`5*a(n-1)-4*a(n-2)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=9`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084508

/-- `5*a(n-1)-4*a(n-2)` -/
def P1995433140387097716.Spec : Prop :=
  ∀ n, P1995433140387097716.a n = A084508 n

theorem P1995433140387097716.correct : P1995433140387097716.Spec := by
  intro n
  simp only [A084508]

end A084508

/-! ## A084508.P9748965259942695698

`∑[ogf((-x+2x^2+2x^3)/(-1+4x))]`
-/

namespace A084508.P9748965259942695698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, -2] [1, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084508.P9748965259942695698

namespace A084508

/-- `∑[ogf((-x+2x^2+2x^3)/(-1+4x))]` -/
def P9748965259942695698.Spec : Prop :=
  ∀ n, P9748965259942695698.a n = A084508 n

end A084508

/-! ## A084508.P3388168044567994427

`ogf((x-2x^2-2x^3)/(1-5x+4x^2))`
-/

namespace A084508.P3388168044567994427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, -2] [1, -5, 4] n

end

end A084508.P3388168044567994427

namespace A084508

/-- `ogf((x-2x^2-2x^3)/(1-5x+4x^2))` -/
def P3388168044567994427.Spec : Prop :=
  ∀ n, P3388168044567994427.a n = A084508 n

end A084508

/-! ## A084508.P9819849587321546479

`floor(record[1-(-2)^(n-2)])`
-/

namespace A084508.P9819849587321546479
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A084508.P9819849587321546479

namespace A084508

/-- `floor(record[1-(-2)^(n-2)])` -/
def P9819849587321546479.Spec : Prop :=
  ∀ n, P9819849587321546479.a n = A084508 n

end A084508

/-! ## A084508.P16517116664137540538

`record[1-ceil((-2)^(n-2))]`
-/

namespace A084508.P16517116664137540538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌈(-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084508.P16517116664137540538

namespace A084508

/-- `record[1-ceil((-2)^(n-2))]` -/
def P16517116664137540538.Spec : Prop :=
  ∀ n, P16517116664137540538.a n = A084508 n

end A084508

/-! ## A084508.P14561486305012097485

`4*a(n-1)-3` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A084508.P14561486305012097485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  4 * a (n - 1) - 3

end

end A084508.P14561486305012097485

namespace A084508

/-- `4*a(n-1)-3` -/
def P14561486305012097485.Spec : Prop :=
  ∀ n, P14561486305012097485.a n = A084508 n

end A084508

/-! ## A084508.P5417373901911656133

`lcm(4, a(n-1))-3` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A084508.P5417373901911656133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  (Int.lcm 4 (a (n - 1)) : ℤ) - 3

end

end A084508.P5417373901911656133

namespace A084508

/-- `lcm(4, a(n-1))-3` -/
def P5417373901911656133.Spec : Prop :=
  ∀ n, P5417373901911656133.a n = A084508 n

end A084508

/-! ## A084508.P13875326592863233214

`∑[ceil(Δ[2^(2*n-5)])]-1`
-/

namespace A084508.P13875326592863233214
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * n : ℤ) - 5 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (n + 1) - f2 n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A084508.P13875326592863233214

namespace A084508

/-- `∑[ceil(Δ[2^(2*n-5)])]-1` -/
def P13875326592863233214.Spec : Prop :=
  ∀ n, P13875326592863233214.a n = A084508 n

end A084508

/-! ## A084508.P3126993981042663487

`A127904(A004275(n))`
-/

namespace A084508.P3126993981042663487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127904 (A004275 n).toNat

end

end A084508.P3126993981042663487

namespace A084508

/-- `A127904(A004275(n))` -/
def P3126993981042663487.Spec : Prop :=
  ∀ n, P3126993981042663487.a n = A084508 n

end A084508

/-! ## A084508.P2364893346966373542

`xor(1, A034008(A004277(n)-1))`
-/

namespace A084508.P2364893346966373542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A034008 (A004277 n - 1).toNat)

end

end A084508.P2364893346966373542

namespace A084508

/-- `xor(1, A034008(A004277(n)-1))` -/
def P2364893346966373542.Spec : Prop :=
  ∀ n, P2364893346966373542.a n = A084508 n

end A084508

/-! ## A084508.P13460375015189522301

`∩[A127904(n), A162219(n+1)]`
-/

namespace A084508.P13460375015189522301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127904 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084508.P13460375015189522301

namespace A084508

/-- `∩[A127904(n), A162219(n+1)]` -/
def P13460375015189522301.Spec : Prop :=
  ∀ n, (P13460375015189522301.a n : ℤ) = A084508 n

end A084508

/-! ## A084508.P4416414151082998755

`ceil(xor(1, 4^n)/8)`
-/

namespace A084508.P4416414151082998755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (4 ^ n) : ℚ) / 8⌉

end

end A084508.P4416414151082998755

namespace A084508

/-- `ceil(xor(1, 4^n)/8)` -/
def P4416414151082998755.Spec : Prop :=
  ∀ n, P4416414151082998755.a n = A084508 n

end A084508

/-! ## A084508.P15066198119468649606

`and(A267880(2*n)+2, A084183(2*n))`
-/

namespace A084508.P15066198119468649606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267880 (2 * n) + 2) (A084183 (2 * n))

end

end A084508.P15066198119468649606

namespace A084508

/-- `and(A267880(2*n)+2, A084183(2*n))` -/
def P15066198119468649606.Spec : Prop :=
  ∀ n, P15066198119468649606.a n = A084508 n

end A084508

/-!
# A084509: Number of ground-state 3-ball juggling sequences of period n.

The programs for A084509, the canonical program `A084509.P7384577674323070191` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084509 has offset 0).

The definition of A084509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084509.P7384577674323070191

`ceil(6*4^(n-3))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084509

/-- `ceil(6*4^(n-3))` -/
def P7384577674323070191.Spec : Prop :=
  ∀ n, P7384577674323070191.a n = A084509 n

theorem P7384577674323070191.correct : P7384577674323070191.Spec := by
  intro n
  simp only [A084509]

end A084509

/-! ## A084509.P3207472997749631333

`ogf((-1+3x+2x^2+2x^3)/(-1+4x))`
-/

namespace A084509.P3207472997749631333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, -2, -2] [1, -4] n

end

end A084509.P3207472997749631333

namespace A084509

/-- `ogf((-1+3x+2x^2+2x^3)/(-1+4x))` -/
def P3207472997749631333.Spec : Prop :=
  ∀ n, P3207472997749631333.a n = A084509 n

end A084509

/-! ## A084509.P17446323658909930286

`4*a(n-1)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A084509.P17446323658909930286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 6] fun n a =>
  4 * a (n - 1)

end

end A084509.P17446323658909930286

namespace A084509

/-- `4*a(n-1)` -/
def P17446323658909930286.Spec : Prop :=
  ∀ n, (P17446323658909930286.a n : ℤ) = A084509 n

end A084509

/-! ## A084509.P16634214012768921445

`ceil(Δ[4^(n-2)]/2)^floor(atan(n))`
-/

namespace A084509.P16634214012768921445
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(f1 (n + 1) - f1 n) / 2⌉ : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A084509.P16634214012768921445

namespace A084509

/-- `ceil(Δ[4^(n-2)]/2)^floor(atan(n))` -/
def P16634214012768921445.Spec : Prop :=
  ∀ n, P16634214012768921445.a n = (A084509 n : ℚ)

end A084509

/-! ## A084509.P11113136946108374217

`a(n-1)*A158411(n)` with `a(0)=1`
-/

namespace A084509.P11113136946108374217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A158411 n

end

end A084509.P11113136946108374217

namespace A084509

/-- `a(n-1)*A158411(n)` -/
def P11113136946108374217.Spec : Prop :=
  ∀ n, P11113136946108374217.a n = A084509 n

end A084509

/-! ## A084509.P15182406249548677457

`A098011(or(1, comp[2*(n+1)]))`
-/

namespace A084509.P15182406249548677457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A084509.P15182406249548677457

namespace A084509

/-- `A098011(or(1, comp[2*(n+1)]))` -/
def P15182406249548677457.Spec : Prop :=
  ∀ n, P15182406249548677457.a n = A084509 n

end A084509

/-! ## A084509.P1568412489687789296

`A087009(abs(1-n)+n-1)`
-/

namespace A084509.P1568412489687789296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087009 (|1 - (n : ℤ)| + ((n : ℤ) - 1)).toNat

end

end A084509.P1568412489687789296

namespace A084509

/-- `A087009(abs(1-n)+n-1)` -/
def P1568412489687789296.Spec : Prop :=
  ∀ n, P1568412489687789296.a n = A084509 n

end A084509

/-! ## A084509.P7511825411604968559

`A098011(n-(2-n)%(n+1)+1)`
-/

namespace A084509.P7511825411604968559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 ((n : ℤ) - Int.tmod (2 - (n : ℤ)) (n + 1 : ℤ) + 1).toNat

end

end A084509.P7511825411604968559

namespace A084509

/-- `A098011(n-(2-n)%(n+1)+1)` -/
def P7511825411604968559.Spec : Prop :=
  ∀ n, P7511825411604968559.a n = A084509 n

end A084509

/-! ## A084509.P287497261070016723

`A111286(A004274(n))`
-/

namespace A084509.P287497261070016723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111286 (A004274 n).toNat

end

end A084509.P287497261070016723

namespace A084509

/-- `A111286(A004274(n))` -/
def P287497261070016723.Spec : Prop :=
  ∀ n, P287497261070016723.a n = A084509 n

end A084509

/-! ## A084509.P2166494554745692022

`A098011(record[A141310(n)])`
-/

namespace A084509.P2166494554745692022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A084509.P2166494554745692022

namespace A084509

/-- `A098011(record[A141310(n)])` -/
def P2166494554745692022.Spec : Prop :=
  ∀ n, P2166494554745692022.a n = A084509 n

end A084509

/-! ## A084509.P7755732624811361871

`A098011(A004274(n+1))`
-/

namespace A084509.P7755732624811361871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (A004274 (n + 1)).toNat

end

end A084509.P7755732624811361871

namespace A084509

/-- `A098011(A004274(n+1))` -/
def P7755732624811361871.Spec : Prop :=
  ∀ n, P7755732624811361871.a n = A084509 n

end A084509

/-! ## A084509.P18414847139366149894

`A098011(A004280(n+1))`
-/

namespace A084509.P18414847139366149894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (A004280 (n + 1)).toNat

end

end A084509.P18414847139366149894

namespace A084509

/-- `A098011(A004280(n+1))` -/
def P18414847139366149894.Spec : Prop :=
  ∀ n, P18414847139366149894.a n = A084509 n

end A084509

/-! ## A084509.P14176346944603301122

`A098011(A004275(n)+1)`
-/

namespace A084509.P14176346944603301122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (A004275 n + 1).toNat

end

end A084509.P14176346944603301122

namespace A084509

/-- `A098011(A004275(n)+1)` -/
def P14176346944603301122.Spec : Prop :=
  ∀ n, P14176346944603301122.a n = A084509 n

end A084509

/-! ## A084509.P3641765935144653508

`A098011(abs(Δ[A067998(n)]))`
-/

namespace A084509.P3641765935144653508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 |f1 (n + 1) - f1 n|.toNat

end

end A084509.P3641765935144653508

namespace A084509

/-- `A098011(abs(Δ[A067998(n)]))` -/
def P3641765935144653508.Spec : Prop :=
  ∀ n, P3641765935144653508.a n = A084509 n

end A084509

/-! ## A084509.P10709196498006151610

`A098011(A289207(2*n)+1)`
-/

namespace A084509.P10709196498006151610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (A289207 (2 * n) + 1).toNat

end

end A084509.P10709196498006151610

namespace A084509

/-- `A098011(A289207(2*n)+1)` -/
def P10709196498006151610.Spec : Prop :=
  ∀ n, P10709196498006151610.a n = A084509 n

end A084509

/-! ## A084509.P7978074484872699130

`A098011(A289207(n)+1+n)`
-/

namespace A084509.P7978074484872699130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (A289207 n + 1 + (n : ℤ)).toNat

end

end A084509.P7978074484872699130

namespace A084509

/-- `A098011(A289207(n)+1+n)` -/
def P7978074484872699130.Spec : Prop :=
  ∀ n, P7978074484872699130.a n = A084509 n

end A084509

/-! ## A084509.P6700837432931833566

`A098011(A033627(n+1)+1-n)`
-/

namespace A084509.P6700837432931833566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (A033627 (n + 1) + (1 - (n : ℤ))).toNat

end

end A084509.P6700837432931833566

namespace A084509

/-- `A098011(A033627(n+1)+1-n)` -/
def P6700837432931833566.Spec : Prop :=
  ∀ n, P6700837432931833566.a n = A084509 n

end A084509

/-! ## A084509.P3056338816606342032

`A098011(A109613(A004273(n)))`
-/

namespace A084509.P3056338816606342032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (A109613 (A004273 n).toNat).toNat

end

end A084509.P3056338816606342032

namespace A084509

/-- `A098011(A109613(A004273(n)))` -/
def P3056338816606342032.Spec : Prop :=
  ∀ n, P3056338816606342032.a n = A084509 n

end A084509

/-! ## A084509.P11333439706068278510

`lcm(A098011(n+1)*A141531(n), A141531(n))`
-/

namespace A084509.P11333439706068278510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A098011 (n + 1) * A141531 n) (A141531 n)

end

end A084509.P11333439706068278510

namespace A084509

/-- `lcm(A098011(n+1)*A141531(n), A141531(n))` -/
def P11333439706068278510.Spec : Prop :=
  ∀ n, (P11333439706068278510.a n : ℤ) = A084509 n

end A084509

/-! ## A084509.P5608311572845588229

`A098011(lt[A110164(n), 2*n])`
-/

namespace A084509.P5608311572845588229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110164 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A084509.P5608311572845588229

namespace A084509

/-- `A098011(lt[A110164(n), 2*n])` -/
def P5608311572845588229.Spec : Prop :=
  ∀ n, P5608311572845588229.a n = A084509 n

end A084509

/-!
# A084510: a(0)=0, after which each n occurs A084516(n) times.

The programs for A084510, there is no canonical definition to state claims against.
-/

/-! ## A084510.P16351695857827700207

`char[A084515(n)+1]+a(n-1)` with `a(0)=0`
-/

namespace A084510.P16351695857827700207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084515 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A084510.P16351695857827700207

/-! ## A084510.P8914060835130194478

`A000196(lt[A292506(2*(n+1)), A000196(3*n+4)])`
-/

namespace A084510.P8914060835130194478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292506 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A084510.P8914060835130194478

/-! ## A084510.P7973200946444661040

`A001221(A001248(n+1))*A084520(n)`
-/

namespace A084510.P7973200946444661040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001248 (n + 1)).toNat * A084520 n

end

end A084510.P7973200946444661040

/-! ## A084510.P17378939801761038315

`A084520(n)%A390445(n+1)`
-/

namespace A084510.P17378939801761038315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084520 n) (A390445 (n + 1))

end

end A084510.P17378939801761038315

/-! ## A084510.P7574707660200003968

`A084520(n)%A003064(n)`
-/

namespace A084510.P7574707660200003968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084520 n) (A003064 n)

end

end A084510.P7574707660200003968

/-!
# A084511: An infinite juggling sequence of three balls: successively larger indecomposable ground-state 3-ball site swaps listed in lexicographical order. A subset of A084501.

The programs for A084511, there is no canonical definition to state claims against.
-/

/-! ## A084511.P15101993390620856864

`A084493(n+1)+2-n`
-/

namespace A084511.P15101993390620856864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084493 (n + 1) + (2 - (n : ℤ))

end

end A084511.P15101993390620856864

/-! ## A084511.P16719118220869464922

`abs(A084493(n+1)+A022958(n))`
-/

namespace A084511.P16719118220869464922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084493 (n + 1) + A022958 n|

end

end A084511.P16719118220869464922

/-! ## A084511.P13730459052820904580

`A084493(n+1)+A001489(n)+2`
-/

namespace A084511.P13730459052820904580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084493 (n + 1) + A001489 n + 2

end

end A084511.P13730459052820904580

/-! ## A084511.P5302532140395494606

`A007954(A084493(n+1)+A022958(n))`
-/

namespace A084511.P5302532140395494606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A084493 (n + 1) + A022958 n).toNat

end

end A084511.P5302532140395494606

/-! ## A084511.P12394998597263725385

`(A084493(n+1)+A022958(n))*A007318(C(2, n))`
-/

namespace A084511.P12394998597263725385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084493 (n + 1) + A022958 n) * A007318 (Nat.choose 2 n)

end

end A084511.P12394998597263725385

/-! ## A084511.P8836315233465262064

`Δ[A073642(A084513(n))]+3`
-/

namespace A084511.P8836315233465262064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A084513 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A084511.P8836315233465262064

/-! ## A084511.P10463321923640222241

`(A084493(n+1)+A022958(n))%A000040(n+4)`
-/

namespace A084511.P10463321923640222241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084493 (n + 1) + A022958 n) (A000040 (n + 4))

end

end A084511.P10463321923640222241

/-! ## A084511.P2911879173489580667

`A009056(A084493(n+1))-n`
-/

namespace A084511.P2911879173489580667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A084493 (n + 1)).toNat - (n : ℤ)

end

end A084511.P2911879173489580667

/-! ## A084511.P9553974254527676156

`(A084493(n+1)+A022958(n))*A001511(2*n+1)`
-/

namespace A084511.P9553974254527676156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084493 (n + 1) + A022958 n) * A001511 (2 * n + 1)

end

end A084511.P9553974254527676156

/-!
# A084512: Successively larger 3-ball indecomposable ground-state site swaps of A084511 in concatenated decimal notation.

The programs for A084512, there is no canonical definition to state claims against.
-/

/-! ## A084512.P11710671286051034913

`A084522(A292125(n+1))`
-/

namespace A084512.P11710671286051034913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084522 (A292125 (n + 1)).toNat

end

end A084512.P11710671286051034913

/-! ## A084512.P6414413036938434015

`A084522(n+1)+A000007(A000172(n))`
-/

namespace A084512.P6414413036938434015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084522 (n + 1) + A000007 (A000172 n).toNat

end

end A084512.P6414413036938434015

/-!
# A084513: Juggling states associated with the juggling sequence A084511.

The programs for A084513, there is no canonical definition to state claims against.
-/

/-! ## A084513.P11355877618931469285

`A068505(A084514(n))`
-/

namespace A084513.P11355877618931469285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A084514 n).toNat

end

end A084513.P11355877618931469285

/-! ## A084513.P7048498231086924713

`A053830(A084514(n))%A141214(n+1)²`
-/

namespace A084513.P7048498231086924713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053830 (A084514 n).toNat) (A141214 (n + 1) ^ 2)

end

end A084513.P7048498231086924713

/-! ## A084513.P13559677255056489916

`A053830(A084514(n))%A002765(n+1)`
-/

namespace A084513.P13559677255056489916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053830 (A084514 n).toNat) (A002765 (n + 1))

end

end A084513.P13559677255056489916

/-!
# A084514: Sequence A084513 in binary.

The programs for A084514, there is no canonical definition to state claims against.
-/

/-! ## A084514.P11494172726431200402

`A007088(A084513(n))`
-/

namespace A084514.P11494172726431200402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A084513 n).toNat

end

end A084514.P11494172726431200402

/-! ## A084514.P11226270810432466285

`A185544(2*A084513(n))`
-/

namespace A084514.P11226270810432466285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A084513 n).toNat

end

end A084514.P11226270810432466285

/-! ## A084514.P1106354462755194670

`A185544(A084513(n)+A084513(n))`
-/

namespace A084514.P1106354462755194670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A084513 n + A084513 n).toNat

end

end A084514.P1106354462755194670

/-! ## A084514.P15755299303533513548

`A084524(n)%A000793(A374253(3*(n+1)))`
-/

namespace A084514.P15755299303533513548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084524 n) (A000793 (A374253 (3 * (n + 1))).toNat)

end

end A084514.P15755299303533513548

/-! ## A084514.P6881576768221877778

`A235489(A084524(n))`
-/

namespace A084514.P6881576768221877778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235489 (A084524 n).toNat

end

end A084514.P6881576768221877778

/-!
# A084515: Partial sums of A084516.

The programs for A084515, there is no canonical definition to state claims against.
-/

/-! ## A084515.P4853658768346658465

`∑[A084516(n+1)]-A084516(n+1)`
-/

namespace A084515.P4853658768346658465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A084516 (n + 1)

end

end A084515.P4853658768346658465

/-! ## A084515.P13677875347256338997

`eq[7, A084513(n)]`
-/

namespace A084515.P13677875347256338997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084513 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084515.P13677875347256338997

/-! ## A084515.P14683378602841947978

`eq[A084514(n), A107844(n+1)]`
-/

namespace A084515.P14683378602841947978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084514 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107844 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084515.P14683378602841947978

/-! ## A084515.P15646957059884110149

`∑[∑[A270803(A255064(n))]]`
-/

namespace A084515.P15646957059884110149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270803 (A255064 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084515.P15646957059884110149

/-! ## A084515.P17653155893239091503

`∑[∑[A051731(A053810(2*(n+2)))]]`
-/

namespace A084515.P17653155893239091503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (A053810 (2 * (n + 2))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084515.P17653155893239091503

/-!
# A084516: The length of each successively larger, indecomposable 3-ball ground-state site swap given in A084511, i.e., the number of digits in each term of A084512.

The programs for A084516, there is no canonical definition to state claims against.
-/

/-! ## A084516.P7281538112415057442

`Δ[A084515(n)]`
-/

namespace A084516.P7281538112415057442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084516.P7281538112415057442

/-! ## A084516.P3365976701427082252

`A084515(n+1)-A084515(n)`
-/

namespace A084516.P3365976701427082252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084515 (n + 1) - A084515 n

end

end A084516.P3365976701427082252

/-! ## A084516.P1690293456595358991

`A235224(∑[n+3]-2)`
-/

namespace A084516.P1690293456595358991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A084516.P1690293456595358991

/-! ## A084516.P16029182331078719762

`A081604(A293654(2*n+1)-n)`
-/

namespace A084516.P16029182331078719762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A293654 (2 * n + 1) - (n : ℤ)).toNat

end

end A084516.P16029182331078719762

/-! ## A084516.P13883464668838748833

`A111972(A079726(2*(n+1))²)`
-/

namespace A084516.P13883464668838748833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (A079726 (2 * (n + 1)) ^ 2).toNat

end

end A084516.P13883464668838748833

/-! ## A084516.P9581410990772911606

`A000267(ceil(log2(A351876(n+1))))`
-/

namespace A084516.P9581410990772911606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 ⌈Real.logb 2 (A351876 (n + 1) : ℝ)⌉.toNat

end

end A084516.P9581410990772911606

/-! ## A084516.P16483885601452087627

`A263297(A344844(2*(2*n+1)))`
-/

namespace A084516.P16483885601452087627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (A344844 (2 * (2 * n + 1))).toNat

end

end A084516.P16483885601452087627

/-! ## A084516.P789764261896233145

`A263297(A383174(2*(2*n+1)))`
-/

namespace A084516.P789764261896233145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (A383174 (2 * (2 * n + 1))).toNat

end

end A084516.P789764261896233145

/-! ## A084516.P13054495248368571214

`A084558(A102828(n))`
-/

namespace A084516.P13054495248368571214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A102828 n).toNat

end

end A084516.P13054495248368571214

/-!
# A084518: Partial sums of A084519. Positions of ones in the first differences of A084516.

The programs for A084518, the canonical program `A084518.P6007664406315500494` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084518 has offset 1).

The definition of A084518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084518.P918336466690744271

`∑[ogf((-1+2x+2x^2)/(-1+3x+2x^2+2x^3))]`
-/

namespace A084518.P918336466690744271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -2] [1, -3, -2, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084518.P918336466690744271

namespace A084518

/-- `∑[ogf((-1+2x+2x^2)/(-1+3x+2x^2+2x^3))]` -/
def P918336466690744271.Spec : Prop :=
  ∀ n, P918336466690744271.a n = A084518 (n + 1)

end A084518

/-! ## A084518.P16861071781649344363

`ogf((1-2x-2x^2)/(1-4x+x^2+2x^4))`
-/

namespace A084518.P16861071781649344363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -2] [1, -4, 1, 0, 2] n

end

end A084518.P16861071781649344363

namespace A084518

/-- `ogf((1-2x-2x^2)/(1-4x+x^2+2x^4))` -/
def P16861071781649344363.Spec : Prop :=
  ∀ n, P16861071781649344363.a n = A084518 (n + 1)

end A084518

/-! ## A084518.P6007664406315500494

`∑[A084519(n+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A084518

/-- `∑[A084519(n+1)]` -/
def P6007664406315500494.Spec : Prop :=
  ∀ n, P6007664406315500494.a n = A084518 (n + 1)

theorem P6007664406315500494.correct : P6007664406315500494.Spec := by
  intro n
  simp only [A084518, Nat.add_sub_cancel]

end A084518

/-! ## A084518.P11215021721572708266

`A084519(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A084518.P11215021721572708266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084519 (n + 1) + a (A023443 n).toNat

end

end A084518.P11215021721572708266

namespace A084518

/-- `A084519(n+1)+a(A023443(n))` -/
def P11215021721572708266.Spec : Prop :=
  ∀ n, P11215021721572708266.a n = A084518 (n + 1)

end A084518

/-! ## A084518.P5163946412114309153

`A084519(n+1)+a(A000027(n+1)-2)` with `a(0)=1`
-/

namespace A084518.P5163946412114309153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084519 (n + 1) + a (A000027 (n + 1) - 2).toNat

end

end A084518.P5163946412114309153

namespace A084518

/-- `A084519(n+1)+a(A000027(n+1)-2)` -/
def P5163946412114309153.Spec : Prop :=
  ∀ n, P5163946412114309153.a n = A084518 (n + 1)

end A084518

/-! ## A084518.P7029129749734714263

`A084519(n+1)-(val(n, A160664(n))-a(n-1))` with `a(0)=1`
-/

namespace A084518.P7029129749734714263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084519 (n + 1) - ((SequenceMachineLib.valuation n (A160664 n).toNat : ℤ) - a (n - 1))

end

end A084518.P7029129749734714263

namespace A084518

/-- `A084519(n+1)-(val(n, A160664(n))-a(n-1))` -/
def P7029129749734714263.Spec : Prop :=
  ∀ n, P7029129749734714263.a n = A084518 (n + 1)

end A084518

/-! ## A084518.P16770555937015236305

`A084519(n+1)-(val(n, A039123(n+1))-a(n-1))` with `a(0)=1`
-/

namespace A084518.P16770555937015236305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084519 (n + 1) - ((SequenceMachineLib.valuation n (A039123 (n + 1)).toNat : ℤ) - a (n - 1))

end

end A084518.P16770555937015236305

namespace A084518

/-- `A084519(n+1)-(val(n, A039123(n+1))-a(n-1))` -/
def P16770555937015236305.Spec : Prop :=
  ∀ n, P16770555937015236305.a n = A084518 (n + 1)

end A084518

/-! ## A084518.P11750097476003446365

`A084519(n+1)-(val(n, A000040(n+28)-1)-a(n-1))` with `a(0)=1`
-/

namespace A084518.P11750097476003446365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084519 (n + 1) - ((SequenceMachineLib.valuation n (A000040 (n + 28) - 1).toNat : ℤ) - a (n - 1))

end

end A084518.P11750097476003446365

namespace A084518

/-- `A084519(n+1)-(val(n, A000040(n+28)-1)-a(n-1))` -/
def P11750097476003446365.Spec : Prop :=
  ∀ n, P11750097476003446365.a n = A084518 (n + 1)

end A084518

/-!
# A084519: Number of indecomposable ground-state 3-ball juggling sequences of period n.

The programs for A084519, the canonical program `A084519.P5262888105523607500` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084519 has offset 1).

The definition of A084519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084519.P5432647090619487283

`ogf((-1+2x+2x^2)/(-1+3x+2x^2+2x^3))`
-/

namespace A084519.P5432647090619487283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -2] [1, -3, -2, -2] n

end

end A084519.P5432647090619487283

namespace A084519

/-- `ogf((-1+2x+2x^2)/(-1+3x+2x^2+2x^3))` -/
def P5432647090619487283.Spec : Prop :=
  ∀ n, P5432647090619487283.a n = A084519 (n + 1)

end A084519

/-! ## A084519.P5262888105523607500

`3*a(n-1)+2*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084519

/-- `3*a(n-1)+2*a(n-2)+2*a(n-3)` -/
def P5262888105523607500.Spec : Prop :=
  ∀ n, (P5262888105523607500.a n : ℤ) = A084519 (n + 1)

theorem P5262888105523607500.correct : P5262888105523607500.Spec := by
  intro n
  simp only [A084519, Nat.add_sub_cancel]

end A084519

/-! ## A084519.P1591929522075512531

`or(1, Δ[A084518(A028310(n))])`
-/

namespace A084519.P1591929522075512531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084518 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A084519.P1591929522075512531

namespace A084519

/-- `or(1, Δ[A084518(A028310(n))])` -/
def P1591929522075512531.Spec : Prop :=
  ∀ n, P1591929522075512531.a n = A084519 (n + 1)

end A084519

/-! ## A084519.P17424128500866975853

`A000007(n)+Δ[A084518(A028310(n))]`
-/

namespace A084519.P17424128500866975853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084518 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A084519.P17424128500866975853

namespace A084519

/-- `A000007(n)+Δ[A084518(A028310(n))]` -/
def P17424128500866975853.Spec : Prop :=
  ∀ n, P17424128500866975853.a n = A084519 (n + 1)

end A084519

/-! ## A084519.P17014190791711854428

`or(1, A084518(n+1)-A084518(A028310(n)))`
-/

namespace A084519.P17014190791711854428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A084518 (n + 1) - A084518 (A028310 n).toNat)

end

end A084519.P17014190791711854428

namespace A084519

/-- `or(1, A084518(n+1)-A084518(A028310(n)))` -/
def P17014190791711854428.Spec : Prop :=
  ∀ n, P17014190791711854428.a n = A084519 (n + 1)

end A084519

/-! ## A084519.P12050287435985159140

`A084518(n+1)+A000007(n)-A084518(A028310(n))`
-/

namespace A084519.P12050287435985159140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084518 (n + 1) + (A000007 n - A084518 (A028310 n).toNat)

end

end A084519.P12050287435985159140

namespace A084519

/-- `A084518(n+1)+A000007(n)-A084518(A028310(n))` -/
def P12050287435985159140.Spec : Prop :=
  ∀ n, P12050287435985159140.a n = A084519 (n + 1)

end A084519

/-! ## A084519.P8983127678544641333

`Δ[A084518(A028310(n))%A084518(n+1)]`
-/

namespace A084519.P8983127678544641333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084518 (A028310 n).toNat) (A084518 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084519.P8983127678544641333

namespace A084519

/-- `Δ[A084518(A028310(n))%A084518(n+1)]` -/
def P8983127678544641333.Spec : Prop :=
  ∀ n, P8983127678544641333.a n = A084519 (n + 1)

end A084519

/-! ## A084519.P651733765526242591

`Δ[A084518(A028310(n))%A032952(n)]`
-/

namespace A084519.P651733765526242591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084518 (A028310 n).toNat) (A032952 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084519.P651733765526242591

namespace A084519

/-- `Δ[A084518(A028310(n))%A032952(n)]` -/
def P651733765526242591.Spec : Prop :=
  ∀ n, P651733765526242591.a n = A084519 (n + 1)

end A084519

/-!
# A084520: a(0)=0, after which each n occurs A084526(n) times.

The programs for A084520, there is no canonical definition to state claims against.
-/

/-! ## A084520.P15697346095533050519

`comp[A084525(n)+1+n]-n`
-/

namespace A084520.P15697346095533050519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084525 n + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A084520.P15697346095533050519

/-! ## A084520.P13701281586395050672

`A001489(n)+comp[A084525(n)+1+n]`
-/

namespace A084520.P13701281586395050672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084525 n + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A084520.P13701281586395050672

/-! ## A084520.P17284206192556845006

`(comp[A084525(n)+1+n]+∑[A008574(n)])%(n+1)`
-/

namespace A084520.P17284206192556845006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084525 n + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j) (n + 1 : ℤ)

end

end A084520.P17284206192556845006

/-! ## A084520.P3696701677360375232

`(comp[A084525(n)+1+n]+n+1)%eq[2, A020639(n+1)]`
-/

namespace A084520.P3696701677360375232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084525 n + 1 + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (n + 1)) % SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

end

end A084520.P3696701677360375232

/-! ## A084520.P15308503831153580448

`A001057(2*n)+comp[A084525(n)+1+n]`
-/

namespace A084520.P15308503831153580448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084525 n + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * n) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A084520.P15308503831153580448

/-!
# A084521: An infinite juggling sequence of three balls: successively larger 'prime' ground-state 3-ball site swaps listed in lexicographical order. A subset of A084511.

The programs for A084521, there is no canonical definition to state claims against.
-/

/-! ## A084521.P10224673580125709742

`A084497(n+1)+2-n`
-/

namespace A084521.P10224673580125709742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084497 (n + 1) + (2 - (n : ℤ))

end

end A084521.P10224673580125709742

/-! ## A084521.P14333292049486201320

`abs(A084497(n+1)+A022958(n))`
-/

namespace A084521.P14333292049486201320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084497 (n + 1) + A022958 n|

end

end A084521.P14333292049486201320

/-! ## A084521.P15708099287981159875

`Δ[A073642(A084523(n))]+3`
-/

namespace A084521.P15708099287981159875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A084523 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A084521.P15708099287981159875

/-! ## A084521.P18117843441558534019

`A009056(A084497(n+1))-n`
-/

namespace A084521.P18117843441558534019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A084497 (n + 1)).toNat - (n : ℤ)

end

end A084521.P18117843441558534019

/-! ## A084521.P9889038758739002856

`A334029(2*A084523(n+1)-A084523(n))`
-/

namespace A084521.P9889038758739002856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334029 (2 * A084523 (n + 1) - A084523 n).toNat

end

end A084521.P9889038758739002856

/-!
# A084522: Successively larger 3-ball 'prime' ground-state site swaps of A084521 in concatenated decimal notation.

The programs for A084522, there is no canonical definition to state claims against.
-/

/-! ## A084522.P795145433721064661

`filter[A084512(n+1), A252743(#)]`
-/

namespace A084522.P795145433721064661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252743 (f1 j).toNat = 1) n)

end

end A084522.P795145433721064661

/-! ## A084522.P6439406298150001953

`A084512(∑[A257696(A146473(n+1))])`
-/

namespace A084522.P6439406298150001953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257696 (A146473 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084512 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A084522.P6439406298150001953

/-! ## A084522.P1081455931852358302

`A084512(A327105(n+1))%A079397(3*n+4)`
-/

namespace A084522.P1081455931852358302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084512 (A327105 (n + 1)).toNat) (A079397 (3 * n + 4))

end

end A084522.P1081455931852358302

/-!
# A084523: Juggling states associated with the juggling sequence A084521.

The programs for A084523, there is no canonical definition to state claims against.
-/

/-! ## A084523.P9997663027700633333

`A068505(A084524(n))`
-/

namespace A084523.P9997663027700633333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A084524 n).toNat

end

end A084523.P9997663027700633333

/-! ## A084523.P3058410850512451291

`A084513(lt[A062922(n+1), A206063(n+1)])`
-/

namespace A084523.P3058410850512451291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084513 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A084523.P3058410850512451291

/-! ## A084523.P10821822534937325652

`A185237(A206560(n+4))+A084513(n)`
-/

namespace A084523.P10821822534937325652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185237 (A206560 (n + 4)).toNat + A084513 n

end

end A084523.P10821822534937325652

/-! ## A084523.P15706886818092173943

`A084513(n)+3*A102683(A085157(n))`
-/

namespace A084523.P15706886818092173943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084513 n + 3 * A102683 (A085157 n).toNat

end

end A084523.P15706886818092173943

/-! ## A084523.P1465322222938027051

`A084513(n)%A007624(A077949(n))`
-/

namespace A084523.P1465322222938027051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084513 n) (A007624 (A077949 n).toNat)

end

end A084523.P1465322222938027051

/-!
# A084524: Sequence A084523 in binary.

The programs for A084524, there is no canonical definition to state claims against.
-/

/-! ## A084524.P14693972359088973576

`A007088(A084523(n))`
-/

namespace A084524.P14693972359088973576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A084523 n).toNat

end

end A084524.P14693972359088973576

/-! ## A084524.P15688974940362004976

`A185544(2*A084523(n))`
-/

namespace A084524.P15688974940362004976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A084523 n).toNat

end

end A084524.P15688974940362004976

/-! ## A084524.P11945677978314942832

`A185544(A084523(n)+A084523(n))`
-/

namespace A084524.P11945677978314942832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A084523 n + A084523 n).toNat

end

end A084524.P11945677978314942832

/-! ## A084524.P11324736843373589750

`A228071(A084523(n))+A084523(A028310(n))`
-/

namespace A084524.P11324736843373589750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228071 (A084523 n).toNat + A084523 (A028310 n).toNat

end

end A084524.P11324736843373589750

/-!
# A084525: Partial sums of A084526.

The programs for A084525, there is no canonical definition to state claims against.
-/

/-! ## A084525.P594756565384061981

`∑[A084526(n+1)]-A084526(n+1)`
-/

namespace A084525.P594756565384061981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A084526 (n + 1)

end

end A084525.P594756565384061981

/-! ## A084525.P16432785288479121356

`eq[7, A084523(n)]`
-/

namespace A084525.P16432785288479121356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084525.P16432785288479121356

/-! ## A084525.P18017645611052943239

`∑[∑[A257000(A058696(n))]]`
-/

namespace A084525.P18017645611052943239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (A058696 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084525.P18017645611052943239

/-!
# A084526: The length of each successively larger, indecomposable, 'prime' 3-ball ground-state site swap given in A084521, i.e., the number of digits in each term of A084522.

The programs for A084526, there is no canonical definition to state claims against.
-/

/-! ## A084526.P16032876517622534295

`Δ[A084525(n)]`
-/

namespace A084526.P16032876517622534295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084526.P16032876517622534295

/-! ## A084526.P1476353021909825424

`A084525(n+1)-A084525(n)`
-/

namespace A084526.P1476353021909825424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084525 (n + 1) - A084525 n

end

end A084526.P1476353021909825424

/-! ## A084526.P6269218940377820512

`A000120(A031443(3*n+1)%A130437(n+1))`
-/

namespace A084526.P6269218940377820512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A031443 (3 * n + 1)) (A130437 (n + 1))).toNat

end

end A084526.P6269218940377820512

/-! ## A084526.P5408378454973919885

`A090529(A007494(n)%A354712(n+4))`
-/

namespace A084526.P5408378454973919885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090529 (Int.tmod (A007494 n) (A354712 (n + 4))).toNat

end

end A084526.P5408378454973919885

/-! ## A084526.P12745824773132340910

`A070939(A080595(3*n)%A285688(n+1))`
-/

namespace A084526.P12745824773132340910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.tmod (A080595 (3 * n)) (A285688 (n + 1))).toNat

end

end A084526.P12745824773132340910

/-! ## A084526.P15776050263922108699

`A090529(A074239(2*n+3)%A354712(n+4))`
-/

namespace A084526.P15776050263922108699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090529 (Int.tmod (A074239 (2 * n + 3)) (A354712 (n + 4))).toNat

end

end A084526.P15776050263922108699

/-! ## A084526.P4306711567359812242

`A246435(A246435(3*(n+1)²))`
-/

namespace A084526.P4306711567359812242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246435 (A246435 (3 * (n + 1) ^ 2)).toNat

end

end A084526.P4306711567359812242

/-! ## A084526.P1861548307099585387

`dr(A302563((2*n+1)²))`
-/

namespace A084526.P1861548307099585387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A302563 ((2 * n + 1) ^ 2))

end

end A084526.P1861548307099585387

/-!
# A084528: Partial sums of A084529. Positions of ones in the first differences of A084526.

The programs for A084528, there is no canonical definition to state claims against.
-/

/-! ## A084528.P17400051469672609502

`∑[A084529(n+1)]`
-/

namespace A084528.P17400051469672609502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084528.P17400051469672609502

/-! ## A084528.P17220371270958948930

`A084529(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A084528.P17220371270958948930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084529 (n + 1) + a (A023443 n).toNat

end

end A084528.P17220371270958948930

/-!
# A084529: Number of 'prime' ground-state 3-ball juggling sequences of period n.

The programs for A084529, there is no canonical definition to state claims against.
-/

/-! ## A084529.P8258350596043727067

`A233583(A149923(n))-A338364(n)`
-/

namespace A084529.P8258350596043727067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A149923 n).toNat - A338364 n

end

end A084529.P8258350596043727067

/-! ## A084529.P16228390456322108524

`A113238(A154271(n+1)+A000097(n))`
-/

namespace A084529.P16228390456322108524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113238 (A154271 (n + 1) + A000097 n).toNat

end

end A084529.P16228390456322108524

/-!
# A084530: Inverse permutation to A084499.

The programs for A084530, there is no canonical definition to state claims against.
-/

/-! ## A084530.P11806624356613985040

`A065190(A084499(A065190(n+1)))`
-/

namespace A084530.P11806624356613985040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A084499 (A065190 (n + 1)).toNat).toNat

end

end A084530.P11806624356613985040

/-! ## A084530.P16959863303713051696

`A352515(A034512(n+1))+A084496(n+1)`
-/

namespace A084530.P16959863303713051696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352515 (A034512 (n + 1)).toNat + A084496 (n + 1)

end

end A084530.P16959863303713051696

/-!
# A084531: Signature sequence of phi = (1+sqrt(5))/2 = 1.61803...

The programs for A084531, there is no canonical definition to state claims against.
-/

/-! ## A084531.P7789934093227278447

`A215344(n+1)+1`
-/

namespace A084531.P7789934093227278447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215344 (n + 1) + 1

end

end A084531.P7789934093227278447

/-! ## A084531.P11611168665983951240

`A000005(Δ[A005187(A178992(n+1))])`
-/

namespace A084531.P11611168665983951240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A178992 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A084531.P11611168665983951240

/-! ## A084531.P15784884323437747975

`A007814(2^A023129(n+1))`
-/

namespace A084531.P15784884323437747975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A023129 (n + 1) : ℤ))).toNat

end

end A084531.P15784884323437747975

/-! ## A084531.P543787284809415154

`(A025641(n+1)+1)%A342757(n+7)`
-/

namespace A084531.P543787284809415154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025641 (n + 1) + 1) (A342757 (n + 7))

end

end A084531.P543787284809415154

/-! ## A084531.P14605188667624046951

`A023129(n+1)%A046132(A305148(n))`
-/

namespace A084531.P14605188667624046951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023129 (n + 1)) (A046132 (A305148 n).toNat)

end

end A084531.P14605188667624046951

/-! ## A084531.P11583687746313083789

`A023129(n+1)+A000007(A075109(n+1))`
-/

namespace A084531.P11583687746313083789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023129 (n + 1) + A000007 (A075109 (n + 1)).toNat

end

end A084531.P11583687746313083789

/-! ## A084531.P6105873579776860195

`A335341(A019565(n+1))+A025649(n+1)`
-/

namespace A084531.P6105873579776860195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335341 (A019565 (n + 1)).toNat + A025649 (n + 1)

end

end A084531.P6105873579776860195

/-! ## A084531.P7374504349373024532

`A023129(n+1)+A000007(A064273(n+2))`
-/

namespace A084531.P7374504349373024532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023129 (n + 1) + A000007 (A064273 (n + 2)).toNat

end

end A084531.P7374504349373024532

/-! ## A084531.P10763999472345364453

`A025649(n+1)+∏{p}[val(A334496(n+1), 11), #]`
-/

namespace A084531.P10763999472345364453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A334496 (n + 1)).toNat 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025649 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A084531.P10763999472345364453

/-! ## A084531.P18369199808838903509

`A025641(n+1)+A000035(A081633(n+1))`
-/

namespace A084531.P18369199808838903509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025641 (n + 1) + A000035 (A081633 (n + 1)).toNat

end

end A084531.P18369199808838903509

/-!
# A084532: Signature sequence of 1/phi = phi-1 = (sqrt(5)-1)/2 = 0.61803...

The programs for A084532, there is no canonical definition to state claims against.
-/

/-! ## A084532.P4998165522490240768

`A215345(n+1)+1`
-/

namespace A084532.P4998165522490240768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215345 (n + 1) + 1

end

end A084532.P4998165522490240768

/-! ## A084532.P13972111888783848260

`A023130(n+1)+A010051(A113519(n+1))`
-/

namespace A084532.P13972111888783848260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023130 (n + 1) + A010051 (A113519 (n + 1)).toNat

end

end A084532.P13972111888783848260

/-! ## A084532.P15365524920267798243

`A057427(A083538(n+1))+A025686(n+1)`
-/

namespace A084532.P15365524920267798243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A083538 (n + 1)).toNat + A025686 (n + 1)

end

end A084532.P15365524920267798243

/-! ## A084532.P1637498964177461475

`A023130(n+1)+A000038(A162900(n+1))`
-/

namespace A084532.P1637498964177461475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023130 (n + 1) + A000038 (A162900 (n + 1)).toNat

end

end A084532.P1637498964177461475

/-! ## A084532.P13852438176549839448

`A098371(A098374(n+1))+A025686(n+1)`
-/

namespace A084532.P13852438176549839448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098371 (A098374 (n + 1)).toNat + A025686 (n + 1)

end

end A084532.P13852438176549839448

/-! ## A084532.P5458964090947159817

`A059841(A187797(n+1))+A025686(n+1)`
-/

namespace A084532.P5458964090947159817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A187797 (n + 1)).toNat + A025686 (n + 1)

end

end A084532.P5458964090947159817

/-! ## A084532.P7149741791947865765

`A178334(A194062(n+1))+A025657(n+1)`
-/

namespace A084532.P7149741791947865765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A194062 (n + 1)).toNat + A025657 (n + 1)

end

end A084532.P7149741791947865765

/-! ## A084532.P15368839129101006858

`A023130(n+1)/A326850(A000040(n+1))`
-/

namespace A084532.P15368839129101006858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023130 (n + 1) : ℚ) / (A326850 (A000040 (n + 1)).toNat : ℚ)

end

end A084532.P15368839129101006858

/-! ## A084532.P9463970623979520940

`A057428(A326836(n+1))+A023130(n+1)+1`
-/

namespace A084532.P9463970623979520940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A326836 (n + 1)).toNat + (A023130 (n + 1) + 1)

end

end A084532.P9463970623979520940

/-! ## A084532.P16243344933982135472

`(A025686(n+1)+1)%A337813(n+1)`
-/

namespace A084532.P16243344933982135472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025686 (n + 1) + 1) (A337813 (n + 1))

end

end A084532.P16243344933982135472

/-!
# A084534: Triangle read by rows: T(n,0)=1, T(n,n)=2, T(n,m) = T(n-1,m-1) + Sum_{k=0..m} T(n-1-k,m-k).

The programs for A084534, the canonical program `A084534.P1021849949057106995` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084534 has offset 0).

The definition of A084534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084534.P1021849949057106995

`abs(A110162(A061579(n)))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A084534

/-- `abs(A110162(A061579(n)))` -/
def P1021849949057106995.Spec : Prop :=
  ∀ n, P1021849949057106995.a n = A084534 n

theorem P1021849949057106995.correct : P1021849949057106995.Spec := by
  intro n
  simp only [A084534]

end A084534

/-! ## A084534.P2001862132630312247

`abs(A110162(A114327(n)+n))`
-/

namespace A084534.P2001862132630312247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110162 (A114327 n + (n : ℤ)).toNat|

end

end A084534.P2001862132630312247

namespace A084534

/-- `abs(A110162(A114327(n)+n))` -/
def P2001862132630312247.Spec : Prop :=
  ∀ n, P2001862132630312247.a n = A084534 n

end A084534

/-! ## A084534.P2156797429810967576

`abs(A132460(A061885(n)))`
-/

namespace A084534.P2156797429810967576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132460 (A061885 n).toNat|

end

end A084534.P2156797429810967576

namespace A084534

/-- `abs(A132460(A061885(n)))` -/
def P2156797429810967576.Spec : Prop :=
  ∀ n, P2156797429810967576.a n = A084534 n

end A084534

/-! ## A084534.P8493031294568948214

`abs(A132460(A057944(n)+n))`
-/

namespace A084534.P8493031294568948214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132460 (A057944 n + (n : ℤ)).toNat|

end

end A084534.P8493031294568948214

namespace A084534

/-- `abs(A132460(A057944(n)+n))` -/
def P8493031294568948214.Spec : Prop :=
  ∀ n, P8493031294568948214.a n = A084534 n

end A084534

/-! ## A084534.P1512343428566099078

`A034807(A061885(n)+A000038(n))`
-/

namespace A084534.P1512343428566099078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034807 (A061885 n + A000038 n).toNat

end

end A084534.P1512343428566099078

namespace A084534

/-- `A034807(A061885(n)+A000038(n))` -/
def P1512343428566099078.Spec : Prop :=
  ∀ n, P1512343428566099078.a n = A084534 n

end A084534

/-! ## A084534.P16039083444591303098

`A034807(A004277(n)-A002262(n))`
-/

namespace A084534.P16039083444591303098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034807 (A004277 n - A002262 n).toNat

end

end A084534.P16039083444591303098

namespace A084534

/-- `A034807(A004277(n)-A002262(n))` -/
def P16039083444591303098.Spec : Prop :=
  ∀ n, P16039083444591303098.a n = A084534 n

end A084534

/-! ## A084534.P15692787750933396620

`A034807(or(A000038(n), A061885(n)))`
-/

namespace A084534.P15692787750933396620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034807 (Int.lor (A000038 n) (A061885 n)).toNat

end

end A084534.P15692787750933396620

namespace A084534

/-- `A034807(or(A000038(n), A061885(n)))` -/
def P15692787750933396620.Spec : Prop :=
  ∀ n, P15692787750933396620.a n = A084534 n

end A084534

/-! ## A084534.P1354992637510691995

`A034807(xor(A000038(n), A061885(n)))`
-/

namespace A084534.P1354992637510691995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034807 (Int.xor (A000038 n) (A061885 n)).toNat

end

end A084534.P1354992637510691995

namespace A084534

/-- `A034807(xor(A000038(n), A061885(n)))` -/
def P1354992637510691995.Spec : Prop :=
  ∀ n, P1354992637510691995.a n = A084534 n

end A084534

/-! ## A084534.P2195901439398946051

`A034807(A061885(n))-A000038(n)/A034807(n)`
-/

namespace A084534.P2195901439398946051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034807 (A061885 n).toNat : ℚ) - (A000038 n : ℚ) / (A034807 n : ℚ)

end

end A084534.P2195901439398946051

namespace A084534

/-- `A034807(A061885(n))-A000038(n)/A034807(n)` -/
def P2195901439398946051.Spec : Prop :=
  ∀ n, P2195901439398946051.a n = (A084534 n : ℚ)

end A084534

/-! ## A084534.P5813597228891723364

`∑{d}[A110162(A061579(n)), A000010(#)]`
-/

namespace A084534.P5813597228891723364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110162 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A084534.P5813597228891723364

namespace A084534

/-- `∑{d}[A110162(A061579(n)), A000010(#)]` -/
def P5813597228891723364.Spec : Prop :=
  ∀ n, P5813597228891723364.a n = A084534 n

end A084534

/-! ## A084534.P9344887667337480441

`∑{d}[A132460(A061885(n)), A000010(#)]`
-/

namespace A084534.P9344887667337480441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132460 (A061885 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A084534.P9344887667337480441

namespace A084534

/-- `∑{d}[A132460(A061885(n)), A000010(#)]` -/
def P9344887667337480441.Spec : Prop :=
  ∀ n, P9344887667337480441.a n = A084534 n

end A084534

/-! ## A084534.P14195844842693978961

`A034807(A061885(n))/A034807(n²)`
-/

namespace A084534.P14195844842693978961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034807 (A061885 n).toNat : ℚ) / (A034807 (n ^ 2) : ℚ)

end

end A084534.P14195844842693978961

namespace A084534

/-- `A034807(A061885(n))/A034807(n²)` -/
def P14195844842693978961.Spec : Prop :=
  ∀ n, P14195844842693978961.a n = (A084534 n : ℚ)

end A084534

/-!
# A084535: a(n) = floor(n^2 - n^(3/2)).

The programs for A084535, the canonical program `A084535.P989598209624818944` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084535 has offset 0).

The definition of A084535 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n²-n^(3/2))` (program `A084535.P989598209624818944`, by `A084535.P989598209624818944.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084535.P989598209624818944

`floor(n²-n^(3/2))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084535

/-- `floor(n²-n^(3/2))` -/
def P989598209624818944.Spec : Prop :=
  ∀ n, P989598209624818944.a n = A084535 n

theorem P989598209624818944.correct : P989598209624818944.Spec := by
  intro n
  simp only [A084535]

end A084535

/-! ## A084535.P4091444440896075415

`n²-or(ceil(n*sqrt(n)), char[1])`
-/

namespace A084535.P4091444440896075415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - Int.lor ⌈(n : ℝ) * Real.sqrt (n : ℝ)⌉ ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A084535.P4091444440896075415

namespace A084535

/-- `n²-or(ceil(n*sqrt(n)), char[1])` -/
def P4091444440896075415.Spec : Prop :=
  ∀ n, P4091444440896075415.a n = A084535 n

end A084535

/-! ## A084535.P14146563375602231532

`n²-A185549(n)`
-/

namespace A084535.P14146563375602231532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A185549 n

end

end A084535.P14146563375602231532

namespace A084535

/-- `n²-A185549(n)` -/
def P14146563375602231532.Spec : Prop :=
  ∀ n, P14146563375602231532.a n = A084535 n

end A084535

/-! ## A084535.P6126812311572021455

`n²-sqrt(A077115(n))`
-/

namespace A084535.P6126812311572021455
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) - Real.sqrt (A077115 n : ℝ)

end

end A084535.P6126812311572021455

namespace A084535

/-- `n²-sqrt(A077115(n))` -/
def P6126812311572021455.Spec : Prop :=
  ∀ n, P6126812311572021455.a n = (A084535 n : ℝ)

end A084535

/-! ## A084535.P10380503494340432487

`n²-ceil(sqrt(A000578(n)))`
-/

namespace A084535.P10380503494340432487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ⌈Real.sqrt (A000578 n : ℝ)⌉

end

end A084535.P10380503494340432487

namespace A084535

/-- `n²-ceil(sqrt(A000578(n)))` -/
def P10380503494340432487.Spec : Prop :=
  ∀ n, P10380503494340432487.a n = A084535 n

end A084535

/-! ## A084535.P3160074528584469219

`A000290(n)-ceil(sqrt(n^3))`
-/

namespace A084535.P3160074528584469219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n - ⌈Real.sqrt (n ^ 3 : ℝ)⌉

end

end A084535.P3160074528584469219

namespace A084535

/-- `A000290(n)-ceil(sqrt(n^3))` -/
def P3160074528584469219.Spec : Prop :=
  ∀ n, P3160074528584469219.a n = A084535 n

end A084535

/-! ## A084535.P8641235668406155798

`A002522(n)-(A185549(n)+1)`
-/

namespace A084535.P8641235668406155798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n - (A185549 n + 1)

end

end A084535.P8641235668406155798

namespace A084535

/-- `A002522(n)-(A185549(n)+1)` -/
def P8641235668406155798.Spec : Prop :=
  ∀ n, P8641235668406155798.a n = A084535 n

end A084535

/-! ## A084535.P7422492074691372963

`A002378(n)-(A185549(n)+n)`
-/

namespace A084535.P7422492074691372963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - (A185549 n + (n : ℤ))

end

end A084535.P7422492074691372963

namespace A084535

/-- `A002378(n)-(A185549(n)+n)` -/
def P7422492074691372963.Spec : Prop :=
  ∀ n, P7422492074691372963.a n = A084535 n

end A084535

/-! ## A084535.P11330745139616835198

`n²+A010052(n)-A077121(n)`
-/

namespace A084535.P11330745139616835198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A010052 n - A077121 n)

end

end A084535.P11330745139616835198

namespace A084535

/-- `n²+A010052(n)-A077121(n)` -/
def P11330745139616835198.Spec : Prop :=
  ∀ n, P11330745139616835198.a n = A084535 n

end A084535

/-! ## A084535.P10774142989229869587

`n²-(A349662(n)+A184985(n+1))`
-/

namespace A084535.P10774142989229869587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (A349662 n + A184985 (n + 1))

end

end A084535.P10774142989229869587

namespace A084535

/-- `n²-(A349662(n)+A184985(n+1))` -/
def P10774142989229869587.Spec : Prop :=
  ∀ n, P10774142989229869587.a n = A084535 n

end A084535

/-!
# A084536: Triangular array related to Motzkin triangle A026300.

The programs for A084536, there is no canonical definition to state claims against.
-/

/-! ## A084536.P6903010370844327172

`A091965(∑[2*n]%comp[∑[n]])`
-/

namespace A084536.P6903010370844327172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091965 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A084536.P6903010370844327172

/-! ## A084536.P6047787896640607604

`A091965(∑[char[∑[n]]]²-(n+1))`
-/

namespace A084536.P6047787896640607604
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091965 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A084536.P6047787896640607604

/-! ## A084536.P10040695125770431711

`xor(6, xor(6, A091965(A061579(n))))`
-/

namespace A084536.P10040695125770431711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (Int.xor 6 (A091965 (A061579 n).toNat))

end

end A084536.P10040695125770431711

/-! ## A084536.P10723933477854598976

`gcd(A091965(A061579(n)), A198954(n))`
-/

namespace A084536.P10723933477854598976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091965 (A061579 n).toNat) (A198954 n)

end

end A084536.P10723933477854598976

/-! ## A084536.P16566309514456895211

`or(A000007(n), A091965(A061579(n)))`
-/

namespace A084536.P16566309514456895211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A091965 (A061579 n).toNat)

end

end A084536.P16566309514456895211

/-! ## A084536.P5714578146901943921

`or(A010054(n), A091965(A061579(n)))`
-/

namespace A084536.P5714578146901943921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A091965 (A061579 n).toNat)

end

end A084536.P5714578146901943921

/-! ## A084536.P7284753473555560866

`A091965(A061579(n))%A000051(n)`
-/

namespace A084536.P7284753473555560866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091965 (A061579 n).toNat) (A000051 n)

end

end A084536.P7284753473555560866

/-!
# A084538: Least primitive root mod 2*prime(n)^2.

The programs for A084538, there is no canonical definition to state claims against.
-/

/-! ## A084538.P14295061300077119534

`A046145(2*p?[2*n+1])`
-/

namespace A084538.P14295061300077119534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A084538.P14295061300077119534

/-! ## A084538.P16705902147145351970

`A111076(2*p?[2*n+1])`
-/

namespace A084538.P16705902147145351970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A084538.P16705902147145351970

/-! ## A084538.P1024613082975408451

`A046145(A100484(n+2))`
-/

namespace A084538.P1024613082975408451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (A100484 (n + 2)).toNat

end

end A084538.P1024613082975408451

/-! ## A084538.P11017970749542591287

`A046145(A001747(n+3))`
-/

namespace A084538.P11017970749542591287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (A001747 (n + 3)).toNat

end

end A084538.P11017970749542591287

/-! ## A084538.P4815808110104087243

`A046145(2*A065091(n+1))`
-/

namespace A084538.P4815808110104087243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (2 * A065091 (n + 1)).toNat

end

end A084538.P4815808110104087243

/-! ## A084538.P11561397083223377636

`A046145(2*A000040(n+2))`
-/

namespace A084538.P11561397083223377636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (2 * A000040 (n + 2)).toNat

end

end A084538.P11561397083223377636

/-! ## A084538.P596256529094352989

`A046145(2*A006005(n+2))`
-/

namespace A084538.P596256529094352989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (2 * A006005 (n + 2)).toNat

end

end A084538.P596256529094352989

/-! ## A084538.P9850371473440343707

`A111076(2*A000040(n+2))`
-/

namespace A084538.P9850371473440343707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (2 * A000040 (n + 2)).toNat

end

end A084538.P9850371473440343707

/-! ## A084538.P10634097272168838820

`A111076(2*A006005(n+2))`
-/

namespace A084538.P10634097272168838820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (2 * A006005 (n + 2)).toNat

end

end A084538.P10634097272168838820

/-! ## A084538.P18070247210971910110

`A174621(2*A000040(n+2))`
-/

namespace A084538.P18070247210971910110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174621 (2 * A000040 (n + 2)).toNat

end

end A084538.P18070247210971910110

/-!
# A084540: a(n) is the algebraic order of the elliptic lambda function lambda^*(n), where lambda^*(n) is the value of k_n such that K'(k_n)/K(k_n) = sqrt(n), K(k) is a complete elliptic function and K'(k) is the complementary function.

The programs for A084540, there is no canonical definition to state claims against.
-/

/-! ## A084540.P9258015950528383340

`gcd(2, n+2)*A000003(4*(n+1))`
-/

namespace A084540.P9258015950528383340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 2) : ℤ) * A000003 (4 * (n + 1))

end

end A084540.P9258015950528383340

/-! ## A084540.P672754558396166223

`A000003(n+1)*A040003(n)`
-/

namespace A084540.P672754558396166223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (n + 1) * A040003 n

end

end A084540.P672754558396166223

/-! ## A084540.P9705896596330759994

`2*A000003(n+1)*A040001(n)`
-/

namespace A084540.P9705896596330759994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000003 (n + 1) * A040001 n)

end

end A084540.P9705896596330759994

/-! ## A084540.P16123854256250631721

`(3-A165326(n))*A000003(n+1)`
-/

namespace A084540.P16123854256250631721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A165326 n) * A000003 (n + 1)

end

end A084540.P16123854256250631721

/-! ## A084540.P11256477152998347837

`A005843(A000003(n+1)*A040001(n))`
-/

namespace A084540.P11256477152998347837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000003 (n + 1) * A040001 n).toNat

end

end A084540.P11256477152998347837

/-! ## A084540.P3882733210038632142

`A014600(Δ[n²])*A040003(n)`
-/

namespace A084540.P3882733210038632142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014600 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A040003 n

end

end A084540.P3882733210038632142

/-! ## A084540.P12521683432073063543

`Δ[A007494(n)]*A000003(4*(n+1))`
-/

namespace A084540.P12521683432073063543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000003 (4 * (n + 1))

end

end A084540.P12521683432073063543

/-! ## A084540.P17082407678577175716

`A000003(4*(n+1))*A000034(n+1)`
-/

namespace A084540.P17082407678577175716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (4 * (n + 1)) * A000034 (n + 1)

end

end A084540.P17082407678577175716

/-! ## A084540.P6239126474685974030

`A014600(A239128(n+1))/A000034(n)`
-/

namespace A084540.P6239126474685974030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014600 (A239128 (n + 1)).toNat : ℚ) / (A000034 n : ℚ)

end

end A084540.P6239126474685974030

/-!
# A084541: Numbers k such that 4^k + 9i is a Gaussian prime.

The programs for A084541, there is no canonical definition to state claims against.
-/

/-! ## A084541.P11029574487180380844

`∑[A195097(∑[A273682(n)])]`
-/

namespace A084541.P11029574487180380844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195097 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084541.P11029574487180380844

/-! ## A084541.P2250690042786356942

`record[A333627(A152772(n+1))]`
-/

namespace A084541.P2250690042786356942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (A152772 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084541.P2250690042786356942

/-! ## A084541.P6889521653722852924

`record[A333627(∑[A326153(n+2)])]`
-/

namespace A084541.P6889521653722852924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326153 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084541.P6889521653722852924

/-! ## A084541.P12343340927216112416

`record[A084848(A187200(2*n+1))]`
-/

namespace A084541.P12343340927216112416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084848 (A187200 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084541.P12343340927216112416

/-! ## A084541.P3135896915286728432

`∑[A342410(A007318(2*C(n, 3)))]`
-/

namespace A084541.P3135896915286728432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342410 (A007318 (2 * Nat.choose n 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084541.P3135896915286728432

/-!
# A084542: Numbers k such that 3^k + 10i is a Gaussian Prime.

The programs for A084542, there is no canonical definition to state claims against.
-/

/-! ## A084542.P14205004120275820583

`record[A032742(A219618(n+2))]`
-/

namespace A084542.P14205004120275820583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A219618 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084542.P14205004120275820583

/-!
# A084544: Alternate number system in base 4.

The programs for A084544, there is no canonical definition to state claims against.
-/

/-! ## A084544.P13035229078811241648

`A045926(n+1)/2`
-/

namespace A084544.P13035229078811241648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045926 (n + 1) : ℚ) / 2

end

end A084544.P13035229078811241648

/-! ## A084544.P4582428722252280635

`A007091(A023721(n+1))`
-/

namespace A084544.P4582428722252280635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A023721 (n + 1)).toNat

end

end A084544.P4582428722252280635

/-! ## A084544.P12220351500791581065

`∩[A084545(n+1), A007091(n)]`
-/

namespace A084544.P12220351500791581065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084544.P12220351500791581065

/-! ## A084544.P1903594045650197934

`A014263(A023721(n+1)+1)/2`
-/

namespace A084544.P1903594045650197934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014263 (A023721 (n + 1) + 1).toNat : ℚ) / 2

end

end A084544.P1903594045650197934

/-! ## A084544.P5231100323471407464

`∩[A001729(n+1), A007091(n)]`
-/

namespace A084544.P5231100323471407464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084544.P5231100323471407464

/-! ## A084544.P16932915077100306135

`∩[A057436(n+1), A007091(n)]`
-/

namespace A084544.P16932915077100306135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084544.P16932915077100306135

/-! ## A084544.P13437319425787161912

`record[A048379(A014261(n+1))/2]`
-/

namespace A084544.P13437319425787161912
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048379 (A014261 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084544.P13437319425787161912

/-! ## A084544.P15420432772760715871

`∩[A214677(n+1), A007091(n)]`
-/

namespace A084544.P15420432772760715871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084544.P15420432772760715871

/-! ## A084544.P10139829868051942189

`∩[A214678(n+1), A007091(n)]`
-/

namespace A084544.P10139829868051942189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084544.P10139829868051942189

/-! ## A084544.P11649697866081408534

`∩[A261189(n+1), A007091(n)]`
-/

namespace A084544.P11649697866081408534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084544.P11649697866081408534

/-! ## A084544.P7572751071719905876

`∩[A261189(n+1), A007092(n)]`
-/

namespace A084544.P7572751071719905876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084544.P7572751071719905876

/-! ## A084544.P11107702288134979590

`∩[A261189(n+1), A084545(n+1)]`
-/

namespace A084544.P11107702288134979590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084544.P11107702288134979590

/-! ## A084544.P9416066556947724693

`∩[A001729(n+1), A135210(n+1)]`
-/

namespace A084544.P9416066556947724693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084544.P9416066556947724693

/-! ## A084544.P10405287851528753916

`∩[A057436(n+1), A135210(n+1)]`
-/

namespace A084544.P10405287851528753916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084544.P10405287851528753916

/-! ## A084544.P6283681784010157663

`∩[A084545(n+1), A135210(n+1)]`
-/

namespace A084544.P6283681784010157663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084544.P6283681784010157663

/-! ## A084544.P17334642428731241496

`∩[A039116(n+1), A007091(n)]`
-/

namespace A084544.P17334642428731241496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084544.P17334642428731241496

/-! ## A084544.P10671347296384350088

`∩[A039117(n+1), A007091(n)]`
-/

namespace A084544.P10671347296384350088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084544.P10671347296384350088

/-! ## A084544.P18299101538688777320

`∩[A039118(n+1), A007091(n)]`
-/

namespace A084544.P18299101538688777320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084544.P18299101538688777320

/-! ## A084544.P10700047526418244475

`∩[A039119(n+1), A007091(n)]`
-/

namespace A084544.P10700047526418244475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084544.P10700047526418244475

/-! ## A084544.P2970159988896014255

`∩[A052382(n+1), A007091(n)]`
-/

namespace A084544.P2970159988896014255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084544.P2970159988896014255

/-!
# A084545: Alternate number system in base 5.

The programs for A084545, the canonical program `A084545.P4936692900307291097` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084545 has offset 1).

The definition of A084545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084545.P7701079786463654189

`A007092(A248910(n+1)-1)+1`
-/

namespace A084545.P7701079786463654189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A248910 (n + 1) - 1).toNat + 1

end

end A084545.P7701079786463654189

namespace A084545

/-- `A007092(A248910(n+1)-1)+1` -/
def P7701079786463654189.Spec : Prop :=
  ∀ n, P7701079786463654189.a n = A084545 (n + 1)

end A084545

/-! ## A084545.P4936692900307291097

`A001729(A248910(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A084545

/-- `A001729(A248910(n+1))` -/
def P4936692900307291097.Spec : Prop :=
  ∀ n, P4936692900307291097.a n = A084545 (n + 1)

theorem P4936692900307291097.correct : P4936692900307291097.Spec := by
  intro n
  simp only [A084545, Nat.add_sub_cancel]

end A084545

/-! ## A084545.P3184057748608578359

`∩[A001729(n+1), A007092(n)]`
-/

namespace A084545.P3184057748608578359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084545.P3184057748608578359

namespace A084545

/-- `∩[A001729(n+1), A007092(n)]` -/
def P3184057748608578359.Spec : Prop :=
  ∀ n, (P3184057748608578359.a n : ℤ) = A084545 (n + 1)

end A084545

/-! ## A084545.P6088295801967786243

`∩[A057436(n+1), A007092(n)]`
-/

namespace A084545.P6088295801967786243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084545.P6088295801967786243

namespace A084545

/-- `∩[A057436(n+1), A007092(n)]` -/
def P6088295801967786243.Spec : Prop :=
  ∀ n, (P6088295801967786243.a n : ℤ) = A084545 (n + 1)

end A084545

/-! ## A084545.P10250067441132495191

`A057436(A248910(2*n+1-n))`
-/

namespace A084545.P10250067441132495191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (A248910 (2 * n + 1 - n)).toNat

end

end A084545.P10250067441132495191

namespace A084545

/-- `A057436(A248910(2*n+1-n))` -/
def P10250067441132495191.Spec : Prop :=
  ∀ n, P10250067441132495191.a n = A084545 (n + 1)

end A084545

/-! ## A084545.P6889102266828089726

`∩[A001729(n+1), A057436(n+1)]`
-/

namespace A084545.P6889102266828089726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084545.P6889102266828089726

namespace A084545

/-- `∩[A001729(n+1), A057436(n+1)]` -/
def P6889102266828089726.Spec : Prop :=
  ∀ n, (P6889102266828089726.a n : ℤ) = A084545 (n + 1)

end A084545

/-! ## A084545.P11354812543678050921

`A208575(2*(n+1))+A007092(A248910(n+1))`
-/

namespace A084545.P11354812543678050921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208575 (2 * (n + 1)) + A007092 (A248910 (n + 1)).toNat

end

end A084545.P11354812543678050921

namespace A084545

/-- `A208575(2*(n+1))+A007092(A248910(n+1))` -/
def P11354812543678050921.Spec : Prop :=
  ∀ n, P11354812543678050921.a n = A084545 (n + 1)

end A084545

/-! ## A084545.P11169790260256401071

`A057436(A248910(n+1)+1)-1`
-/

namespace A084545.P11169790260256401071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (A248910 (n + 1) + 1).toNat - 1

end

end A084545.P11169790260256401071

namespace A084545

/-- `A057436(A248910(n+1)+1)-1` -/
def P11169790260256401071.Spec : Prop :=
  ∀ n, P11169790260256401071.a n = A084545 (n + 1)

end A084545

/-! ## A084545.P6069336072087738818

`∩[A001729(n+1), A007093(n)]`
-/

namespace A084545.P6069336072087738818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084545.P6069336072087738818

namespace A084545

/-- `∩[A001729(n+1), A007093(n)]` -/
def P6069336072087738818.Spec : Prop :=
  ∀ n, (P6069336072087738818.a n : ℤ) = A084545 (n + 1)

end A084545

/-! ## A084545.P8740609396497384318

`∩[A214677(n+1), A007092(n)]`
-/

namespace A084545.P8740609396497384318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084545.P8740609396497384318

namespace A084545

/-- `∩[A214677(n+1), A007092(n)]` -/
def P8740609396497384318.Spec : Prop :=
  ∀ n, (P8740609396497384318.a n : ℤ) = A084545 (n + 1)

end A084545

/-! ## A084545.P3909982930195683620

`eq[1, A329792(n)]`
-/

namespace A084545.P3909982930195683620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329792 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084545.P3909982930195683620

namespace A084545

/-- `eq[1, A329792(n)]` -/
def P3909982930195683620.Spec : Prop :=
  ∀ n, (P3909982930195683620.a n : ℤ) = A084545 (n + 1)

end A084545

/-! ## A084545.P812006906967007133

`eq[n, A329793(n)]`
-/

namespace A084545.P812006906967007133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329793 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084545.P812006906967007133

namespace A084545

/-- `eq[n, A329793(n)]` -/
def P812006906967007133.Spec : Prop :=
  ∀ n, (P812006906967007133.a n : ℤ) = A084545 (n + 1)

end A084545

/-! ## A084545.P1684236093506956639

`record[(n+1)/A329792(n+1)]`
-/

namespace A084545.P1684236093506956639
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A329792 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084545.P1684236093506956639

namespace A084545

/-- `record[(n+1)/A329792(n+1)]` -/
def P1684236093506956639.Spec : Prop :=
  ∀ n, P1684236093506956639.a n = (A084545 (n + 1) : ℚ)

end A084545

/-! ## A084545.P10798574132616341381

`record[(n+1)/(A329793(n+1)-n)]`
-/

namespace A084545.P10798574132616341381
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A329793 (n + 1) - (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084545.P10798574132616341381

namespace A084545

/-- `record[(n+1)/(A329793(n+1)-n)]` -/
def P10798574132616341381.Spec : Prop :=
  ∀ n, P10798574132616341381.a n = (A084545 (n + 1) : ℚ)

end A084545

/-! ## A084545.P9671098807296170997

`∩[A214678(n+1), A007092(n)]`
-/

namespace A084545.P9671098807296170997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084545.P9671098807296170997

namespace A084545

/-- `∩[A214678(n+1), A007092(n)]` -/
def P9671098807296170997.Spec : Prop :=
  ∀ n, (P9671098807296170997.a n : ℤ) = A084545 (n + 1)

end A084545

/-! ## A084545.P8852185916892712529

`∩[A039117(n+1), A007092(n)]`
-/

namespace A084545.P8852185916892712529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084545.P8852185916892712529

namespace A084545

/-- `∩[A039117(n+1), A007092(n)]` -/
def P8852185916892712529.Spec : Prop :=
  ∀ n, (P8852185916892712529.a n : ℤ) = A084545 (n + 1)

end A084545

/-! ## A084545.P17018334940607201841

`∩[A039118(n+1), A007092(n)]`
-/

namespace A084545.P17018334940607201841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084545.P17018334940607201841

namespace A084545

/-- `∩[A039118(n+1), A007092(n)]` -/
def P17018334940607201841.Spec : Prop :=
  ∀ n, (P17018334940607201841.a n : ℤ) = A084545 (n + 1)

end A084545

/-! ## A084545.P6614190023111027745

`∩[A039119(n+1), A007092(n)]`
-/

namespace A084545.P6614190023111027745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084545.P6614190023111027745

namespace A084545

/-- `∩[A039119(n+1), A007092(n)]` -/
def P6614190023111027745.Spec : Prop :=
  ∀ n, (P6614190023111027745.a n : ℤ) = A084545 (n + 1)

end A084545

/-! ## A084545.P18189780814467483178

`∩[A001729(n+1), A039118(n+1)]`
-/

namespace A084545.P18189780814467483178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084545.P18189780814467483178

namespace A084545

/-- `∩[A001729(n+1), A039118(n+1)]` -/
def P18189780814467483178.Spec : Prop :=
  ∀ n, (P18189780814467483178.a n : ℤ) = A084545 (n + 1)

end A084545

/-! ## A084545.P17439921038959067325

`∩[A001729(n+1), A039150(n+1)]`
-/

namespace A084545.P17439921038959067325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084545.P17439921038959067325

namespace A084545

/-- `∩[A001729(n+1), A039150(n+1)]` -/
def P17439921038959067325.Spec : Prop :=
  ∀ n, (P17439921038959067325.a n : ℤ) = A084545 (n + 1)

end A084545

/-!
# A084546: Triangle read by rows: T(n,k) = C( C(n,2), k) for n >= 0, 0 <= k <= C(n,2).

The programs for A084546, there is no canonical definition to state claims against.
-/

/-! ## A084546.P10784462602608188798

`A288266(n)%A071062(n+1)`
-/

namespace A084546.P10784462602608188798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288266 n) (A071062 (n + 1))

end

end A084546.P10784462602608188798

/-! ## A084546.P13771998211704953211

`A288266(n%A078866(n+1))`
-/

namespace A084546.P13771998211704953211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288266 (Int.tmod (n : ℤ) (A078866 (n + 1))).toNat

end

end A084546.P13771998211704953211

/-! ## A084546.P5746681953136436110

`and(A152388(n+1), A288266(n))`
-/

namespace A084546.P5746681953136436110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152388 (n + 1)) (A288266 n)

end

end A084546.P5746681953136436110

/-! ## A084546.P16804254552763210345

`and(A288266(n), A383046(n+3))`
-/

namespace A084546.P16804254552763210345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A288266 n) (A383046 (n + 3))

end

end A084546.P16804254552763210345

/-! ## A084546.P1685071528273566931

`A288266(n)%A000040(A000070(n))`
-/

namespace A084546.P1685071528273566931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288266 n) (A000040 (A000070 n).toNat)

end

end A084546.P1685071528273566931

/-!
# A084549: Numbers k that have primitive roots less than k that are nonnegative perfect seventh powers.

The programs for A084549, there is no canonical definition to state claims against.
-/

/-! ## A084549.P14656025911184253904

`eq[A084928(n+1)!, A046145(n)]`
-/

namespace A084549.P14656025911184253904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A084928 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084549.P14656025911184253904

/-!
# A084551: Primes which are a concatenation of five consecutive numbers.

The programs for A084551, there is no canonical definition to state claims against.
-/

/-! ## A084551.P4840519955595068244

`A225139(A333228(n+2)%A225097(n+4))`
-/

namespace A084551.P4840519955595068244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225139 (Int.tmod (A333228 (n + 2)) (A225097 (n + 4))).toNat

end

end A084551.P4840519955595068244

/-!
# A084552: Number of n X n symmetric positive definite matrices with 2's on the main diagonal and -1's and 0's elsewhere.

The programs for A084552, there is no canonical definition to state claims against.
-/

/-! ## A084552.P8407068433579250158

`A380183(A380171(n)+A000225(n))`
-/

namespace A084552.P8407068433579250158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380183 (A380171 n + A000225 n).toNat

end

end A084552.P8407068433579250158

/-! ## A084552.P7447522762207023303

`A037915(A276497(n+1)+A048862(n))`
-/

namespace A084552.P7447522762207023303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (A276497 (n + 1) + A048862 n).toNat

end

end A084552.P7447522762207023303

/-!
# A084553: Number of n X n symmetric positive semi-definite matrices with 2's on the main diagonal and -1's and 0's elsewhere.

The programs for A084553, there is no canonical definition to state claims against.
-/

/-! ## A084553.P14210109369192631075

`A144164(∑[C(n, 4)!])`
-/

namespace A084553.P14210109369192631075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose n 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144164 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084553.P14210109369192631075

/-!
# A084555: 

The programs for A084555, there is no canonical definition to state claims against.
-/

/-! ## A084555.P4295750490230069832

`a(n-1)+A084556(n)` with `a(0)=0, a(1)=1`
-/

namespace A084555.P4295750490230069832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + A084556 n

end

end A084555.P4295750490230069832

/-! ## A084555.P1356406799654366337

`A130664(n+1)-1`
-/

namespace A084555.P1356406799654366337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130664 (n + 1) - 1

end

end A084555.P1356406799654366337

/-! ## A084555.P16148953363812258312

`∑[∑[char[∑[n!]]]]`
-/

namespace A084555.P16148953363812258312
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084555.P16148953363812258312

/-! ## A084555.P8241112131211669297

`∑[∑[char[∑[n*a(n-1)]]]]` with `a(0)=1`
-/

namespace A084555.P8241112131211669297
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f4 =>
  n * f4 (n - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084555.P8241112131211669297

/-! ## A084555.P5248892034191496376

`A063992(a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A084555.P5248892034191496376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A063992 (a (n - 1)).toNat

end

end A084555.P5248892034191496376

/-! ## A084555.P15306868584463895558

`A023443(A130664(n+1))`
-/

namespace A084555.P15306868584463895558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A130664 (n + 1)).toNat

end

end A084555.P15306868584463895558

/-! ## A084555.P9773488417327173515

`eq[0, A220663(n+1)]`
-/

namespace A084555.P9773488417327173515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220663 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084555.P9773488417327173515

/-! ## A084555.P14420208696454203310

`eq[1, A220694(n+1)]`
-/

namespace A084555.P14420208696454203310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220694 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084555.P14420208696454203310

/-! ## A084555.P8966111526462267788

`eq[1, A220662(n+1)-n]`
-/

namespace A084555.P8966111526462267788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220662 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084555.P8966111526462267788

/-! ## A084555.P7277453408637775518

`A220662(A030497(n+1))-1`
-/

namespace A084555.P7277453408637775518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220662 (A030497 (n + 1)).toNat - 1

end

end A084555.P7277453408637775518

/-! ## A084555.P6154601339709884173

`eq[A374012(A220662(n+1)), A374012(n+1)]`
-/

namespace A084555.P6154601339709884173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374012 (A220662 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374012 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084555.P6154601339709884173

/-! ## A084555.P12625725751326694890

`and(A084505(n), A381707(n+1))`
-/

namespace A084555.P12625725751326694890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084505 n) (A381707 (n + 1))

end

end A084555.P12625725751326694890

/-! ## A084555.P5867642315790588087

`A084505(n)%A000998(n)`
-/

namespace A084555.P5867642315790588087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084505 n) (A000998 n)

end

end A084555.P5867642315790588087

/-! ## A084555.P12241293366323501384

`A084505(and(n, A086827(n+1)))`
-/

namespace A084555.P12241293366323501384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084505 (Int.land (n : ℤ) (A086827 (n + 1))).toNat

end

end A084555.P12241293366323501384

/-!
# A084556: n occurs n! times.

The programs for A084556, the canonical program `A084556.P1701336431703027210` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084556 has offset 0).

The definition of A084556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084556.P1701336431703027210

`∑[char[∑[n!]]]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084556

/-- `∑[char[∑[n!]]]` -/
def P1701336431703027210.Spec : Prop :=
  ∀ n, (P1701336431703027210.a n : ℤ) = A084556 n

theorem P1701336431703027210.correct : P1701336431703027210.Spec := by
  intro n
  simp only [A084556]

end A084556

/-! ## A084556.P6135103825962321122

`comp[∑[n!]+n]-n`
-/

namespace A084556.P6135103825962321122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A084556.P6135103825962321122

namespace A084556

/-- `comp[∑[n!]+n]-n` -/
def P6135103825962321122.Spec : Prop :=
  ∀ n, P6135103825962321122.a n = A084556 n

end A084556

/-! ## A084556.P14386482803551902834

`∑[char[∑[n*a(n-1)]]]` with `a(0)=1`
-/

namespace A084556.P14386482803551902834
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  n * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084556.P14386482803551902834

namespace A084556

/-- `∑[char[∑[n*a(n-1)]]]` -/
def P14386482803551902834.Spec : Prop :=
  ∀ n, (P14386482803551902834.a n : ℤ) = A084556 n

end A084556

/-! ## A084556.P9931560741141142140

`char[a(n-1)+(n-1)!]+a(n-1)` with `a(0)=0`
-/

namespace A084556.P9931560741141142140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + Nat.factorial ((n : ℤ) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1)

end

end A084556.P9931560741141142140

namespace A084556

/-- `char[a(n-1)+(n-1)!]+a(n-1)` -/
def P9931560741141142140.Spec : Prop :=
  ∀ n, (P9931560741141142140.a n : ℤ) = A084556 n

end A084556

/-! ## A084556.P3195323959907329607

`∑[char[A003422(n)]]-1`
-/

namespace A084556.P3195323959907329607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A084556.P3195323959907329607

namespace A084556

/-- `∑[char[A003422(n)]]-1` -/
def P3195323959907329607.Spec : Prop :=
  ∀ n, P3195323959907329607.a n = A084556 n

end A084556

/-! ## A084556.P11182667656430817988

`A084558(A255411(n)/2-A276008(n))`
-/

namespace A084556.P11182667656430817988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (SequenceMachineLib.roundAway ((A255411 n : ℚ) / 2 - (A276008 n : ℚ))).toNat

end

end A084556.P11182667656430817988

namespace A084556

/-- `A084558(A255411(n)/2-A276008(n))` -/
def P11182667656430817988.Spec : Prop :=
  ∀ n, P11182667656430817988.a n = A084556 n

end A084556

/-! ## A084556.P7317798474430084209

`A084558(A227157(n+1)-(n+1))`
-/

namespace A084556.P7317798474430084209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A227157 (n + 1) - (n + 1 : ℤ)).toNat

end

end A084556.P7317798474430084209

namespace A084556

/-- `A084558(A227157(n+1)-(n+1))` -/
def P7317798474430084209.Spec : Prop :=
  ∀ n, P7317798474430084209.a n = A084556 n

end A084556

/-! ## A084556.P17351045131484952685

`A084558(A153880(n)-n)`
-/

namespace A084556.P17351045131484952685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A153880 n - (n : ℤ)).toNat

end

end A084556.P17351045131484952685

namespace A084556

/-- `A084558(A153880(n)-n)` -/
def P17351045131484952685.Spec : Prop :=
  ∀ n, P17351045131484952685.a n = A084556 n

end A084556

/-! ## A084556.P4177621237873973653

`A084558(A130664(n+1)-1)`
-/

namespace A084556.P4177621237873973653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A130664 (n + 1) - 1).toNat

end

end A084556.P4177621237873973653

namespace A084556

/-- `A084558(A130664(n+1)-1)` -/
def P4177621237873973653.Spec : Prop :=
  ∀ n, P4177621237873973653.a n = A084556 n

end A084556

/-! ## A084556.P10863257171675962853

`A084558(eq[1, A030298(n+1)])`
-/

namespace A084556.P10863257171675962853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084556.P10863257171675962853

namespace A084556

/-- `A084558(eq[1, A030298(n+1)])` -/
def P10863257171675962853.Spec : Prop :=
  ∀ n, P10863257171675962853.a n = A084556 n

end A084556

/-! ## A084556.P16631933063138628395

`A258198(A153880(A153880(n)-n))`
-/

namespace A084556.P16631933063138628395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258198 (A153880 (A153880 n - (n : ℤ)).toNat).toNat

end

end A084556.P16631933063138628395

namespace A084556

/-- `A258198(A153880(A153880(n)-n))` -/
def P16631933063138628395.Spec : Prop :=
  ∀ n, P16631933063138628395.a n = A084556 n

end A084556

/-! ## A084556.P6803242942224524221

`A084558(∑[A328114(A343477(n+1))])`
-/

namespace A084556.P6803242942224524221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A343477 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A084556.P6803242942224524221

namespace A084556

/-- `A084558(∑[A328114(A343477(n+1))])` -/
def P6803242942224524221.Spec : Prop :=
  ∀ n, P6803242942224524221.a n = A084556 n

end A084556

/-!
# A084557: 

The programs for A084557, there is no canonical definition to state claims against.
-/

/-! ## A084557.P5525130613904358281

`∑[char[∑[∑[char[∑[n!]]]]+1]]`
-/

namespace A084557.P5525130613904358281
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084557.P5525130613904358281

/-! ## A084557.P13146485127059671907

`∑[char[A130664(n+1)]]`
-/

namespace A084557.P13146485127059671907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130664 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084557.P13146485127059671907

/-! ## A084557.P11800300262442591964

`∑[char[A220662(n+1)]]`
-/

namespace A084557.P11800300262442591964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220662 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084557.P11800300262442591964

/-!
# A084558: a(0) = 0; for n >= 1: a(n) = largest m such that n >= m!.

The programs for A084558, the canonical program `A084558.P8374569854218058976` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084558 has offset 0).

The definition of A084558 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090529, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A084558.P8374569854218058976

`A090529(n+1)-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A084558

/-- `A090529(n+1)-1` -/
def P8374569854218058976.Spec : Prop :=
  ∀ n, P8374569854218058976.a n = A084558 n

theorem P8374569854218058976.correct : P8374569854218058976.Spec := by
  intro n
  simp only [A084558]

end A084558

/-! ## A084558.P6325075023639538038

`∑[char[n!]]`
-/

namespace A084558.P6325075023639538038
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084558.P6325075023639538038

namespace A084558

/-- `∑[char[n!]]` -/
def P6325075023639538038.Spec : Prop :=
  ∀ n, (P6325075023639538038.a n : ℤ) = A084558 n

end A084558

/-! ## A084558.P13692698589852491962

`∑[char[∏[n+1]]]`
-/

namespace A084558.P13692698589852491962
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084558.P13692698589852491962

namespace A084558

/-- `∑[char[∏[n+1]]]` -/
def P13692698589852491962.Spec : Prop :=
  ∀ n, (P13692698589852491962.a n : ℤ) = A084558 n

end A084558

/-! ## A084558.P1625072684136164369

`char[n!]+a(n-1)` with `a(0)=0`
-/

namespace A084558.P1625072684136164369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1)

end

end A084558.P1625072684136164369

namespace A084558

/-- `char[n!]+a(n-1)` -/
def P1625072684136164369.Spec : Prop :=
  ∀ n, (P1625072684136164369.a n : ℤ) = A084558 n

end A084558

/-! ## A084558.P12880215503579677514

`comp[(n+1)!+n]-n`
-/

namespace A084558.P12880215503579677514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A084558.P12880215503579677514

namespace A084558

/-- `comp[(n+1)!+n]-n` -/
def P12880215503579677514.Spec : Prop :=
  ∀ n, P12880215503579677514.a n = A084558 n

end A084558

/-! ## A084558.P12134960461142300460

`char[∏[n+1]]+a(n-1)` with `a(0)=0`
-/

namespace A084558.P12134960461142300460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1)

end

end A084558.P12134960461142300460

namespace A084558

/-- `char[∏[n+1]]+a(n-1)` -/
def P12134960461142300460.Spec : Prop :=
  ∀ n, (P12134960461142300460.a n : ℤ) = A084558 n

end A084558

/-! ## A084558.P8577309662920821313

`dr(∑[A316341(n)])`
-/

namespace A084558.P8577309662920821313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084558.P8577309662920821313

namespace A084558

/-- `dr(∑[A316341(n)])` -/
def P8577309662920821313.Spec : Prop :=
  ∀ n, (P8577309662920821313.a n : ℤ) = A084558 n

end A084558

/-! ## A084558.P8660252125860017631

`dr(∑[char[A000142(n)]])`
-/

namespace A084558.P8660252125860017631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A084558.P8660252125860017631

namespace A084558

/-- `dr(∑[char[A000142(n)]])` -/
def P8660252125860017631.Spec : Prop :=
  ∀ n, (P8660252125860017631.a n : ℤ) = A084558 n

end A084558

/-! ## A084558.P1011040311972765776

`a(A266123(n))+1` with `a(0)=0`
-/

namespace A084558.P1011040311972765776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A266123 n).toNat + 1

end

end A084558.P1011040311972765776

namespace A084558

/-- `a(A266123(n))+1` -/
def P1011040311972765776.Spec : Prop :=
  ∀ n, (P1011040311972765776.a n : ℤ) = A084558 n

end A084558

/-! ## A084558.P2051450024295232817

`a(A266193(n))+1` with `a(0)=0`
-/

namespace A084558.P2051450024295232817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A266193 n).toNat + 1

end

end A084558.P2051450024295232817

namespace A084558

/-- `a(A266193(n))+1` -/
def P2051450024295232817.Spec : Prop :=
  ∀ n, (P2051450024295232817.a n : ℤ) = A084558 n

end A084558

/-! ## A084558.P9616491737262648304

`∑[char[A104150(n)]]-1`
-/

namespace A084558.P9616491737262648304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A084558.P9616491737262648304

namespace A084558

/-- `∑[char[A104150(n)]]-1` -/
def P9616491737262648304.Spec : Prop :=
  ∀ n, P9616491737262648304.a n = A084558 n

end A084558

/-! ## A084558.P13726147898243153515

`A265893(A063196(n+1))`
-/

namespace A084558.P13726147898243153515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265893 (A063196 (n + 1)).toNat

end

end A084558.P13726147898243153515

namespace A084558

/-- `A265893(A063196(n+1))` -/
def P13726147898243153515.Spec : Prop :=
  ∀ n, P13726147898243153515.a n = A084558 n

end A084558

/-! ## A084558.P13663726137797387132

`A275849(n)+A060502(n)`
-/

namespace A084558.P13663726137797387132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275849 n + A060502 n

end

end A084558.P13663726137797387132

namespace A084558

/-- `A275849(n)+A060502(n)` -/
def P13663726137797387132.Spec : Prop :=
  ∀ n, P13663726137797387132.a n = A084558 n

end A084558

/-! ## A084558.P6915317298681063227

`A275850(n)+A275806(n)`
-/

namespace A084558.P6915317298681063227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275850 n + A275806 n

end

end A084558.P6915317298681063227

namespace A084558

/-- `A275850(n)+A275806(n)` -/
def P6915317298681063227.Spec : Prop :=
  ∀ n, P6915317298681063227.a n = A084558 n

end A084558

/-! ## A084558.P9329201401705101927

`A060500(n)+A275853(n)-1`
-/

namespace A084558.P9329201401705101927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 n + (A275853 n - 1)

end

end A084558.P9329201401705101927

namespace A084558

/-- `A060500(n)+A275853(n)-1` -/
def P9329201401705101927.Spec : Prop :=
  ∀ n, P9329201401705101927.a n = A084558 n

end A084558

/-! ## A084558.P16093956192824916976

`∑[A012245(n+1)]-A012245(n+1)`
-/

namespace A084558.P16093956192824916976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A012245 (n + 1)

end

end A084558.P16093956192824916976

namespace A084558

/-- `∑[A012245(n+1)]-A012245(n+1)` -/
def P16093956192824916976.Spec : Prop :=
  ∀ n, P16093956192824916976.a n = A084558 n

end A084558

/-! ## A084558.P4734107373485168136

`A275849(A060125(n))+A060500(n)`
-/

namespace A084558.P4734107373485168136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275849 (A060125 n).toNat + A060500 n

end

end A084558.P4734107373485168136

namespace A084558

/-- `A275849(A060125(n))+A060500(n)` -/
def P4734107373485168136.Spec : Prop :=
  ∀ n, P4734107373485168136.a n = A084558 n

end A084558

/-! ## A084558.P579208475962933915

`A060129(n)+A275849(n)-A060500(n)`
-/

namespace A084558.P579208475962933915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060129 n + (A275849 n - A060500 n)

end

end A084558.P579208475962933915

namespace A084558

/-- `A060129(n)+A275849(n)-A060500(n)` -/
def P579208475962933915.Spec : Prop :=
  ∀ n, P579208475962933915.a n = A084558 n

end A084558

/-! ## A084558.P16524092227965527744

`A275849(n)+A275853(n)-A275851(n)`
-/

namespace A084558.P16524092227965527744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275849 n + (A275853 n - A275851 n)

end

end A084558.P16524092227965527744

namespace A084558

/-- `A275849(n)+A275853(n)-A275851(n)` -/
def P16524092227965527744.Spec : Prop :=
  ∀ n, P16524092227965527744.a n = A084558 n

end A084558

/-!
# A084559: Smallest a(n) > n such that concatenation of numbers from n to a(n) is a prime or 0 if no such number exists.

The programs for A084559, there is no canonical definition to state claims against.
-/

/-! ## A084559.P18012481915280292992

`A341720(n+2)+2+n`
-/

namespace A084559.P18012481915280292992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341720 (n + 2) + 2 + (n : ℤ)

end

end A084559.P18012481915280292992

/-! ## A084559.P6240788250586977747

`A009056(A341720(n+2)+n)`
-/

namespace A084559.P6240788250586977747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A341720 (n + 2) + (n : ℤ)).toNat

end

end A084559.P6240788250586977747

/-!
# A084561: Numbers with a square number of 1's in their binary expansion.

The programs for A084561, there is no canonical definition to state claims against.
-/

/-! ## A084561.P1181908731033822013

`lt[A055092(A001316(n)), 3]`
-/

namespace A084561.P1181908731033822013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055092 (A001316 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A084561.P1181908731033822013

/-! ## A084561.P15542049068055203505

`eq[0, A091453(A000120(n))]`
-/

namespace A084561.P15542049068055203505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084561.P15542049068055203505

/-! ## A084561.P13074642661903426107

`eq[1, A030717(A000120(n)+1)]`
-/

namespace A084561.P13074642661903426107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (A000120 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084561.P13074642661903426107

/-! ## A084561.P8822658308059328054

`eq[1, A078268(A000120(n)+1)]`
-/

namespace A084561.P8822658308059328054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078268 (A000120 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084561.P8822658308059328054

/-! ## A084561.P13647584651450947230

`eq[1, A078446(A000120(n)+1)]`
-/

namespace A084561.P13647584651450947230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078446 (A000120 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084561.P13647584651450947230

/-! ## A084561.P1160123156893904149

`eq[1, A071797(A063787(n+1))]`
-/

namespace A084561.P1160123156893904149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A063787 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084561.P1160123156893904149

/-! ## A084561.P12873406539773449175

`eq[1, A167489(A000120(n)+1)]`
-/

namespace A084561.P12873406539773449175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A000120 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084561.P12873406539773449175

/-! ## A084561.P7736796739840131838

`eq[1, A227184(A000120(n)+1)]`
-/

namespace A084561.P7736796739840131838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227184 (A000120 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084561.P7736796739840131838

/-! ## A084561.P10158027772838638468

`eq[1, A284559(A000120(n)+1)]`
-/

namespace A084561.P10158027772838638468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284559 (A000120 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084561.P10158027772838638468

/-! ## A084561.P4615543780044120670

`eq[1, A284579(A000120(n)+1)]`
-/

namespace A084561.P4615543780044120670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284579 (A000120 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084561.P4615543780044120670

/-! ## A084561.P10257180730811666013

`eq[1, A319416(A000120(n)+1)]`
-/

namespace A084561.P10257180730811666013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 (A000120 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084561.P10257180730811666013

/-! ## A084561.P1971718929306343555

`eq[2, A175503(A000120(n)+2)]`
-/

namespace A084561.P1971718929306343555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175503 (A000120 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084561.P1971718929306343555

/-! ## A084561.P7424452585052698435

`eq[3, A000005(lcm(10, A000120(n)+1)-1)]`
-/

namespace A084561.P7424452585052698435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm 10 (A000120 n + 1) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084561.P7424452585052698435

/-! ## A084561.P3573089433439061705

`eq[A000120(n), A025581(A000120(n)²)]`
-/

namespace A084561.P3573089433439061705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A000120 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084561.P3573089433439061705

/-! ## A084561.P17853116710197277307

`eq[1, A001222(A098504(A000120(n))+12)]`
-/

namespace A084561.P17853116710197277307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A098504 (A000120 n).toNat + 12).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084561.P17853116710197277307

/-! ## A084561.P16107510234291935265

`eq[A000523(A000120(n)+1)², A000120(n)]`
-/

namespace A084561.P16107510234291935265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A000120 n + 1).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084561.P16107510234291935265

/-! ## A084561.P15541019790287141212

`lt[1, gcd(2, A032741(A324467(n)/3))]`
-/

namespace A084561.P15541019790287141212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A032741 (SequenceMachineLib.roundAway ((A324467 n : ℚ) / 3)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084561.P15541019790287141212

/-! ## A084561.P1530322110123333803

`lt[A324467(n), A006257(A324467(n)+3)]`
-/

namespace A084561.P1530322110123333803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A324467 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084561.P1530322110123333803

/-! ## A084561.P10280693830890645860

`lt[A077116(A000120(2*n)), 1]`
-/

namespace A084561.P10280693830890645860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077116 (A000120 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A084561.P10280693830890645860

/-! ## A084561.P8289149503080521898

`eq[2, A001223(A151712(n)+1)]`
-/

namespace A084561.P8289149503080521898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A151712 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084561.P8289149503080521898

/-!
# A084562: Even numbers having no more than two partitions into two odd primes.

The programs for A084562, there is no canonical definition to state claims against.
-/

/-! ## A084562.P11652842451183822839

`2*(lt[A002375(n+1), 3]+1)`
-/

namespace A084562.P11652842451183822839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A084562.P11652842451183822839

/-! ## A084562.P12066848791801612878

`2*(lt[A045917(n+1), 3]+1)`
-/

namespace A084562.P12066848791801612878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A084562.P12066848791801612878

/-! ## A084562.P6527473257295355207

`A005843(lt[A045917(n+1), 3]+1)`
-/

namespace A084562.P6527473257295355207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A084562.P6527473257295355207

/-! ## A084562.P5264092865861077454

`A084563(A306014(n+1))`
-/

namespace A084562.P5264092865861077454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084563 (A306014 (n + 1)).toNat

end

end A084562.P5264092865861077454

/-! ## A084562.P3248391206800327625

`∩[A085125(n+1), A257500(n+1)]`
-/

namespace A084562.P3248391206800327625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084562.P3248391206800327625

/-!
# A084563: Even numbers having no more than three partitions into two odd primes.

The programs for A084563, there is no canonical definition to state claims against.
-/

/-! ## A084563.P9197439488391984366

`eq[(n%2)^n, A061358(A061358(n))]`
-/

namespace A084563.P9197439488391984366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A061358 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084563.P9197439488391984366

/-! ## A084563.P16683113335947861387

`lt[A061358(n), (1-A153284(n+1))²]`
-/

namespace A084563.P16683113335947861387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A153284 (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084563.P16683113335947861387

/-! ## A084563.P2711282872065290166

`lt[A061358(n)!, A046926(3*(n+1))]`
-/

namespace A084563.P2711282872065290166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A061358 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A084563.P2711282872065290166

/-! ## A084563.P13909268473989276159

`eq[1-a(n-1), A005709(A002126(n))]` with `a(0)=0, a(1)=0`
-/

namespace A084563.P13909268473989276159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  1 - f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (A002126 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084563.P13909268473989276159

/-! ## A084563.P9974043235092432689

`eq[A005709(A002126(n)), A019426(n)]`
-/

namespace A084563.P9974043235092432689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (A002126 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084563.P9974043235092432689

/-!
# A084564: Even numbers having no more than four partitions into two odd primes.

The programs for A084564, there is no canonical definition to state claims against.
-/

/-! ## A084564.P8891006326049219455

`A005843(lt[A002375(n+1), 5]+1)`
-/

namespace A084564.P8891006326049219455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A084564.P8891006326049219455

/-! ## A084564.P5526057349730625651

`eq[A003105(A061358(n)), A019426(n)]`
-/

namespace A084564.P5526057349730625651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003105 (A061358 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084564.P5526057349730625651

/-! ## A084564.P18414076779962847659

`eq[A003105(A061358(n)), A019427(n)]`
-/

namespace A084564.P18414076779962847659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003105 (A061358 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084564.P18414076779962847659

/-! ## A084564.P11619439210007280213

`eq[A003105(A061358(n)), A019428(n)]`
-/

namespace A084564.P11619439210007280213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003105 (A061358 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A084564.P11619439210007280213

/-!
# A084565: Number of connected switching classes of signed graphs with n nodes.

The programs for A084565, there is no canonical definition to state claims against.
-/

/-! ## A084565.P1545827396753392040

`Δ[A027923(a(n-1)²)]` with `a(0)=1, a(1)=2`
-/

namespace A084565.P1545827396753392040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A027923 (f1 (n - 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084565.P1545827396753392040

/-! ## A084565.P16503056550050384278

`A156077(3*A327354(n))`
-/

namespace A084565.P16503056550050384278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (3 * A327354 n).toNat

end

end A084565.P16503056550050384278

/-!
# A084566: a(0)=1, a(2n) = 2a(2n-1)+a(n), a(2n+1) = 2a(2n)+2a(n).

The programs for A084566, the canonical program `A084566.P16649044687630117203` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084566 has offset 0).

The definition of A084566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084566.P16649044687630117203

`2*a(n-1)+(n%2+1)*a(floor(n/2))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084566

/-- `2*a(n-1)+(n%2+1)*a(floor(n/2))` -/
def P16649044687630117203.Spec : Prop :=
  ∀ n, (P16649044687630117203.a n : ℤ) = A084566 n

theorem P16649044687630117203.correct : P16649044687630117203.Spec := by
  intro n
  simp only [A084566]

end A084566

/-! ## A084566.P13362763096091845344

`gcd(2, n+1)*a(floor(n/2))+2*a(n-1)` with `a(0)=1`
-/

namespace A084566.P13362763096091845344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd 2 (n + 1) * a ⌊(n : ℚ) / 2⌋.toNat + 2 * a (n - 1)

end

end A084566.P13362763096091845344

namespace A084566

/-- `gcd(2, n+1)*a(floor(n/2))+2*a(n-1)` -/
def P13362763096091845344.Spec : Prop :=
  ∀ n, (P13362763096091845344.a n : ℤ) = A084566 n

end A084566

/-! ## A084566.P6969075439688953897

`A330644(3*n)+A037445(A016064(n))`
-/

namespace A084566.P6969075439688953897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330644 (3 * n) + A037445 (A016064 n).toNat

end

end A084566.P6969075439688953897

namespace A084566

/-- `A330644(3*n)+A037445(A016064(n))` -/
def P6969075439688953897.Spec : Prop :=
  ∀ n, P6969075439688953897.a n = A084566 n

end A084566

/-!
# A084567: Binomial transform of (1,-1,4,-16,64,-256,1024,...) = (3*0^n-(-4)^n)/4.

The programs for A084567, the canonical program `A084567.P14012229563351697277` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084567 has offset 0).

The definition of A084567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084567.P14012229563351697277

`(3+(-3)^n)/4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084567

/-- `(3+(-3)^n)/4` -/
def P14012229563351697277.Spec : Prop :=
  ∀ n, P14012229563351697277.a n = (A084567 n : ℚ)

end A084567

/-! ## A084567.P16902622405870653438

`∑[ogf((1+2x)/(1+3x))]`
-/

namespace A084567.P16902622405870653438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084567.P16902622405870653438

namespace A084567

/-- `∑[ogf((1+2x)/(1+3x))]` -/
def P16902622405870653438.Spec : Prop :=
  ∀ n, P16902622405870653438.a n = A084567 n

end A084567

/-! ## A084567.P14793718530153307754

`ogf((1+2x)/(1+2x-3x^2))`
-/

namespace A084567.P14793718530153307754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 2, -3] n

end

end A084567.P14793718530153307754

namespace A084567

/-- `ogf((1+2x)/(1+2x-3x^2))` -/
def P14793718530153307754.Spec : Prop :=
  ∀ n, P14793718530153307754.a n = A084567 n

end A084567

/-! ## A084567.P12187291203855627506

`3*(1-a(n-1))` with `a(0)=1`
-/

namespace A084567.P12187291203855627506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (1 - a (n - 1))

end

end A084567.P12187291203855627506

namespace A084567

/-- `3*(1-a(n-1))` -/
def P12187291203855627506.Spec : Prop :=
  ∀ n, P12187291203855627506.a n = A084567 n

end A084567

/-! ## A084567.P18160799042478383205

`3-a(n-1)/cot(atan(3))` with `a(0)=1`
-/

namespace A084567.P18160799042478383205
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  3 - a (n - 1) / Real.cot (Real.arctan (3 : ℝ))

end

end A084567.P18160799042478383205

namespace A084567

/-- `3-a(n-1)/cot(atan(3))` -/
def P18160799042478383205.Spec : Prop :=
  ∀ n, P18160799042478383205.a n = (A084567 n : ℝ)

end A084567

/-! ## A084567.P16862648305463178190

`a(n-1)-(-3)^(n-1)` with `a(0)=1`
-/

namespace A084567.P16862648305463178190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (-3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A084567.P16862648305463178190

namespace A084567

/-- `a(n-1)-(-3)^(n-1)` -/
def P16862648305463178190.Spec : Prop :=
  ∀ n, P16862648305463178190.a n = (A084567 n : ℚ)

end A084567

/-! ## A084567.P14104581972249007430

`3-a(n-1)/sqrt(1/9)` with `a(0)=1`
-/

namespace A084567.P14104581972249007430
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  3 - a (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

end

end A084567.P14104581972249007430

namespace A084567

/-- `3-a(n-1)/sqrt(1/9)` -/
def P14104581972249007430.Spec : Prop :=
  ∀ n, P14104581972249007430.a n = (A084567 n : ℝ)

end A084567

/-! ## A084567.P15979014408035646995

`3-a(n-1)-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A084567.P15979014408035646995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 - a (n - 1) - a (n - 1) - a (n - 1)

end

end A084567.P15979014408035646995

namespace A084567

/-- `3-a(n-1)-a(n-1)-a(n-1)` -/
def P15979014408035646995.Spec : Prop :=
  ∀ n, P15979014408035646995.a n = A084567 n

end A084567

/-! ## A084567.P3099212976229450931

`1-A014983(n)`
-/

namespace A084567.P3099212976229450931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014983 n

end

end A084567.P3099212976229450931

namespace A084567

/-- `1-A014983(n)` -/
def P3099212976229450931.Spec : Prop :=
  ∀ n, P3099212976229450931.a n = A084567 n

end A084567

/-! ## A084567.P13916340227205207105

`2-A084222(n)`
-/

namespace A084567.P13916340227205207105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A084222 n

end

end A084567.P13916340227205207105

namespace A084567

/-- `2-A084222(n)` -/
def P13916340227205207105.Spec : Prop :=
  ∀ n, P13916340227205207105.a n = A084567 n

end A084567

/-! ## A084567.P4667985129517399623

`∑[-A141413(n+1)]`
-/

namespace A084567.P4667985129517399623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A141413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084567.P4667985129517399623

namespace A084567

/-- `∑[-A141413(n+1)]` -/
def P4667985129517399623.Spec : Prop :=
  ∀ n, P4667985129517399623.a n = A084567 n

end A084567

/-! ## A084567.P13363605939192744793

`floor(A076040(n)/2)+1`
-/

namespace A084567.P13363605939192744793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A076040 n : ℚ) / 2⌋ + 1

end

end A084567.P13363605939192744793

namespace A084567

/-- `floor(A076040(n)/2)+1` -/
def P13363605939192744793.Spec : Prop :=
  ∀ n, P13363605939192744793.a n = A084567 n

end A084567

/-! ## A084567.P7102436564419300353

`1-ceil(A341463(n)/2)`
-/

namespace A084567.P7102436564419300353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌈(A341463 n : ℚ) / 2⌉

end

end A084567.P7102436564419300353

namespace A084567

/-- `1-ceil(A341463(n)/2)` -/
def P7102436564419300353.Spec : Prop :=
  ∀ n, P7102436564419300353.a n = A084567 n

end A084567

/-! ## A084567.P13452846852042234819

`A165553(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A084567.P13452846852042234819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A165553 (n - 1) - a (n - 1)

end

end A084567.P13452846852042234819

namespace A084567

/-- `A165553(n-1)-a(n-1)` -/
def P13452846852042234819.Spec : Prop :=
  ∀ n, P13452846852042234819.a n = A084567 n

end A084567

/-! ## A084567.P17746735873864321401

`A033999(n)*A054878(n)`
-/

namespace A084567.P17746735873864321401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A054878 n

end

end A084567.P17746735873864321401

namespace A084567

/-- `A033999(n)*A054878(n)` -/
def P17746735873864321401.Spec : Prop :=
  ∀ n, P17746735873864321401.a n = A084567 n

end A084567

/-! ## A084567.P6334893784467086095

`A015518(n)*A033999(n)+1`
-/

namespace A084567.P6334893784467086095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 n * A033999 n + 1

end

end A084567.P6334893784467086095

namespace A084567

/-- `A015518(n)*A033999(n)+1` -/
def P6334893784467086095.Spec : Prop :=
  ∀ n, P6334893784467086095.a n = A084567 n

end A084567

/-! ## A084567.P8658047899740380390

`1-A015518(n)*A062157(n)`
-/

namespace A084567.P8658047899740380390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A015518 n * A062157 n

end

end A084567.P8658047899740380390

namespace A084567

/-- `1-A015518(n)*A062157(n)` -/
def P8658047899740380390.Spec : Prop :=
  ∀ n, P8658047899740380390.a n = A084567 n

end A084567

/-! ## A084567.P16718321808565044953

`(A054878(n)-A015518(n))*A054878(n)`
-/

namespace A084567.P16718321808565044953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054878 n - A015518 n) * A054878 n

end

end A084567.P16718321808565044953

namespace A084567

/-- `(A054878(n)-A015518(n))*A054878(n)` -/
def P16718321808565044953.Spec : Prop :=
  ∀ n, P16718321808565044953.a n = A084567 n

end A084567

/-! ## A084567.P5743096144121283376

`A014983(n+1)+2*A014983(n)`
-/

namespace A084567.P5743096144121283376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014983 (n + 1) + 2 * A014983 n

end

end A084567.P5743096144121283376

namespace A084567

/-- `A014983(n+1)+2*A014983(n)` -/
def P5743096144121283376.Spec : Prop :=
  ∀ n, P5743096144121283376.a n = A084567 n

end A084567

/-! ## A084567.P9499058994898119587

`A297445(n+1)-(A297445(n)+A297444(n+1))`
-/

namespace A084567.P9499058994898119587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297445 (n + 1) - (A297445 n + A297444 (n + 1))

end

end A084567.P9499058994898119587

namespace A084567

/-- `A297445(n+1)-(A297445(n)+A297444(n+1))` -/
def P9499058994898119587.Spec : Prop :=
  ∀ n, P9499058994898119587.a n = A084567 n

end A084567

/-!
# A084568: a(0)=1, a(1)=5, a(n+2)=4a(n), n>0.

The programs for A084568, the canonical program `A084568.P12592690392560382482` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084568 has offset 0).

The definition of A084568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A084568.P5795948496271689233

`ogf((1+5x+4x^2)/(1-4x^2))`
-/

namespace A084568.P5795948496271689233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 4] [1, 0, -4] n

end

end A084568.P5795948496271689233

namespace A084568

/-- `ogf((1+5x+4x^2)/(1-4x^2))` -/
def P5795948496271689233.Spec : Prop :=
  ∀ n, P5795948496271689233.a n = A084568 n

end A084568

/-! ## A084568.P12592690392560382482

`4*a(n-2)` with `a(0)=1, a(1)=5, a(2)=8`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084568

/-- `4*a(n-2)` -/
def P12592690392560382482.Spec : Prop :=
  ∀ n, (P12592690392560382482.a n : ℤ) = A084568 n

theorem P12592690392560382482.correct : P12592690392560382482.Spec := by
  intro n
  simp only [A084568]

end A084568

/-! ## A084568.P9722687246843466180

`a(n-2)/(1/2)²` with `a(0)=1, a(1)=5, a(2)=8`
-/

namespace A084568.P9722687246843466180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5, 8] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A084568.P9722687246843466180

namespace A084568

/-- `a(n-2)/(1/2)²` -/
def P9722687246843466180.Spec : Prop :=
  ∀ n, P9722687246843466180.a n = (A084568 n : ℚ)

end A084568

/-! ## A084568.P9478542724364003373

`record[abs(A136258(n))]`
-/

namespace A084568.P9478542724364003373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A136258 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084568.P9478542724364003373

namespace A084568

/-- `record[abs(A136258(n))]` -/
def P9478542724364003373.Spec : Prop :=
  ∀ n, P9478542724364003373.a n = A084568 n

end A084568

/-! ## A084568.P10313709107259183516

`abs(Δ[Δ[A131575(n)²]])`
-/

namespace A084568.P10313709107259183516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A084568.P10313709107259183516

namespace A084568

/-- `abs(Δ[Δ[A131575(n)²]])` -/
def P10313709107259183516.Spec : Prop :=
  ∀ n, P10313709107259183516.a n = A084568 n

end A084568

/-! ## A084568.P8500679945018745922

`A029747(or(1, 3*n+1))`
-/

namespace A084568.P8500679945018745922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (Nat.lor 1 (3 * n + 1))

end

end A084568.P8500679945018745922

namespace A084568

/-- `A029747(or(1, 3*n+1))` -/
def P8500679945018745922.Spec : Prop :=
  ∀ n, P8500679945018745922.a n = A084568 n

end A084568

/-! ## A084568.P16497653458673759235

`A029747(∑[abs(a(n-2))])` with `a(0)=1, a(1)=4, a(2)=2`
-/

namespace A084568.P16497653458673759235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 2] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084568.P16497653458673759235

namespace A084568

/-- `A029747(∑[abs(a(n-2))])` -/
def P16497653458673759235.Spec : Prop :=
  ∀ n, P16497653458673759235.a n = A084568 n

end A084568

/-! ## A084568.P13623981624246358822

`A029747(∑[floor(a(n-2))])` with `a(0)=1, a(1)=4, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A084568.P13623981624246358822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 2] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084568.P13623981624246358822

namespace A084568

/-- `A029747(∑[floor(a(n-2))])` -/
def P13623981624246358822.Spec : Prop :=
  ∀ n, P13623981624246358822.a n = A084568 n

end A084568

/-! ## A084568.P9540131029928364842

`A104721((n+1)%(2*n+1))`
-/

namespace A084568.P9540131029928364842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104721 ((n + 1) % (2 * n + 1))

end

end A084568.P9540131029928364842

namespace A084568

/-- `A104721((n+1)%(2*n+1))` -/
def P9540131029928364842.Spec : Prop :=
  ∀ n, P9540131029928364842.a n = A084568 n

end A084568

/-! ## A084568.P6649171812815437485

`A029747(3*n-and(1, n+1)+2)`
-/

namespace A084568.P6649171812815437485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 ((3 * n : ℤ) - (Nat.land 1 (n + 1) : ℤ) + 2).toNat

end

end A084568.P6649171812815437485

namespace A084568

/-- `A029747(3*n-and(1, n+1)+2)` -/
def P6649171812815437485.Spec : Prop :=
  ∀ n, P6649171812815437485.a n = A084568 n

end A084568

/-! ## A084568.P5153734662427381593

`A029747(A007310(n+1))`
-/

namespace A084568.P5153734662427381593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (A007310 (n + 1)).toNat

end

end A084568.P5153734662427381593

namespace A084568

/-- `A029747(A007310(n+1))` -/
def P5153734662427381593.Spec : Prop :=
  ∀ n, P5153734662427381593.a n = A084568 n

end A084568

/-! ## A084568.P2270026918606487965

`A094958(A042948(n+1))`
-/

namespace A084568.P2270026918606487965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (A042948 (n + 1)).toNat

end

end A084568.P2270026918606487965

namespace A084568

/-- `A094958(A042948(n+1))` -/
def P2270026918606487965.Spec : Prop :=
  ∀ n, P2270026918606487965.a n = A084568 n

end A084568

/-! ## A084568.P230932172830314440

`A104721(A087156(n+1))`
-/

namespace A084568.P230932172830314440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104721 (A087156 (n + 1)).toNat

end

end A084568.P230932172830314440

namespace A084568

/-- `A104721(A087156(n+1))` -/
def P230932172830314440.Spec : Prop :=
  ∀ n, P230932172830314440.a n = A084568 n

end A084568

/-! ## A084568.P13628230969844340382

`A094958(A338062(n+1))`
-/

namespace A084568.P13628230969844340382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (A338062 (n + 1)).toNat

end

end A084568.P13628230969844340382

namespace A084568

/-- `A094958(A338062(n+1))` -/
def P13628230969844340382.Spec : Prop :=
  ∀ n, P13628230969844340382.a n = A084568 n

end A084568

/-! ## A084568.P129641610607287525

`A333905(A100832(n+1))`
-/

namespace A084568.P129641610607287525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333905 (A100832 (n + 1)).toNat

end

end A084568.P129641610607287525

namespace A084568

/-- `A333905(A100832(n+1))` -/
def P129641610607287525.Spec : Prop :=
  ∀ n, P129641610607287525.a n = A084568 n

end A084568

/-! ## A084568.P3886833672859564184

`A104721(A199969(n+2))`
-/

namespace A084568.P3886833672859564184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104721 (A199969 (n + 2)).toNat

end

end A084568.P3886833672859564184

namespace A084568

/-- `A104721(A199969(n+2))` -/
def P3886833672859564184.Spec : Prop :=
  ∀ n, P3886833672859564184.a n = A084568 n

end A084568

/-! ## A084568.P17713826931749911981

`A140252(n)+A004119(n)`
-/

namespace A084568.P17713826931749911981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140252 n + A004119 n

end

end A084568.P17713826931749911981

namespace A084568

/-- `A140252(n)+A004119(n)` -/
def P17713826931749911981.Spec : Prop :=
  ∀ n, P17713826931749911981.a n = A084568 n

end A084568

/-! ## A084568.P15552100940920519633

`A155559(n)+A084221(n)`
-/

namespace A084568.P15552100940920519633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + A084221 n

end

end A084568.P15552100940920519633

namespace A084568

/-- `A155559(n)+A084221(n)` -/
def P15552100940920519633.Spec : Prop :=
  ∀ n, P15552100940920519633.a n = A084568 n

end A084568

/-! ## A084568.P15415923739911037948

`xor(A052549(n), A140252(n))`
-/

namespace A084568.P15415923739911037948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A052549 n) (A140252 n)

end

end A084568.P15415923739911037948

namespace A084568

/-- `xor(A052549(n), A140252(n))` -/
def P15415923739911037948.Spec : Prop :=
  ∀ n, P15415923739911037948.a n = A084568 n

end A084568

/-! ## A084568.P400843182128452102

`A133572(n+1)+A131577(n)`
-/

namespace A084568.P400843182128452102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133572 (n + 1) + A131577 n

end

end A084568.P400843182128452102

namespace A084568

/-- `A133572(n+1)+A131577(n)` -/
def P400843182128452102.Spec : Prop :=
  ∀ n, P400843182128452102.a n = A084568 n

end A084568

/-!
# A084569: Partial sums of A084570.

The programs for A084569, the canonical program `A084569.P17329400052284614181` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084569 has offset 0).

The definition of A084569 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084569.P17329400052284614181

`(-1)^n/8+(n^4+6*n^3+17*n²+30*n+21)/24`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084569

/-- `(-1)^n/8+(n^4+6*n^3+17*n²+30*n+21)/24` -/
def P17329400052284614181.Spec : Prop :=
  ∀ n, P17329400052284614181.a n = (A084569 n : ℚ)

end A084569

/-! ## A084569.P9904558752160947004

`∑[∑[∑[xor(1, n)]]]`
-/

namespace A084569.P9904558752160947004
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084569.P9904558752160947004

namespace A084569

/-- `∑[∑[∑[xor(1, n)]]]` -/
def P9904558752160947004.Spec : Prop :=
  ∀ n, (P9904558752160947004.a n : ℤ) = A084569 n

end A084569

/-! ## A084569.P2112497803148533971

`∑[∑[∑[a(n-2)+2]]]` with `a(0)=1, a(1)=0`
-/

namespace A084569.P2112497803148533971
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f3 =>
  f3 (n - 2) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084569.P2112497803148533971

namespace A084569

/-- `∑[∑[∑[a(n-2)+2]]]` -/
def P2112497803148533971.Spec : Prop :=
  ∀ n, (P2112497803148533971.a n : ℤ) = A084569 n

end A084569

/-! ## A084569.P2034316880110488610

`-∑[∑[n%2-1-∑[n]]]`
-/

namespace A084569.P2034316880110488610
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) - 1 - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084569.P2034316880110488610

namespace A084569

/-- `-∑[∑[n%2-1-∑[n]]]` -/
def P2034316880110488610.Spec : Prop :=
  ∀ n, P2034316880110488610.a n = A084569 n

end A084569

/-! ## A084569.P9461550820433020009

`∑[∑[1-(a(n-1)-n²)]]` with `a(0)=1`
-/

namespace A084569.P9461550820433020009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - (f2 (n - 1) - (n ^ 2 : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084569.P9461550820433020009

namespace A084569

/-- `∑[∑[1-(a(n-1)-n²)]]` -/
def P9461550820433020009.Spec : Prop :=
  ∀ n, P9461550820433020009.a n = A084569 n

end A084569

/-! ## A084569.P13349057299090185716

`∑[∑[∑[∑[2-a(n-1)]]]]` with `a(0)=1, a(1)=-1`
-/

namespace A084569.P13349057299090185716
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f4 =>
  2 - f4 (n - 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084569.P13349057299090185716

namespace A084569

/-- `∑[∑[∑[∑[2-a(n-1)]]]]` -/
def P13349057299090185716.Spec : Prop :=
  ∀ n, P13349057299090185716.a n = A084569 n

end A084569

/-! ## A084569.P11490632930334893842

`∑[A084570(n)]`
-/

namespace A084569.P11490632930334893842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084569.P11490632930334893842

namespace A084569

/-- `∑[A084570(n)]` -/
def P11490632930334893842.Spec : Prop :=
  ∀ n, P11490632930334893842.a n = A084569 n

end A084569

/-! ## A084569.P12920219358261293102

`∑[∑[A084263(n)]]`
-/

namespace A084569.P12920219358261293102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084263 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084569.P12920219358261293102

namespace A084569

/-- `∑[∑[A084263(n)]]` -/
def P12920219358261293102.Spec : Prop :=
  ∀ n, P12920219358261293102.a n = A084569 n

end A084569

/-!
# A084570: Partial sums of A084263.

The programs for A084570, the canonical program `A084570.P4530313573640578235` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084570 has offset 0).

The definition of A084570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084570.P4530313573640578235

`ceil((n^3+3*n²+5*n+3)/6)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084570

/-- `ceil((n^3+3*n²+5*n+3)/6)` -/
def P4530313573640578235.Spec : Prop :=
  ∀ n, P4530313573640578235.a n = A084570 n

theorem P4530313573640578235.correct : P4530313573640578235.Spec := by
  intro n
  simp only [A084570]

end A084570

/-! ## A084570.P3356096084309226335

`∑[∑[xor(1, n)]]`
-/

namespace A084570.P3356096084309226335
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084570.P3356096084309226335

namespace A084570

/-- `∑[∑[xor(1, n)]]` -/
def P3356096084309226335.Spec : Prop :=
  ∀ n, (P3356096084309226335.a n : ℤ) = A084570 n

end A084570

/-! ## A084570.P6824004637102666957

`∑[or(1, n)+C(n, 2)]`
-/

namespace A084570.P6824004637102666957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084570.P6824004637102666957

namespace A084570

/-- `∑[or(1, n)+C(n, 2)]` -/
def P6824004637102666957.Spec : Prop :=
  ∀ n, (P6824004637102666957.a n : ℤ) = A084570 n

end A084570

/-! ## A084570.P11228841466044243694

`∑[∑[n]+log2(gcd(2, n))]`
-/

namespace A084570.P11228841466044243694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084570.P11228841466044243694

namespace A084570

/-- `∑[∑[n]+log2(gcd(2, n))]` -/
def P11228841466044243694.Spec : Prop :=
  ∀ n, P11228841466044243694.a n = (A084570 n : ℝ)

end A084570

/-! ## A084570.P5097309558486873651

`∑[char[lcm(2, n)]+∑[n]]`
-/

namespace A084570.P5097309558486873651
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084570.P5097309558486873651

namespace A084570

/-- `∑[char[lcm(2, n)]+∑[n]]` -/
def P5097309558486873651.Spec : Prop :=
  ∀ n, (P5097309558486873651.a n : ℤ) = A084570 n

end A084570

/-! ## A084570.P8973305739516528058

`∑[∑[n]+(n+1)%2]`
-/

namespace A084570.P8973305739516528058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084570.P8973305739516528058

namespace A084570

/-- `∑[∑[n]+(n+1)%2]` -/
def P8973305739516528058.Spec : Prop :=
  ∀ n, (P8973305739516528058.a n : ℤ) = A084570 n

end A084570

/-! ## A084570.P17342655621450079724

`∑[∑[n]+and(1, n+1)]`
-/

namespace A084570.P17342655621450079724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Nat.land 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084570.P17342655621450079724

namespace A084570

/-- `∑[∑[n]+and(1, n+1)]` -/
def P17342655621450079724.Spec : Prop :=
  ∀ n, (P17342655621450079724.a n : ℤ) = A084570 n

end A084570

/-! ## A084570.P17223349869941425236

`∑[∑[a(n-2)+2]]` with `a(0)=1, a(1)=0`
-/

namespace A084570.P17223349869941425236
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084570.P17223349869941425236

namespace A084570

/-- `∑[∑[a(n-2)+2]]` -/
def P17223349869941425236.Spec : Prop :=
  ∀ n, (P17223349869941425236.a n : ℤ) = A084570 n

end A084570

/-! ## A084570.P1838317598282915187

`∑[∑[n+1-Δ[or(1, n)]]]`
-/

namespace A084570.P1838317598282915187
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084570.P1838317598282915187

namespace A084570

/-- `∑[∑[n+1-Δ[or(1, n)]]]` -/
def P1838317598282915187.Spec : Prop :=
  ∀ n, P1838317598282915187.a n = A084570 n

end A084570

/-! ## A084570.P10667588489830544497

`a(n-2)+n²+1` with `a(0)=1, a(1)=2`
-/

namespace A084570.P10667588489830544497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (n ^ 2 + 1)

end

end A084570.P10667588489830544497

namespace A084570

/-- `a(n-2)+n²+1` -/
def P10667588489830544497.Spec : Prop :=
  ∀ n, (P10667588489830544497.a n : ℤ) = A084570 n

end A084570

/-! ## A084570.P5317246696871515649

`∑[1-(a(n-1)-n²)]` with `a(0)=1`
-/

namespace A084570.P5317246696871515649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - (f1 (n - 1) - (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084570.P5317246696871515649

namespace A084570

/-- `∑[1-(a(n-1)-n²)]` -/
def P5317246696871515649.Spec : Prop :=
  ∀ n, P5317246696871515649.a n = A084570 n

end A084570

/-! ## A084570.P15268428440916008919

`∑[∑[2*or(1, n)-(n+1)]]`
-/

namespace A084570.P15268428440916008919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℤ) - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084570.P15268428440916008919

namespace A084570

/-- `∑[∑[2*or(1, n)-(n+1)]]` -/
def P15268428440916008919.Spec : Prop :=
  ∀ n, P15268428440916008919.a n = A084570 n

end A084570

/-! ## A084570.P12109636776694754304

`∑[∑[∑[2-a(n-1)]]]` with `a(0)=1, a(1)=-1`
-/

namespace A084570.P12109636776694754304
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f3 =>
  2 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084570.P12109636776694754304

namespace A084570

/-- `∑[∑[∑[2-a(n-1)]]]` -/
def P12109636776694754304.Spec : Prop :=
  ∀ n, P12109636776694754304.a n = A084570 n

end A084570

/-! ## A084570.P16178124298447108945

`a(n-2)+n*n+1` with `a(0)=1, a(1)=2`
-/

namespace A084570.P16178124298447108945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + n * n + 1

end

end A084570.P16178124298447108945

namespace A084570

/-- `a(n-2)+n*n+1` -/
def P16178124298447108945.Spec : Prop :=
  ∀ n, (P16178124298447108945.a n : ℤ) = A084570 n

end A084570

/-! ## A084570.P15922709750171143847

`floor(n/2)+1+C(n+2, 3)`
-/

namespace A084570.P15922709750171143847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + 1 + (Nat.choose (n + 2) 3 : ℤ)

end

end A084570.P15922709750171143847

namespace A084570

/-- `floor(n/2)+1+C(n+2, 3)` -/
def P15922709750171143847.Spec : Prop :=
  ∀ n, P15922709750171143847.a n = A084570 n

end A084570

/-! ## A084570.P16809636866457087803

`round(C(n+2, 3)+(n+1)/2)`
-/

namespace A084570.P16809636866457087803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 2) 3 : ℚ) + (n + 1 : ℚ) / 2)

end

end A084570.P16809636866457087803

namespace A084570

/-- `round(C(n+2, 3)+(n+1)/2)` -/
def P16809636866457087803.Spec : Prop :=
  ∀ n, P16809636866457087803.a n = A084570 n

end A084570

/-! ## A084570.P14326413880471933474

`∑[A084263(n)]`
-/

namespace A084570.P14326413880471933474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084570.P14326413880471933474

namespace A084570

/-- `∑[A084263(n)]` -/
def P14326413880471933474.Spec : Prop :=
  ∀ n, P14326413880471933474.a n = A084570 n

end A084570

/-! ## A084570.P2438791151095061978

`∑[∑[A004442(n)]]`
-/

namespace A084570.P2438791151095061978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084570.P2438791151095061978

namespace A084570

/-- `∑[∑[A004442(n)]]` -/
def P2438791151095061978.Spec : Prop :=
  ∀ n, P2438791151095061978.a n = A084570 n

end A084570

/-! ## A084570.P1109480680741083913

`∑[A084265(n)-n]`
-/

namespace A084570.P1109480680741083913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084265 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084570.P1109480680741083913

namespace A084570

/-- `∑[A084265(n)-n]` -/
def P1109480680741083913.Spec : Prop :=
  ∀ n, P1109480680741083913.a n = A084570 n

end A084570

/-!
# A084571: Let a(1)=1; for n>1, a(n)=nextprime((3/2)*a(n-1)).

The programs for A084571, there is no canonical definition to state claims against.
-/

/-! ## A084571.P18044537947160813725

`A151800(floor(3*a(n-1)/2))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A084571.P18044537947160813725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A151800 ⌊(3 * a (n - 1) : ℚ) / 2⌋.toNat

end

end A084571.P18044537947160813725

/-! ## A084571.P10004240418049687392

`A151800(ceil(3*a(n-1)/2)-1)` with `a(0)=1`
-/

namespace A084571.P10004240418049687392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 (⌈(3 * a (n - 1) : ℚ) / 2⌉ - 1).toNat

end

end A084571.P10004240418049687392

/-! ## A084571.P16958567565946635969

`A151800(floor(a(n-1)/(3-7/3)))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A084571.P16958567565946635969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A151800 ⌊(a (n - 1) : ℚ) / (3 - (7 : ℚ) / 3)⌋.toNat

end

end A084571.P16958567565946635969

/-! ## A084571.P2621699268454973262

`A151800(A001651(a(n-1)))` with `a(0)=1`
-/

namespace A084571.P2621699268454973262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 (A001651 (a (n - 1)).toNat).toNat

end

end A084571.P2621699268454973262

/-! ## A084571.P6483311795982988770

`A151800(A026167(a(n-1)))` with `a(0)=1`
-/

namespace A084571.P6483311795982988770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 (A026167 (a (n - 1)).toNat).toNat

end

end A084571.P6483311795982988770

/-!
# A084572: Let a(1)=1; for n>1, a(n)=nextprime((Pi/2)*a(n-1)).

The programs for A084572, there is no canonical definition to state claims against.
-/

/-! ## A084572.P12522722142990621285

`A151800(A140758(a(n-1)))` with `a(0)=1`
-/

namespace A084572.P12522722142990621285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 (A140758 (a (n - 1)).toNat).toNat

end

end A084572.P12522722142990621285

/-! ## A084572.P14891608648199273448

`A106317(A240523(n)+n)`
-/

namespace A084572.P14891608648199273448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106317 (A240523 n + (n : ℤ)).toNat

end

end A084572.P14891608648199273448

/-! ## A084572.P11974569664162245414

`A234300(A064324(3*n+2)-A010892(n))`
-/

namespace A084572.P11974569664162245414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 (A064324 (3 * n + 2) - A010892 n).toNat

end

end A084572.P11974569664162245414

/-! ## A084572.P13464336168555359228

`A234300(A347986(2*n+1)+A118658(2*(n+1)))`
-/

namespace A084572.P13464336168555359228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 (A347986 (2 * n + 1) + A118658 (2 * (n + 1))).toNat

end

end A084572.P13464336168555359228

/-!
# A084573: Let a(1)=1; for n>1, a(n)=nextprime( a(n-1)^(n/(n-1)) ).

The programs for A084573, there is no canonical definition to state claims against.
-/

/-! ## A084573.P2639303899370394654

`A007918(A285681(a(n-1)))` with `a(0)=1`
-/

namespace A084573.P2639303899370394654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007918 (A285681 (a (n - 1)).toNat).toNat

end

end A084573.P2639303899370394654

/-! ## A084573.P14815606029923105840

`A007918(A213908(a(n-1)))` with `a(0)=1`
-/

namespace A084573.P14815606029923105840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007918 (A213908 (a (n - 1)).toNat).toNat

end

end A084573.P14815606029923105840

/-! ## A084573.P768622225307623275

`A106317(∑[A191385(n)])`
-/

namespace A084573.P768622225307623275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191385 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106317 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A084573.P768622225307623275

/-! ## A084573.P7265205881585579964

`A106317(A179041(n+1))`
-/

namespace A084573.P7265205881585579964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106317 (A179041 (n + 1)).toNat

end

end A084573.P7265205881585579964

/-! ## A084573.P3051778357461475594

`A194291(A148602(n+1))`
-/

namespace A084573.P3051778357461475594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194291 (A148602 (n + 1)).toNat

end

end A084573.P3051778357461475594

/-!
# A084575: Number of terms in the polynomial expression for the determinant of generic circulant matrix of order n.

The programs for A084575, there is no canonical definition to state claims against.
-/

/-! ## A084575.P7372280677294042997

`A191844(A000040(C(n, 2)+1)+n)`
-/

namespace A084575.P7372280677294042997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191844 (A000040 (Nat.choose n 2 + 1) + (n : ℤ)).toNat

end

end A084575.P7372280677294042997

/-! ## A084575.P5347945702259142144

`A211515(A149131(n))+∑{e}[n+1, #]`
-/

namespace A084575.P5347945702259142144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211515 (A149131 n).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A084575.P5347945702259142144

/-! ## A084575.P9433650682278342070

`A325915(n)+A008480(A000272(n))`
-/

namespace A084575.P9433650682278342070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325915 n + A008480 (A000272 n).toNat

end

end A084575.P9433650682278342070

/-!
# A084576: Let y = m/GK(k), where m and k vary over the positive integers and GK(k)=log(1+1/(k*(k+2)))/log(2) is the Gauss-Kuzmin distribution of k. Sort the y values by size and number them consecutively by n. This sequence gives the values of n when m=1.

The programs for A084576, there is no canonical definition to state claims against.
-/

/-! ## A084576.P6110524906989293815

`eq[1, A084579(n+1)]+1`
-/

namespace A084576.P6110524906989293815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084576.P6110524906989293815

/-! ## A084576.P18192758113739415194

`lt[n, A084580(n+1)²]+1`
-/

namespace A084576.P18192758113739415194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A084576.P18192758113739415194

/-!
# A084578: Positive integers not found in A084577.

The programs for A084578, there is no canonical definition to state claims against.
-/

/-! ## A084578.P18172787580551934489

`A325128(A187829(n+1))+A057357(n+1)`
-/

namespace A084578.P18172787580551934489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325128 (A187829 (n + 1)).toNat + A057357 (n + 1)

end

end A084578.P18172787580551934489

/-! ## A084578.P2628254110333062593

`lt[A335208(3*n+2), A214848(n)]`
-/

namespace A084578.P2628254110333062593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335208 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214848 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A084578.P2628254110333062593

/-! ## A084578.P15710849768962678791

`A303590(n+1)+A046698(A052762(n))`
-/

namespace A084578.P15710849768962678791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303590 (n + 1) + A046698 (A052762 n).toNat

end

end A084578.P15710849768962678791

/-! ## A084578.P4226512208793152054

`A026356(n+1)-A054354(A192244(n+1))`
-/

namespace A084578.P4226512208793152054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (n + 1) - A054354 (A192244 (n + 1)).toNat

end

end A084578.P4226512208793152054

/-!
# A084579: Let y = m/GK(k), where m and k vary over the positive integers and GK(k)=log(1+1/(k*(k+2)))/log(2) is the Gauss-Kuzmin distribution of k. Sort the y values by size and number them consecutively by n. This sequence gives the values of m in order by n.

The programs for A084579, there is no canonical definition to state claims against.
-/

/-! ## A084579.P4507350123383293796

`gcd(A265863(A314335(n)), A304758(n+1))`
-/

namespace A084579.P4507350123383293796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A265863 (A314335 n).toNat) (A304758 (n + 1))

end

end A084579.P4507350123383293796

/-!
# A084580: Let y = m/GK(k), where m and k vary over the positive integers and GK(k)=log(1+1/(k*(k+2)))/log(2) is the Gauss-Kuzmin distribution of k. Sort the y values by size and number them consecutively by n. This sequence gives the values of k in order by n.

The programs for A084580, there is no canonical definition to state claims against.
-/

/-! ## A084580.P4250389367575868266

`gcd(A222416(A090991(n+1)), A353689(n))`
-/

namespace A084580.P4250389367575868266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A222416 (A090991 (n + 1)).toNat) (A353689 n)

end

end A084580.P4250389367575868266

/-! ## A084580.P9745482153935955410

`A329314(A329131(2*n+1)+A046699(n+2))`
-/

namespace A084580.P9745482153935955410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329314 (A329131 (2 * n + 1) + A046699 (n + 2)).toNat

end

end A084580.P9745482153935955410

/-! ## A084580.P2324556478053299360

`∑{e}[A288627(3*n+2)²+1, #]`
-/

namespace A084580.P2324556478053299360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288627 (3 * n + 2) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A084580.P2324556478053299360

/-! ## A084580.P6712765242065365285

`A209156(A026448(n+1))`
-/

namespace A084580.P6712765242065365285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209156 (A026448 (n + 1)).toNat

end

end A084580.P6712765242065365285

/-!
# A084581: Let y = m/GK(k), where m and k vary over the positive integers and GK(k)=log(1+1/(k*(k+2)))/log(2) is the Gauss-Kuzmin distribution of k. Sort the y values by size and number them consecutively by n. This sequence gives the values of n when k=1.

The programs for A084581, there is no canonical definition to state claims against.
-/

/-! ## A084581.P10305716903039909715

`eq[1, A084580(n+1)]+1`
-/

namespace A084581.P10305716903039909715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084581.P10305716903039909715

/-! ## A084581.P3172709843356479281

`record[(n+1)/A084580(round(sqrt(n²+1))+1)]`
-/

namespace A084581.P3172709843356479281
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A084580 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084581.P3172709843356479281

/-! ## A084581.P10461552400656116896

`A000027(lt[A084580(n+1), 2]+1)`
-/

namespace A084581.P10461552400656116896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A084581.P10461552400656116896

/-! ## A084581.P361577560047477637

`A000027(record[(n+1)/A084580(n+1)])`
-/

namespace A084581.P361577560047477637
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A084580 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A084581.P361577560047477637

/-! ## A084581.P10336587024158571755

`A028310(record[(n+1)/A084580(n+1)])`
-/

namespace A084581.P10336587024158571755
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A084580 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A084581.P10336587024158571755

/-! ## A084581.P9880319843365420014

`A057427(2*(n+2))+lt[A084580(n+1), 2]`
-/

namespace A084581.P9880319843365420014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * (n + 2)) + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A084581.P9880319843365420014

/-! ## A084581.P14955023200474971562

`A028242(2*record[n/A084580(n+1)])`
-/

namespace A084581.P14955023200474971562
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A084580 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (SequenceMachineLib.roundAway (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A084581.P14955023200474971562

/-!
# A084582: Let y = m/GK(k), where m and k vary over the positive integers and GK(k)=log(1+1/(k*(k+2)))/log(2) is the Gauss-Kuzmin distribution of k. Sort the y values by size and number them consecutively by n. This sequence gives the values of n when k=2.

The programs for A084582, there is no canonical definition to state claims against.
-/

/-! ## A084582.P11780044639372504513

`eq[2, A084580(n+1)]+1`
-/

namespace A084582.P11780044639372504513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084582.P11780044639372504513

/-! ## A084582.P17856128837918564795

`eq[2, A084580(A028310(n))]`
-/

namespace A084582.P17856128837918564795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084582.P17856128837918564795

/-! ## A084582.P12168705239626841423

`A020725(eq[2, A084580(n+1)])`
-/

namespace A084582.P12168705239626841423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084582.P12168705239626841423

/-! ## A084582.P11632348401730143213

`A065475(eq[2, A084580(n+1)])`
-/

namespace A084582.P11632348401730143213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084582.P11632348401730143213

/-! ## A084582.P2103212063616810369

`A114637(eq[2, A084580(n+1)])`
-/

namespace A084582.P2103212063616810369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084582.P2103212063616810369

/-!
# A084583: Let y = m/GK(k), where m and k vary over the positive integers and GK(k)=log(1+1/(k*(k+2)))/log(2) is the Gauss-Kuzmin distribution of k. Sort the y values by size and number them consecutively by n. This sequence gives the values of n when k=3.

The programs for A084583, there is no canonical definition to state claims against.
-/

/-! ## A084583.P8475631416684651020

`eq[3, A084580(n+1)]+1`
-/

namespace A084583.P8475631416684651020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084583.P8475631416684651020

/-! ## A084583.P11182681093496780976

`eq[3, A084580(A028310(n))]`
-/

namespace A084583.P11182681093496780976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084583.P11182681093496780976

/-! ## A084583.P3885655046282496971

`A020725(eq[3, A084580(n+1)])`
-/

namespace A084583.P3885655046282496971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084583.P3885655046282496971

/-! ## A084583.P1530788040283045236

`A065475(eq[3, A084580(n+1)])`
-/

namespace A084583.P1530788040283045236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084583.P1530788040283045236

/-! ## A084583.P15293950747226376864

`A114637(eq[3, A084580(n+1)])`
-/

namespace A084583.P15293950747226376864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084583.P15293950747226376864

/-!
# A084584: Let y = m/GK(k), where m and k vary over the positive integers and GK(k)=log(1+1/(k*(k+2)))/log(2) is the Gauss-Kuzmin distribution of k. Sort the y values by size and number them consecutively by n. This sequence gives the values of n when k=4.

The programs for A084584, there is no canonical definition to state claims against.
-/

/-! ## A084584.P11186635520390485921

`eq[4, A084580(n+1)]+1`
-/

namespace A084584.P11186635520390485921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084584.P11186635520390485921

/-! ## A084584.P2535545725319275752

`eq[4, A084580(A028310(n))]`
-/

namespace A084584.P2535545725319275752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084584.P2535545725319275752

/-! ## A084584.P6456762407718901942

`A020725(eq[4, A084580(n+1)])`
-/

namespace A084584.P6456762407718901942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084584.P6456762407718901942

/-! ## A084584.P5938025056063461832

`A065475(eq[4, A084580(n+1)])`
-/

namespace A084584.P5938025056063461832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084584.P5938025056063461832

/-! ## A084584.P9487756920210207771

`A114637(eq[4, A084580(n+1)])`
-/

namespace A084584.P9487756920210207771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084584.P9487756920210207771

/-!
# A084585: Let y = m/GK(k), where m and k vary over the positive integers and GK(k)=log(1+1/(k*(k+2)))/log(2) is the Gauss-Kuzmin distribution of k. Sort the y values by size and number them consecutively by n. This sequence gives the values of n when k=5.

The programs for A084585, there is no canonical definition to state claims against.
-/

/-! ## A084585.P2975434693333118727

`eq[5, A084580(n+2)]+2`
-/

namespace A084585.P2975434693333118727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A084585.P2975434693333118727

/-! ## A084585.P7861464306373110704

`eq[5, A084580(A028310(n))]`
-/

namespace A084585.P7861464306373110704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084585.P7861464306373110704

/-! ## A084585.P17659543795926086651

`A020725(eq[5, A084580(n+1)])`
-/

namespace A084585.P17659543795926086651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084585.P17659543795926086651

/-! ## A084585.P8425915554736654975

`A065475(eq[5, A084580(n+1)])`
-/

namespace A084585.P8425915554736654975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084585.P8425915554736654975

/-! ## A084585.P2380272571405257740

`A114637(eq[5, A084580(n+1)])`
-/

namespace A084585.P2380272571405257740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084585.P2380272571405257740

/-!
# A084586: Let y = m/GK(k), where m and k vary over the positive integers and GK(k)=log(1+1/(k*(k+2)))/log(2) is the Gauss-Kuzmin distribution of k. Sort the y values by size and number them consecutively by n. This sequence gives the values of n when k=6.

The programs for A084586, there is no canonical definition to state claims against.
-/

/-! ## A084586.P11893960518136361993

`eq[6, A084580(A028310(n))]`
-/

namespace A084586.P11893960518136361993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084586.P11893960518136361993

/-! ## A084586.P11451821120769510301

`A020725(eq[6, A084580(n+1)])`
-/

namespace A084586.P11451821120769510301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084586.P11451821120769510301

/-! ## A084586.P8036736238392251920

`A065475(eq[6, A084580(n+1)])`
-/

namespace A084586.P8036736238392251920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084586.P8036736238392251920

/-! ## A084586.P11350122503594830325

`A114637(eq[6, A084580(n+1)])`
-/

namespace A084586.P11350122503594830325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A084586.P11350122503594830325

/-!
# A084587: Integer floor of the reciprocal of Gauss-Kuzmin distribution of n: a(n) = floor( log(2)/log(1 + 1/(n*(n+2))) ).

The programs for A084587, the canonical program `A084587.P1678104448409767722` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084587 has offset 1).

The definition of A084587 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log(2)/log(1+1/((n+1)*(n+3))))` (program `A084587.P1678104448409767722`, by `A084587.P1678104448409767722.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A084587.P1678104448409767722

`floor(log(2)/log(1+1/((n+1)*(n+3))))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A084587

/-- `floor(log(2)/log(1+1/((n+1)*(n+3))))` -/
def P1678104448409767722.Spec : Prop :=
  ∀ n, P1678104448409767722.a n = A084587 (n + 1)

theorem P1678104448409767722.correct : P1678104448409767722.Spec := by
  intro n
  simp only [A084587, Nat.add_sub_cancel]

end A084587

/-! ## A084587.P323513447164942710

`round(∑[log(A038503(2*n+5))])`
-/

namespace A084587.P323513447164942710
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A038503 (2 * n + 5) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084587.P323513447164942710

namespace A084587

/-- `round(∑[log(A038503(2*n+5))])` -/
def P323513447164942710.Spec : Prop :=
  ∀ n, P323513447164942710.a n = A084587 (n + 1)

end A084587

/-! ## A084587.P18006201563031165202

`round(∑[log(A038518(2*n+5))])`
-/

namespace A084587.P18006201563031165202
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A038518 (2 * n + 5) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084587.P18006201563031165202

namespace A084587

/-- `round(∑[log(A038518(2*n+5))])` -/
def P18006201563031165202.Spec : Prop :=
  ∀ n, P18006201563031165202.a n = A084587 (n + 1)

end A084587

/-! ## A084587.P1524750859182515672

`ceil(∑[log(A267941(n+1)+n+1)])`
-/

namespace A084587.P1524750859182515672
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A267941 (n + 1) + (n + 1 : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A084587.P1524750859182515672

namespace A084587

/-- `ceil(∑[log(A267941(n+1)+n+1)])` -/
def P1524750859182515672.Spec : Prop :=
  ∀ n, P1524750859182515672.a n = A084587 (n + 1)

end A084587

/-! ## A084587.P12028433776309523204

`A084577(A084576(n+1))`
-/

namespace A084587.P12028433776309523204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084577 (A084576 (n + 1)).toNat

end

end A084587.P12028433776309523204

namespace A084587

/-- `A084577(A084576(n+1))` -/
def P12028433776309523204.Spec : Prop :=
  ∀ n, P12028433776309523204.a n = A084587 (n + 1)

end A084587

/-! ## A084587.P6920231049871655319

`A175406((n+1)*(n+3))`
-/

namespace A084587.P6920231049871655319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175406 ((n + 1) * (n + 3))

end

end A084587.P6920231049871655319

namespace A084587

/-- `A175406((n+1)*(n+3))` -/
def P6920231049871655319.Spec : Prop :=
  ∀ n, P6920231049871655319.a n = A084587 (n + 1)

end A084587

/-!
# A084588: Least positive integers, all distinct, that satisfy Sum_{n>0} 1/a(n)^z = 0, where z is the first nontrivial zero of the Riemann zeta function: z = (1/2 + i*y) with y=14.13472514173469379045...

The programs for A084588, there is no canonical definition to state claims against.
-/

/-! ## A084588.P8448111933053412116

`∑[A226029(∏[A117910(n)])]`
-/

namespace A084588.P8448111933053412116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226029 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084588.P8448111933053412116

/-! ## A084588.P12879594200271138945

`∑[A226029(∏[A070548(n+1)])]`
-/

namespace A084588.P12879594200271138945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226029 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084588.P12879594200271138945

/-!
# A084589: Least positive integers, all distinct, that satisfy Sum_{n>0} 1/a(n)^z = 0, where z is the second nontrivial zero of the Riemann zeta function: z = (1/2 + i*y) with y=21.022039638771554992628...

The programs for A084589, there is no canonical definition to state claims against.
-/

/-! ## A084589.P14388380618724248896

`A278581(A008815(n))`
-/

namespace A084589.P14388380618724248896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278581 (A008815 n).toNat

end

end A084589.P14388380618724248896

/-! ## A084589.P724232660720990628

`A278581(A271952(2*n)+n)`
-/

namespace A084589.P724232660720990628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278581 (A271952 (2 * n) + (n : ℤ)).toNat

end

end A084589.P724232660720990628

/-! ## A084589.P14788932226724316590

`∑[A347728(A230059(n+1)²)]`
-/

namespace A084589.P14788932226724316590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347728 (A230059 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084589.P14788932226724316590

/-! ## A084589.P11691618463366170000

`∑[A113451(A153675(∑[n+1]))]`
-/

namespace A084589.P11691618463366170000
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113451 (A153675 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084589.P11691618463366170000

/-! ## A084589.P8708962668179291589

`∑[ratio[A008574(A324094(n+1))]]`
-/

namespace A084589.P8708962668179291589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A324094 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084589.P8708962668179291589

/-!
# A084591: Least positive integers, all distinct, that satisfy Sum_{n>0} 1/a(n)^z = 0, where z is the fourth nontrivial zero of the Riemann zeta function: z = (1/2 + i*y) with y=30.4248761258595132103118975...

The programs for A084591, there is no canonical definition to state claims against.
-/

/-! ## A084591.P7916658777050773135

`A007187(n+2)-A264978(n)`
-/

namespace A084591.P7916658777050773135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007187 (n + 2) - A264978 n

end

end A084591.P7916658777050773135

/-! ## A084591.P3880178518063423801

`A007187(n+2)-A263273(8*n)/8`
-/

namespace A084591.P3880178518063423801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007187 (n + 2) : ℚ) - (A263273 (8 * n) : ℚ) / 8

end

end A084591.P3880178518063423801

/-! ## A084591.P16091833304612653609

`A097799(n+1)+A010051(A001003(n))`
-/

namespace A084591.P16091833304612653609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097799 (n + 1) + A010051 (A001003 n).toNat

end

end A084591.P16091833304612653609

/-! ## A084591.P16717953472704912108

`A011972(n+1)-A169585(A016098(n))`
-/

namespace A084591.P16717953472704912108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (n + 1) - A169585 (A016098 n).toNat

end

end A084591.P16717953472704912108

/-!
# A084594: a(n) = Sum_{r=0..2^(n-1)} Binomial(2^n,2r)*3^r.

The programs for A084594, the canonical program `A084594.P9221866544632747182` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084594 has offset 0).

The definition of A084594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084594.P9221866544632747182

`2*a(n-1)²-A001146(n-1)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A084594

/-- `2*a(n-1)²-A001146(n-1)` -/
def P9221866544632747182.Spec : Prop :=
  ∀ n, P9221866544632747182.a n = A084594 n

theorem P9221866544632747182.correct : P9221866544632747182.Spec := by
  intro n
  simp only [A084594]

end A084594

/-! ## A084594.P3396260146271021246

`((1+sqrt(3))^2^n+(1-sqrt(3))^2^n)/2`
-/

namespace A084594.P3396260146271021246
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (3 : ℝ)) ^ 2 ^ n + (1 - Real.sqrt (3 : ℝ)) ^ 2 ^ n) / 2

end

end A084594.P3396260146271021246

namespace A084594

/-- `((1+sqrt(3))^2^n+(1-sqrt(3))^2^n)/2` -/
def P3396260146271021246.Spec : Prop :=
  ∀ n, P3396260146271021246.a n = (A084594 n : ℝ)

end A084594

/-! ## A084594.P10869390815414505726

`A026150(2^n)`
-/

namespace A084594.P10869390815414505726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 (2 ^ n)

end

end A084594.P10869390815414505726

namespace A084594

/-- `A026150(2^n)` -/
def P10869390815414505726.Spec : Prop :=
  ∀ n, P10869390815414505726.a n = A084594 n

end A084594

/-! ## A084594.P3328879369856430266

`A090965(floor(2^(n-1)))`
-/

namespace A084594.P3328879369856430266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090965 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A084594.P3328879369856430266

namespace A084594

/-- `A090965(floor(2^(n-1)))` -/
def P3328879369856430266.Spec : Prop :=
  ∀ n, P3328879369856430266.a n = A084594 n

end A084594

/-!
# A084595: For n > 0: a(n) = Sum_{r=0..2^(n-1)-1} binomial(2^n, 2r+1)*3^r.

The programs for A084595, the canonical program `A084595.P11569587506132983415` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A084595 has offset 0).

The definition of A084595 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A084595.P11569587506132983415

`2*a(n-1)*sqrt(3*a(n-1)²+A001146(n-1))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A084595

/-- `2*a(n-1)*sqrt(3*a(n-1)²+A001146(n-1))` -/
def P11569587506132983415.Spec : Prop :=
  ∀ n, P11569587506132983415.a n = (A084595 n : ℝ)

end A084595

/-! ## A084595.P9864311575193782943

`((1+sqrt(3))^2^n-(1-sqrt(3))^2^n)/(2*sqrt(3))`
-/

namespace A084595.P9864311575193782943
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (3 : ℝ)) ^ 2 ^ n - (1 - Real.sqrt (3 : ℝ)) ^ 2 ^ n) / (2 * Real.sqrt (3 : ℝ))

end

end A084595.P9864311575193782943

namespace A084595

/-- `((1+sqrt(3))^2^n-(1-sqrt(3))^2^n)/(2*sqrt(3))` -/
def P9864311575193782943.Spec : Prop :=
  ∀ n, P9864311575193782943.a n = (A084595 n : ℝ)

end A084595

/-! ## A084595.P4073879376870182472

`A002605(2^n)`
-/

namespace A084595.P4073879376870182472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (2 ^ n)

end

end A084595.P4073879376870182472

namespace A084595

/-- `A002605(2^n)` -/
def P4073879376870182472.Spec : Prop :=
  ∀ n, P4073879376870182472.a n = A084595 n

end A084595

/-! ## A084595.P5667871031430398799

`A160444(2^(n+1)+1)`
-/

namespace A084595.P5667871031430398799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160444 (2 ^ (n + 1) + 1)

end

end A084595.P5667871031430398799

namespace A084595

/-- `A160444(2^(n+1)+1)` -/
def P5667871031430398799.Spec : Prop :=
  ∀ n, P5667871031430398799.a n = A084595 n

end A084595

/-!
# A084597: Largest k such that there are exactly n primes between k^2 and (k+1)^2.

The programs for A084597, there is no canonical definition to state claims against.
-/

/-! ## A084597.P1155705759989681364

`A349998(∑[A052036(n)!])`
-/

namespace A084597.P1155705759989681364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A052036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349998 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A084597.P1155705759989681364

/-! ## A084597.P15567290283029898844

`∩[A085736(n+1), A349998(n+1)]`
-/

namespace A084597.P15567290283029898844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084597.P15567290283029898844

/-! ## A084597.P12409145853303051076

`∩[A088331(n+1), A349998(n+1)]`
-/

namespace A084597.P12409145853303051076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084597.P12409145853303051076

/-! ## A084597.P7538999401016332345

`∩[A096997(n+1), A349998(n+1)]`
-/

namespace A084597.P7538999401016332345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084597.P7538999401016332345

/-! ## A084597.P18110172253957497214

`∩[A129946(n+1), A349998(n+1)]`
-/

namespace A084597.P18110172253957497214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A084597.P18110172253957497214

/-!
# A084598: a(1) = 2, a(2) = 3; for n >= 2, a(n+1) is smallest prime factor of (Product_{k = 1..n} a(k)) - 1.

The programs for A084598, there is no canonical definition to state claims against.
-/

/-! ## A084598.P10631408449884336102

`A005265(abs(n!%2-n)+1)`
-/

namespace A084598.P10631408449884336102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005265 (|((Nat.factorial n % 2 : ℕ) : ℤ) - (n : ℤ)| + 1).toNat

end

end A084598.P10631408449884336102

/-! ## A084598.P9073736532891042762

`xor(char[A001014(n)], A005265(n+1))`
-/

namespace A084598.P9073736532891042762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A005265 (n + 1))

end

end A084598.P9073736532891042762

/-! ## A084598.P1792431187418929672

`xor(char[A080956(n)], A005265(n+1))`
-/

namespace A084598.P1792431187418929672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A005265 (n + 1))

end

end A084598.P1792431187418929672

/-! ## A084598.P2978126803426486935

`A005265(abs(A178011(n+1)%2-n)+1)`
-/

namespace A084598.P2978126803426486935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005265 (|Int.tmod (A178011 (n + 1)) 2 - (n : ℤ)| + 1).toNat

end

end A084598.P2978126803426486935

/-! ## A084598.P14475813181616637945

`A005265(n+1)-A008683(A006501(n))`
-/

namespace A084598.P14475813181616637945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005265 (n + 1) - A008683 (A006501 n).toNat

end

end A084598.P14475813181616637945

/-!
# A084599: a(1) = 2, a(2) = 3; for n >= 2, a(n+1) is largest prime factor of (Product_{k=1..n} a(k)) - 1.

The programs for A084599, there is no canonical definition to state claims against.
-/

/-! ## A084599.P8194586327296891886

`xor(char[n²²], A005266(n+1))`
-/

namespace A084599.P8194586327296891886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A005266 (n + 1))

end

end A084599.P8194586327296891886

/-! ## A084599.P16794685066483597876

`xor(A005266(n+1), A019590(n+1))`
-/

namespace A084599.P16794685066483597876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005266 (n + 1)) (A019590 (n + 1))

end

end A084599.P16794685066483597876

/-! ## A084599.P12141888562367138660

`A005266(n+1)-A008683(A000079(n))`
-/

namespace A084599.P12141888562367138660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005266 (n + 1) - A008683 (A000079 n).toNat

end

end A084599.P12141888562367138660

/-! ## A084599.P7107889152336058260

`xor(A005266(n+1), A322585(A109613(n)))`
-/

namespace A084599.P7107889152336058260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005266 (n + 1)) (A322585 (A109613 n).toNat)

end

end A084599.P7107889152336058260

/-! ## A084599.P1454423039186604514

`A005266(n+1)-A008683(A000225(n)+1)`
-/

namespace A084599.P1454423039186604514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005266 (n + 1) - A008683 (A000225 n + 1).toNat

end

end A084599.P1454423039186604514

