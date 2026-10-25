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
import Seq.B000.C015
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A206800: Riordan array (1/(1-3*x+x^2), x*(1-x)/(1-3*x+x^2)).

The programs for A206800, there is no canonical definition to state claims against.
-/

/-! ## A206800.P7011910997884156095

`A210741(A038722(n+1))`
-/

namespace A206800.P7011910997884156095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210741 (A038722 (n + 1)).toNat

end

end A206800.P7011910997884156095

/-! ## A206800.P1859506278359623924

`A210741(A061579(n)+1)`
-/

namespace A206800.P1859506278359623924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210741 (A061579 n + 1).toNat

end

end A206800.P1859506278359623924

/-! ## A206800.P604911437267557996

`A210741(∑[A198954(n)]-n)`
-/

namespace A206800.P604911437267557996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210741 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A206800.P604911437267557996

/-! ## A206800.P5403991220602307415

`A210741(A114327(n)+1+n)`
-/

namespace A206800.P5403991220602307415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210741 (A114327 n + 1 + (n : ℤ)).toNat

end

end A206800.P5403991220602307415

/-! ## A206800.P4893366450020762728

`A210741(A093995(n+1)-n)`
-/

namespace A206800.P4893366450020762728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210741 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A206800.P4893366450020762728

/-! ## A206800.P12081034473629523089

`A210741(A002024(n+1)²-n)`
-/

namespace A206800.P12081034473629523089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210741 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A206800.P12081034473629523089

/-!
# A206801: a(n) equals the sum of the coefficients of x^(n-1) in A(x)^k as k=1..n, where A(x) = Sum_{n>=0} a(n)*x^n.

The programs for A206801, there is no canonical definition to state claims against.
-/

/-! ## A206801.P18256028168954721544

`A135862(n)-A094176(A094176(n))`
-/

namespace A206801.P18256028168954721544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135862 n - A094176 (A094176 n).toNat

end

end A206801.P18256028168954721544

/-! ## A206801.P16791346785200917334

`A135862(n)-A341025(A148701(n))`
-/

namespace A206801.P16791346785200917334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135862 n - A341025 ((A148701 n).toNat + 120)

end

end A206801.P16791346785200917334

/-!
# A206802: a(n) = (1/2)*A185382(n).

The programs for A206802, the canonical program `A206802.P8582180156384379680` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206802 has offset 2).

The definition of A206802 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185382, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A206802.P8582180156384379680

`1/2*A185382(n+2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A206802

/-- `1/2*A185382(n+2)` -/
def P8582180156384379680.Spec : Prop :=
  ∀ n, P8582180156384379680.a n = (A206802 (n + 2) : ℚ)

end A206802

/-! ## A206802.P14524499921720756306

`∑[(n+1)*A028334(n+2)]`
-/

namespace A206802.P14524499921720756306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A028334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206802.P14524499921720756306

namespace A206802

/-- `∑[(n+1)*A028334(n+2)]` -/
def P14524499921720756306.Spec : Prop :=
  ∀ n, P14524499921720756306.a n = A206802 (n + 2)

end A206802

/-! ## A206802.P6853858732573229766

`∑[(n+1)*Δ[p?[2*n+1]/2]]`
-/

namespace A206802.P6853858732573229766
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206802.P6853858732573229766

namespace A206802

/-- `∑[(n+1)*Δ[p?[2*n+1]/2]]` -/
def P6853858732573229766.Spec : Prop :=
  ∀ n, P6853858732573229766.a n = (A206802 (n + 2) : ℚ)

end A206802

/-! ## A206802.P2251437731549849897

`A185382(n+2)/2`
-/

namespace A206802.P2251437731549849897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185382 (n + 2) : ℚ) / 2

end

end A206802.P2251437731549849897

namespace A206802

/-- `A185382(n+2)/2` -/
def P2251437731549849897.Spec : Prop :=
  ∀ n, P2251437731549849897.a n = (A206802 (n + 2) : ℚ)

end A206802

/-! ## A206802.P2075958951516962649

`∑[(n+1)*Δ[A005097(n+1)]]`
-/

namespace A206802.P2075958951516962649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206802.P2075958951516962649

namespace A206802

/-- `∑[(n+1)*Δ[A005097(n+1)]]` -/
def P2075958951516962649.Spec : Prop :=
  ∀ n, P2075958951516962649.a n = A206802 (n + 2)

end A206802

/-! ## A206802.P16978883267488118476

`A001281(A185382(n+2))`
-/

namespace A206802.P16978883267488118476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A185382 (n + 2)).toNat

end

end A206802.P16978883267488118476

namespace A206802

/-- `A001281(A185382(n+2))` -/
def P16978883267488118476.Spec : Prop :=
  ∀ n, P16978883267488118476.a n = A206802 (n + 2)

end A206802

/-!
# A206803: Sum_{0

The programs for A206803, the canonical program `A206803.P2151029632934271645` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206803 has offset 2).

The definition of A206803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206803.P1969367431452642140

`2*A206804(n+2)`
-/

namespace A206803.P1969367431452642140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A206804 (n + 2)

end

end A206803.P1969367431452642140

namespace A206803

/-- `2*A206804(n+2)` -/
def P1969367431452642140.Spec : Prop :=
  ∀ n, P1969367431452642140.a n = A206803 (n + 2)

end A206803

/-! ## A206803.P2151029632934271645

`∑[2*A206802(n+2)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A206803

/-- `∑[2*A206802(n+2)]` -/
def P2151029632934271645.Spec : Prop :=
  ∀ n, P2151029632934271645.a n = A206803 (n + 2)

theorem P2151029632934271645.correct : P2151029632934271645.Spec := by
  intro n
  simp only [A206803, Nat.add_sub_cancel]

end A206803

/-! ## A206803.P5514909309246416402

`∑[∑[(n+1)*A001223(n+2)]]`
-/

namespace A206803.P5514909309246416402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001223 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206803.P5514909309246416402

namespace A206803

/-- `∑[∑[(n+1)*A001223(n+2)]]` -/
def P5514909309246416402.Spec : Prop :=
  ∀ n, P5514909309246416402.a n = A206803 (n + 2)

end A206803

/-! ## A206803.P17181797650399597580

`∑[∑[(n+1)*(A176246(n+1)+1)]]`
-/

namespace A206803.P17181797650399597580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A176246 (n + 1) + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206803.P17181797650399597580

namespace A206803

/-- `∑[∑[(n+1)*(A176246(n+1)+1)]]` -/
def P17181797650399597580.Spec : Prop :=
  ∀ n, P17181797650399597580.a n = A206803 (n + 2)

end A206803

/-! ## A206803.P11778801081597262776

`2*∑[∑[(n+1)*A028334(n+2)]]`
-/

namespace A206803.P11778801081597262776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A028334 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206803.P11778801081597262776

namespace A206803

/-- `2*∑[∑[(n+1)*A028334(n+2)]]` -/
def P11778801081597262776.Spec : Prop :=
  ∀ n, P11778801081597262776.a n = A206803 (n + 2)

end A206803

/-! ## A206803.P13709744088925250363

`∑[A185382(n+2)]`
-/

namespace A206803.P13709744088925250363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185382 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206803.P13709744088925250363

namespace A206803

/-- `∑[A185382(n+2)]` -/
def P13709744088925250363.Spec : Prop :=
  ∀ n, P13709744088925250363.a n = A206803 (n + 2)

end A206803

/-! ## A206803.P6675162085421538037

`∑[∑[(n+1)*Δ[A065091(n+1)]]]`
-/

namespace A206803.P6675162085421538037
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206803.P6675162085421538037

namespace A206803

/-- `∑[∑[(n+1)*Δ[A065091(n+1)]]]` -/
def P6675162085421538037.Spec : Prop :=
  ∀ n, P6675162085421538037.a n = A206803 (n + 2)

end A206803

/-! ## A206803.P18440316203300020044

`A206804(n+2)+A206804(n+3)-A206802(n+3)`
-/

namespace A206803.P18440316203300020044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206804 (n + 2) + (A206804 (n + 3) - A206802 (n + 3))

end

end A206803.P18440316203300020044

namespace A206803

/-- `A206804(n+2)+A206804(n+3)-A206802(n+3)` -/
def P18440316203300020044.Spec : Prop :=
  ∀ n, P18440316203300020044.a n = A206803 (n + 2)

end A206803

/-! ## A206803.P4076037712855045419

`∑[∑[(n+1)*Δ[A000040(n+2)]]]`
-/

namespace A206803.P4076037712855045419
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206803.P4076037712855045419

namespace A206803

/-- `∑[∑[(n+1)*Δ[A000040(n+2)]]]` -/
def P4076037712855045419.Spec : Prop :=
  ∀ n, P4076037712855045419.a n = A206803 (n + 2)

end A206803

/-! ## A206803.P2394050908999092613

`∑[∑[(n+1)*A134735(2*(n+2))]]`
-/

namespace A206803.P2394050908999092613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A134735 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206803.P2394050908999092613

namespace A206803

/-- `∑[∑[(n+1)*A134735(2*(n+2))]]` -/
def P2394050908999092613.Spec : Prop :=
  ∀ n, P2394050908999092613.a n = A206803 (n + 2)

end A206803

/-!
# A206804: (1/2)*A206803.

The programs for A206804, the canonical program `A206804.P1242575260079652548` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206804 has offset 2).

The definition of A206804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206804.P1242575260079652548

`∑[A206802(n+2)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A206804

/-- `∑[A206802(n+2)]` -/
def P1242575260079652548.Spec : Prop :=
  ∀ n, P1242575260079652548.a n = A206804 (n + 2)

theorem P1242575260079652548.correct : P1242575260079652548.Spec := by
  intro n
  simp only [A206804, Nat.add_sub_cancel]

end A206804

/-! ## A206804.P18250415472483050073

`A206803(n+2)/2`
-/

namespace A206804.P18250415472483050073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206803 (n + 2) : ℚ) / 2

end

end A206804.P18250415472483050073

namespace A206804

/-- `A206803(n+2)/2` -/
def P18250415472483050073.Spec : Prop :=
  ∀ n, P18250415472483050073.a n = (A206804 (n + 2) : ℚ)

end A206804

/-! ## A206804.P12013069331641282894

`∑[∑[(n+1)*A028334(n+2)]]`
-/

namespace A206804.P12013069331641282894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A028334 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206804.P12013069331641282894

namespace A206804

/-- `∑[∑[(n+1)*A028334(n+2)]]` -/
def P12013069331641282894.Spec : Prop :=
  ∀ n, P12013069331641282894.a n = A206804 (n + 2)

end A206804

/-! ## A206804.P3665095692352599380

`∑[∑[(n+1)*Δ[p?[2*n+1]/2]]]`
-/

namespace A206804.P3665095692352599380
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n) : ℚ) / 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (f3 (n + 1) - f3 n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206804.P3665095692352599380

namespace A206804

/-- `∑[∑[(n+1)*Δ[p?[2*n+1]/2]]]` -/
def P3665095692352599380.Spec : Prop :=
  ∀ n, P3665095692352599380.a n = (A206804 (n + 2) : ℚ)

end A206804

/-! ## A206804.P3314224094536754921

`∑[A185382(n+2)/2]`
-/

namespace A206804.P3314224094536754921
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185382 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206804.P3314224094536754921

namespace A206804

/-- `∑[A185382(n+2)/2]` -/
def P3314224094536754921.Spec : Prop :=
  ∀ n, P3314224094536754921.a n = (A206804 (n + 2) : ℚ)

end A206804

/-!
# A206805: Position of 2^n when {2^j} and {3^k} are jointly ranked; complement of A206807.

The programs for A206805, the canonical program `A206805.P5367493690027122050` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206805 has offset 1).

The definition of A206805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206805.P5367493690027122050

`n+1+floor((n+1)*log(2)/log(3))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A206805

/-- `n+1+floor((n+1)*log(2)/log(3))` -/
def P5367493690027122050.Spec : Prop :=
  ∀ n, P5367493690027122050.a n = A206805 (n + 1)

theorem P5367493690027122050.correct : P5367493690027122050.Spec := by
  intro n
  simp only [A206805, Nat.add_sub_cancel]

end A206805

/-! ## A206805.P11023565855004975901

`∑[A022924(n)+1]`
-/

namespace A206805.P11023565855004975901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022924 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206805.P11023565855004975901

namespace A206805

/-- `∑[A022924(n)+1]` -/
def P11023565855004975901.Spec : Prop :=
  ∀ n, P11023565855004975901.a n = A206805 (n + 1)

end A206805

/-! ## A206805.P14297215435838181548

`A023443(A226720(n+1))`
-/

namespace A206805.P14297215435838181548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A226720 (n + 1)).toNat

end

end A206805.P14297215435838181548

namespace A206805

/-- `A023443(A226720(n+1))` -/
def P14297215435838181548.Spec : Prop :=
  ∀ n, P14297215435838181548.a n = A206805 (n + 1)

end A206805

/-! ## A206805.P3034286179513254264

`A085240(A206807(n+1))`
-/

namespace A206805.P3034286179513254264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085240 (A206807 (n + 1)).toNat

end

end A206805.P3034286179513254264

namespace A206805

/-- `A085240(A206807(n+1))` -/
def P3034286179513254264.Spec : Prop :=
  ∀ n, P3034286179513254264.a n = A206805 (n + 1)

end A206805

/-! ## A206805.P15196646557141072368

`A085240(record[A085240(n+1)])`
-/

namespace A206805.P15196646557141072368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085240 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A206805.P15196646557141072368

namespace A206805

/-- `A085240(record[A085240(n+1)])` -/
def P15196646557141072368.Spec : Prop :=
  ∀ n, P15196646557141072368.a n = A206805 (n + 1)

end A206805

/-! ## A206805.P10427967129901169803

`∑[A020915(Δ[2*A020915(n)])]`
-/

namespace A206805.P10427967129901169803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020915 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206805.P10427967129901169803

namespace A206805

/-- `∑[A020915(Δ[2*A020915(n)])]` -/
def P10427967129901169803.Spec : Prop :=
  ∀ n, P10427967129901169803.a n = A206805 (n + 1)

end A206805

/-! ## A206805.P15605243913443190810

`Δ[A000124(n)-(n-A022331(n))]`
-/

namespace A206805.P15605243913443190810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - ((n : ℤ) - A022331 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206805.P15605243913443190810

namespace A206805

/-- `Δ[A000124(n)-(n-A022331(n))]` -/
def P15605243913443190810.Spec : Prop :=
  ∀ n, P15605243913443190810.a n = A206805 (n + 1)

end A206805

/-! ## A206805.P4447181478143287139

`eq[A085239(n+1), A236213(n+1)]`
-/

namespace A206805.P4447181478143287139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236213 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206805.P4447181478143287139

namespace A206805

/-- `eq[A085239(n+1), A236213(n+1)]` -/
def P4447181478143287139.Spec : Prop :=
  ∀ n, (P4447181478143287139.a n : ℤ) = A206805 (n + 1)

end A206805

/-! ## A206805.P1495990310594486847

`A138467(A206812(n+1))`
-/

namespace A206805.P1495990310594486847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138467 (A206812 (n + 1)).toNat

end

end A206805.P1495990310594486847

namespace A206805

/-- `A138467(A206812(n+1))` -/
def P1495990310594486847.Spec : Prop :=
  ∀ n, P1495990310594486847.a n = A206805 (n + 1)

end A206805

/-! ## A206805.P12868727236364827445

`A083277(A054569(n+1))`
-/

namespace A206805.P12868727236364827445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (A054569 (n + 1)).toNat

end

end A206805.P12868727236364827445

namespace A206805

/-- `A083277(A054569(n+1))` -/
def P12868727236364827445.Spec : Prop :=
  ∀ n, P12868727236364827445.a n = A206805 (n + 1)

end A206805

/-!
# A206806: Sum_{0

The programs for A206806, the canonical program `A206806.P12091066182297734802` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206806 has offset 2).

The definition of A206806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206806.P12091066182297734802

`(n+2)*(1+3*(-1)^(n+2)-2*(n+2)+2*(n+2)²+2*(n+2)^3)/48`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A206806

/-- `(n+2)*(1+3*(-1)^(n+2)-2*(n+2)+2*(n+2)²+2*(n+2)^3)/48` -/
def P12091066182297734802.Spec : Prop :=
  ∀ n, P12091066182297734802.a n = (A206806 (n + 2) : ℚ)

end A206806

/-! ## A206806.P6874352558116675842

`∑[∑[(n+1)*∑[log2(gcd(2, n))]]]`
-/

namespace A206806.P6874352558116675842
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206806.P6874352558116675842

namespace A206806

/-- `∑[∑[(n+1)*∑[log2(gcd(2, n))]]]` -/
def P6874352558116675842.Spec : Prop :=
  ∀ n, P6874352558116675842.a n = (A206806 (n + 2) : ℝ)

end A206806

/-! ## A206806.P16001369986496142816

`ceil(∑[∑[(n+1)*and(n+2, -2)/2]])`
-/

namespace A206806.P16001369986496142816
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * Int.land (n + 2 : ℤ) (-2) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A206806.P16001369986496142816

namespace A206806

/-- `ceil(∑[∑[(n+1)*and(n+2, -2)/2]])` -/
def P16001369986496142816.Spec : Prop :=
  ∀ n, P16001369986496142816.a n = A206806 (n + 2)

end A206806

/-! ## A206806.P9198638854056101063

