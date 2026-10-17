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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C024

/-!
# A194400: Numbers m such that Sum_{k=1..m} ( - ) > 0, where r=sqrt(15) and < > denotes fractional part.

The programs for A194400, there is no canonical definition to state claims against.
-/

/-! ## A194400.P10137980209625300036

`∑[A005875(A193173(2*n+1)^n)+2]-1`
-/

namespace A194400.P10137980209625300036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (A193173 (2 * n + 1) ^ n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A194400.P10137980209625300036

/-! ## A194400.P11009967478841635425

`A165655(n)+A001950(A055086((n-6)*(n-5)*(n-4)*(n-3)*(n-2)*(n²-n)+2*(n+2)²-3))`
-/

namespace A194400.P11009967478841635425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165655 n + A001950 (A055086 (((n : ℤ) - 6) * (((n : ℤ) - 5) * (((n : ℤ) - 4) * (((n : ℤ) - 3) * (((n : ℤ) - 2) * ((n ^ 2 : ℤ) - (n : ℤ)))))) + ((2 * (n + 2) ^ 2 : ℤ) - 3)).toNat).toNat

end

end A194400.P11009967478841635425

/-!
# A194401: Numbers m such that Sum_{k=1..m} ( - ) < 0, where r=(1+sqrt(5))/2 and < > denotes fractional part.

The programs for A194401, the canonical program `A194401.P3706950676726943440` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194401 has offset 1).

The definition of A194401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 755 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194401.P3706950676726943440

`record[(n+1)%A005653(A008619(n))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A194401

/-- `record[(n+1)%A005653(A008619(n))]` -/
def P3706950676726943440.Spec : Prop :=
  ∀ n, P3706950676726943440.a n = A194401 (n + 1)

theorem P3706950676726943440.correct : P3706950676726943440.Spec := by
  intro n
  simp only [A194401, Nat.add_sub_cancel]

end A194401

/-! ## A194401.P17822942520039427726

`eq[1, A088705(∑[A198082(n)])]`
-/

namespace A194401.P17822942520039427726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198082 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194401.P17822942520039427726

namespace A194401

/-- `eq[1, A088705(∑[A198082(n)])]` -/
def P17822942520039427726.Spec : Prop :=
  ∀ n, (P17822942520039427726.a n : ℤ) = A194401 (n + 1)

end A194401

/-! ## A194401.P16046874308855250040

`eq[2, A000034(∑[A198082(n)])]`
-/

namespace A194401.P16046874308855250040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198082 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194401.P16046874308855250040

namespace A194401

/-- `eq[2, A000034(∑[A198082(n)])]` -/
def P16046874308855250040.Spec : Prop :=
  ∀ n, (P16046874308855250040.a n : ℤ) = A194401 (n + 1)

end A194401

/-! ## A194401.P4212688014833678742

`eq[0, A000035(A022779(n+1))]`
-/

namespace A194401.P4212688014833678742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A022779 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194401.P4212688014833678742

namespace A194401

/-- `eq[0, A000035(A022779(n+1))]` -/
def P4212688014833678742.Spec : Prop :=
  ∀ n, (P4212688014833678742.a n : ℤ) = A194401 (n + 1)

end A194401

/-! ## A194401.P6180135393373035767

`eq[A000034(A022779(n+1)), A057427(n)]`
-/

namespace A194401.P6180135393373035767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A022779 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194401.P6180135393373035767

namespace A194401

/-- `eq[A000034(A022779(n+1)), A057427(n)]` -/
def P6180135393373035767.Spec : Prop :=
  ∀ n, (P6180135393373035767.a n : ℤ) = A194401 (n + 1)

end A194401

/-!
# A194402: Numbers m such that Sum_{k=1..m} ( - ) = 0, where r=(1+sqrt(5))/2 and < > denotes fractional part.

The programs for A194402, there is no canonical definition to state claims against.
-/

/-! ## A194402.P11217409027509096203

`2*A194403(n+1)`
-/

namespace A194402.P11217409027509096203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194403 (n + 1)

end

end A194402.P11217409027509096203

/-! ## A194402.P5308882330030517653

`A004277(A194403(n+1))`
-/

namespace A194402.P5308882330030517653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A194403 (n + 1)).toNat

end

end A194402.P5308882330030517653

/-! ## A194402.P11214076320993131740

`A004275(A194403(n+1)+1)`
-/

namespace A194402.P11214076320993131740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A194403 (n + 1) + 1).toNat

end

end A194402.P11214076320993131740

/-! ## A194402.P7800847058589964835

`A004273(A194403(n+1)+1)-1`
-/

namespace A194402.P7800847058589964835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A194403 (n + 1) + 1).toNat - 1

end

end A194402.P7800847058589964835

/-! ## A194402.P14012274001532093036

`A005843(or(A000007(n), A194403(n+1)))`
-/

namespace A194402.P14012274001532093036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.lor (A000007 n) (A194403 (n + 1))).toNat

end

end A194402.P14012274001532093036

/-! ## A194402.P9667115449047039834

`A194403(A000027(n+1))+A194403(n+1)`
-/

namespace A194402.P9667115449047039834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194403 (A000027 (n + 1)).toNat + A194403 (n + 1)

end

end A194402.P9667115449047039834

/-! ## A194402.P15730662379100031221

`A005843(A194403(n+1)^and(1, A000040(n+1)))`
-/

namespace A194402.P15730662379100031221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((A194403 (n + 1) : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ))).toNat

end

end A194402.P15730662379100031221

/-! ## A194402.P5093839839354090180

`A266072(A194396(n+1))+A004273(A194403(n+1))`
-/

namespace A194402.P5093839839354090180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266072 (A194396 (n + 1)).toNat + A004273 (A194403 (n + 1)).toNat

end

end A194402.P5093839839354090180

/-! ## A194402.P15398006944085119177

`A266072(A194399(n+1))+A004273(A194403(n+1))`
-/

namespace A194402.P15398006944085119177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266072 (A194399 (n + 1)).toNat + A004273 (A194403 (n + 1)).toNat

end

end A194402.P15398006944085119177

/-!
# A194403: (A194402)/2.

The programs for A194403, there is no canonical definition to state claims against.
-/

/-! ## A194403.P6415345274863866941

`A194402(n+1)/2`
-/

namespace A194403.P6415345274863866941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194402 (n + 1) : ℚ) / 2

end

end A194403.P6415345274863866941

/-! ## A194403.P18327573643557345539

`round(A194402(round(Δ[n²]/2))/2)`
-/

namespace A194403.P18327573643557345539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A194402 (SequenceMachineLib.roundAway (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 2)).toNat : ℚ) / 2)

end

end A194403.P18327573643557345539

/-! ## A194403.P9109948719234654461

`A001281(A194402(n+1))`
-/

namespace A194403.P9109948719234654461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A194402 (n + 1)).toNat

end

end A194403.P9109948719234654461

/-! ## A194403.P539329726676589171

`A004524(A194402(n+1)+1)`
-/

namespace A194403.P539329726676589171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A194402 (n + 1) + 1).toNat

end

end A194403.P539329726676589171

/-! ## A194403.P14133217510319377894

`A057979(A194402(n+1)+1)`
-/

namespace A194403.P14133217510319377894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A194402 (n + 1) + 1).toNat

end

end A194403.P14133217510319377894

/-! ## A194403.P1747495565793997947

`A001057(A194402(n+1)-1)`
-/

namespace A194403.P1747495565793997947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A194402 (n + 1) - 1).toNat

end

end A194403.P1747495565793997947

/-! ## A194403.P16869377504230179191

`A002265(2*A194402(n+1))`
-/

namespace A194403.P16869377504230179191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A194402 (n + 1)).toNat

end

end A194403.P16869377504230179191

/-! ## A194403.P13367617228678153265

`A246277(lcm(2, A194402(n+1)))`
-/

namespace A194403.P13367617228678153265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (Int.lcm 2 (A194402 (n + 1)))

end

end A194403.P13367617228678153265

/-! ## A194403.P5572141107988653828

`A246277(A194402(n+1)+2)-1`
-/

namespace A194403.P5572141107988653828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A194402 (n + 1) + 2).toNat - 1

end

end A194403.P5572141107988653828

/-! ## A194403.P9979367804853132024

`A004525(A194402(n+1)%∑[n+3])`
-/

namespace A194403.P9979367804853132024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.tmod (A194402 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A194403.P9979367804853132024

/-! ## A194403.P17973373789905759171

`A002265(A194402(n+1)+A194402(n+1)+1)`
-/

namespace A194403.P17973373789905759171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A194402 (n + 1) + (A194402 (n + 1) + 1)).toNat

end

end A194403.P17973373789905759171

/-!
# A194404: Numbers m such that Sum_{k=1..m} ( - ) > 0, where r=(1+sqrt(5))/2 and < > denotes fractional part.

The programs for A194404, the canonical program `A194404.P6698143406103776618` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194404 has offset 1).

The definition of A194404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 971 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194404.P7143820345356165713

`comp[n%A005653(A008619(n))]`
-/

namespace A194404.P7143820345356165713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A005653 (A008619 n).toNat)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A194404.P7143820345356165713

namespace A194404

/-- `comp[n%A005653(A008619(n))]` -/
def P7143820345356165713.Spec : Prop :=
  ∀ n, (P7143820345356165713.a n : ℤ) = A194404 (n + 1)

end A194404

/-! ## A194404.P6698143406103776618

`lt[A057428(n)+A005653(A008619(n)), n]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A194404

/-- `lt[A057428(n)+A005653(A008619(n)), n]` -/
def P6698143406103776618.Spec : Prop :=
  ∀ n, (P6698143406103776618.a n : ℤ) = A194404 (n + 1)

theorem P6698143406103776618.correct : P6698143406103776618.Spec := by
  intro n
  simp only [A194404, Nat.add_sub_cancel]

end A194404

/-! ## A194404.P8038008871256183631

`lt[A028310(n)%A005653(A008619(n)), n]`
-/

namespace A194404.P8038008871256183631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n) (A005653 (A008619 n).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A194404.P8038008871256183631

namespace A194404

/-- `lt[A028310(n)%A005653(A008619(n)), n]` -/
def P8038008871256183631.Spec : Prop :=
  ∀ n, (P8038008871256183631.a n : ℤ) = A194404 (n + 1)

end A194404

/-! ## A194404.P7793092089446488397

`lt[A109578(2*n+1)+A005653(A008619(n)), n+1]`
-/

namespace A194404.P7793092089446488397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109578 (2 * n + 1) + A005653 (A008619 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A194404.P7793092089446488397

namespace A194404

/-- `lt[A109578(2*n+1)+A005653(A008619(n)), n+1]` -/
def P7793092089446488397.Spec : Prop :=
  ∀ n, (P7793092089446488397.a n : ℤ) = A194404 (n + 1)

end A194404

/-!
# A194405: Numbers m such that Sum_{k=1..m} ( - ) < 0 where < > denotes fractional part.

The programs for A194405, the canonical program `A194405.P14981962460593271920` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194405 has offset 1).

The definition of A194405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194405.P14981962460593271920

`record[(n+1)%A190847(A008619(n))]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A194405

/-- `record[(n+1)%A190847(A008619(n))]` -/
def P14981962460593271920.Spec : Prop :=
  ∀ n, P14981962460593271920.a n = A194405 (n + 1)

theorem P14981962460593271920.correct : P14981962460593271920.Spec := by
  intro n
  simp only [A194405, Nat.add_sub_cancel]

end A194405

/-!
# A194406: Numbers m such that Sum_{k=1..m} ( - ) = 0 where < > denotes fractional part.

The programs for A194406, there is no canonical definition to state claims against.
-/

/-! ## A194406.P9358050783640830867

`A360457(A038887(n+2))-2`
-/

namespace A194406.P9358050783640830867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360457 (A038887 (n + 2)).toNat - 2

end

end A194406.P9358050783640830867

/-! ## A194406.P14090053145010610481

`∑[2*A181514(A296526(n+5))]`
-/

namespace A194406.P14090053145010610481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181514 (A296526 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194406.P14090053145010610481

/-! ## A194406.P1066939081900513964

`∑[A211455(A083204(n+1))]`
-/

namespace A194406.P1066939081900513964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211455 (A083204 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194406.P1066939081900513964

/-! ## A194406.P1614976109398827154

`∑[A134735(A217285(n)!)]`
-/

namespace A194406.P1614976109398827154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (Nat.factorial (A217285 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194406.P1614976109398827154

/-! ## A194406.P15365896771944597686

`∑[A128645(A129445(n+1))]`
-/

namespace A194406.P15365896771944597686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128645 (A129445 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194406.P15365896771944597686

/-!
# A194407: Numbers m such that Sum_{k=1..m} ( - ) > 0 where < > denotes fractional part.

The programs for A194407, the canonical program `A194407.P1781012805405431426` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194407 has offset 1).

The definition of A194407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194407.P1781012805405431426

`lt[A190847(A008619(n))-n, 1]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A194407

/-- `lt[A190847(A008619(n))-n, 1]` -/
def P1781012805405431426.Spec : Prop :=
  ∀ n, (P1781012805405431426.a n : ℤ) = A194407 (n + 1)

theorem P1781012805405431426.correct : P1781012805405431426.Spec := by
  intro n
  simp only [A194407, Nat.add_sub_cancel]

end A194407

/-! ## A194407.P13859286483673580921

`lt[A065119(A003602(n+1)), A339490(n+1)]`
-/

namespace A194407.P13859286483673580921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065119 (A003602 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339490 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194407.P13859286483673580921

namespace A194407

/-- `lt[A065119(A003602(n+1)), A339490(n+1)]` -/
def P13859286483673580921.Spec : Prop :=
  ∀ n, (P13859286483673580921.a n : ℤ) = A194407 (n + 1)

end A194407

/-! ## A194407.P18304382386047172104

`lt[A293194(A003602(n+5)), A339490(n+1)]`
-/

namespace A194407.P18304382386047172104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293194 (A003602 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339490 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194407.P18304382386047172104

namespace A194407

/-- `lt[A293194(A003602(n+5)), A339490(n+1)]` -/
def P18304382386047172104.Spec : Prop :=
  ∀ n, (P18304382386047172104.a n : ℤ) = A194407 (n + 1)

end A194407

/-! ## A194407.P3790265203526004805

`lt[A056959(n+1), A094471(A088931(2*(n+1)))]`
-/

namespace A194407.P3790265203526004805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094471 (A088931 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194407.P3790265203526004805

namespace A194407

/-- `lt[A056959(n+1), A094471(A088931(2*(n+1)))]` -/
def P3790265203526004805.Spec : Prop :=
  ∀ n, (P3790265203526004805.a n : ℤ) = A194407 (n + 1)

end A194407

/-!
# A194408: Numbers m such that Sum_{k=1..m} ( - ) < 0, where r=Pi and < > denotes fractional part.

The programs for A194408, there is no canonical definition to state claims against.
-/

/-! ## A194408.P6379693244351251038

`record[A107832(A107832(n+1))-2]`
-/

namespace A194408.P6379693244351251038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107832 (A107832 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194408.P6379693244351251038

/-!
# A194410: Numbers m such that Sum_{k=1..m} ( - ) > 0, where r=Pi and < > denotes fractional part.

The programs for A194410, there is no canonical definition to state claims against.
-/

/-! ## A194410.P2285352267487348346

`record[(n+1)%A191164(A008619(n))]`
-/

namespace A194410.P2285352267487348346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A191164 (A008619 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194410.P2285352267487348346

/-! ## A194410.P14911703193832907969

`eq[A025897(n), A171765(A098190(n+1))]`
-/

namespace A194410.P14911703193832907969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171765 (A098190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194410.P14911703193832907969

/-! ## A194410.P4037474155559426454

`eq[A029416(n), A299905(A059169(n+1))]`
-/

namespace A194410.P4037474155559426454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299905 (A059169 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194410.P4037474155559426454

/-! ## A194410.P1488745784554610182

`eq[A025897(n), A056511(A052180(n+2))]`
-/

namespace A194410.P1488745784554610182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056511 (A052180 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194410.P1488745784554610182

/-! ## A194410.P1434084123485319530

`eq[A025897(n), A165013(A025897(n+3))]`
-/

namespace A194410.P1434084123485319530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165013 (A025897 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194410.P1434084123485319530

/-!
# A194412: Numbers m such that Sum_{k=1..m} ( - ) = 0, where r=sqrt(2) and < > denotes fractional part.

The programs for A194412, there is no canonical definition to state claims against.
-/

/-! ## A194412.P11329904042389016527

`3*A194413(n+1)`
-/

namespace A194412.P11329904042389016527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A194413 (n + 1)

end

end A194412.P11329904042389016527

/-! ## A194412.P6098060254438776448

`A008486(A194413(n+1))`
-/

namespace A194412.P6098060254438776448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A194413 (n + 1)).toNat

end

end A194412.P6098060254438776448

/-! ## A194412.P13282940910204513169

`A008585(A194413(n+1)%A167499(n))`
-/

namespace A194412.P13282940910204513169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (Int.tmod (A194413 (n + 1)) (A167499 n)).toNat

end

end A194412.P13282940910204513169

/-! ## A194412.P12826019438432043925

`A008585(or(A000007(n), A194413(n+1)))`
-/

namespace A194412.P12826019438432043925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (Int.lor (A000007 n) (A194413 (n + 1))).toNat

end

end A194412.P12826019438432043925

/-! ## A194412.P9405035465567389058

`A008585(A194413(n+1))%A020338(n+1)`
-/

namespace A194412.P9405035465567389058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 (A194413 (n + 1)).toNat) (A020338 (n + 1))

end

end A194412.P9405035465567389058

/-!
# A194413: (A194412)/3.

The programs for A194413, there is no canonical definition to state claims against.
-/

/-! ## A194413.P17790702146400892538

`A194412(n+1)/3`
-/

namespace A194413.P17790702146400892538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194412 (n + 1) : ℚ) / 3

end

end A194413.P17790702146400892538

/-! ## A194413.P18225998474089844115

`A002264(A194412(n+1))`
-/

namespace A194413.P18225998474089844115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A194412 (n + 1)).toNat

end

end A194413.P18225998474089844115

/-! ## A194413.P549795647908129555

`A008611(A194412(n+1)+1)`
-/

namespace A194413.P549795647908129555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A194412 (n + 1) + 1).toNat

end

end A194413.P549795647908129555

/-! ## A194413.P9753933384851781580

`A145064(A194412(n+1)-2)`
-/

namespace A194413.P9753933384851781580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (A194412 (n + 1) - 2).toNat

end

end A194413.P9753933384851781580

/-! ## A194413.P3614801972667226731

`A289186(A194412(n+1)^A020985(n)²)`
-/

namespace A194413.P3614801972667226731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289186 (SequenceMachineLib.roundAway ((A194412 (n + 1) : ℚ) ^ (A020985 n ^ 2 : ℤ))).toNat

end

end A194413.P3614801972667226731

/-! ## A194413.P17281030862769657024

`A289186(A194412(n+1))%A001950(n+1)`
-/

namespace A194413.P17281030862769657024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289186 (A194412 (n + 1)).toNat) (A001950 (n + 1))

end

end A194413.P17281030862769657024

/-! ## A194413.P16838339939774713101

`A051724(4*A194412(n+1))`
-/

namespace A194413.P16838339939774713101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (4 * A194412 (n + 1)).toNat

end

end A194413.P16838339939774713101

/-!
# A194414: Numbers m such that Sum_{k=1..m} ( - ) > 0, where r=sqrt(2) and < > denotes fractional part.

The programs for A194414, there is no canonical definition to state claims against.
-/

/-! ## A194414.P8144523987199143432

`eq[1, gcd(9, A340757(n+1))]`
-/

namespace A194414.P8144523987199143432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 9 (A340757 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194414.P8144523987199143432

/-! ## A194414.P2836247728086936225

`lt[3, dr(A114849(3*n+1))]`
-/

namespace A194414.P2836247728086936225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A114849 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194414.P2836247728086936225

/-! ## A194414.P11670280636686011524

`lt[A140595(n), A226787(A299277(n))]`
-/

namespace A194414.P11670280636686011524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140595 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226787 (A299277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194414.P11670280636686011524

/-! ## A194414.P17016892497493398050

`lt[A053274(A145979(n)), A289748(3*n+4)]`
-/

namespace A194414.P17016892497493398050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053274 (A145979 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289748 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194414.P17016892497493398050

/-! ## A194414.P12122010533062393900

`lt[3, A244477(A057886(3*n+5))]`
-/

namespace A194414.P12122010533062393900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244477 (A057886 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A194414.P12122010533062393900

/-!
# A194415: Numbers m such that Sum_{k=1..m} ( - ) < 0, where r=sqrt(3) and < > denotes fractional part.

The programs for A194415, there is no canonical definition to state claims against.
-/

/-! ## A194415.P7492539575062235

`eq[A011558(A030656(n)), A190676(n+1)]`
-/

namespace A194415.P7492539575062235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A030656 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190676 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194415.P7492539575062235

/-! ## A194415.P10607049888208295154

`record[gcd(A093641(n+1), A359231(n+1))]`
-/

namespace A194415.P10607049888208295154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093641 (n + 1)) (A359231 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194415.P10607049888208295154

/-!
# A194416: Numbers m such that Sum_{k=1..m} ( - ) = 0, where r=sqrt(3) and < > denotes fractional part.

The programs for A194416, there is no canonical definition to state claims against.
-/

/-! ## A194416.P4164882610020795169

`3*A194417(n+1)`
-/

namespace A194416.P4164882610020795169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A194417 (n + 1)

end

end A194416.P4164882610020795169

/-! ## A194416.P8575138769603552883

`A008486(A194417(n+1))`
-/

namespace A194416.P8575138769603552883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A194417 (n + 1)).toNat

end

end A194416.P8575138769603552883

/-! ## A194416.P1313964556689413064

`A008585(or(A000007(n), A194417(n+1)))`
-/

namespace A194416.P1313964556689413064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (Int.lor (A000007 n) (A194417 (n + 1))).toNat

end

end A194416.P1313964556689413064

/-! ## A194416.P8921696822166978467

`A008585(A194417(n+1)%A002328(n+1))`
-/

namespace A194416.P8921696822166978467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (Int.tmod (A194417 (n + 1)) (A002328 (n + 1))).toNat

end

end A194416.P8921696822166978467

/-! ## A194416.P12469735922973162200

`A008585(A194417(n+1))%A005385(n+1)`
-/

namespace A194416.P12469735922973162200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 (A194417 (n + 1)).toNat) (A005385 (n + 1))

end

end A194416.P12469735922973162200

/-! ## A194416.P2982682359317060584

`A008585(A194417(n+1)%A153819(n))`
-/

namespace A194416.P2982682359317060584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (Int.tmod (A194417 (n + 1)) (A153819 n)).toNat

end

end A194416.P2982682359317060584

/-!
# A194417: (A194416)/3.

The programs for A194417, there is no canonical definition to state claims against.
-/

/-! ## A194417.P9668523627868310692

`A194416(n+1)/3`
-/

namespace A194417.P9668523627868310692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194416 (n + 1) : ℚ) / 3

end

end A194417.P9668523627868310692

/-! ## A194417.P15242983545931376736

`A002264(A194416(n+1))`
-/

namespace A194417.P15242983545931376736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A194416 (n + 1)).toNat

end

end A194417.P15242983545931376736

/-! ## A194417.P502219035313659782

`A008611(A194416(n+1)+1)`
-/

namespace A194417.P502219035313659782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A194416 (n + 1) + 1).toNat

end

end A194417.P502219035313659782

/-! ## A194417.P1021271000873724191

`A008620(A194416(n+1)-1)`
-/

namespace A194417.P1021271000873724191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A194416 (n + 1) - 1).toNat

end

end A194417.P1021271000873724191

/-! ## A194417.P9519869767651118800

`A008615(2*A194416(n+1))`
-/

namespace A194417.P9519869767651118800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A194416 (n + 1)).toNat

end

end A194417.P9519869767651118800

/-! ## A194417.P3445026063644041033

`A008615(A194416(n+1)+A194416(n+1)+1)`
-/

namespace A194417.P3445026063644041033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A194416 (n + 1) + (A194416 (n + 1) + 1)).toNat

