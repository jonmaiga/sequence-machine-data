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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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

/-!
# A109600: Numbers n such that number of 1's in binary representation of n equals the number of digits required to write the prime factors of n.

The programs for A109600, the canonical program `A109600.P13679550260820444963` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109600 has offset 1).

The definition of A109600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109600.P13679550260820444963

`eq[A000120(n+1), A076649(n+1)]+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A109600

/-- `eq[A000120(n+1), A076649(n+1)]+1` -/
def P13679550260820444963.Spec : Prop :=
  ∀ n, (P13679550260820444963.a n : ℤ) = A109600 (n + 1)

theorem P13679550260820444963.correct : P13679550260820444963.Spec := by
  intro n
  simp only [A109600, Nat.add_sub_cancel]

end A109600

/-! ## A109600.P12311494727554577480

`eq[A000120(n)+1, A076649(A008486(n))]`
-/

namespace A109600.P12311494727554577480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109600.P12311494727554577480

namespace A109600

/-- `eq[A000120(n)+1, A076649(A008486(n))]` -/
def P12311494727554577480.Spec : Prop :=
  ∀ n, (P12311494727554577480.a n : ℤ) = A109600 (n + 1)

end A109600

/-! ## A109600.P10764515568978719527

`eq[A000120(n)+1, A076649(A008706(n))]`
-/

namespace A109600.P10764515568978719527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109600.P10764515568978719527

namespace A109600

/-- `eq[A000120(n)+1, A076649(A008706(n))]` -/
def P10764515568978719527.Spec : Prop :=
  ∀ n, (P10764515568978719527.a n : ℤ) = A109600 (n + 1)

end A109600

/-!
# A109603: Numbers n such that 43*n - 41 is prime.

The programs for A109603, the canonical program `A109603.P9296114933607659280` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109603 has offset 1).

The definition of A109603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109603.P9296114933607659280

`ceil(A142251(n+1)/43)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A109603

/-- `ceil(A142251(n+1)/43)` -/
def P9296114933607659280.Spec : Prop :=
  ∀ n, P9296114933607659280.a n = A109603 (n + 1)

theorem P9296114933607659280.correct : P9296114933607659280.Spec := by
  intro n
  simp only [A109603, Nat.add_sub_cancel]

end A109603

/-! ## A109603.P5127881982668417490

`floor(A142251(n+1)/43)+A000041(gcd(n, n+1))`
-/

namespace A109603.P5127881982668417490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142251 (n + 1) : ℚ) / 43⌋ + A000041 (Nat.gcd n (n + 1))

end

end A109603.P5127881982668417490

namespace A109603

/-- `floor(A142251(n+1)/43)+A000041(gcd(n, n+1))` -/
def P5127881982668417490.Spec : Prop :=
  ∀ n, P5127881982668417490.a n = A109603 (n + 1)

end A109603

/-! ## A109603.P1815708799295373523

`round(A142251(n+1)/43)-A057427(A311687(n))+2`
-/

namespace A109603.P1815708799295373523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A142251 (n + 1) : ℚ) / 43) - A057427 (A311687 n).toNat + 2

end

end A109603.P1815708799295373523

namespace A109603

/-- `round(A142251(n+1)/43)-A057427(A311687(n))+2` -/
def P1815708799295373523.Spec : Prop :=
  ∀ n, P1815708799295373523.a n = A109603 (n + 1)

end A109603

/-! ## A109603.P13613100805203434660

`ceil(p?[43*n+2]/43)`
-/

namespace A109603.P13613100805203434660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 43⌉

end

end A109603.P13613100805203434660

namespace A109603

/-- `ceil(p?[43*n+2]/43)` -/
def P13613100805203434660.Spec : Prop :=
  ∀ n, P13613100805203434660.a n = A109603 (n + 1)

end A109603

/-! ## A109603.P1644647831112950690

`floor(and(1, A297621(n))+A142251(n+1)/43)`
-/

namespace A109603.P1644647831112950690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.land 1 (A297621 n) : ℚ) + (A142251 (n + 1) : ℚ) / 43⌋

end

end A109603.P1644647831112950690

namespace A109603

/-- `floor(and(1, A297621(n))+A142251(n+1)/43)` -/
def P1644647831112950690.Spec : Prop :=
  ∀ n, P1644647831112950690.a n = A109603 (n + 1)

end A109603

/-! ## A109603.P17308366313743093371

`floor(A142251(n+1)/43)+A007318(C(n+2, 2))`
-/

namespace A109603.P17308366313743093371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142251 (n + 1) : ℚ) / 43⌋ + A007318 (Nat.choose (n + 2) 2)

end

end A109603.P17308366313743093371

namespace A109603

/-- `floor(A142251(n+1)/43)+A007318(C(n+2, 2))` -/
def P17308366313743093371.Spec : Prop :=
  ∀ n, P17308366313743093371.a n = A109603 (n + 1)

end A109603

/-!
# A109604: Numbers n such that 41*n - 43 is prime.

The programs for A109604, the canonical program `A109604.P16646580073884693843` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109604 has offset 1).

The definition of A109604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109604.P16646580073884693843

`floor(A142236(n+1)/41)+2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A109604

/-- `floor(A142236(n+1)/41)+2` -/
def P16646580073884693843.Spec : Prop :=
  ∀ n, P16646580073884693843.a n = A109604 (n + 1)

theorem P16646580073884693843.correct : P16646580073884693843.Spec := by
  intro n
  simp only [A109604, Nat.add_sub_cancel]

end A109604

/-! ## A109604.P745390512043075107

`ceil(A204162(2*(n+1))+A142236(n+1)/41)`
-/

namespace A109604.P745390512043075107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A204162 (2 * (n + 1)) : ℚ) + (A142236 (n + 1) : ℚ) / 41⌉

end

end A109604.P745390512043075107

namespace A109604

/-- `ceil(A204162(2*(n+1))+A142236(n+1)/41)` -/
def P745390512043075107.Spec : Prop :=
  ∀ n, P745390512043075107.a n = A109604 (n + 1)

end A109604

/-! ## A109604.P1193458240726236551

`ceil(A000041(C(2, n+2))+A142236(n+1)/41)`
-/

namespace A109604.P1193458240726236551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000041 (Nat.choose 2 (n + 2)) : ℚ) + (A142236 (n + 1) : ℚ) / 41⌉

end

end A109604.P1193458240726236551

namespace A109604

/-- `ceil(A000041(C(2, n+2))+A142236(n+1)/41)` -/
def P1193458240726236551.Spec : Prop :=
  ∀ n, P1193458240726236551.a n = A109604 (n + 1)

end A109604

/-! ## A109604.P11376309167736353619

`ceil(A000188(A007913(n+1))+A142236(n+1)/41)`
-/

namespace A109604.P11376309167736353619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000188 (A007913 (n + 1)).toNat : ℚ) + (A142236 (n + 1) : ℚ) / 41⌉

end

end A109604.P11376309167736353619

namespace A109604

/-- `ceil(A000188(A007913(n+1))+A142236(n+1)/41)` -/
def P11376309167736353619.Spec : Prop :=
  ∀ n, P11376309167736353619.a n = A109604 (n + 1)

end A109604

/-! ## A109604.P4699559509199994440

`ceil(A204129(2*(n+1))+A142236(n+1)/41)`
-/

namespace A109604.P4699559509199994440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A204129 (2 * (n + 1)) : ℚ) + (A142236 (n + 1) : ℚ) / 41⌉

end

end A109604.P4699559509199994440

namespace A109604

/-- `ceil(A204129(2*(n+1))+A142236(n+1)/41)` -/
def P4699559509199994440.Spec : Prop :=
  ∀ n, P4699559509199994440.a n = A109604 (n + 1)

end A109604

/-!
# A109606: Number of numbers k with 1 < k < n which are relatively prime to n.

The programs for A109606, the canonical program `A109606.P2415810041766612210` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109606 has offset 1).

The definition of A109606 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A109606.P2415810041766612210

`A000010(n+1)-1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A109606

/-- `A000010(n+1)-1` -/
def P2415810041766612210.Spec : Prop :=
  ∀ n, P2415810041766612210.a n = A109606 (n + 1)

theorem P2415810041766612210.correct : P2415810041766612210.Spec := by
  intro n
  simp only [A109606, Nat.add_sub_cancel]

end A109606

/-! ## A109606.P6879636179044736029

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1`
-/

namespace A109606.P6879636179044736029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - 1

end

end A109606.P6879636179044736029

namespace A109606

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1` -/
def P6879636179044736029.Spec : Prop :=
  ∀ n, P6879636179044736029.a n = (A109606 (n + 1) : ℚ)

end A109606

/-! ## A109606.P286082566620408696

`Δ[A002088(n)]-1`
-/

namespace A109606.P286082566620408696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A109606.P286082566620408696

namespace A109606

/-- `Δ[A002088(n)]-1` -/
def P286082566620408696.Spec : Prop :=
  ∀ n, P286082566620408696.a n = A109606 (n + 1)

end A109606

/-! ## A109606.P13376891878309933579

`Δ[A005728(n)]-1`
-/

namespace A109606.P13376891878309933579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A109606.P13376891878309933579

namespace A109606

/-- `Δ[A005728(n)]-1` -/
def P13376891878309933579.Spec : Prop :=
  ∀ n, P13376891878309933579.a n = A109606 (n + 1)

end A109606

/-! ## A109606.P4009047060035966367

`A039649(n+1)-2`
-/

namespace A109606.P4009047060035966367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - 2

end

end A109606.P4009047060035966367

namespace A109606

/-- `A039649(n+1)-2` -/
def P4009047060035966367.Spec : Prop :=
  ∀ n, P4009047060035966367.a n = A109606 (n + 1)

end A109606

/-! ## A109606.P8279987165951522482

`n-A051953(n+1)`
-/

namespace A109606.P8279987165951522482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A051953 (n + 1)

end

end A109606.P8279987165951522482

namespace A109606

/-- `n-A051953(n+1)` -/
def P8279987165951522482.Spec : Prop :=
  ∀ n, P8279987165951522482.a n = A109606 (n + 1)

end A109606

/-! ## A109606.P18011397942971684660

`A349137(Δ[n²])-1`
-/

namespace A109606.P18011397942971684660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A109606.P18011397942971684660

namespace A109606

/-- `A349137(Δ[n²])-1` -/
def P18011397942971684660.Spec : Prop :=
  ∀ n, P18011397942971684660.a n = A109606 (n + 1)

end A109606

/-! ## A109606.P704930933028374347

`sqrt(A127473(n+1))-1`
-/

namespace A109606.P704930933028374347
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) - 1

end

end A109606.P704930933028374347

namespace A109606

/-- `sqrt(A127473(n+1))-1` -/
def P704930933028374347.Spec : Prop :=
  ∀ n, P704930933028374347.a n = (A109606 (n + 1) : ℝ)

end A109606

/-! ## A109606.P4045156040136631741

`A200905(n+1)/3-1`
-/

namespace A109606.P4045156040136631741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200905 (n + 1) : ℚ) / 3 - 1

end

end A109606.P4045156040136631741

namespace A109606

/-- `A200905(n+1)/3-1` -/
def P4045156040136631741.Spec : Prop :=
  ∀ n, P4045156040136631741.a n = (A109606 (n + 1) : ℚ)

end A109606

/-! ## A109606.P10941805722163076950

`n-(A219428(n+1)+1)`
-/

namespace A109606.P10941805722163076950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A219428 (n + 1) + 1)

end

end A109606.P10941805722163076950

namespace A109606

/-- `n-(A219428(n+1)+1)` -/
def P10941805722163076950.Spec : Prop :=
  ∀ n, P10941805722163076950.a n = A109606 (n + 1)

end A109606

/-! ## A109606.P1672123803115872124

`A121048(n+1)-(n+2)`
-/

namespace A109606.P1672123803115872124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) - (n + 2 : ℤ)

end

end A109606.P1672123803115872124

namespace A109606

/-- `A121048(n+1)-(n+2)` -/
def P1672123803115872124.Spec : Prop :=
  ∀ n, P1672123803115872124.a n = A109606 (n + 1)

end A109606

/-! ## A109606.P2753353101626791330

`(A074057(n+3)+n)/2`
-/

namespace A109606.P2753353101626791330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074057 (n + 3) + (n : ℤ) : ℚ) / 2

end

end A109606.P2753353101626791330

namespace A109606

/-- `(A074057(n+3)+n)/2` -/
def P2753353101626791330.Spec : Prop :=
  ∀ n, P2753353101626791330.a n = (A109606 (n + 1) : ℚ)

end A109606

/-! ## A109606.P16723951664932664095

`sqrt(sqrt(A361148(n+1)))-1`
-/

namespace A109606.P16723951664932664095
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A361148 (n + 1) : ℝ)) - 1

end

end A109606.P16723951664932664095

namespace A109606

/-- `sqrt(sqrt(A361148(n+1)))-1` -/
def P16723951664932664095.Spec : Prop :=
  ∀ n, P16723951664932664095.a n = (A109606 (n + 1) : ℝ)

end A109606

/-! ## A109606.P7968258830029739875

`Δ[n²]-A053158(n+1)`
-/

namespace A109606.P7968258830029739875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A053158 (n + 1)

end

end A109606.P7968258830029739875

namespace A109606

/-- `Δ[n²]-A053158(n+1)` -/
def P7968258830029739875.Spec : Prop :=
  ∀ n, P7968258830029739875.a n = A109606 (n + 1)

end A109606

/-! ## A109606.P9889772279740615589

`A002618(n+1)/(n+1)-1`
-/

namespace A109606.P9889772279740615589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A109606.P9889772279740615589

namespace A109606

/-- `A002618(n+1)/(n+1)-1` -/
def P9889772279740615589.Spec : Prop :=
  ∀ n, P9889772279740615589.a n = (A109606 (n + 1) : ℚ)

end A109606

/-! ## A109606.P7902699880345341235

`(A046151(n+1)-n)/(n+1)`
-/

namespace A109606.P7902699880345341235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046151 (n + 1) - (n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A109606.P7902699880345341235

namespace A109606

/-- `(A046151(n+1)-n)/(n+1)` -/
def P7902699880345341235.Spec : Prop :=
  ∀ n, P7902699880345341235.a n = (A109606 (n + 1) : ℚ)

end A109606

/-! ## A109606.P3020373566549940792

`n-A053650(n+1)/(n+1)`
-/

namespace A109606.P3020373566549940792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A053650 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A109606.P3020373566549940792

namespace A109606

/-- `n-A053650(n+1)/(n+1)` -/
def P3020373566549940792.Spec : Prop :=
  ∀ n, P3020373566549940792.a n = (A109606 (n + 1) : ℚ)

end A109606

/-! ## A109606.P15687303147601130593

`abs(1-A000010(2*n-(n-1)))`
-/

namespace A109606.P15687303147601130593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat|

end

end A109606.P15687303147601130593

namespace A109606

/-- `abs(1-A000010(2*n-(n-1)))` -/
def P15687303147601130593.Spec : Prop :=
  ∀ n, P15687303147601130593.a n = A109606 (n + 1)

end A109606

/-! ## A109606.P850372076666489357

`Δ[a(n-1)-(1-A000010(n))]` with `a(0)=0`
-/

namespace A109606.P850372076666489357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - (1 - A000010 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109606.P850372076666489357

namespace A109606

/-- `Δ[a(n-1)-(1-A000010(n))]` -/
def P850372076666489357.Spec : Prop :=
  ∀ n, P850372076666489357.a n = A109606 (n + 1)

end A109606

/-! ## A109606.P3533560720138089657

`A023443(A000010(n+1))`
-/

namespace A109606.P3533560720138089657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A000010 (n + 1)).toNat

end

end A109606.P3533560720138089657

namespace A109606

/-- `A023443(A000010(n+1))` -/
def P3533560720138089657.Spec : Prop :=
  ∀ n, P3533560720138089657.a n = A109606 (n + 1)

end A109606

/-!
# A109607: Sum of coprimes of n greater than 1.

The programs for A109607, the canonical program `A109607.P12964960874719585389` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109607 has offset 0).

The definition of A109607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109607.P12964960874719585389