`floor(∑[∑[(n+1)*∑[1-a(n-1)]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A206806.P9198638854056101063
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  1 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206806.P9198638854056101063

namespace A206806

/-- `floor(∑[∑[(n+1)*∑[1-a(n-1)]]])` -/
def P9198638854056101063.Spec : Prop :=
  ∀ n, P9198638854056101063.a n = A206806 (n + 2)

end A206806

/-! ## A206806.P16304243816883193105

`ceil(∑[∑[(and(1, n+1)+1+n)*(n+1)/2]])`
-/

namespace A206806.P16304243816883193105
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 (n + 1) + 1 + n) * (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A206806.P16304243816883193105

namespace A206806

/-- `ceil(∑[∑[(and(1, n+1)+1+n)*(n+1)/2]])` -/
def P16304243816883193105.Spec : Prop :=
  ∀ n, P16304243816883193105.a n = A206806 (n + 2)

end A206806

/-! ## A206806.P1938650044105324725

`round(∑[∑[(and(1, n+1)+1+n)*(n+1)/2]])`
-/

namespace A206806.P1938650044105324725
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 (n + 1) + 1 + n) * (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206806.P1938650044105324725

namespace A206806

/-- `round(∑[∑[(and(1, n+1)+1+n)*(n+1)/2]])` -/
def P1938650044105324725.Spec : Prop :=
  ∀ n, P1938650044105324725.a n = A206806 (n + 2)

end A206806

/-! ## A206806.P16365491485185080318

`∑[(n+1)*∑[1-a(n-1)]]+a(n-1)` with `a(0)=1`
-/

namespace A206806.P16365491485185080318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A206806.P16365491485185080318

namespace A206806

/-- `∑[(n+1)*∑[1-a(n-1)]]+a(n-1)` -/
def P16365491485185080318.Spec : Prop :=
  ∀ n, P16365491485185080318.a n = A206806 (n + 2)

end A206806

/-! ## A206806.P9722790089101199960

`∑[A049778(n+1)]`
-/

namespace A206806.P9722790089101199960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206806.P9722790089101199960

namespace A206806

/-- `∑[A049778(n+1)]` -/
def P9722790089101199960.Spec : Prop :=
  ∀ n, P9722790089101199960.a n = A206806 (n + 2)

end A206806

/-! ## A206806.P16203857257036657264

`∑[∑[A093005(n+1)]]`
-/

namespace A206806.P16203857257036657264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206806.P16203857257036657264

namespace A206806

/-- `∑[∑[A093005(n+1)]]` -/
def P16203857257036657264.Spec : Prop :=
  ∀ n, P16203857257036657264.a n = A206806 (n + 2)

end A206806

/-! ## A206806.P2163762074752826769

`∑[∑[∑[n+1]]]-A006918(n)`
-/

namespace A206806.P2163762074752826769
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A006918 n

end

end A206806.P2163762074752826769

namespace A206806

/-- `∑[∑[∑[n+1]]]-A006918(n)` -/
def P2163762074752826769.Spec : Prop :=
  ∀ n, P2163762074752826769.a n = A206806 (n + 2)

end A206806

/-! ## A206806.P7477554315731311446

`A394293(n+1)+A053307(n)`
-/

namespace A206806.P7477554315731311446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394293 (n + 1) + A053307 n

end

end A206806.P7477554315731311446

namespace A206806

/-- `A394293(n+1)+A053307(n)` -/
def P7477554315731311446.Spec : Prop :=
  ∀ n, P7477554315731311446.a n = A206806 (n + 2)

end A206806

/-! ## A206806.P9785128828507934376

`2*A007009(n+1)-A001752(n)`
-/

namespace A206806.P9785128828507934376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007009 (n + 1) - A001752 n

end

end A206806.P9785128828507934376

namespace A206806

/-- `2*A007009(n+1)-A001752(n)` -/
def P9785128828507934376.Spec : Prop :=
  ∀ n, P9785128828507934376.a n = A206806 (n + 2)

end A206806

/-! ## A206806.P5015035021685976734

`∑[2*A023855(n+1)]-A023855(n+1)`
-/

namespace A206806.P5015035021685976734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023855 (n + 1)

end

end A206806.P5015035021685976734

namespace A206806

/-- `∑[2*A023855(n+1)]-A023855(n+1)` -/
def P5015035021685976734.Spec : Prop :=
  ∀ n, P5015035021685976734.a n = A206806 (n + 2)

end A206806

/-! ## A206806.P6738564252907149679

`A006918(n+1)+∑[∑[A007590(n+1)]]`
-/

namespace A206806.P6738564252907149679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206806.P6738564252907149679

namespace A206806

/-- `A006918(n+1)+∑[∑[A007590(n+1)]]` -/
def P6738564252907149679.Spec : Prop :=
  ∀ n, P6738564252907149679.a n = A206806 (n + 2)

end A206806

/-! ## A206806.P15838042140157386688

`A213850(n+1)+A213850(n+2)-A049778(n+2)`
-/

namespace A206806.P15838042140157386688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213850 (n + 1) + (A213850 (n + 2) - A049778 (n + 2))

end

end A206806.P15838042140157386688

namespace A206806

/-- `A213850(n+1)+A213850(n+2)-A049778(n+2)` -/
def P15838042140157386688.Spec : Prop :=
  ∀ n, P15838042140157386688.a n = A206806 (n + 2)

end A206806

/-! ## A206806.P12770396079180181595

`A034828(n+2)+A000332(n+3)`
-/

namespace A206806.P12770396079180181595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (n + 2) + A000332 (n + 3)

end

end A206806.P12770396079180181595

namespace A206806

/-- `A034828(n+2)+A000332(n+3)` -/
def P12770396079180181595.Spec : Prop :=
  ∀ n, P12770396079180181595.a n = A206806 (n + 2)

end A206806

/-! ## A206806.P1803042246293990698

`∑[(n+1)*(A002265(2*n)+1)]+a(n-1)` with `a(0)=1`
-/

namespace A206806.P1803042246293990698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A002265 (2 * n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A206806.P1803042246293990698

namespace A206806

/-- `∑[(n+1)*(A002265(2*n)+1)]+a(n-1)` -/
def P1803042246293990698.Spec : Prop :=
  ∀ n, P1803042246293990698.a n = A206806 (n + 2)

end A206806

/-! ## A206806.P8810867139704657379

`A109900(n+1)+A096338(2*n)/2`
-/

namespace A206806.P8810867139704657379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109900 (n + 1) : ℚ) + (A096338 (2 * n) : ℚ) / 2

end

end A206806.P8810867139704657379

namespace A206806

/-- `A109900(n+1)+A096338(2*n)/2` -/
def P8810867139704657379.Spec : Prop :=
  ∀ n, P8810867139704657379.a n = (A206806 (n + 2) : ℚ)

end A206806

/-!
# A206807: Position of 3^n when {2^j} and {3^k} are jointly ranked; complement of A206805.

The programs for A206807, the canonical program `A206807.P2657362194524357236` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206807 has offset 1).

The definition of A206807 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206807.P2657362194524357236

`n+1+floor((n+1)*log2(3))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A206807

/-- `n+1+floor((n+1)*log2(3))` -/
def P2657362194524357236.Spec : Prop :=
  ∀ n, P2657362194524357236.a n = A206807 (n + 1)

theorem P2657362194524357236.correct : P2657362194524357236.Spec := by
  intro n
  simp only [A206807, Nat.add_sub_cancel]

end A206807

/-! ## A206807.P1490073617614817794

`abs(ceil(log2(6)*xor(n, -1)))`
-/

namespace A206807.P1490073617614817794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈Real.logb 2 (6 : ℝ) * (Int.xor (n : ℤ) (-1) : ℝ)⌉|

end

end A206807.P1490073617614817794

namespace A206807

/-- `abs(ceil(log2(6)*xor(n, -1)))` -/
def P1490073617614817794.Spec : Prop :=
  ∀ n, P1490073617614817794.a n = A206807 (n + 1)

end A206807

/-! ## A206807.P12498906686154390204

`record[floor(abs(1-n)*log2(6))]`
-/

namespace A206807.P12498906686154390204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|1 - (n : ℤ)| : ℝ) * Real.logb 2 (6 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206807.P12498906686154390204

namespace A206807

/-- `record[floor(abs(1-n)*log2(6))]` -/
def P12498906686154390204.Spec : Prop :=
  ∀ n, P12498906686154390204.a n = A206807 (n + 1)

end A206807

/-! ## A206807.P5667482823285305836

`∑[Δ[floor(n*log2(6))]%11]`
-/

namespace A206807.P5667482823285305836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (6 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206807.P5667482823285305836

namespace A206807

/-- `∑[Δ[floor(n*log2(6))]%11]` -/
def P5667482823285305836.Spec : Prop :=
  ∀ n, P5667482823285305836.a n = A206807 (n + 1)

end A206807

/-! ## A206807.P5148675627728402586

`∑[A022921(n)+1]`
-/

namespace A206807.P5148675627728402586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022921 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206807.P5148675627728402586

namespace A206807

/-- `∑[A022921(n)+1]` -/
def P5148675627728402586.Spec : Prop :=
  ∀ n, P5148675627728402586.a n = A206807 (n + 1)

end A206807

/-! ## A206807.P10248342874198563614

`∑[Δ[A056576(n)]+1]`
-/

namespace A206807.P10248342874198563614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206807.P10248342874198563614

namespace A206807

/-- `∑[Δ[A056576(n)]+1]` -/
def P10248342874198563614.Spec : Prop :=
  ∀ n, P10248342874198563614.a n = A206807 (n + 1)

end A206807

/-! ## A206807.P16861232127962394853

`∑[char[A325913(n+1)]+2]`
-/

namespace A206807.P16861232127962394853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325913 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206807.P16861232127962394853

namespace A206807

/-- `∑[char[A325913(n+1)]+2]` -/
def P16861232127962394853.Spec : Prop :=
  ∀ n, (P16861232127962394853.a n : ℤ) = A206807 (n + 1)

end A206807

/-! ## A206807.P11091128182170527887

`A226720(A056576(n+1))`
-/

namespace A206807.P11091128182170527887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226720 (A056576 (n + 1)).toNat

end

end A206807.P11091128182170527887

namespace A206807

/-- `A226720(A056576(n+1))` -/
def P11091128182170527887.Spec : Prop :=
  ∀ n, P11091128182170527887.a n = A206807 (n + 1)

end A206807

/-! ## A206807.P6123130872300123553

`A226720(A020914(n+1)-1)`
-/

namespace A206807.P6123130872300123553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226720 (A020914 (n + 1) - 1).toNat

end

end A206807.P6123130872300123553

namespace A206807

/-- `A226720(A020914(n+1)-1)` -/
def P6123130872300123553.Spec : Prop :=
  ∀ n, P6123130872300123553.a n = A206807 (n + 1)

end A206807

/-! ## A206807.P15509885186380904769

`A226720(A122437(n+2)-(n+2))`
-/

namespace A206807.P15509885186380904769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226720 (A122437 (n + 2) - (n + 2 : ℤ)).toNat

end

end A206807.P15509885186380904769

namespace A206807

/-- `A226720(A122437(n+2)-(n+2))` -/
def P15509885186380904769.Spec : Prop :=
  ∀ n, P15509885186380904769.a n = A206807 (n + 1)

end A206807

/-! ## A206807.P5529263290952782619

`filter[n+1, A085242(#)]`
-/

namespace A206807.P5529263290952782619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085242 (f1 j) = 1) n)

end

end A206807.P5529263290952782619

namespace A206807

/-- `filter[n+1, A085242(#)]` -/
def P5529263290952782619.Spec : Prop :=
  ∀ n, (P5529263290952782619.a n : ℤ) = A206807 (n + 1)

end A206807

/-! ## A206807.P4358471787859395302

`A023443(A122437(n+2))`
-/

namespace A206807.P4358471787859395302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A122437 (n + 2)).toNat

end

end A206807.P4358471787859395302

namespace A206807

/-- `A023443(A122437(n+2))` -/
def P4358471787859395302.Spec : Prop :=
  ∀ n, P4358471787859395302.a n = A206807 (n + 1)

end A206807

/-! ## A206807.P6092706735252242044

`eq[A085239(n+1), A113923(n)]`
-/

namespace A206807.P6092706735252242044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113923 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206807.P6092706735252242044

namespace A206807

/-- `eq[A085239(n+1), A113923(n)]` -/
def P6092706735252242044.Spec : Prop :=
  ∀ n, (P6092706735252242044.a n : ℤ) = A206807 (n + 1)

end A206807

/-! ## A206807.P15698557969192349000

`A136409(A020914(A020914(n+1)+n))`
-/

namespace A206807.P15698557969192349000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136409 (A020914 (A020914 (n + 1) + (n : ℤ)).toNat).toNat

end

end A206807.P15698557969192349000

namespace A206807

/-- `A136409(A020914(A020914(n+1)+n))` -/
def P15698557969192349000.Spec : Prop :=
  ∀ n, P15698557969192349000.a n = A206807 (n + 1)

end A206807

/-! ## A206807.P8458677222492090881

`A085240(A206805(n+1))`
-/

namespace A206807.P8458677222492090881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085240 (A206805 (n + 1)).toNat

end

end A206807.P8458677222492090881

namespace A206807

/-- `A085240(A206805(n+1))` -/
def P8458677222492090881.Spec : Prop :=
  ∀ n, P8458677222492090881.a n = A206807 (n + 1)

end A206807

/-! ## A206807.P17042061597032889916

`ceil(log2(A169604(n)))`
-/

namespace A206807.P17042061597032889916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A169604 n : ℝ)⌉

end

end A206807.P17042061597032889916

namespace A206807

/-- `ceil(log2(A169604(n)))` -/
def P17042061597032889916.Spec : Prop :=
  ∀ n, P17042061597032889916.a n = A206807 (n + 1)

end A206807

/-! ## A206807.P1808696613902534116

`ceil(log2(A199318(n)))`
-/

namespace A206807.P1808696613902534116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A199318 n : ℝ)⌉

end

end A206807.P1808696613902534116

namespace A206807

/-- `ceil(log2(A199318(n)))` -/
def P1808696613902534116.Spec : Prop :=
  ∀ n, P1808696613902534116.a n = A206807 (n + 1)

end A206807

/-!
# A206808: a(n) = Sum_{0

The programs for A206808, the canonical program `A206808.P8864800927167030145` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206808 has offset 2).

The definition of A206808 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206808.P8864800927167030145

`(3*(n+2)^4-2*(n+2)^3-(n+2)²)/4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A206808

/-- `(3*(n+2)^4-2*(n+2)^3-(n+2)²)/4` -/
def P8864800927167030145.Spec : Prop :=
  ∀ n, P8864800927167030145.a n = (A206808 (n + 2) : ℚ)

end A206808

/-! ## A206808.P13535341585485110670

`(n+2)^4-C(n+3, 2)²`
-/

namespace A206808.P13535341585485110670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 4 : ℤ) - (Nat.choose (n + 3) 2 ^ 2 : ℤ)

end

end A206808.P13535341585485110670

namespace A206808

/-- `(n+2)^4-C(n+3, 2)²` -/
def P13535341585485110670.Spec : Prop :=
  ∀ n, P13535341585485110670.a n = A206808 (n + 2)

end A206808

/-! ## A206808.P9461766315672941008

`C((n+2)², 2)+∑[n+1]²`
-/

namespace A206808.P9461766315672941008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 2) ^ 2) 2 + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A206808.P9461766315672941008

namespace A206808

/-- `C((n+2)², 2)+∑[n+1]²` -/
def P9461766315672941008.Spec : Prop :=
  ∀ n, (P9461766315672941008.a n : ℤ) = A206808 (n + 2)

end A206808

/-! ## A206808.P8807826383681911334

`(n+2)²²-Δ[C(n+3, 3)]²`
-/

namespace A206808.P8807826383681911334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2) ^ 2 : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A206808.P8807826383681911334

namespace A206808

/-- `(n+2)²²-Δ[C(n+3, 3)]²` -/
def P8807826383681911334.Spec : Prop :=
  ∀ n, P8807826383681911334.a n = A206808 (n + 2)

end A206808

/-! ## A206808.P3950117065133414313

`∑[n+1]*Δ[(n+2)*C(n+2, 2)]`
-/

namespace A206808.P3950117065133414313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.choose (n + 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A206808.P3950117065133414313

namespace A206808

/-- `∑[n+1]*Δ[(n+2)*C(n+2, 2)]` -/
def P3950117065133414313.Spec : Prop :=
  ∀ n, P3950117065133414313.a n = A206808 (n + 2)

end A206808

/-! ## A206808.P1833199493825192634

`(∑[n+1]+lcm(n+2, n+3))*∑[n+1]`
-/

namespace A206808.P1833199493825192634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm (n + 2) (n + 3)) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A206808.P1833199493825192634

namespace A206808

/-- `(∑[n+1]+lcm(n+2, n+3))*∑[n+1]` -/
def P1833199493825192634.Spec : Prop :=
  ∀ n, (P1833199493825192634.a n : ℤ) = A206808 (n + 2)

end A206808

/-! ## A206808.P5457158093021116536

`∑[∑[A304163(n+1)]]`
-/

namespace A206808.P5457158093021116536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304163 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206808.P5457158093021116536

namespace A206808

/-- `∑[∑[A304163(n+1)]]` -/
def P5457158093021116536.Spec : Prop :=
  ∀ n, P5457158093021116536.a n = A206808 (n + 2)

end A206808

/-! ## A206808.P13041710413716065270

`∑[A143943(n+1)-(n+1)]`
-/

namespace A206808.P13041710413716065270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143943 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206808.P13041710413716065270

namespace A206808

/-- `∑[A143943(n+1)-(n+1)]` -/
def P13041710413716065270.Spec : Prop :=
  ∀ n, P13041710413716065270.a n = A206808 (n + 2)

end A206808

/-! ## A206808.P7510457167853947426

`A085537(n+2)-∑[n+1]²`
-/

namespace A206808.P7510457167853947426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085537 (n + 2) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A206808.P7510457167853947426

namespace A206808

/-- `A085537(n+2)-∑[n+1]²` -/
def P7510457167853947426.Spec : Prop :=
  ∀ n, P7510457167853947426.a n = A206808 (n + 2)

end A206808

/-! ## A206808.P12301477998438155232

`A033487(n)+A027482(n+2)`
-/

namespace A206808.P12301477998438155232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 n + A027482 (n + 2)

end

end A206808.P12301477998438155232

namespace A206808

/-- `A033487(n)+A027482(n+2)` -/
def P12301477998438155232.Spec : Prop :=
  ∀ n, P12301477998438155232.a n = A206808 (n + 2)

end A206808

/-! ## A206808.P10647184534452118415

`Δ[(n+2)*A000217(n+1)]*A000217(n+1)`
-/

namespace A206808.P10647184534452118415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000217 (n + 1)

end

end A206808.P10647184534452118415

namespace A206808

/-- `Δ[(n+2)*A000217(n+1)]*A000217(n+1)` -/
def P10647184534452118415.Spec : Prop :=
  ∀ n, P10647184534452118415.a n = A206808 (n + 2)

end A206808

/-! ## A206808.P15654442385500462088

`A027482(n+2)+A000096(n)*A000217(n+1)`
-/

namespace A206808.P15654442385500462088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027482 (n + 2) + A000096 n * A000217 (n + 1)

end

end A206808.P15654442385500462088

namespace A206808

/-- `A027482(n+2)+A000096(n)*A000217(n+1)` -/
def P15654442385500462088.Spec : Prop :=
  ∀ n, P15654442385500462088.a n = A206808 (n + 2)

end A206808

/-! ## A206808.P10216829503750776651

`∑[A249354(n+1)]`
-/

namespace A206808.P10216829503750776651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206808.P10216829503750776651

namespace A206808

/-- `∑[A249354(n+1)]` -/
def P10216829503750776651.Spec : Prop :=
  ∀ n, P10216829503750776651.a n = A206808 (n + 2)

end A206808

/-! ## A206808.P3539880132207851482

`∑[(n+1)*A003215(n+1)]`
-/

namespace A206808.P3539880132207851482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206808.P3539880132207851482

namespace A206808

/-- `∑[(n+1)*A003215(n+1)]` -/
def P3539880132207851482.Spec : Prop :=
  ∀ n, P3539880132207851482.a n = A206808 (n + 2)

end A206808

/-! ## A206808.P6200538161324711884

`(n+1)/2*A036659(n+2)`
-/

namespace A206808.P6200538161324711884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A036659 (n + 2) : ℚ)

end

end A206808.P6200538161324711884

namespace A206808

/-- `(n+1)/2*A036659(n+2)` -/
def P6200538161324711884.Spec : Prop :=
  ∀ n, P6200538161324711884.a n = (A206808 (n + 2) : ℚ)

end A206808

/-! ## A206808.P10739382041598671993

`A126274(n+1)-(n+2)^3`
-/

namespace A206808.P10739382041598671993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126274 (n + 1) - ((n + 2) ^ 3 : ℤ)

end

end A206808.P10739382041598671993

namespace A206808

/-- `A126274(n+1)-(n+2)^3` -/
def P10739382041598671993.Spec : Prop :=
  ∀ n, P10739382041598671993.a n = A206808 (n + 2)

end A206808

/-! ## A206808.P10982776638966365269

`∑[A067389(n+1)+(n+1)²]`
-/

namespace A206808.P10982776638966365269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067389 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206808.P10982776638966365269

namespace A206808

/-- `∑[A067389(n+1)+(n+1)²]` -/
def P10982776638966365269.Spec : Prop :=
  ∀ n, P10982776638966365269.a n = A206808 (n + 2)

end A206808

/-! ## A206808.P1551189588556715666

`∑[A027903(n+1)-(n+1)²]`
-/

namespace A206808.P1551189588556715666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027903 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206808.P1551189588556715666

namespace A206808

/-- `∑[A027903(n+1)-(n+1)²]` -/
def P1551189588556715666.Spec : Prop :=
  ∀ n, P1551189588556715666.a n = A206808 (n + 2)

end A206808

/-! ## A206808.P13768823337726704282

`A083374(n+2)+∑[n+1]²`
-/

namespace A206808.P13768823337726704282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083374 (n + 2) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A206808.P13768823337726704282

namespace A206808

/-- `A083374(n+2)+∑[n+1]²` -/
def P13768823337726704282.Spec : Prop :=
  ∀ n, P13768823337726704282.a n = A206808 (n + 2)

end A206808

/-! ## A206808.P4857643085128594888

`A085540(n+1)-∑[n+1]²`
-/

namespace A206808.P4857643085128594888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085540 (n + 1) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A206808.P4857643085128594888

namespace A206808

/-- `A085540(n+1)-∑[n+1]²` -/
def P4857643085128594888.Spec : Prop :=
  ∀ n, P4857643085128594888.a n = A206808 (n + 2)

end A206808

/-!
# A206809: a(n) = Sum_{0

The programs for A206809, the canonical program `A206809.P10901274060693480734` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206809 has offset 2).

The definition of A206809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206809.P10901274060693480734

`∑[∑[(n+1)*Δ[(n+1)^3]]]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A206809

/-- `∑[∑[(n+1)*Δ[(n+1)^3]]]` -/
def P10901274060693480734.Spec : Prop :=
  ∀ n, P10901274060693480734.a n = A206809 (n + 2)

theorem P10901274060693480734.correct : P10901274060693480734.Spec := by
  intro n
  simp only [A206809, Nat.add_sub_cancel]

end A206809

/-! ## A206809.P17624936621818506804

`gcd(n, n+1)*∑[A206808(n+2)]`
-/

namespace A206809.P17624936621818506804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206809.P17624936621818506804

namespace A206809

/-- `gcd(n, n+1)*∑[A206808(n+2)]` -/
def P17624936621818506804.Spec : Prop :=
  ∀ n, P17624936621818506804.a n = A206809 (n + 2)

end A206809

/-! ## A206809.P14110175241893093684

`lcm(∑[A206808(n+2)], A000034(n))`
-/

namespace A206809.P14110175241893093684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206808 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A000034 n)

end

end A206809.P14110175241893093684