end

end A194417.P3445026063644041033

/-!
# A194418: Numbers m such that Sum_{k=1..m} ( - ) > 0, where r=sqrt(3) and < > denotes fractional part.

The programs for A194418, there is no canonical definition to state claims against.
-/

/-! ## A194418.P17818396118435121804

`eq[A010872(n), A055457(A001107(n+1))]`
-/

namespace A194418.P17818396118435121804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055457 (A001107 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194418.P17818396118435121804

/-!
# A194421: Numbers m such that Sum_{k=1..m} ( - ) > 0, where r=sqrt(5) and < > denotes fractional part.

The programs for A194421, there is no canonical definition to state claims against.
-/

/-! ## A194421.P7981375573421373023

`∑[gcd(A088387(n+3), A109709(3*n+5))]`
-/

namespace A194421.P7981375573421373023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A088387 (n + 3)) (A109709 (3 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194421.P7981375573421373023

/-! ## A194421.P9538149257738773786

`lt[A083771(A083771(n+1)), A023758(3*(n+1))]`
-/

namespace A194421.P9538149257738773786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083771 (A083771 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194421.P9538149257738773786

/-! ## A194421.P13586312240893422117

`lt[A374740(2*n+3), A366580(A246085(n+1))]`
-/

namespace A194421.P13586312240893422117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374740 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366580 (A246085 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194421.P13586312240893422117

/-! ## A194421.P9837176858495742776

`lt[A374740(2*n+3), A366580(A246093(n+1))]`
-/

namespace A194421.P9837176858495742776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374740 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366580 (A246093 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194421.P9837176858495742776

/-! ## A194421.P5248525217295099127

`eq[A015731(n), A209229(A114035(n+3))]`
-/

namespace A194421.P5248525217295099127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015731 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A114035 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194421.P5248525217295099127

/-!
# A194422: Numbers m such that Sum_{k=1..m} ( - ) < 0, where r=sqrt(2) and < > denotes fractional part.

The programs for A194422, there is no canonical definition to state claims against.
-/

/-! ## A194422.P10062363752148328363

`eq[n%3, gcd(n, A141214(n)+6)]`
-/

namespace A194422.P10062363752148328363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A141214 n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194422.P10062363752148328363

/-! ## A194422.P10321189378322796636

`∑[A133880(∑[A048573(n)])]`
-/

namespace A194422.P10321189378322796636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048573 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133880 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194422.P10321189378322796636

/-! ## A194422.P6357991522099018197

`∑[A133880(abs(A083581(n+1)))]`
-/

namespace A194422.P6357991522099018197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133880 |A083581 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194422.P6357991522099018197

/-! ## A194422.P14094598166350989004

`eq[0, A056594(∑[A174618(n+1)])]`
-/

namespace A194422.P14094598166350989004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A194422.P14094598166350989004

/-! ## A194422.P2448593411965898362

`eq[A105234(n)+2, A105244(3*n+1)]`
-/

namespace A194422.P2448593411965898362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105234 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105244 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194422.P2448593411965898362

/-!
# A194423: Numbers m such that Sum_{k=1..m} ( - ) = 0, where r=sqrt(2) and < > denotes fractional part.

The programs for A194423, there is no canonical definition to state claims against.
-/

/-! ## A194423.P15959580748806409309

`3*A194424(n+1)`
-/

namespace A194423.P15959580748806409309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A194424 (n + 1)

end

end A194423.P15959580748806409309

/-! ## A194423.P8461401730633896663

`A008486(A194424(n+1))`
-/

namespace A194423.P8461401730633896663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A194424 (n + 1)).toNat

end

end A194423.P8461401730633896663

/-! ## A194423.P4512990066714008115

`A016777(A194424(n+1)-1)+2`
-/

namespace A194423.P4512990066714008115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A194424 (n + 1) - 1).toNat + 2

end

end A194423.P4512990066714008115

/-! ## A194423.P13771118286622946530

`or(A000038(n), A008585(A194424(n+1)))`
-/

namespace A194423.P13771118286622946530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A008585 (A194424 (n + 1)).toNat)

end

end A194423.P13771118286622946530

/-! ## A194423.P3413913776331592287

`A008585(A194424(n+1)%A001358(n+1))`
-/

namespace A194423.P3413913776331592287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (Int.tmod (A194424 (n + 1)) (A001358 (n + 1))).toNat

end

end A194423.P3413913776331592287

/-! ## A194423.P13465380086236240807

`A001651(A194424(n+1)+A194424(n+1))+1`
-/

namespace A194423.P13465380086236240807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A194424 (n + 1) + A194424 (n + 1)).toNat + 1

end

end A194423.P13465380086236240807

/-! ## A194423.P3384444305797574166

`A194424(A000027(n+1))+A005843(A194424(n+1))`
-/

namespace A194423.P3384444305797574166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194424 (A000027 (n + 1)).toNat + A005843 (A194424 (n + 1)).toNat

end

end A194423.P3384444305797574166

/-!
# A194424: (A194423)/3.

The programs for A194424, there is no canonical definition to state claims against.
-/

/-! ## A194424.P3822822277306758441

`A194423(n+1)/3`
-/

namespace A194424.P3822822277306758441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194423 (n + 1) : ℚ) / 3

end

end A194424.P3822822277306758441

/-! ## A194424.P16419665063629714819

`A002264(A194423(n+1))`
-/

namespace A194424.P16419665063629714819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A194423 (n + 1)).toNat

end

end A194424.P16419665063629714819

/-! ## A194424.P15991369840605693894

`A008611(A194423(n+1)+1)`
-/

namespace A194424.P15991369840605693894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A194423 (n + 1) + 1).toNat

end

end A194424.P15991369840605693894

/-! ## A194424.P361437698690214468

`A008620(A194423(n+1)-1)`
-/

namespace A194424.P361437698690214468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A194423 (n + 1) - 1).toNat

end

end A194424.P361437698690214468

/-! ## A194424.P7835005542394420773

`A008615(2*A194423(n+1))`
-/

namespace A194424.P7835005542394420773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A194423 (n + 1)).toNat

end

end A194424.P7835005542394420773

/-! ## A194424.P11491501654728965510

`A008615(A194423(n+1)+A194423(n+1)+1)`
-/

namespace A194424.P11491501654728965510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A194423 (n + 1) + (A194423 (n + 1) + 1)).toNat

end

end A194424.P11491501654728965510

/-!
# A194425: Numbers m such that Sum_{k=1..m} ( - ) > 0, where r=sqrt(2) and < > denotes fractional part.

The programs for A194425, there is no canonical definition to state claims against.
-/

/-! ## A194425.P5794274738403236460

`A276931(n)+A010702(A001333(n))`
-/

namespace A194425.P5794274738403236460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276931 n + A010702 (A001333 n).toNat

end

end A194425.P5794274738403236460

/-! ## A194425.P15187457366272363663

`A276931(n)+A010702(A020737(n))`
-/

namespace A194425.P15187457366272363663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276931 n + A010702 (A020737 n).toNat

end

end A194425.P15187457366272363663

/-! ## A194425.P9817696642857333552

`A276931(n)+A033715(A007283(n))`
-/

namespace A194425.P9817696642857333552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276931 n + A033715 (A007283 n).toNat

end

end A194425.P9817696642857333552

/-! ## A194425.P6363644139029545548

`A276931(n)+A010702(A276918(n))`
-/

namespace A194425.P6363644139029545548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276931 n + A010702 (A276918 n).toNat

end

end A194425.P6363644139029545548

/-! ## A194425.P5912451990019544591

`eq[A033478(A201279(n)), A245690(3*n+4)]`
-/

namespace A194425.P5912451990019544591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033478 (A201279 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245690 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194425.P5912451990019544591

/-!
# A194426: Elements n of A194234 for which the cototient(n) is not a prime power (A000961).

The programs for A194426, there is no canonical definition to state claims against.
-/

/-! ## A194426.P17405223935910877704

`A194284(abs(floor(acot(n))-1-n)+2)`
-/

namespace A194426.P17405223935910877704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194284 (|⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1 - (n : ℤ)| + 2).toNat

end

end A194426.P17405223935910877704

/-! ## A194426.P18165913941148543655

`A194284(A162880(n+1))`
-/

namespace A194426.P18165913941148543655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194284 (A162880 (n + 1)).toNat

end

end A194426.P18165913941148543655

/-! ## A194426.P12974948242059057556

`A194284(round(sqrt(A104675(n))))`
-/

namespace A194426.P12974948242059057556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194284 (SequenceMachineLib.roundAway (Real.sqrt (A104675 n : ℝ))).toNat

end

end A194426.P12974948242059057556

/-! ## A194426.P13080309258822058603

`A194284(A002024(∑[n+3]))`
-/

namespace A194426.P13080309258822058603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194284 (A002024 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A194426.P13080309258822058603

/-!
# A194429: Numbers n such that there is no i >= 0 for which A053392(i) = n.

The programs for A194429, there is no canonical definition to state claims against.
-/

/-! ## A194429.P5044027825931424359

`A171397(A298638(n+1))+90`
-/

namespace A194429.P5044027825931424359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (A298638 (n + 1)).toNat + 90

end

end A194429.P5044027825931424359

/-! ## A194429.P17546733117812326433

`A171397(A075517(n+10))+90`
-/

namespace A194429.P17546733117812326433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (A075517 (n + 10)).toNat + 90

end

end A194429.P17546733117812326433

/-! ## A194429.P14784270588830561996

`∪[A101317(n+1), A376151(n+1)]`
-/

namespace A194429.P14784270588830561996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A194429.P14784270588830561996

/-! ## A194429.P16053688792543201330

`A171397(lt[dr(n)², A067552(n)])+90`
-/

namespace A194429.P16053688792543201330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 90

end

end A194429.P16053688792543201330

/-! ## A194429.P12166935719956418515

`lt[A010879(n)-a(A059995(n)), -9]` with `a(0)=10`
-/

namespace A194429.P12166935719956418515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f1 =>
  A010879 n - f1 (A059995 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194429.P12166935719956418515

/-! ## A194429.P11519719224596380685

`A171397(A304367(n+1))+90`
-/

namespace A194429.P11519719224596380685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (A304367 (n + 1)).toNat + 90

end

end A194429.P11519719224596380685

/-!
# A194430: Integers m such that 6m+1 and 6m+101 are two consecutive primes.

The programs for A194430, there is no canonical definition to state claims against.
-/

/-! ## A194430.P9540771351831606632

`(A050434(n+1)-1)/6`
-/

namespace A194430.P9540771351831606632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050434 (n + 1) - 1 : ℚ) / 6

end

end A194430.P9540771351831606632

/-! ## A194430.P12281680192778356658

`floor(A050434(n+1)/6)`
-/

namespace A194430.P12281680192778356658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A050434 (n + 1) : ℚ) / 6⌋

end

end A194430.P12281680192778356658

/-! ## A194430.P5954364032803536824

`round(A050434(A000027(n+1))/6)`
-/

namespace A194430.P5954364032803536824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A050434 (A000027 (n + 1)).toNat : ℚ) / 6)

end

end A194430.P5954364032803536824

/-! ## A194430.P3934618927000661974

`round(A050434(n+1)/6)%A016975(n)`
-/

namespace A194430.P3934618927000661974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A050434 (n + 1) : ℚ) / 6)) (A016975 n)

end

end A194430.P3934618927000661974

/-! ## A194430.P2346138312651789451

`A006450(n+1)%2*round(A050434(n+1)/6)`
-/

namespace A194430.P2346138312651789451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006450 (n + 1)) 2 * SequenceMachineLib.roundAway ((A050434 (n + 1) : ℚ) / 6)

end

end A194430.P2346138312651789451

/-! ## A194430.P17102435093288582925

`round(A050434(n+1)/6*A001221(A048520(n+1)))`
-/

namespace A194430.P17102435093288582925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A050434 (n + 1) : ℚ) / 6 * (A001221 (A048520 (n + 1)).toNat : ℚ))

end

end A194430.P17102435093288582925

/-!
# A194431: a(n) = 8*n^2 - 6*n - 1.

The programs for A194431, the canonical program `A194431.P13010516962724756005` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194431 has offset 1).

The definition of A194431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194431.P13010516962724756005

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=19, a(2)=53`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A194431

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P13010516962724756005.Spec : Prop :=
  ∀ n, P13010516962724756005.a n = A194431 (n + 1)

theorem P13010516962724756005.correct : P13010516962724756005.Spec := by
  intro n
  simp only [A194431, Nat.add_sub_cancel]

end A194431

/-! ## A194431.P14700585342037281929

`∑[16*n+2]-1`
-/

namespace A194431.P14700585342037281929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A194431.P14700585342037281929

namespace A194431

/-- `∑[16*n+2]-1` -/
def P14700585342037281929.Spec : Prop :=
  ∀ n, P14700585342037281929.a n = A194431 (n + 1)

end A194431

/-! ## A194431.P5608812260388507020

`∑[a(n-1)+16]` with `a(0)=1, a(1)=18`
-/

namespace A194431.P5608812260388507020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 18] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194431.P5608812260388507020

namespace A194431

/-- `∑[a(n-1)+16]` -/
def P5608812260388507020.Spec : Prop :=
  ∀ n, (P5608812260388507020.a n : ℤ) = A194431 (n + 1)

end A194431

/-! ## A194431.P1612762791429499266

`(∑[or(4, 32*n)]-2)/2`
-/

namespace A194431.P1612762791429499266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 (32 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2 : ℚ) / 2

end

end A194431.P1612762791429499266

namespace A194431

/-- `(∑[or(4, 32*n)]-2)/2` -/
def P1612762791429499266.Spec : Prop :=
  ∀ n, P1612762791429499266.a n = (A194431 (n + 1) : ℚ)

end A194431

/-! ## A194431.P4916560827501405567

`or(1, (4*n+5)*2*n)`
-/

namespace A194431.P4916560827501405567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((4 * n + 5) * (2 * n))

end

end A194431.P4916560827501405567

namespace A194431

/-- `or(1, (4*n+5)*2*n)` -/
def P4916560827501405567.Spec : Prop :=
  ∀ n, (P4916560827501405567.a n : ℤ) = A194431 (n + 1)

end A194431

/-! ## A194431.P4621571759611968864

`record[(n+1)*xor(3, 2*n)-2]`
-/

namespace A194431.P4621571759611968864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.xor 3 (2 * n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194431.P4621571759611968864

namespace A194431

/-- `record[(n+1)*xor(3, 2*n)-2]` -/
def P4621571759611968864.Spec : Prop :=
  ∀ n, P4621571759611968864.a n = A194431 (n + 1)

end A194431

/-! ## A194431.P3009569449813280120

`floor(4*4*n+a(n-1)+2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A194431.P3009569449813280120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * (4 * n) + (a (n - 1) + 2)

end

end A194431.P3009569449813280120

namespace A194431

/-- `floor(4*4*n+a(n-1)+2)` -/
def P3009569449813280120.Spec : Prop :=
  ∀ n, (P3009569449813280120.a n : ℤ) = A194431 (n + 1)

end A194431

/-! ## A194431.P18086238551125946525

`xor(1, 2*n*Δ[(2*n+1)*(n+1)])`
-/

namespace A194431.P18086238551125946525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((2 * n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A194431.P18086238551125946525

namespace A194431

/-- `xor(1, 2*n*Δ[(2*n+1)*(n+1)])` -/
def P18086238551125946525.Spec : Prop :=
  ∀ n, P18086238551125946525.a n = A194431 (n + 1)

end A194431

/-! ## A194431.P9086275719240015963

`A158730(n+1)%A055437(n+1)`
-/

namespace A194431.P9086275719240015963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158730 (n + 1)) (A055437 (n + 1))

end

end A194431.P9086275719240015963

namespace A194431

/-- `A158730(n+1)%A055437(n+1)` -/
def P9086275719240015963.Spec : Prop :=
  ∀ n, P9086275719240015963.a n = A194431 (n + 1)

end A194431

/-! ## A194431.P11053542447890866820

`A158680(n+1)%A154517(n+1)`
-/

namespace A194431.P11053542447890866820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158680 (n + 1)) (A154517 (n + 1))

end

end A194431.P11053542447890866820

namespace A194431

/-- `A158680(n+1)%A154517(n+1)` -/
def P11053542447890866820.Spec : Prop :=
  ∀ n, P11053542447890866820.a n = A194431 (n + 1)

end A194431

/-! ## A194431.P9406376959524741816

`A158658(n+1)%A158056(n+1)`
-/

namespace A194431.P9406376959524741816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158658 (n + 1)) (A158056 (n + 1))

end

end A194431.P9406376959524741816

namespace A194431

/-- `A158658(n+1)%A158056(n+1)` -/
def P9406376959524741816.Spec : Prop :=
  ∀ n, P9406376959524741816.a n = A194431 (n + 1)

end A194431

/-! ## A194431.P12875198657669840148

`A178574(n+1)%A228219(n+1)`
-/

namespace A194431.P12875198657669840148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178574 (n + 1)) (A228219 (n + 1))

end

end A194431.P12875198657669840148

namespace A194431

/-- `A178574(n+1)%A228219(n+1)` -/
def P12875198657669840148.Spec : Prop :=
  ∀ n, P12875198657669840148.a n = A194431 (n + 1)

end A194431