`A023896(abs(1-n)+1)-1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A109607

/-- `A023896(abs(1-n)+1)-1` -/
def P12964960874719585389.Spec : Prop :=
  ∀ n, P12964960874719585389.a n = A109607 n

theorem P12964960874719585389.correct : P12964960874719585389.Spec := by
  intro n
  simp only [A109607]

end A109607

/-! ## A109607.P7214763703189867464

`round(A002618(A000038(n)+n)/2)-1`
-/

namespace A109607.P7214763703189867464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002618 (A000038 n + (n : ℤ)).toNat : ℚ) / 2) - 1

end

end A109607.P7214763703189867464

namespace A109607

/-- `round(A002618(A000038(n)+n)/2)-1` -/
def P7214763703189867464.Spec : Prop :=
  ∀ n, P7214763703189867464.a n = A109607 n

end A109607

/-! ## A109607.P7759120088038079769

`floor((A000010(floor(acot(n)+n)²)-1)/2)`
-/

namespace A109607.P7759120088038079769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ ^ 2).toNat - 1 : ℚ) / 2⌋

end

end A109607.P7759120088038079769

namespace A109607

/-- `floor((A000010(floor(acot(n)+n)²)-1)/2)` -/
def P7759120088038079769.Spec : Prop :=
  ∀ n, P7759120088038079769.a n = A109607 n

end A109607

/-! ## A109607.P15003890473859144683

`A000010(A233583(n+1)²)/2-1`
-/

namespace A109607.P15003890473859144683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A233583 (n + 1) ^ 2).toNat : ℚ) / 2 - 1

end

end A109607.P15003890473859144683

namespace A109607

/-- `A000010(A233583(n+1)²)/2-1` -/
def P15003890473859144683.Spec : Prop :=
  ∀ n, P15003890473859144683.a n = (A109607 n : ℚ)

end A109607

/-! ## A109607.P2486254151475056957

`floor((A000010(A000038(n)+n²)-1)/2)`
-/

namespace A109607.P2486254151475056957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (A000038 n + (n ^ 2 : ℤ)).toNat - 1 : ℚ) / 2⌋

end

end A109607.P2486254151475056957

namespace A109607

/-- `floor((A000010(A000038(n)+n²)-1)/2)` -/
def P2486254151475056957.Spec : Prop :=
  ∀ n, P2486254151475056957.a n = A109607 n

end A109607

/-! ## A109607.P12932134773971173889

`ceil(A000010(A019590(n+1)+n²)/2)-1`
-/

namespace A109607.P12932134773971173889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (A019590 (n + 1) + (n ^ 2 : ℤ)).toNat : ℚ) / 2⌉ - 1

end

end A109607.P12932134773971173889

namespace A109607

/-- `ceil(A000010(A019590(n+1)+n²)/2)-1` -/
def P12932134773971173889.Spec : Prop :=
  ∀ n, P12932134773971173889.a n = A109607 n

end A109607

/-! ## A109607.P15356805981270051445

`A055684(A233583(n+1)²)`
-/

namespace A109607.P15356805981270051445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055684 (A233583 (n + 1) ^ 2).toNat

end

end A109607.P15356805981270051445

namespace A109607

/-- `A055684(A233583(n+1)²)` -/
def P15356805981270051445.Spec : Prop :=
  ∀ n, P15356805981270051445.a n = A109607 n

end A109607

/-! ## A109607.P5003934775231832364

`A140106(n*A225530(n)+1)`
-/

namespace A109607.P5003934775231832364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 ((n : ℤ) * A225530 n + 1).toNat

end

end A109607.P5003934775231832364

namespace A109607

/-- `A140106(n*A225530(n)+1)` -/
def P5003934775231832364.Spec : Prop :=
  ∀ n, P5003934775231832364.a n = A109607 n

end A109607

/-! ## A109607.P12159544796590458923

`A123108(n*A225530(n))-1`
-/

namespace A109607.P12159544796590458923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 ((n : ℤ) * A225530 n).toNat - 1

end

end A109607.P12159544796590458923

namespace A109607

/-- `A123108(n*A225530(n))-1` -/
def P12159544796590458923.Spec : Prop :=
  ∀ n, P12159544796590458923.a n = A109607 n

end A109607

/-! ## A109607.P2059431195091475351

`A023022(A233583(n+1)²)-1`
-/

namespace A109607.P2059431195091475351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (A233583 (n + 1) ^ 2).toNat - 1

end

end A109607.P2059431195091475351

namespace A109607

/-- `A023022(A233583(n+1)²)-1` -/
def P2059431195091475351.Spec : Prop :=
  ∀ n, P2059431195091475351.a n = A109607 n

end A109607

/-! ## A109607.P9256168754801590540

`A055684(A131830(A000124(n))²)`
-/

namespace A109607.P9256168754801590540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055684 (A131830 (A000124 n).toNat ^ 2).toNat

end

end A109607.P9256168754801590540

namespace A109607

/-- `A055684(A131830(A000124(n))²)` -/
def P9256168754801590540.Spec : Prop :=
  ∀ n, P9256168754801590540.a n = A109607 n

end A109607

/-! ## A109607.P3191774292168845850

`A249738(A000010(A028310(n²)))`
-/

namespace A109607.P3191774292168845850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (A000010 (A028310 (n ^ 2)).toNat).toNat

end

end A109607.P3191774292168845850

namespace A109607

/-- `A249738(A000010(A028310(n²)))` -/
def P3191774292168845850.Spec : Prop :=
  ∀ n, P3191774292168845850.a n = A109607 n

end A109607

/-!
# A109608: Numbers n such that the number of digits required to write the prime factors of n equals the number of digits of n.

The programs for A109608, the canonical program `A109608.P6735383558339274602` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109608 has offset 1).

The definition of A109608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1972 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109608.P6735383558339274602

`eq[1, A280827(n+1)+1]+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A109608

/-- `eq[1, A280827(n+1)+1]+1` -/
def P6735383558339274602.Spec : Prop :=
  ∀ n, (P6735383558339274602.a n : ℤ) = A109608 (n + 1)

theorem P6735383558339274602.correct : P6735383558339274602.Spec := by
  intro n
  simp only [A109608, Nat.add_sub_cancel]

end A109608

/-! ## A109608.P11306623843046327113

`record[(n+2)/A076225(A280827(n+2)+1)]`
-/

namespace A109608.P11306623843046327113
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A076225 (A280827 (n + 2) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109608.P11306623843046327113

namespace A109608

/-- `record[(n+2)/A076225(A280827(n+2)+1)]` -/
def P11306623843046327113.Spec : Prop :=
  ∀ n, P11306623843046327113.a n = (A109608 (n + 1) : ℚ)

end A109608

/-! ## A109608.P10867864625854354596

`record[n+1-A276796(n+1)*A280827(n+1)]`
-/

namespace A109608.P10867864625854354596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A276796 (n + 1) * A280827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109608.P10867864625854354596

namespace A109608

/-- `record[n+1-A276796(n+1)*A280827(n+1)]` -/
def P10867864625854354596.Spec : Prop :=
  ∀ n, P10867864625854354596.a n = A109608 (n + 1)

end A109608

/-! ## A109608.P15283640577825290903

`record[n+1-A125227(n+3)*A280827(n+1)]`
-/

namespace A109608.P15283640577825290903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A125227 (n + 3) * A280827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109608.P15283640577825290903

namespace A109608

/-- `record[n+1-A125227(n+3)*A280827(n+1)]` -/
def P15283640577825290903.Spec : Prop :=
  ∀ n, P15283640577825290903.a n = A109608 (n + 1)

end A109608

/-!
# A109609: Expansion of 1/((x-1)*(x+1)*(x^2+x+1)*(x^2+x-1)*(x^2-x+1)*(x^2+1)*(x^4-x^2+1)).

The programs for A109609, the canonical program `A109609.P1159351187097088451` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109609 has offset 0).

The definition of A109609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109609.P1159351187097088451

`round(A080239(n+5)/8)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A109609

/-- `round(A080239(n+5)/8)` -/
def P1159351187097088451.Spec : Prop :=
  ∀ n, P1159351187097088451.a n = A109609 n

theorem P1159351187097088451.correct : P1159351187097088451.Spec := by
  intro n
  simp only [A109609]

end A109609

/-! ## A109609.P17254554665800198940

`round(A001610(n+6)/40)`
-/

namespace A109609.P17254554665800198940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001610 (n + 6) : ℚ) / 40)

end

end A109609.P17254554665800198940

namespace A109609

/-- `round(A001610(n+6)/40)` -/
def P17254554665800198940.Spec : Prop :=
  ∀ n, P17254554665800198940.a n = A109609 n

end A109609

/-! ## A109609.P6247877870651546477

`round(A000204(n+7)/40)`
-/

namespace A109609.P6247877870651546477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000204 (n + 7) : ℚ) / 40)

end

end A109609.P6247877870651546477

namespace A109609

/-- `round(A000204(n+7)/40)` -/
def P6247877870651546477.Spec : Prop :=
  ∀ n, P6247877870651546477.a n = A109609 n

end A109609

/-! ## A109609.P14012936944679820662

`round(A001350(n+7)/40)`
-/

namespace A109609.P14012936944679820662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001350 (n + 7) : ℚ) / 40)

end

end A109609.P14012936944679820662

namespace A109609

/-- `round(A001350(n+7)/40)` -/
def P14012936944679820662.Spec : Prop :=
  ∀ n, P14012936944679820662.a n = A109609 n

end A109609

/-! ## A109609.P16107896580564552963

`round(A001612(n+7)/40)`
-/

namespace A109609.P16107896580564552963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001612 (n + 7) : ℚ) / 40)

end

end A109609.P16107896580564552963

namespace A109609

/-- `round(A001612(n+7)/40)` -/
def P16107896580564552963.Spec : Prop :=
  ∀ n, P16107896580564552963.a n = A109609 n

end A109609

/-! ## A109609.P17969852240465161622

`round(A014217(n+7)/40)`
-/

namespace A109609.P17969852240465161622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A014217 (n + 7) : ℚ) / 40)

end

end A109609.P17969852240465161622

namespace A109609

/-- `round(A014217(n+7)/40)` -/
def P17969852240465161622.Spec : Prop :=
  ∀ n, P17969852240465161622.a n = A109609 n

end A109609

/-!
# A109611: Chen primes: primes p such that p + 2 is either a prime or a semiprime.

The programs for A109611, there is no canonical definition to state claims against.
-/

/-! ## A109611.P1849948881574781134

`A139690(n+1)-2`
-/

namespace A109611.P1849948881574781134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1) - 2

end

end A109611.P1849948881574781134

/-! ## A109611.P12646126165549403425

`A118776(n)+a(n-1)` with `a(0)=2`
-/

namespace A109611.P12646126165549403425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A118776 n + a (n - 1)

end

end A109611.P12646126165549403425

/-! ## A109611.P17891435618162204684

`∪[A001359(n+1), A063637(n+1)]`
-/

namespace A109611.P17891435618162204684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A109611.P17891435618162204684

/-! ## A109611.P10380379026408095057

`∪[A063637(n+1), A124588(n+1)]`
-/

namespace A109611.P10380379026408095057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A109611.P10380379026408095057

/-! ## A109611.P4798275393433863091

`∪[A063637(n+1), A238528(n+1)]`
-/

namespace A109611.P4798275393433863091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A109611.P4798275393433863091

/-! ## A109611.P17123366151476519632

`∪[A006512(n+1), A062721(n+1)]-2`
-/

namespace A109611.P17123366151476519632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062721 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A109611.P17123366151476519632

/-! ## A109611.P2425946356849149329

`Δ[A118482(n)]`
-/

namespace A109611.P2425946356849149329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109611.P2425946356849149329

/-! ## A109611.P6907488672335321983

`A118482(n+1)-A118482(n)`
-/

namespace A109611.P6907488672335321983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118482 (n + 1) - A118482 n

end

end A109611.P6907488672335321983

/-! ## A109611.P889726627415003249

`record[A106667(n+1)²*A000040(n+1)]`
-/

namespace A109611.P889726627415003249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106667 (n + 1) ^ 2 * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109611.P889726627415003249

/-! ## A109611.P15290551159943956958

`record[p?[n-A300239(n+1)]]`
-/

namespace A109611.P15290551159943956958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A300239 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109611.P15290551159943956958

/-! ## A109611.P8387557345358997364

`p?[A037143(n+1)-2]`
-/

namespace A109611.P8387557345358997364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109611.P8387557345358997364

/-! ## A109611.P12433373964691346177

`∩[A037143(n+1), A052147(n+1)]-2`
-/

namespace A109611.P12433373964691346177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A109611.P12433373964691346177

/-! ## A109611.P10568707475423443084

`p?[n-A063928(n+1)²]`
-/

namespace A109611.P10568707475423443084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A063928 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109611.P10568707475423443084

/-! ## A109611.P10803872018957610454

`p?[record[n-A054576(n+1)]]`
-/

namespace A109611.P10803872018957610454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A054576 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109611.P10803872018957610454

/-! ## A109611.P14990084807303118258

`A004086(A118495(n+1))`
-/

namespace A109611.P14990084807303118258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A118495 (n + 1)).toNat

end

end A109611.P14990084807303118258

/-! ## A109611.P8692964805193708646

`A023444(A139690(n+1))`
-/

namespace A109611.P8692964805193708646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A139690 (n + 1)).toNat

end

end A109611.P8692964805193708646

/-! ## A109611.P6698250520150364559

`eq[A003415(n), A281119(n+2)]`
-/

namespace A109611.P6698250520150364559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281119 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109611.P6698250520150364559

/-! ## A109611.P16531051741273511272

`eq[A018783(n), A281119(n+2)]`
-/

namespace A109611.P16531051741273511272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281119 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109611.P16531051741273511272

/-! ## A109611.P424902500361352472

`eq[A018783(n), A292505(n+2)]`
-/

namespace A109611.P424902500361352472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292505 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109611.P424902500361352472

/-! ## A109611.P3285110916472563521

`eq[A175126(n), A281119(n+2)]`
-/

namespace A109611.P3285110916472563521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281119 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109611.P3285110916472563521

/-!
# A109613: Odd numbers repeated.

The programs for A109613, the canonical program `A109613.P11033607296544520888` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109613 has offset 0).

The definition of A109613 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109613.P11033607296544520888

`2*floor(n/2)+1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A109613

/-- `2*floor(n/2)+1` -/
def P11033607296544520888.Spec : Prop :=
  ∀ n, P11033607296544520888.a n = A109613 n

theorem P11033607296544520888.correct : P11033607296544520888.Spec := by
  intro n
  simp only [A109613]

end A109613

/-! ## A109613.P5429275054359382161

`A005408(A004526(n))`
-/

namespace A109613.P5429275054359382161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A004526 n).toNat

end

end A109613.P5429275054359382161

namespace A109613

/-- `A005408(A004526(n))` -/
def P5429275054359382161.Spec : Prop :=
  ∀ n, P5429275054359382161.a n = A109613 n

end A109613

/-! ## A109613.P1924120808088652786

`or(1, n)`
-/

namespace A109613.P1924120808088652786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

end

end A109613.P1924120808088652786

namespace A109613

/-- `or(1, n)` -/
def P1924120808088652786.Spec : Prop :=
  ∀ n, (P1924120808088652786.a n : ℤ) = A109613 n

end A109613

/-! ## A109613.P855330367298078549

`xor(1, and(n, -2))`
-/

namespace A109613.P855330367298078549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.land (n : ℤ) (-2))

end

end A109613.P855330367298078549

namespace A109613

/-- `xor(1, and(n, -2))` -/
def P855330367298078549.Spec : Prop :=
  ∀ n, P855330367298078549.a n = A109613 n

end A109613

/-! ## A109613.P12097753759494687949

`xor(n, char[2*n])`
-/

namespace A109613.P12097753759494687949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (if ∃ j, f1 j = n then 1 else 0)

end

end A109613.P12097753759494687949

namespace A109613

/-- `xor(n, char[2*n])` -/
def P12097753759494687949.Spec : Prop :=
  ∀ n, (P12097753759494687949.a n : ℤ) = A109613 n

end A109613

/-! ## A109613.P4458134158494861337

`abs(Δ[n*n%2])`
-/

namespace A109613.P4458134158494861337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A109613.P4458134158494861337

namespace A109613

/-- `abs(Δ[n*n%2])` -/
def P4458134158494861337.Spec : Prop :=
  ∀ n, P4458134158494861337.a n = A109613 n

end A109613

/-! ## A109613.P7739568095026264005

`ceil(cos(3)^n+n)`
-/

namespace A109613.P7739568095026264005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (3 : ℝ) ^ n + (n : ℝ)⌉

end

end A109613.P7739568095026264005

namespace A109613

/-- `ceil(cos(3)^n+n)` -/
def P7739568095026264005.Spec : Prop :=
  ∀ n, P7739568095026264005.a n = A109613 n

end A109613

/-! ## A109613.P6370772782425022576

`ceil(xor(1, 3*n)/3)`
-/