namespace A206809

/-- `lcm(∑[A206808(n+2)], A000034(n))` -/
def P14110175241893093684.Spec : Prop :=
  ∀ n, (P14110175241893093684.a n : ℤ) = A206809 (n + 2)

end A206809

/-! ## A206809.P9880313393421209883

`∑[A206808(n+2)]%A206810(n+2)`
-/

namespace A206809.P9880313393421209883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A206810 (n + 2))

end

end A206809.P9880313393421209883

namespace A206809

/-- `∑[A206808(n+2)]%A206810(n+2)` -/
def P9880313393421209883.Spec : Prop :=
  ∀ n, P9880313393421209883.a n = A206809 (n + 2)

end A206809

/-! ## A206809.P12152783163978441922

`Δ[A101089(n+1)-A101094(n+1)]`
-/

namespace A206809.P12152783163978441922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101089 (n + 1) - A101094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206809.P12152783163978441922

namespace A206809

/-- `Δ[A101089(n+1)-A101094(n+1)]` -/
def P12152783163978441922.Spec : Prop :=
  ∀ n, P12152783163978441922.a n = A206809 (n + 2)

end A206809

/-! ## A206809.P10270494745592666678

`A000538(n+2)-A024166(n+2)`
-/

namespace A206809.P10270494745592666678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (n + 2) - A024166 (n + 2)

end

end A206809.P10270494745592666678

namespace A206809

/-- `A000538(n+2)-A024166(n+2)` -/
def P10270494745592666678.Spec : Prop :=
  ∀ n, P10270494745592666678.a n = A206809 (n + 2)

end A206809

/-!
# A206810: Sum_{0

The programs for A206810, the canonical program `A206810.P10427238831301241698` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206810 has offset 2).

The definition of A206810 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206810.P10427238831301241698

`(n+2-10*(n+2)^3-15*(n+2)^4+24*(n+2)^5)/30`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A206810

/-- `(n+2-10*(n+2)^3-15*(n+2)^4+24*(n+2)^5)/30` -/
def P10427238831301241698.Spec : Prop :=
  ∀ n, P10427238831301241698.a n = (A206810 (n + 2) : ℚ)

end A206810

/-! ## A206810.P9995700271608528437

`A085538(n+2)-A000538(n+1)`
-/

namespace A206810.P9995700271608528437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085538 (n + 2) - A000538 (n + 1)

end

end A206810.P9995700271608528437

namespace A206810

/-- `A085538(n+2)-A000538(n+1)` -/
def P9995700271608528437.Spec : Prop :=
  ∀ n, P9995700271608528437.a n = A206810 (n + 2)

end A206810

/-! ## A206810.P14853703020738059210

`A000584(n+2)-A000538(n+2)`
-/

namespace A206810.P14853703020738059210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (n + 2) - A000538 (n + 2)

end

end A206810.P14853703020738059210

namespace A206810

/-- `A000584(n+2)-A000538(n+2)` -/
def P14853703020738059210.Spec : Prop :=
  ∀ n, P14853703020738059210.a n = A206810 (n + 2)

end A206810

/-! ## A206810.P2354263038373470805

`Δ[A000539(n+1)]-A000538(n+2)`
-/

namespace A206810.P2354263038373470805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000538 (n + 2)

end

end A206810.P2354263038373470805

namespace A206810

/-- `Δ[A000539(n+1)]-A000538(n+2)` -/
def P2354263038373470805.Spec : Prop :=
  ∀ n, P2354263038373470805.a n = A206810 (n + 2)

end A206810

/-! ## A206810.P2321529640302722282

`A000584(n+2)-Δ[A101089(n+1)]`
-/

namespace A206810.P2321529640302722282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (n + 2) - (f1 (n + 1) - f1 n)

end

end A206810.P2321529640302722282

namespace A206810

/-- `A000584(n+2)-Δ[A101089(n+1)]` -/
def P2321529640302722282.Spec : Prop :=
  ∀ n, P2321529640302722282.a n = A206810 (n + 2)

end A206810

/-! ## A206810.P12251877886596959482

`Δ[(n+2)*∑[A000332(2*n+3)]]`
-/

namespace A206810.P12251877886596959482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206810.P12251877886596959482

namespace A206810

/-- `Δ[(n+2)*∑[A000332(2*n+3)]]` -/
def P12251877886596959482.Spec : Prop :=
  ∀ n, P12251877886596959482.a n = A206810 (n + 2)

end A206810

/-!
# A206811: Sum_{0

The programs for A206811, the canonical program `A206811.P11509137746891594197` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206811 has offset 2).

The definition of A206811 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206811.P11509137746891594197

`(n+2)*(1+n+2)²*(1-6*(n+2)+(n+2)²+4*(n+2)^3)/30`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A206811

/-- `(n+2)*(1+n+2)²*(1-6*(n+2)+(n+2)²+4*(n+2)^3)/30` -/
def P11509137746891594197.Spec : Prop :=
  ∀ n, P11509137746891594197.a n = (A206811 (n + 2) : ℚ)

end A206811

/-! ## A206811.P8065978446811901618

`(n+3)*∑[C(2*n+5, 4)]`
-/

namespace A206811.P8065978446811901618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 5) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206811.P8065978446811901618

namespace A206811

/-- `(n+3)*∑[C(2*n+5, 4)]` -/
def P8065978446811901618.Spec : Prop :=
  ∀ n, (P8065978446811901618.a n : ℤ) = A206811 (n + 2)

end A206811

/-! ## A206811.P13873826475702026369

`∑[A206810(n+2)]`
-/

namespace A206811.P13873826475702026369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206810 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206811.P13873826475702026369

namespace A206811

/-- `∑[A206810(n+2)]` -/
def P13873826475702026369.Spec : Prop :=
  ∀ n, P13873826475702026369.a n = A206811 (n + 2)

end A206811

/-! ## A206811.P10426304963133234803

`(n+3)*∑[A053126(n+4)]`
-/

namespace A206811.P10426304963133234803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053126 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206811.P10426304963133234803

namespace A206811

/-- `(n+3)*∑[A053126(n+4)]` -/
def P10426304963133234803.Spec : Prop :=
  ∀ n, P10426304963133234803.a n = A206811 (n + 2)

end A206811

/-! ## A206811.P5493837118084354356

`Δ[A101092(n+1)-A101090(n+1)]`
-/

namespace A206811.P5493837118084354356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101092 (n + 1) - A101090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206811.P5493837118084354356

namespace A206811

/-- `Δ[A101092(n+1)-A101090(n+1)]` -/
def P5493837118084354356.Spec : Prop :=
  ∀ n, P5493837118084354356.a n = A206811 (n + 2)

end A206811

/-! ## A206811.P9077095769542117648

`A101092(n+2)-(A101092(n+1)+A101089(n+2))`
-/

namespace A206811.P9077095769542117648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101092 (n + 2) - (A101092 (n + 1) + A101089 (n + 2))

end

end A206811.P9077095769542117648

namespace A206811

/-- `A101092(n+2)-(A101092(n+1)+A101089(n+2))` -/
def P9077095769542117648.Spec : Prop :=
  ∀ n, P9077095769542117648.a n = A206811 (n + 2)

end A206811

/-! ## A206811.P4662657338675122807

`(n+3)*A001753(Δ[n²])`
-/

namespace A206811.P4662657338675122807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A001753 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A206811.P4662657338675122807

namespace A206811

/-- `(n+3)*A001753(Δ[n²])` -/
def P4662657338675122807.Spec : Prop :=
  ∀ n, P4662657338675122807.a n = A206811 (n + 2)

end A206811

/-! ## A206811.P828642021956565788

`(n+3)*∑[A000332(2*n+5)]`
-/

namespace A206811.P828642021956565788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206811.P828642021956565788

namespace A206811

/-- `(n+3)*∑[A000332(2*n+5)]` -/
def P828642021956565788.Spec : Prop :=
  ∀ n, P828642021956565788.a n = A206811 (n + 2)

end A206811

/-!
# A206812: Position of 2^n in joint ranking of {2^i}, {3^j}, {5^k}.

The programs for A206812, there is no canonical definition to state claims against.
-/

/-! ## A206812.P9364801709155094032

`A226722(n+2)-1`
-/

namespace A206812.P9364801709155094032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226722 (n + 2) - 1

end

end A206812.P9364801709155094032

/-! ## A206812.P1903071935751714129

`∑[abs(Δ[A226722(n+1)])]`
-/

namespace A206812.P1903071935751714129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226722 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206812.P1903071935751714129

/-! ## A206812.P2322863422291417582

`A023443(A226722(n+2))`
-/

namespace A206812.P2322863422291417582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A226722 (n + 2)).toNat

end

end A206812.P2322863422291417582

/-! ## A206812.P1027470912543710238

`A011772(C(A226722(n+2), 2))`
-/

namespace A206812.P1027470912543710238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (Nat.choose (A226722 (n + 2)).toNat 2)

end

end A206812.P1027470912543710238

/-! ## A206812.P4000561985660824518

`∑[A000027(Δ[A226722(n+1)])]`
-/

namespace A206812.P4000561985660824518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226722 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206812.P4000561985660824518

/-! ## A206812.P5194520821968979080

`∑[A000041(Δ[A226722(n+1)])]`
-/

namespace A206812.P5194520821968979080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226722 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206812.P5194520821968979080

/-! ## A206812.P16869648478218239967

`∑[A001935(Δ[A226722(n+1)])]`
-/

namespace A206812.P16869648478218239967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226722 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206812.P16869648478218239967

/-! ## A206812.P6615350991511798287

`∑[A003586(Δ[A226722(n+1)])]`
-/

namespace A206812.P6615350991511798287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226722 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206812.P6615350991511798287

/-! ## A206812.P17128296777691362981

`∑[A005117(Δ[A226722(n+1)])]`
-/

namespace A206812.P17128296777691362981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226722 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206812.P17128296777691362981

/-! ## A206812.P3147916383897834209

`∑[A006530(Δ[A226722(n+1)])]`
-/

namespace A206812.P3147916383897834209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226722 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206812.P3147916383897834209

/-!
# A206813: Position of 3^n in joint ranking of {2^i}, {3^j}, {5^k}.

The programs for A206813, there is no canonical definition to state claims against.
-/

/-! ## A206813.P12554488688965399381

`A226723(n+1)-1`
-/

namespace A206813.P12554488688965399381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226723 (n + 1) - 1

end

end A206813.P12554488688965399381

/-! ## A206813.P9117948060846630991

`A023443(A226723(n+1))`
-/

namespace A206813.P9117948060846630991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A226723 (n + 1)).toNat

end

end A206813.P9117948060846630991

/-! ## A206813.P12184671096091091521

`A023444(A226723(n+1)+1)`
-/

namespace A206813.P12184671096091091521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A226723 (n + 1) + 1).toNat

end

end A206813.P12184671096091091521

/-! ## A206813.P15890137793562935238

`A289207(A226723(n+1)+1)`
-/

namespace A206813.P15890137793562935238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A226723 (n + 1) + 1).toNat

end

end A206813.P15890137793562935238

/-! ## A206813.P16317124777843167005

`A023445(A226723(n+1)+2)`
-/

namespace A206813.P16317124777843167005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A226723 (n + 1) + 2).toNat

end

end A206813.P16317124777843167005

/-! ## A206813.P15136387284555401771

`A059169(4*A226723(n+1))`
-/

namespace A206813.P15136387284555401771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A226723 (n + 1)).toNat

end

end A206813.P15136387284555401771

/-! ## A206813.P2708876702456551725

`A001478(n+1)+A226723(n+1)+n`
-/

namespace A206813.P2708876702456551725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A226723 (n + 1) + (n : ℤ))

end

end A206813.P2708876702456551725

/-! ## A206813.P3396377306588634628

`A233583(A226723(n+1)%A066322(n))`
-/

namespace A206813.P3396377306588634628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (Int.tmod (A226723 (n + 1)) (A066322 n)).toNat

end

end A206813.P3396377306588634628

/-! ## A206813.P16829504403057170710

`A233583(gcd(A151909(n), A226723(n+1)))`
-/

namespace A206813.P16829504403057170710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (Int.gcd (A151909 n) (A226723 (n + 1)))

end

end A206813.P16829504403057170710

/-! ## A206813.P2353026927979226589

`A007318(∑[n])*A233583(A226723(n+1))`
-/

namespace A206813.P2353026927979226589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A233583 (A226723 (n + 1)).toNat

end

end A206813.P2353026927979226589

/-!
# A206814: Position of 5^n in joint ranking of {2^i}, {3^j}, {5^k}.

The programs for A206814, there is no canonical definition to state claims against.
-/

/-! ## A206814.P17217798357528241907

`A226724(n+1)-1`
-/

namespace A206814.P17217798357528241907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226724 (n + 1) - 1

end

end A206814.P17217798357528241907

/-! ## A206814.P1306876630304937555

`floor(∑[A022927(n)]+(n+1)*log2(10))`
-/

namespace A206814.P1306876630304937555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) + (n + 1 : ℝ) * Real.logb 2 (10 : ℝ)⌋

end

end A206814.P1306876630304937555

/-! ## A206814.P9638227792924630842

`A023443(A226724(n+1))`
-/

namespace A206814.P9638227792924630842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A226724 (n + 1)).toNat

end

end A206814.P9638227792924630842

/-! ## A206814.P13214241201406619613

`record[A226724(A134478(n))-1]`
-/

namespace A206814.P13214241201406619613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226724 (A134478 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206814.P13214241201406619613

/-! ## A206814.P10701394447482509773

`A023444(A226724(n+1)+1)`
-/

namespace A206814.P10701394447482509773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A226724 (n + 1) + 1).toNat

end

end A206814.P10701394447482509773

/-! ## A206814.P1988780701279280234

`A289207(A226724(n+1)+1)`
-/

namespace A206814.P1988780701279280234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A226724 (n + 1) + 1).toNat

end

end A206814.P1988780701279280234

/-! ## A206814.P3498821002549268216

`A059169(4*A226724(n+1))`
-/

namespace A206814.P3498821002549268216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A226724 (n + 1)).toNat

end

end A206814.P3498821002549268216

/-! ## A206814.P7861027281258353746

`A066343(n+1)+∑[A022927(n)]`
-/

namespace A206814.P7861027281258353746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066343 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206814.P7861027281258353746

/-! ## A206814.P4636500322501228740

`∑[A129344(n+1)+A022927(n)]-1`
-/

namespace A206814.P4636500322501228740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129344 (n + 1) + A022927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A206814.P4636500322501228740

/-! ## A206814.P7244892281896795375

`A226728(gcd(n, n+1))+A226724(n+1)`
-/

namespace A206814.P7244892281896795375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226728 (Nat.gcd n (n + 1)) + A226724 (n + 1)

end

end A206814.P7244892281896795375

/-!
# A206815: Position of n+pi(n) in the joint ranking of {j+pi(j)} and {k+(k+1)/log(k+1)}.

The programs for A206815, there is no canonical definition to state claims against.
-/

/-! ## A206815.P447596935219521806

`A207384(n)+a(n-1)` with `a(0)=1`
-/

namespace A206815.P447596935219521806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A207384 n + a (n - 1)

end

end A206815.P447596935219521806

/-! ## A206815.P2712856056266019562

`∑[A207384(round(sqrt(n²+1)))]`
-/

namespace A206815.P2712856056266019562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207384 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206815.P2712856056266019562

/-! ## A206815.P1861241814921553796

`comp[A207385(n)+a(n-1)]+1` with `a(0)=2`
-/

namespace A206815.P1861241814921553796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A207385 n + f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A206815.P1861241814921553796

/-! ## A206815.P8411064874909827826

`∑[dr(A207384(A028310(n)))]`
-/

namespace A206815.P8411064874909827826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A207384 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206815.P8411064874909827826

/-! ## A206815.P17807894599417878809

`∑[A207384(n)-A173532(a(n-1))]` with `a(0)=1`
-/

namespace A206815.P17807894599417878809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A207384 n - A173532 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206815.P17807894599417878809

/-! ## A206815.P4834822486917482149

`∑[A207384(n)-A326152(a(n-1))]` with `a(0)=1`
-/

namespace A206815.P4834822486917482149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A207384 n - A326152 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206815.P4834822486917482149

/-! ## A206815.P1103539512346098241

`∑[A207384(n)/A064822(a(n-1))]` with `a(0)=1`
-/