/-! ## A194431.P833579912876195430

`floor(sqrt(A264895(n+1)))`
-/

namespace A194431.P833579912876195430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A264895 (n + 1))

end

end A194431.P833579912876195430

namespace A194431

/-- `floor(sqrt(A264895(n+1)))` -/
def P833579912876195430.Spec : Prop :=
  ∀ n, P833579912876195430.a n = A194431 (n + 1)

end A194431

/-! ## A194431.P942208962007294983

`abs(2-A000217(4*n+2))`
-/

namespace A194431.P942208962007294983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A000217 (4 * n + 2)|

end

end A194431.P942208962007294983

namespace A194431

/-- `abs(2-A000217(4*n+2))` -/
def P942208962007294983.Spec : Prop :=
  ∀ n, P942208962007294983.a n = A194431 (n + 1)

end A194431

/-! ## A194431.P14093573074029353222

`∑[A281813(2*n)-2]`
-/

namespace A194431.P14093573074029353222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281813 (2 * n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194431.P14093573074029353222

namespace A194431

/-- `∑[A281813(2*n)-2]` -/
def P14093573074029353222.Spec : Prop :=
  ∀ n, P14093573074029353222.a n = A194431 (n + 1)

end A194431

/-! ## A194431.P14494620459419626599

`A034856(4*n+1)`
-/

namespace A194431.P14494620459419626599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (4 * n + 1)

end

end A194431.P14494620459419626599

namespace A194431

/-- `A034856(4*n+1)` -/
def P14494620459419626599.Spec : Prop :=
  ∀ n, P14494620459419626599.a n = A194431 (n + 1)

end A194431

/-! ## A194431.P7717777681259459096

`A176126(4*n+2)`
-/

namespace A194431.P7717777681259459096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176126 (4 * n + 2)

end

end A194431.P7717777681259459096

namespace A194431

/-- `A176126(4*n+2)` -/
def P7717777681259459096.Spec : Prop :=
  ∀ n, P7717777681259459096.a n = A194431 (n + 1)

end A194431

/-! ## A194431.P7246804568683503819

`record[A319885(n+1)-1]`
-/

namespace A194431.P7246804568683503819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319885 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194431.P7246804568683503819

namespace A194431

/-- `record[A319885(n+1)-1]` -/
def P7246804568683503819.Spec : Prop :=
  ∀ n, P7246804568683503819.a n = A194431 (n + 1)

end A194431

/-! ## A194431.P10648718943564299495

`record[A236999(2*n+1)]`
-/

namespace A194431.P10648718943564299495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236999 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194431.P10648718943564299495

namespace A194431

/-- `record[A236999(2*n+1)]` -/
def P10648718943564299495.Spec : Prop :=
  ∀ n, P10648718943564299495.a n = A194431 (n + 1)

end A194431

/-! ## A194431.P7885955270810164322

`A135405(2*n+2*n+1)`
-/

namespace A194431.P7885955270810164322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135405 (2 * n + (2 * n + 1))

end

end A194431.P7885955270810164322

namespace A194431

/-- `A135405(2*n+2*n+1)` -/
def P7885955270810164322.Spec : Prop :=
  ∀ n, P7885955270810164322.a n = A194431 (n + 1)

end A194431

/-!
# A194432: D-toothpick sequence starting with a cross formed by 4 toothpicks.

The programs for A194432, there is no canonical definition to state claims against.
-/

/-! ## A194432.P15786075184770620771

`∑[A194433(n)]`
-/

namespace A194432.P15786075184770620771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194432.P15786075184770620771

/-! ## A194432.P12948570029879159604

`A220512(n)+char[11]`
-/

namespace A194432.P12948570029879159604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220512 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A194432.P12948570029879159604

/-! ## A194432.P1387712335573010115

`∑[A221565(n)%53]`
-/

namespace A194432.P1387712335573010115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221565 n) 53

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194432.P1387712335573010115

/-! ## A194432.P10178291947354954770

`∑[A221565(gcd(n, ∏{digits}[n, #]))]`
-/

namespace A194432.P10178291947354954770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221565 (Nat.gcd n ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194432.P10178291947354954770

/-! ## A194432.P5582456698225878724

`∑[A221565(comp[30*n]-1)]`
-/

namespace A194432.P5582456698225878724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221565 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194432.P5582456698225878724

/-!
# A194433: Number of toothpicks and D-toothpicks added at n-th stage to the structure of A194432.

The programs for A194433, there is no canonical definition to state claims against.
-/

/-! ## A194433.P11904647541702001968

`A221565(n)%53`
-/

namespace A194433.P11904647541702001968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221565 n) 53

end

end A194433.P11904647541702001968

/-! ## A194433.P5634860809601847762

`A221565(lt[∏{digits}[n, #], 10])`
-/

namespace A194433.P5634860809601847762
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221565 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A194433.P5634860809601847762

/-! ## A194433.P17289959274405546113

`A221565(gcd(n, ∏{digits}[n, #]))`
-/

namespace A194433.P17289959274405546113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221565 (Nat.gcd n ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod)

end

end A194433.P17289959274405546113

/-! ## A194433.P11998614864397834330

`A221565(comp[30*n]-1)`
-/

namespace A194433.P11998614864397834330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221565 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - 1)

end

end A194433.P11998614864397834330

/-! ## A194433.P6157748016905475526

`Δ[A194432(log2(ceil(2^(n-1))))]`
-/

namespace A194433.P6157748016905475526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194432 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194433.P6157748016905475526

/-!
# A194434: D-toothpick sequence of the second kind starting with a X-shaped cross formed by 4 D-toothpicks.

The programs for A194434, there is no canonical definition to state claims against.
-/

/-! ## A194434.P9356202244034143010

`4*A194444(n)`
-/

namespace A194434.P9356202244034143010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A194444 n

end

end A194434.P9356202244034143010

/-! ## A194434.P2064456150400970782

`∑[A194435(n)]`
-/

namespace A194434.P2064456150400970782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194434.P2064456150400970782

/-! ## A194434.P10280280000305849002

`∑[4*A194445(n)]`
-/

namespace A194434.P10280280000305849002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A194445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194434.P10280280000305849002

/-! ## A194434.P1230447781431605738

`A008586(A194444(n))`
-/

namespace A194434.P1230447781431605738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A194444 n).toNat

end

end A194434.P1230447781431605738

/-! ## A194434.P15841862298436748678

`A008586(∑[A194445(n)])`
-/

namespace A194434.P15841862298436748678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A194434.P15841862298436748678

/-!
# A194435: Number of toothpicks or D-toothpicks added at n-th stage to the structure of A194434.

The programs for A194435, there is no canonical definition to state claims against.
-/

/-! ## A194435.P4004656916755073448

`4*A194445(n)`
-/

namespace A194435.P4004656916755073448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A194445 n

end

end A194435.P4004656916755073448

/-! ## A194435.P15634215697100553273

`A008586(A194445(n))`
-/

namespace A194435.P15634215697100553273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A194445 n).toNat

end

end A194435.P15634215697100553273

/-! ## A194435.P6657688921694863402

`A016813(A194445(n)+1)-5`
-/

namespace A194435.P6657688921694863402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A194445 n + 1).toNat - 5

end

end A194435.P6657688921694863402

/-! ## A194435.P5262013193144091215

`A194445(n)/(2/A040002(n))²`
-/

namespace A194435.P5262013193144091215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194445 n : ℚ) / (2 / (A040002 n : ℚ)) ^ 2

end

end A194435.P5262013193144091215

/-! ## A194435.P7271475845406484449

`A194445(n)/Δ[A004074(n+1)/2]²`
-/

namespace A194435.P7271475845406484449
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004074 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194445 n : ℚ) / (f1 (n + 1) - f1 n) ^ 2

end

end A194435.P7271475845406484449

/-! ## A194435.P10329204376992850920

`A005843(A194445(n)+A194445(n))`
-/

namespace A194435.P10329204376992850920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A194445 n + A194445 n).toNat

end

end A194435.P10329204376992850920

/-! ## A194435.P17647613595012470047

`A008574(A194445(n))-A000007(n)`
-/

namespace A194435.P17647613595012470047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A194445 n).toNat - A000007 n

end

end A194435.P17647613595012470047

/-! ## A194435.P3866516976024435612

`A008574(A194445(n))-A112316(n)`
-/

namespace A194435.P3866516976024435612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A194445 n).toNat - A112316 n

end

end A194435.P3866516976024435612

/-! ## A194435.P9871736178674185542

`A008574(A194445(n))-A151878(n)`
-/

namespace A194435.P9871736178674185542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A194445 n).toNat - A151878 n

end

end A194435.P9871736178674185542

/-! ## A194435.P10563699835285831347

`A008574(A194445(n))%A003215(n)`
-/

namespace A194435.P10563699835285831347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 (A194445 n).toNat) (A003215 n)

end

end A194435.P10563699835285831347

/-!
# A194436: Triangle read by rows: T(n,k) = number of parts in the k-th region of n.

The programs for A194436, there is no canonical definition to state claims against.
-/

/-! ## A194436.P13629951299256105522

`A326584(A194055(n+1))+A000038(A000013(n))`
-/

namespace A194436.P13629951299256105522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326584 (A194055 (n + 1)).toNat + A000038 (A000013 n).toNat

end

end A194436.P13629951299256105522

/-! ## A194436.P13026805014687723859

`A326584(A194055(n+1))+A000007(A158558(n))`
-/

namespace A194436.P13026805014687723859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326584 (A194055 (n + 1)).toNat + A000007 (A158558 n).toNat

end

end A194436.P13026805014687723859

/-! ## A194436.P1416478075012689137

`A007913(A194844(n+1)^7)`
-/

namespace A194436.P1416478075012689137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A194844 (n + 1) ^ 7).toNat

end

end A194436.P1416478075012689137

/-! ## A194436.P8227709751783079684

`A194055(n+1)^A268367(A123521(n))`
-/

namespace A194436.P8227709751783079684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194055 (n + 1) : ℚ) ^ (A268367 (A123521 n).toNat : ℤ)

end

end A194436.P8227709751783079684

/-!
# A194437: Triangle read by rows: T(n,k) = sum of parts in the k-th region of n.

The programs for A194437, there is no canonical definition to state claims against.
-/

/-! ## A194437.P7178568711557899114

`A003970(A331118(n+1)%A130826(3*n+1))`
-/

namespace A194437.P7178568711557899114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003970 (Int.tmod (A331118 (n + 1)) (A130826 (3 * n + 1))).toNat

end

end A194437.P7178568711557899114

/-! ## A194437.P2779608359369815491

`A101157(A194844(n+1)%A234517(3*(n+1)))`
-/

namespace A194437.P2779608359369815491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101157 (Int.tmod (A194844 (n + 1)) (A234517 (3 * (n + 1)))).toNat

end

end A194437.P2779608359369815491

/-! ## A194437.P6699962191828216360

`A101157(A194844(n+1)%A347391(n+1))`
-/

namespace A194437.P6699962191828216360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101157 (Int.tmod (A194844 (n + 1)) (A347391 (n + 1))).toNat

end

end A194437.P6699962191828216360

/-!
# A194438: Triangle read by rows: T(n,k) is the number of regions of the set of partitions of n into k parts.

The programs for A194438, there is no canonical definition to state claims against.
-/

/-! ## A194438.P10952824946266679252

`A308967(A213662(A091419(n+1)))`
-/

namespace A194438.P10952824946266679252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308967 (A213662 (A091419 (n + 1)).toNat).toNat

end

end A194438.P10952824946266679252

/-! ## A194438.P11700271427265262157

`A115623(A006128(Δ[A049085(n)]²))`
-/

namespace A194438.P11700271427265262157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 (A006128 ((f1 (n + 1) - f1 n) ^ 2).toNat).toNat

end

end A194438.P11700271427265262157

/-! ## A194438.P12937008505607471803

`∑{e}[A213662(A091419(n+1)), A005811(#)]`
-/

namespace A194438.P12937008505607471803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213662 (A091419 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005811 (Nat.factorization (f1 n).natAbs p)

end

end A194438.P12937008505607471803

/-! ## A194438.P9637116314802908035

`∑{e}[A213662(A091419(n+1)), A068639(#)]`
-/

namespace A194438.P9637116314802908035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213662 (A091419 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A068639 (Nat.factorization (f1 n).natAbs p)

end

end A194438.P9637116314802908035

/-!
# A194439: Number of regions in the set of partitions of n that contain only one part.

The programs for A194439, there is no canonical definition to state claims against.
-/

/-! ## A194439.P16093805201571514838

`A054225(C(n, 2))`
-/

namespace A194439.P16093805201571514838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (Nat.choose n 2)

end

end A194439.P16093805201571514838

/-! ## A194439.P15448622683524055666

`A055375(C(n, 2))`
-/

namespace A194439.P15448622683524055666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055375 (Nat.choose n 2)

end

end A194439.P15448622683524055666

/-! ## A194439.P2102474570682179015

`A079025(C(n, 2))`
-/

namespace A194439.P2102474570682179015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 (Nat.choose n 2)

end

end A194439.P2102474570682179015

/-! ## A194439.P867969824530017993

`A103923(C(n, 2))`
-/

namespace A194439.P867969824530017993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (Nat.choose n 2)

end

end A194439.P867969824530017993

/-! ## A194439.P7703654789621971369

`A143228(C(n, 2))`
-/

namespace A194439.P7703654789621971369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143228 (Nat.choose n 2)

end

end A194439.P7703654789621971369

/-!
# A194440: Number of toothpicks and D-toothpicks after n-th stage in the D-toothpick "wide" triangle of the second kind.

The programs for A194440, there is no canonical definition to state claims against.
-/

/-! ## A194440.P3887122986255616037

`∑[A194441(n)]`
-/

namespace A194440.P3887122986255616037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194440.P3887122986255616037

/-! ## A194440.P11190739896478692042

`∑{d}[2^n, A194441(log2(#))]`
-/

namespace A194440.P11190739896478692042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A194441 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A194440.P11190739896478692042

/-! ## A194440.P5096392834906477988

`A220520(n)-A228708(A033483(n))`
-/

namespace A194440.P5096392834906477988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220520 n - A228708 (A033483 n).toNat

end

end A194440.P5096392834906477988

/-! ## A194440.P6235972874549060576

`A220520(n)-A124120(A348976(n+1))`
-/

namespace A194440.P6235972874549060576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220520 n - A124120 (A348976 (n + 1)).toNat

end

end A194440.P6235972874549060576

/-! ## A194440.P13757702459996804834

`xor(A200214(A167531(n+1)), A220520(n))`
-/

namespace A194440.P13757702459996804834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A200214 (A167531 (n + 1)).toNat) (A220520 n)

end

end A194440.P13757702459996804834

/-!
# A194441: Number of toothpicks or D-toothpicks added at n-th stage to the structure of A194440.

The programs for A194441, there is no canonical definition to state claims against.
-/

/-! ## A194441.P5841484270107393781

`Δ[A194440(log2(A011782(n)))]`
-/

namespace A194441.P5841484270107393781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194440 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194441.P5841484270107393781

/-! ## A194441.P1880238681595668164

`Δ[A194440(A028310(n)-1)]`
-/

namespace A194441.P1880238681595668164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194440 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194441.P1880238681595668164

/-! ## A194441.P13602062196931475150

`Δ[A194440(val(A011782(n), 2))]`
-/

namespace A194441.P13602062196931475150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194440 (SequenceMachineLib.valuation (A011782 n).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194441.P13602062196931475150

/-! ## A194441.P17906774840060982250

`Δ[A194440(A004273(n)-n)]`
-/

namespace A194441.P17906774840060982250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194440 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194441.P17906774840060982250

/-! ## A194441.P12277048763534045497

`Δ[A194440(n-A057427(n))]`
-/

namespace A194441.P12277048763534045497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194440 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194441.P12277048763534045497

/-! ## A194441.P3552321717529328807

`Δ[A194440(A000196(n²-n))]`
-/

namespace A194441.P3552321717529328807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194440 (A000196 (n ^ 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194441.P3552321717529328807

/-! ## A194441.P17676270599441982988

`Δ[A194440(A049615(C(n+1, 2)))]`
-/

namespace A194441.P17676270599441982988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194440 (A049615 (Nat.choose (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194441.P17676270599441982988

/-! ## A194441.P9153683052873398466

`Δ[A194440(A004526(A004273(n)))]`
-/

namespace A194441.P9153683052873398466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194440 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194441.P9153683052873398466

/-! ## A194441.P4159465072694455911

`Δ[A194440(A004526(A004275(n)))]`
-/

namespace A194441.P4159465072694455911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194440 (A004526 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194441.P4159465072694455911

/-! ## A194441.P14927470548040832954

`Δ[A194440(A002262(A027379(n)))]`
-/

namespace A194441.P14927470548040832954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194440 (A002262 (A027379 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194441.P14927470548040832954

/-!
# A194442: Number of toothpicks and D-toothpicks after n-th stage in the D-toothpick "narrow" triangle of the second kind.

The programs for A194442, there is no canonical definition to state claims against.
-/

/-! ## A194442.P10820170845813950660

`∑[A194443(n)]`
-/

namespace A194442.P10820170845813950660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194442.P10820170845813950660

/-! ## A194442.P13887017684768409757

`A220522(lcm(n, A036225(n)))`
-/

namespace A194442.P13887017684768409757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220522 (Int.lcm (n : ℤ) (A036225 n))

end

end A194442.P13887017684768409757

/-! ## A194442.P13119393845302606662

`∑[A220523(n)%A003064(n)]`
-/

namespace A194442.P13119393845302606662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220523 n) (A003064 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194442.P13119393845302606662

/-! ## A194442.P9750030756473724400

`lcm(A123271(n+2), A220522(n))`
-/

namespace A194442.P9750030756473724400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123271 (n + 2)) (A220522 n)

end

end A194442.P9750030756473724400

/-! ## A194442.P18315888970916672619

`A220522(n)%A220522(n+4)`
-/

namespace A194442.P18315888970916672619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220522 n) (A220522 (n + 4))

end

end A194442.P18315888970916672619

/-!
# A194443: Number of toothpicks or D-toothpicks added at n-th stage to the structure of A194442.

The programs for A194443, there is no canonical definition to state claims against.
-/

/-! ## A194443.P114487409036949430

`Δ[A194442(log2(A011782(n)))]`
-/

namespace A194443.P114487409036949430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194442 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194443.P114487409036949430

/-! ## A194443.P3032768459605162505

`Δ[A194442(A289207(n+1))]`
-/

namespace A194443.P3032768459605162505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194442 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194443.P3032768459605162505

/-! ## A194443.P1204449019696574177

`Δ[A194442(A028310(n)-1)]`
-/

namespace A194443.P1204449019696574177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194442 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194443.P1204449019696574177

/-! ## A194443.P7151235525146322256

`Δ[A194442(val(A011782(n), 2))]`
-/

namespace A194443.P7151235525146322256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194442 (SequenceMachineLib.valuation (A011782 n).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194443.P7151235525146322256

/-! ## A194443.P4446189830612647183

`Δ[A194442(A004273(n)-n)]`
-/

namespace A194443.P4446189830612647183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194442 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194443.P4446189830612647183

/-! ## A194443.P2676078154981408308

`Δ[A194442(A140106(Δ[n²]))]`
-/

namespace A194443.P2676078154981408308
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194442 (A140106 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194443.P2676078154981408308

/-! ## A194443.P6757988917094630719

`Δ[A194442(A289207(2*n)/2)]`
-/

namespace A194443.P6757988917094630719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194442 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194443.P6757988917094630719

/-! ## A194443.P16820324083533846210

`Δ[A194442(A049615(C(n+1, 2)))]`
-/

namespace A194443.P16820324083533846210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194442 (A049615 (Nat.choose (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194443.P16820324083533846210

/-! ## A194443.P5059324214768434115

`A194442(n)-A194442((2*n)%(n+1))`
-/

namespace A194443.P5059324214768434115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194442 n - A194442 (2 * n % (n + 1))

end

end A194443.P5059324214768434115

/-! ## A194443.P14114353191469770125

`Δ[A194442(A004526(A004273(n)))]`
-/

namespace A194443.P14114353191469770125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194442 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194443.P14114353191469770125

/-!
# A194444: D-toothpick sequence of the second kind in the first quadrant.

The programs for A194444, there is no canonical definition to state claims against.
-/

/-! ## A194444.P16750172009462978227

`A194434(n)/4`
-/

namespace A194444.P16750172009462978227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194434 n : ℚ) / 4

end

end A194444.P16750172009462978227

/-! ## A194444.P3518793677638116485

`∑[A194445(n)]`
-/

namespace A194444.P3518793677638116485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194444.P3518793677638116485

/-! ## A194444.P5692476658554970762

`∑[A194435(n)/4]`
-/

namespace A194444.P5692476658554970762
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194435 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194444.P5692476658554970762

/-! ## A194444.P15277336276939704037

`A002265(∑[A194435(n)])`
-/

namespace A194444.P15277336276939704037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A194444.P15277336276939704037

/-! ## A194444.P10858586601341831702

`A110655(∑[A194435(n)])`
-/

namespace A194444.P10858586601341831702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A194444.P10858586601341831702

/-! ## A194444.P10483854105840048817

`A110657(∑[A194435(n)])`
-/

namespace A194444.P10483854105840048817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A194444.P10483854105840048817

/-! ## A194444.P8170628010647105660

`A131505(∑[A194435(n)])`
-/

namespace A194444.P8170628010647105660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131505 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A194444.P8170628010647105660

/-! ## A194444.P6868450079661936871

`A174571(∑[A194435(n)])`
-/

namespace A194444.P6868450079661936871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A194444.P6868450079661936871

/-! ## A194444.P5916376657949745751

`abs(A246425(∑[A194435(n)]))`
-/

namespace A194444.P5916376657949745751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246425 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A194444.P5916376657949745751

/-!
# A194445: Number of toothpicks or D-toothpicks added at n-th stage to the structure of A194444.

The programs for A194445, there is no canonical definition to state claims against.
-/

/-! ## A194445.P6322498134217437607

`A194435(n)/4`
-/

namespace A194445.P6322498134217437607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194435 n : ℚ) / 4

end

end A194445.P6322498134217437607

/-! ## A194445.P6588218977645230952

`A002265(A194435(n))`
-/

namespace A194445.P6588218977645230952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A194435 n).toNat

end

end A194445.P6588218977645230952

/-! ## A194445.P18131538866491329608

`A008624(A194435(n)+1)`
-/

namespace A194445.P18131538866491329608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A194435 n + 1).toNat

end

end A194445.P18131538866491329608

/-! ## A194445.P14342777302236879684

`A025480(A194435(n)+1)`
-/

namespace A194445.P14342777302236879684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A194435 n + 1).toNat

end

end A194445.P14342777302236879684

/-! ## A194445.P1492258065205920225

`A026922(A194435(n)+1)`
-/

namespace A194445.P1492258065205920225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A194435 n + 1).toNat

end

end A194445.P1492258065205920225

/-! ## A194445.P12908329139033209568

`A059169(A194435(n)+1)`
-/

namespace A194445.P12908329139033209568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A194435 n + 1).toNat

end

end A194445.P12908329139033209568

/-! ## A194445.P6988074727052191232

`A131505(A194435(n)+2)`
-/

namespace A194445.P6988074727052191232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131505 (A194435 n + 2).toNat

end

end A194445.P6988074727052191232

/-! ## A194445.P8846835660227297446

`A051724(3*A194435(n))`
-/

namespace A194445.P8846835660227297446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (3 * A194435 n).toNat

end

end A194445.P8846835660227297446

/-! ## A194445.P2999714756623525056

`A008624(or(1, A194435(n)))`
-/

namespace A194445.P2999714756623525056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (Int.lor 1 (A194435 n)).toNat

end

end A194445.P2999714756623525056

/-! ## A194445.P7726232083556004445

`A025480(or(1, A194435(n)))`
-/

namespace A194445.P7726232083556004445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.lor 1 (A194435 n)).toNat

end

end A194445.P7726232083556004445

/-!
# A194446: Number of parts in the n-th region of the set of partitions of j, if 1<=n<=A000041(j).

The programs for A194446, there is no canonical definition to state claims against.
-/

/-! ## A194446.P11776592125176314728

`A141285(n+1)-A194447(n+1)`
-/

namespace A194446.P11776592125176314728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (n + 1) - A194447 (n + 1)

end

end A194446.P11776592125176314728

/-! ## A194446.P11187943498100444870

`Δ[∪[A182181(n+1), A006128(n)]]`
-/

namespace A194446.P11187943498100444870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182181 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A194446.P11187943498100444870

/-! ## A194446.P2806830734367940594

`A182181(n+1)-∪[A182181(n+4), A006128(n)]`
-/

namespace A194446.P2806830734367940594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182181 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182181 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A194446.P2806830734367940594

/-! ## A194446.P14618789480220699410

`∑[1-Δ[A210451(n)]]`
-/

namespace A194446.P14618789480220699410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210451 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194446.P14618789480220699410

/-! ## A194446.P8237150510102909950

`1-A210451(n+1)+n`
-/

namespace A194446.P8237150510102909950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A210451 (n + 1) + (n : ℤ)

end

end A194446.P8237150510102909950

/-! ## A194446.P16261386637373588742

`2*n-(n-1)-A210451(2*n-(n-1))`
-/

namespace A194446.P16261386637373588742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1) - A210451 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

end

end A194446.P16261386637373588742

/-! ## A194446.P3127136794047666895

`n-A023443(A210451(n+1))`
-/

namespace A194446.P3127136794047666895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A210451 (n + 1)).toNat

end

end A194446.P3127136794047666895

/-! ## A194446.P11749364695129092228

`A025581(A210451(n+1)+∑[n+1])`
-/

namespace A194446.P11749364695129092228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A210451 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A194446.P11749364695129092228

/-! ## A194446.P15266384088731009942

`A193870(A000124(n))-A194447(n+1)`
-/

namespace A194446.P15266384088731009942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 (A000124 n).toNat - A194447 (n + 1)

end

end A194446.P15266384088731009942

/-! ## A194446.P1714947763987319129

`A194448(n+1)+A194449(n+1)-A194447(n+1)`
-/

namespace A194446.P1714947763987319129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194448 (n + 1) + (A194449 (n + 1) - A194447 (n + 1))

end

end A194446.P1714947763987319129

/-!
# A194447: Rank of the n-th region of the set of partitions of j, if 1<=n<=A000041(j).

The programs for A194447, there is no canonical definition to state claims against.
-/

/-! ## A194447.P13936330355653486078

`A141285(n+1)-A194446(n+1)`
-/

namespace A194447.P13936330355653486078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (n + 1) - A194446 (n + 1)

end

end A194447.P13936330355653486078

/-! ## A194447.P13320121074448988704

`A186114(∑[n+1])-A194446(n+1)`
-/

namespace A194447.P13320121074448988704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (∑ j ∈ Finset.range (n + 1), f1 j) - A194446 (n + 1)

end

end A194447.P13320121074448988704

/-! ## A194447.P10545507874291732557

`A193870(∑[n]+1)-A194446(n+1)`
-/

namespace A194447.P10545507874291732557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A194446 (n + 1)

end

end A194447.P10545507874291732557

/-! ## A194447.P9455986994905478819

`A244967(n+1)+1-A194446(n+1)`
-/

namespace A194447.P9455986994905478819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244967 (n + 1) + (1 - A194446 (n + 1))

end

end A194447.P9455986994905478819

/-! ## A194447.P6856334109159440642

`A141285(n+1)-∑[1-Δ[A210451(n)]]`
-/

namespace A194447.P6856334109159440642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210451 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194447.P6856334109159440642

/-! ## A194447.P16377169267255921786

`A193870(∑[n]+1)-∑[1-Δ[A210451(n)]]`
-/

namespace A194447.P16377169267255921786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210451 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f3 (n + 1) - f3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194447.P16377169267255921786

/-! ## A194447.P18334554517085878658

`val(A194602(n)+1, 2)+1-A194446(n+1)`
-/

namespace A194447.P18334554517085878658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A194602 n + 1).toNat 2 + 1 : ℤ) - A194446 (n + 1)

end

end A194447.P18334554517085878658

/-! ## A194447.P13638045848278527422

`A210451(n+1)+A141285(n+1)-(n+1)`
-/

namespace A194447.P13638045848278527422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210451 (n + 1) + (A141285 (n + 1) - (n + 1 : ℤ))

end

end A194447.P13638045848278527422

/-! ## A194447.P9119035485278290844

`A186114(∑[n+1])-(1-A210451(n+1)+n)`
-/

namespace A194447.P9119035485278290844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (∑ j ∈ Finset.range (n + 1), f1 j) - (1 - A210451 (n + 1) + (n : ℤ))

end

end A194447.P9119035485278290844

/-! ## A194447.P17214611267636608734

`A005496(A244967(n+1))-A194446(n+1)`
-/

namespace A194447.P17214611267636608734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A244967 (n + 1)).toNat - A194446 (n + 1)