namespace A109613.P6370772782425022576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (3 * n) : ℚ) / 3⌉

end

end A109613.P6370772782425022576

namespace A109613

/-- `ceil(xor(1, 3*n)/3)` -/
def P6370772782425022576.Spec : Prop :=
  ∀ n, P6370772782425022576.a n = A109613 n

end A109613

/-! ## A109613.P17907452668677323321

`abs((n-1)%2+n)`
-/

namespace A109613.P17907452668677323321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod ((n : ℤ) - 1) 2 + (n : ℤ)|

end

end A109613.P17907452668677323321

namespace A109613

/-- `abs((n-1)%2+n)` -/
def P17907452668677323321.Spec : Prop :=
  ∀ n, P17907452668677323321.a n = A109613 n

end A109613

/-! ## A109613.P17935336757249567381

`abs(1-(and(1, n)-n))`
-/

namespace A109613.P17935336757249567381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((Nat.land 1 n : ℤ) - (n : ℤ))|

end

end A109613.P17935336757249567381

namespace A109613

/-- `abs(1-(and(1, n)-n))` -/
def P17935336757249567381.Spec : Prop :=
  ∀ n, P17935336757249567381.a n = A109613 n

end A109613

/-! ## A109613.P13290087516505775928

`(n-xor(n, -2))/2`
-/

namespace A109613.P13290087516505775928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - Int.xor (n : ℤ) (-2) : ℚ) / 2

end

end A109613.P13290087516505775928

namespace A109613

/-- `(n-xor(n, -2))/2` -/
def P13290087516505775928.Spec : Prop :=
  ∀ n, P13290087516505775928.a n = (A109613 n : ℚ)

end A109613

/-! ## A109613.P1060766349462426655

`ceil((xor(1, n)+n)/2)`
-/

namespace A109613.P1060766349462426655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n + n : ℚ) / 2⌉

end

end A109613.P1060766349462426655

namespace A109613

/-- `ceil((xor(1, n)+n)/2)` -/
def P1060766349462426655.Spec : Prop :=
  ∀ n, P1060766349462426655.a n = A109613 n

end A109613

/-! ## A109613.P17775708757959472121

`round((xor(1, n)+n)/2)`
-/

namespace A109613.P17775708757959472121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 n + n : ℚ) / 2)

end

end A109613.P17775708757959472121

namespace A109613

/-- `round((xor(1, n)+n)/2)` -/
def P17775708757959472121.Spec : Prop :=
  ∀ n, P17775708757959472121.a n = A109613 n

end A109613

/-! ## A109613.P511502954952367556

`round(2*n-a(n-1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A109613.P511502954952367556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) - a (n - 1)

end

end A109613.P511502954952367556

namespace A109613

/-- `round(2*n-a(n-1))` -/
def P511502954952367556.Spec : Prop :=
  ∀ n, P511502954952367556.a n = A109613 n

end A109613

/-! ## A109613.P12786862631141750942

`1/2*(A033999(n)+A005408(n))`
-/

namespace A109613.P12786862631141750942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A033999 n + A005408 n : ℚ)

end

end A109613.P12786862631141750942

namespace A109613

/-- `1/2*(A033999(n)+A005408(n))` -/
def P12786862631141750942.Spec : Prop :=
  ∀ n, P12786862631141750942.a n = (A109613 n : ℚ)

end A109613

/-!
# A109614: n^3 followed by n followed by n^2.

The programs for A109614, the canonical program `A109614.P13754154156094201326` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109614 has offset 1).

The definition of A109614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109614.P13754154156094201326

`A109595(A064429(n)+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A109614

/-- `A109595(A064429(n)+1)` -/
def P13754154156094201326.Spec : Prop :=
  ∀ n, P13754154156094201326.a n = A109614 (n + 1)

theorem P13754154156094201326.correct : P13754154156094201326.Spec := by
  intro n
  simp only [A109614, Nat.add_sub_cancel]

end A109614

/-! ## A109614.P10044922569446859322

`A109595(A080782(n+1))`
-/

namespace A109614.P10044922569446859322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109595 (A080782 (n + 1)).toNat

end

end A109614.P10044922569446859322

namespace A109614

/-- `A109595(A080782(n+1))` -/
def P10044922569446859322.Spec : Prop :=
  ∀ n, P10044922569446859322.a n = A109614 (n + 1)

end A109614

/-! ## A109614.P16240822176002957706

`gcd(A006501(n)-A087508(n), A006501(n)²)`
-/

namespace A109614.P16240822176002957706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006501 n - A087508 n) (A006501 n ^ 2)

end

end A109614.P16240822176002957706

namespace A109614

/-- `gcd(A006501(n)-A087508(n), A006501(n)²)` -/
def P16240822176002957706.Spec : Prop :=
  ∀ n, (P16240822176002957706.a n : ℤ) = A109614 (n + 1)

end A109614

/-! ## A109614.P11075997030547487376

`A109588(n+1)/A109594(n+1)*A109595(n+1)`
-/

namespace A109614.P11075997030547487376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109588 (n + 1) : ℚ) / (A109594 (n + 1) : ℚ) * (A109595 (n + 1) : ℚ)

end

end A109614.P11075997030547487376

namespace A109614

/-- `A109588(n+1)/A109594(n+1)*A109595(n+1)` -/
def P11075997030547487376.Spec : Prop :=
  ∀ n, P11075997030547487376.a n = (A109614 (n + 1) : ℚ)

end A109614

/-! ## A109614.P13741261375259603047

`A109594(A064429(n+1))`
-/

namespace A109614.P13741261375259603047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (A064429 (n + 1)).toNat

end

end A109614.P13741261375259603047

namespace A109614

/-- `A109594(A064429(n+1))` -/
def P13741261375259603047.Spec : Prop :=
  ∀ n, P13741261375259603047.a n = A109614 (n + 1)

end A109614

/-! ## A109614.P10066957181404661690

`A109816(A113655(n+1))`
-/

namespace A109614.P10066957181404661690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109816 (A113655 (n + 1)).toNat

end

end A109614.P10066957181404661690

namespace A109614

/-- `A109816(A113655(n+1))` -/
def P10066957181404661690.Spec : Prop :=
  ∀ n, P10066957181404661690.a n = A109614 (n + 1)

end A109614

/-! ## A109614.P999135405161548597

`A109588(A130509(n+1))`
-/

namespace A109614.P999135405161548597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109588 (A130509 (n + 1)).toNat

end

end A109614.P999135405161548597

namespace A109614

/-- `A109588(A130509(n+1))` -/
def P999135405161548597.Spec : Prop :=
  ∀ n, P999135405161548597.a n = A109614 (n + 1)

end A109614

/-! ## A109614.P15405490765128744160

`A109815(A130508(n+1))`
-/

namespace A109614.P15405490765128744160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109815 (A130508 (n + 1)).toNat

end

end A109614.P15405490765128744160

namespace A109614

/-- `A109815(A130508(n+1))` -/
def P15405490765128744160.Spec : Prop :=
  ∀ n, P15405490765128744160.a n = A109614 (n + 1)

end A109614

/-! ## A109614.P17106874957971378699

`A109594(A236348(n)+1)`
-/

namespace A109614.P17106874957971378699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (A236348 n + 1).toNat

end

end A109614.P17106874957971378699

namespace A109614

/-- `A109594(A236348(n)+1)` -/
def P17106874957971378699.Spec : Prop :=
  ∀ n, P17106874957971378699.a n = A109614 (n + 1)

end A109614

/-! ## A109614.P16374462844889226153

`A109816(A330396(n)+1)`
-/

namespace A109614.P16374462844889226153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109816 (A330396 n + 1).toNat

end

end A109614.P16374462844889226153

namespace A109614

/-- `A109816(A330396(n)+1)` -/
def P16374462844889226153.Spec : Prop :=
  ∀ n, P16374462844889226153.a n = A109614 (n + 1)

end A109614

/-! ## A109614.P11283179523338148119

`A109594(A080782(n+2)-1)`
-/

namespace A109614.P11283179523338148119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (A080782 (n + 2) - 1).toNat

end

end A109614.P11283179523338148119

namespace A109614

/-- `A109594(A080782(n+2)-1)` -/
def P11283179523338148119.Spec : Prop :=
  ∀ n, P11283179523338148119.a n = A109614 (n + 1)

end A109614

/-! ## A109614.P10430068019611633638

`A109595(A010872(n+1)+n)`
-/

namespace A109614.P10430068019611633638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109595 (A010872 (n + 1) + (n : ℤ)).toNat

end

end A109614.P10430068019611633638

namespace A109614

/-- `A109595(A010872(n+1)+n)` -/
def P10430068019611633638.Spec : Prop :=
  ∀ n, P10430068019611633638.a n = A109614 (n + 1)

end A109614

/-! ## A109614.P1822594966714744750

`A109594(n+1-A057078(n+2))`
-/

namespace A109614.P1822594966714744750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 ((n + 1 : ℤ) - A057078 (n + 2)).toNat

end

end A109614.P1822594966714744750

namespace A109614

/-- `A109594(n+1-A057078(n+2))` -/
def P1822594966714744750.Spec : Prop :=
  ∀ n, P1822594966714744750.a n = A109614 (n + 1)

end A109614

/-! ## A109614.P13191076321203414486

`A109594(A010872(n+2)+n)`
-/

namespace A109614.P13191076321203414486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (A010872 (n + 2) + (n : ℤ)).toNat

end

end A109614.P13191076321203414486

namespace A109614

/-- `A109594(A010872(n+2)+n)` -/
def P13191076321203414486.Spec : Prop :=
  ∀ n, P13191076321203414486.a n = A109614 (n + 1)

end A109614

/-! ## A109614.P2654486413935208662

`A110004(A131452(n+1))`
-/

namespace A109614.P2654486413935208662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110004 (A131452 (n + 1)).toNat

end

end A109614.P2654486413935208662

namespace A109614

/-- `A110004(A131452(n+1))` -/
def P2654486413935208662.Spec : Prop :=
  ∀ n, P2654486413935208662.a n = A109614 (n + 1)

end A109614

/-! ## A109614.P4355601900999129225

`A109594(A057078(2*n)+n+1)`
-/

namespace A109614.P4355601900999129225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (A057078 (2 * n) + (n + 1 : ℤ)).toNat

end

end A109614.P4355601900999129225

namespace A109614

/-- `A109594(A057078(2*n)+n+1)` -/
def P4355601900999129225.Spec : Prop :=
  ∀ n, P4355601900999129225.a n = A109614 (n + 1)

end A109614

/-! ## A109614.P13356302234516856147

`A109595(A113655(2*(n+1))/2)`
-/

namespace A109614.P13356302234516856147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109595 (SequenceMachineLib.roundAway ((A113655 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A109614.P13356302234516856147

namespace A109614

/-- `A109595(A113655(2*(n+1))/2)` -/
def P13356302234516856147.Spec : Prop :=
  ∀ n, P13356302234516856147.a n = A109614 (n + 1)

end A109614

/-!
# A109615: Primes of the form floor((Pi/2)^k).

The programs for A109615, there is no canonical definition to state claims against.
-/

/-! ## A109615.P8327066947367122263

`p?[floor(acos(0)^n)]`
-/

namespace A109615.P8327066947367122263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arccos (0 : ℝ) ^ n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109615.P8327066947367122263

/-! ## A109615.P6938235764658451018

`p?[floor(asin(1)^n)]`
-/

namespace A109615.P6938235764658451018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arcsin (1 : ℝ) ^ n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109615.P6938235764658451018

/-! ## A109615.P4888689491635507297

`p?[floor(acot(char[1])^n)]`
-/

namespace A109615.P4888689491635507297
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ) ^ n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109615.P4888689491635507297

/-!
# A109617: Numbers k such that (10's complement factorial of k) - 1 is prime.

The programs for A109617, there is no canonical definition to state claims against.
-/

/-! ## A109617.P12931289582287690161

`A264886(A062326(n+1))-A002620(n)`
-/

namespace A109617.P12931289582287690161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264886 (A062326 (n + 1)).toNat - A002620 n

end

end A109617.P12931289582287690161

/-! ## A109617.P5964558659277002391

`∪[A260298(n+1), A213949(A155212(n))]`
-/

namespace A109617.P5964558659277002391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213949 (A155212 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A109617.P5964558659277002391

/-!
# A109618: Half the number of nXnXn triangular binary arrays with the sum of each element's NW E SW neighbors unequal to the sum of its NE W SE neighbors.

The programs for A109618, there is no canonical definition to state claims against.
-/

/-! ## A109618.P10258777643356074268

`A051275(A000800(n)²)`
-/

namespace A109618.P10258777643356074268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051275 (A000800 n ^ 2).toNat

end

end A109618.P10258777643356074268

/-! ## A109618.P1032324598211610391

`A303548(A007444(n!))`
-/

namespace A109618.P1032324598211610391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303548 (A007444 (Nat.factorial n)).toNat

end

end A109618.P1032324598211610391

/-! ## A109618.P1936646790770072220

`A008679(∑[A159662(n)])`
-/

namespace A109618.P1936646790770072220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A109618.P1936646790770072220

/-!
# A109620: a(n) = (1/3)*n^3 - n^2 - (1/3)*n - 1.

The programs for A109620, the canonical program `A109620.P8346330069563127249` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109620 has offset 0).

The definition of A109620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109620.P8346330069563127249

`n^3/3-n²-n/3-1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A109620

/-- `n^3/3-n²-n/3-1` -/
def P8346330069563127249.Spec : Prop :=
  ∀ n, P8346330069563127249.a n = (A109620 n : ℚ)

end A109620

/-! ## A109620.P10603175358986759728

`1/3*n^3-n²-1/3*n-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A109620.P10603175358986759728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (n ^ 3 : ℚ) - (n ^ 2 : ℚ) - (1 : ℚ) / 3 * (n : ℚ) - 1

end

end A109620.P10603175358986759728

namespace A109620

/-- `1/3*n^3-n²-1/3*n-1` -/
def P10603175358986759728.Spec : Prop :=
  ∀ n, P10603175358986759728.a n = (A109620 n : ℚ)

end A109620

/-! ## A109620.P711272442345409835

`∑[∑[a(n-1)+2]]` with `a(0)=-1, a(1)=0, a(2)=0`
-/

namespace A109620.P711272442345409835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, 0] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109620.P711272442345409835

namespace A109620

/-- `∑[∑[a(n-1)+2]]` -/
def P711272442345409835.Spec : Prop :=
  ∀ n, P711272442345409835.a n = A109620 n

end A109620

/-! ## A109620.P12854535782469886870

`∑[1-∑[a(n-1)-2]]` with `a(0)=2, a(1)=0, a(2)=0`
-/

namespace A109620.P12854535782469886870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 0] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109620.P12854535782469886870

namespace A109620

/-- `∑[1-∑[a(n-1)-2]]` -/
def P12854535782469886870.Spec : Prop :=
  ∀ n, P12854535782469886870.a n = A109620 n

end A109620

/-! ## A109620.P15832709558493397061

`floor((1-n)²+a(n-1)-n)` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A109620.P15832709558493397061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  (1 - (n : ℤ)) ^ 2 + (a (n - 1) - (n : ℤ))

end

end A109620.P15832709558493397061

namespace A109620

/-- `floor((1-n)²+a(n-1)-n)` -/
def P15832709558493397061.Spec : Prop :=
  ∀ n, P15832709558493397061.a n = A109620 n

end A109620

/-! ## A109620.P7905533449270781283

`floor((1-n)²-(n-a(n-1)))` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A109620.P7905533449270781283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  (1 - (n : ℤ)) ^ 2 - ((n : ℤ) - a (n - 1))

end

end A109620.P7905533449270781283

namespace A109620

/-- `floor((1-n)²-(n-a(n-1)))` -/
def P7905533449270781283.Spec : Prop :=
  ∀ n, P7905533449270781283.a n = A109620 n

end A109620

/-! ## A109620.P11947513389165332176

`∑[A165900(abs(1-n))]`
-/

namespace A109620.P11947513389165332176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109620.P11947513389165332176

namespace A109620

/-- `∑[A165900(abs(1-n))]` -/
def P11947513389165332176.Spec : Prop :=
  ∀ n, P11947513389165332176.a n = A109620 n

end A109620

/-! ## A109620.P161185609200119230

`∑[∑[A300576(n+1)-2]]`
-/

namespace A109620.P161185609200119230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300576 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109620.P161185609200119230

namespace A109620

/-- `∑[∑[A300576(n+1)-2]]` -/
def P161185609200119230.Spec : Prop :=
  ∀ n, P161185609200119230.a n = A109620 n