namespace A206815.P1103539512346098241
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A207384 n : ℚ) / (A064822 (SequenceMachineLib.roundAway (f1 (n - 1))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206815.P1103539512346098241

/-! ## A206815.P11346731165594342964

`∑[A207384(n)/A128570(a(n-1))]` with `a(0)=1`
-/

namespace A206815.P11346731165594342964
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A207384 n : ℚ) / (A128570 (SequenceMachineLib.roundAway (f1 (n - 1))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206815.P11346731165594342964

/-! ## A206815.P1759488317415455353

`∑[A207384(n)^A007318(a(n-1))]` with `a(0)=1`
-/

namespace A206815.P1759488317415455353
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A207384 n : ℚ) ^ (A007318 (SequenceMachineLib.roundAway (f1 (n - 1))).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206815.P1759488317415455353

/-! ## A206815.P3655308542698794114

`∑[A207384(n+1)]+1-A207384(n+1)`
-/

namespace A206815.P3655308542698794114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A207384 (n + 1))

end

end A206815.P3655308542698794114

/-!
# A206816: a(n) = Sum_{0

The programs for A206816, the canonical program `A206816.P9772308617466538774` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206816 has offset 2).

The definition of A206816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206816.P9772308617466538774

`A001563(n+2)-A007489(n+2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A206816

/-- `A001563(n+2)-A007489(n+2)` -/
def P9772308617466538774.Spec : Prop :=
  ∀ n, P9772308617466538774.a n = A206816 (n + 2)

theorem P9772308617466538774.correct : P9772308617466538774.Spec := by
  intro n
  simp only [A206816, Nat.add_sub_cancel]

end A206816

/-! ## A206816.P5408394869230715899

`∑[n!*Δ[∑[n]²]]`
-/

namespace A206816.P5408394869230715899
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206816.P5408394869230715899

namespace A206816

/-- `∑[n!*Δ[∑[n]²]]` -/
def P5408394869230715899.Spec : Prop :=
  ∀ n, P5408394869230715899.a n = A206816 (n + 2)

end A206816

/-! ## A206816.P9839694389336349646

`∑[(n+1)^3*n!]`
-/

namespace A206816.P9839694389336349646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3 * Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206816.P9839694389336349646

namespace A206816

/-- `∑[(n+1)^3*n!]` -/
def P9839694389336349646.Spec : Prop :=
  ∀ n, (P9839694389336349646.a n : ℤ) = A206816 (n + 2)

end A206816

/-! ## A206816.P16535646777695003388

`∑[n!/(n+1)^-3]`
-/

namespace A206816.P16535646777695003388
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (n + 1 : ℚ) ^ (-3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206816.P16535646777695003388

namespace A206816

/-- `∑[n!/(n+1)^-3]` -/
def P16535646777695003388.Spec : Prop :=
  ∀ n, P16535646777695003388.a n = (A206816 (n + 2) : ℚ)

end A206816

/-! ## A206816.P2499064632271863119

`∑[(n+1)²*∏[n+1]]`
-/

namespace A206816.P2499064632271863119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206816.P2499064632271863119

namespace A206816

/-- `∑[(n+1)²*∏[n+1]]` -/
def P2499064632271863119.Spec : Prop :=
  ∀ n, (P2499064632271863119.a n : ℤ) = A206816 (n + 2)

end A206816

/-! ## A206816.P2994705180211535899

`or(1, ∑[(n+1)²*(n+1)!])`
-/

namespace A206816.P2994705180211535899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * Nat.factorial (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206816.P2994705180211535899

namespace A206816

/-- `or(1, ∑[(n+1)²*(n+1)!])` -/
def P2994705180211535899.Spec : Prop :=
  ∀ n, (P2994705180211535899.a n : ℤ) = A206816 (n + 2)

end A206816

/-! ## A206816.P888122344805893320

`-∑[(n+1)*Δ[-(n+1)!]]`
-/

namespace A206816.P888122344805893320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206816.P888122344805893320

namespace A206816

/-- `-∑[(n+1)*Δ[-(n+1)!]]` -/
def P888122344805893320.Spec : Prop :=
  ∀ n, P888122344805893320.a n = A206816 (n + 2)

end A206816

/-! ## A206816.P11334351477339082864

`(n+1)*(n+2)!-∑[(n+1)!]`
-/

namespace A206816.P11334351477339082864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.factorial (n + 2) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A206816.P11334351477339082864

namespace A206816

/-- `(n+1)*(n+2)!-∑[(n+1)!]` -/
def P11334351477339082864.Spec : Prop :=
  ∀ n, P11334351477339082864.a n = A206816 (n + 2)

end A206816

/-! ## A206816.P9193074936643265043

`a(n-1)+(n+1)²*(n+1)!` with `a(0)=1`
-/

namespace A206816.P9193074936643265043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1) ^ 2 * Nat.factorial (n + 1)

end

end A206816.P9193074936643265043

namespace A206816

/-- `a(n-1)+(n+1)²*(n+1)!` -/
def P9193074936643265043.Spec : Prop :=
  ∀ n, (P9193074936643265043.a n : ℤ) = A206816 (n + 2)

end A206816

/-! ## A206816.P5930310717090862607

`a(n-1)+(n+1)²*∏[n+1]` with `a(0)=1`
-/

namespace A206816.P5930310717090862607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1) ^ 2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A206816.P5930310717090862607

namespace A206816

/-- `a(n-1)+(n+1)²*∏[n+1]` -/
def P5930310717090862607.Spec : Prop :=
  ∀ n, (P5930310717090862607.a n : ℤ) = A206816 (n + 2)

end A206816

/-!
# A206817: Sum_{0

The programs for A206817, there is no canonical definition to state claims against.
-/

/-! ## A206817.P11397597667209315279

`∑[∑[(n+1)^3*n!]]`
-/

namespace A206817.P11397597667209315279
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3 * Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206817.P11397597667209315279

/-! ## A206817.P9283242701316015194

`∑[∑[(n+1)²*∏[n+1]]]`
-/

namespace A206817.P9283242701316015194
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * (∏ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206817.P9283242701316015194

/-! ## A206817.P16717634267132417469

`∑[2*A206816(n+2)]/2`
-/

namespace A206817.P16717634267132417469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A206816 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A206817.P16717634267132417469

/-! ## A206817.P11298349446545788737

`gcd(∑[A206816(n+2)], A000038(n))`
-/

namespace A206817.P11298349446545788737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206816 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A206817.P11298349446545788737

/-! ## A206817.P13624911334167477046

`lcm(∑[A206816(n+2)], A000034(n))`
-/

namespace A206817.P13624911334167477046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206816 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A000034 n)

end

end A206817.P13624911334167477046

/-! ## A206817.P14577449145691046645

`or(∑[A206816(n+2)], A055641(n))`
-/

namespace A206817.P14577449145691046645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206816 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A055641 n)

end

end A206817.P14577449145691046645

/-! ## A206817.P13240270323132881703

`A000142(n+3)-A129867(n+3)`
-/

namespace A206817.P13240270323132881703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 3) - A129867 (n + 3)

end

end A206817.P13240270323132881703

/-! ## A206817.P15463426389507348014

`char[A017619(n)]+∑[A206816(n+2)]`
-/

namespace A206817.P15463426389507348014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206816 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A206817.P15463426389507348014

/-! ## A206817.P13155768049748992261

`∑[A206816(n+2)]*char[A003986(n)]`
-/

namespace A206817.P13155768049748992261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206816 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A206817.P13155768049748992261

/-! ## A206817.P11525000304337662159

`A000035(2*n)+∑[A206816(n+2)]`
-/

namespace A206817.P11525000304337662159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206816 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206817.P11525000304337662159

/-!
# A206818: Position of n+(n+1)/log(n+1) in the joint ranking of {j+pi(j)} and {k+(k+1)/log(k+1)}.

The programs for A206818, there is no canonical definition to state claims against.
-/

/-! ## A206818.P7897217804224199821

`A207385(n)+a(n-1)` with `a(0)=3`
-/

namespace A206818.P7897217804224199821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A207385 n + a (n - 1)

end

end A206818.P7897217804224199821

/-! ## A206818.P10028031258011682003

`comp[A206815(n+1)-1]+1`
-/

namespace A206818.P10028031258011682003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206815 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A206818.P10028031258011682003

/-! ## A206818.P17953660048375170067

`∑[A207385(abs(1-n)+1)]+1`
-/

namespace A206818.P17953660048375170067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207385 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A206818.P17953660048375170067

/-! ## A206818.P7754748800533147890

`∑[A207385(n)*A345063(a(n-1))]` with `a(0)=3`
-/

namespace A206818.P7754748800533147890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A207385 n * A345063 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206818.P7754748800533147890

/-! ## A206818.P14345470568161532631

`∑[A207385(n*A182027(a(n-1))/2)]` with `a(0)=3`
-/

namespace A206818.P14345470568161532631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A207385 (SequenceMachineLib.roundAway ((n : ℚ) * ((A182027 (f1 (n - 1)).toNat : ℚ) / 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206818.P14345470568161532631

/-!
# A206819: Riordan array (1/(1-10*x-10*x^2), x/(1-10*x-10*x^2)).

The programs for A206819, there is no canonical definition to state claims against.
-/

/-! ## A206819.P14266862871473139264

`A131055(A178865(n+1))`
-/

namespace A206819.P14266862871473139264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (A178865 (n + 1)).toNat

end

end A206819.P14266862871473139264

/-! ## A206819.P4730980171081959388

`A065190(or(1, A178865(n+1)))`
-/

namespace A206819.P4730980171081959388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (Int.lor 1 (A178865 (n + 1))).toNat

end

end A206819.P4730980171081959388

/-! ## A206819.P15552405428640564820

`A178865(n+1)-A289016(A288996(n+1))`
-/

namespace A206819.P15552405428640564820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178865 (n + 1) - A289016 (A288996 (n + 1)).toNat

end

end A206819.P15552405428640564820

/-! ## A206819.P15839495909990034567

`A178865(n+1)-A055641(A295771(n))`
-/

namespace A206819.P15839495909990034567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178865 (n + 1) - A055641 (A295771 n).toNat

end

end A206819.P15839495909990034567

/-! ## A206819.P11586364599330431745

`A178865(n+1)-A185017(A245062(2*(n+1)))`
-/

namespace A206819.P11586364599330431745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178865 (n + 1) - A185017 (A245062 (2 * (n + 1))).toNat

end

end A206819.P11586364599330431745

/-!
# A206820: a(n) is the sum of the squares of the sizes of the conjugacy classes in the symmetric group A_n.

The programs for A206820, there is no canonical definition to state claims against.
-/

/-! ## A206820.P905103327479629637

`A220524(A000828(n))`
-/

namespace A206820.P905103327479629637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220524 (A000828 n).toNat

end

end A206820.P905103327479629637

/-!
# A206821: Numbers that match irreducible polynomials over {-1,0,1} with leading coefficient 1.

The programs for A206821, there is no canonical definition to state claims against.
-/

/-! ## A206821.P13957801281053640413

`eq[char[A206822(n+1)], A151933(n)]`
-/

namespace A206821.P13957801281053640413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206822 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A206821.P13957801281053640413

/-!
# A206822: Numbers that match non-irreducible monic polynomials having coefficients in {-1,0,1}; complement of A206821.

The programs for A206822, there is no canonical definition to state claims against.
-/

/-! ## A206822.P1300731101922029325

`comp[A206821(n+1)-1]+1`
-/

namespace A206822.P1300731101922029325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206821 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A206822.P1300731101922029325

/-! ## A206822.P15420223176022435263

`eq[char[A206821(n+1)], A151933(n)]`
-/

namespace A206822.P15420223176022435263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206821 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A206822.P15420223176022435263

/-!
# A206823: Triangular array read by rows: T(n,k) is the number of functions f:{1,2,...,n}->{1,2,...,n} with exactly k elements x such that |f^(-1)(x)| = 1; n>=0, 0<=k<=n.

The programs for A206823, there is no canonical definition to state claims against.
-/

/-! ## A206823.P3911879214931882992

`A102489(A220222(n)%A220224(n+1))`
-/

namespace A206823.P3911879214931882992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (Int.tmod (A220222 n) (A220224 (n + 1))).toNat

end

end A206823.P3911879214931882992

/-!
# A206824: Number of solutions (n,k) of s(k) = s(n) (mod n), where 1 <= k < n and s(k) = k(k+1)/2.

The programs for A206824, the canonical program `A206824.P14274703909039369394` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206824 has offset 2).

The definition of A206824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206824.P12670639549889170691

`A324983(A007947(n+2))-A000035(n)`
-/

namespace A206824.P12670639549889170691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324983 (A007947 (n + 2)).toNat - A000035 n

end

end A206824.P12670639549889170691

namespace A206824

/-- `A324983(A007947(n+2))-A000035(n)` -/
def P12670639549889170691.Spec : Prop :=
  ∀ n, P12670639549889170691.a n = A206824 (n + 2)

end A206824

/-! ## A206824.P14274703909039369394

`A091954(∏{p}[n+2, #])`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A206824

/-- `A091954(∏{p}[n+2, #])` -/
def P14274703909039369394.Spec : Prop :=
  ∀ n, P14274703909039369394.a n = A206824 (n + 2)

theorem P14274703909039369394.correct : P14274703909039369394.Spec := by
  intro n
  simp only [A206824, Nat.add_sub_cancel]

end A206824

/-! ## A206824.P369293296885675743

`A068068(n+2)-n%2`
-/

namespace A206824.P369293296885675743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (n + 2) - ((n % 2 : ℕ) : ℤ)

end

end A206824.P369293296885675743

namespace A206824

/-- `A068068(n+2)-n%2` -/
def P369293296885675743.Spec : Prop :=
  ∀ n, P369293296885675743.a n = A206824 (n + 2)

end A206824

/-! ## A206824.P7500091500111470118

`A277692(∏{p}[n+2, #]+1)`
-/

namespace A206824.P7500091500111470118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (∏ p ∈ Nat.primeFactors (f1 n), p + 1)

end

end A206824.P7500091500111470118

namespace A206824

/-- `A277692(∏{p}[n+2, #]+1)` -/
def P7500091500111470118.Spec : Prop :=
  ∀ n, P7500091500111470118.a n = A206824 (n + 2)

end A206824

/-! ## A206824.P17172695693444395314

`A277692(A076618(n+2))`
-/

namespace A206824.P17172695693444395314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (A076618 (n + 2)).toNat

end

end A206824.P17172695693444395314

namespace A206824

/-- `A277692(A076618(n+2))` -/
def P17172695693444395314.Spec : Prop :=
  ∀ n, P17172695693444395314.a n = A206824 (n + 2)

end A206824

/-! ## A206824.P2372423362987609429

`A277692(A007947(n+2)+1)`
-/

namespace A206824.P2372423362987609429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (A007947 (n + 2) + 1).toNat

end

end A206824.P2372423362987609429

namespace A206824

/-- `A277692(A007947(n+2)+1)` -/
def P2372423362987609429.Spec : Prop :=
  ∀ n, P2372423362987609429.a n = A206824 (n + 2)

end A206824

/-! ## A206824.P17438019611933118054

`A277692(A340679(n+2)+1)`
-/

namespace A206824.P17438019611933118054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (A340679 (n + 2) + 1).toNat

end

end A206824.P17438019611933118054

namespace A206824

/-- `A277692(A340679(n+2)+1)` -/
def P17438019611933118054.Spec : Prop :=
  ∀ n, P17438019611933118054.a n = A206824 (n + 2)

end A206824

/-! ## A206824.P11282778133482362894

`A068068(n+2)-A000035(n)`
-/

namespace A206824.P11282778133482362894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (n + 2) - A000035 n

end

end A206824.P11282778133482362894

namespace A206824

/-- `A068068(n+2)-A000035(n)` -/
def P11282778133482362894.Spec : Prop :=
  ∀ n, P11282778133482362894.a n = A206824 (n + 2)

end A206824

/-! ## A206824.P6015436509283885896

`A068068(n+2)-A059841(n+1)`
-/

namespace A206824.P6015436509283885896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (n + 2) - A059841 (n + 1)

end

end A206824.P6015436509283885896

namespace A206824

/-- `A068068(n+2)-A059841(n+1)` -/
def P6015436509283885896.Spec : Prop :=
  ∀ n, P6015436509283885896.a n = A206824 (n + 2)

end A206824

/-! ## A206824.P6766772126471680367

`A068068(n+2)-A056594(n+1)²`
-/

namespace A206824.P6766772126471680367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (n + 2) - A056594 (n + 1) ^ 2

end

end A206824.P6766772126471680367

namespace A206824

/-- `A068068(n+2)-A056594(n+1)²` -/
def P6766772126471680367.Spec : Prop :=
  ∀ n, P6766772126471680367.a n = A206824 (n + 2)

end A206824

/-! ## A206824.P11045442214354249586

`A068067(n+1)+Δ[A068068(n+1)]`
-/

namespace A206824.P11045442214354249586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068067 (n + 1) + (f1 (n + 1) - f1 n)

end

end A206824.P11045442214354249586

namespace A206824

/-- `A068067(n+1)+Δ[A068068(n+1)]` -/
def P11045442214354249586.Spec : Prop :=
  ∀ n, P11045442214354249586.a n = A206824 (n + 2)

end A206824

/-! ## A206824.P2333329567915585106

`A068068(n+2)+1-A134451(n+1)`
-/

namespace A206824.P2333329567915585106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (n + 2) + (1 - A134451 (n + 1))

end

end A206824.P2333329567915585106

namespace A206824

/-- `A068068(n+2)+1-A134451(n+1)` -/
def P2333329567915585106.Spec : Prop :=
  ∀ n, P2333329567915585106.a n = A206824 (n + 2)

end A206824

/-! ## A206824.P8332214179317536860

`A000034(n+1)+A068068(n+2)-2`
-/

namespace A206824.P8332214179317536860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) + (A068068 (n + 2) - 2)

end

end A206824.P8332214179317536860

namespace A206824

/-- `A000034(n+1)+A068068(n+2)-2` -/
def P8332214179317536860.Spec : Prop :=
  ∀ n, P8332214179317536860.a n = A206824 (n + 2)

end A206824

/-! ## A206824.P3078481495660069323

`A034444(A000265(n+2))-A000035(n)`
-/

namespace A206824.P3078481495660069323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A000265 (n + 2)).toNat - A000035 n

end

end A206824.P3078481495660069323

namespace A206824

/-- `A034444(A000265(n+2))-A000035(n)` -/
def P3078481495660069323.Spec : Prop :=
  ∀ n, P3078481495660069323.a n = A206824 (n + 2)

end A206824

/-! ## A206824.P11899761812544489596

`A068067(n+1)+A068068(n+2)-A068068(n+1)`
-/

namespace A206824.P11899761812544489596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068067 (n + 1) + (A068068 (n + 2) - A068068 (n + 1))

end

end A206824.P11899761812544489596

namespace A206824

/-- `A068067(n+1)+A068068(n+2)-A068068(n+1)` -/
def P11899761812544489596.Spec : Prop :=
  ∀ n, P11899761812544489596.a n = A206824 (n + 2)

end A206824

/-! ## A206824.P4262276622369467780

`A001221(n+2)+A068068(n+2)-A099812(n+2)`
-/

namespace A206824.P4262276622369467780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2) + (A068068 (n + 2) - A099812 (n + 2))

end

end A206824.P4262276622369467780

namespace A206824

/-- `A001221(n+2)+A068068(n+2)-A099812(n+2)` -/
def P4262276622369467780.Spec : Prop :=
  ∀ n, P4262276622369467780.a n = A206824 (n + 2)

end A206824

/-! ## A206824.P5479480745682445675

`A091954(A302138(n+2))`
-/

namespace A206824.P5479480745682445675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (A302138 (n + 2)).toNat

end

end A206824.P5479480745682445675

namespace A206824

/-- `A091954(A302138(n+2))` -/
def P5479480745682445675.Spec : Prop :=
  ∀ n, P5479480745682445675.a n = A206824 (n + 2)

end A206824

/-! ## A206824.P16513846570772067369

`A068067(A161151(n+1))`
-/

namespace A206824.P16513846570772067369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068067 (A161151 (n + 1)).toNat

end

end A206824.P16513846570772067369

namespace A206824

/-- `A068067(A161151(n+1))` -/
def P16513846570772067369.Spec : Prop :=
  ∀ n, P16513846570772067369.a n = A206824 (n + 2)

end A206824

/-! ## A206824.P348709770205209988

`A068067(A161150(n+2))`
-/

namespace A206824.P348709770205209988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068067 (A161150 (n + 2)).toNat

end

end A206824.P348709770205209988

namespace A206824

/-- `A068067(A161150(n+2))` -/
def P348709770205209988.Spec : Prop :=
  ∀ n, P348709770205209988.a n = A206824 (n + 2)

end A206824

/-! ## A206824.P5613381332861949755

`A211010(A166142(n+2))`
-/

namespace A206824.P5613381332861949755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211010 (A166142 (n + 2)).toNat

end

end A206824.P5613381332861949755

namespace A206824

/-- `A211010(A166142(n+2))` -/
def P5613381332861949755.Spec : Prop :=
  ∀ n, P5613381332861949755.a n = A206824 (n + 2)

end A206824

/-!
# A206825: Number of solutions (n,k) of k^4=n^4 (mod n), where 1<=k

The programs for A206825, the canonical program `A206825.P6734815729562977131` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206825 has offset 2).

The definition of A206825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206825.P6734815729562977131