end

end A194447.P17214611267636608734

/-!
# A194448: Number of parts > 1 in the n-th region of the modular table of partitions.

The programs for A194448, there is no canonical definition to state claims against.
-/

/-! ## A194448.P18049614082911559676

`A141285(n+1)-A194449(n+1)`
-/

namespace A194448.P18049614082911559676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (n + 1) - A194449 (n + 1)

end

end A194448.P18049614082911559676

/-! ## A194448.P18074587850184578313

`A186114(∑[n+1])-A194449(n+1)`
-/

namespace A194448.P18074587850184578313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (∑ j ∈ Finset.range (n + 1), f1 j) - A194449 (n + 1)

end

end A194448.P18074587850184578313

/-! ## A194448.P15269338628103011547

`A193870(∑[n]+1)-A194449(n+1)`
-/

namespace A194448.P15269338628103011547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A194449 (n + 1)

end

end A194448.P15269338628103011547

/-! ## A194448.P13359519783179466817

`A244967(n+1)+1-A194449(n+1)`
-/

namespace A194448.P13359519783179466817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244967 (n + 1) + (1 - A194449 (n + 1))

end

end A194448.P13359519783179466817

/-! ## A194448.P12325948705127119784

`val(A194602(n)+1, 2)+1-A194449(n+1)`
-/

namespace A194448.P12325948705127119784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A194602 n + 1).toNat 2 + 1 : ℤ) - A194449 (n + 1)

end

end A194448.P12325948705127119784

/-! ## A194448.P1062038177639614412

`A005496(A244967(n+1))-A194449(n+1)`
-/

namespace A194448.P1062038177639614412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A244967 (n + 1)).toNat - A194449 (n + 1)

end

end A194448.P1062038177639614412

/-! ## A194448.P4702051184024739352

`A194446(n+1)+A194447(n+1)-A194449(n+1)`
-/

namespace A194448.P4702051184024739352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194446 (n + 1) + (A194447 (n + 1) - A194449 (n + 1))

end

end A194448.P4702051184024739352

/-! ## A194448.P13554865651701293541

`A207779(n+1)-(A194449(n+1)+A194446(n+1))`
-/

namespace A194448.P13554865651701293541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207779 (n + 1) - (A194449 (n + 1) + A194446 (n + 1))

end

end A194448.P13554865651701293541

/-! ## A194448.P2466370786615885043

`A001511(A228354(n+1))-A194449(n+1)`
-/

namespace A194448.P2466370786615885043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A228354 (n + 1)).toNat - A194449 (n + 1)

end

end A194448.P2466370786615885043

/-!
# A194449: Largest part minus the number of parts > 1 in the n-th region of the set of partitions of j, if 1 <= n <= A000041(j).

The programs for A194449, there is no canonical definition to state claims against.
-/

/-! ## A194449.P12422658593681774253

`A141285(n+1)-A194448(n+1)`
-/

namespace A194449.P12422658593681774253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (n + 1) - A194448 (n + 1)

end

end A194449.P12422658593681774253

/-! ## A194449.P1465792601007056104

`A186114(∑[n+1])-A194448(n+1)`
-/

namespace A194449.P1465792601007056104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (∑ j ∈ Finset.range (n + 1), f1 j) - A194448 (n + 1)

end

end A194449.P1465792601007056104

/-! ## A194449.P12525252454699520665

`A193870(∑[n]+1)-A194448(n+1)`
-/

namespace A194449.P12525252454699520665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A194448 (n + 1)

end

end A194449.P12525252454699520665

/-! ## A194449.P7658209065552092216

`A244967(n+1)+1-A194448(n+1)`
-/

namespace A194449.P7658209065552092216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244967 (n + 1) + (1 - A194448 (n + 1))

end

end A194449.P7658209065552092216

/-! ## A194449.P9139998779867378597

`val(A194602(n)+1, 2)+1-A194448(n+1)`
-/

namespace A194449.P9139998779867378597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A194602 n + 1).toNat 2 + 1 : ℤ) - A194448 (n + 1)

end

end A194449.P9139998779867378597

/-! ## A194449.P15629981751182868312

`A001511(A194602(n)+1)-A194448(n+1)`
-/

namespace A194449.P15629981751182868312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A194602 n + 1).toNat - A194448 (n + 1)

end

end A194449.P15629981751182868312

/-! ## A194449.P4117404994924668987

`A244967(n+1)-A023443(A194448(n+1))`
-/

namespace A194449.P4117404994924668987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244967 (n + 1) - A023443 (A194448 (n + 1)).toNat

end

end A194449.P4117404994924668987

/-! ## A194449.P4857712815292232113

`A007814(A194602(n)+1)+1-A194448(n+1)`
-/

namespace A194449.P4857712815292232113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A194602 n + 1).toNat + 1 - A194448 (n + 1)

end

end A194449.P4857712815292232113

/-! ## A194449.P3039204301657874886

`A194446(n+1)+A194447(n+1)-A194448(n+1)`
-/

namespace A194449.P3039204301657874886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194446 (n + 1) + (A194447 (n + 1) - A194448 (n + 1))

end

end A194449.P3039204301657874886

/-! ## A194449.P3508251928155434533

`A001511(A228354(n+1))-A194448(n+1)`
-/

namespace A194449.P3508251928155434533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A228354 (n + 1)).toNat - A194448 (n + 1)

end

end A194449.P3508251928155434533

/-!
# A194450: Vertex number of a rectangular spiral which contains exactly between its edges the successive sections of the modular table of partitions of the positive integers.

The programs for A194450, there is no canonical definition to state claims against.
-/

/-! ## A194450.P16562804686537812537

`∑[A194451(floor(acot(n)+n))]-1`
-/

namespace A194450.P16562804686537812537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194451 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A194450.P16562804686537812537

/-! ## A194450.P11814678215264382197

`∑[A194451(n^floor(atan(n)))]-1`
-/

namespace A194450.P11814678215264382197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194451 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A194450.P11814678215264382197

/-! ## A194450.P9661557506135075101

`∑[A194451(abs(1-n)+1)]-1`
-/

namespace A194450.P9661557506135075101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194451 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A194450.P9661557506135075101

/-! ## A194450.P8186723892334250390

`∑[A142150(n)+Δ[A025065(n)]]`
-/

namespace A194450.P8186723892334250390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194450.P8186723892334250390

/-! ## A194450.P11571512769774324740

`∑[A035363(n+1)+n-gcd(n, ∑[n])]`
-/

namespace A194450.P11571512769774324740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1) + ((n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194450.P11571512769774324740

/-! ## A194450.P10825678478518116328

`∑[A142150(n)+A035363(n+1)]`
-/

namespace A194450.P10825678478518116328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + A035363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194450.P10825678478518116328

/-! ## A194450.P1311175899562605645

`∑[A035363(n+1)+n]-A001318(n)`
-/

namespace A194450.P1311175899562605645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001318 n

end

end A194450.P1311175899562605645

/-! ## A194450.P6797428548420844073

`∑[A035363(n+1)+n-A026741(n)]`
-/

namespace A194450.P6797428548420844073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1) + (n : ℤ) - A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194450.P6797428548420844073

/-! ## A194450.P3629372472751712959

`∑[A142150(n)+A035444(A103517(n))]`
-/

namespace A194450.P3629372472751712959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + A035444 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194450.P3629372472751712959

/-! ## A194450.P6685495089768497830

`∑[A194451(A028310(n))%A000032(n+1)]`
-/

namespace A194450.P6685495089768497830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194451 (A028310 n).toNat) (A000032 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194450.P6685495089768497830

/-!
# A194451: Partition numbers of positive integers and positive integers interleaved.

The programs for A194451, there is no canonical definition to state claims against.
-/

/-! ## A194451.P248214191324039079

`A000041(A027656(n))*A152271(n)`
-/

namespace A194451.P248214191324039079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A027656 n).toNat * A152271 n

end

end A194451.P248214191324039079

/-! ## A194451.P16918991546216309067

`A000041(A158416(n))*A152271(n)`
-/

namespace A194451.P16918991546216309067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A158416 n).toNat * A152271 n

end

end A194451.P16918991546216309067

/-! ## A194451.P7711306816695451945

`A000041(A027656(n))*A008619(A093178(n))`
-/

namespace A194451.P7711306816695451945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A027656 n).toNat * A008619 (A093178 n).toNat

end

end A194451.P7711306816695451945

/-! ## A194451.P18306896822744475867

`A000041(A152271(A004442(n)))*A152271(n)`
-/

namespace A194451.P18306896822744475867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A152271 (A004442 n).toNat).toNat * A152271 n

end

end A194451.P18306896822744475867

/-! ## A194451.P12134628469131867086

`A000041(A158416(n))*A158416(A004442(n))`
-/

namespace A194451.P12134628469131867086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A158416 n).toNat * A158416 (A004442 n).toNat

end

end A194451.P12134628469131867086

/-! ## A194451.P14724423217058328264

`A000041(A008619(A237420(n)))*A152271(n)`
-/

namespace A194451.P14724423217058328264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A008619 (A237420 n).toNat).toNat * A152271 n

end

end A194451.P14724423217058328264

/-! ## A194451.P9617934928064652832

`A000041(A008619(n)/A152271(n))*A152271(n)`
-/

namespace A194451.P9617934928064652832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((A008619 n : ℚ) / (A152271 n : ℚ))).toNat * A152271 n

end

end A194451.P9617934928064652832

/-! ## A194451.P2123493770591388850

`Δ[A194450(n)]`
-/

namespace A194451.P2123493770591388850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194451.P2123493770591388850

/-! ## A194451.P2958248605425032972

`A194450(n+1)-A194450(n)`
-/

namespace A194451.P2958248605425032972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194450 (n + 1) - A194450 n

end

end A194451.P2958248605425032972

/-! ## A194451.P10878681496580466239

`A142150(n+1)+Δ[A025065(n+1)]`
-/

namespace A194451.P10878681496580466239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 1) + (f1 (n + 1) - f1 n)

end

end A194451.P10878681496580466239

/-! ## A194451.P14369563519161436077

`A000041(A152271(n+1))*A152271(n)`
-/

namespace A194451.P14369563519161436077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A152271 (n + 1)).toNat * A152271 n

end

end A194451.P14369563519161436077

/-! ## A194451.P4316907518281751190

`A035363(n+2)+∑[n]%(n+1)`
-/

namespace A194451.P4316907518281751190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 2) + (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ)

end

end A194451.P4316907518281751190

/-! ## A194451.P3587805852541935184

`A035363(n+2)+∑[A001057(n)]`
-/

namespace A194451.P3587805852541935184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194451.P3587805852541935184

/-! ## A194451.P1882461140482133475

`Δ[a(n-1)+A142150(n)+A035363(n+1)]` with `a(0)=3`
-/

namespace A194451.P1882461140482133475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + (A142150 n + A035363 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194451.P1882461140482133475

/-! ## A194451.P10884156555339800900

`A142150(n+1)+A035444(A103517(n+1))`
-/

namespace A194451.P10884156555339800900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 1) + A035444 (A103517 (n + 1)).toNat

end

end A194451.P10884156555339800900

/-! ## A194451.P10914093346483415142

`A022818(A052938(n)+A008795(n))`
-/

namespace A194451.P10914093346483415142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (A052938 n + A008795 n).toNat

end

end A194451.P10914093346483415142

/-! ## A194451.P1812022313362311991

`A194621(A117142(n+2)-A152271(n))`
-/

namespace A194451.P1812022313362311991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194621 (A117142 (n + 2) - A152271 n).toNat

end

end A194451.P1812022313362311991

/-! ## A194451.P7174554977311263918

`A207383(A061579(A101881(n)))`
-/

namespace A194451.P7174554977311263918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207383 (A061579 (A101881 n).toNat).toNat

end

end A194451.P7174554977311263918

/-! ## A194451.P17265714040344143260

`A008284(A071054(n)+A000124(n))`
-/

namespace A194451.P17265714040344143260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A071054 n + A000124 n).toNat

end

end A194451.P17265714040344143260

/-!
# A194452: Total number of repeated parts in all partitions of n.

The programs for A194452, there is no canonical definition to state claims against.
-/

/-! ## A194452.P9174671276925687348

`A006128(n)-A024786(n+1)`
-/

namespace A194452.P9174671276925687348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - A024786 (n + 1)

end

end A194452.P9174671276925687348

/-! ## A194452.P17931041541176344306

`A006128(n)-∑[A182712(n+1)]`
-/

namespace A194452.P17931041541176344306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194452.P17931041541176344306