end A109620

/-! ## A109620.P2199969440266240497

`∑[2*(∑[n]-A004277(n))+1]`
-/

namespace A109620.P2199969440266240497
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A004277 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109620.P2199969440266240497

namespace A109620

/-- `∑[2*(∑[n]-A004277(n))+1]` -/
def P2199969440266240497.Spec : Prop :=
  ∀ n, P2199969440266240497.a n = A109620 n

end A109620

/-! ## A109620.P18213032688905678044

`-(∑[A004277(n)-A002061(n)]+1)`
-/

namespace A109620.P18213032688905678044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A109620.P18213032688905678044

namespace A109620

/-- `-(∑[A004277(n)-A002061(n)]+1)` -/
def P18213032688905678044.Spec : Prop :=
  ∀ n, P18213032688905678044.a n = A109620 n

end A109620

/-! ## A109620.P16936019781109442341

`∑[(n+1)²-A135042(n+1)]`
-/

namespace A109620.P16936019781109442341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A135042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109620.P16936019781109442341

namespace A109620

/-- `∑[(n+1)²-A135042(n+1)]` -/
def P16936019781109442341.Spec : Prop :=
  ∀ n, P16936019781109442341.a n = A109620 n

end A109620

/-! ## A109620.P9011538708330349524

`∑[n²-record[A266981(n)]]`
-/

namespace A109620.P9011538708330349524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109620.P9011538708330349524

namespace A109620

/-- `∑[n²-record[A266981(n)]]` -/
def P9011538708330349524.Spec : Prop :=
  ∀ n, P9011538708330349524.a n = A109620 n

end A109620

/-! ## A109620.P16163820791193478669

`∑[∑[A289207(A004275(n))]-1]`
-/

namespace A109620.P16163820791193478669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A004275 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109620.P16163820791193478669

namespace A109620

/-- `∑[∑[A289207(A004275(n))]-1]` -/
def P16163820791193478669.Spec : Prop :=
  ∀ n, P16163820791193478669.a n = A109620 n

end A109620

/-! ## A109620.P16488597398994399935

`∑[n²-A165355(A004273(n))]`
-/

namespace A109620.P16488597398994399935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A165355 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109620.P16488597398994399935

namespace A109620

/-- `∑[n²-A165355(A004273(n))]` -/
def P16488597398994399935.Spec : Prop :=
  ∀ n, P16488597398994399935.a n = A109620 n

end A109620

/-! ## A109620.P13569238175543805308

`∑[n²-A267528(2*n)]`
-/

namespace A109620.P13569238175543805308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A267528 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109620.P13569238175543805308

namespace A109620

/-- `∑[n²-A267528(2*n)]` -/
def P13569238175543805308.Spec : Prop :=
  ∀ n, P13569238175543805308.a n = A109620 n

end A109620

/-! ## A109620.P4433435884915875184

`∑[∑[2*n-gcd(4, 2^n)]]`
-/

namespace A109620.P4433435884915875184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.gcd 4 (2 ^ n) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109620.P4433435884915875184

namespace A109620

/-- `∑[∑[2*n-gcd(4, 2^n)]]` -/
def P4433435884915875184.Spec : Prop :=
  ∀ n, P4433435884915875184.a n = A109620 n

end A109620

/-! ## A109620.P975218772570577142

`∑[n²-A193722(A000124(n))]`
-/

namespace A109620.P975218772570577142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A193722 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109620.P975218772570577142

namespace A109620

/-- `∑[n²-A193722(A000124(n))]` -/
def P975218772570577142.Spec : Prop :=
  ∀ n, P975218772570577142.a n = A109620 n

end A109620

/-! ## A109620.P7711431776798158905

`∑[A028391((1-n)²)-1]`
-/

namespace A109620.P7711431776798158905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 ((1 - (n : ℤ)) ^ 2).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109620.P7711431776798158905

namespace A109620

/-- `∑[A028391((1-n)²)-1]` -/
def P7711431776798158905.Spec : Prop :=
  ∀ n, P7711431776798158905.a n = A109620 n

end A109620

/-! ## A109620.P9899829556193964781

`∑[A056847((1-n)²)-1]`
-/

namespace A109620.P9899829556193964781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 ((1 - (n : ℤ)) ^ 2).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109620.P9899829556193964781

namespace A109620

/-- `∑[A056847((1-n)²)-1]` -/
def P9899829556193964781.Spec : Prop :=
  ∀ n, P9899829556193964781.a n = A109620 n

end A109620

/-! ## A109620.P4690661020860579874

`∑[A083479(n²)-(n+1)]`
-/

namespace A109620.P4690661020860579874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 (n ^ 2) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109620.P4690661020860579874

namespace A109620

/-- `∑[A083479(n²)-(n+1)]` -/
def P4690661020860579874.Spec : Prop :=
  ∀ n, P4690661020860579874.a n = A109620 n

end A109620

/-!
# A109621: Numbers n such that the numerator of Sum_{k=0..n} 1/k!, in reduced form, is prime.

The programs for A109621, there is no canonical definition to state claims against.
-/

/-! ## A109621.P895957138128807340

`∑[A006446(A000005(n^n))]`
-/

namespace A109621.P895957138128807340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006446 (A000005 (n ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109621.P895957138128807340

/-!
# A109622: Number of different isotemporal classes of diasters with n peripheral edges.

The programs for A109622, the canonical program `A109622.P8458736904500256362` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109622 has offset 0).

The definition of A109622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109622.P8458736904500256362

`A005993(n)-n`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A109622

/-- `A005993(n)-n` -/
def P8458736904500256362.Spec : Prop :=
  ∀ n, P8458736904500256362.a n = A109622 n

theorem P8458736904500256362.correct : P8458736904500256362.Spec := by
  intro n
  simp only [A109622]

end A109622

/-! ## A109622.P11651264243408242056

`∑[∑[log2(gcd(2, n))]²]-n`
-/

namespace A109622.P11651264243408242056
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℝ)

end

end A109622.P11651264243408242056

namespace A109622

/-- `∑[∑[log2(gcd(2, n))]²]-n` -/
def P11651264243408242056.Spec : Prop :=
  ∀ n, P11651264243408242056.a n = (A109622 n : ℝ)

end A109622

/-! ## A109622.P2923822616414395540

`∑[∑[char[2*n]]²]-n`
-/

namespace A109622.P2923822616414395540
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A109622.P2923822616414395540

namespace A109622

/-- `∑[∑[char[2*n]]²]-n` -/
def P2923822616414395540.Spec : Prop :=
  ∀ n, P2923822616414395540.a n = A109622 n

end A109622

/-! ## A109622.P4934079901433140001

`abs(∑[∑[(n+1)%2]²]-n)`
-/

namespace A109622.P4934079901433140001
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)|

end

end A109622.P4934079901433140001

namespace A109622

/-- `abs(∑[∑[(n+1)%2]²]-n)` -/
def P4934079901433140001.Spec : Prop :=
  ∀ n, P4934079901433140001.a n = A109622 n

end A109622

/-! ## A109622.P4673072748283550239

`abs(∑[∑[and(1, n+1)]²]-n)`
-/

namespace A109622.P4673072748283550239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)|

end

end A109622.P4673072748283550239

namespace A109622

/-- `abs(∑[∑[and(1, n+1)]²]-n)` -/
def P4673072748283550239.Spec : Prop :=
  ∀ n, P4673072748283550239.a n = A109622 n

end A109622

/-! ## A109622.P9918034705053538276

`∑[a(n-2)+or(1, n)]` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A109622.P9918034705053538276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3] fun n f1 =>
  f1 (n - 2) + Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109622.P9918034705053538276

namespace A109622

/-- `∑[a(n-2)+or(1, n)]` -/
def P9918034705053538276.Spec : Prop :=
  ∀ n, (P9918034705053538276.a n : ℤ) = A109622 n

end A109622

/-! ## A109622.P18147937731584374332

`floor(∑[∑[1-a(n-1)]²]-n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A109622.P18147937731584374332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A109622.P18147937731584374332

namespace A109622

/-- `floor(∑[∑[1-a(n-1)]²]-n)` -/
def P18147937731584374332.Spec : Prop :=
  ∀ n, P18147937731584374332.a n = A109622 n

end A109622

/-! ## A109622.P8900867821076761051

`abs(1-(∑[(n+1)*char[2*n]]+a(n-1)))` with `a(0)=1`
-/

namespace A109622.P8900867821076761051
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |1 - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + a (n - 1))|

end

end A109622.P8900867821076761051

namespace A109622

/-- `abs(1-(∑[(n+1)*char[2*n]]+a(n-1)))` -/
def P8900867821076761051.Spec : Prop :=
  ∀ n, P8900867821076761051.a n = A109622 n

end A109622

/-! ## A109622.P13473784689500763173

`abs(n-A168380(n+1)/2)`
-/

namespace A109622.P13473784689500763173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n : ℚ) - (A168380 (n + 1) : ℚ) / 2|

end

end A109622.P13473784689500763173

namespace A109622

/-- `abs(n-A168380(n+1)/2)` -/
def P13473784689500763173.Spec : Prop :=
  ∀ n, P13473784689500763173.a n = (A109622 n : ℚ)

end A109622

/-! ## A109622.P14366485180321818330

`∑[∑[A193356(n+1)-char[1]]]`
-/

namespace A109622.P14366485180321818330
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (n + 1) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109622.P14366485180321818330

namespace A109622

/-- `∑[∑[A193356(n+1)-char[1]]]` -/
def P14366485180321818330.Spec : Prop :=
  ∀ n, P14366485180321818330.a n = A109622 n

end A109622

/-! ## A109622.P9435206692852932025

`∑[C(2, n+2)+A008619(n)²-1]`
-/

namespace A109622.P9435206692852932025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + (A008619 n ^ 2 - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109622.P9435206692852932025

namespace A109622

/-- `∑[C(2, n+2)+A008619(n)²-1]` -/
def P9435206692852932025.Spec : Prop :=
  ∀ n, P9435206692852932025.a n = A109622 n

end A109622

/-! ## A109622.P1828035827644801118

`∑[∑[and(1, n+1)]²-A019429(2*n)]`
-/

namespace A109622.P1828035827644801118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) - A019429 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109622.P1828035827644801118

namespace A109622

/-- `∑[∑[and(1, n+1)]²-A019429(2*n)]` -/
def P1828035827644801118.Spec : Prop :=
  ∀ n, P1828035827644801118.a n = A109622 n

end A109622

/-! ## A109622.P1547049311928589163

`∑[A131805(n)+A028310(n)]`
-/

namespace A109622.P1547049311928589163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131805 n + A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109622.P1547049311928589163

namespace A109622

/-- `∑[A131805(n)+A028310(n)]` -/
def P1547049311928589163.Spec : Prop :=
  ∀ n, P1547049311928589163.a n = A109622 n

end A109622

/-! ## A109622.P6134623018304485303

`∑[A123108(n)+A110660(n)]`
-/

namespace A109622.P6134623018304485303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n + A110660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109622.P6134623018304485303

namespace A109622

/-- `∑[A123108(n)+A110660(n)]` -/
def P6134623018304485303.Spec : Prop :=
  ∀ n, P6134623018304485303.a n = A109622 n

end A109622

/-! ## A109622.P7498484208493064372

`∑[A057428(n)+A008619(n)²]`
-/

namespace A109622.P7498484208493064372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A008619 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109622.P7498484208493064372

namespace A109622

/-- `∑[A057428(n)+A008619(n)²]` -/
def P7498484208493064372.Spec : Prop :=
  ∀ n, P7498484208493064372.a n = A109622 n

end A109622

/-! ## A109622.P12683934648566349944

`∑[A008619(n)²-A057427(n)]`
-/

namespace A109622.P12683934648566349944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n ^ 2 - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109622.P12683934648566349944

namespace A109622

/-- `∑[A008619(n)²-A057427(n)]` -/
def P12683934648566349944.Spec : Prop :=
  ∀ n, P12683934648566349944.a n = A109622 n

end A109622

/-! ## A109622.P1154269467940441116

`∑[∑[(n+2)%A347558(n+2)-1]]`
-/

namespace A109622.P1154269467940441116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A347558 (n + 2)) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109622.P1154269467940441116

namespace A109622

/-- `∑[∑[(n+2)%A347558(n+2)-1]]` -/
def P1154269467940441116.Spec : Prop :=
  ∀ n, P1154269467940441116.a n = A109622 n

end A109622

/-! ## A109622.P2225420786966179571

`abs(∑[(A002265(2*n)+1)²]-n)`
-/

namespace A109622.P2225420786966179571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002265 (2 * n) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A109622.P2225420786966179571

namespace A109622

/-- `abs(∑[(A002265(2*n)+1)²]-n)` -/
def P2225420786966179571.Spec : Prop :=
  ∀ n, P2225420786966179571.a n = A109622 n

end A109622

/-! ## A109622.P1211043316092668098

`abs(∑[A000290(A002265(2*n)+1)]-n)`
-/

namespace A109622.P1211043316092668098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A002265 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A109622.P1211043316092668098

namespace A109622

/-- `abs(∑[A000290(A002265(2*n)+1)]-n)` -/
def P1211043316092668098.Spec : Prop :=
  ∀ n, P1211043316092668098.a n = A109622 n

end A109622

/-!
# A109624: Totally multiplicative sequence with a(p) = (p-1)*(p+3) = p^2+2p-3 for prime p.

The programs for A109624, there is no canonical definition to state claims against.
-/

/-! ## A109624.P4321836488487535377

`A003958(n+1)*A166591(n+1)`
-/

namespace A109624.P4321836488487535377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) * A166591 (n + 1)

end

end A109624.P4321836488487535377

/-! ## A109624.P2244054059516282982

`sqrt(A167363(n+1))*A003958(n+1)`
-/

namespace A109624.P2244054059516282982
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167363 (n + 1) : ℝ) * (A003958 (n + 1) : ℝ)

end

end A109624.P2244054059516282982

/-! ## A109624.P9393294048218531512

`A003958(n+1)/A003959(n+1)*A167353(n+1)`
-/

namespace A109624.P9393294048218531512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A167353 (n + 1) : ℚ)

end

end A109624.P9393294048218531512

/-! ## A109624.P4162996730823710625

`A003958(n+1)/A061142(n+1)*A167321(n+1)`
-/

namespace A109624.P4162996730823710625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ) * (A167321 (n + 1) : ℚ)

end

end A109624.P4162996730823710625

/-! ## A109624.P9192382510450517919

`A003958(n+1)/A165824(n+1)*A167322(n+1)`
-/

namespace A109624.P9192382510450517919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A165824 (n + 1) : ℚ) * (A167322 (n + 1) : ℚ)

end

end A109624.P9192382510450517919

/-! ## A109624.P12871074200477239519

`A003958(n+1)/A165825(n+1)*A167323(n+1)`
-/

namespace A109624.P12871074200477239519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A165825 (n + 1) : ℚ) * (A167323 (n + 1) : ℚ)

end

end A109624.P12871074200477239519

/-! ## A109624.P11016368822211595705

`A003958(n+1)/A165827(n+1)*A167325(n+1)`
-/

namespace A109624.P11016368822211595705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A165827 (n + 1) : ℚ) * (A167325 (n + 1) : ℚ)

end

end A109624.P11016368822211595705

/-! ## A109624.P15734725552333619034

`A003958(n+1)/A165828(n+1)*A167326(n+1)`
-/

namespace A109624.P15734725552333619034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A165828 (n + 1) : ℚ) * (A167326 (n + 1) : ℚ)

end

end A109624.P15734725552333619034

/-! ## A109624.P8255975937861555491

`A003958(n+1)/A165830(n+1)*A167328(n+1)`
-/

namespace A109624.P8255975937861555491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A165830 (n + 1) : ℚ) * (A167328 (n + 1) : ℚ)

end

end A109624.P8255975937861555491

/-! ## A109624.P4075230861861917534

`gcd(A167321(n+1), A167322(n+1))*A003958(n+1)`
-/

namespace A109624.P4075230861861917534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A167321 (n + 1)) (A167322 (n + 1)) : ℤ) * A003958 (n + 1)

end

end A109624.P4075230861861917534

/-! ## A109624.P15695641933585376409

`gcd(A167323(n+1), A167324(n+1))*A003958(n+1)`
-/

namespace A109624.P15695641933585376409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A167323 (n + 1)) (A167324 (n + 1)) : ℤ) * A003958 (n + 1)

end

end A109624.P15695641933585376409

/-! ## A109624.P15023068586994600288

`gcd(A167326(n+1), A167327(n+1))*A003958(n+1)`
-/

namespace A109624.P15023068586994600288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A167326 (n + 1)) (A167327 (n + 1)) : ℤ) * A003958 (n + 1)

end

end A109624.P15023068586994600288

/-! ## A109624.P17451189079062001034

`(A351442(n+1)-A351445(n+1))*sqrt(A167363(n+1))`
-/

namespace A109624.P17451189079062001034
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A351442 (n + 1) - A351445 (n + 1) : ℝ) * Real.sqrt (A167363 (n + 1) : ℝ)

end

end A109624.P17451189079062001034

/-! ## A109624.P10799884093516859648

`A003958(n+1)/A061142(n+1)²*A167323(n+1)`
-/

namespace A109624.P10799884093516859648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A061142 (n + 1) ^ 2 : ℚ) * (A167323 (n + 1) : ℚ)

end

end A109624.P10799884093516859648

/-! ## A109624.P15818241267571778159

`A003958(n+1)/A167323(n+1)*A167321(n+1)²`
-/

namespace A109624.P15818241267571778159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A167323 (n + 1) : ℚ) * (A167321 (n + 1) ^ 2 : ℚ)

end

end A109624.P15818241267571778159

/-! ## A109624.P5780672210825287489

`A003958(n+1)/sqrt(A165825(n+1))*A167321(n+1)`
-/

namespace A109624.P5780672210825287489
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℝ) / Real.sqrt (A165825 (n + 1) : ℝ) * (A167321 (n + 1) : ℝ)

end

end A109624.P5780672210825287489

/-!
# A109626: Consider the array T(n,m) where the n-th row is the sequence of integer coefficients of A(x), where 1<=a(n)<=n, such that A(x)^(1/n) consists entirely of integer coefficients and where m is the (m+1)-th coefficient. This is the antidiagonal read from lower left to upper right.

The programs for A109626, there is no canonical definition to state claims against.
-/

/-! ## A109626.P6896880170934728655

`A111604(A056011(n+1)%(n+13))`
-/

namespace A109626.P6896880170934728655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111604 (Int.tmod (A056011 (n + 1)) (n + 13 : ℤ)).toNat

end

end A109626.P6896880170934728655

/-! ## A109626.P2142899998791135002

`A111603(A193592(n)+A057944(n))`
-/

namespace A109626.P2142899998791135002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111603 (A193592 n + A057944 n).toNat

end

end A109626.P2142899998791135002

/-! ## A109626.P6678839598853148375

`A111603(gcd(A010816(n), A038722(n+1)))`
-/

namespace A109626.P6678839598853148375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111603 (Int.gcd (A010816 n) (A038722 (n + 1)))

end

end A109626.P6678839598853148375

/-! ## A109626.P8311305758846846805

`A111604(gcd(A056011(n+1), A158821(n)))`
-/

namespace A109626.P8311305758846846805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111604 (Int.gcd (A056011 (n + 1)) (A158821 n))

end

end A109626.P8311305758846846805

/-! ## A109626.P1437402830607992351

`A111603(A038722(n+1)-A158821(n)%A038722(n+1))`
-/

namespace A109626.P1437402830607992351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111603 (A038722 (n + 1) - Int.tmod (A158821 n) (A038722 (n + 1))).toNat

end

end A109626.P1437402830607992351

/-! ## A109626.P2426045590206533784

`A111603(∑[char[∑[n]]]²-n)`
-/

namespace A109626.P2426045590206533784
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111603 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A109626.P2426045590206533784

/-! ## A109626.P9394625433526572690

`A111604(A056011(n+1))`
-/

namespace A109626.P9394625433526572690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111604 (A056011 (n + 1)).toNat

end

end A109626.P9394625433526572690

/-! ## A109626.P14859862269197110421

`A111603(A038722(n+1))%13`
-/

namespace A109626.P14859862269197110421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111603 (A038722 (n + 1)).toNat) 13

end

end A109626.P14859862269197110421

/-! ## A109626.P4506585100835104039

`lcm(A033999(n), A111603(A038722(n+1)))`
-/

namespace A109626.P4506585100835104039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A111603 (A038722 (n + 1)).toNat)

end

end A109626.P4506585100835104039

/-! ## A109626.P15332984495446470411

`A111603(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A109626.P15332984495446470411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111603 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A109626.P15332984495446470411

/-!
# A109630: The winning position when playing the "eeny meeny miny moe" game with n players and eliminating every 8th player.

The programs for A109630, there is no canonical definition to state claims against.
-/

/-! ## A109630.P17674683322398945543

`(a(n-1)+7)%(n+1)+1` with `a(0)=1`
-/

namespace A109630.P17674683322398945543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 7) % (n + 1) + 1