`A000190(A057521(n+2))-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A206825

/-- `A000190(A057521(n+2))-1` -/
def P6734815729562977131.Spec : Prop :=
  ∀ n, P6734815729562977131.a n = A206825 (n + 2)

theorem P6734815729562977131.correct : P6734815729562977131.Spec := by
  intro n
  simp only [A206825, Nat.add_sub_cancel]

end A206825

/-! ## A206825.P5604687070392376500

`A000190(n+2)-1`
-/

namespace A206825.P5604687070392376500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (n + 2) - 1

end

end A206825.P5604687070392376500

namespace A206825

/-- `A000190(n+2)-1` -/
def P5604687070392376500.Spec : Prop :=
  ∀ n, P5604687070392376500.a n = A206825 (n + 2)

end A206825

/-! ## A206825.P6846354805928728650

`floor(n/A053166(n+2))`
-/

namespace A206825.P6846354805928728650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A053166 (n + 2) : ℚ)⌋

end

end A206825.P6846354805928728650

namespace A206825

/-- `floor(n/A053166(n+2))` -/
def P6846354805928728650.Spec : Prop :=
  ∀ n, P6846354805928728650.a n = A206825 (n + 2)

end A206825

/-! ## A206825.P4727775739363958014

`(n+1)%A000190(n%(n+1)+2)`
-/

namespace A206825.P4727775739363958014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000190 (n % (n + 1) + 2))

end

end A206825.P4727775739363958014

namespace A206825

/-- `(n+1)%A000190(n%(n+1)+2)` -/
def P4727775739363958014.Spec : Prop :=
  ∀ n, P4727775739363958014.a n = A206825 (n + 2)

end A206825

/-! ## A206825.P8017127784944816785

`floor(n/A019554(A019554(n+2)))`
-/

namespace A206825.P8017127784944816785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A019554 (A019554 (n + 2)).toNat : ℚ)⌋

end

end A206825.P8017127784944816785

namespace A206825

/-- `floor(n/A019554(A019554(n+2)))` -/
def P8017127784944816785.Spec : Prop :=
  ∀ n, P8017127784944816785.a n = A206825 (n + 2)

end A206825

/-! ## A206825.P3631255102610447338

`A300076(∑[2*Δ[A000190(n+1)]])`
-/

namespace A206825.P3631255102610447338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300076 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A206825.P3631255102610447338

namespace A206825

/-- `A300076(∑[2*Δ[A000190(n+1)]])` -/
def P3631255102610447338.Spec : Prop :=
  ∀ n, P3631255102610447338.a n = A206825 (n + 2)

end A206825

/-! ## A206825.P4060430595826240564

`A000027(n+2)/A053166(n+2)-1`
-/

namespace A206825.P4060430595826240564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 2) : ℚ) / (A053166 (n + 2) : ℚ) - 1

end

end A206825.P4060430595826240564

namespace A206825

/-- `A000027(n+2)/A053166(n+2)-1` -/
def P4060430595826240564.Spec : Prop :=
  ∀ n, P4060430595826240564.a n = (A206825 (n + 2) : ℚ)

end A206825

/-! ## A206825.P3114804233568798463

`∑[A000190(n+2)]%∑[A000190(n+1)]`
-/

namespace A206825.P3114804233568798463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A206825.P3114804233568798463

namespace A206825

/-- `∑[A000190(n+2)]%∑[A000190(n+1)]` -/
def P3114804233568798463.Spec : Prop :=
  ∀ n, P3114804233568798463.a n = A206825 (n + 2)

end A206825

/-! ## A206825.P4590486244907895119

`A057918(A000190(n+2)²)`
-/

namespace A206825.P4590486244907895119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A000190 (n + 2) ^ 2).toNat

end

end A206825.P4590486244907895119

namespace A206825

/-- `A057918(A000190(n+2)²)` -/
def P4590486244907895119.Spec : Prop :=
  ∀ n, P4590486244907895119.a n = A206825 (n + 2)

end A206825

/-! ## A206825.P12865652561214301815

`A057918(A355264(n+2))`
-/

namespace A206825.P12865652561214301815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A355264 (n + 2)).toNat

end

end A206825.P12865652561214301815

namespace A206825

/-- `A057918(A355264(n+2))` -/
def P12865652561214301815.Spec : Prop :=
  ∀ n, P12865652561214301815.a n = A206825 (n + 2)

end A206825

/-! ## A206825.P13539285330081715737

`A057918((n+2)*A000188(n+2))`
-/

namespace A206825.P13539285330081715737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 ((n + 2 : ℤ) * A000188 (n + 2)).toNat

end

end A206825.P13539285330081715737

namespace A206825

/-- `A057918((n+2)*A000188(n+2))` -/
def P13539285330081715737.Spec : Prop :=
  ∀ n, P13539285330081715737.a n = A206825 (n + 2)

end A206825

/-! ## A206825.P13255997514572136066

`A004197(2*A000190(n+2)²)`
-/

namespace A206825.P13255997514572136066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (2 * A000190 (n + 2) ^ 2).toNat

end

end A206825.P13255997514572136066

namespace A206825

/-- `A004197(2*A000190(n+2)²)` -/
def P13255997514572136066.Spec : Prop :=
  ∀ n, P13255997514572136066.a n = A206825 (n + 2)

end A206825

/-! ## A206825.P16994534260891802846

`A355263(A003557(n+2)²)-1`
-/

namespace A206825.P16994534260891802846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355263 (A003557 (n + 2) ^ 2).toNat - 1

end

end A206825.P16994534260891802846

namespace A206825

/-- `A355263(A003557(n+2)²)-1` -/
def P16994534260891802846.Spec : Prop :=
  ∀ n, P16994534260891802846.a n = A206825 (n + 2)

end A206825

/-!
# A206826: Number of solutions (n,k) of s(k)=s(n) (mod n), where 1<=k

The programs for A206826, there is no canonical definition to state claims against.
-/

/-! ## A206826.P8092973044672871141

`A069283(A123645(n))+n%2`
-/

namespace A206826.P8092973044672871141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (A123645 (n + 35)).toNat + ((n % 2 : ℕ) : ℤ)

end

end A206826.P8092973044672871141

/-! ## A206826.P13332651820689179868

`A069283(A123645(n))+A000035(n)`
-/

namespace A206826.P13332651820689179868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (A123645 (n + 35)).toNat + A000035 n

end

end A206826.P13332651820689179868

/-! ## A206826.P12390889667511666125

`A069283(A123645(n))+A134452(n)²`
-/

namespace A206826.P12390889667511666125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (A123645 (n + 35)).toNat + A134452 n ^ 2

end

end A206826.P12390889667511666125

/-! ## A206826.P10354299251675580665

`A069283(A123645(n))+Δ[A004526(n)]`
-/

namespace A206826.P10354299251675580665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (A123645 (n + 35)).toNat + (f1 (n + 1) - f1 n)

end

end A206826.P10354299251675580665

/-! ## A206826.P12237317472371666559

`A069283(A123645(n))+Δ[A008619(n)]`
-/

namespace A206826.P12237317472371666559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (A123645 (n + 35)).toNat + (f1 (n + 1) - f1 n)

end

end A206826.P12237317472371666559

/-!
# A206827: Number of solutions (n,k) of s(k) == s(n) (mod n), where 1 <= k < n and s(k) = k*(k+1)*(2*k+1)/6.

The programs for A206827, there is no canonical definition to state claims against.
-/

/-! ## A206827.P4824343489507636734

`A316112(xor(A113880(n), A260299(n+1)))`
-/

namespace A206827.P4824343489507636734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316112 (Int.xor (A113880 n) (A260299 (n + 1))).toNat

end

end A206827.P4824343489507636734

/-!
# A206828: Number of solutions k of C(2k,k)=C(2n,n) (mod n), where 1<=k

The programs for A206828, there is no canonical definition to state claims against.
-/

/-! ## A206828.P5115412025542834730

`A071625(10*A303665(n))`
-/

namespace A206828.P5115412025542834730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (10 * A303665 n).toNat

end

end A206828.P5115412025542834730

/-! ## A206828.P16638311372977882844

`∏{e}[A174065(A303403(n+1)), #]`
-/

namespace A206828.P16638311372977882844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174065 (A303403 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A206828.P16638311372977882844

/-! ## A206828.P17209782745232830743

`A000120(Δ[A152469(A242474(n+1))])`
-/

namespace A206828.P17209782745232830743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152469 (A242474 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (n + 1) - f1 n).toNat

end

end A206828.P17209782745232830743

/-! ## A206828.P11280935504895722074

`A001222(A323059(n+1)+A117546(n))`
-/

namespace A206828.P11280935504895722074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A323059 (n + 1) + A117546 n).toNat

end

end A206828.P11280935504895722074

/-! ## A206828.P6716104054425831994

`A112049(gcd(A151665(n), A346105(n+1)))`
-/

namespace A206828.P6716104054425831994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112049 (Int.gcd (A151665 n) (A346105 (n + 1)))

end

end A206828.P6716104054425831994

/-!
# A206829: Number of distinct irreducible factors of the polynomial y(n,x) defined at A206821.

The programs for A206829, there is no canonical definition to state claims against.
-/

/-! ## A206829.P1660174428175316187

`A091991(A332287(n+1)+A166274(3*n+2))`
-/

namespace A206829.P1660174428175316187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091991 (A332287 (n + 1) + A166274 (3 * n + 2)).toNat

end

end A206829.P1660174428175316187

/-! ## A206829.P8232656686972694840

`A060128(lcm(A164281(n), A255044(n)))`
-/

namespace A206829.P8232656686972694840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (Int.lcm (A164281 n) (A255044 n))

end

end A206829.P8232656686972694840

/-! ## A206829.P17588683144759139245

`A196049(A335540(n+1)+A001844(n))`
-/

namespace A206829.P17588683144759139245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196049 (A335540 (n + 1) + A001844 n).toNat

end

end A206829.P17588683144759139245

/-! ## A206829.P17673299715627985979

`A334297(and(A166374(n+4), A335448(n+1)))`
-/

namespace A206829.P17673299715627985979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334297 (Int.land (A166374 (n + 4)) (A335448 (n + 1))).toNat

end

end A206829.P17673299715627985979

/-! ## A206829.P7147786497158644190

`A353376(n+4)%A353405(A353385(n))`
-/

namespace A206829.P7147786497158644190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353376 (n + 4)) (A353405 (A353385 n).toNat)

end

end A206829.P7147786497158644190

/-!
# A206830: G.f.: exp( Sum_{n>=1} x^n/n * Sum_{k=0..n} binomial(n^2, n*k) * x^k ).

The programs for A206830, there is no canonical definition to state claims against.
-/

/-! ## A206830.P1841842712636005422

`A185278(n^n+3-n)`
-/

namespace A206830.P1841842712636005422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185278 ((n ^ n : ℤ) + (3 - (n : ℤ))).toNat

end

end A206830.P1841842712636005422

/-! ## A206830.P16034882099557691136

`A006159(A006125(n)+3)`
-/

namespace A206830.P16034882099557691136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006159 (A006125 n + 3).toNat

end

end A206830.P16034882099557691136

/-!
# A206832: Number of n X n 0..3 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A206832, there is no canonical definition to state claims against.
-/

/-! ## A206832.P14416407752179621141

`A206838(∑[4*n]+1)`
-/

namespace A206832.P14416407752179621141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206838 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206832.P14416407752179621141

/-!
# A206833: Number of nX3 0..3 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A206833, there is no canonical definition to state claims against.
-/

/-! ## A206833.P9424426355252109929

`A206838(∑[n+3]+1)`
-/

namespace A206833.P9424426355252109929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206838 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206833.P9424426355252109929

/-!
# A206834: Number of nX4 0..3 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A206834, there is no canonical definition to state claims against.
-/

/-! ## A206834.P15684158304887110450

`A206838(A141214(n+1))`
-/

namespace A206834.P15684158304887110450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206838 (A141214 (n + 1)).toNat

end

end A206834.P15684158304887110450

/-! ## A206834.P10103546629252812039

`A206838(eq[2, A152157(n)])`
-/

namespace A206834.P10103546629252812039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206834.P10103546629252812039

/-! ## A206834.P1265926331013571343

`A206838(eq[3, A193592(n)])`
-/

namespace A206834.P1265926331013571343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206834.P1265926331013571343

/-!
# A206835: Number of nX5 0..3 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A206835, there is no canonical definition to state claims against.
-/

/-! ## A206835.P17758989530780031450

`A206838(Δ[A264443(n)])`
-/

namespace A206835.P17758989530780031450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206838 (f1 (n + 1) - f1 n).toNat

end

end A206835.P17758989530780031450

/-! ## A206835.P16019038134331874229

`A206838(A046691(n+3))`
-/

namespace A206835.P16019038134331874229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206838 (A046691 (n + 3)).toNat

end

end A206835.P16019038134331874229

/-! ## A206835.P18392829218440847341

`A206838(eq[3, A152157(n)])`
-/

namespace A206835.P18392829218440847341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206835.P18392829218440847341

/-! ## A206835.P3093616111721264595

`A206838(eq[4, A193592(n)])`
-/

namespace A206835.P3093616111721264595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206835.P3093616111721264595

/-!
# A206836: 

The programs for A206836, there is no canonical definition to state claims against.
-/

/-! ## A206836.P15759826839423239769

`A206838(eq[3, A219347(n)])`
-/

namespace A206836.P15759826839423239769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206836.P15759826839423239769

/-! ## A206836.P17798145746068014695

`A206838(eq[5, A193592(n)])`
-/

namespace A206836.P17798145746068014695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206836.P17798145746068014695

/-! ## A206836.P10749326169067671426

`A206838(eq[8, A258709(n)])`
-/

namespace A206836.P10749326169067671426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206836.P10749326169067671426

/-!
# A206837: 

The programs for A206837, there is no canonical definition to state claims against.
-/

/-! ## A206837.P9867645990705646401

`A206838(A055999(n+4))`
-/

namespace A206837.P9867645990705646401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206838 (A055999 (n + 4)).toNat

end

end A206837.P9867645990705646401

/-!
# A206838: T(n,k) = Number of n X k 0..3 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A206838, there is no canonical definition to state claims against.
-/

/-! ## A206838.P13259894538093505903

`A206900(A177878(∑[n]))`
-/

namespace A206838.P13259894538093505903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206900 (A177878 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A206838.P13259894538093505903

/-! ## A206838.P9401168338633323961

`A206900(A043317(n+1))`
-/

namespace A206838.P9401168338633323961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206900 (A043317 (n + 1)).toNat

end

end A206838.P9401168338633323961

/-! ## A206838.P10152958896571367908

`A206900(A044914(n+1))`
-/

namespace A206838.P10152958896571367908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206900 (A044914 (n + 1)).toNat

end

end A206838.P10152958896571367908

/-! ## A206838.P7684221436714452586

`A206900(A062003(n)+1)`
-/

namespace A206838.P7684221436714452586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206900 (A062003 n + 1).toNat

end

end A206838.P7684221436714452586

/-! ## A206838.P5149653176071601959

`A207290(A062003(n)+1)`
-/

namespace A206838.P5149653176071601959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207290 (A062003 n + 1).toNat

end

end A206838.P5149653176071601959

/-!
# A206839: Number of 1 X n 0..3 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A206839, the canonical program `A206839.P14824470730182527344` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206839 has offset 0).

The definition of A206839 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206839.P14824470730182527344

`4*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=16, a(3)=62`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A206839

/-- `4*a(n-1)-2*a(n-3)+a(n-4)` -/
def P14824470730182527344.Spec : Prop :=
  ∀ n, P14824470730182527344.a n = A206839 n

theorem P14824470730182527344.correct : P14824470730182527344.Spec := by
  intro n
  simp only [A206839]

end A206839

/-! ## A206839.P16727981392343960040

`ogf(1/(1-4x+2x^3-x^4))`
-/

namespace A206839.P16727981392343960040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 0, 2, -1] n

end

end A206839.P16727981392343960040

namespace A206839

/-- `ogf(1/(1-4x+2x^3-x^4))` -/
def P16727981392343960040.Spec : Prop :=
  ∀ n, P16727981392343960040.a n = A206839 n

end A206839

/-! ## A206839.P14402747766593702212

`sqrt(A206840(n))`
-/

namespace A206839.P14402747766593702212
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A206840 n : ℝ)

end

end A206839.P14402747766593702212

namespace A206839

/-- `sqrt(A206840(n))` -/
def P14402747766593702212.Spec : Prop :=
  ∀ n, P14402747766593702212.a n = (A206839 n : ℝ)

end A206839

/-! ## A206839.P12963108276811780447

`root(A206840(n), ratio[A020714(n)])`
-/

namespace A206839.P12963108276811780447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206840 n : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A206839.P12963108276811780447

namespace A206839

/-- `root(A206840(n), ratio[A020714(n)])` -/
def P12963108276811780447.Spec : Prop :=
  ∀ n, P12963108276811780447.a n = (A206839 n : ℝ)

end A206839

/-! ## A206839.P18058071188909082356

`root(A206840(n), p?[A304182(n+1)])`
-/

namespace A206839.P18058071188909082356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304182 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206840 n : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A206839.P18058071188909082356

namespace A206839

/-- `root(A206840(n), p?[A304182(n+1)])` -/
def P18058071188909082356.Spec : Prop :=
  ∀ n, P18058071188909082356.a n = (A206839 n : ℝ)

end A206839

/-! ## A206839.P9526258593745138818

`root(A206840(n), 2%A075277(n+1))`
-/

namespace A206839.P9526258593745138818
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206840 n : ℝ) ^ (1 / (Int.tmod 2 (A075277 (n + 1)) : ℝ))

end

end A206839.P9526258593745138818

namespace A206839

/-- `root(A206840(n), 2%A075277(n+1))` -/
def P9526258593745138818.Spec : Prop :=
  ∀ n, P9526258593745138818.a n = (A206839 n : ℝ)

end A206839

/-!
# A206840: Number of 2 X n 0..3 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A206840, the canonical program `A206840.P4228612901965651321` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206840 has offset 0).

The definition of A206840 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206840.P4228612901965651321

`A206839(n)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A206840

/-- `A206839(n)²` -/
def P4228612901965651321.Spec : Prop :=
  ∀ n, P4228612901965651321.a n = A206840 n

theorem P4228612901965651321.correct : P4228612901965651321.Spec := by
  intro n
  simp only [A206840]

end A206840

/-! ## A206840.P16256642517847813729

`A206839(n)^(2%A047859(n))`
-/

namespace A206840.P16256642517847813729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206839 n : ℚ) ^ (Int.tmod 2 (A047859 n) : ℤ)

end

end A206840.P16256642517847813729

namespace A206840

/-- `A206839(n)^(2%A047859(n))` -/
def P16256642517847813729.Spec : Prop :=
  ∀ n, P16256642517847813729.a n = (A206840 n : ℚ)

end A206840

/-! ## A206840.P6298615473415707778

`A206839(n)^A001113(C(2, n+2))`
-/

namespace A206840.P6298615473415707778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206839 n : ℚ) ^ (A001113 (Nat.choose 2 (n + 2) + 1) : ℤ)

end

end A206840.P6298615473415707778

namespace A206840

/-- `A206839(n)^A001113(C(2, n+2))` -/
def P6298615473415707778.Spec : Prop :=
  ∀ n, P6298615473415707778.a n = (A206840 n : ℚ)

end A206840

/-! ## A206840.P6711996916797213795

`A206839(n)^A020639(A008574(n))`
-/

namespace A206840.P6711996916797213795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206839 n : ℚ) ^ (A020639 (A008574 n).toNat : ℤ)

end

end A206840.P6711996916797213795

namespace A206840

/-- `A206839(n)^A020639(A008574(n))` -/
def P6711996916797213795.Spec : Prop :=
  ∀ n, P6711996916797213795.a n = (A206840 n : ℚ)

end A206840

/-! ## A206840.P3895997179806392190

`A206839(n)^A020639(A170871(n))`
-/

namespace A206840.P3895997179806392190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206839 n : ℚ) ^ (A020639 (A170871 n).toNat : ℤ)

end

end A206840.P3895997179806392190

namespace A206840

/-- `A206839(n)^A020639(A170871(n))` -/
def P3895997179806392190.Spec : Prop :=
  ∀ n, P3895997179806392190.a n = (A206840 n : ℚ)

end A206840

/-! ## A206840.P14145863979311347361

`A206839(A004525(2*n))*A206839(n)`
-/

namespace A206840.P14145863979311347361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206839 (A004525 (2 * n)).toNat * A206839 n

end

end A206840.P14145863979311347361

namespace A206840

/-- `A206839(A004525(2*n))*A206839(n)` -/
def P14145863979311347361.Spec : Prop :=
  ∀ n, P14145863979311347361.a n = A206840 n

end A206840

/-! ## A206840.P7543924969891611517

`A206839(n)%A324568(n)*A206839(n)`
-/

namespace A206840.P7543924969891611517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206839 n) (A324568 n) * A206839 n

end

end A206840.P7543924969891611517

namespace A206840

/-- `A206839(n)%A324568(n)*A206839(n)` -/
def P7543924969891611517.Spec : Prop :=
  ∀ n, P7543924969891611517.a n = A206840 n

end A206840

/-!
# A206841: Number of 3 X n 0..3 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A206841, there is no canonical definition to state claims against.
-/

/-! ## A206841.P17827802349063803487

`A206838(∑[n+2]+4)`
-/

namespace A206841.P17827802349063803487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206838 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206841.P17827802349063803487

/-! ## A206841.P6022291632268549095

`A206838(A167614(n+1))*A302828(n)`
-/

namespace A206841.P6022291632268549095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206838 (A167614 (n + 1)).toNat * A302828 n

end

end A206841.P6022291632268549095

/-! ## A206841.P18123662298302839914

`A206838(A167614(n+1))*A303694(n)`
-/

namespace A206841.P18123662298302839914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206838 (A167614 (n + 1)).toNat * A303694 n

end

end A206841.P18123662298302839914

/-! ## A206841.P6328392145438085420

`A206838(A167614(n+1))*A303864(n)`
-/

namespace A206841.P6328392145438085420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206838 (A167614 (n + 1)).toNat * A303864 n

end

end A206841.P6328392145438085420

/-! ## A206841.P17552628443101656997

`lcm(A206838(A167614(n+1)), A307139(n))`
-/

namespace A206841.P17552628443101656997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A206838 (A167614 (n + 1)).toNat) (A307139 n)

end

end A206841.P17552628443101656997

/-!
# A206842: Number of 4Xn 0..3 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A206842, there is no canonical definition to state claims against.
-/

/-! ## A206842.P13632679274779827305

`A206838(A167614(n+2)+1)`
-/

namespace A206842.P13632679274779827305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206838 (A167614 (n + 2) + 1).toNat

end

end A206842.P13632679274779827305

/-! ## A206842.P6537023044174120880

`A206838(Δ[A264443(n)-n²])`
-/

namespace A206842.P6537023044174120880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206838 (f1 (n + 1) - f1 n).toNat

end

end A206842.P6537023044174120880

/-!
# A206843: Number of 5Xn 0..3 arrays avoiding the pattern z-2 z-1 z in any row, column, nw-to-se diagonal or ne-to-sw antidiagonal.

The programs for A206843, there is no canonical definition to state claims against.
-/

/-! ## A206843.P17952232931107172809

`A206838(eq[6, A131818(n+1)])`
-/

namespace A206843.P17952232931107172809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206843.P17952232931107172809

/-!
# A206848: G.f.: exp( Sum_{n>=1} x^n/n * Sum_{k=0..n} binomial(n^2, k^2) ).

The programs for A206848, there is no canonical definition to state claims against.
-/

/-! ## A206848.P4563284094817226447

`A091974(A091687(n+1))`
-/

namespace A206848.P4563284094817226447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091974 (A091687 (n + 1)).toNat

end

end A206848.P4563284094817226447

/-!
# A206849: a(n) = Sum_{k=0..n} binomial(n^2, k^2).

The programs for A206849, there is no canonical definition to state claims against.
-/

/-! ## A206849.P5117619397999695476

`A003099(n²)`
-/

namespace A206849.P5117619397999695476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003099 (n ^ 2)

end

end A206849.P5117619397999695476

/-! ## A206849.P3111660358712989594

`record[A003099(A091453(n)+n)]`
-/

namespace A206849.P3111660358712989594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003099 (A091453 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206849.P3111660358712989594

/-! ## A206849.P827920753596668655

`record[A003099(A276689(n)+n)]`
-/

namespace A206849.P827920753596668655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003099 (A276689 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206849.P827920753596668655

/-! ## A206849.P18061633519304729126

`record[A003099(n*A010052(n))]`
-/

namespace A206849.P18061633519304729126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003099 ((n : ℤ) * A010052 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206849.P18061633519304729126

/-! ## A206849.P2044064310146577577

`record[gcd(A003099(n), A053186(n))]`
-/

namespace A206849.P2044064310146577577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003099 n) (A053186 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206849.P2044064310146577577

/-!
# A206850: G.f.: exp( Sum_{n>=1} x^n/n * Sum_{k=0..n} binomial(n^2, k^2) * x^k ).

The programs for A206850, there is no canonical definition to state claims against.
-/

/-! ## A206850.P2359599492825256592

`A247936(n)+A002264(A094651(n))`
-/

namespace A206850.P2359599492825256592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247936 n + A002264 (A094651 n).toNat

end

end A206850.P2359599492825256592

/-! ## A206850.P16136943437706907313

`A248566(A028310(A187252(n)+n))`
-/

namespace A206850.P16136943437706907313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248566 (A028310 (A187252 n + (n : ℤ)).toNat).toNat

end

end A206850.P16136943437706907313

/-! ## A206850.P9314509006954051948

`A248566(A187252(n)+A118541(n))`
-/

namespace A206850.P9314509006954051948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248566 (A187252 n + A118541 n).toNat

end

end A206850.P9314509006954051948

/-!
# A206851: L.g.f.: Sum_{n>=1} x^n/n * Sum_{k=0..n} binomial(n^2, k^2)*x^k = Sum_{n>=1} a(n)*x^n/n.

The programs for A206851, there is no canonical definition to state claims against.
-/

/-! ## A206851.P5589640462785572914

`∑[6*6^(C(a(n-1)-n, 2)-n)]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A206851.P5589640462785572914
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 4, 8] fun n f1 =>
  6 * (6 : ℚ) ^ ((Nat.choose (SequenceMachineLib.roundAway (f1 (n - 1) - (n : ℚ))).toNat 2 : ℤ) - (n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206851.P5589640462785572914

/-!
# A206853: a(1)=1, for n>1, a(n) is the least number > a(n-1) such that the Hamming distance D(a(n-1), a(n)) = 2.

The programs for A206853, the canonical program `A206853.P10300863134340145866` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206853 has offset 1).

The definition of A206853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206853.P14650675442391364234

`xor(1, A207063(n+1))`
-/

namespace A206853.P14650675442391364234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A207063 (n + 1))