/-! ## A194452.P8316864298465783122

`A093694(n)+Δ[A000041(n)-A000097(n)]`
-/

namespace A194452.P8316864298465783122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A000097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n + (f1 (n + 1) - f1 n)

end

end A194452.P8316864298465783122

/-! ## A194452.P4689843517609121408

`A093694(n)+Δ[A000065(n)-A000097(n)]`
-/

namespace A194452.P4689843517609121408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n - A000097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n + (f1 (n + 1) - f1 n)

end

end A194452.P4689843517609121408

/-! ## A194452.P2877928560265516684

`A207033(n+1)+A006128(n)-A096541(n+1)`
-/

namespace A194452.P2877928560265516684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207033 (n + 1) + (A006128 n - A096541 (n + 1))

end

end A194452.P2877928560265516684

/-! ## A194452.P11708330822842165397

`A213191(∑[n]+n)-A024786(n+1)`
-/

namespace A194452.P11708330822842165397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (∑ j ∈ Finset.range (n + 1), f1 j + n) - A024786 (n + 1)

end

end A194452.P11708330822842165397

/-!
# A194453: E.g.f. satisfies: A(x) = exp(x) - sqrt(1 - A(x)^2).

The programs for A194453, there is no canonical definition to state claims against.
-/

/-! ## A194453.P9128162597642333811

`∑[A352117(n)]`
-/

namespace A194453.P9128162597642333811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194453.P9128162597642333811

/-! ## A194453.P12201758925115448134

`record[∑[A211402(n)]*A023531(n)]`
-/

namespace A194453.P12201758925115448134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211402 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A023531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194453.P12201758925115448134

/-! ## A194453.P2304533045164065344

`record[∑[A211402(n)]/A001497(n)]`
-/

namespace A194453.P2304533045164065344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211402 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A001497 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194453.P2304533045164065344

/-! ## A194453.P10447984201909695346

`record[∑[A211402(n)]/A027465(n)]`
-/

namespace A194453.P10447984201909695346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211402 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A027465 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194453.P10447984201909695346

/-! ## A194453.P10634993276217648671

`record[∑[A211402(n)]/A028338(n)]`
-/

namespace A194453.P10634993276217648671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211402 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A028338 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194453.P10634993276217648671

/-! ## A194453.P16998868921894769784

`record[∑[A211402(n)]/A156919(n)]`
-/

namespace A194453.P16998868921894769784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211402 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A156919 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194453.P16998868921894769784

/-! ## A194453.P3773668017331136049

`record[∑[A211402(n)]/A019538(n+1)]`
-/

namespace A194453.P3773668017331136049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211402 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A019538 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194453.P3773668017331136049

/-! ## A194453.P3461825951477095632

`record[∑[A211402(n)]/A030526(n+1)]`
-/

namespace A194453.P3461825951477095632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211402 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A030526 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194453.P3461825951477095632

/-! ## A194453.P8947770815572416233

`record[∑[A211402(n)]/A075497(n+1)]`
-/

namespace A194453.P8947770815572416233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211402 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A075497 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194453.P8947770815572416233

/-!
# A194454: a(n) = 12*n^2 + 2*n + 1.

The programs for A194454, the canonical program `A194454.P11085170661089486753` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194454 has offset 0).

The definition of A194454 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n²+2*n+1` (program `A194454.P11085170661089486753`, by `A194454.P11085170661089486753.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A194454.P11085170661089486753

`12*n²+2*n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A194454

/-- `12*n²+2*n+1` -/
def P11085170661089486753.Spec : Prop :=
  ∀ n, (P11085170661089486753.a n : ℤ) = A194454 n

theorem P11085170661089486753.correct : P11085170661089486753.Spec := by
  intro n
  simp only [A194454]

end A194454

/-! ## A194454.P6158066913547187686

`∑[a(n-1)+24]` with `a(0)=1, a(1)=14`
-/

namespace A194454.P6158066913547187686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194454.P6158066913547187686

namespace A194454

/-- `∑[a(n-1)+24]` -/
def P6158066913547187686.Spec : Prop :=
  ∀ n, (P6158066913547187686.a n : ℤ) = A194454 n

end A194454

/-! ## A194454.P3434100581763343898

`Δ[(lcm(2, (2*n)²)-(n-1))*(n-1)]`
-/

namespace A194454.P3434100581763343898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 ((2 * n) ^ 2) : ℤ) - ((n : ℤ) - 1)) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194454.P3434100581763343898

namespace A194454

/-- `Δ[(lcm(2, (2*n)²)-(n-1))*(n-1)]` -/
def P3434100581763343898.Spec : Prop :=
  ∀ n, P3434100581763343898.a n = A194454 n

end A194454

/-! ## A194454.P13868363572062876467

`abs(A244805(n+1)-n)`
-/

namespace A194454.P13868363572062876467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A244805 (n + 1) - (n : ℤ)|

end

end A194454.P13868363572062876467

namespace A194454

/-- `abs(A244805(n+1)-n)` -/
def P13868363572062876467.Spec : Prop :=
  ∀ n, P13868363572062876467.a n = A194454 n

end A194454

/-! ## A194454.P9801273000534914753

`or(1, A244804(n+1)+n)`
-/

namespace A194454.P9801273000534914753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A244804 (n + 1) + (n : ℤ))

end

end A194454.P9801273000534914753

namespace A194454

/-- `or(1, A244804(n+1)+n)` -/
def P9801273000534914753.Spec : Prop :=
  ∀ n, P9801273000534914753.a n = A194454 n

end A194454

/-! ## A194454.P16287255294478390144

`-xor(A144312(n)-A000217(n), -1)`
-/

namespace A194454.P16287255294478390144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A144312 n - A000217 n) (-1)

end

end A194454.P16287255294478390144

namespace A194454

/-- `-xor(A144312(n)-A000217(n), -1)` -/
def P16287255294478390144.Spec : Prop :=
  ∀ n, P16287255294478390144.a n = A194454 n

end A194454

/-! ## A194454.P9439404333128907855

`Δ[A141530(n)+(n+1)²]`
-/

namespace A194454.P9439404333128907855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141530 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194454.P9439404333128907855

namespace A194454

/-- `Δ[A141530(n)+(n+1)²]` -/
def P9439404333128907855.Spec : Prop :=
  ∀ n, P9439404333128907855.a n = A194454 n

end A194454

/-! ## A194454.P14726179516396234105

`or(1, 2*n*Δ[A000567(n)])`
-/

namespace A194454.P14726179516396234105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((2 * n : ℤ) * (f1 (n + 1) - f1 n))

end

end A194454.P14726179516396234105

namespace A194454

/-- `or(1, 2*n*Δ[A000567(n)])` -/
def P14726179516396234105.Spec : Prop :=
  ∀ n, P14726179516396234105.a n = A194454 n

end A194454

/-! ## A194454.P3679080336153697999

`A056108(2*n)`
-/

namespace A194454.P3679080336153697999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056108 (2 * n)

end

end A194454.P3679080336153697999

namespace A194454

/-- `A056108(2*n)` -/
def P3679080336153697999.Spec : Prop :=
  ∀ n, P3679080336153697999.a n = A194454 n

end A194454

/-! ## A194454.P8600543535632930117

`A175828(2*n)`
-/

namespace A194454.P8600543535632930117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175828 (2 * n)

end

end A194454.P8600543535632930117

namespace A194454

/-- `A175828(2*n)` -/
def P8600543535632930117.Spec : Prop :=
  ∀ n, P8600543535632930117.a n = A194454 n

end A194454

/-! ## A194454.P12096779992712697365

`Δ[A057566(2*n)-n²]`
-/

namespace A194454.P12096779992712697365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057566 (2 * n) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194454.P12096779992712697365

namespace A194454

/-- `Δ[A057566(2*n)-n²]` -/
def P12096779992712697365.Spec : Prop :=
  ∀ n, P12096779992712697365.a n = A194454 n

end A194454

/-! ## A194454.P3021113360633945411

`A226450(Δ[n²])/Δ[n²]`
-/

namespace A194454.P3021113360633945411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226450 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)

end

end A194454.P3021113360633945411

namespace A194454

/-- `A226450(Δ[n²])/Δ[n²]` -/
def P3021113360633945411.Spec : Prop :=
  ∀ n, P3021113360633945411.a n = (A194454 n : ℚ)

end A194454

/-! ## A194454.P4912056027555113181

`∩[A056108(n), A175828(n)]`
-/

namespace A194454.P4912056027555113181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175828 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194454.P4912056027555113181

namespace A194454

/-- `∩[A056108(n), A175828(n)]` -/
def P4912056027555113181.Spec : Prop :=
  ∀ n, (P4912056027555113181.a n : ℤ) = A194454 n

end A194454

/-! ## A194454.P7501521989111859415

`(A244804(n+1)+n)/A141044(A297276(n+1))`
-/

namespace A194454.P7501521989111859415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244804 (n + 1) + (n : ℤ) : ℚ) / (A141044 (A297276 (n + 1)).toNat : ℚ)

end

end A194454.P7501521989111859415

namespace A194454

/-- `(A244804(n+1)+n)/A141044(A297276(n+1))` -/
def P7501521989111859415.Spec : Prop :=
  ∀ n, P7501521989111859415.a n = (A194454 n : ℚ)

end A194454

/-! ## A194454.P3359121429228100819

`∑[A140164(A016813(n))]`
-/

namespace A194454.P3359121429228100819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140164 (A016813 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194454.P3359121429228100819

namespace A194454

/-- `∑[A140164(A016813(n))]` -/
def P3359121429228100819.Spec : Prop :=
  ∀ n, P3359121429228100819.a n = A194454 n

end A194454

/-! ## A194454.P16349897874821900162

`A208994(6*n)`
-/

namespace A194454.P16349897874821900162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208994 (6 * n)

end

end A194454.P16349897874821900162

namespace A194454

/-- `A208994(6*n)` -/
def P16349897874821900162.Spec : Prop :=
  ∀ n, P16349897874821900162.a n = A194454 n

end A194454

/-! ## A194454.P2836838742197100161

`A096777(6*n+1)`
-/

namespace A194454.P2836838742197100161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096777 (6 * n + 1)

end

end A194454.P2836838742197100161

namespace A194454

/-- `A096777(6*n+1)` -/
def P2836838742197100161.Spec : Prop :=
  ∀ n, P2836838742197100161.a n = A194454 n

end A194454

/-! ## A194454.P14364238195737268214

`A036410(12*n)`
-/

namespace A194454.P14364238195737268214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036410 (12 * n)

end

end A194454.P14364238195737268214

namespace A194454

/-- `A036410(12*n)` -/
def P14364238195737268214.Spec : Prop :=
  ∀ n, P14364238195737268214.a n = A194454 n

end A194454

/-! ## A194454.P3660360383440755503

`A014591(A017533(n))`
-/

namespace A194454.P3660360383440755503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014591 (A017533 n).toNat

end

end A194454.P3660360383440755503

namespace A194454

/-- `A014591(A017533(n))` -/
def P3660360383440755503.Spec : Prop :=
  ∀ n, P3660360383440755503.a n = A194454 n

end A194454

/-!
# A194455: a(n) = 2^n + 3n + 1.

The programs for A194455, the canonical program `A194455.P8801365097512041252` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194455 has offset 0).

The definition of A194455 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+3*n+1` (program `A194455.P8801365097512041252`, by `A194455.P8801365097512041252.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A194455.P8801365097512041252

`2^n+3*n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A194455

/-- `2^n+3*n+1` -/
def P8801365097512041252.Spec : Prop :=
  ∀ n, (P8801365097512041252.a n : ℤ) = A194455 n

theorem P8801365097512041252.correct : P8801365097512041252.Spec := by
  intro n
  simp only [A194455]

end A194455

/-! ## A194455.P14104182569711498734

`∑[2*a(n-1)-3]` with `a(0)=2, a(1)=4`
-/

namespace A194455.P14104182569711498734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  2 * f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194455.P14104182569711498734

namespace A194455

/-- `∑[2*a(n-1)-3]` -/
def P14104182569711498734.Spec : Prop :=
  ∀ n, P14104182569711498734.a n = A194455 n

end A194455

/-! ## A194455.P11806943911230956251

`∑[a(n-1)+2^(n-2)]` with `a(0)=2, a(1)=4`
-/

namespace A194455.P11806943911230956251
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194455.P11806943911230956251

namespace A194455

/-- `∑[a(n-1)+2^(n-2)]` -/
def P11806943911230956251.Spec : Prop :=
  ∀ n, P11806943911230956251.a n = (A194455 n : ℚ)

end A194455

/-! ## A194455.P144350035139877944

`∑[floor(a(n-1)+a(n-1)-3)]` with `a(0)=2, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A194455.P144350035139877944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194455.P144350035139877944

namespace A194455

/-- `∑[floor(a(n-1)+a(n-1)-3)]` -/
def P144350035139877944.Spec : Prop :=
  ∀ n, P144350035139877944.a n = A194455 n

end A194455

/-! ## A194455.P2201019987458945978

`∑[floor(a(n-1)-(3-a(n-1)))]` with `a(0)=2, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A194455.P2201019987458945978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 1) - (3 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194455.P2201019987458945978

namespace A194455

/-- `∑[floor(a(n-1)-(3-a(n-1)))]` -/
def P2201019987458945978.Spec : Prop :=
  ∀ n, P2201019987458945978.a n = A194455 n

end A194455

/-! ## A194455.P7224854959821841710

`floor(2*(a(n-1)+2-n)+1-n)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A194455.P7224854959821841710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (a (n - 1) + (2 - (n : ℤ))) + (1 - (n : ℤ))

end

end A194455.P7224854959821841710

namespace A194455

/-- `floor(2*(a(n-1)+2-n)+1-n)` -/
def P7224854959821841710.Spec : Prop :=
  ∀ n, P7224854959821841710.a n = A194455 n

end A194455

/-! ## A194455.P14929861032459282807

`floor(1-2*(n-2-a(n-1))-n)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A194455.P14929861032459282807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  1 - 2 * ((n : ℤ) - 2 - a (n - 1)) - (n : ℤ)

end

end A194455.P14929861032459282807

namespace A194455

/-- `floor(1-2*(n-2-a(n-1))-n)` -/
def P14929861032459282807.Spec : Prop :=
  ∀ n, P14929861032459282807.a n = A194455 n

end A194455

/-! ## A194455.P6979904095834518992

`abs(A016789(n)+2^n-1)`
-/

namespace A194455.P6979904095834518992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016789 n + ((2 ^ n : ℤ) - 1)|

end

end A194455.P6979904095834518992

namespace A194455

/-- `abs(A016789(n)+2^n-1)` -/
def P6979904095834518992.Spec : Prop :=
  ∀ n, P6979904095834518992.a n = A194455 n

end A194455

/-! ## A194455.P2016808389571762765

`∑[Δ[A000079(abs(1-n))]+3]`
-/

namespace A194455.P2016808389571762765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194455.P2016808389571762765

namespace A194455

/-- `∑[Δ[A000079(abs(1-n))]+3]` -/
def P2016808389571762765.Spec : Prop :=
  ∀ n, P2016808389571762765.a n = A194455 n

end A194455

/-! ## A194455.P472367098582147708

`round(A000079(n)+cos(1)+3*n)`
-/

namespace A194455.P472367098582147708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000079 n : ℝ) + (Real.cos (1 : ℝ) + (3 * n : ℝ)))

end

end A194455.P472367098582147708

namespace A194455

/-- `round(A000079(n)+cos(1)+3*n)` -/
def P472367098582147708.Spec : Prop :=
  ∀ n, P472367098582147708.a n = A194455 n

end A194455

/-! ## A194455.P4881336184410697054

`abs(4*n+2-(n-A000225(n)))`
-/

namespace A194455.P4881336184410697054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 * n + 2 : ℤ) - ((n : ℤ) - A000225 n)|

end

end A194455.P4881336184410697054

namespace A194455

/-- `abs(4*n+2-(n-A000225(n)))` -/
def P4881336184410697054.Spec : Prop :=
  ∀ n, P4881336184410697054.a n = A194455 n

end A194455

/-! ## A194455.P6358604188668690848

`abs(A000079(n)+comp[A032766(n)]-1)`
-/

namespace A194455.P6358604188668690848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1|

end

end A194455.P6358604188668690848

namespace A194455

/-- `abs(A000079(n)+comp[A032766(n)]-1)` -/
def P6358604188668690848.Spec : Prop :=
  ∀ n, P6358604188668690848.a n = A194455 n

end A194455

/-! ## A194455.P8339466600758764408

`abs(3-(A016777(n+1)+A000079(n)))`
-/

namespace A194455.P8339466600758764408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (A016777 (n + 1) + A000079 n)|

end

end A194455.P8339466600758764408

namespace A194455

/-- `abs(3-(A016777(n+1)+A000079(n)))` -/
def P8339466600758764408.Spec : Prop :=
  ∀ n, P8339466600758764408.a n = A194455 n

end A194455

/-! ## A194455.P2288288901266969001

`Δ[A000326(n)+A000051(n)]`
-/

namespace A194455.P2288288901266969001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n + A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194455.P2288288901266969001

namespace A194455

/-- `Δ[A000326(n)+A000051(n)]` -/
def P2288288901266969001.Spec : Prop :=
  ∀ n, P2288288901266969001.a n = A194455 n

end A194455

/-! ## A194455.P6098652575534459869

`Δ[A000326(n)+A000225(n)]`
-/

namespace A194455.P6098652575534459869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n + A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194455.P6098652575534459869

namespace A194455

/-- `Δ[A000326(n)+A000225(n)]` -/
def P6098652575534459869.Spec : Prop :=
  ∀ n, P6098652575534459869.a n = A194455 n

end A194455

/-! ## A194455.P6275376842387012043

`∑[A004119(n)-A000918(n)]`
-/

namespace A194455.P6275376842387012043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004119 n - A000918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194455.P6275376842387012043

namespace A194455

/-- `∑[A004119(n)-A000918(n)]` -/
def P6275376842387012043.Spec : Prop :=
  ∀ n, P6275376842387012043.a n = A194455 n

end A194455

/-!
# A194456: E.g.f.: Sum_{n>=0} 2^(-n*(n+1)/2!) * Product_{k=0..n} tan(2^k*x).

The programs for A194456, there is no canonical definition to state claims against.
-/

/-! ## A194456.P15714303320487578427

`A271481(∑[n])`
-/

namespace A194456.P15714303320487578427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271481 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194456.P15714303320487578427

/-!
# A194457: E.g.f.: Sum_{n>=0} 2^(-n*(n+1)/2!) * Product_{k=0..n} tanh(2^k*x).

The programs for A194457, there is no canonical definition to state claims against.
-/

/-! ## A194457.P14141659752592385137

`2^n-A279534(A103770(n))`
-/

namespace A194457.P14141659752592385137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A279534 (A103770 n).toNat

end

end A194457.P14141659752592385137

/-!
# A194458: Total number of entries in rows 0,1,...,n of Pascal's triangle not divisible by 5.

The programs for A194458, the canonical program `A194458.P10976458647848620853` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194458 has offset 0).

The definition of A194458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194458.P2651152489181644382

`∑[A194459(n)]`
-/

namespace A194458.P2651152489181644382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194458.P2651152489181644382

namespace A194458

/-- `∑[A194459(n)]` -/
def P2651152489181644382.Spec : Prop :=
  ∀ n, P2651152489181644382.a n = A194458 n

end A194458

/-! ## A194458.P10976458647848620853