end

end A109630.P17674683322398945543

/-! ## A109630.P3494092807847370018

`A198789(A155212(n+4)+1)`
-/

namespace A109630.P3494092807847370018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198789 (A155212 (n + 4) + 1).toNat

end

end A109630.P3494092807847370018

/-! ## A109630.P17074187451845030577

`A198788(A000124(n+7)+7)`
-/

namespace A109630.P17074187451845030577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198788 (A000124 (n + 7) + 7).toNat

end

end A109630.P17074187451845030577

/-! ## A109630.P776786766425948398

`A198788(A000217(n+7)+8)`
-/

namespace A109630.P776786766425948398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198788 (A000217 (n + 7) + 8).toNat

end

end A109630.P776786766425948398

/-! ## A109630.P12971223727316550949

`A198789(A000217(n+8)-7)`
-/

namespace A109630.P12971223727316550949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198789 (A000217 (n + 8) - 7).toNat

end

end A109630.P12971223727316550949

/-! ## A109630.P9232272104177062002

`A198789(A000124(n+8)-8)`
-/

namespace A109630.P9232272104177062002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198789 (A000124 (n + 8) - 8).toNat

end

end A109630.P9232272104177062002

/-!
# A109634: Number of 1's that appear among all ternary strings of length n that contain no consecutive 1's.

The programs for A109634, the canonical program `A109634.P4631575809494686795` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109634 has offset 0).

The definition of A109634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109634.P4631575809494686795

`∑[(n+1)/2*A002605(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A109634

/-- `∑[(n+1)/2*A002605(n)]` -/
def P4631575809494686795.Spec : Prop :=
  ∀ n, P4631575809494686795.a n = (A109634 n : ℚ)

end A109634

/-! ## A109634.P713072211333554621

`∑[∑[A229535(n+1)/4]]`
-/

namespace A109634.P713072211333554621
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229535 (n + 1) : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109634.P713072211333554621

namespace A109634

/-- `∑[∑[A229535(n+1)/4]]` -/
def P713072211333554621.Spec : Prop :=
  ∀ n, P713072211333554621.a n = (A109634 n : ℚ)

end A109634

/-! ## A109634.P18331676248657250648

`A073388(abs(1-n))%(4^n)`
-/

namespace A109634.P18331676248657250648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073388 |1 - (n : ℤ)|.toNat) (4 ^ n : ℤ)

end

end A109634.P18331676248657250648

namespace A109634

/-- `A073388(abs(1-n))%(4^n)` -/
def P18331676248657250648.Spec : Prop :=
  ∀ n, P18331676248657250648.a n = A109634 n

end A109634

/-! ## A109634.P1318194036871816203

`A208758(∑[n+2])`
-/

namespace A109634.P1318194036871816203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208758 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109634.P1318194036871816203

namespace A109634

/-- `A208758(∑[n+2])` -/
def P1318194036871816203.Spec : Prop :=
  ∀ n, P1318194036871816203.a n = A109634 n

end A109634

/-!
# A109635: Sum of prime(n) and n-th digit of Pi after the decimal point.

The programs for A109635, there is no canonical definition to state claims against.
-/

/-! ## A109635.P8660524434087899172

`A000796(n+1)+Δ[A007504(n)]`
-/

namespace A109635.P8660524434087899172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1) + (f1 (n + 1) - f1 n)

end

end A109635.P8660524434087899172

/-! ## A109635.P8395081170388051205

`A000040(n+1)+Δ[A046974(n)]`
-/

namespace A109635.P8395081170388051205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (f1 (n + 1) - f1 n)

end

end A109635.P8395081170388051205

/-! ## A109635.P14217987174172698972

`A000796(n+1)+record[A051698(n)]`
-/

namespace A109635.P14217987174172698972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109635.P14217987174172698972

/-! ## A109635.P13414801809469506239

`A000796(n+1)+p?[A007989(n)]`
-/

namespace A109635.P13414801809469506239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109635.P13414801809469506239

/-! ## A109635.P1099658800200314403

`A000796(n+1)+p?[A014681(n)]`
-/

namespace A109635.P1099658800200314403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109635.P1099658800200314403

/-! ## A109635.P5203774301365198884

`A000796(n+1)+p?[A056847(n)]`
-/

namespace A109635.P5203774301365198884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109635.P5203774301365198884

/-! ## A109635.P8739559440078310976

`A000796(n+1)+p?[A064429(n)]`
-/

namespace A109635.P8739559440078310976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109635.P8739559440078310976

/-! ## A109635.P11521721824032908952

`A000796(n+1)+p?[A080412(n)]`
-/

namespace A109635.P11521721824032908952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109635.P11521721824032908952

/-! ## A109635.P6128559771416408028

`A000796(n+1)+p?[A236836(n)]`
-/

namespace A109635.P6128559771416408028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109635.P6128559771416408028

/-! ## A109635.P369039968885235841

`A000796(n+1)+A000040(n+1)`
-/

namespace A109635.P369039968885235841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1) + A000040 (n + 1)

end

end A109635.P369039968885235841

/-! ## A109635.P7704656731735502445

`A008578(n+2)+A000796(n+1)`
-/

namespace A109635.P7704656731735502445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + A000796 (n + 1 + 1)

end

end A109635.P7704656731735502445

/-! ## A109635.P12355033805423541809

`Δ[A059582(n+1)]+A000040(n+1)`
-/

namespace A109635.P12355033805423541809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000040 (n + 1)

end

end A109635.P12355033805423541809

/-! ## A109635.P18067142601637050378

`A000796(n+1)+record[A006530(n+2)]`
-/

namespace A109635.P18067142601637050378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109635.P18067142601637050378

/-! ## A109635.P6504022657163348624

`A000796(n+1)+record[A008472(n+2)]`
-/

namespace A109635.P6504022657163348624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109635.P6504022657163348624

/-! ## A109635.P6272675353103589378

`A000796(n+1)+record[A014963(n+2)]`
-/

namespace A109635.P6272675353103589378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109635.P6272675353103589378

/-! ## A109635.P13367447213827847989

`A000796(n+1)+record[A020639(n+2)]`
-/

namespace A109635.P13367447213827847989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109635.P13367447213827847989

/-! ## A109635.P17021380598254484563

`A067747(2*n+1)+A000796(n+1)`
-/

namespace A109635.P17021380598254484563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * n + 1) + A000796 (n + 1 + 1)

end

end A109635.P17021380598254484563

/-! ## A109635.P4142620759526866151

`A382129(2*n+1)+A000796(n+1)`
-/

namespace A109635.P4142620759526866151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382129 (2 * n + 1) + A000796 (n + 1 + 1)

end

end A109635.P4142620759526866151

/-! ## A109635.P15141011078571530984

`A001355(2*n+3)+A000040(n+1)`
-/

namespace A109635.P15141011078571530984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 3) + A000040 (n + 1)

end

end A109635.P15141011078571530984

/-!
# A109636: Let T(n,k) be the n-th k-almost prime. Then a(n) = T(n,k) such that k is minimal and for all m>0, T(n,k+m) >= 2^m * T(n,k).

The programs for A109636, there is no canonical definition to state claims against.
-/

/-! ## A109636.P14318496890258528660

`A341902(A340387(n+1)²)`
-/

namespace A109636.P14318496890258528660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341902 (A340387 (n + 1) ^ 2).toNat

end

end A109636.P14318496890258528660

/-! ## A109636.P2384195566228296251

`A340387(n+1)+A000007(A000129(n))`
-/

namespace A109636.P2384195566228296251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340387 (n + 1) + A000007 (A000129 n).toNat

end

end A109636.P2384195566228296251

/-! ## A109636.P5631164620528675570

`A340387(n+1)+A000035(A007283(n))`
-/

namespace A109636.P5631164620528675570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340387 (n + 1) + A000035 (A007283 n).toNat

end

end A109636.P5631164620528675570

/-! ## A109636.P6545792978346665327

`A340387(n+1)+A000007(A007598(n))`
-/

namespace A109636.P6545792978346665327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340387 (n + 1) + A000007 (A007598 n).toNat

end

end A109636.P6545792978346665327

/-! ## A109636.P5749014445481378684

`A340387(n+1)+A000035(A033484(n))`
-/

namespace A109636.P5749014445481378684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340387 (n + 1) + A000035 (A033484 n).toNat

end

end A109636.P5749014445481378684

/-!
# A109640: Indices of records in A109631.

The programs for A109640, there is no canonical definition to state claims against.
-/

/-! ## A109640.P15615888597476628533

`record[A006530(A129033(n+7))]`
-/

namespace A109640.P15615888597476628533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A129033 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109640.P15615888597476628533

/-! ## A109640.P18277860502894227436

`record[A020639(A129033(n+10))]`
-/

namespace A109640.P18277860502894227436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A129033 (n + 10)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109640.P18277860502894227436

/-! ## A109640.P17049957446758989015

`record[A014963(A129033(n+7)²)]`
-/

namespace A109640.P17049957446758989015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A129033 (n + 7) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109640.P17049957446758989015

/-! ## A109640.P14654652505043494774

`record[A138117(n+1)/A001222(3*n+4)]`
-/

namespace A109640.P14654652505043494774
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138117 (n + 1) : ℚ) / (A001222 (3 * n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109640.P14654652505043494774

/-!
# A109644: {Sum of all k-digit numbers > n }-{sum of all k-digit numbers < n}, n is a 'k'digit number.

The programs for A109644, there is no canonical definition to state claims against.
-/

/-! ## A109644.P6276014578316459196

`45-record[A115300(n+1)]`
-/

namespace A109644.P6276014578316459196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  45 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109644.P6276014578316459196

/-! ## A109644.P17682102105111244474

`45-∑[A000005(4^n)]`
-/

namespace A109644.P17682102105111244474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  45 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109644.P17682102105111244474

/-! ## A109644.P11227058924302209976

`45-A000290(A032555(n+1))`
-/

namespace A109644.P11227058924302209976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  45 - A000290 (A032555 (n + 1)).toNat

end

end A109644.P11227058924302209976

/-! ## A109644.P9361077242267758478

`45-A000290(A032559(n+1))`
-/

namespace A109644.P9361077242267758478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  45 - A000290 (A032559 (n + 1)).toNat

end

end A109644.P9361077242267758478

/-! ## A109644.P16393672560768314973

`A040469(A290851(n+4))-A005563(n)`
-/

namespace A109644.P16393672560768314973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040469 (A290851 (n + 4)).toNat - A005563 n

end

end A109644.P16393672560768314973

/-!
# A109645: Primes whose decimal expansion has the form ij, where i and j are integers with j < i.

The programs for A109645, there is no canonical definition to state claims against.
-/

/-! ## A109645.P12126340560239772288

`p?[A014368(n+1)]`
-/

namespace A109645.P12126340560239772288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109645.P12126340560239772288

/-! ## A109645.P4149127041279372500

`p?[A084854(n+2)]`
-/

namespace A109645.P4149127041279372500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084854 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109645.P4149127041279372500

/-! ## A109645.P12417314152064714761

`filter[A014368(n+1), A010051(#)]`
-/

namespace A109645.P12417314152064714761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A109645.P12417314152064714761

/-! ## A109645.P3599907553101702017

`filter[A084854(n+3), A010051(#)]`
-/

namespace A109645.P3599907553101702017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084854 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A109645.P3599907553101702017

/-! ## A109645.P7306053064644172145

`filter[A014368(n+1), A080339(#)]`
-/

namespace A109645.P7306053064644172145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A109645.P7306053064644172145

/-! ## A109645.P3859225248571316690

`filter[A014368(n+1), A080545(#)]`
-/

namespace A109645.P3859225248571316690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A109645.P3859225248571316690

/-! ## A109645.P13516601385880564732

`filter[A014368(n+1), A171387(#)]`
-/

namespace A109645.P13516601385880564732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A109645.P13516601385880564732

/-! ## A109645.P13937137026318667531

`filter[A084854(n+3), A080339(#)]`
-/

namespace A109645.P13937137026318667531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084854 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A109645.P13937137026318667531

/-! ## A109645.P18186248121152364932

`filter[A084854(n+3), A080545(#)]`
-/

namespace A109645.P18186248121152364932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084854 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A109645.P18186248121152364932

/-! ## A109645.P825760692968096641

`filter[A084854(n+3), A171387(#)]`
-/

namespace A109645.P825760692968096641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084854 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A109645.P825760692968096641

/-!
# A109646: Triangle, read by rows, of the number of different isotemporal classes of rotationally distinct diasters with n (rows) total peripheral edges with k (columns) peripheral edges on one side.

The programs for A109646, there is no canonical definition to state claims against.
-/

/-! ## A109646.P1165437986127940606

`A109647(eq[1, A306680(n)])`
-/

namespace A109646.P1165437986127940606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109647 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109646.P1165437986127940606

/-! ## A109646.P10315835480683280182

`A109647(record[n/A306680(n)])`
-/

namespace A109646.P10315835480683280182
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A306680 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109647 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A109646.P10315835480683280182

/-! ## A109646.P12195560922791536981

`A109647(record[1-A306680(n)+n])`
-/

namespace A109646.P12195560922791536981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A306680 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109647 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109646.P12195560922791536981

/-! ## A109646.P678106235825742613

`A109647(record[n%A038722(n+1)])`
-/

namespace A109646.P678106235825742613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A038722 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109647 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109646.P678106235825742613

/-! ## A109646.P11824864196118075906

`A109647(eq[A130517(n+1), A143182(n)])`
-/

namespace A109646.P11824864196118075906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109647 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A109646.P11824864196118075906

/-!
# A109647: Triangle, read by rows, of the number of different isotemporal classes of diasters with n (row) total peripheral edges with k (column) peripheral edges on the a given side.

The programs for A109647, there is no canonical definition to state claims against.
-/

/-! ## A109647.P8038805110096411494

`A109646(A344646(n))`
-/

namespace A109647.P8038805110096411494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109646 (A344646 n).toNat

end

end A109647.P8038805110096411494

/-! ## A109647.P6742637690842174509

`A302295(A360875(n+1))`
-/

namespace A109647.P6742637690842174509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302295 (A360875 (n + 1)).toNat

end

end A109647.P6742637690842174509

/-! ## A109647.P4049005251706766912

`A070940(A257610(n)%A204691(n+1))`
-/

namespace A109647.P4049005251706766912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (Int.tmod (A257610 n) (A204691 (n + 1))).toNat

end

end A109647.P4049005251706766912

/-! ## A109647.P6648860461620155308

`A070940(A257610(n))`
-/

namespace A109647.P6648860461620155308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (A257610 n).toNat

end

end A109647.P6648860461620155308

/-! ## A109647.P17646291957493063469

`A175453(A157150(n))`
-/

namespace A109647.P17646291957493063469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175453 (A157150 n).toNat

end

end A109647.P17646291957493063469

/-!
# A109649: Entries in 3-dimensional version of Pascal triangle: trinomial coefficients.

The programs for A109649, there is no canonical definition to state claims against.
-/

/-! ## A109649.P16670182973772418757

`gcd(A208152(A267644(n+1)), A208181(n+1))`
-/

namespace A109649.P16670182973772418757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A208152 (A267644 (n + 1)).toNat) (A208181 (n + 1))

end

end A109649.P16670182973772418757

/-!
# A109650: Numbers n such that A109631(n) > n.

The programs for A109650, there is no canonical definition to state claims against.
-/

/-! ## A109650.P16471877043054407567

`A109640(A032555(n+2)+2)`
-/

namespace A109650.P16471877043054407567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109640 (A032555 (n + 2) + 2).toNat

end

end A109650.P16471877043054407567

/-! ## A109650.P1650919974518977871

`A109640(A004869(n+1)+4)`
-/

namespace A109650.P1650919974518977871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109640 (A004869 (n + 1) + 4).toNat

end

end A109650.P1650919974518977871

/-! ## A109650.P16272294451912115138

`∩[A038187(n+1), A109640(n+1)]`
-/

namespace A109650.P16272294451912115138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109650.P16272294451912115138

/-! ## A109650.P6463902088347177247

`∩[A109640(n+1), A172247(n+1)]`
-/

namespace A109650.P6463902088347177247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109650.P6463902088347177247

/-!
# A109652: a(n) = prime(A000201(n)).

The programs for A109652, the canonical program `A109652.P646909924150016559` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109652 has offset 1).