end

end A206853.P14650675442391364234

namespace A206853

/-- `xor(1, A207063(n+1))` -/
def P14650675442391364234.Spec : Prop :=
  ∀ n, P14650675442391364234.a n = A206853 (n + 1)

end A206853

/-! ## A206853.P10300863134340145866

`A081118(n+1)-A057212(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A206853

/-- `A081118(n+1)-A057212(n+1)` -/
def P10300863134340145866.Spec : Prop :=
  ∀ n, P10300863134340145866.a n = A206853 (n + 1)

theorem P10300863134340145866.correct : P10300863134340145866.Spec := by
  intro n
  simp only [A206853, Nat.add_sub_cancel]

end A206853

/-! ## A206853.P3651708949423243834

`A043569(n+1)-A201208(n+1)`
-/

namespace A206853.P3651708949423243834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043569 (n + 1) - A201208 (n + 1)

end

end A206853.P3651708949423243834

namespace A206853

/-- `A043569(n+1)-A201208(n+1)` -/
def P3651708949423243834.Spec : Prop :=
  ∀ n, P3651708949423243834.a n = A206853 (n + 1)

theorem P3651708949423243834.correct : P3651708949423243834.Spec := by
  intro n
  simp only [A206853, Nat.add_sub_cancel, A206853.P3651708949423243834.a, A206853.P10300863134340145866.a, A043569, A043569.P15388862397033280106.a, A057212, A057212.P15780615681694366480.a, A081118, A081118.P6487108056144640916.a, A201208, A201208.P11775252334027749297.a, A002260, A002260.P769748059679640451.a, A004736, A004736.P10337537277358081527.a, A057211, A057211.P13662060525465798747.a, A000035, A000035.P2023072528413494694.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P12129691700837801527.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A206853

/-! ## A206853.P5677654325501801206

`A081118(n+1)-A003987(n)%2`
-/

namespace A206853.P5677654325501801206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1) - Int.tmod (A003987 n) 2

end

end A206853.P5677654325501801206

namespace A206853

/-- `A081118(n+1)-A003987(n)%2` -/
def P5677654325501801206.Spec : Prop :=
  ∀ n, P5677654325501801206.a n = A206853 (n + 1)

end A206853

/-! ## A206853.P14454482067602302254

`A057211(n+1)+A081118(n+1)-1`
-/

namespace A206853.P14454482067602302254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1) + (A081118 (n + 1) - 1)

end

end A206853.P14454482067602302254

namespace A206853

/-- `A057211(n+1)+A081118(n+1)-1` -/
def P14454482067602302254.Spec : Prop :=
  ∀ n, P14454482067602302254.a n = A206853 (n + 1)

theorem P14454482067602302254.correct : P14454482067602302254.Spec := by
  intro n
  simp only [A206853, Nat.add_sub_cancel, A206853.P14454482067602302254.a, A206853.P10300863134340145866.a, A057211, A057211.P13662060525465798747.a, A057212, A057212.P15780615681694366480.a, A081118, A081118.P6487108056144640916.a, A000035, A000035.P2023072528413494694.a, A002024, A002024.P11700297927830783882.a, A002260, A002260.P769748059679640451.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002262, A002262.P12129691700837801527.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A206853

/-! ## A206853.P12261620105135119505

`A081118(n+1)-A003057(n+2)%2`
-/

namespace A206853.P12261620105135119505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1) - Int.tmod (A003057 (n + 2)) 2

end

end A206853.P12261620105135119505

namespace A206853

/-- `A081118(n+1)-A003057(n+2)%2` -/
def P12261620105135119505.Spec : Prop :=
  ∀ n, P12261620105135119505.a n = A206853 (n + 1)

end A206853

/-! ## A206853.P8971366673109394541

`xor(1, A081118(n+1)-A143182(n)%2)`
-/

namespace A206853.P8971366673109394541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A081118 (n + 1) - Int.tmod (A143182 n) 2)

end

end A206853.P8971366673109394541

namespace A206853

/-- `xor(1, A081118(n+1)-A143182(n)%2)` -/
def P8971366673109394541.Spec : Prop :=
  ∀ n, P8971366673109394541.a n = A206853 (n + 1)

end A206853

/-! ## A206853.P17814975261592194015

`A081118(n+1)-A000035(A003056(n))`
-/

namespace A206853.P17814975261592194015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (n + 1) - A000035 (A003056 n).toNat

end

end A206853.P17814975261592194015

namespace A206853

/-- `A081118(n+1)-A000035(A003056(n))` -/
def P17814975261592194015.Spec : Prop :=
  ∀ n, P17814975261592194015.a n = A206853 (n + 1)

end A206853

/-! ## A206853.P13696874072697931753

`A000069(A089633(n)+1)`
-/

namespace A206853.P13696874072697931753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A089633 n + 1).toNat

end

end A206853.P13696874072697931753

namespace A206853

/-- `A000069(A089633(n)+1)` -/
def P13696874072697931753.Spec : Prop :=
  ∀ n, P13696874072697931753.a n = A206853 (n + 1)

end A206853

/-! ## A206853.P14908772280441106103

`A000069(A023758(n+2))`
-/

namespace A206853.P14908772280441106103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A023758 (n + 2)).toNat

end

end A206853.P14908772280441106103

namespace A206853

/-- `A000069(A023758(n+2))` -/
def P14908772280441106103.Spec : Prop :=
  ∀ n, P14908772280441106103.a n = A206853 (n + 1)

end A206853

/-!
# A206855: The sum of the degree of each root node over all rooted labeled trees on n nodes.

The programs for A206855, there is no canonical definition to state claims against.
-/

/-! ## A206855.P4454874488021724240

`A243203(A133263(n))`
-/

namespace A206855.P4454874488021724240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243203 (A133263 n).toNat

end

end A206855.P4454874488021724240

/-! ## A206855.P7264392866496911203

`A243203(A238531(n+1))`
-/

namespace A206855.P7264392866496911203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243203 (A238531 (n + 1)).toNat

end

end A206855.P7264392866496911203

/-! ## A206855.P11365277089565955757

`2*A053506(A028310(n))`
-/

namespace A206855.P11365277089565955757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053506 (A028310 n).toNat

end

end A206855.P11365277089565955757

/-! ## A206855.P17875453471850655642

`A000272(n)*A289207(2*n)`
-/

namespace A206855.P17875453471850655642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 n * A289207 (2 * n)

end

end A206855.P17875453471850655642

/-! ## A206855.P11867125659789420107

`A000272(n)*A001414(ceil(2^(n-1)))`
-/

namespace A206855.P11867125659789420107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 n * A001414 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A206855.P11867125659789420107

/-!
# A206856: Number of n X n 0..2 arrays avoiding the pattern z z+1 z in any row, column, diagonal or antidiagonal.

The programs for A206856, there is no canonical definition to state claims against.
-/

/-! ## A206856.P7451441980072925942

`A206863(∑[4*n]+1)`
-/

namespace A206856.P7451441980072925942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206863 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206856.P7451441980072925942

/-! ## A206856.P13961194622889897322

`record[A206863(Δ[A235355(n)])]`
-/

namespace A206856.P13961194622889897322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206863 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206856.P13961194622889897322

/-! ## A206856.P17675553139367840591

`or(A000038(n), A206863(A046092(n)+1))`
-/

namespace A206856.P17675553139367840591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A206863 (A046092 n + 1).toNat)

end

end A206856.P17675553139367840591

/-!
# A206857: Number of n X 2 0..2 arrays avoiding the pattern z z+1 z in any row, column, diagonal or antidiagonal.

The programs for A206857, the canonical program `A206857.P6550092540875611181` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206857 has offset 1).

The definition of A206857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206857.P6550092540875611181

`A098182(n+2)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A206857

/-- `A098182(n+2)²` -/
def P6550092540875611181.Spec : Prop :=
  ∀ n, P6550092540875611181.a n = A206857 (n + 1)

theorem P6550092540875611181.correct : P6550092540875611181.Spec := by
  intro n
  simp only [A206857, Nat.add_sub_cancel]

end A206857

/-! ## A206857.P9373309623012806791

`Δ[A202207(n+1)]²`
-/

namespace A206857.P9373309623012806791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A206857.P9373309623012806791

namespace A206857

/-- `Δ[A202207(n+1)]²` -/
def P9373309623012806791.Spec : Prop :=
  ∀ n, P9373309623012806791.a n = A206857 (n + 1)

end A206857

/-! ## A206857.P11605354972065901456

`Δ[Δ[record[A200752(n)]]]²`
-/

namespace A206857.P11605354972065901456
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200752 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A206857.P11605354972065901456

namespace A206857

/-- `Δ[Δ[record[A200752(n)]]]²` -/
def P11605354972065901456.Spec : Prop :=
  ∀ n, P11605354972065901456.a n = A206857 (n + 1)

end A206857

/-! ## A206857.P3770895150382837225

`Δ[Δ[A200752(n+3)]]²`
-/

namespace A206857.P3770895150382837225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200752 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A206857.P3770895150382837225

namespace A206857

/-- `Δ[Δ[A200752(n+3)]]²` -/
def P3770895150382837225.Spec : Prop :=
  ∀ n, P3770895150382837225.a n = A206857 (n + 1)

end A206857

/-! ## A206857.P8575684937972081807

`(A202207(n+1)-A202207(n+2))²`
-/

namespace A206857.P8575684937972081807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A202207 (n + 1) - A202207 (n + 2)) ^ 2

end

end A206857.P8575684937972081807

namespace A206857

/-- `(A202207(n+1)-A202207(n+2))²` -/
def P8575684937972081807.Spec : Prop :=
  ∀ n, P8575684937972081807.a n = A206857 (n + 1)

end A206857

/-! ## A206857.P2063554832100540019

`A098182(n+2)^A020639(2*(n+1))`
-/

namespace A206857.P2063554832100540019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098182 (n + 2) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A206857.P2063554832100540019

namespace A206857

/-- `A098182(n+2)^A020639(2*(n+1))` -/
def P2063554832100540019.Spec : Prop :=
  ∀ n, P2063554832100540019.a n = (A206857 (n + 1) : ℚ)

end A206857

/-! ## A206857.P8360652001807581903

`or(A098182(n+2)*A098182(n+2), A000007(n))`
-/

namespace A206857.P8360652001807581903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A098182 (n + 2) * A098182 (n + 2)) (A000007 n)

end

end A206857.P8360652001807581903

namespace A206857

/-- `or(A098182(n+2)*A098182(n+2), A000007(n))` -/
def P8360652001807581903.Spec : Prop :=
  ∀ n, P8360652001807581903.a n = A206857 (n + 1)

end A206857

/-!
# A206858: Number of nX3 0..2 arrays avoiding the pattern z z+1 z in any row, column, diagonal or antidiagonal.

The programs for A206858, there is no canonical definition to state claims against.
-/

/-! ## A206858.P15618302143664379972

`A206863(∑[n+2]+4)`
-/

namespace A206858.P15618302143664379972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206863 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206858.P15618302143664379972

/-! ## A206858.P6799501458668361722

`record[A206863(A167614(∏{p}[n+1, #^val(n+1, #²)]))]`
-/

namespace A206858.P6799501458668361722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206863 (A167614 (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206858.P6799501458668361722

/-! ## A206858.P4410681534232784102

`A206863(A167614(n+1))+A025442(n)`
-/

namespace A206858.P4410681534232784102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206863 (A167614 (n + 1)).toNat + A025442 n

end

end A206858.P4410681534232784102

/-! ## A206858.P14044731253951388086

`lcm(A033999(n), A206863(A167614(n+1)))`
-/

namespace A206858.P14044731253951388086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A206863 (A167614 (n + 1)).toNat)

end

end A206858.P14044731253951388086

/-! ## A206858.P1977022461416183749

`or(A086075(n), A206863(A167614(n+1)))`
-/

namespace A206858.P1977022461416183749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086075 n) (A206863 (A167614 (n + 1)).toNat)

end

end A206858.P1977022461416183749

/-!
# A206859: Number of nX4 0..2 arrays avoiding the pattern z z+1 z in any row, column, diagonal or antidiagonal.

The programs for A206859, there is no canonical definition to state claims against.
-/

/-! ## A206859.P1410487394494351018

`A206863(A374004(n+1))`
-/

namespace A206859.P1410487394494351018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206863 (A374004 (n + 1)).toNat

end

end A206859.P1410487394494351018

/-! ## A206859.P6799571279591197901

`A206863(A141214(n)+7)`
-/

namespace A206859.P6799571279591197901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206863 (A141214 n + 7).toNat

end

end A206859.P6799571279591197901

/-! ## A206859.P13378624983497568160

`A206863(A052905(n)+9)`
-/

namespace A206859.P13378624983497568160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206863 (A052905 n + 9).toNat

end

end A206859.P13378624983497568160

/-! ## A206859.P11852984840593842628

`A206863(A055999(n)+10)`
-/

namespace A206859.P11852984840593842628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206863 (A055999 n + 10).toNat

end

end A206859.P11852984840593842628

/-! ## A206859.P16280031033348647573

`A206863(A167614(n+2)+1)`
-/

namespace A206859.P16280031033348647573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206863 (A167614 (n + 2) + 1).toNat

end

end A206859.P16280031033348647573

/-!
# A206860: Number of nX5 0..2 arrays avoiding the pattern z z+1 z in any row, column, diagonal or antidiagonal.

The programs for A206860, there is no canonical definition to state claims against.
-/

/-! ## A206860.P4638755621356697131

`A206863(A374005(n+1))`
-/

namespace A206860.P4638755621356697131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206863 (A374005 (n + 1)).toNat

end

end A206860.P4638755621356697131

/-! ## A206860.P2066276533765778382

`A206863(eq[7, A066657(n)])`
-/

namespace A206860.P2066276533765778382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206863 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206860.P2066276533765778382

/-! ## A206860.P855025373933091511

`A206863(eq[6, A131818(n+1)])`
-/

namespace A206860.P855025373933091511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206863 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206860.P855025373933091511

/-! ## A206860.P6159473870908318609

`A206863(A052905(n+3)-(2*n+1))`
-/

namespace A206860.P6159473870908318609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206863 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A206860.P6159473870908318609

/-! ## A206860.P7848805102078802915

`A206863(Δ[A264443(n)])`
-/

namespace A206860.P7848805102078802915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206863 (f1 (n + 1) - f1 n).toNat

end

end A206860.P7848805102078802915

/-!
# A206861: Number of nX6 0..2 arrays avoiding the pattern z z+1 z in any row, column, diagonal or antidiagonal.

The programs for A206861, there is no canonical definition to state claims against.
-/

/-! ## A206861.P12668919325557309464

`A206863(A374007(n+1))`
-/

namespace A206861.P12668919325557309464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206863 (A374007 (n + 1)).toNat

end

end A206861.P12668919325557309464

/-! ## A206861.P4654709579961377912

`A206863(eq[5, A193592(n)])`
-/

namespace A206861.P4654709579961377912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206863 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206861.P4654709579961377912

/-! ## A206861.P6760583074823400749

`A206863(eq[8, A258709(n)])`
-/

namespace A206861.P6760583074823400749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206863 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206861.P6760583074823400749

/-! ## A206861.P12135517637455901251

`A206863(A055999(n+3)+1)`
-/

namespace A206861.P12135517637455901251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206863 (A055999 (n + 3) + 1).toNat

end

end A206861.P12135517637455901251

/-! ## A206861.P10567528591679111215

`A206863(Δ[A264443(n+1)]-1)`
-/

namespace A206861.P10567528591679111215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206863 (f1 (n + 1) - f1 n - 1).toNat

end

end A206861.P10567528591679111215

/-!
# A206862: Number of nX7 0..2 arrays avoiding the pattern z z+1 z in any row, column, diagonal or antidiagonal.

The programs for A206862, there is no canonical definition to state claims against.
-/

/-! ## A206862.P4646859716188413844

`A206863(A374008(n+1))`
-/

namespace A206862.P4646859716188413844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206863 (A374008 (n + 1)).toNat

end

end A206862.P4646859716188413844

/-! ## A206862.P10380590113587370444

`A206863(eq[6, A193592(n)])`
-/

namespace A206862.P10380590113587370444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206863 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206862.P10380590113587370444

/-!
# A206863: T(n,k)=Number of nXk 0..2 arrays avoiding the pattern z z+1 z in any row, column, diagonal or antidiagonal.

The programs for A206863, there is no canonical definition to state claims against.
-/

/-! ## A206863.P13321713326017415139

`or(1, A207201(∏{e}[Δ[3^n], #+1]/2))`
-/

namespace A206863.P13321713326017415139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A207201 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℚ) / 2)).toNat)

end

end A206863.P13321713326017415139

/-! ## A206863.P13446114237644022225

`A206957(A084192(∑[n]))`
-/

namespace A206863.P13446114237644022225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A206863.P13446114237644022225

/-! ## A206863.P3900323934155120193

`A206957(A084193(∑[n]))`
-/

namespace A206863.P3900323934155120193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206957 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A206863.P3900323934155120193

/-! ## A206863.P10224853769126145100

`A207989(A327487(∑[n]))`
-/

namespace A206863.P10224853769126145100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207989 (A327487 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A206863.P10224853769126145100

/-! ## A206863.P14758449971422061900

`A004151(A206957(n+1))`
-/

namespace A206863.P14758449971422061900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A206957 (n + 1)).toNat

end

end A206863.P14758449971422061900

/-!
# A206864: Prime numbers of the form Phi_k(m), where k > 2, |m| > 1, and Phi_k(m) is the k-th cyclotomic polynomial evaluated at m.

The programs for A206864, there is no canonical definition to state claims against.
-/

/-! ## A206864.P3602475422158734057

`∪[A121326(n+1), A206945(n+1)]`
-/

namespace A206864.P3602475422158734057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A206864.P3602475422158734057

/-! ## A206864.P2401518370546154057

`∪[A206945(n+1), A296422(n+1)]`
-/

namespace A206864.P2401518370546154057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A206864.P2401518370546154057

/-! ## A206864.P13305777131659667405

`∪[A206945(n+1), A383925(n+1)]`
-/

namespace A206864.P13305777131659667405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A206864.P13305777131659667405