`∑[∏{digits}[A007091(n), #+1]]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A194458

/-- `∑[∏{digits}[A007091(n), #+1]]` -/
def P10976458647848620853.Spec : Prop :=
  ∀ n, (P10976458647848620853.a n : ℤ) = A194458 n

theorem P10976458647848620853.correct : P10976458647848620853.Spec := by
  intro n
  simp only [A194458]

end A194458

/-! ## A194458.P2308138895905103407

`∑[A089898(A007091(n))]`
-/

namespace A194458.P2308138895905103407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (A007091 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194458.P2308138895905103407

namespace A194458

/-- `∑[A089898(A007091(n))]` -/
def P2308138895905103407.Spec : Prop :=
  ∀ n, P2308138895905103407.a n = A194458 n

end A194458

/-! ## A194458.P2766188205084103352

`∑[A089898(A014263(n+1)/2)]`
-/

namespace A194458.P2766188205084103352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194458.P2766188205084103352

namespace A194458

/-- `∑[A089898(A014263(n+1)/2)]` -/
def P2766188205084103352.Spec : Prop :=
  ∀ n, P2766188205084103352.a n = A194458 n

end A194458

/-! ## A194458.P1144604653656532998

`∑[A089898(record[A106747(n)])]`
-/

namespace A194458.P1144604653656532998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194458.P1144604653656532998

namespace A194458

/-- `∑[A089898(record[A106747(n)])]` -/
def P1144604653656532998.Spec : Prop :=
  ∀ n, P1144604653656532998.a n = A194458 n

end A194458

/-! ## A194458.P4393344742724199754

`∑[A089898(A110654(A014263(n+1)))]`
-/

namespace A194458.P4393344742724199754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (A110654 (A014263 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194458.P4393344742724199754

namespace A194458

/-- `∑[A089898(A110654(A014263(n+1)))]` -/
def P4393344742724199754.Spec : Prop :=
  ∀ n, P4393344742724199754.a n = A194458 n

end A194458

/-! ## A194458.P5284705875698927263

`∑[A000005(A054842(record[A106747(n)]))]`
-/

namespace A194458.P5284705875698927263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A054842 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194458.P5284705875698927263

namespace A194458

/-- `∑[A000005(A054842(record[A106747(n)]))]` -/
def P5284705875698927263.Spec : Prop :=
  ∀ n, P5284705875698927263.a n = A194458 n

end A194458

/-!
# A194459: Number of entries in the n-th row of Pascal's triangle not divisible by 5.

The programs for A194459, the canonical program `A194459.P8592063526530025729` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194459 has offset 0).

The definition of A194459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194459.P8592063526530025729

`∏{digits}[A007091(n), #+1]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A194459

/-- `∏{digits}[A007091(n), #+1]` -/
def P8592063526530025729.Spec : Prop :=
  ∀ n, (P8592063526530025729.a n : ℤ) = A194459 n

theorem P8592063526530025729.correct : P8592063526530025729.Spec := by
  intro n
  simp only [A194459]

end A194459

/-! ## A194459.P8531460959552319817

`∏{digits}[A014263(n+1), A008619(#)]`
-/

namespace A194459.P8531460959552319817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008619 x).prod

end

end A194459.P8531460959552319817

namespace A194459

/-- `∏{digits}[A014263(n+1), A008619(#)]` -/
def P8531460959552319817.Spec : Prop :=
  ∀ n, P8531460959552319817.a n = A194459 n

end A194459

/-! ## A194459.P9689689076602357892

`∏{digits}[A014263(n+1), A028242(#)]`
-/

namespace A194459.P9689689076602357892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028242 x).prod

end

end A194459.P9689689076602357892

namespace A194459

/-- `∏{digits}[A014263(n+1), A028242(#)]` -/
def P9689689076602357892.Spec : Prop :=
  ∀ n, P9689689076602357892.a n = A194459 n

end A194459

/-! ## A194459.P1819918218591174789

`∏{digits}[A014263(n+1), A328399(#)]`
-/

namespace A194459.P1819918218591174789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A328399 x).prod

end

end A194459.P1819918218591174789

namespace A194459

/-- `∏{digits}[A014263(n+1), A328399(#)]` -/
def P1819918218591174789.Spec : Prop :=
  ∀ n, P1819918218591174789.a n = A194459 n

end A194459

/-! ## A194459.P15827614327617407586

`A382720(A037466(n))`
-/

namespace A194459.P15827614327617407586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382720 (A037466 n).toNat

end

end A194459.P15827614327617407586

namespace A194459

/-- `A382720(A037466(n))` -/
def P15827614327617407586.Spec : Prop :=
  ∀ n, P15827614327617407586.a n = A194459 n

end A194459

/-! ## A194459.P11747155788335890914

`A061486(A007091(n))+1`
-/

namespace A194459.P11747155788335890914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061486 (A007091 n).toNat + 1

end

end A194459.P11747155788335890914

namespace A194459

/-- `A061486(A007091(n))+1` -/
def P11747155788335890914.Spec : Prop :=
  ∀ n, P11747155788335890914.a n = A194459 n

end A194459

/-! ## A194459.P11018901464947688081

`A089898(A007091(n))`
-/

namespace A194459.P11018901464947688081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (A007091 n).toNat

end

end A194459.P11018901464947688081

namespace A194459

/-- `A089898(A007091(n))` -/
def P11018901464947688081.Spec : Prop :=
  ∀ n, P11018901464947688081.a n = A194459 n

end A194459

/-! ## A194459.P12565198780154907067

`A089898(A014263(n+1)/2)`
-/

namespace A194459.P12565198780154907067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) / 2)).toNat

end

end A194459.P12565198780154907067

namespace A194459

/-- `A089898(A014263(n+1)/2)` -/
def P12565198780154907067.Spec : Prop :=
  ∀ n, P12565198780154907067.a n = A194459 n

end A194459

/-! ## A194459.P15946971549865975419

`∏{digits}[record[A106747(n)], #+1]`
-/

namespace A194459.P15946971549865975419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).prod

end

end A194459.P15946971549865975419

namespace A194459

/-- `∏{digits}[record[A106747(n)], #+1]` -/
def P15946971549865975419.Spec : Prop :=
  ∀ n, (P15946971549865975419.a n : ℤ) = A194459 n

end A194459

/-! ## A194459.P6056795976455263796

`A089898(record[A106747(n)])`
-/

namespace A194459.P6056795976455263796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A194459.P6056795976455263796

namespace A194459

/-- `A089898(record[A106747(n)])` -/
def P6056795976455263796.Spec : Prop :=
  ∀ n, P6056795976455263796.a n = A194459 n

end A194459

/-!
# A194460: a(n) is the number of basic ideals in the standard Borel subalgebra of the untwisted affine Lie algebra sl_n.

The programs for A194460, the canonical program `A194460.P2113824758349702533` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194460 has offset 1).

The definition of A194460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194460.P2113824758349702533

`(n-1)*A000108(n)+4*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A194460

/-- `(n-1)*A000108(n)+4*a(n-1)` -/
def P2113824758349702533.Spec : Prop :=
  ∀ n, P2113824758349702533.a n = A194460 (n + 1)

theorem P2113824758349702533.correct : P2113824758349702533.Spec := by
  intro n
  simp only [A194460, Nat.add_sub_cancel]

end A194460

/-! ## A194460.P6295319813975932884

`A296770(n)-A008549(n)`
-/

namespace A194460.P6295319813975932884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296770 n - A008549 n

end

end A194460.P6295319813975932884

namespace A194460

/-- `A296770(n)-A008549(n)` -/
def P6295319813975932884.Spec : Prop :=
  ∀ n, P6295319813975932884.a n = A194460 (n + 1)

end A194460

/-! ## A194460.P11460081019508876269

`A139262(n+1)+A001700(n)`
-/

namespace A194460.P11460081019508876269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139262 (n + 1) + A001700 n

end

end A194460.P11460081019508876269

namespace A194460

/-- `A139262(n+1)+A001700(n)` -/
def P11460081019508876269.Spec : Prop :=
  ∀ n, P11460081019508876269.a n = A194460 (n + 1)

end A194460

/-! ## A194460.P11397471299422489203

`A034274(n+1)-A006419(n)`
-/

namespace A194460.P11397471299422489203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034274 (n + 1) - A006419 n

end

end A194460.P11397471299422489203

namespace A194460

/-- `A034274(n+1)-A006419(n)` -/
def P11397471299422489203.Spec : Prop :=
  ∀ n, P11397471299422489203.a n = A194460 (n + 1)

end A194460

/-! ## A194460.P1988583481055495644

`A092443(n+1)-A004171(n)`
-/

namespace A194460.P1988583481055495644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092443 (n + 1) - A004171 n

end

end A194460.P1988583481055495644

namespace A194460

/-- `A092443(n+1)-A004171(n)` -/
def P1988583481055495644.Spec : Prop :=
  ∀ n, P1988583481055495644.a n = A194460 (n + 1)

end A194460

/-! ## A194460.P991387550260608388

`A097070(n+2)-A000346(n)`
-/

namespace A194460.P991387550260608388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097070 (n + 2) - A000346 n

end

end A194460.P991387550260608388

namespace A194460

/-- `A097070(n+2)-A000346(n)` -/
def P991387550260608388.Spec : Prop :=
  ∀ n, P991387550260608388.a n = A194460 (n + 1)

end A194460

/-! ## A194460.P3884119150670232784

`A002457(n)-2*A008549(n)`
-/

namespace A194460.P3884119150670232784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n - 2 * A008549 n

end

end A194460.P3884119150670232784

namespace A194460

/-- `A002457(n)-2*A008549(n)` -/
def P3884119150670232784.Spec : Prop :=
  ∀ n, P3884119150670232784.a n = A194460 (n + 1)

end A194460

/-! ## A194460.P14757321075911351118

`record[A056040(n)-A093387(n+1)]`
-/

namespace A194460.P14757321075911351118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n - A093387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194460.P14757321075911351118

namespace A194460

/-- `record[A056040(n)-A093387(n+1)]` -/
def P14757321075911351118.Spec : Prop :=
  ∀ n, P14757321075911351118.a n = A194460 (n + 1)

end A194460

/-! ## A194460.P9597991963773898645

`record[A056040(n)-2*A294175(n)]`
-/

namespace A194460.P9597991963773898645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n - 2 * A294175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194460.P9597991963773898645

namespace A194460

/-- `record[A056040(n)-2*A294175(n)]` -/
def P9597991963773898645.Spec : Prop :=
  ∀ n, P9597991963773898645.a n = A194460 (n + 1)

end A194460

/-! ## A194460.P13502596315989423673

`A092443(n+1)-2*A000302(n)`
-/

namespace A194460.P13502596315989423673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092443 (n + 1) - 2 * A000302 n

end

end A194460.P13502596315989423673

namespace A194460

/-- `A092443(n+1)-2*A000302(n)` -/
def P13502596315989423673.Spec : Prop :=
  ∀ n, P13502596315989423673.a n = A194460 (n + 1)

end A194460

/-! ## A194460.P5535063026482362111

`A092443(n+1)-2*A000079(n)²`
-/

namespace A194460.P5535063026482362111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092443 (n + 1) - 2 * A000079 n ^ 2

end

end A194460.P5535063026482362111

namespace A194460

/-- `A092443(n+1)-2*A000079(n)²` -/
def P5535063026482362111.Spec : Prop :=
  ∀ n, P5535063026482362111.a n = A194460 (n + 1)

end A194460

/-! ## A194460.P2180263352958216875

`A139262(n+1)+A001405(2*n+1)`
-/

namespace A194460.P2180263352958216875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139262 (n + 1) + A001405 (2 * n + 1)

end

end A194460.P2180263352958216875

namespace A194460

/-- `A139262(n+1)+A001405(2*n+1)` -/
def P2180263352958216875.Spec : Prop :=
  ∀ n, P2180263352958216875.a n = A194460 (n + 1)

end A194460

/-! ## A194460.P3119893312063536655

`A200613(n+1)+A107373(2*n+1)`
-/

namespace A194460.P3119893312063536655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200613 (n + 1) + A107373 (2 * n + 1)

end

end A194460.P3119893312063536655

namespace A194460

/-- `A200613(n+1)+A107373(2*n+1)` -/
def P3119893312063536655.Spec : Prop :=
  ∀ n, P3119893312063536655.a n = A194460 (n + 1)

end A194460

/-! ## A194460.P13399488472835357490

`A092443(n+1)-A000079(2*n+1)`
-/

namespace A194460.P13399488472835357490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092443 (n + 1) - A000079 (2 * n + 1)

end

end A194460.P13399488472835357490

namespace A194460

/-- `A092443(n+1)-A000079(2*n+1)` -/
def P13399488472835357490.Spec : Prop :=
  ∀ n, P13399488472835357490.a n = A194460 (n + 1)

end A194460

/-! ## A194460.P4067284325867313884

`A116078(n+1)-A001405(2*n+1)`
-/

namespace A194460.P4067284325867313884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116078 (n + 1) - A001405 (2 * n + 1)

end

end A194460.P4067284325867313884

namespace A194460

/-- `A116078(n+1)-A001405(2*n+1)` -/
def P4067284325867313884.Spec : Prop :=
  ∀ n, P4067284325867313884.a n = A194460 (n + 1)

end A194460

/-! ## A194460.P7522818535383618948

`A139262(n+1)+A000984(n+1)/2`
-/

namespace A194460.P7522818535383618948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139262 (n + 1) : ℚ) + (A000984 (n + 1) : ℚ) / 2

end

end A194460.P7522818535383618948

namespace A194460

/-- `A139262(n+1)+A000984(n+1)/2` -/
def P7522818535383618948.Spec : Prop :=
  ∀ n, P7522818535383618948.a n = (A194460 (n + 1) : ℚ)

end A194460

/-! ## A194460.P3699202417342457196

`A116078(n+1)-A000984(n+1)/2`
-/

namespace A194460.P3699202417342457196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116078 (n + 1) : ℚ) - (A000984 (n + 1) : ℚ) / 2

end

end A194460.P3699202417342457196

namespace A194460

/-- `A116078(n+1)-A000984(n+1)/2` -/
def P3699202417342457196.Spec : Prop :=
  ∀ n, P3699202417342457196.a n = (A194460 (n + 1) : ℚ)

end A194460

/-! ## A194460.P11683041445044777821

`A027305(2*n)-A093387(2*n+1)`
-/

namespace A194460.P11683041445044777821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027305 (2 * n) - A093387 (2 * n + 1)

end

end A194460.P11683041445044777821

namespace A194460

/-- `A027305(2*n)-A093387(2*n+1)` -/
def P11683041445044777821.Spec : Prop :=
  ∀ n, P11683041445044777821.a n = A194460 (n + 1)

end A194460

/-! ## A194460.P17335389743811689155

`A242172(2*n)-A093387(2*(n+1))`
-/

namespace A194460.P17335389743811689155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242172 (2 * n) - A093387 (2 * (n + 1))

end

end A194460.P17335389743811689155

namespace A194460

/-- `A242172(2*n)-A093387(2*(n+1))` -/
def P17335389743811689155.Spec : Prop :=
  ∀ n, P17335389743811689155.a n = A194460 (n + 1)

end A194460

/-! ## A194460.P9389243968091465333

`A191309(2*(n+1))+A001405(2*n+1)`
-/

namespace A194460.P9389243968091465333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191309 (2 * (n + 1)) + A001405 (2 * n + 1)

end

end A194460.P9389243968091465333

namespace A194460

/-- `A191309(2*(n+1))+A001405(2*n+1)` -/
def P9389243968091465333.Spec : Prop :=
  ∀ n, P9389243968091465333.a n = A194460 (n + 1)

end A194460

/-!
# A194461: Numbers m such that Sum_{k=1..m} ( - ) < 0, where r=(1+sqrt(5))/2 and c=(-1+sqrt(5))/4, and < > denotes fractional part.

The programs for A194461, there is no canonical definition to state claims against.
-/

/-! ## A194461.P1514644882624309283

`comp[A194462(n+1)-1]+1`
-/

namespace A194461.P1514644882624309283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194462 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A194461.P1514644882624309283

/-! ## A194461.P12905674011823686676

`comp[A023443(A194462(n+1))]+1`
-/

namespace A194461.P12905674011823686676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A194462 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A194461.P12905674011823686676

/-! ## A194461.P12585563225198749356

`eq[char[A194462(n+1)], A151878(n)]`
-/

namespace A194461.P12585563225198749356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194462 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A194461.P12585563225198749356

/-! ## A194461.P16897230305176042980

`A188016(n+1)+A165326(A027070(n))`
-/

namespace A194461.P16897230305176042980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188016 (n + 1) + A165326 (A027070 n).toNat

end

end A194461.P16897230305176042980

/-!
# A194463: Numbers m such that Sum_{k=1..m} ( - ) < 0, where r=(1+sqrt(5))/2 and c=(1+sqrt(5))/4, and < > denotes fractional part.

The programs for A194463, there is no canonical definition to state claims against.
-/

/-! ## A194463.P2725749039206868088

`A060143(A194402(n+1))%A008655(A008632(n))`
-/

namespace A194463.P2725749039206868088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060143 (A194402 (n + 1)).toNat) (A008655 (A008632 n).toNat)

end

end A194463.P2725749039206868088

/-! ## A194463.P12844094449714925969

`A040001(A178495(n+1))*A060143(A194402(n+1))`
-/

namespace A194463.P12844094449714925969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A178495 (n + 1)).toNat * A060143 (A194402 (n + 1)).toNat

end

end A194463.P12844094449714925969

/-! ## A194463.P8878978196260379526

`A060143(A194402(n+1))-A057427(A177787(n+2))+1`
-/

namespace A194463.P8878978196260379526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A194402 (n + 1)).toNat - A057427 (A177787 (n + 2)).toNat + 1

end

end A194463.P8878978196260379526

/-! ## A194463.P6646716731709080499

`A001961(A194403(n+1)%A218624(3*n+4))`
-/

namespace A194463.P6646716731709080499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (Int.tmod (A194403 (n + 1)) (A218624 (3 * n + 4))).toNat

end

end A194463.P6646716731709080499

/-! ## A194463.P14081131781725569878

`lt[A357623(A357645(n)), A357621(3*n)]`
-/

namespace A194463.P14081131781725569878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357623 (A357645 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357621 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194463.P14081131781725569878

/-!
# A194464: Numbers m such that Sum_{k=1..m} ( - ) > 0, where r=(1+sqrt(5))/2 and c=(1+sqrt(5))/4, and < > denotes fractional part.

The programs for A194464, there is no canonical definition to state claims against.
-/

/-! ## A194464.P9482899050289345406

`lt[A280317(3*n+5), A104597(A000961(3*n+1))]`
-/

namespace A194464.P9482899050289345406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280317 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104597 (A000961 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194464.P9482899050289345406

/-!
# A194465: Numbers m such that Sum_{k=1..m} ( - ) < 0, where r=sqrt(2) and c=sqrt(1/2), and < > denotes fractional part.

The programs for A194465, there is no canonical definition to state claims against.
-/

/-! ## A194465.P3542300251019790381

`lt[char[A194466(n+1)], n/A313896(n)]`
-/

namespace A194465.P3542300251019790381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194466 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A313896 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A194465.P3542300251019790381

/-! ## A194465.P16641629992931732358

`lt[char[A194466(n+1)]*A313896(n+1), n]`
-/

namespace A194465.P16641629992931732358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194466 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A313896 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A194465.P16641629992931732358

/-! ## A194465.P7923497471551630885

`lt[char[A194466(n+1)]*A305065(n), n]`
-/

namespace A194465.P7923497471551630885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194466 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A305065 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A194465.P7923497471551630885

/-! ## A194465.P5497498392873679247

`eq[char[A194466(n+1)], A151933(n)]`
-/

namespace A194465.P5497498392873679247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194466 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A194465.P5497498392873679247

/-!
# A194466: Numbers m such that Sum_{k=1..m} ( - ) > 0, where r=sqrt(2) and c=sqrt(1/2), and < > denotes fractional part.

The programs for A194466, there is no canonical definition to state claims against.
-/

/-! ## A194466.P17453068433052769499

`eq[char[A194465(n+1)], A151933(n)]`
-/

namespace A194466.P17453068433052769499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194465 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A194466.P17453068433052769499

/-!
# A194467: Numbers m such that Sum_{k=1..m} ( - ) < 0, where r=sqrt(3) and c=sqrt(1/3), and < > denotes fractional part.

The programs for A194467, there is no canonical definition to state claims against.
-/

/-! ## A194467.P9360616384529832216

`eq[char[A194468(n+1)], A151933(n)]`
-/

namespace A194467.P9360616384529832216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194468 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A194467.P9360616384529832216

/-! ## A194467.P11177411203184534500

`lt[A128368(n+1), A262230(A043063(n+1))]`
-/

namespace A194467.P11177411203184534500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262230 (A043063 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194467.P11177411203184534500

/-! ## A194467.P4033431108716178662

`lt[A047891(A047935(n+3)), A229486(2*n+1)]`
-/

namespace A194467.P4033431108716178662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047891 (A047935 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229486 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194467.P4033431108716178662

/-! ## A194467.P3158119131380561247

`lt[A118511(A137462(n)), A105833(n+1)]`
-/

namespace A194467.P3158119131380561247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118511 (A137462 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194467.P3158119131380561247

/-! ## A194467.P14961168544714475626

`lt[A003406(2*n), A325521(A237824(3*n+2))]`
-/

namespace A194467.P14961168544714475626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003406 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325521 (A237824 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194467.P14961168544714475626

/-!
# A194468: Numbers m such that Sum_{k=1..m} ( - ) > 0, where r=sqrt(3) and c=sqrt(1/3), and < > denotes fractional part.

The programs for A194468, there is no canonical definition to state claims against.
-/

/-! ## A194468.P6676754413432895706

`comp[∪[A194467(n+1), A194450(n)]]`
-/

namespace A194468.P6676754413432895706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194467 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194450 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A194468.P6676754413432895706

/-!
# A194469: Values of m for which sqrt(m) is curbed by 1/2; see Comments for "curbed by".

The programs for A194469, there is no canonical definition to state claims against.
-/

/-! ## A194469.P6904190054170336802

`record[2*(n+1)-A000005(A222444(n+1))]`
-/

namespace A194469.P6904190054170336802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A000005 (A222444 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194469.P6904190054170336802

/-! ## A194469.P10543905289677233270

`filter[A317551(n+2), A075437(#)]`
-/

namespace A194469.P10543905289677233270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075437 (f1 j).toNat = 1) n)