The definition of A109652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109652.P11868009983074426548

`A102022(n)+a(n-1)` with `a(0)=2`
-/

namespace A109652.P11868009983074426548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A102022 n + a (n - 1)

end

end A109652.P11868009983074426548

namespace A109652

/-- `A102022(n)+a(n-1)` -/
def P11868009983074426548.Spec : Prop :=
  ∀ n, P11868009983074426548.a n = A109652 (n + 1)

end A109652

/-! ## A109652.P646909924150016559

`A000040(floor(ϕ*(n+1)))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A109652

/-- `A000040(floor(ϕ*(n+1)))` -/
def P646909924150016559.Spec : Prop :=
  ∀ n, P646909924150016559.a n = A109652 (n + 1)

theorem P646909924150016559.correct : P646909924150016559.Spec := by
  intro n
  simp only [A109652, Nat.add_sub_cancel]

end A109652

/-! ## A109652.P13485811953349922329

`A008578(ceil(ϕ*(n+1)))`
-/

namespace A109652.P13485811953349922329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 ⌈Real.goldenRatio * (n + 1 : ℝ)⌉.toNat

end

end A109652.P13485811953349922329

namespace A109652

/-- `A008578(ceil(ϕ*(n+1)))` -/
def P13485811953349922329.Spec : Prop :=
  ∀ n, P13485811953349922329.a n = A109652 (n + 1)

end A109652

/-! ## A109652.P4659574188818961693

`sqrt(A001248(floor(ϕ*(n+1))))`
-/

namespace A109652.P4659574188818961693
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat : ℝ)

end

end A109652.P4659574188818961693

namespace A109652

/-- `sqrt(A001248(floor(ϕ*(n+1))))` -/
def P4659574188818961693.Spec : Prop :=
  ∀ n, P4659574188818961693.a n = (A109652 (n + 1) : ℝ)

end A109652

/-! ## A109652.P3448178051295393588

`p?[A000040(comp[floor(n*ϕ²)])]`
-/

namespace A109652.P3448178051295393588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109652.P3448178051295393588

namespace A109652

/-- `p?[A000040(comp[floor(n*ϕ²)])]` -/
def P3448178051295393588.Spec : Prop :=
  ∀ n, P3448178051295393588.a n = A109652 (n + 1)

end A109652

/-! ## A109652.P8753984992492133076

`A006093(floor(ϕ*(n+1)))+1`
-/

namespace A109652.P8753984992492133076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat + 1

end

end A109652.P8753984992492133076

namespace A109652

/-- `A006093(floor(ϕ*(n+1)))+1` -/
def P8753984992492133076.Spec : Prop :=
  ∀ n, P8753984992492133076.a n = A109652 (n + 1)

end A109652

/-! ## A109652.P7903641506886422394

`A182986(floor(ϕ*(n+1))+1)`
-/

namespace A109652.P7903641506886422394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + 1).toNat

end

end A109652.P7903641506886422394

namespace A109652

/-- `A182986(floor(ϕ*(n+1))+1)` -/
def P7903641506886422394.Spec : Prop :=
  ∀ n, P7903641506886422394.a n = A109652 (n + 1)

end A109652

/-! ## A109652.P11900714441626150228

`root(A050997(floor(ϕ*(n+1))), 5)`
-/

namespace A109652.P11900714441626150228
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A050997 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat : ℝ) ^ (1 / (5 : ℝ))

end

end A109652.P11900714441626150228

namespace A109652

/-- `root(A050997(floor(ϕ*(n+1))), 5)` -/
def P11900714441626150228.Spec : Prop :=
  ∀ n, P11900714441626150228.a n = (A109652 (n + 1) : ℝ)

end A109652

/-! ## A109652.P14729369857444074047

`A158611(floor(ϕ*(n+1))+2)`
-/

namespace A109652.P14729369857444074047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + 2).toNat

end

end A109652.P14729369857444074047

namespace A109652

/-- `A158611(floor(ϕ*(n+1))+2)` -/
def P14729369857444074047.Spec : Prop :=
  ∀ n, P14729369857444074047.a n = A109652 (n + 1)

end A109652

/-! ## A109652.P5184193933730173927

`A067747(A075317(n+1))`
-/

namespace A109652.P5184193933730173927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A075317 (n + 1)).toNat

end

end A109652.P5184193933730173927

namespace A109652

/-- `A067747(A075317(n+1))` -/
def P5184193933730173927.Spec : Prop :=
  ∀ n, P5184193933730173927.a n = A109652 (n + 1)

end A109652

/-! ## A109652.P11269104661492145953

`A130008(A130568(n+1))`
-/

namespace A109652.P11269104661492145953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 (A130568 (n + 1)).toNat

end

end A109652.P11269104661492145953

namespace A109652

/-- `A130008(A130568(n+1))` -/
def P11269104661492145953.Spec : Prop :=
  ∀ n, P11269104661492145953.a n = A109652 (n + 1)

end A109652

/-! ## A109652.P4245672880244205282

`A162753(A186516(n+1))`
-/

namespace A109652.P4245672880244205282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (A186516 (n + 1)).toNat

end

end A109652.P4245672880244205282

namespace A109652

/-- `A162753(A186516(n+1))` -/
def P4245672880244205282.Spec : Prop :=
  ∀ n, P4245672880244205282.a n = A109652 (n + 1)

end A109652

/-! ## A109652.P8929737962939902972

`A073846(A283233(n+1))`
-/

namespace A109652.P8929737962939902972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A283233 (n + 1)).toNat

end

end A109652.P8929737962939902972

namespace A109652

/-- `A073846(A283233(n+1))` -/
def P8929737962939902972.Spec : Prop :=
  ∀ n, P8929737962939902972.a n = A109652 (n + 1)

end A109652

/-! ## A109652.P7211049953498203579

`A162753(A276854(n+1))`
-/

namespace A109652.P7211049953498203579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (A276854 (n + 1)).toNat

end

end A109652.P7211049953498203579

namespace A109652

/-- `A162753(A276854(n+1))` -/
def P7211049953498203579.Spec : Prop :=
  ∀ n, P7211049953498203579.a n = A109652 (n + 1)

end A109652

/-! ## A109652.P17410915645601039177

`A064989(A397627(n+2))`
-/

namespace A109652.P17410915645601039177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A397627 (n + 2)).toNat

end

end A109652.P17410915645601039177

namespace A109652

/-- `A064989(A397627(n+2))` -/
def P17410915645601039177.Spec : Prop :=
  ∀ n, P17410915645601039177.a n = A109652 (n + 1)

end A109652

/-!
# A109653: Sequence and first differences include all prime numbers exactly once.

The programs for A109653, there is no canonical definition to state claims against.
-/

/-! ## A109653.P2546208860414212967

`∑[p?[comp[A247657(n+1)]]]`
-/

namespace A109653.P2546208860414212967
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247657 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109653.P2546208860414212967

/-! ## A109653.P8964926890893653118

`A247658(n+1)`
-/

namespace A109653.P8964926890893653118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247658 (n + 1)

end

end A109653.P8964926890893653118

/-! ## A109653.P7096411768218386005

`record[A247658(A028920(n))]`
-/

namespace A109653.P7096411768218386005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247658 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109653.P7096411768218386005

/-! ## A109653.P9049555230600370867

`record[A247658(A117910(n))]`
-/

namespace A109653.P9049555230600370867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247658 (A117910 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109653.P9049555230600370867

/-! ## A109653.P16339622789916354691

`record[A247658(A126759(n))]`
-/

namespace A109653.P16339622789916354691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247658 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109653.P16339622789916354691

/-!
# A109654: Primes A000040(i) such that A003849(i-1) = 1.

The programs for A109654, the canonical program `A109654.P16432518686130582908` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109654 has offset 1).

The definition of A109654 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A109654.P16432518686130582908

`A000040(A003622(n+1)+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A109654

/-- `A000040(A003622(n+1)+1)` -/
def P16432518686130582908.Spec : Prop :=
  ∀ n, P16432518686130582908.a n = A109654 (n + 1)

theorem P16432518686130582908.correct : P16432518686130582908.Spec := by
  intro n
  simp only [A109654, Nat.add_sub_cancel]

end A109654

/-! ## A109654.P7005796856974724255

`A397627(A004956(n+1))`
-/

namespace A109654.P7005796856974724255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397627 (A004956 (n + 1)).toNat

end

end A109654.P7005796856974724255

namespace A109654

/-- `A397627(A004956(n+1))` -/
def P7005796856974724255.Spec : Prop :=
  ∀ n, P7005796856974724255.a n = A109654 (n + 1)

end A109654

/-! ## A109654.P14075180260997816235

`A397627(A026351(n+1))`
-/

namespace A109654.P14075180260997816235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397627 (A026351 (n + 1)).toNat

end

end A109654.P14075180260997816235

namespace A109654

/-- `A397627(A026351(n+1))` -/
def P14075180260997816235.Spec : Prop :=
  ∀ n, P14075180260997816235.a n = A109654 (n + 1)

end A109654

/-! ## A109654.P9718236615730723917

`A397627(A001950(n+1)-n)`
-/

namespace A109654.P9718236615730723917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397627 (A001950 (n + 1) - (n : ℤ)).toNat

end

end A109654.P9718236615730723917

namespace A109654

/-- `A397627(A001950(n+1)-n)` -/
def P9718236615730723917.Spec : Prop :=
  ∀ n, P9718236615730723917.a n = A109654 (n + 1)

end A109654

/-! ## A109654.P17053847852300155016

`A397627(A026352(n+1)-(n+1))`
-/

namespace A109654.P17053847852300155016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397627 (A026352 (n + 1) - (n + 1 : ℤ)).toNat

end

end A109654.P17053847852300155016

namespace A109654

/-- `A397627(A026352(n+1)-(n+1))` -/
def P17053847852300155016.Spec : Prop :=
  ∀ n, P17053847852300155016.a n = A109654 (n + 1)

end A109654

/-! ## A109654.P804417464965715135

`A000040(A001950(n+1))`
-/

namespace A109654.P804417464965715135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A001950 (n + 1)).toNat

end

end A109654.P804417464965715135

namespace A109654

/-- `A000040(A001950(n+1))` -/
def P804417464965715135.Spec : Prop :=
  ∀ n, P804417464965715135.a n = A109654 (n + 1)

end A109654

/-! ## A109654.P7557416896726088632

`A065091(A003622(n+1))`
-/

namespace A109654.P7557416896726088632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A003622 (n + 1)).toNat

end

end A109654.P7557416896726088632

namespace A109654

/-- `A065091(A003622(n+1))` -/
def P7557416896726088632.Spec : Prop :=
  ∀ n, P7557416896726088632.a n = A109654 (n + 1)

end A109654

/-! ## A109654.P7217896923402909521

`A000040(A026352(n+1)-1)`
-/

namespace A109654.P7217896923402909521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A026352 (n + 1) - 1).toNat

end

end A109654.P7217896923402909521

namespace A109654

/-- `A000040(A026352(n+1)-1)` -/
def P7217896923402909521.Spec : Prop :=
  ∀ n, P7217896923402909521.a n = A109654 (n + 1)

end A109654

/-! ## A109654.P3479838777894666755

`A000040(A007066(n+2)-2)`
-/

namespace A109654.P3479838777894666755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A007066 (n + 2) - 2).toNat

end

end A109654.P3479838777894666755

namespace A109654

/-- `A000040(A007066(n+2)-2)` -/
def P3479838777894666755.Spec : Prop :=
  ∀ n, P3479838777894666755.a n = A109654 (n + 1)

end A109654

/-! ## A109654.P8090890473537965580

`A006005(A026356(n+2)-2)`
-/

namespace A109654.P8090890473537965580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A026356 (n + 2) - 2).toNat

end

end A109654.P8090890473537965580

namespace A109654

/-- `A006005(A026356(n+2)-2)` -/
def P8090890473537965580.Spec : Prop :=
  ∀ n, P8090890473537965580.a n = A109654 (n + 1)

end A109654

/-! ## A109654.P17053881212597639195

`A000040(A026351(n+1)+n)`
-/

namespace A109654.P17053881212597639195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A026351 (n + 1) + (n : ℤ)).toNat

end

end A109654.P17053881212597639195

namespace A109654

/-- `A000040(A026351(n+1)+n)` -/
def P17053881212597639195.Spec : Prop :=
  ∀ n, P17053881212597639195.a n = A109654 (n + 1)