/-! ## A206864.P13957770724342371885

`p?[A206942(n+1)]`
-/

namespace A206864.P13957770724342371885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A206864.P13957770724342371885

/-! ## A206864.P13649701590466658763

`p?[record[A206942(A133310(n))]]`
-/

namespace A206864.P13649701590466658763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206942 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A206864.P13649701590466658763

/-!
# A206865: Number of n X n 0..1 arrays avoiding 0 0 0 horizontally and 1 0 1 vertically.

The programs for A206865, there is no canonical definition to state claims against.
-/

/-! ## A206865.P17755740285500870083

`A206871(∑[4*n]+1)`
-/

namespace A206865.P17755740285500870083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206865.P17755740285500870083

/-! ## A206865.P10586157125875403151

`record[A003982(n)*A206871(n+1)]`
-/

namespace A206865.P10586157125875403151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A206871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206865.P10586157125875403151

/-! ## A206865.P5770602755776074344

`record[gcd(A003987(n), A206871(n+1))]`
-/

namespace A206865.P5770602755776074344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A206871 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206865.P5770602755776074344

/-! ## A206865.P8365342081963042119

`A206871(A001844(n))+A025439(n)`
-/

namespace A206865.P8365342081963042119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A001844 n).toNat + A025439 n

end

end A206865.P8365342081963042119

/-! ## A206865.P12689304890050431539

`A308919(n)+A206871(A001844(n))`
-/

namespace A206865.P12689304890050431539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308919 n + A206871 (A001844 n).toNat

end

end A206865.P12689304890050431539

/-!
# A206866: Number of n X 3 0..1 arrays avoiding 0 0 0 horizontally and 1 0 1 vertically.

The programs for A206866, there is no canonical definition to state claims against.
-/

/-! ## A206866.P17702961748273787774

`A206871(∑[n+3]+1)`
-/

namespace A206866.P17702961748273787774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206866.P17702961748273787774

/-! ## A206866.P12480039015356609687

`or(1, A206871(Δ[A008778(n)]))`
-/

namespace A206866.P12480039015356609687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A206871 (f1 (n + 1) - f1 n).toNat)

end

end A206866.P12480039015356609687

/-! ## A206866.P14082367699231898354

`A206871(Δ[A008778(n)])+A185284(n)`
-/

namespace A206866.P14082367699231898354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (f1 (n + 1) - f1 n).toNat + A185284 n

end

end A206866.P14082367699231898354

/-! ## A206866.P17447548548837448357

`A206871(Δ[A008778(n)])^A136400(n)!`
-/

namespace A206866.P17447548548837448357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (f1 (n + 1) - f1 n).toNat ^ Nat.factorial (A136400 n).toNat

end

end A206866.P17447548548837448357

/-!
# A206867: Number of nX4 0..1 arrays avoiding 0 0 0 horizontally and 1 0 1 vertically.

The programs for A206867, there is no canonical definition to state claims against.
-/

/-! ## A206867.P11269981586784531585

`A206871(A141214(n+1))`
-/

namespace A206867.P11269981586784531585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A141214 (n + 1)).toNat

end

end A206867.P11269981586784531585

/-! ## A206867.P7124791957733780836

`A206871(A055998(n+2))`
-/

namespace A206867.P7124791957733780836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A055998 (n + 2)).toNat

end

end A206867.P7124791957733780836

/-! ## A206867.P4193122226522068508

`A206871(A155212(n)+5)`
-/

namespace A206867.P4193122226522068508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A155212 n + 5).toNat

end

end A206867.P4193122226522068508

/-! ## A206867.P15600837263351663870

`A206871(A056000(n)+7)`
-/

namespace A206867.P15600837263351663870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A056000 n + 7).toNat

end

end A206867.P15600837263351663870

/-! ## A206867.P13372819569373896388

`A206871(eq[3, A193592(n)])`
-/

namespace A206867.P13372819569373896388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206867.P13372819569373896388

/-!
# A206868: Number of n X 5 0..1 arrays avoiding 0 0 0 horizontally and 1 0 1 vertically.

The programs for A206868, there is no canonical definition to state claims against.
-/

/-! ## A206868.P14425832511866496440

`A206871(Δ[A264443(n)])`
-/

namespace A206868.P14425832511866496440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (f1 (n + 1) - f1 n).toNat

end

end A206868.P14425832511866496440

/-! ## A206868.P770451388052919772

`A206871(eq[4, A193592(n)])`
-/

namespace A206868.P770451388052919772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206868.P770451388052919772

/-! ## A206868.P3731463913951734597

`A206871(eq[8, A057728(n+1)])`
-/

namespace A206868.P3731463913951734597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206868.P3731463913951734597

/-! ## A206868.P4933004944286689042

`A206871(A055998(n+2)+n+4)`
-/

namespace A206868.P4933004944286689042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A055998 (n + 2) + (n + 4 : ℤ)).toNat

end

end A206868.P4933004944286689042

/-! ## A206868.P16013911624793458397

`A206871(A167499(n)+A016813(n+1))`
-/

namespace A206868.P16013911624793458397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A167499 n + A016813 (n + 1)).toNat

end

end A206868.P16013911624793458397

/-!
# A206869: Number of nX6 0..1 arrays avoiding 0 0 0 horizontally and 1 0 1 vertically.

The programs for A206869, there is no canonical definition to state claims against.
-/

/-! ## A206869.P12902852875578112255

`A206871(A052905(n+3))`
-/

namespace A206869.P12902852875578112255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A052905 (n + 3)).toNat

end

end A206869.P12902852875578112255

/-! ## A206869.P7572647623544700981

`A206871(A056119(n)+16)`
-/

namespace A206869.P7572647623544700981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A056119 n + 16).toNat

end

end A206869.P7572647623544700981

/-! ## A206869.P6738434833842260396

`A206871(eq[3, A219347(n)])`
-/

namespace A206869.P6738434833842260396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206869.P6738434833842260396

/-! ## A206869.P16362294927698529590

`A206871(eq[5, A193592(n)])`
-/

namespace A206869.P16362294927698529590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206869.P16362294927698529590

/-! ## A206869.P16829611800056728776

`A206871(A055999(n+3)+1)`
-/

namespace A206869.P16829611800056728776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A055999 (n + 3) + 1).toNat

end

end A206869.P16829611800056728776

/-!
# A206870: Number of nX7 0..1 arrays avoiding 0 0 0 horizontally and 1 0 1 vertically.

The programs for A206870, there is no canonical definition to state claims against.
-/

/-! ## A206870.P3792106989657393128

`A206871(A055999(n+4))`
-/

namespace A206870.P3792106989657393128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A055999 (n + 4)).toNat

end

end A206870.P3792106989657393128

/-! ## A206870.P18133048900024796919

`A206871(eq[4, A219347(n)])`
-/

namespace A206870.P18133048900024796919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206870.P18133048900024796919

/-! ## A206870.P11085826690131118503

`A206871(eq[6, A193592(n)])`
-/

namespace A206870.P11085826690131118503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206870.P11085826690131118503

/-! ## A206870.P8442218253442388933

`A206871(eq[10, A185782(n+1)])`
-/

namespace A206870.P8442218253442388933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206870.P8442218253442388933

/-! ## A206870.P12690474680151113696

`A206871(eq[32, A057728(n+1)])`
-/

namespace A206870.P12690474680151113696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206870.P12690474680151113696

/-!
# A206871: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 horizontally and 1 0 1 vertically.

The programs for A206871, there is no canonical definition to state claims against.
-/

/-! ## A206871.P14139670977607412000

`A206936(n+1)+val(A029913(n+2), 8)`
-/

namespace A206871.P14139670977607412000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (n + 1) + (SequenceMachineLib.valuation (A029913 (n + 2)).toNat 8 : ℤ)

end

end A206871.P14139670977607412000

/-! ## A206871.P5642838851293980032

`A206936(n+1)+A025465(A276658(n))`
-/

namespace A206871.P5642838851293980032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (n + 1) + A025465 (A276658 n).toNat

end

end A206871.P5642838851293980032

/-! ## A206871.P5000776695551083899

`or(A107846(A062112(n)), A206936(n+1))`
-/

namespace A206871.P5000776695551083899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107846 (A062112 n).toNat) (A206936 (n + 1))

end

end A206871.P5000776695551083899

/-! ## A206871.P7917707021358745481

`A295659(A164363(n+1))+A206936(n+1)`
-/

namespace A206871.P7917707021358745481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 (A164363 (n + 1)).toNat + A206936 (n + 1)

end

end A206871.P7917707021358745481

/-! ## A206871.P2245245237957935724

`A206936(A077168(n))`
-/

namespace A206871.P2245245237957935724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (A077168 n).toNat

end

end A206871.P2245245237957935724

/-!
# A206872: Number of 3 X n 0..1 arrays avoiding 0 0 0 horizontally and 1 0 1 vertically.

The programs for A206872, there is no canonical definition to state claims against.
-/

/-! ## A206872.P16304571899236531713

`A206871(∑[n+2]+4)`
-/

namespace A206872.P16304571899236531713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206872.P16304571899236531713

/-! ## A206872.P3199627946135911387

`A206936(∑[n+2]+4)`
-/

namespace A206872.P3199627946135911387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206936 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206872.P3199627946135911387

/-! ## A206872.P17245104060308494137

`or(1, A206871(A167614(n+1)))`
-/

namespace A206872.P17245104060308494137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A206871 (A167614 (n + 1)).toNat)

end

end A206872.P17245104060308494137

/-! ## A206872.P13832485339845510241

`A206871(A167614(n+1))+A025439(n)`
-/

namespace A206872.P13832485339845510241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A167614 (n + 1)).toNat + A025439 n

end

end A206872.P13832485339845510241

/-! ## A206872.P15594890632027298971

`A206871(A167614(n+1))+A086015(n)`
-/

namespace A206872.P15594890632027298971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A167614 (n + 1)).toNat + A086015 n

end

end A206872.P15594890632027298971

/-!
# A206873: Number of 4Xn 0..1 arrays avoiding 0 0 0 horizontally and 1 0 1 vertically.

The programs for A206873, there is no canonical definition to state claims against.
-/

/-! ## A206873.P9141837509944218165

`A206871(A052905(n)+9)`
-/

namespace A206873.P9141837509944218165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A052905 n + 9).toNat

end

end A206873.P9141837509944218165

/-! ## A206873.P17196150799113896500

`A206871(A055999(n)+10)`
-/

namespace A206873.P17196150799113896500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A055999 n + 10).toNat

end

end A206873.P17196150799113896500

/-! ## A206873.P3451454726474397664

`A206871(Δ[A008778(n)]+6)`
-/

namespace A206873.P3451454726474397664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (f1 (n + 1) - f1 n + 6).toNat

end

end A206873.P3451454726474397664

/-! ## A206873.P5858335887531254361

`A206871(A167614(n+2)+1)`
-/

namespace A206873.P5858335887531254361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A167614 (n + 2) + 1).toNat

end

end A206873.P5858335887531254361

/-! ## A206873.P439192375939468021

`A206871(A167499(n+2)-1)`
-/

namespace A206873.P439192375939468021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A167499 (n + 2) - 1).toNat

end

end A206873.P439192375939468021

/-!
# A206874: Number of 5Xn 0..1 arrays avoiding 0 0 0 horizontally and 1 0 1 vertically.

The programs for A206874, there is no canonical definition to state claims against.
-/

/-! ## A206874.P573268875138738171

`A206871(A167499(n+3))`
-/

namespace A206874.P573268875138738171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A167499 (n + 3)).toNat

end

end A206874.P573268875138738171

/-! ## A206874.P10451470607072134485

`A206871(A155212(n)+13)`
-/

namespace A206874.P10451470607072134485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A155212 n + 13).toNat

end

end A206874.P10451470607072134485

/-! ## A206874.P14915385724976172005

`A206871(A056000(n)+15)`
-/

namespace A206874.P14915385724976172005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A056000 n + 15).toNat

end

end A206874.P14915385724976172005

/-! ## A206874.P9019696905108568441

`A206871(A055998(n+2)+8)`
-/

namespace A206874.P9019696905108568441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A055998 (n + 2) + 8).toNat

end

end A206874.P9019696905108568441

/-! ## A206874.P7739952528603567599

`A206871(A051936(n+4)+14)`
-/

namespace A206874.P7739952528603567599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A051936 (n + 4) + 14).toNat

end

end A206874.P7739952528603567599

/-!
# A206875: Number of 6 X n 0..1 arrays avoiding 0 0 0 horizontally and 1 0 1 vertically.

The programs for A206875, there is no canonical definition to state claims against.
-/

/-! ## A206875.P526476064431376502

`A206871(A166136(n+4))`
-/

namespace A206875.P526476064431376502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A166136 (n + 4)).toNat

end

end A206875.P526476064431376502

/-! ## A206875.P11711954210666271276

`A206871(A052905(n+2)+11)`
-/

namespace A206875.P11711954210666271276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A052905 (n + 2) + 11).toNat

end

end A206875.P11711954210666271276

/-! ## A206875.P13313166361780972149

`A206871(eq[7, A131818(n+1)])`
-/

namespace A206875.P13313166361780972149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206875.P13313166361780972149

/-! ## A206875.P17183541354784337345

`A206871(A167487(n+3)+A020705(n))`
-/

namespace A206875.P17183541354784337345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A167487 (n + 3) + A020705 n).toNat

end

end A206875.P17183541354784337345

/-! ## A206875.P6270389396174156512

`A206871(A167499(n+8)-A016813(n+7))`
-/

namespace A206875.P6270389396174156512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A167499 (n + 8) - A016813 (n + 7)).toNat

end

end A206875.P6270389396174156512

/-!
# A206876: Number of 7Xn 0..1 arrays avoiding 0 0 0 horizontally and 1 0 1 vertically.

The programs for A206876, there is no canonical definition to state claims against.
-/

/-! ## A206876.P9072236605759034618

`A206871(eq[11, A066657(n)])`
-/

namespace A206876.P9072236605759034618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206876.P9072236605759034618

/-! ## A206876.P15362333042362450737

`A206871(A166136(n+5)+1)`
-/

namespace A206876.P15362333042362450737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A166136 (n + 5) + 1).toNat

end

end A206876.P15362333042362450737

/-! ## A206876.P3271899154934348851

`A206871(A167499(n+5)+2)`
-/

namespace A206876.P3271899154934348851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A167499 (n + 5) + 2).toNat

end

end A206876.P3271899154934348851

/-! ## A206876.P6538158298107763510

`A206871(A000217(n+6)+7)`
-/

namespace A206876.P6538158298107763510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (A000217 (n + 6) + 7).toNat

end

end A206876.P6538158298107763510

/-! ## A206876.P7410474445471870122

`A206871(eq[8, A131818(n+1)])`
-/

namespace A206876.P7410474445471870122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206876.P7410474445471870122

/-!
# A206877: Number of n X n 0..1 arrays avoiding 0 1 0 horizontally and 1 0 1 vertically.

The programs for A206877, there is no canonical definition to state claims against.
-/

/-! ## A206877.P14941659884468025969

`A206883(∑[4*n]+1)`
-/

namespace A206877.P14941659884468025969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206877.P14941659884468025969

/-! ## A206877.P9328555024581100642

`lcm(2, A206883(A001844(n)))`
-/

namespace A206877.P9328555024581100642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A206883 (A001844 n).toNat)

end

end A206877.P9328555024581100642

/-! ## A206877.P3737317562408149798

`record[A003982(n)*A206883(n+1)]`
-/

namespace A206877.P3737317562408149798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A206883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206877.P3737317562408149798

/-! ## A206877.P1236436558481857735

`record[gcd(A114327(n), A206883(n+1))]`
-/

namespace A206877.P1236436558481857735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A206883 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206877.P1236436558481857735

/-! ## A206877.P4014636412900491809

`A000108(floor(n/12))*A206883(A001844(n))`
-/

namespace A206877.P4014636412900491809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 ⌊(n : ℚ) / 12⌋.toNat * A206883 (A001844 n).toNat

end

end A206877.P4014636412900491809

/-!
# A206878: Number of nX3 0..1 arrays avoiding 0 1 0 horizontally and 1 0 1 vertically.

The programs for A206878, there is no canonical definition to state claims against.
-/

/-! ## A206878.P17955870636811142614

`A206883(∑[n+2]+4)`
-/

namespace A206878.P17955870636811142614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206878.P17955870636811142614

/-! ## A206878.P7939166768449467563

`A206883(A167614(n+1))+A178798(n)`
-/

namespace A206878.P7939166768449467563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (A167614 (n + 1)).toNat + A178798 n

end

end A206878.P7939166768449467563

/-! ## A206878.P14581079008555207737

`A206883(A167614(n+1))+A184946(n)`
-/

namespace A206878.P14581079008555207737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (A167614 (n + 1)).toNat + A184946 n

end

end A206878.P14581079008555207737

/-! ## A206878.P10650885016698128917

`or(A000007(n), A206883(A167614(n+1)))`
-/

namespace A206878.P10650885016698128917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A206883 (A167614 (n + 1)).toNat)

end

end A206878.P10650885016698128917

/-! ## A206878.P5897417900128880489

`or(A025465(n), A206883(A167614(n+1)))`
-/

namespace A206878.P5897417900128880489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025465 n) (A206883 (A167614 (n + 1)).toNat)

end

end A206878.P5897417900128880489

/-!
# A206879: Number of n X 4 0..1 arrays avoiding 0 1 0 horizontally and 1 0 1 vertically.

The programs for A206879, there is no canonical definition to state claims against.
-/

/-! ## A206879.P2580815641846190477

`A206883(A374004(n+1))`
-/

namespace A206879.P2580815641846190477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (A374004 (n + 1)).toNat

end

end A206879.P2580815641846190477

/-! ## A206879.P17812095794876086657

`A206883(A141214(n)+7)`
-/

namespace A206879.P17812095794876086657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (A141214 n + 7).toNat

end

end A206879.P17812095794876086657

/-! ## A206879.P1015746423908818807

`A206883(A052905(n)+9)`
-/

namespace A206879.P1015746423908818807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (A052905 n + 9).toNat

end

end A206879.P1015746423908818807

/-! ## A206879.P11589205235030185212

`A206883(A055999(n)+10)`
-/

namespace A206879.P11589205235030185212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (A055999 n + 10).toNat

end

end A206879.P11589205235030185212

/-! ## A206879.P15089511738698250211

`A206883(A167614(n+2)+1)`
-/

namespace A206879.P15089511738698250211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (A167614 (n + 2) + 1).toNat

end

end A206879.P15089511738698250211

/-!
# A206880: Number of nX5 0..1 arrays avoiding 0 1 0 horizontally and 1 0 1 vertically.

The programs for A206880, there is no canonical definition to state claims against.
-/

/-! ## A206880.P12494893523804679874

`A206883(A374005(n+1))`
-/

namespace A206880.P12494893523804679874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (A374005 (n + 1)).toNat

end

end A206880.P12494893523804679874

/-! ## A206880.P3378892641313817295

`A206883(A167614(n+3)+2)`
-/

namespace A206880.P3378892641313817295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (A167614 (n + 3) + 2).toNat

end

end A206880.P3378892641313817295

/-! ## A206880.P9563743938028359234

`A206883(A141214(n+1)+8)`
-/

namespace A206880.P9563743938028359234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (A141214 (n + 1) + 8).toNat

end

end A206880.P9563743938028359234

/-! ## A206880.P5206312562625176836

`A206883(A052905(n+1)+10)`
-/

namespace A206880.P5206312562625176836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (A052905 (n + 1) + 10).toNat

end

end A206880.P5206312562625176836

/-! ## A206880.P6340881913049636859

`A206883(A046691(n+3))`
-/

namespace A206880.P6340881913049636859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (A046691 (n + 3)).toNat

end

end A206880.P6340881913049636859

/-!
# A206881: Number of nX6 0..1 arrays avoiding 0 1 0 horizontally and 1 0 1 vertically.

The programs for A206881, there is no canonical definition to state claims against.
-/

/-! ## A206881.P8507434061561473415

`A206883(A374007(n+1))`
-/

namespace A206881.P8507434061561473415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (A374007 (n + 1)).toNat

end

end A206881.P8507434061561473415

/-! ## A206881.P15004843034639723180

`A206883(A000217(n+5)+6)`
-/

namespace A206881.P15004843034639723180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (A000217 (n + 5) + 6).toNat

end

end A206881.P15004843034639723180

/-! ## A206881.P12447011072878023975

`A206883(A141214(n+2)+9)`
-/

namespace A206881.P12447011072878023975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (A141214 (n + 2) + 9).toNat

end

end A206881.P12447011072878023975

/-! ## A206881.P15631798007291891454

`A206883(eq[3, A219347(n)])`
-/