end

end A194469.P10543905289677233270

/-! ## A194469.P10759080121553846432

`lt[A320466(A341862(n)), A341862(n+1)]`
-/

namespace A194469.P10759080121553846432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320466 (A341862 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194469.P10759080121553846432

/-! ## A194469.P1908853094818205815

`lt[A059791(n+1), A156616(A097289(2*(n+1)))]`
-/

namespace A194469.P1908853094818205815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156616 (A097289 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194469.P1908853094818205815

/-! ## A194469.P4787882859058426069

`filter[A090106(n+1), A266974(#)]`
-/

namespace A194469.P4787882859058426069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266974 (f1 j).toNat = 1) n)

end

end A194469.P4787882859058426069

/-!
# A194470: Complement of A194469 (conjectured): numbers m such that sqrt(m) is not curbed by 1/2.

The programs for A194470, there is no canonical definition to state claims against.
-/

/-! ## A194470.P16274434597779951761

`A320777(A039617(n+3))+A022544(n+1)`
-/

namespace A194470.P16274434597779951761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320777 (A039617 (n + 3)).toNat + A022544 (n + 1)

end

end A194470.P16274434597779951761

/-! ## A194470.P373104586348202636

`eq[A025466(A271950(n)), A266974(n)]`
-/

namespace A194470.P373104586348202636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 (A271950 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266974 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194470.P373104586348202636

/-! ## A194470.P4205152696141550615

`eq[A075439(A142279(n+1)), A266974(n)]`
-/

namespace A194470.P4205152696141550615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075439 (A142279 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266974 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194470.P4205152696141550615

/-! ## A194470.P15338191007084528720

`lt[A280700(3*n+1), A283997(A280705(n))]`
-/

namespace A194470.P15338191007084528720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280700 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283997 (A280705 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A194470.P15338191007084528720

/-! ## A194470.P10369401014509254143

`eq[A034484(n+1), A266974(n)]`
-/

namespace A194470.P10369401014509254143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266974 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194470.P10369401014509254143

/-!
# A194471: E.g.f. A(x) satisfies A(x) = exp(x) + x*A(x)^2.

The programs for A194471, there is no canonical definition to state claims against.
-/

/-! ## A194471.P1435387329962721260

`∑[A073846(A199816(n))]`
-/

namespace A194471.P1435387329962721260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A199816 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194471.P1435387329962721260

/-!
# A194472: Erdős-Nicolas numbers.

The programs for A194472, there is no canonical definition to state claims against.
-/

/-! ## A194472.P12008250914920403347

`A064510(∑[gcd(n*(n+2), A194114(n+1))])`
-/

namespace A194472.P12008250914920403347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n * (n + 2) : ℤ) (A194114 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064510 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194472.P12008250914920403347

/-!
# A194475: Number of ways to arrange 3 indistinguishable points on an n X n X n triangular grid so that no three points are in the same row or diagonal.

The programs for A194475, the canonical program `A194475.P6935338970095169522` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194475 has offset 1).

The definition of A194475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194475.P6935338970095169522

`C(∑[n+1], 3)-C(∑[n], 2)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A194475

/-- `C(∑[n+1], 3)-C(∑[n], 2)` -/
def P6935338970095169522.Spec : Prop :=
  ∀ n, P6935338970095169522.a n = A194475 (n + 1)

theorem P6935338970095169522.correct : P6935338970095169522.Spec := by
  intro n
  simp only [A194475, Nat.add_sub_cancel]

end A194475

/-! ## A194475.P4402307048831143340

`∑[n]+(∑[n+1]+1)*∑[A005581(n)]`
-/

namespace A194475.P4402307048831143340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A194475.P4402307048831143340

namespace A194475

/-- `∑[n]+(∑[n+1]+1)*∑[A005581(n)]` -/
def P4402307048831143340.Spec : Prop :=
  ∀ n, P4402307048831143340.a n = A194475 (n + 1)

end A194475

/-! ## A194475.P707073944544292660

`A198833(n+1)-∑[∑[∑[9*n-3]+4]]`
-/

namespace A194475.P707073944544292660
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198833 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194475.P707073944544292660

namespace A194475

/-- `A198833(n+1)-∑[∑[∑[9*n-3]+4]]` -/
def P707073944544292660.Spec : Prop :=
  ∀ n, P707073944544292660.a n = A194475 (n + 1)

end A194475

/-! ## A194475.P8368909903539693411

`A240440(n+1)+n-A117662(n)`
-/

namespace A194475.P8368909903539693411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240440 (n + 1) + ((n : ℤ) - A117662 n)

end

end A194475.P8368909903539693411

namespace A194475

/-- `A240440(n+1)+n-A117662(n)` -/
def P8368909903539693411.Spec : Prop :=
  ∀ n, P8368909903539693411.a n = A194475 (n + 1)

end A194475

/-! ## A194475.P17135997030413501018

`(A000578(n)+A000537(n))*∑[(n+1)/6]`
-/

namespace A194475.P17135997030413501018
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 n + A000537 n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194475.P17135997030413501018

namespace A194475

/-- `(A000578(n)+A000537(n))*∑[(n+1)/6]` -/
def P17135997030413501018.Spec : Prop :=
  ∀ n, P17135997030413501018.a n = (A194475 (n + 1) : ℚ)

end A194475

/-! ## A194475.P9356673188247560511

`(A000578(n)+A000217(n)²)/6*∑[n+1]`
-/

namespace A194475.P9356673188247560511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 n + A000217 n ^ 2 : ℚ) / 6 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A194475.P9356673188247560511

namespace A194475

/-- `(A000578(n)+A000217(n)²)/6*∑[n+1]` -/
def P9356673188247560511.Spec : Prop :=
  ∀ n, P9356673188247560511.a n = (A194475 (n + 1) : ℚ)

end A194475

/-! ## A194475.P12490335071429803890

`A240440(n+1)+A000217(n)-A002415(n)`
-/

namespace A194475.P12490335071429803890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240440 (n + 1) + (A000217 n - A002415 n)

end

end A194475.P12490335071429803890

namespace A194475

/-- `A240440(n+1)+A000217(n)-A002415(n)` -/
def P12490335071429803890.Spec : Prop :=
  ∀ n, P12490335071429803890.a n = A194475 (n + 1)

end A194475

/-! ## A194475.P7395531936083647716

`A093566(n+3)-C(∑[n], 2)`
-/

namespace A194475.P7395531936083647716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093566 (n + 3) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A194475.P7395531936083647716

namespace A194475

/-- `A093566(n+3)-C(∑[n], 2)` -/
def P7395531936083647716.Spec : Prop :=
  ∀ n, P7395531936083647716.a n = A194475 (n + 1)

end A194475

/-! ## A194475.P544045671599142287

`A093566(n+3)-A050534(n+1)`
-/

namespace A194475.P544045671599142287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093566 (n + 3) - A050534 (n + 1)

end

end A194475.P544045671599142287

namespace A194475

/-- `A093566(n+3)-A050534(n+1)` -/
def P544045671599142287.Spec : Prop :=
  ∀ n, P544045671599142287.a n = A194475 (n + 1)

end A194475

/-! ## A194475.P4529178143436314664

`A240440(n+1)-A117652(2*n)`
-/

namespace A194475.P4529178143436314664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240440 (n + 1) - A117652 (2 * n)

end

end A194475.P4529178143436314664

namespace A194475

/-- `A240440(n+1)-A117652(2*n)` -/
def P4529178143436314664.Spec : Prop :=
  ∀ n, P4529178143436314664.a n = A194475 (n + 1)

end A194475

/-! ## A194475.P5341507120209002304

`(n+1)*∑[n+1]-A081498(∑[n+1])`
-/

namespace A194475.P5341507120209002304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - A081498 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A194475.P5341507120209002304

namespace A194475

/-- `(n+1)*∑[n+1]-A081498(∑[n+1])` -/
def P5341507120209002304.Spec : Prop :=
  ∀ n, P5341507120209002304.a n = A194475 (n + 1)

end A194475

/-! ## A194475.P15390563551651843629

`A000292(∑[n+1])-∑[A100175(n+1)]`
-/

namespace A194475.P15390563551651843629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194475.P15390563551651843629

namespace A194475

/-- `A000292(∑[n+1])-∑[A100175(n+1)]` -/
def P15390563551651843629.Spec : Prop :=
  ∀ n, P15390563551651843629.a n = A194475 (n + 1)

end A194475

/-! ## A194475.P5263321832678309168

`A000292(∑[n+1])-∑[(n+1)*A005448(n+1)]`
-/

namespace A194475.P5263321832678309168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194475.P5263321832678309168

namespace A194475

/-- `A000292(∑[n+1])-∑[(n+1)*A005448(n+1)]` -/
def P5263321832678309168.Spec : Prop :=
  ∀ n, P5263321832678309168.a n = A194475 (n + 1)

end A194475

/-! ## A194475.P13261900327775900767

`A000292(A000096(n))-A006011(n+1)`
-/

namespace A194475.P13261900327775900767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A000096 n).toNat - A006011 (n + 1)

end

end A194475.P13261900327775900767

namespace A194475

/-- `A000292(A000096(n))-A006011(n+1)` -/
def P13261900327775900767.Spec : Prop :=
  ∀ n, P13261900327775900767.a n = A194475 (n + 1)

end A194475

/-!
# A194476: Number of ways to arrange 4 indistinguishable points on an n X n X n triangular grid so that no three points are in the same row or diagonal.

The programs for A194476, there is no canonical definition to state claims against.
-/

/-! ## A194476.P18213345367064435869

`A194480(∑[n+4]+3)`
-/

namespace A194476.P18213345367064435869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194480 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A194476.P18213345367064435869

/-! ## A194476.P12698977948763245255

`lcm(3, A194480(A141214(n+1)))`
-/

namespace A194476.P12698977948763245255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A194480 (A141214 (n + 1)).toNat)

end

end A194476.P12698977948763245255

/-! ## A194476.P17225214657982103722

`char[A007318(n)]*A194480(A027379(n+2))`
-/

namespace A194476.P17225214657982103722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A194480 (A027379 (n + 2)).toNat

end

end A194476.P17225214657982103722

/-! ## A194476.P8285098404910684755

`char[A007318(n)]*A194480(A055998(n+2))`
-/

namespace A194476.P8285098404910684755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A194480 (A055998 (n + 2)).toNat

end

end A194476.P8285098404910684755

/-! ## A194476.P17989150870315084035

`char[A292975(n)]*A194480(A055998(n+2))`
-/

namespace A194476.P17989150870315084035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A194480 (A055998 (n + 2)).toNat

end

end A194476.P17989150870315084035

/-!
# A194477: Number of ways to arrange 5 indistinguishable points on an n X n X n triangular grid so that no three points are in the same row or diagonal.

The programs for A194477, there is no canonical definition to state claims against.
-/

/-! ## A194477.P8343115633946927649

`A194480(∑[n+1]+4*n+10)`
-/

namespace A194477.P8343115633946927649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194480 (∑ j ∈ Finset.range (n + 1), f1 j + (4 * n + 10))

end

end A194477.P8343115633946927649

/-! ## A194477.P4621382010486903456

`A194480(A046691(n+3))+char[21]`
-/

namespace A194477.P4621382010486903456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194480 (A046691 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A194477.P4621382010486903456

/-! ## A194477.P2810308522227603783

`A194480(Δ[A023545(n+1)])+char[19]`
-/

namespace A194477.P2810308522227603783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194480 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A194477.P2810308522227603783

/-! ## A194477.P2943582855978269851

`A007318(∑[n])*A194480(A046691(n+3))`
-/

namespace A194477.P2943582855978269851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A194480 (A046691 (n + 3)).toNat

end

end A194477.P2943582855978269851

/-! ## A194477.P4931012898587689543

`A000041(C(n, 64))*A194480(A046691(n+3))`
-/

namespace A194477.P4931012898587689543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64) * A194480 (A046691 (n + 3)).toNat

end

end A194477.P4931012898587689543

/-!
# A194478: Number of ways to arrange 6 indistinguishable points on an n X n X n triangular grid so that no three points are in the same row or diagonal.

The programs for A194478, there is no canonical definition to state claims against.
-/

/-! ## A194478.P7344538054021687596

`A194480(A052905(n+3))`
-/

namespace A194478.P7344538054021687596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194480 (A052905 (n + 3)).toNat

end

end A194478.P7344538054021687596

/-! ## A194478.P1176290716959826990

`A194480(A056119(n)+16)`
-/

namespace A194478.P1176290716959826990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194480 (A056119 n + 16).toNat

end

end A194478.P1176290716959826990

/-! ## A194478.P11194417872861612574

`A194480(eq[3, A219347(n)])`
-/

namespace A194478.P11194417872861612574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194478.P11194417872861612574

/-! ## A194478.P8452194679722592757

`A194480(eq[5, A193592(n)])`
-/

namespace A194478.P8452194679722592757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194478.P8452194679722592757

/-! ## A194478.P15792210041794545500

`A194480(A055999(n+3)+1)`
-/

namespace A194478.P15792210041794545500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194480 (A055999 (n + 3) + 1).toNat

end

end A194478.P15792210041794545500

/-!
# A194479: Number of ways to arrange 7 indistinguishable points on an n X n X n triangular grid so that no three points are in the same row or diagonal.

The programs for A194479, there is no canonical definition to state claims against.
-/

/-! ## A194479.P9267903800821047798

`A194480(A055999(n+4))`
-/

namespace A194479.P9267903800821047798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194480 (A055999 (n + 4)).toNat

end

end A194479.P9267903800821047798

/-! ## A194479.P1431360806086463625

`A194480(eq[4, A219347(n)])`
-/

namespace A194479.P1431360806086463625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194479.P1431360806086463625

/-! ## A194479.P8909361993561984552

`A194480(eq[6, A193592(n)])`
-/

namespace A194479.P8909361993561984552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194479.P8909361993561984552

/-! ## A194479.P3110743125323807653

`A194480(eq[7, A152157(n)])`
-/

namespace A194479.P3110743125323807653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194480 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194479.P3110743125323807653

/-! ## A194479.P12897033351813302892

`A194480(Δ[A023551(n+2)])`
-/

namespace A194479.P12897033351813302892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194480 (f1 (n + 1) - f1 n).toNat

end

end A194479.P12897033351813302892

/-!
# A194481: Number of ways to arrange 4 indistinguishable points on an n X n X n triangular grid so that no four points are in the same row or diagonal.

The programs for A194481, the canonical program `A194481.P9351670830363814715` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194481 has offset 1).

The definition of A194481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194481.P9351670830363814715

`A000332(∑[n+1])-∑[A050534(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A194481

/-- `A000332(∑[n+1])-∑[A050534(n)]` -/
def P9351670830363814715.Spec : Prop :=
  ∀ n, P9351670830363814715.a n = A194481 (n + 1)

theorem P9351670830363814715.correct : P9351670830363814715.Spec := by
  intro n
  simp only [A194481, Nat.add_sub_cancel]

end A194481

/-! ## A194481.P3317409537892671968

`A000332(∑[n+1])-∑[3*A000332(n+1)]`
-/

namespace A194481.P3317409537892671968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (∑ j ∈ Finset.range (n + 1), f1 j) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A194481.P3317409537892671968

namespace A194481

/-- `A000332(∑[n+1])-∑[3*A000332(n+1)]` -/
def P3317409537892671968.Spec : Prop :=
  ∀ n, P3317409537892671968.a n = A194481 (n + 1)

end A194481

/-! ## A194481.P5368834692803013784

`A050534(A000096(n))/3-∑[A050534(n)]`
-/

namespace A194481.P5368834692803013784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050534 (A000096 n).toNat : ℚ) / 3 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A194481.P5368834692803013784

namespace A194481

/-- `A050534(A000096(n))/3-∑[A050534(n)]` -/
def P5368834692803013784.Spec : Prop :=
  ∀ n, P5368834692803013784.a n = (A194481 (n + 1) : ℚ)

end A194481

/-! ## A194481.P16382209258850682609

`A194485(∑[n+4]+3)`
-/

namespace A194481.P16382209258850682609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194485 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A194481.P16382209258850682609

namespace A194481

/-- `A194485(∑[n+4]+3)` -/
def P16382209258850682609.Spec : Prop :=
  ∀ n, P16382209258850682609.a n = A194481 (n + 1)

end A194481

/-! ## A194481.P5408513693660088419

`lcm(3, A194485(A027379(n+2)))`
-/

namespace A194481.P5408513693660088419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A194485 (A027379 (n + 2)).toNat)

end

end A194481.P5408513693660088419

namespace A194481

/-- `lcm(3, A194485(A027379(n+2)))` -/
def P5408513693660088419.Spec : Prop :=
  ∀ n, (P5408513693660088419.a n : ℤ) = A194481 (n + 1)

end A194481

/-!
# A194482: Number of ways to arrange 5 indistinguishable points on an n X n X n triangular grid so that no four points are in the same row or diagonal.

The programs for A194482, there is no canonical definition to state claims against.
-/

/-! ## A194482.P162181096130277005

`A194485(∑[n+5]+6)`
-/

namespace A194482.P162181096130277005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194485 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A194482.P162181096130277005

/-! ## A194482.P9703381566997403398

`lcm(3, A194485(Δ[A023545(n+1)]))`
-/

namespace A194482.P9703381566997403398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A194485 (f1 (n + 1) - f1 n).toNat)

end

end A194482.P9703381566997403398

/-! ## A194482.P15007861023048431277

`A194485(A000217(n+5)-4)+char[23]`
-/

namespace A194482.P15007861023048431277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194485 (A000217 (n + 5) - 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A194482.P15007861023048431277

/-! ## A194482.P15998404680389335914

`A007318(C(2, n))*A194485(A000217(n+5)-4)`
-/

namespace A194482.P15998404680389335914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A194485 (A000217 (n + 5) - 4).toNat

end

end A194482.P15998404680389335914

/-! ## A194482.P16055503295938992669

`A000040(n+1)%2*A194485(Δ[A023545(n+1)])`
-/

namespace A194482.P16055503295938992669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A194485 (f1 (n + 1) - f1 n).toNat

end

end A194482.P16055503295938992669

/-!
# A194483: Number of ways to arrange 6 indistinguishable points on an n X n X n triangular grid so that no four points are in the same row or diagonal.

The programs for A194483, there is no canonical definition to state claims against.
-/

/-! ## A194483.P16027237615862284883

`A194485(A052905(n+3))`
-/

namespace A194483.P16027237615862284883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194485 (A052905 (n + 3)).toNat

end

end A194483.P16027237615862284883

/-! ## A194483.P5384974153236080317

`A194485(eq[3, A219347(n)])`
-/

namespace A194483.P5384974153236080317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194483.P5384974153236080317

/-! ## A194483.P6191248447243267722

`A194485(eq[5, A152157(n)])`
-/

namespace A194483.P6191248447243267722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194483.P6191248447243267722

/-! ## A194483.P14663583463601218920

`A194485(eq[5, A193592(n)])`
-/

namespace A194483.P14663583463601218920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194483.P14663583463601218920

/-! ## A194483.P15491655845530727204

`A194485(A046691(n+4)-1)`
-/

namespace A194483.P15491655845530727204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194485 (A046691 (n + 4) - 1).toNat

end

end A194483.P15491655845530727204

/-!
# A194484: Number of ways to arrange 7 indistinguishable points on an n X n X n triangular grid so that no four points are in the same row or diagonal.

The programs for A194484, there is no canonical definition to state claims against.
-/

/-! ## A194484.P2709612567745424629

`A194485(A055999(n+4))`
-/

namespace A194484.P2709612567745424629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194485 (A055999 (n + 4)).toNat

end

end A194484.P2709612567745424629

/-! ## A194484.P15282974315246135302

`A194485(eq[4, A219347(n)])`
-/

namespace A194484.P15282974315246135302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194484.P15282974315246135302

/-! ## A194484.P9849281407941683192

`A194485(eq[6, A193592(n)])`
-/

namespace A194484.P9849281407941683192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194484.P9849281407941683192

/-! ## A194484.P4065003395104125524

`A194485(eq[7, A152157(n)])`
-/

namespace A194484.P4065003395104125524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194484.P4065003395104125524

/-! ## A194484.P16204984700214407887

`A194485(A052905(n+4)-1)`
-/

namespace A194484.P16204984700214407887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194485 (A052905 (n + 4) - 1).toNat

end

end A194484.P16204984700214407887

/-!
# A194485: T(n,k) = number of ways to arrange k indistinguishable points on an n X n X n triangular grid so that no four points are in the same row or diagonal.

The programs for A194485, there is no canonical definition to state claims against.
-/

/-! ## A194485.P11843070796833675786

`A194136(n+1)+A151755(A102365(n))`
-/

namespace A194485.P11843070796833675786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194136 (n + 1) + A151755 (A102365 n).toNat

end

end A194485.P11843070796833675786

/-! ## A194485.P10830246772794029067

`A194480(n+1)+A151755(A102365(n))`
-/

namespace A194485.P10830246772794029067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194480 (n + 1) + A151755 (A102365 n).toNat

end

end A194485.P10830246772794029067

/-! ## A194485.P15179268538055115845

`A279948(A326474(n))+A194136(n+1)`
-/

namespace A194485.P15179268538055115845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279948 (A326474 n).toNat + A194136 (n + 1)

end

end A194485.P15179268538055115845

/-! ## A194485.P14614682050921471249

`A194136(n+1)+A137579(A124422(n))`
-/

namespace A194485.P14614682050921471249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194136 (n + 1) + A137579 (A124422 n).toNat

end

end A194485.P14614682050921471249

/-!
# A194486: Number of ways to arrange 2 nonattacking knights on the lower triangle of an n X n board.

The programs for A194486, the canonical program `A194486.P15304985710096564444` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194486 has offset 1).

The definition of A194486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194486.P15304985710096564444

`A211911(n+1)+record[A266222(n)]+n`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A194486

/-- `A211911(n+1)+record[A266222(n)]+n` -/
def P15304985710096564444.Spec : Prop :=
  ∀ n, P15304985710096564444.a n = A194486 (n + 1)

theorem P15304985710096564444.correct : P15304985710096564444.Spec := by
  intro n
  simp only [A194486, Nat.add_sub_cancel]

end A194486

/-! ## A194486.P6035006401044912149

`∑[A027480(n)]-A007590(A004275(n))`
-/

namespace A194486.P6035006401044912149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007590 (A004275 n).toNat

end

end A194486.P6035006401044912149

namespace A194486

/-- `∑[A027480(n)]-A007590(A004275(n))` -/
def P6035006401044912149.Spec : Prop :=
  ∀ n, P6035006401044912149.a n = A194486 (n + 1)

end A194486

/-! ## A194486.P5773123008120852503

`A211911(n+1)+A004273(A004273(n))+n`
-/

namespace A194486.P5773123008120852503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211911 (n + 1) + (A004273 (A004273 n).toNat + (n : ℤ))

end

end A194486.P5773123008120852503

namespace A194486

/-- `A211911(n+1)+A004273(A004273(n))+n` -/
def P5773123008120852503.Spec : Prop :=
  ∀ n, P5773123008120852503.a n = A194486 (n + 1)

end A194486

/-! ## A194486.P14721983873750088326

`A000217(A000096(n))-A007590(A004275(n))`
-/

namespace A194486.P14721983873750088326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000096 n).toNat - A007590 (A004275 n).toNat