end A109654

/-! ## A109654.P803625951868332307

`A065091(A000201(n+1)+n)`
-/

namespace A109654.P803625951868332307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A000201 (n + 1) + (n : ℤ)).toNat

end

end A109654.P803625951868332307

namespace A109654

/-- `A065091(A000201(n+1)+n)` -/
def P803625951868332307.Spec : Prop :=
  ∀ n, P803625951868332307.a n = A109654 (n + 1)

end A109654

/-! ## A109654.P5518382511138624915

`A065091(A066096(n+1)+n)`
-/

namespace A109654.P5518382511138624915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A066096 (n + 1) + (n : ℤ)).toNat

end

end A109654.P5518382511138624915

namespace A109654

/-- `A065091(A066096(n+1)+n)` -/
def P5518382511138624915.Spec : Prop :=
  ∀ n, P5518382511138624915.a n = A109654 (n + 1)

end A109654

/-! ## A109654.P12072742154877072126

`A000040(A000201(n+1)+n+1)`
-/

namespace A109654.P12072742154877072126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000201 (n + 1) + (n + 1 : ℤ)).toNat

end

end A109654.P12072742154877072126

namespace A109654

/-- `A000040(A000201(n+1)+n+1)` -/
def P12072742154877072126.Spec : Prop :=
  ∀ n, P12072742154877072126.a n = A109654 (n + 1)

end A109654

/-! ## A109654.P11148027817615153987

`A000040(A022342(n+1)+n+2)`
-/

namespace A109654.P11148027817615153987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A022342 (n + 1) + (n + 2 : ℤ)).toNat

end

end A109654.P11148027817615153987

namespace A109654

/-- `A000040(A022342(n+1)+n+2)` -/
def P11148027817615153987.Spec : Prop :=
  ∀ n, P11148027817615153987.a n = A109654 (n + 1)

end A109654

/-! ## A109654.P4264738313479358882

`A008578(A004957(n+1))`
-/

namespace A109654.P4264738313479358882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A004957 (n + 1)).toNat

end

end A109654.P4264738313479358882

namespace A109654

/-- `A008578(A004957(n+1))` -/
def P4264738313479358882.Spec : Prop :=
  ∀ n, P4264738313479358882.a n = A109654 (n + 1)

end A109654

/-! ## A109654.P5406863853824551951

`A008578(A026352(n+1))`
-/

namespace A109654.P5406863853824551951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A026352 (n + 1)).toNat

end

end A109654.P5406863853824551951

namespace A109654

/-- `A008578(A026352(n+1))` -/
def P5406863853824551951.Spec : Prop :=
  ∀ n, P5406863853824551951.a n = A109654 (n + 1)

end A109654

/-! ## A109654.P23217089178373894

`A158611(A007066(n+2))`
-/

namespace A109654.P23217089178373894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A007066 (n + 2)).toNat

end

end A109654.P23217089178373894

namespace A109654

/-- `A158611(A007066(n+2))` -/
def P23217089178373894.Spec : Prop :=
  ∀ n, P23217089178373894.a n = A109654 (n + 1)

end A109654

/-! ## A109654.P13172998542952876506

`A158611(A026356(n+2))`
-/

namespace A109654.P13172998542952876506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A026356 (n + 2)).toNat

end

end A109654.P13172998542952876506

namespace A109654

/-- `A158611(A026356(n+2))` -/
def P13172998542952876506.Spec : Prop :=
  ∀ n, P13172998542952876506.a n = A109654 (n + 1)

end A109654

/-! ## A109654.P13404414563185764536

`A008578(A001950(n+1)+1)`
-/

namespace A109654.P13404414563185764536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A001950 (n + 1) + 1).toNat

end

end A109654.P13404414563185764536

namespace A109654

/-- `A008578(A001950(n+1)+1)` -/
def P13404414563185764536.Spec : Prop :=
  ∀ n, P13404414563185764536.a n = A109654 (n + 1)

end A109654

/-!
# A109655: Number of partitions of n^2 into up to n parts each no more than 2n, or of n(3n+1)/2 into exactly n distinct parts each no more than 3n.

The programs for A109655, there is no canonical definition to state claims against.
-/

/-! ## A109655.P15566229855457529959

`A204459(A167614(n+2))`
-/

namespace A109655.P15566229855457529959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A167614 (n + 2)).toNat

end

end A109655.P15566229855457529959

/-! ## A109655.P16475992053849129203

`A204459(A052905(n)+8)`
-/

namespace A109655.P16475992053849129203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A052905 n + 8).toNat

end

end A109655.P16475992053849129203

/-! ## A109655.P3657296488710917471

`A204459(A055999(n)+9)`
-/

namespace A109655.P3657296488710917471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A055999 n + 9).toNat

end

end A109655.P3657296488710917471

/-! ## A109655.P17543014375563391834

`A204459(eq[3, A002262(n)])`
-/

namespace A109655.P17543014375563391834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109655.P17543014375563391834

/-! ## A109655.P1306697326902718384

`A204459(eq[3, A191532(n)])`
-/

namespace A109655.P1306697326902718384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109655.P1306697326902718384

/-! ## A109655.P11521671870500097900

`A204459(A167499(n+2)-2)`
-/

namespace A109655.P11521671870500097900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A167499 (n + 2) - 2).toNat

end

end A109655.P11521671870500097900

/-! ## A109655.P16925258943498086489

`A204459(A000217(n+3)+3)`
-/

namespace A109655.P16925258943498086489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A000217 (n + 3) + 3).toNat

end

end A109655.P16925258943498086489

/-! ## A109655.P9661133876224981212

`A204459(A166136(n+2)-3)`
-/

namespace A109655.P9661133876224981212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A166136 (n + 2) - 3).toNat

end

end A109655.P9661133876224981212

/-! ## A109655.P4417117447119481013

`A204459(eq[1, A144328(n+1)-2])`
-/

namespace A109655.P4417117447119481013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109655.P4417117447119481013

/-! ## A109655.P6016939864307851006

`A204459(eq[2, A002260(n+1)-2])`
-/

namespace A109655.P6016939864307851006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109655.P6016939864307851006

/-!
# A109660: Numbers n such that the sum of the digits of n^phi(n) is divisible by n.

The programs for A109660, there is no canonical definition to state claims against.
-/

/-! ## A109660.P3527973265425930262

`A297595(A181061(n))+A114398(n)`
-/

namespace A109660.P3527973265425930262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297595 (A181061 n).toNat + A114398 n

end

end A109660.P3527973265425930262

/-! ## A109660.P10838208802710899390

`A007953(A121749(n+1))+A004111(n)`
-/

namespace A109660.P10838208802710899390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A121749 (n + 1)).toNat + A004111 n

end

end A109660.P10838208802710899390

/-!
# A109664: a(1) = 1; for n>1, a(n) = Sum_{i=1..n-1} a(i)*prime(i).

The programs for A109664, there is no canonical definition to state claims against.
-/

/-! ## A109664.P15433606152842557042

`round(2/3*A054640(n))`
-/

namespace A109664.P15433606152842557042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) / 3 * (A054640 n : ℚ))

end

end A109664.P15433606152842557042

/-! ## A109664.P3126552581510260644

`a(n-1)*A008864(n)` with `a(0)=1, a(1)=2`
-/

namespace A109664.P3126552581510260644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * A008864 n

end

end A109664.P3126552581510260644

/-! ## A109664.P9477974417857801049

`a(n-1)*A028815(n)` with `a(0)=1, a(1)=2`
-/

namespace A109664.P9477974417857801049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * A028815 n

end

end A109664.P9477974417857801049

/-! ## A109664.P6778077697208860686

`a(n-1)*A055670(n)` with `a(0)=1, a(1)=2`
-/

namespace A109664.P6778077697208860686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * A055670 n

end

end A109664.P6778077697208860686

/-! ## A109664.P7736595856170729431

`a(n-1)*A175216(n)` with `a(0)=1, a(1)=2`
-/

namespace A109664.P7736595856170729431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * A175216 n

end

end A109664.P7736595856170729431

/-!
# A109666: Numbers k such that A002034(k) = A109631(k).

The programs for A109666, there is no canonical definition to state claims against.
-/

/-! ## A109666.P2284743363867176503

`eq[A002034(n+1), A109631(n+1)]+1`
-/

namespace A109666.P2284743363867176503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109631 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A109666.P2284743363867176503

/-! ## A109666.P2677348854108647724

`eq[A122416(n+1)-1, A109631(n+1)]+1`
-/

namespace A109666.P2677348854108647724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122416 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109631 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A109666.P2677348854108647724

/-! ## A109666.P10448051590459267545

`eq[A061243(n+1)-(n+1), A109631(n+1)]+1`
-/

namespace A109666.P10448051590459267545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061243 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109631 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A109666.P10448051590459267545

/-! ## A109666.P17774342982886746851

`lt[n/3, A339890(A250120(n))]`
-/

namespace A109666.P17774342982886746851
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339890 (A250120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A109666.P17774342982886746851

/-! ## A109666.P9770168805461723732

`record[gcd(A000407(n), A338863(3*n+2))]`
-/

namespace A109666.P9770168805461723732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000407 n) (A338863 (3 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109666.P9770168805461723732

/-!
# A109671: a(1)=1; thereafter, a(2n)=a(n), a(2n+1) is the smallest positive number such that |a(2n+1)-a(2n-1)|=a(n).

The programs for A109671, there is no canonical definition to state claims against.
-/

/-! ## A109671.P7689990067510665902

`abs(Δ[A169742(n)])`
-/

namespace A109671.P7689990067510665902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A109671.P7689990067510665902

/-! ## A109671.P15636763380045083355

`A169742(A025480(n))`
-/

namespace A109671.P15636763380045083355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169742 (A025480 n).toNat

end

end A109671.P15636763380045083355

/-! ## A109671.P8679253968427968837

`A169742(A153733(n)/2)`
-/

namespace A109671.P8679253968427968837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169742 (SequenceMachineLib.roundAway ((A153733 n : ℚ) / 2)).toNat

end

end A109671.P8679253968427968837

/-! ## A109671.P13578003493234337242

`lcm(Δ[A169742(n)], A020985(n))`
-/

namespace A109671.P13578003493234337242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169742 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A020985 n)

end

end A109671.P13578003493234337242

/-! ## A109671.P6582220346189517694

`A169742(A003602(n+1)-1)`
-/

namespace A109671.P6582220346189517694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169742 (A003602 (n + 1) - 1).toNat

end

end A109671.P6582220346189517694

/-! ## A109671.P13474430375035948972

`abs(A169742(n+1)-A169742(n))`
-/

namespace A109671.P13474430375035948972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A169742 (n + 1) - A169742 n|

end

end A109671.P13474430375035948972

/-! ## A109671.P8470053735899236918

`A000194(Δ[A169742(n)]²)`
-/

namespace A109671.P8470053735899236918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A109671.P8470053735899236918

/-! ## A109671.P14307131373052537202

`A037213(Δ[A169742(n)]²)`
-/

namespace A109671.P14307131373052537202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A109671.P14307131373052537202

/-!
# A109672: Entries in 3-dimensional solids related to Prouhet-Tarry problem.

The programs for A109672, there is no canonical definition to state claims against.
-/

/-! ## A109672.P13702266159172062802

`A293431(∑[A025918(n)]^(A029442(n)+2)+1)`
-/

namespace A109672.P13702266159172062802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293431 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A029442 n + 2 : ℤ) + 1)).toNat

end

end A109672.P13702266159172062802

/-!
# A109673: Hexagonal pyramid related to Prouhet-Tarry problem.

The programs for A109673, there is no canonical definition to state claims against.
-/

/-! ## A109673.P6332883864988339009

`A130046(lt[A161778(n+1), A161808(n)])`
-/

namespace A109673.P6332883864988339009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130046 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A109673.P6332883864988339009

/-! ## A109673.P10725564842407756200

`A130046(A265334(n+1)%A341888(n+3))`
-/

namespace A109673.P10725564842407756200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130046 (Int.tmod (A265334 (n + 1)) (A341888 (n + 3))).toNat

end

end A109673.P10725564842407756200

/-! ## A109673.P4026924143248054670

`A130046(A265334(n+1))+C(2, n)%A155971(n)`
-/

namespace A109673.P4026924143248054670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130046 (A265334 (n + 1)).toNat + Int.tmod (Nat.choose 2 n : ℤ) (A155971 n)

end

end A109673.P4026924143248054670

/-!
# A109674: a(n)^(n/a(n)) = A092975(n) and a(n) is a prime.

The programs for A109674, there is no canonical definition to state claims against.
-/

/-! ## A109674.P10156189476752762153

`∏{p}[A090369(n+1), #]`
-/

namespace A109674.P10156189476752762153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A109674.P10156189476752762153

/-! ## A109674.P8554643884713640458

`∏{p}[A292269(2*(n+1)), #]`
-/

namespace A109674.P8554643884713640458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A109674.P8554643884713640458

/-! ## A109674.P14559971144314901671

`xor(1, A292269(2*n+2)-1)`
-/

namespace A109674.P14559971144314901671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A292269 (2 * n + 2) - 1)

end

end A109674.P14559971144314901671

/-! ## A109674.P12181801576019029535

`A020639(4^val(n+1, 6)+n)`
-/

namespace A109674.P12181801576019029535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 ^ SequenceMachineLib.valuation (n + 1) 6 + n)

end

end A109674.P12181801576019029535

/-! ## A109674.P6783303602223000769

`A020639(n+1)+C(n%6, 5)`
-/

namespace A109674.P6783303602223000769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + (Nat.choose (n % 6) 5 : ℤ)

end

end A109674.P6783303602223000769

/-! ## A109674.P13333833352086206030

`∏{p}[n+1, gcd(#, A092975(n+1))]`
-/

namespace A109674.P13333833352086206030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.gcd (p : ℤ) (A092975 (n + 1))

end

end A109674.P13333833352086206030

/-! ## A109674.P2227362670312637902

`A020639(n*and(5, dr(3*n))+1)`
-/

namespace A109674.P2227362670312637902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n * Nat.land 5 (SequenceMachineLib.digitalRoot (3 * n : ℤ)) + 1)

end

end A109674.P2227362670312637902

/-! ## A109674.P7784355322232715827

`A020639(A222257(n))`
-/

namespace A109674.P7784355322232715827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A222257 n).toNat

end

end A109674.P7784355322232715827

/-! ## A109674.P15993761943402512380

`A181861(A090369(n+1))`
-/

namespace A109674.P15993761943402512380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181861 (A090369 (n + 1)).toNat

end

end A109674.P15993761943402512380

/-! ## A109674.P8895656458943488803

`A006530(A292269(2*(n+1)))`
-/

namespace A109674.P8895656458943488803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A292269 (2 * (n + 1))).toNat

end

end A109674.P8895656458943488803

/-!
# A109678: Sequence and first differences include all square numbers exactly once.

The programs for A109678, there is no canonical definition to state claims against.
-/

/-! ## A109678.P4761729781301854430

`∑[(n+1)²]`
-/

namespace A109678.P4761729781301854430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109678.P4761729781301854430

/-! ## A109678.P6676850929088856066

`ceil(∑[(sin(11)-n)²])`
-/