namespace A206881.P15631798007291891454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206881.P15631798007291891454

/-! ## A206881.P10693079421730636957

`A206883(A046691(n+4)-1)`
-/

namespace A206881.P10693079421730636957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (A046691 (n + 4) - 1).toNat

end

end A206881.P10693079421730636957

/-!
# A206882: Number of nX7 0..1 arrays avoiding 0 1 0 horizontally and 1 0 1 vertically.

The programs for A206882, there is no canonical definition to state claims against.
-/

/-! ## A206882.P6374739016823871895

`A206883(A374008(n+1))`
-/

namespace A206882.P6374739016823871895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (A374008 (n + 1)).toNat

end

end A206882.P6374739016823871895

/-! ## A206882.P3027224592620861853

`A206883(A167487(n+5))`
-/

namespace A206882.P3027224592620861853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (A167487 (n + 5)).toNat

end

end A206882.P3027224592620861853

/-! ## A206882.P16916773492030918880

`A206883(eq[8, A131818(n+1)])`
-/

namespace A206882.P16916773492030918880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206882.P16916773492030918880

/-! ## A206882.P17749317098338003945

`A206883(A055999(n+4))`
-/

namespace A206882.P17749317098338003945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (A055999 (n + 4)).toNat

end

end A206882.P17749317098338003945

/-! ## A206882.P8777648715977173792

`A206883(eq[4, A219347(n)])`
-/

namespace A206882.P8777648715977173792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206882.P8777648715977173792

/-!
# A206883: T(n,k)=Number of nXk 0..1 arrays avoiding 0 1 0 horizontally and 1 0 1 vertically.

The programs for A206883, there is no canonical definition to state claims against.
-/

/-! ## A206883.P13130157101914794134

`A207000(n+1)+A025465(A132832(n))`
-/

namespace A206883.P13130157101914794134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (n + 1) + A025465 (A132832 n).toNat

end

end A206883.P13130157101914794134

/-! ## A206883.P525620129838736911

`A207000(n+1)+A186747(A156565(n))`
-/

namespace A206883.P525620129838736911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207000 (n + 1) + A186747 (A156565 n).toNat

end

end A206883.P525620129838736911

/-! ## A206883.P17328330260622269664

`A336355(A007481(n))+A207000(n+1)`
-/

namespace A206883.P17328330260622269664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336355 (A007481 n).toNat + A207000 (n + 1)

end

end A206883.P17328330260622269664

/-! ## A206883.P6773920279383970159

`A336355(A028909(n))+A207000(n+1)`
-/

namespace A206883.P6773920279383970159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336355 (A028909 n).toNat + A207000 (n + 1)

end

end A206883.P6773920279383970159

/-! ## A206883.P13709469654983754728

`A188508(n+1)+A014707(A022171(n))`
-/

namespace A206883.P13709469654983754728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188508 (n + 1) + A014707 (A022171 n).toNat

end

end A206883.P13709469654983754728

/-!
# A206884: Number of n X n 0..1 arrays avoiding 0 1 0 horizontally and 1 0 0 vertically.

The programs for A206884, there is no canonical definition to state claims against.
-/

/-! ## A206884.P13052463244820859680

`A206889(∑[4*n]+1)`
-/

namespace A206884.P13052463244820859680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206884.P13052463244820859680

/-! ## A206884.P8002070842078720844

`record[root(A206889(n+1), A331886(n))]`
-/

namespace A206884.P8002070842078720844
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206889 (n + 1) : ℝ) ^ (1 / (A331886 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206884.P8002070842078720844

/-! ## A206884.P5793469571872221289

`record[gcd(A206889(n+1), A323833(n))]`
-/

namespace A206884.P5793469571872221289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A206889 (n + 1)) (A323833 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206884.P5793469571872221289

/-! ## A206884.P12846106814477842547

`A206889(A001844(n))+A055967(n)`
-/

namespace A206884.P12846106814477842547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A001844 n).toNat + A055967 n

end

end A206884.P12846106814477842547

/-! ## A206884.P14524946908925956899

`lcm(A033999(n), A206889(A001844(n)))`
-/

namespace A206884.P14524946908925956899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A206889 (A001844 n).toNat)

end

end A206884.P14524946908925956899

/-!
# A206885: Number of nX4 0..1 arrays avoiding 0 1 0 horizontally and 1 0 0 vertically.

The programs for A206885, there is no canonical definition to state claims against.
-/

/-! ## A206885.P7233376294383716951

`A206889(A141214(n+1))`
-/

namespace A206885.P7233376294383716951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A141214 (n + 1)).toNat

end

end A206885.P7233376294383716951

/-! ## A206885.P14825314392785492681

`A206889(A055998(n+2))`
-/

namespace A206885.P14825314392785492681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A055998 (n + 2)).toNat

end

end A206885.P14825314392785492681

/-! ## A206885.P18237384611011175042

`A206889(A056000(n)+7)`
-/

namespace A206885.P18237384611011175042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A056000 n + 7).toNat

end

end A206885.P18237384611011175042

/-! ## A206885.P16425002159620012353

`A206889(eq[3, A193592(n)])`
-/

namespace A206885.P16425002159620012353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206885.P16425002159620012353

/-! ## A206885.P11162044306355708398

`A206889(A052905(n+1)+2)`
-/

namespace A206885.P11162044306355708398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A052905 (n + 1) + 2).toNat

end

end A206885.P11162044306355708398

/-!
# A206886: Number of nX5 0..1 arrays avoiding 0 1 0 horizontally and 1 0 0 vertically.

The programs for A206886, there is no canonical definition to state claims against.
-/

/-! ## A206886.P158102232435953767

`A206889(A046691(n+3))`
-/

namespace A206886.P158102232435953767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A046691 (n + 3)).toNat

end

end A206886.P158102232435953767

/-! ## A206886.P895030171056682972

`A206889(eq[4, A193592(n)])`
-/

namespace A206886.P895030171056682972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206886.P895030171056682972

/-! ## A206886.P5320709799975675709

`A206889(Δ[A023545(n+1)])`
-/

namespace A206886.P5320709799975675709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (f1 (n + 1) - f1 n).toNat

end

end A206886.P5320709799975675709

/-! ## A206886.P17990021700543240157

`A206889(A052905(n+2)+1)`
-/

namespace A206886.P17990021700543240157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A052905 (n + 2) + 1).toNat

end

end A206886.P17990021700543240157

/-! ## A206886.P1844407265417328743

`A206889(A141214(n+2)-1)`
-/

namespace A206886.P1844407265417328743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A141214 (n + 2) - 1).toNat

end

end A206886.P1844407265417328743

/-!
# A206887: Number of nX6 0..1 arrays avoiding 0 1 0 horizontally and 1 0 0 vertically.

The programs for A206887, there is no canonical definition to state claims against.
-/

/-! ## A206887.P10663486597589348488

`A206889(A052905(n+3))`
-/

namespace A206887.P10663486597589348488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A052905 (n + 3)).toNat

end

end A206887.P10663486597589348488

/-! ## A206887.P14023198350973511325

`A206889(A046691(n+4)-1)`
-/

namespace A206887.P14023198350973511325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A046691 (n + 4) - 1).toNat

end

end A206887.P14023198350973511325

/-! ## A206887.P2318573468779379654

`A206889(A000096(n+5)-4)`
-/

namespace A206887.P2318573468779379654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A000096 (n + 5) - 4).toNat

end

end A206887.P2318573468779379654

/-! ## A206887.P2442923523121903258

`A206889(A000217(n+6)-5)`
-/

namespace A206887.P2442923523121903258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A000217 (n + 6) - 5).toNat

end

end A206887.P2442923523121903258

/-! ## A206887.P12965027062060009286

`A206889(Δ[Δ[A006504(n+1)]])`
-/

namespace A206887.P12965027062060009286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (f1 (n + 1) - f1 n).toNat

end

end A206887.P12965027062060009286

/-!
# A206888: Number of nX7 0..1 arrays avoiding 0 1 0 horizontally and 1 0 0 vertically.

The programs for A206888, there is no canonical definition to state claims against.
-/

/-! ## A206888.P5917927839204205740

`A206889(eq[6, A193592(n)])`
-/

namespace A206888.P5917927839204205740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206888.P5917927839204205740

/-! ## A206888.P4977718912789447931

`A206889(eq[10, A185782(n+1)])`
-/

namespace A206888.P4977718912789447931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206888.P4977718912789447931

/-! ## A206888.P11002431708645816507

`A206889(A000096(n+5)+n+2)`
-/

namespace A206888.P11002431708645816507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A206888.P11002431708645816507

/-! ## A206888.P4373231091295715279

`A206889(A000217(n+6)+n+1)`
-/

namespace A206888.P4373231091295715279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A206888.P4373231091295715279

/-! ## A206888.P16027906255102987510

`A206889(eq[7, A200370(n+1)])`
-/

namespace A206888.P16027906255102987510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206888.P16027906255102987510

/-!
# A206889: T(n,k)=Number of nXk 0..1 arrays avoiding 0 1 0 horizontally and 1 0 0 vertically.

The programs for A206889, there is no canonical definition to state claims against.
-/

/-! ## A206889.P11469758053837970299

`A188774(n+1)+A178798(A100861(n))`
-/

namespace A206889.P11469758053837970299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (n + 1) + A178798 (A100861 n).toNat

end

end A206889.P11469758053837970299

/-! ## A206889.P14796380522850713041

`A188774(n+1)-A025465(A132832(n))`
-/

namespace A206889.P14796380522850713041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (n + 1) - A025465 (A132832 n).toNat

end

end A206889.P14796380522850713041

/-! ## A206889.P11184539084041513750

`A188774(n+1)-A336355(A007481(n))`
-/

namespace A206889.P11184539084041513750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (n + 1) - A336355 (A007481 n).toNat

end

end A206889.P11184539084041513750

/-! ## A206889.P3916575239041070456

`A188774(n+1)-A336355(A028909(n))`
-/

namespace A206889.P3916575239041070456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (n + 1) - A336355 (A028909 n).toNat

end

end A206889.P3916575239041070456

/-! ## A206889.P1238117832661116634

`A188774(n+1)+A178798(A010027(n+1))`
-/

namespace A206889.P1238117832661116634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188774 (n + 1) + A178798 (A010027 (n + 1)).toNat

end

end A206889.P1238117832661116634

/-!
# A206890: Number of 4Xn 0..1 arrays avoiding 0 1 0 horizontally and 1 0 0 vertically.

The programs for A206890, there is no canonical definition to state claims against.
-/

/-! ## A206890.P8630049100813340737

`A206889(A141214(n)+7)`
-/

namespace A206890.P8630049100813340737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A141214 n + 7).toNat

end

end A206890.P8630049100813340737

/-! ## A206890.P9262176413629804177

`A206889(A052905(n)+9)`
-/

namespace A206890.P9262176413629804177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A052905 n + 9).toNat

end

end A206890.P9262176413629804177

/-! ## A206890.P7949057551390253399

`A206889(A055999(n)+10)`
-/

namespace A206890.P7949057551390253399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A055999 n + 10).toNat

end

end A206890.P7949057551390253399

/-! ## A206890.P2705157825598850697

`A206889(A167614(n+2)+1)`
-/

namespace A206890.P2705157825598850697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A167614 (n + 2) + 1).toNat

end

end A206890.P2705157825598850697

/-! ## A206890.P9672526138741500010

`A206889(A166136(n+2)-2)`
-/

namespace A206890.P9672526138741500010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A166136 (n + 2) - 2).toNat

end

end A206890.P9672526138741500010

/-!
# A206891: Number of 5Xn 0..1 arrays avoiding 0 1 0 horizontally and 1 0 0 vertically.

The programs for A206891, there is no canonical definition to state claims against.
-/

/-! ## A206891.P11793458011410045821

`A206889(A056000(n)+15)`
-/

namespace A206891.P11793458011410045821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A056000 n + 15).toNat

end

end A206891.P11793458011410045821

/-! ## A206891.P16017382104403200187

`A206889(A167614(n+3)+2)`
-/

namespace A206891.P16017382104403200187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A167614 (n + 3) + 2).toNat

end

end A206891.P16017382104403200187

/-! ## A206891.P13022618271398761430

`A206889(A141214(n+1)+8)`
-/

namespace A206891.P13022618271398761430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A141214 (n + 1) + 8).toNat

end

end A206891.P13022618271398761430

/-! ## A206891.P8799240025623023609

`A206889(A052905(n+1)+10)`
-/

namespace A206891.P8799240025623023609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A052905 (n + 1) + 10).toNat

end

end A206891.P8799240025623023609

/-! ## A206891.P4340950140775929331

`A206889(eq[6, A131818(n+1)])`
-/

namespace A206891.P4340950140775929331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206891.P4340950140775929331

/-!
# A206892: Number of 6Xn 0..1 arrays avoiding 0 1 0 horizontally and 1 0 0 vertically.

The programs for A206892, there is no canonical definition to state claims against.
-/

/-! ## A206892.P14322053058960768562

`A206889(A166136(n+4))`
-/

namespace A206892.P14322053058960768562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A166136 (n + 4)).toNat

end

end A206892.P14322053058960768562

/-! ## A206892.P1529766620498694427

`A206889(A056115(n)+21)`
-/

namespace A206892.P1529766620498694427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A056115 n + 21).toNat

end

end A206892.P1529766620498694427

/-! ## A206892.P6371295442361230214

`A206889(A000217(n+5)+6)`
-/

namespace A206892.P6371295442361230214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A000217 (n + 5) + 6).toNat

end

end A206892.P6371295442361230214

/-! ## A206892.P4355990010987122116

`A206889(A141214(n+2)+9)`
-/

namespace A206892.P4355990010987122116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A141214 (n + 2) + 9).toNat

end

end A206892.P4355990010987122116

/-! ## A206892.P6200334627657743710

`A206889(eq[7, A131818(n+1)])`
-/

namespace A206892.P6200334627657743710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206892.P6200334627657743710

/-!
# A206893: Number of 7Xn 0..1 arrays avoiding 0 1 0 horizontally and 1 0 0 vertically.

The programs for A206893, there is no canonical definition to state claims against.
-/

/-! ## A206893.P17185969127089105346

`A206889(A167487(n+5))`
-/

namespace A206893.P17185969127089105346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A167487 (n + 5)).toNat

end

end A206893.P17185969127089105346

/-! ## A206893.P16805431770156232610

`A206889(eq[11, A066657(n)])`
-/

namespace A206893.P16805431770156232610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206893.P16805431770156232610

/-! ## A206893.P14892999657606267250

`A206889(A167499(n+5)+2)`
-/

namespace A206893.P14892999657606267250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A167499 (n + 5) + 2).toNat

end

end A206893.P14892999657606267250

/-! ## A206893.P678443353000159170

`A206889(A167614(n+5)+4)`
-/

namespace A206893.P678443353000159170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A167614 (n + 5) + 4).toNat

end

end A206893.P678443353000159170

/-! ## A206893.P12301849943188443875

`A206889(A133263(n+6)+5)`
-/

namespace A206893.P12301849943188443875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206889 (A133263 (n + 6) + 5).toNat

end

end A206893.P12301849943188443875

/-!
# A206894: Number of n X n 0..3 arrays avoiding the pattern z-2 z-1 z in any row, column or nw-to-se diagonal.

The programs for A206894, there is no canonical definition to state claims against.
-/

/-! ## A206894.P9252618081880442704

`A206900(∑[4*n]+1)`
-/

namespace A206894.P9252618081880442704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206900 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206894.P9252618081880442704

/-!
# A206895: Number of nX3 0..3 arrays avoiding the pattern z-2 z-1 z in any row, column or nw-to-se diagonal.

The programs for A206895, there is no canonical definition to state claims against.
-/

/-! ## A206895.P6294905293690288164

`A206900(∑[n+2]+4)`
-/

namespace A206895.P6294905293690288164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206900 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206895.P6294905293690288164

/-! ## A206895.P16616939401107988412

`A206900(A167614(n+1))+A185255(n)`
-/

namespace A206895.P16616939401107988412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206900 (A167614 (n + 1)).toNat + A185255 n

end

end A206895.P16616939401107988412

/-! ## A206895.P9403288313146335904

`lcm(A033999(n), A206900(A167614(n+1)))`
-/

namespace A206895.P9403288313146335904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A206900 (A167614 (n + 1)).toNat)

end

end A206895.P9403288313146335904

/-! ## A206895.P12089326725802705935

`or(A000038(n), A206900(A167614(n+1)))`
-/

namespace A206895.P12089326725802705935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A206900 (A167614 (n + 1)).toNat)

end

end A206895.P12089326725802705935

/-! ## A206895.P16991650153928742576

`A206900(A167614(n+1))%A206896(n+1)`
-/

namespace A206895.P16991650153928742576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206900 (A167614 (n + 1)).toNat) (A206896 (n + 1))

end

end A206895.P16991650153928742576

/-!
# A206896: Number of nX4 0..3 arrays avoiding the pattern z-2 z-1 z in any row, column or nw-to-se diagonal.

The programs for A206896, there is no canonical definition to state claims against.
-/

/-! ## A206896.P7641134806842103073

`A206900(A141214(n)+7)`
-/

namespace A206896.P7641134806842103073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206900 (A141214 n + 7).toNat

end

end A206896.P7641134806842103073

/-! ## A206896.P2660491148765286750

`A206900(A055999(n)+10)`
-/

namespace A206896.P2660491148765286750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206900 (A055999 n + 10).toNat

end

end A206896.P2660491148765286750

/-! ## A206896.P1299998400791095327

`A206900(A167614(n+2)+1)`
-/

namespace A206896.P1299998400791095327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206900 (A167614 (n + 2) + 1).toNat

end

end A206896.P1299998400791095327

/-! ## A206896.P3042679900194173962

`A206900(eq[5, A131818(n+1)])`
-/

namespace A206896.P3042679900194173962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206900 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206896.P3042679900194173962

/-! ## A206896.P4320100175222098472

`A206900(eq[2, A152157(n)])`
-/

namespace A206896.P4320100175222098472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206900 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206896.P4320100175222098472

/-!
# A206897: Number of nX5 0..3 arrays avoiding the pattern z-2 z-1 z in any row, column or nw-to-se diagonal.

The programs for A206897, there is no canonical definition to state claims against.
-/

/-! ## A206897.P15433218778845223915

`A206900(A374005(n+1))`
-/

namespace A206897.P15433218778845223915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206900 (A374005 (n + 1)).toNat

end

end A206897.P15433218778845223915

/-! ## A206897.P8549275616433783891

`A206900(A167499(n+3))`
-/

namespace A206897.P8549275616433783891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206900 (A167499 (n + 3)).toNat

end

end A206897.P8549275616433783891

/-! ## A206897.P1142343635372742977

`A206900(A056000(n)+15)`
-/

namespace A206897.P1142343635372742977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206900 (A056000 n + 15).toNat

end

end A206897.P1142343635372742977

/-! ## A206897.P17173173815987176917

`A206900(eq[6, A131818(n+1)])`
-/

namespace A206897.P17173173815987176917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206900 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206897.P17173173815987176917

/-! ## A206897.P14412048737365612815

`A206900(Δ[A264443(n)])`
-/

namespace A206897.P14412048737365612815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206900 (f1 (n + 1) - f1 n).toNat

end

end A206897.P14412048737365612815

/-!
# A206898: 

The programs for A206898, there is no canonical definition to state claims against.
-/

/-! ## A206898.P15470688568794157124

`A206900(eq[7, A131818(n+1)])`
-/

namespace A206898.P15470688568794157124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206900 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206898.P15470688568794157124

/-! ## A206898.P6402574664925436006

`A206900(eq[5, A193592(n)])`
-/

namespace A206898.P6402574664925436006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206900 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206898.P6402574664925436006

/-! ## A206898.P1882165139177247675

`A206900(eq[6, A200370(n+1)])`
-/

namespace A206898.P1882165139177247675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206900 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206898.P1882165139177247675

/-!
# A206899: 

The programs for A206899, there is no canonical definition to state claims against.
-/

/-! ## A206899.P10884466725736386709

`A206900(eq[8, A131818(n+1)])`
-/

namespace A206899.P10884466725736386709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206900 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206899.P10884466725736386709

/-! ## A206899.P18400608909717031153

`A206900(A055999(n+4))`
-/

namespace A206899.P18400608909717031153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206900 (A055999 (n + 4)).toNat

end

end A206899.P18400608909717031153

/-! ## A206899.P14568088023087867861

`A206900(eq[4, A219347(n)])`
-/

namespace A206899.P14568088023087867861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206900 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206899.P14568088023087867861

/-! ## A206899.P6523688241034095882

`A206900(eq[6, A193592(n)])`
-/

namespace A206899.P6523688241034095882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206900 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206899.P6523688241034095882