end

end A194486.P14721983873750088326

namespace A194486

/-- `A000217(A000096(n))-A007590(A004275(n))` -/
def P14721983873750088326.Spec : Prop :=
  ∀ n, P14721983873750088326.a n = A194486 (n + 1)

end A194486

/-! ## A194486.P14787523759964064638

`∑[A027480(n)]-A341706(A161680(n))`
-/

namespace A194486.P14787523759964064638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A341706 (A161680 n).toNat

end

end A194486.P14787523759964064638

namespace A194486

/-- `∑[A027480(n)]-A341706(A161680(n))` -/
def P14787523759964064638.Spec : Prop :=
  ∀ n, P14787523759964064638.a n = A194486 (n + 1)

end A194486

/-! ## A194486.P11051080540338826340

`A000217(∑[n]+n)-A341706(A161680(n))`
-/

namespace A194486.P11051080540338826340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j + n) - A341706 (A161680 n).toNat

end

end A194486.P11051080540338826340

namespace A194486

/-- `A000217(∑[n]+n)-A341706(A161680(n))` -/
def P11051080540338826340.Spec : Prop :=
  ∀ n, P11051080540338826340.a n = A194486 (n + 1)

end A194486

/-! ## A194486.P6182152758695055715

`abs(A046691(A000096(n)))-A056106(n)`
-/

namespace A194486.P6182152758695055715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A046691 (A000096 n).toNat| - A056106 n

end

end A194486.P6182152758695055715

namespace A194486

/-- `abs(A046691(A000096(n)))-A056106(n)` -/
def P6182152758695055715.Spec : Prop :=
  ∀ n, P6182152758695055715.a n = A194486 (n + 1)

end A194486

/-! ## A194486.P552578449443653241

`A161680(∑[n+1])-A341706(A161680(n))`
-/

namespace A194486.P552578449443653241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (∑ j ∈ Finset.range (n + 1), f1 j) - A341706 (A161680 n).toNat

end

end A194486.P552578449443653241

namespace A194486

/-- `A161680(∑[n+1])-A341706(A161680(n))` -/
def P552578449443653241.Spec : Prop :=
  ∀ n, P552578449443653241.a n = A194486 (n + 1)

end A194486

/-!
# A194487: Number of ways to arrange 3 nonattacking knights on the lower triangle of an n X n board.

The programs for A194487, there is no canonical definition to state claims against.
-/

/-! ## A194487.P5998064938850388966

`A194492(∑[n+3]+1)`
-/

namespace A194487.P5998064938850388966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194492 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A194487.P5998064938850388966

/-! ## A194487.P14438965833367865460

`A194442(A051925(n))+A000326(n)`
-/

namespace A194487.P14438965833367865460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194442 (A051925 n).toNat + A000326 n

end

end A194487.P14438965833367865460

/-!
# A194488: Number of ways to arrange 4 nonattacking knights on the lower triangle of an n X n board.

The programs for A194488, there is no canonical definition to state claims against.
-/

/-! ## A194488.P15679954888497386653

`A194492(A141214(n+1))`
-/

namespace A194488.P15679954888497386653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194492 (A141214 (n + 1)).toNat

end

end A194488.P15679954888497386653

/-! ## A194488.P5766866899307530540

`A194492(A027379(n+2))`
-/

namespace A194488.P5766866899307530540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194492 (A027379 (n + 2)).toNat

end

end A194488.P5766866899307530540

/-! ## A194488.P14500535328286604359

`A194492(A055998(n+2))`
-/

namespace A194488.P14500535328286604359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194492 (A055998 (n + 2)).toNat

end

end A194488.P14500535328286604359

/-! ## A194488.P8858627777579937701

`A194492(A052905(n+1)+2)`
-/

namespace A194488.P8858627777579937701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194492 (A052905 (n + 1) + 2).toNat

end

end A194488.P8858627777579937701

/-! ## A194488.P1251723757669578403

`A194492(A051936(n+4)+6)`
-/

namespace A194488.P1251723757669578403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194492 (A051936 (n + 4) + 6).toNat

end

end A194488.P1251723757669578403

/-!
# A194489: Number of ways to arrange 5 nonattacking knights on the lower triangle of an n X n board.

The programs for A194489, there is no canonical definition to state claims against.
-/

/-! ## A194489.P5760192769830797376

`A194492(A046691(n+3))`
-/

namespace A194489.P5760192769830797376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194492 (A046691 (n + 3)).toNat

end

end A194489.P5760192769830797376

/-! ## A194489.P11124275486057588172

`A194492(Δ[A023545(n+1)])`
-/

namespace A194489.P11124275486057588172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194492 (f1 (n + 1) - f1 n).toNat

end

end A194489.P11124275486057588172

/-! ## A194489.P12784663937581971424

`A194492(A161680(n)+6*n+11)`
-/

namespace A194489.P12784663937581971424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194492 (A161680 n + (6 * n + 11 : ℤ)).toNat

end

end A194489.P12784663937581971424

/-! ## A194489.P16140161481220825896

`A194492(Δ[A023551(n+1)-A052905(n)])`
-/

namespace A194489.P16140161481220825896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1) - A052905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194492 (f1 (n + 1) - f1 n).toNat

end

end A194489.P16140161481220825896

/-! ## A194489.P13714763653105001132

`A194492(A023545(n+2)-A023545(n+1))`
-/

namespace A194489.P13714763653105001132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194492 (A023545 (n + 2) - A023545 (n + 1)).toNat

end

end A194489.P13714763653105001132

/-!
# A194490: Number of ways to arrange 6 nonattacking knights on the lower triangle of an n X n board.

The programs for A194490, there is no canonical definition to state claims against.
-/

/-! ## A194490.P373640569225133107

`A194492(A052905(n+3))`
-/

namespace A194490.P373640569225133107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194492 (A052905 (n + 3)).toNat

end

end A194490.P373640569225133107

/-! ## A194490.P12537342676897432253

`A194492(A000096(n+5)-4)`
-/

namespace A194490.P12537342676897432253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194492 (A000096 (n + 5) - 4).toNat

end

end A194490.P12537342676897432253

/-! ## A194490.P2517431350303994789

`A194492(A000124(n+6)-6)`
-/

namespace A194490.P2517431350303994789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194492 (A000124 (n + 6) - 6).toNat

end

end A194490.P2517431350303994789

/-! ## A194490.P3405542560623060835

`A194492(Δ[A023551(n+1)]+1)`
-/

namespace A194490.P3405542560623060835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194492 (f1 (n + 1) - f1 n + 1).toNat

end

end A194490.P3405542560623060835

/-! ## A194490.P11910957941372812013

`A194492(Δ[A023545(n+2)]-1)`
-/

namespace A194490.P11910957941372812013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194492 (f1 (n + 1) - f1 n - 1).toNat

end

end A194490.P11910957941372812013

/-!
# A194491: Number of ways to arrange 7 nonattacking knights on the lower triangle of an n X n board.

The programs for A194491, there is no canonical definition to state claims against.
-/

/-! ## A194491.P18185716002805243298

`A194492(A055999(n+4))`
-/

namespace A194491.P18185716002805243298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194492 (A055999 (n + 4)).toNat

end

end A194491.P18185716002805243298

/-! ## A194491.P11447570908215748341

`A194492(Δ[A023551(n+2)])`
-/

namespace A194491.P11447570908215748341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194492 (f1 (n + 1) - f1 n).toNat

end

end A194491.P11447570908215748341

/-! ## A194491.P366002859482216586

`A194492(A052905(n+4)-1)`
-/

namespace A194491.P366002859482216586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194492 (A052905 (n + 4) - 1).toNat

end

end A194491.P366002859482216586

/-! ## A194491.P17700452707239122006

`A194492(A000124(n+7)-7)`
-/

namespace A194491.P17700452707239122006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194492 (A000124 (n + 7) - 7).toNat

end

end A194491.P17700452707239122006

/-! ## A194491.P11166872462277827091

`A194492(A005408(n)+A000217(n+5)+6)`
-/

namespace A194491.P11166872462277827091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194492 (A005408 n + (A000217 (n + 5) + 6)).toNat

end

end A194491.P11166872462277827091

/-!
# A194492: T(n,k)=Number of ways to arrange k nonattacking knights on the lower triangle of an n X n board.

The programs for A194492, there is no canonical definition to state claims against.
-/

/-! ## A194492.P16641650275873659700

`A194480(n+1)+A112053(A246829(n+1))`
-/

namespace A194492.P16641650275873659700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194480 (n + 1) + A112053 (A246829 (n + 1)).toNat

end

end A194492.P16641650275873659700

/-! ## A194492.P6033064727663547867

`A194480(n+1)-A055029(A038140(n+1))`
-/

namespace A194492.P6033064727663547867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194480 (n + 1) - A055029 (A038140 (n + 1)).toNat

end

end A194492.P6033064727663547867

/-! ## A194492.P11872107932642478366

`A194136(n+1)-A010893(A114687(n+1))`
-/

namespace A194492.P11872107932642478366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194136 (n + 1) - A010893 ((A114687 (n + 1)).toNat + 13)

end

end A194492.P11872107932642478366

/-! ## A194492.P16999455876021486814

`and(A000040(A291343(3*n+1)), A194136(n+1))`
-/

namespace A194492.P16999455876021486814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (A291343 (3 * n + 1)).toNat) (A194136 (n + 1))

end

end A194492.P16999455876021486814

/-!
# A194493: Number of ways to arrange 3 nonattacking queens on the lower triangle of an n X n board.

The programs for A194493, there is no canonical definition to state claims against.
-/

/-! ## A194493.P19537192039985995

`A194498(∑[n+3]+1)`
-/

namespace A194493.P19537192039985995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194498 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A194493.P19537192039985995

/-! ## A194493.P12824521168403915551

`lcm(2, A194498(A034856(n+2)))`
-/

namespace A194493.P12824521168403915551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A194498 (A034856 (n + 2)).toNat)

end

end A194493.P12824521168403915551

/-! ## A194493.P8057929535387871393

`char[A061579(n)]*A194498(A034856(n+2))`
-/

namespace A194493.P8057929535387871393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A194498 (A034856 (n + 2)).toNat

end

end A194493.P8057929535387871393

/-! ## A194493.P12621115476801069479

`A194498(A034856(n+2))%A000108(n+1)`
-/

namespace A194493.P12621115476801069479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194498 (A034856 (n + 2)).toNat) (A000108 (n + 1))

end

end A194493.P12621115476801069479

/-! ## A194493.P13312270891216271963

`A000041(C(2, n))*A194498(A034856(n+2))`
-/

namespace A194493.P13312270891216271963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * A194498 (A034856 (n + 2)).toNat

end

end A194493.P13312270891216271963

/-!
# A194494: Number of ways to arrange 4 nonattacking queens on the lower triangle of an n X n board.

The programs for A194494, there is no canonical definition to state claims against.
-/

/-! ## A194494.P253364295508253953

`A194498(∑[n+4]+3)`
-/

namespace A194494.P253364295508253953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194498 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A194494.P253364295508253953

/-! ## A194494.P13865736578945848144

`lcm(2, A194498(A141214(n+1)))`
-/

namespace A194494.P13865736578945848144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A194498 (A141214 (n + 1)).toNat)

end

end A194494.P13865736578945848144

/-! ## A194494.P16420272841279953139

`A194498(A141214(n+1))%A154674(n+1)`
-/

namespace A194494.P16420272841279953139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194498 (A141214 (n + 1)).toNat) (A154674 (n + 1))

end

end A194494.P16420272841279953139

/-! ## A194494.P17787033542426817068

`A194498(A027379(n+2))%A000108(n+1)`
-/

namespace A194494.P17787033542426817068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194498 (A027379 (n + 2)).toNat) (A000108 (n + 1))

end

end A194494.P17787033542426817068

/-! ## A194494.P14092008281068299563

`A000108(C(2, n))*A194498(A027379(n+2))`
-/

namespace A194494.P14092008281068299563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 n) * A194498 (A027379 (n + 2)).toNat

end

end A194494.P14092008281068299563

/-!
# A194495: Number of ways to arrange 5 nonattacking queens on the lower triangle of an n X n board.

The programs for A194495, there is no canonical definition to state claims against.
-/

/-! ## A194495.P11178829698654016888

`A194498(∑[n+5]+6)`
-/

namespace A194495.P11178829698654016888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194498 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A194495.P11178829698654016888

/-! ## A194495.P5192319107045379026

`lcm(2, A194498(A046691(n+3)))`
-/

namespace A194495.P5192319107045379026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A194498 (A046691 (n + 3)).toNat)

end

end A194495.P5192319107045379026

/-! ## A194495.P5887166395296065819

`A194498(A046691(n+3))%A000984(n)`
-/

namespace A194495.P5887166395296065819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194498 (A046691 (n + 3)).toNat) (A000984 n)

end

end A194495.P5887166395296065819

/-! ## A194495.P2595368583430110322

`A000041(C(2, n))*A194498(A046691(n+3))`
-/

namespace A194495.P2595368583430110322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * A194498 (A046691 (n + 3)).toNat

end

end A194495.P2595368583430110322

/-! ## A194495.P7707461738680853291

`A000108(C(2, n))*A194498(A046691(n+3))`
-/

namespace A194495.P7707461738680853291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 n) * A194498 (A046691 (n + 3)).toNat

end

end A194495.P7707461738680853291

/-!
# A194496: Number of ways to arrange 6 nonattacking queens on the lower triangle of an n X n board.

The programs for A194496, there is no canonical definition to state claims against.
-/

/-! ## A194496.P18420826489140301984

`A194498(A052905(n+3))`
-/

namespace A194496.P18420826489140301984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194498 (A052905 (n + 3)).toNat

end

end A194496.P18420826489140301984

/-! ## A194496.P2873658687732454112

`A194498(A056119(n)+16)`
-/

namespace A194496.P2873658687732454112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194498 (A056119 n + 16).toNat

end

end A194496.P2873658687732454112

/-! ## A194496.P3510449810154505282

`A194498(eq[5, A193592(n)])`
-/

namespace A194496.P3510449810154505282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194498 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194496.P3510449810154505282

/-! ## A194496.P1429889058359010544

`A194498(A055999(n+3)+1)`
-/

namespace A194496.P1429889058359010544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194498 (A055999 (n + 3) + 1).toNat

end

end A194496.P1429889058359010544

/-! ## A194496.P8701549988263047178

`A194498(A027379(n+4)-2)`
-/

namespace A194496.P8701549988263047178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194498 (A027379 (n + 4) - 2).toNat

end

end A194496.P8701549988263047178

/-!
# A194497: Number of ways to arrange 7 nonattacking queens on the lower triangle of an n X n board.

The programs for A194497, there is no canonical definition to state claims against.
-/

/-! ## A194497.P17232540367534519656

`A194498(A055999(n+4))`
-/

namespace A194497.P17232540367534519656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194498 (A055999 (n + 4)).toNat

end

end A194497.P17232540367534519656

/-! ## A194497.P13901449003250433811

`A194498(eq[6, A193592(n)])`
-/

namespace A194497.P13901449003250433811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194498 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194497.P13901449003250433811

/-! ## A194497.P12882763591317800395

`A194498(Δ[A023551(n+2)])`
-/

namespace A194497.P12882763591317800395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194498 (f1 (n + 1) - f1 n).toNat

end

end A194497.P12882763591317800395

/-! ## A194497.P7315490258648463661

`A194498(A046691(n+5)-2)`
-/

namespace A194497.P7315490258648463661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194498 (A046691 (n + 5) - 2).toNat

end

end A194497.P7315490258648463661

/-! ## A194497.P835045467523338919

`A194498(A055998(n+5)-3)`
-/

namespace A194497.P835045467523338919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194498 (A055998 (n + 5) - 3).toNat

end

end A194497.P835045467523338919

/-!
# A194498: T(n,k)=Number of ways to arrange k nonattacking queens on the lower triangle of an n X n board.

The programs for A194498, there is no canonical definition to state claims against.
-/

/-! ## A194498.P11499429742096132846

`and(A032600(A038303(n)), A193986(n+1))`
-/

namespace A194498.P11499429742096132846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032600 (A038303 n).toNat) (A193986 (n + 1))

end

end A194498.P11499429742096132846

/-! ## A194498.P3800258175440818683

`A333219(n+1)%A272987(A350450(n))`
-/

namespace A194498.P3800258175440818683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333219 (n + 1)) (A272987 (A350450 n).toNat)

end

end A194498.P3800258175440818683

/-!
# A194499: Number of lower triangles of an n X n 0..2 array with each element unequal to the sum mod 3 of its horizontal and vertical neighbors.

The programs for A194499, there is no canonical definition to state claims against.
-/

/-! ## A194499.P1513292298989204689

`A194505(∑[n+2])`
-/

namespace A194499.P1513292298989204689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194505 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194499.P1513292298989204689

/-! ## A194499.P2563135303081288013

`record[A194505(lt[A194505(n+1), n])]`
-/

namespace A194499.P2563135303081288013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194505 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194505 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194499.P2563135303081288013

/-! ## A194499.P12567214056339592774

`A136522(n)*A194505(A117142(2*(n+1)))`
-/

namespace A194499.P12567214056339592774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n * A194505 (A117142 (2 * (n + 1))).toNat

end

end A194499.P12567214056339592774

/-! ## A194499.P8901070386999183764

`A194505(A117142(2*n+2))+A011655(3*n)`
-/

namespace A194499.P8901070386999183764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194505 (A117142 (2 * n + 2)).toNat + A011655 (3 * n)

end

end A194499.P8901070386999183764