namespace A109678.P6676850929088856066
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sin (11 : ℝ) - (n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A109678.P6676850929088856066

/-! ## A109678.P11758296202840096972

`round(∑[(sin(11)-n)²])`
-/

namespace A109678.P11758296202840096972
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sin (11 : ℝ) - (n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109678.P11758296202840096972

/-! ## A109678.P9320838831701236966

`Δ[and(∑[∑[n²]], -1)]`
-/

namespace A109678.P9320838831701236966
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109678.P9320838831701236966

/-! ## A109678.P15868336374925962110

`and(∑[xor(n, -1)²], -1)`
-/

namespace A109678.P15868336374925962110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A109678.P15868336374925962110

/-!
# A109679: Smallest even number which is the unordered sum of two primes in more ways than any previous even number.

The programs for A109679, there is no canonical definition to state claims against.
-/

/-! ## A109679.P4644283250223014759

`2*A053033(n+1)`
-/

namespace A109679.P4644283250223014759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053033 (n + 1)

end

end A109679.P4644283250223014759

/-! ## A109679.P4089244597243854988

`4*A053033(Δ[n²]-n)/2`
-/

namespace A109679.P4089244597243854988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A053033 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2

end

end A109679.P4089244597243854988

/-! ## A109679.P15856160200403941388

`A053033(C(n+1, n))+A053033(n+1)`
-/

namespace A109679.P15856160200403941388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053033 (Nat.choose (n + 1) n) + A053033 (n + 1)

end

end A109679.P15856160200403941388

/-! ## A109679.P4741800169819237016

`A053033(n+1)+A053033(Δ[n²]-n)`
-/

namespace A109679.P4741800169819237016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053033 (n + 1) + A053033 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A109679.P4741800169819237016

/-! ## A109679.P11066800048160168019

`A053033(n+1)/2^A008683(A063535(n))`
-/

namespace A109679.P11066800048160168019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053033 (n + 1) : ℚ) / (2 : ℚ) ^ (A008683 (A063535 n).toNat : ℤ)

end

end A109679.P11066800048160168019

/-! ## A109679.P6991728658497555728

`A053033(Δ[n²]-n)*A131743(A106839(n))`
-/

namespace A109679.P6991728658497555728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053033 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat * A131743 (A106839 n).toNat

end

end A109679.P6991728658497555728

/-! ## A109679.P2212040070368161845

`A053033(n+1)+A053033(n+1)%A017380(n)`
-/

namespace A109679.P2212040070368161845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053033 (n + 1) + Int.tmod (A053033 (n + 1)) (A017380 n)

end

end A109679.P2212040070368161845

/-! ## A109679.P16854242492819226156

`gcd(A053033(n+1)+A053033(n+1), A000038(n))`
-/

namespace A109679.P16854242492819226156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053033 (n + 1) + A053033 (n + 1)) (A000038 n)

end

end A109679.P16854242492819226156

/-! ## A109679.P7104336525285542810

`A053033(n+1)+or(A000007(n), A053033(n+1))`
-/

namespace A109679.P7104336525285542810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053033 (n + 1) + Int.lor (A000007 n) (A053033 (n + 1))

end

end A109679.P7104336525285542810

/-! ## A109679.P14841052738871739918

`A053033(n+1)+or(A053033(n+1), A185012(n))`
-/

namespace A109679.P14841052738871739918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053033 (n + 1) + Int.lor (A053033 (n + 1)) (A185012 n)

end

end A109679.P14841052738871739918

/-! ## A109679.P15640586187629051247

`(A053033(n+1)+A053033(n+1))%A017185(n)²`
-/

namespace A109679.P15640586187629051247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053033 (n + 1) + A053033 (n + 1)) (A017185 n ^ 2)

end

end A109679.P15640586187629051247

/-! ## A109679.P14597107087980748752

`A000007(n+1)+A053033(n+1)+A053033(n+1)`
-/

namespace A109679.P14597107087980748752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A053033 (n + 1) + A053033 (n + 1))

end

end A109679.P14597107087980748752

/-! ## A109679.P9667426835658085691

`A000038(n+1)+A053033(n+1)+A053033(n+1)`
-/

namespace A109679.P9667426835658085691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (A053033 (n + 1) + A053033 (n + 1))

end

end A109679.P9667426835658085691

/-! ## A109679.P10218709903297631698

`A053033(n+1)+A053033(n+1)+A005171(A000040(n+1))`
-/

namespace A109679.P10218709903297631698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053033 (n + 1) + (A053033 (n + 1) + A005171 (A000040 (n + 1)).toNat)

end

end A109679.P10218709903297631698

/-! ## A109679.P569420412937636583

`A053033(n+1)+A053033(n+1)/A032741(A038958(n+1))`
-/

namespace A109679.P569420412937636583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053033 (n + 1) : ℚ) + (A053033 (n + 1) : ℚ) / (A032741 (A038958 (n + 1)).toNat : ℚ)

end

end A109679.P569420412937636583

/-!
# A109680: a(n) = 2^(4n-2) - A104403(n).

The programs for A109680, there is no canonical definition to state claims against.
-/

/-! ## A109680.P14347146763908568192

`A025480(2*(n+2))-A082069(A141459(n))`
-/

namespace A109680.P14347146763908568192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (2 * (n + 2)) - A082069 (A141459 n).toNat

end

end A109680.P14347146763908568192

/-! ## A109680.P4692070493648408276

`n+1-A317642(A354785(n+1))²`
-/

namespace A109680.P4692070493648408276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A317642 (A354785 (n + 1)).toNat ^ 2

end

end A109680.P4692070493648408276

/-! ## A109680.P16861800018114409396

`A276331(n)+A040001(A002417(n+1))`
-/

namespace A109680.P16861800018114409396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276331 n + A040001 (A002417 (n + 1)).toNat

end

end A109680.P16861800018114409396

/-! ## A109680.P9892187046856528502

`n+1-A324228(A073703(n+1))`
-/

namespace A109680.P9892187046856528502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A324228 (A073703 (n + 1)).toNat

end

end A109680.P9892187046856528502

/-!
# A109681: "Sloping ternary numbers": write numbers in ternary under each other (right-justified), read diagonals in upward direction, convert to decimal.

The programs for A109681, there is no canonical definition to state claims against.
-/

/-! ## A109681.P2340108518945824991

`A028898(A109683(n))`
-/

namespace A109681.P2340108518945824991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A109683 n).toNat

end

end A109681.P2340108518945824991

/-! ## A109681.P7552143233172445170

`A105108(lt[A290825(n), 2])`
-/

namespace A109681.P7552143233172445170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290825 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105108 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A109681.P7552143233172445170

/-! ## A109681.P10670788969902460349

`A105108(comp[A024023(n+1)])`
-/

namespace A109681.P10670788969902460349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105108 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A109681.P10670788969902460349

/-! ## A109681.P2950674467342441760

`A105108(comp[eq[2, A290825(n)]])`
-/

namespace A109681.P2950674467342441760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290825 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105108 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A109681.P2950674467342441760

/-! ## A109681.P11162256197307542049

`A105108(comp[A233583(ceil(3^(n-1)))])`
-/

namespace A109681.P11162256197307542049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105108 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A109681.P11162256197307542049

/-! ## A109681.P2475652672766639400

`A105108(eq[A290825(n)², A290825(n)])`
-/

namespace A109681.P2475652672766639400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290825 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105108 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A109681.P2475652672766639400

/-! ## A109681.P5046157693195223844

`A105108(eq[A000007(n), A154271(n+1)])`
-/

namespace A109681.P5046157693195223844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105108 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A109681.P5046157693195223844

/-! ## A109681.P13236947043833857793

`A105108(lt[A036580(n), A038502(n+1)])`
-/

namespace A109681.P13236947043833857793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105108 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A109681.P13236947043833857793

/-!
# A109682: Numbers missing from A109681.

The programs for A109682, there is no canonical definition to state claims against.
-/

/-! ## A109682.P16912296177894923101

`Δ[A004525(A024023(n+1))-(n-1)%3]-n`
-/

namespace A109682.P16912296177894923101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A024023 (n + 1)).toNat - Int.tmod ((n : ℤ) - 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A109682.P16912296177894923101

/-! ## A109682.P7702847923813703150

`A286518(A186948(n))+A060188(n+2)`
-/

namespace A109682.P7702847923813703150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286518 (A186948 n).toNat + A060188 (n + 2)

end

end A109682.P7702847923813703150

/-! ## A109682.P5161574626518589190

`A064989(A005179(2*n+3))+A060188(n+2)`
-/

namespace A109682.P5161574626518589190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A005179 (2 * n + 3)).toNat + A060188 (n + 2)

end

end A109682.P5161574626518589190

/-!
# A109683: Ternary equivalents of A109681.

The programs for A109683, there is no canonical definition to state claims against.
-/

/-! ## A109683.P14370820158873527089

`A007089(A109681(n))`
-/

namespace A109683.P14370820158873527089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A109681 n).toNat

end

end A109683.P14370820158873527089

/-! ## A109683.P238837346913039168

`A140267(n)%A165831(lcm(2*n+1, (2*n+1)²+n²+n))`
-/

namespace A109683.P238837346913039168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140267 n) (A165831 (Nat.lcm (2 * n + 1) ((2 * n + 1) ^ 2 + (n ^ 2 + n))))

end

end A109683.P238837346913039168

/-! ## A109683.P11528966404273208854

`A140267(n)%A165831(Δ[n*A063522(n)])`
-/

namespace A109683.P11528966404273208854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A063522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140267 n) (A165831 (f1 (n + 1) - f1 n).toNat)

end

end A109683.P11528966404273208854

/-! ## A109683.P5482986154285649221

`A140267(n)%A091134(A059433(n))`
-/

namespace A109683.P5482986154285649221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140267 n) (A091134 (A059433 n).toNat)

end

end A109683.P5482986154285649221

/-!
# A109684: Ternary equivalents of A109682.

The programs for A109684, there is no canonical definition to state claims against.
-/

/-! ## A109684.P9026698926194472996

`A007089(comp[A109681(n)])`
-/

namespace A109684.P9026698926194472996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109681 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A109684.P9026698926194472996

/-! ## A109684.P11440344714807318137

`A343810(comp[A109681(n)])/4`
-/

namespace A109684.P11440344714807318137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109681 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343810 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 4

end

end A109684.P11440344714807318137

/-! ## A109684.P7330493570102229837

`A007089(A109682(n+1)%p?[2^n+7])`
-/

namespace A109684.P7330493570102229837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (Int.tmod (A109682 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)).toNat

end

end A109684.P7330493570102229837

/-!
# A109686: Smallest number beginning with the digits of n that has exactly n prime factors (counted with multiplicity).

The programs for A109686, there is no canonical definition to state claims against.
-/

/-! ## A109686.P9988688093894936868

`A019550(n+1)-A091238(A002727(n))`
-/

namespace A109686.P9988688093894936868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019550 (n + 1) - A091238 (A002727 n).toNat

end

end A109686.P9988688093894936868

/-!
# A109688: Smallest square that contains exactly n occurrences of the string n.

The programs for A109688, there is no canonical definition to state claims against.
-/

/-! ## A109688.P11320733333758769566

`A179895(n)²`
-/

namespace A109688.P11320733333758769566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179895 n ^ 2

end

end A109688.P11320733333758769566

/-! ## A109688.P9910683140564902497

`A179895(A028310(n))^2`
-/

namespace A109688.P9910683140564902497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179895 (A028310 n).toNat ^ 2

end

end A109688.P9910683140564902497

/-! ## A109688.P4434771043967032815

`A179895(A247808(n+1))^2`
-/

namespace A109688.P4434771043967032815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179895 (A247808 (n + 1)).toNat ^ 2

end

end A109688.P4434771043967032815

/-! ## A109688.P17436015804778834893

`A179895(n)^A074594(n+1)`
-/

namespace A109688.P17436015804778834893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179895 n : ℚ) ^ (A074594 (n + 1) : ℤ)

end

end A109688.P17436015804778834893

/-! ## A109688.P2168208723623139534

`A179895(n)^(A178788(n)+1)`
-/

namespace A109688.P2168208723623139534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179895 n : ℚ) ^ (A178788 n + 1 : ℤ)

end

end A109688.P2168208723623139534

/-!
# A109691: Smallest 5th power that contains exactly n occurrences of the string n.

The programs for A109691, there is no canonical definition to state claims against.
-/

/-! ## A109691.P3944105857256482435

`A096108(A088305(n))^5`
-/

namespace A109691.P3944105857256482435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096108 (A088305 n).toNat ^ 5

end

end A109691.P3944105857256482435

/-!
# A109692: Triangle of coefficients in expansion of (1+x)*(1+3x)*(1+5x)*(1+7x)*...*(1+(2n-1)x).

The programs for A109692, there is no canonical definition to state claims against.
-/

/-! ## A109692.P946101094133740537

`abs(A039758(n))`
-/

namespace A109692.P946101094133740537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A039758 n|

end

end A109692.P946101094133740537

/-! ## A109692.P436250840321582449

`gcd(A000038(n), A039758(n))`
-/

namespace A109692.P436250840321582449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A039758 n)

end

end A109692.P436250840321582449

/-! ## A109692.P16644230258973693738

`lcm(A020985(n), A039758(n))`
-/

namespace A109692.P16644230258973693738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A039758 n)

end

end A109692.P16644230258973693738

/-! ## A109692.P13252343915964872207

`abs(A039757(A002378(n)%A080036(n)))`
-/

namespace A109692.P13252343915964872207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A039757 (Int.tmod (A002378 n) (A080036 n)).toNat|

end

end A109692.P13252343915964872207

/-! ## A109692.P4476655494577616306

`A028338(A061579(n))`
-/

namespace A109692.P4476655494577616306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 (A061579 n).toNat

end

end A109692.P4476655494577616306

/-! ## A109692.P7157674074079783039

`A028338(A114327(n)+n)`
-/

namespace A109692.P7157674074079783039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 (A114327 n + (n : ℤ)).toNat

end

end A109692.P7157674074079783039

/-! ## A109692.P11950219915788725761

`A028338(A038722(n+1)-1)`
-/

namespace A109692.P11950219915788725761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028338 (A038722 (n + 1) - 1).toNat

end

end A109692.P11950219915788725761

/-! ## A109692.P10818104413018878134

`lcm(A034947(n+1), A039757(A061579(n)))`
-/

namespace A109692.P10818104413018878134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034947 (n + 1)) (A039757 (A061579 n).toNat)

end

end A109692.P10818104413018878134

/-!
# A109697: Number of partitions of n into parts each equal to 1 mod 5.

The programs for A109697, there is no canonical definition to state claims against.
-/

/-! ## A109697.P8679903763623721619

`∑[A277264(n)]`
-/

namespace A109697.P8679903763623721619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109697.P8679903763623721619

/-! ## A109697.P4659793959351859723

`a(n-1)+A277264(n)+A000007(n)` with `a(0)=1, a(1)=1`
-/

namespace A109697.P4659793959351859723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (A277264 n + A000007 n)

end

end A109697.P4659793959351859723

/-! ## A109697.P4241568190384994939

`A046774(n)-A046786(n)`
-/

namespace A109697.P4241568190384994939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046774 n - A046786 n

end

end A109697.P4241568190384994939

/-! ## A109697.P7238534205062156112

`A046774(n)+A046786(n)*A153881(n+1)`
-/

namespace A109697.P7238534205062156112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046774 n + A046786 n * A153881 (n + 1)

end

end A109697.P7238534205062156112

/-!
# A109698: Number of partitions of n into parts each congruent to 2 mod 5.

The programs for A109698, there is no canonical definition to state claims against.
-/

/-! ## A109698.P17042902949324235969

`A046773(n)-A046785(n)`
-/

namespace A109698.P17042902949324235969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046773 n - A046785 n

end

end A109698.P17042902949324235969

/-! ## A109698.P17115132286108557988

`A046773(n)+A046785(n)/A008683(A003629(n+1))`
-/

namespace A109698.P17115132286108557988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046773 n : ℚ) + (A046785 n : ℚ) / (A008683 (A003629 (n + 1)).toNat : ℚ)

end

end A109698.P17115132286108557988

/-! ## A109698.P5499560443249404411

`A202087(n)%A168092(A225943(n+1))`
-/

namespace A109698.P5499560443249404411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202087 n) (A168092 (A225943 (n + 1)).toNat)

end

end A109698.P5499560443249404411

/-! ## A109698.P13874925907310209181

`(A202087(n)^A298589(n+1))%5`
-/

namespace A109698.P13874925907310209181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A202087 n : ℚ) ^ (A298589 (n + 1) : ℤ))) 5

end

end A109698.P13874925907310209181

/-! ## A109698.P14651942487722489771

`A202087(n)%A168092(A006128(n))`
-/

namespace A109698.P14651942487722489771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202087 n) (A168092 (A006128 n).toNat)

end

end A109698.P14651942487722489771

/-!
# A109699: Number of partitions of n into parts each equal to 3 mod 5.

The programs for A109699, there is no canonical definition to state claims against.
-/

/-! ## A109699.P17214608332066032829

`A046772(n)-A046784(n)`
-/

namespace A109699.P17214608332066032829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046772 n - A046784 n

end

end A109699.P17214608332066032829

/-! ## A109699.P11763372178611465893

`A046776(n)%A263643(A167614(n+1))`
-/

namespace A109699.P11763372178611465893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046776 n) (A263643 (A167614 (n + 1)).toNat)

end

end A109699.P11763372178611465893

/-! ## A109699.P7675774820563308672

`A005136(3*A263142(n))`
-/

namespace A109699.P7675774820563308672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (3 * A263142 n).toNat

end

end A109699.P7675774820563308672

/-! ## A109699.P7912061904576922178

`Δ[A134914(A353863((n+1)²-n²))]`
-/

namespace A109699.P7912061904576922178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (A353863 ((n + 1) ^ 2 - n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109699.P7912061904576922178

