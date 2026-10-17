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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A080600: a(n) = ceiling(n*(3 + sqrt(13))/2).

The programs for A080600, the canonical program `A080600.P15687714330717241325` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080600 has offset 0).

The definition of A080600 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*(3+sqrt(13))/2)` (program `A080600.P15687714330717241325`, by `A080600.P15687714330717241325.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080600.P15687714330717241325

`ceil(n*(3+sqrt(13))/2)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080600

/-- `ceil(n*(3+sqrt(13))/2)` -/
def P15687714330717241325.Spec : Prop :=
  ∀ n, P15687714330717241325.a n = A080600 n

theorem P15687714330717241325.correct : P15687714330717241325.Spec := by
  intro n
  simp only [A080600]

end A080600

/-! ## A080600.P1642908556715813478

`A284675(n+1)-(n+1)`
-/

namespace A080600.P1642908556715813478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284675 (n + 1) - (n + 1 : ℤ)

end

end A080600.P1642908556715813478

namespace A080600

/-- `A284675(n+1)-(n+1)` -/
def P1642908556715813478.Spec : Prop :=
  ∀ n, P1642908556715813478.a n = A080600 n

end A080600

/-! ## A080600.P5018822643115747738

`A284679(n+1)+2*n-1`
-/

namespace A080600.P5018822643115747738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284679 (n + 1) + ((2 * n : ℤ) - 1)

end

end A080600.P5018822643115747738

namespace A080600

/-- `A284679(n+1)+2*n-1` -/
def P5018822643115747738.Spec : Prop :=
  ∀ n, P5018822643115747738.a n = A080600 n

end A080600

/-! ## A080600.P10356852536007945313

`A284678(n+1)-(A028310(n)+1)`
-/

namespace A080600.P10356852536007945313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 1) - (A028310 n + 1)

end

end A080600.P10356852536007945313

namespace A080600

/-- `A284678(n+1)-(A028310(n)+1)` -/
def P10356852536007945313.Spec : Prop :=
  ∀ n, P10356852536007945313.a n = A080600 n

end A080600

/-! ## A080600.P17062423594297133805

`A284678(n+1)-(A054977(n)+n)`
-/

namespace A080600.P17062423594297133805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 1) - (A054977 n + (n : ℤ))

end

end A080600.P17062423594297133805

namespace A080600

/-- `A284678(n+1)-(A054977(n)+n)` -/
def P17062423594297133805.Spec : Prop :=
  ∀ n, P17062423594297133805.a n = A080600 n

end A080600

/-! ## A080600.P11712993487322255133

`A284678(n+1)-(A004277(n)-2*n)-(n+1)`
-/

namespace A080600.P11712993487322255133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 1) - (A004277 n - (2 * n : ℤ)) - (n + 1 : ℤ)

end

end A080600.P11712993487322255133

namespace A080600

/-- `A284678(n+1)-(A004277(n)-2*n)-(n+1)` -/
def P11712993487322255133.Spec : Prop :=
  ∀ n, P11712993487322255133.a n = A080600 n

end A080600

/-! ## A080600.P10635456338324108277

`A284678(n+1)-(A028920(A219433(n+1))+n)`
-/

namespace A080600.P10635456338324108277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284678 (n + 1) - (A028920 (A219433 (n + 1)).toNat + (n : ℤ))

end

end A080600.P10635456338324108277

namespace A080600

/-- `A284678(n+1)-(A028920(A219433(n+1))+n)` -/
def P10635456338324108277.Spec : Prop :=
  ∀ n, P10635456338324108277.a n = A080600 n

end A080600

/-! ## A080600.P16104475190692731342

`A284678(n+1)^A001222(A284695(n+1))-(n+1)`
-/

namespace A080600.P16104475190692731342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284678 (n + 1) : ℚ) ^ (A001222 (A284695 (n + 1)).toNat : ℤ) - (n + 1 : ℚ)

end

end A080600.P16104475190692731342

namespace A080600

/-- `A284678(n+1)^A001222(A284695(n+1))-(n+1)` -/
def P16104475190692731342.Spec : Prop :=
  ∀ n, P16104475190692731342.a n = (A080600 n : ℚ)

end A080600

/-! ## A080600.P16679109171524128879

`A181440(A284676(n+1))-A165747(n)`
-/

namespace A080600.P16679109171524128879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A284676 (n + 1)).toNat - A165747 n

end

end A080600.P16679109171524128879

namespace A080600

/-- `A181440(A284676(n+1))-A165747(n)` -/
def P16679109171524128879.Spec : Prop :=
  ∀ n, P16679109171524128879.a n = A080600 n

end A080600

/-! ## A080600.P15215215198244034124

`C(A284678(n+1), A001221(A284696(2*n+1)))-(n+1)`
-/

namespace A080600.P15215215198244034124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A284678 (n + 1)).toNat (A001221 (A284696 (2 * n + 1)).toNat).toNat : ℤ) - (n + 1 : ℤ)

end

end A080600.P15215215198244034124

namespace A080600

/-- `C(A284678(n+1), A001221(A284696(2*n+1)))-(n+1)` -/
def P15215215198244034124.Spec : Prop :=
  ∀ n, P15215215198244034124.a n = A080600 n

end A080600

/-! ## A080600.P6087192496276669905

`A060747(A284679(n+1)+n)-A284679(n+1)`
-/

namespace A080600.P6087192496276669905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A284679 (n + 1) + (n : ℤ)).toNat - A284679 (n + 1)

end

end A080600.P6087192496276669905

namespace A080600

/-- `A060747(A284679(n+1)+n)-A284679(n+1)` -/
def P6087192496276669905.Spec : Prop :=
  ∀ n, P6087192496276669905.a n = A080600 n

end A080600

/-! ## A080600.P4239202652518676826

`record[(n+2)*A276397(n)]`
-/

namespace A080600.P4239202652518676826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A276397 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080600.P4239202652518676826

namespace A080600

/-- `record[(n+2)*A276397(n)]` -/
def P4239202652518676826.Spec : Prop :=
  ∀ n, P4239202652518676826.a n = A080600 n

end A080600

/-! ## A080600.P1056991739045255739

`A023443(A284675(n+1)-n)`
-/

namespace A080600.P1056991739045255739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A284675 (n + 1) - (n : ℤ)).toNat

end

end A080600.P1056991739045255739

namespace A080600

/-- `A023443(A284675(n+1)-n)` -/
def P1056991739045255739.Spec : Prop :=
  ∀ n, P1056991739045255739.a n = A080600 n

end A080600

/-! ## A080600.P12519059740999994433

`A199969(A284675(n+1)-n)`
-/

namespace A080600.P12519059740999994433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A284675 (n + 1) - (n : ℤ)).toNat

end

end A080600.P12519059740999994433

namespace A080600

/-- `A199969(A284675(n+1)-n)` -/
def P12519059740999994433.Spec : Prop :=
  ∀ n, P12519059740999994433.a n = A080600 n

end A080600

/-! ## A080600.P12126526815691563984

`A181440(A284678(n+1))-A181440(A181440(n+1))`
-/

namespace A080600.P12126526815691563984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A284678 (n + 1)).toNat - A181440 (A181440 (n + 1)).toNat

end

end A080600.P12126526815691563984

namespace A080600

/-- `A181440(A284678(n+1))-A181440(A181440(n+1))` -/
def P12126526815691563984.Spec : Prop :=
  ∀ n, P12126526815691563984.a n = A080600 n

end A080600

/-!
# A080602: Number of positions of the Rubik's cube at a distance of n moves from the solved state, in the quarter-turn metric.

The programs for A080602, there is no canonical definition to state claims against.
-/

/-! ## A080602.P13940048879769631905

`A000027(A333299(n))`
-/

namespace A080602.P13940048879769631905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A333299 n).toNat

end

end A080602.P13940048879769631905

/-! ## A080602.P13710488513743829308

`A333299(n^A365443(n))`
-/

namespace A080602.P13710488513743829308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333299 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A365443 n : ℤ))).toNat

end

end A080602.P13710488513743829308

/-!
# A080603: Primes such that deleting some digit yields a prime.

The programs for A080603, there is no canonical definition to state claims against.
-/

/-! ## A080603.P6783360629361129865

`∩[A000040(n+1)%A005341(n+5), A076979(n+1)]`
-/

namespace A080603.P6783360629361129865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A005341 (n + 5))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076979 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080603.P6783360629361129865

/-! ## A080603.P13384465789208675616

`A343250(∩[A000040(n+1), A076979(n+1)])`
-/

namespace A080603.P13384465789208675616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076979 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343250 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A080603.P13384465789208675616

/-! ## A080603.P16695124314345935409

`∩[A076979(n+1), A137669(n+1)]`
-/

namespace A080603.P16695124314345935409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080603.P16695124314345935409

/-! ## A080603.P16423887172181060773

`∩[A008578(n+1)%A206368(3*n+1), A076979(n+1)]`
-/

namespace A080603.P16423887172181060773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 1)) (A206368 (3 * n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076979 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080603.P16423887172181060773

/-! ## A080603.P11587271940891731417

`∩[A000040(n+5)%A206368(3*n+1), A076979(n+1)]`
-/

namespace A080603.P11587271940891731417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 5)) (A206368 (3 * n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076979 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080603.P11587271940891731417

/-! ## A080603.P1918868863885954671

`∩[A000040(n+1), A076979(n+1)]%A345796(2*n+5)`
-/

namespace A080603.P1918868863885954671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076979 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A345796 (2 * n + 5))

end

end A080603.P1918868863885954671

/-!
# A080604: Triangular array of hypotenuses of right triangles with integer legs: T(n,k) = round(sqrt(n^2 + k^2)), 1 <= k <= n.

The programs for A080604, the canonical program `A080604.P13047328098960414754` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080604 has offset 1).

The definition of A080604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080604.P13047328098960414754

`round(sqrt(A070216(n+1)))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A080604

/-- `round(sqrt(A070216(n+1)))` -/
def P13047328098960414754.Spec : Prop :=
  ∀ n, P13047328098960414754.a n = A080604 (n + 1)

theorem P13047328098960414754.correct : P13047328098960414754.Spec := by
  intro n
  simp only [A080604, Nat.add_sub_cancel]

end A080604

/-! ## A080604.P11470524969136486569

`round(sqrt(A133819(n+1)+A093995(n+1)))`
-/

namespace A080604.P11470524969136486569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) + A093995 (n + 1) : ℝ))

end

end A080604.P11470524969136486569

namespace A080604

/-- `round(sqrt(A133819(n+1)+A093995(n+1)))` -/
def P11470524969136486569.Spec : Prop :=
  ∀ n, P11470524969136486569.a n = A080604 (n + 1)

end A080604

/-! ## A080604.P3925826374792711527

`round(sqrt(A069011(comp[∑[n]])))`
-/

namespace A080604.P3925826374792711527
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A069011 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℝ))

end

end A080604.P3925826374792711527

namespace A080604

/-- `round(sqrt(A069011(comp[∑[n]])))` -/
def P3925826374792711527.Spec : Prop :=
  ∀ n, P3925826374792711527.a n = A080604 (n + 1)

end A080604

/-! ## A080604.P12741480904448674561

`A002024(ceil(A070216(n+1)/2))`
-/

namespace A080604.P12741480904448674561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 ⌈(A070216 (n + 1) : ℚ) / 2⌉.toNat

end

end A080604.P12741480904448674561

namespace A080604

/-- `A002024(ceil(A070216(n+1)/2))` -/
def P12741480904448674561.Spec : Prop :=
  ∀ n, P12741480904448674561.a n = A080604 (n + 1)

end A080604

/-! ## A080604.P1446607395264574355

`A002024(round(A070216(n+1)/2))`
-/

namespace A080604.P1446607395264574355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (SequenceMachineLib.roundAway ((A070216 (n + 1) : ℚ) / 2)).toNat

end

end A080604.P1446607395264574355

namespace A080604

/-- `A002024(round(A070216(n+1)/2))` -/
def P1446607395264574355.Spec : Prop :=
  ∀ n, P1446607395264574355.a n = A080604 (n + 1)

end A080604

/-! ## A080604.P869475958435955891

`A000194(A070216(n+1))`
-/

namespace A080604.P869475958435955891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A070216 (n + 1)).toNat

end

end A080604.P869475958435955891

namespace A080604

/-- `A000194(A070216(n+1))` -/
def P869475958435955891.Spec : Prop :=
  ∀ n, P869475958435955891.a n = A080604 (n + 1)

end A080604

/-! ## A080604.P9909621085236335557

`A000194(A069011(A080036(n)))`
-/

namespace A080604.P9909621085236335557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A069011 (A080036 n).toNat).toNat

end

end A080604.P9909621085236335557

namespace A080604

/-- `A000194(A069011(A080036(n)))` -/
def P9909621085236335557.Spec : Prop :=
  ∀ n, P9909621085236335557.a n = A080604 (n + 1)

end A080604

/-! ## A080604.P10590938703991950711

`A000194(A133819(n+1)+A093995(n+1))`
-/

namespace A080604.P10590938703991950711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A133819 (n + 1) + A093995 (n + 1)).toNat

end

end A080604.P10590938703991950711

namespace A080604

/-- `A000194(A133819(n+1)+A093995(n+1))` -/
def P10590938703991950711.Spec : Prop :=
  ∀ n, P10590938703991950711.a n = A080604 (n + 1)

end A080604

/-! ## A080604.P5864189916728142932

`A000194(A215630(n+1)+A075362(n+1))`
-/

namespace A080604.P5864189916728142932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A215630 (n + 1) + A075362 (n + 1)).toNat

end

end A080604.P5864189916728142932

namespace A080604

/-- `A000194(A215630(n+1)+A075362(n+1))` -/
def P5864189916728142932.Spec : Prop :=
  ∀ n, P5864189916728142932.a n = A080604 (n + 1)

end A080604

/-! ## A080604.P5012856854886612933

`round(sqrt(A338895(3*(n+1))/2))`
-/

namespace A080604.P5012856854886612933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A338895 (3 * (n + 1)) : ℚ) / 2 : ℝ))

end

end A080604.P5012856854886612933

namespace A080604

/-- `round(sqrt(A338895(3*(n+1))/2))` -/
def P5012856854886612933.Spec : Prop :=
  ∀ n, P5012856854886612933.a n = A080604 (n + 1)

end A080604

/-!
# A080605: Golomb's sequence using odd integers.

The programs for A080605, there is no canonical definition to state claims against.
-/

/-! ## A080605.P15116792304595895722

`A111439(2*n+1)%A130445(A005185(n+1))`
-/

namespace A080605.P15116792304595895722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111439 (2 * n + 1)) (A130445 (A005185 (n + 1)).toNat)

end

end A080605.P15116792304595895722

/-! ## A080605.P6876840846333759537

`A111439(2*n+1)%A027619(A116590(n))`
-/

namespace A080605.P6876840846333759537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111439 (2 * n + 1)) (A027619 (A116590 n).toNat)

end

end A080605.P6876840846333759537

/-! ## A080605.P13817045369757843978

`A111439(A005843(n)+1)%(A027619(A116590(n))+1)`
-/

namespace A080605.P13817045369757843978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111439 (A005843 n + 1).toNat) (A027619 (A116590 n).toNat + 1)

end

end A080605.P13817045369757843978

/-! ## A080605.P14523215875126415902

`A111439(2*n+1)^A300239(A088377(n+1))`
-/

namespace A080605.P14523215875126415902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111439 (2 * n + 1) : ℚ) ^ (A300239 (A088377 (n + 1)).toNat : ℤ)

end

end A080605.P14523215875126415902

/-! ## A080605.P18167501934852828691

`A111439(2*n+1)*A300239(A088377(n+2))`
-/

namespace A080605.P18167501934852828691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (2 * n + 1) * A300239 (A088377 (n + 2)).toNat

end

end A080605.P18167501934852828691

/-! ## A080605.P15289570083980194842

`A001462(A001462(A262986(A111439(2*n+1))))`
-/

namespace A080605.P15289570083980194842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A001462 (A262986 (A111439 (2 * n + 1)).toNat).toNat).toNat

end

end A080605.P15289570083980194842

/-! ## A080605.P1928506179452860510

`A111439(A001462(A001463(2*n+1)))`
-/

namespace A080605.P1928506179452860510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (A001462 (A001463 (2 * n + 1)).toNat).toNat

end

end A080605.P1928506179452860510

/-! ## A080605.P4668572866451259482

`A111439(A001462(A095114(2*n+1)))`
-/

namespace A080605.P4668572866451259482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (A001462 (A095114 (2 * n + 1)).toNat).toNat

end

end A080605.P4668572866451259482

/-! ## A080605.P12415848721518784683

`A111439(2*n+1)+A004074(A287293(n+1))`
-/

namespace A080605.P12415848721518784683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (2 * n + 1) + A004074 (A287293 (n + 1)).toNat

end

end A080605.P12415848721518784683

/-! ## A080605.P10615240201598411224

`A111439(2*n+1)*A322356(A167499(n+5)+1)`
-/

namespace A080605.P10615240201598411224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (2 * n + 1) * A322356 (A167499 (n + 5) + 1).toNat

end

end A080605.P10615240201598411224

/-! ## A080605.P993531250188698194

`A111439(A079208(2*n+1)+2*n+1)`
-/

namespace A080605.P993531250188698194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (A079208 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A080605.P993531250188698194

/-! ## A080605.P13345625577839493426

`A111439(2*n+1)+2-A178815(n+2)`
-/

namespace A080605.P13345625577839493426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (2 * n + 1) + (2 - A178815 (n + 2))

end

end A080605.P13345625577839493426

/-! ## A080605.P15045912721119952515

`A004277(A111439(2*n+1))/A178815(n+2)`
-/

namespace A080605.P15045912721119952515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A111439 (2 * n + 1)).toNat : ℚ) / (A178815 (n + 2) : ℚ)

end

end A080605.P15045912721119952515

/-! ## A080605.P5588929514084072728

`lcm(∑[A002448(n²)], A111439(2*n+1))`
-/

namespace A080605.P5588929514084072728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A111439 (2 * n + 1))

end

end A080605.P5588929514084072728

/-! ## A080605.P2794310435532030607

`A053610((n+1)²)*A111439(2*n+1)`
-/

namespace A080605.P2794310435532030607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053610 ((n + 1) ^ 2) * A111439 (2 * n + 1)

end

end A080605.P2794310435532030607

/-! ## A080605.P1675438653975067422

`A111439(record[A004442(n)])/A008836((n+1)²)`
-/

namespace A080605.P1675438653975067422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111439 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / (A008836 ((n + 1) ^ 2) : ℚ)

end

end A080605.P1675438653975067422

/-!
# A080606: Golomb's sequence using even integers.

The programs for A080606, there is no canonical definition to state claims against.
-/

/-! ## A080606.P7727155811243911944

`A111439(2*(n+1))%A130445(A005185(n+1))`
-/

namespace A080606.P7727155811243911944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111439 (2 * (n + 1))) (A130445 (A005185 (n + 1)).toNat)

end

end A080606.P7727155811243911944

/-! ## A080606.P7971677626580122118

`A111439(2*(n+1))%A027619(A116590(n))²`
-/

namespace A080606.P7971677626580122118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111439 (2 * (n + 1))) (A027619 (A116590 n).toNat ^ 2)

end

end A080606.P7971677626580122118

/-! ## A080606.P5250844229566767282

`A111439(Δ[n²]+1)+A027619(A116590(n))%2`
-/

namespace A080606.P5250844229566767282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat + Int.tmod (A027619 (A116590 n).toNat) 2

end

end A080606.P5250844229566767282

/-! ## A080606.P4089602804317852713

`A111439(Δ[n²]+1)+A010051(A095990(n+1))`
-/

namespace A080606.P4089602804317852713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat + A010051 (A095990 (n + 1)).toNat

end

end A080606.P4089602804317852713

/-! ## A080606.P9019953316465814436

`A111439(Δ[n²]+1)+A048720(A000217(n))`
-/

namespace A080606.P9019953316465814436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat + A048720 (A000217 n).toNat

end

end A080606.P9019953316465814436

/-! ## A080606.P14673115704564019941

`A111439(Δ[A004273(A000124(n))])`
-/

namespace A080606.P14673115704564019941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (f1 (n + 1) - f1 n).toNat

end

end A080606.P14673115704564019941

/-! ## A080606.P3336728422272388201

`A111439(A178815(n+1)+A004277(n))`
-/

namespace A080606.P3336728422272388201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (A178815 (n + 1) + A004277 n).toNat

end

end A080606.P3336728422272388201

/-! ## A080606.P6923611709366720909

`A113724(xor(n, A027359(n+1)))`
-/

namespace A080606.P6923611709366720909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113724 (Int.xor (n : ℤ) (A027359 (n + 1))).toNat

end

end A080606.P6923611709366720909

/-! ## A080606.P1008940521185134240

`A113724(xor(A028310(n), A037802(n+1)))`
-/

namespace A080606.P1008940521185134240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113724 (Int.xor (A028310 n) (A037802 (n + 1))).toNat

end

end A080606.P1008940521185134240

/-! ## A080606.P10127055347576088505

`A113724(or(1, n))`
-/

namespace A080606.P10127055347576088505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113724 (Nat.lor 1 n)

end

end A080606.P10127055347576088505

/-!
# A080607: Golomb's sequence using multiples of 3.

The programs for A080607, the canonical program `A080607.P18000900148135861103` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080607 has offset 1).

The definition of A080607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080607.P18000900148135861103

`3*A003056(∑[A089807(n²)+1])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A080607

/-- `3*A003056(∑[A089807(n²)+1])` -/
def P18000900148135861103.Spec : Prop :=
  ∀ n, P18000900148135861103.a n = A080607 (n + 1)

theorem P18000900148135861103.correct : P18000900148135861103.Spec := by
  intro n
  simp only [A080607, Nat.add_sub_cancel]

end A080607

/-! ## A080607.P7970103574808059421

`A008486(A003056(∑[A089807(n²)+1]))`
-/

namespace A080607.P7970103574808059421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089807 (n ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A080607.P7970103574808059421

namespace A080607

/-- `A008486(A003056(∑[A089807(n²)+1]))` -/
def P7970103574808059421.Spec : Prop :=
  ∀ n, P7970103574808059421.a n = A080607 (n + 1)

end A080607

/-! ## A080607.P16845103491724740963

`3*A003056(A118003(n+1))`
-/

namespace A080607.P16845103491724740963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003056 (A118003 (n + 1)).toNat

end

end A080607.P16845103491724740963

namespace A080607

/-- `3*A003056(A118003(n+1))` -/
def P16845103491724740963.Spec : Prop :=
  ∀ n, P16845103491724740963.a n = A080607 (n + 1)

end A080607

/-! ## A080607.P18029386993797122832

`∑[C(A079757(2*n)+2, A350470(n))]`
-/

namespace A080607.P18029386993797122832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A079757 (2 * n) + 2).toNat (A350470 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080607.P18029386993797122832

namespace A080607

/-- `∑[C(A079757(2*n)+2, A350470(n))]` -/
def P18029386993797122832.Spec : Prop :=
  ∀ n, (P18029386993797122832.a n : ℤ) = A080607 (n + 1)

end A080607

/-! ## A080607.P9533649996405107439

`3*A003056(n-A144473(n+1))`
-/

namespace A080607.P9533649996405107439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003056 ((n : ℤ) - A144473 (n + 1)).toNat

end

end A080607.P9533649996405107439

namespace A080607

/-- `3*A003056(n-A144473(n+1))` -/
def P9533649996405107439.Spec : Prop :=
  ∀ n, P9533649996405107439.a n = A080607 (n + 1)

end A080607

/-!
# A080609: Binomial transform of central Delannoy numbers A001850.

The programs for A080609, there is no canonical definition to state claims against.
-/

/-! ## A080609.P5893424441231278685

`2*a(n-1)+(n+1)*A068764(n)` with `a(0)=1`
-/

namespace A080609.P5893424441231278685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (n + 1 : ℤ) * A068764 n

end

end A080609.P5893424441231278685

/-! ## A080609.P9252359665017113645

`A245965((2*n)²+n)`
-/

namespace A080609.P9252359665017113645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245965 ((2 * n) ^ 2 + n)

end

end A080609.P9252359665017113645

/-!
# A080610: Partial sums of Jacobsthal gap sequence.

The programs for A080610, the canonical program `A080610.P8791855850676862995` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080610 has offset 0).

The definition of A080610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080610.P8791855850676862995

`∑[gcd(1-2^n, n%2)]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080610

/-- `∑[gcd(1-2^n, n%2)]` -/
def P8791855850676862995.Spec : Prop :=
  ∀ n, (P8791855850676862995.a n : ℤ) = A080610 n

theorem P8791855850676862995.correct : P8791855850676862995.Spec := by
  intro n
  simp only [A080610]

end A080610

/-! ## A080610.P7974469591494314771

`∑[(2^n-1)^∑[(-1)^n]]`
-/

namespace A080610.P7974469591494314771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 1 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080610.P7974469591494314771

namespace A080610

/-- `∑[(2^n-1)^∑[(-1)^n]]` -/
def P7974469591494314771.Spec : Prop :=
  ∀ n, P7974469591494314771.a n = (A080610 n : ℚ)

end A080610

/-! ## A080610.P214406866730532506

`gcd(2, n)²+4*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A080610.P214406866730532506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.gcd 2 n ^ 2 + 4 * a (n - 2)

end

end A080610.P214406866730532506

namespace A080610

/-- `gcd(2, n)²+4*a(n-2)` -/
def P214406866730532506.Spec : Prop :=
  ∀ n, (P214406866730532506.a n : ℤ) = A080610 n

end A080610

/-! ## A080610.P6182988254081244086

`a(n-2)+4^floor(n/2)` with `a(0)=0, a(1)=1`
-/

namespace A080610.P6182988254081244086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (4 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A080610.P6182988254081244086

namespace A080610

/-- `a(n-2)+4^floor(n/2)` -/
def P6182988254081244086.Spec : Prop :=
  ∀ n, P6182988254081244086.a n = (A080610 n : ℚ)

end A080610

/-! ## A080610.P9293520928144034339

`or(lcm(4, a(n-1)), a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A080610.P9293520928144034339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.lor (Nat.lcm 4 (a (n - 1))) (a (n - 2))

end

end A080610.P9293520928144034339

namespace A080610

/-- `or(lcm(4, a(n-1)), a(n-2))` -/
def P9293520928144034339.Spec : Prop :=
  ∀ n, (P9293520928144034339.a n : ℤ) = A080610 n

end A080610

/-! ## A080610.P1493201431012776425

`or(4*a(n-2), a(n-2))` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A080610.P1493201431012776425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  Nat.lor (4 * a (n - 2)) (a (n - 2))

end

end A080610.P1493201431012776425

namespace A080610

/-- `or(4*a(n-2), a(n-2))` -/
def P1493201431012776425.Spec : Prop :=
  ∀ n, (P1493201431012776425.a n : ℤ) = A080610 n

end A080610

/-! ## A080610.P10372272908877471369

`∑[4*a(n-2)]-a(n-1)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A080610.P10372272908877471369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A080610.P10372272908877471369

namespace A080610

/-- `∑[4*a(n-2)]-a(n-1)` -/
def P10372272908877471369.Spec : Prop :=
  ∀ n, P10372272908877471369.a n = A080610 n

end A080610

/-! ## A080610.P16873067991917292362

`gcd(a(n-2)+4, a(n-2))+4*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A080610.P16873067991917292362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.gcd (a (n - 2) + 4) (a (n - 2)) + 4 * a (n - 2)

end

end A080610.P16873067991917292362

namespace A080610

/-- `gcd(a(n-2)+4, a(n-2))+4*a(n-2)` -/
def P16873067991917292362.Spec : Prop :=
  ∀ n, (P16873067991917292362.a n : ℤ) = A080610 n

end A080610

/-! ## A080610.P6060311646755300696

`floor(A281500(n)/3)`
-/

namespace A080610.P6060311646755300696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A281500 n : ℚ) / 3⌋

end

end A080610.P6060311646755300696

namespace A080610

/-- `floor(A281500(n)/3)` -/
def P6060311646755300696.Spec : Prop :=
  ∀ n, P6060311646755300696.a n = A080610 n

end A080610

/-! ## A080610.P3636429089484493574

`A136324(n+2)-1`
-/

namespace A080610.P3636429089484493574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136324 (n + 2) - 1

end

end A080610.P3636429089484493574

namespace A080610

/-- `A136324(n+2)-1` -/
def P3636429089484493574.Spec : Prop :=
  ∀ n, P3636429089484493574.a n = A080610 n

end A080610

/-! ## A080610.P6029659048540636319

`gcd(2, n)*A000975(n)`
-/

namespace A080610.P6029659048540636319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A000975 n

end

end A080610.P6029659048540636319

namespace A080610

/-- `gcd(2, n)*A000975(n)` -/
def P6029659048540636319.Spec : Prop :=
  ∀ n, P6029659048540636319.a n = A080610 n

end A080610

/-! ## A080610.P13604130572279951058

`2*∑[A080924(n)/2]`
-/

namespace A080610.P13604130572279951058
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080924 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080610.P13604130572279951058

namespace A080610

/-- `2*∑[A080924(n)/2]` -/
def P13604130572279951058.Spec : Prop :=
  ∀ n, P13604130572279951058.a n = (A080610 n : ℚ)

end A080610

/-! ## A080610.P13514411442831058080

`A052992(n)-char[2*n]`
-/

namespace A080610.P13514411442831058080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052992 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A080610.P13514411442831058080

namespace A080610

/-- `A052992(n)-char[2*n]` -/
def P13514411442831058080.Spec : Prop :=
  ∀ n, P13514411442831058080.a n = A080610 n

end A080610

/-! ## A080610.P2146130356127190004

`(char[2*n]+1)*∑[A001045(n)]`
-/

namespace A080610.P2146130356127190004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A080610.P2146130356127190004

namespace A080610

/-- `(char[2*n]+1)*∑[A001045(n)]` -/
def P2146130356127190004.Spec : Prop :=
  ∀ n, P2146130356127190004.a n = A080610 n

end A080610

/-! ## A080610.P11704690496466255916

`A101622(n)-(a(n-1)+a(n-1))` with `a(0)=0`
-/

namespace A080610.P11704690496466255916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A101622 n - (a (n - 1) + a (n - 1))

end

end A080610.P11704690496466255916

namespace A080610

/-- `A101622(n)-(a(n-1)+a(n-1))` -/
def P11704690496466255916.Spec : Prop :=
  ∀ n, P11704690496466255916.a n = A080610 n

end A080610

/-! ## A080610.P1447404788672940393

`A151575(n)+A140253(n)`
-/

namespace A080610.P1447404788672940393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151575 n + A140253 n

end

end A080610.P1447404788672940393

namespace A080610

/-- `A151575(n)+A140253(n)` -/
def P1447404788672940393.Spec : Prop :=
  ∀ n, P1447404788672940393.a n = A080610 n

end A080610

/-! ## A080610.P1709287272138596805

`A051049(n)-A167193(n)`
-/

namespace A080610.P1709287272138596805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 n - A167193 n

end

end A080610.P1709287272138596805

namespace A080610

/-- `A051049(n)-A167193(n)` -/
def P1709287272138596805.Spec : Prop :=
  ∀ n, P1709287272138596805.a n = A080610 n

end A080610

/-! ## A080610.P18327380601832405881

`A279872(n)-A077925(n)`
-/

namespace A080610.P18327380601832405881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279872 n - A077925 n

end

end A080610.P18327380601832405881

namespace A080610

/-- `A279872(n)-A077925(n)` -/
def P18327380601832405881.Spec : Prop :=
  ∀ n, P18327380601832405881.a n = A080610 n

end A080610

/-! ## A080610.P16172752383411144070

`A221049(n)-A213173(n)`
-/

namespace A080610.P16172752383411144070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221049 n - A213173 n

end

end A080610.P16172752383411144070

namespace A080610

/-- `A221049(n)-A213173(n)` -/
def P16172752383411144070.Spec : Prop :=
  ∀ n, P16172752383411144070.a n = A080610 n

end A080610

/-!
# A080611: a(n) is the smallest number m >= 2 for which the set of prime factors of m, m-1 and m+1 contains at least the first n primes.

The programs for A080611, there is no canonical definition to state claims against.
-/

/-! ## A080611.P10715261933083187159

`A274709(A044432(n))+1`
-/

namespace A080611.P10715261933083187159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274709 (A044432 n).toNat + 1

end

end A080611.P10715261933083187159

/-! ## A080611.P12334540811787811718

`A127237(A381469(n+1))`
-/

namespace A080611.P12334540811787811718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127237 (A381469 (n + 1)).toNat

end

end A080611.P12334540811787811718

/-!
# A080612: Numbers m such that (1/p(2*m+1)) * Sum_{k=1..m} p(2*k+1)-p(2*k) >= (1/p(2*m))* Sum_{k=1..m} p(2*k)-p(2*k-1) where p(k) denotes the k-th prime.

The programs for A080612, there is no canonical definition to state claims against.
-/

/-! ## A080612.P5347436884704072154

`A102352(A102352(n+1))-2`
-/

namespace A080612.P5347436884704072154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102352 (A102352 (n + 1)).toNat - 2

end

end A080612.P5347436884704072154

/-! ## A080612.P15045284215504784093

`A055642(A132286(n+1))+n`
-/

namespace A080612.P15045284215504784093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A132286 (n + 1)).toNat + (n : ℤ)

end

end A080612.P15045284215504784093

/-! ## A080612.P3683598121748402445

`A055642(A167456(n+1))+n`
-/

namespace A080612.P3683598121748402445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A167456 (n + 1)).toNat + (n : ℤ)

end

end A080612.P3683598121748402445

/-! ## A080612.P7926465278816512671

`A055642(A008523(n+3))+n`
-/

namespace A080612.P7926465278816512671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A008523 (n + 3)).toNat + (n : ℤ)

end

end A080612.P7926465278816512671

/-! ## A080612.P12426230077606758466

`A259433(A004281(n))`
-/

namespace A080612.P12426230077606758466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259433 (A004281 n).toNat

end

end A080612.P12426230077606758466

/-!
# A080617: Consider a 3 X 3 X 3 Rubik cube, but only allow the moves M_R, D; sequence gives number of positions that are exactly n moves from the start.

The programs for A080617, there is no canonical definition to state claims against.
-/

/-! ## A080617.P16054448506479073894

`Δ[A121875(∑[n]+2)]`
-/

namespace A080617.P16054448506479073894
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121875 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080617.P16054448506479073894

/-! ## A080617.P5472609055099954638

`A080628(C(comp[9*n], n)-1)`
-/

namespace A080617.P5472609055099954638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080628 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) n - 1)

end

end A080617.P5472609055099954638

/-! ## A080617.P8620410423840901349

`A080628(A024645(n))`
-/

namespace A080617.P8620410423840901349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080628 (A024645 n).toNat

end

end A080617.P8620410423840901349

/-! ## A080617.P13576907099556622425

`A080628(A024646(n))`
-/

namespace A080617.P13576907099556622425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080628 (A024646 n).toNat

end

end A080617.P13576907099556622425

/-!
# A080618: Consider 3 X 3 X 3 Rubik cube, allowing moves F, U, L, R, D and their inverses; sequence gives number of positions that are exactly n moves from the start.

The programs for A080618, there is no canonical definition to state claims against.
-/

/-! ## A080618.P2896615104752169960

`A005374(A155655(n)+A000045(n))`
-/

namespace A080618.P2896615104752169960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A155655 n + A000045 n).toNat

end

end A080618.P2896615104752169960

/-!
# A080620: Consider 3 X 3 X 3 Rubik cube, but only allow the anti-slice group to act; sequence gives number of positions that are exactly n moves from the start.

The programs for A080620, there is no canonical definition to state claims against.
-/

/-! ## A080620.P4574633019578166566

`A007865(n)*A392697(A104004(n))`
-/

namespace A080620.P4574633019578166566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007865 n * A392697 (A104004 n).toNat

end

end A080620.P4574633019578166566

/-!
# A080627: Consider 3 X 3 X 3 Rubik cube, but only allow the squares group to act; sequence gives number of positions that are exactly n moves from the start.

The programs for A080627, there is no canonical definition to state claims against.
-/

/-! ## A080627.P1723801539936523759

`A214920(A150761(n+1))`
-/

namespace A080627.P1723801539936523759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214920 (A150761 (n + 1)).toNat

end

end A080627.P1723801539936523759

/-!
# A080628: Consider 3 X 3 X 3 Rubik cube, but only allow the group to act; sequence gives number of positions that are exactly n moves from the start.

The programs for A080628, there is no canonical definition to state claims against.
-/

/-! ## A080628.P13638394014238440580

`Δ[Δ[A064437(a(n-1))]]` with `a(0)=1, a(1)=3`
-/

namespace A080628.P13638394014238440580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  A064437 (f2 (n - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080628.P13638394014238440580

/-! ## A080628.P17578199698902506912

`A065475(floor(∑[(sqrt(2)+1)^n]))`
-/

namespace A080628.P17578199698902506912
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (2 : ℝ) + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A080628.P17578199698902506912

/-! ## A080628.P12564372675877652823

`A322094(ceil(∑[(sqrt(2)+1)^n]))`
-/

namespace A080628.P12564372675877652823
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (2 : ℝ) + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322094 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉.toNat

end

end A080628.P12564372675877652823

/-! ## A080628.P13660722980552761794

`∏{p}[4^n, #]*A215928(n+1)`
-/

namespace A080628.P13660722980552761794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A215928 (n + 1)

end

end A080628.P13660722980552761794

/-!
# A080631: Consider 3 X 3 X 3 Rubik cube, but consider only positions of edges; sequence gives number of positions that are exactly n moves from the start up to equivalence under the full group of order 48 of the cube.

The programs for A080631, there is no canonical definition to state claims against.
-/

/-! ## A080631.P17085106970860121759

`A085862(A359884(n))+A001246(n)`
-/

namespace A080631.P17085106970860121759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085862 (A359884 n).toNat + A001246 n

end

end A080631.P17085106970860121759

/-! ## A080631.P17315600416430269488

`A322238(n)+A051775(A196071(n+1))`
-/

namespace A080631.P17315600416430269488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322238 n + A051775 (A196071 (n + 1)).toNat

end

end A080631.P17315600416430269488

/-!
# A080632: Consider 3 X 3 X 3 Rubik cube, but consider only positions of edges; sequence gives number of positions that are exactly n moves from the start up to equivalence under the full group of order 48 of the cube.

The programs for A080632, there is no canonical definition to state claims against.
-/

/-! ## A080632.P11015529287693911648

`A205811(n)-A299757(A000110(n))`
-/

namespace A080632.P11015529287693911648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205811 n - A299757 (A000110 n).toNat

end

end A080632.P11015529287693911648

/-!
# A080633: a(1)=3; for n > 1, a(n) is the smallest integer greater than a(n-1) consistent with the condition "n is in the sequence if and only if a(n) is congruent to 1 (mod 4)".

The programs for A080633, the canonical program `A080633.P6291903132047608782` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080633 has offset 1).

The definition of A080633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080633.P10234379350042429363

`A080646(A028310(n))+1-floor(acot(n))`
-/

namespace A080633.P10234379350042429363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080646 (A028310 n).toNat + (1 - ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A080633.P10234379350042429363

namespace A080633

/-- `A080646(A028310(n))+1-floor(acot(n))` -/
def P10234379350042429363.Spec : Prop :=
  ∀ n, P10234379350042429363.a n = A080633 (n + 1)

end A080633

/-! ## A080633.P9235554622871507380

`A080646(round(sqrt(n²+1)))-A057428(n)`
-/

namespace A080633.P9235554622871507380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080646 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A057428 n

end

end A080633.P9235554622871507380

namespace A080633

/-- `A080646(round(sqrt(n²+1)))-A057428(n)` -/
def P9235554622871507380.Spec : Prop :=
  ∀ n, P9235554622871507380.a n = A080633 (n + 1)

end A080633

/-! ## A080633.P6291903132047608782

`A080646(A028310(n))+A057427(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A080633

/-- `A080646(A028310(n))+A057427(n)` -/
def P6291903132047608782.Spec : Prop :=
  ∀ n, P6291903132047608782.a n = A080633 (n + 1)

theorem P6291903132047608782.correct : P6291903132047608782.Spec := by
  intro n
  simp only [A080633, Nat.add_sub_cancel]

end A080633

/-! ## A080633.P9902305814209069036

`A080646(A028310(n))+A057428(n)²`
-/

namespace A080633.P9902305814209069036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080646 (A028310 n).toNat + A057428 n ^ 2

end

end A080633.P9902305814209069036

namespace A080633

/-- `A080646(A028310(n))+A057428(n)²` -/
def P9902305814209069036.Spec : Prop :=
  ∀ n, P9902305814209069036.a n = A080633 (n + 1)

end A080633

/-! ## A080633.P4565578817965495578

`A080646(A028310(n))+A000040(n+1)%2`
-/

namespace A080633.P4565578817965495578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080646 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A080633.P4565578817965495578

namespace A080633

/-- `A080646(A028310(n))+A000040(n+1)%2` -/
def P4565578817965495578.Spec : Prop :=
  ∀ n, P4565578817965495578.a n = A080633 (n + 1)

end A080633

/-! ## A080633.P1751587759504539772

`floor(A353651(2*n+3)/2)`
-/

namespace A080633.P1751587759504539772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A353651 (2 * n + 3) : ℚ) / 2⌋

end

end A080633.P1751587759504539772

namespace A080633

/-- `floor(A353651(2*n+3)/2)` -/
def P1751587759504539772.Spec : Prop :=
  ∀ n, P1751587759504539772.a n = A080633 (n + 1)

end A080633

/-! ## A080633.P15983663752257796196

`A000463(A353651(2*n+3)-2)`
-/

namespace A080633.P15983663752257796196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A353651 (2 * n + 3) - 2).toNat

end

end A080633.P15983663752257796196

namespace A080633

/-- `A000463(A353651(2*n+3)-2)` -/
def P15983663752257796196.Spec : Prop :=
  ∀ n, P15983663752257796196.a n = A080633 (n + 1)

end A080633

/-! ## A080633.P2249805970515216841

`A004526(A353651(2*n+3))`
-/

namespace A080633.P2249805970515216841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A353651 (2 * n + 3)).toNat

end

end A080633.P2249805970515216841

namespace A080633

/-- `A004526(A353651(2*n+3))` -/
def P2249805970515216841.Spec : Prop :=
  ∀ n, P2249805970515216841.a n = A080633 (n + 1)

end A080633

/-! ## A080633.P6810391511725596407

`A028242(A353651(2*(n+1))+1)`
-/

namespace A080633.P6810391511725596407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A353651 (2 * (n + 1)) + 1).toNat

end

end A080633.P6810391511725596407

namespace A080633

/-- `A028242(A353651(2*(n+1))+1)` -/
def P6810391511725596407.Spec : Prop :=
  ∀ n, P6810391511725596407.a n = A080633 (n + 1)

end A080633

/-! ## A080633.P17528129177158002637

`A330492(A353651(2*n+3)+1)`
-/

namespace A080633.P17528129177158002637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330492 (A353651 (2 * n + 3) + 1).toNat

end

end A080633.P17528129177158002637

namespace A080633

/-- `A330492(A353651(2*n+3)+1)` -/
def P17528129177158002637.Spec : Prop :=
  ∀ n, P17528129177158002637.a n = A080633 (n + 1)

end A080633

/-!
# A080634: Start with a(1)=1. Then, for n>1, choose a(n)=1 or 2 so as to minimize the longest arithmetic progression in either S1(n) or S2(n), where S1(n)={k|a(k)=1,1<=k<=n} and S2(n)={k|a(k)=2,1<=k<=n}.

The programs for A080634, there is no canonical definition to state claims against.
-/

/-! ## A080634.P14039908728973930651

`gcd(2, A056847(2*A290100(n+1)))`
-/

namespace A080634.P14039908728973930651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A056847 (2 * A290100 (n + 1)).toNat)

end

end A080634.P14039908728973930651

/-! ## A080634.P12161133916922135911

`A040001(A056847(2*A290100(n+1)))`
-/

namespace A080634.P12161133916922135911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A056847 (2 * A290100 (n + 1)).toNat).toNat

end

end A080634.P12161133916922135911

/-! ## A080634.P12156050827633300086

`∏{p}[A056847(2*A290100(n+1)), A009191(#)]`
-/

namespace A080634.P12156050827633300086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (2 * A290100 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A009191 p

end

end A080634.P12156050827633300086

/-! ## A080634.P2641272560265228488

`gcd(2, A256998(A029877(n)))`
-/

namespace A080634.P2641272560265228488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A256998 (A029877 n).toNat)

end

end A080634.P2641272560265228488

/-! ## A080634.P777914075242982530

`A245920(A242639(n+4)+A031292(n+1))`
-/

namespace A080634.P777914075242982530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245920 (A242639 (n + 4) + A031292 (n + 1)).toNat

end

end A080634.P777914075242982530

/-!
# A080635: Number of permutations on n letters without double falls and without initial falls.

The programs for A080635, there is no canonical definition to state claims against.
-/

/-! ## A080635.P11342645099470912954

`A232864(n+1)/(n+1)`
-/

namespace A080635.P11342645099470912954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232864 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A080635.P11342645099470912954

/-! ## A080635.P17010730667582169675

`record[A232864(A025480(n))]/A110514(2*n)`
-/

namespace A080635.P17010730667582169675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232864 (A025480 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A110514 (2 * n) : ℚ)

end

end A080635.P17010730667582169675

/-! ## A080635.P7650494962928024231

`A185422(C(n, 2)+1)`
-/

namespace A080635.P7650494962928024231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185422 (Nat.choose n 2 + 1)

end

end A080635.P7650494962928024231

/-! ## A080635.P13876947472577425344

`A162976(∑[abs(1-n)])`
-/

namespace A080635.P13876947472577425344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162976 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A080635.P13876947472577425344

/-! ## A080635.P4966825482634314433

`A185422(∑[abs(1-n)])`
-/

namespace A080635.P4966825482634314433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185422 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A080635.P4966825482634314433

/-! ## A080635.P10161657372795162135

`A397303(A133263(n))`
-/

namespace A080635.P10161657372795162135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397303 (A133263 n).toNat

end

end A080635.P10161657372795162135

/-! ## A080635.P14382776876640773639

`A397303(A238531(n+1))`
-/

namespace A080635.P14382776876640773639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397303 (A238531 (n + 1)).toNat

end

end A080635.P14382776876640773639

/-!
# A080637: a(n) is the smallest positive integer which is consistent with the sequence being monotonically increasing and satisfying a(1)=2, a(a(n)) = 2n+1 for n > 1.

The programs for A080637, the canonical program `A080637.P11710115320378202820` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080637 has offset 1).

The definition of A080637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080637.P11710115320378202820

`∑[abs(a(floor((n-1)/2)))]` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080637

/-- `∑[abs(a(floor((n-1)/2)))]` -/
def P11710115320378202820.Spec : Prop :=
  ∀ n, (P11710115320378202820.a n : ℤ) = A080637 (n + 1)

theorem P11710115320378202820.correct : P11710115320378202820.Spec := by
  intro n
  simp only [A080637, Nat.add_sub_cancel]

end A080637

/-! ## A080637.P5833793806530825639

`∑[floor(a(floor((n-1)/2)))]` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A080637.P5833793806530825639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080637.P5833793806530825639

namespace A080637

/-- `∑[floor(a(floor((n-1)/2)))]` -/
def P5833793806530825639.Spec : Prop :=
  ∀ n, (P5833793806530825639.a n : ℤ) = A080637 (n + 1)

theorem P5833793806530825639.correct : P5833793806530825639.Spec := by
  intro n
  simp only [A080637, Nat.add_sub_cancel, A080637.P5833793806530825639.f1, A080637.P5833793806530825639.a, A080637.P11710115320378202820.f1, A080637.P11710115320378202820.a, SequenceMachineLib.memo_apply]

end A080637

/-! ## A080637.P15918706957299910761

`∑[ceil(a(ceil(n/2)-1))]` with `a(0)=2, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A080637.P15918706957299910761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (⌈(n : ℚ) / 2⌉ - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080637.P15918706957299910761

namespace A080637

/-- `∑[ceil(a(ceil(n/2)-1))]` -/
def P15918706957299910761.Spec : Prop :=
  ∀ n, (P15918706957299910761.a n : ℤ) = A080637 (n + 1)

end A080637

/-! ## A080637.P16152898192829388487

`lt[xor(and(n, n+1), a(n-1)), n]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A080637.P16152898192829388487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 2] fun n f1 =>
  Nat.xor (Nat.land n (n + 1)) (f1 (n - 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080637.P16152898192829388487

namespace A080637

/-- `lt[xor(and(n, n+1), a(n-1)), n]` -/
def P16152898192829388487.Spec : Prop :=
  ∀ n, (P16152898192829388487.a n : ℤ) = A080637 (n + 1)

end A080637

/-! ## A080637.P3625885760096050985

`∑[ceil((n+1)/xor(n+1, ceil(n/2)))]+1`
-/

namespace A080637.P3625885760096050985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (Int.xor (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉ : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A080637.P3625885760096050985

namespace A080637

/-- `∑[ceil((n+1)/xor(n+1, ceil(n/2)))]+1` -/
def P3625885760096050985.Spec : Prop :=
  ∀ n, P3625885760096050985.a n = A080637 (n + 1)

end A080637

/-! ## A080637.P16348950945658157319

`lt[or(2*n+1, n+2)-a(n-1), 2*n]` with `a(0)=0`
-/

namespace A080637.P16348950945658157319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (Nat.lor (2 * n + 1) (n + 2) : ℤ) - f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A080637.P16348950945658157319

namespace A080637

/-- `lt[or(2*n+1, n+2)-a(n-1), 2*n]` -/
def P16348950945658157319.Spec : Prop :=
  ∀ n, (P16348950945658157319.a n : ℤ) = A080637 (n + 1)

end A080637

/-! ## A080637.P13837175217489582186

`A115836(n+1)+1`
-/

namespace A080637.P13837175217489582186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115836 (n + 1) + 1

end

end A080637.P13837175217489582186

namespace A080637

/-- `A115836(n+1)+1` -/
def P13837175217489582186.Spec : Prop :=
  ∀ n, P13837175217489582186.a n = A080637 (n + 1)

end A080637

/-! ## A080637.P6254934991425801551

`A007378(n+2)-1`
-/

namespace A080637.P6254934991425801551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007378 (n + 2) - 1

end

end A080637.P6254934991425801551

namespace A080637

/-- `A007378(n+2)-1` -/
def P6254934991425801551.Spec : Prop :=
  ∀ n, P6254934991425801551.a n = A080637 (n + 1)

end A080637

/-! ## A080637.P14860722639228208744

`A166079(n+3)+n`
-/

namespace A080637.P14860722639228208744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166079 (n + 3) + (n : ℤ)

end

end A080637.P14860722639228208744

namespace A080637

/-- `A166079(n+3)+n` -/
def P14860722639228208744.Spec : Prop :=
  ∀ n, P14860722639228208744.a n = A080637 (n + 1)

end A080637

/-! ## A080637.P3294799225537225713

`∑[A079882(abs(1-n))]`
-/

namespace A080637.P3294799225537225713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079882 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080637.P3294799225537225713

namespace A080637

/-- `∑[A079882(abs(1-n))]` -/
def P3294799225537225713.Spec : Prop :=
  ∀ n, P3294799225537225713.a n = A080637 (n + 1)

end A080637

/-! ## A080637.P7034466447159442573

`A277267(n+1)+2+n`
-/

namespace A080637.P7034466447159442573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277267 (n + 1) + 2 + (n : ℤ)

end

end A080637.P7034466447159442573

namespace A080637

/-- `A277267(n+1)+2+n` -/
def P7034466447159442573.Spec : Prop :=
  ∀ n, P7034466447159442573.a n = A080637 (n + 1)

end A080637

/-! ## A080637.P317703313140419525

`∑[2-char[A092754(n+1)]]`
-/

namespace A080637.P317703313140419525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092754 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080637.P317703313140419525

namespace A080637

/-- `∑[2-char[A092754(n+1)]]` -/
def P317703313140419525.Spec : Prop :=
  ∀ n, P317703313140419525.a n = A080637 (n + 1)

end A080637

/-! ## A080637.P13583209098227596201

`comp[A206332(n+1)+n]+2`
-/

namespace A080637.P13583209098227596201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206332 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A080637.P13583209098227596201

namespace A080637

/-- `comp[A206332(n+1)+n]+2` -/
def P13583209098227596201.Spec : Prop :=
  ∀ n, (P13583209098227596201.a n : ℤ) = A080637 (n + 1)

end A080637

/-! ## A080637.P15426230821023824724

`comp[A003817(n)+2*n]+1`
-/

namespace A080637.P15426230821023824724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n + (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A080637.P15426230821023824724

namespace A080637

/-- `comp[A003817(n)+2*n]+1` -/
def P15426230821023824724.Spec : Prop :=
  ∀ n, (P15426230821023824724.a n : ℤ) = A080637 (n + 1)

end A080637

/-! ## A080637.P9019105139761745925

`2*(n+1)-A279521(n+1)`
-/

namespace A080637.P9019105139761745925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A279521 (n + 1)

end

end A080637.P9019105139761745925

namespace A080637

/-- `2*(n+1)-A279521(n+1)` -/
def P9019105139761745925.Spec : Prop :=
  ∀ n, P9019105139761745925.a n = A080637 (n + 1)

end A080637

/-! ## A080637.P13457940233844070408

`2*n+3-A078881(n+1)`
-/

namespace A080637.P13457940233844070408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A078881 (n + 1)

end

end A080637.P13457940233844070408

namespace A080637

/-- `2*n+3-A078881(n+1)` -/
def P13457940233844070408.Spec : Prop :=
  ∀ n, P13457940233844070408.a n = A080637 (n + 1)

end A080637

/-! ## A080637.P17577900065394435656

`A079882(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A080637.P17577900065394435656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A079882 (n - 1) + a (n - 1)

end

end A080637.P17577900065394435656

namespace A080637

/-- `A079882(n-1)+a(n-1)` -/
def P17577900065394435656.Spec : Prop :=
  ∀ n, P17577900065394435656.a n = A080637 (n + 1)

end A080637

/-! ## A080637.P11845391193384508280

`∑[2-char[A081241(2*n+1)]]`
-/

namespace A080637.P11845391193384508280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081241 (2 * n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080637.P11845391193384508280

namespace A080637

/-- `∑[2-char[A081241(2*n+1)]]` -/
def P11845391193384508280.Spec : Prop :=
  ∀ n, P11845391193384508280.a n = A080637 (n + 1)

end A080637

/-!
# A080638: Number of positions that the 3 X 3 X 3 Rubik cube puzzle can be in after exactly n moves, up to equivalence under the full group of order 48 of the cube and with a half-turn is considered to be 1 move.

The programs for A080638, there is no canonical definition to state claims against.
-/

/-! ## A080638.P5371315552103209898

`A130370(C(∑[n+1], n))`
-/

namespace A080638.P5371315552103209898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130370 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n)

end

end A080638.P5371315552103209898

/-!
# A080639: a(1) = 1; for n>1, a(n) is taken to be the smallest integer greater than a(n-1) which is consistent with the condition "for n>1, n is a member of the sequence if and only if a(n) is even".

The programs for A080639, the canonical program `A080639.P1103172142795349928` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080639 has offset 1).

The definition of A080639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080639.P9527774346227021939

`comp[A079251(n+1)]+1`
-/

namespace A080639.P9527774346227021939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A080639.P9527774346227021939

namespace A080639

/-- `comp[A079251(n+1)]+1` -/
def P9527774346227021939.Spec : Prop :=
  ∀ n, (P9527774346227021939.a n : ℤ) = A080639 (n + 1)

end A080639

/-! ## A080639.P1103172142795349928

`A079948(n-1)+a(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A080639

/-- `A079948(n-1)+a(n-1)` -/
def P1103172142795349928.Spec : Prop :=
  ∀ n, P1103172142795349928.a n = A080639 (n + 1)

theorem P1103172142795349928.correct : P1103172142795349928.Spec := by
  intro n
  simp only [A080639, Nat.add_sub_cancel]

end A080639

/-! ## A080639.P13870833526334553390

`comp[comp[A079000(n+1)]-(C(2, n+2)-1)]`
-/

namespace A080639.P13870833526334553390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - ((Nat.choose 2 (n + 2) : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080639.P13870833526334553390

namespace A080639

/-- `comp[comp[A079000(n+1)]-(C(2, n+2)-1)]` -/
def P13870833526334553390.Spec : Prop :=
  ∀ n, (P13870833526334553390.a n : ℤ) = A080639 (n + 1)

end A080639

/-! ## A080639.P5405526506067799058

`A079000(A028310(n))+ceil(sin(n)²)`
-/

namespace A080639.P5405526506067799058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (A028310 n).toNat + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A080639.P5405526506067799058

namespace A080639

/-- `A079000(A028310(n))+ceil(sin(n)²)` -/
def P5405526506067799058.Spec : Prop :=
  ∀ n, P5405526506067799058.a n = A080639 (n + 1)

end A080639

/-! ## A080639.P14155031428650608639

`A079000(A028310(n))+A057427(n)`
-/

namespace A080639.P14155031428650608639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (A028310 n).toNat + A057427 n

end

end A080639.P14155031428650608639

namespace A080639

/-- `A079000(A028310(n))+A057427(n)` -/
def P14155031428650608639.Spec : Prop :=
  ∀ n, P14155031428650608639.a n = A080639 (n + 1)

end A080639

/-! ## A080639.P14836491811382363232

`A079000(A028310(n))-A057428(n)`
-/

namespace A080639.P14836491811382363232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (A028310 n).toNat - A057428 n

end

end A080639.P14836491811382363232

namespace A080639

/-- `A079000(A028310(n))-A057428(n)` -/
def P14836491811382363232.Spec : Prop :=
  ∀ n, P14836491811382363232.a n = A080639 (n + 1)

end A080639

/-! ## A080639.P11199692577603599487

`A079000(A028310(n))+A000040(n+1)%2`
-/

namespace A080639.P11199692577603599487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A080639.P11199692577603599487

namespace A080639

/-- `A079000(A028310(n))+A000040(n+1)%2` -/
def P11199692577603599487.Spec : Prop :=
  ∀ n, P11199692577603599487.a n = A080639 (n + 1)

end A080639

/-! ## A080639.P7430138881558263087

`record[A079000(A065648(n))+A000045(n²%(n+1))]`
-/

namespace A080639.P7430138881558263087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (A065648 n).toNat + A000045 (n ^ 2 % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080639.P7430138881558263087

namespace A080639

/-- `record[A079000(A065648(n))+A000045(n²%(n+1))]` -/
def P7430138881558263087.Spec : Prop :=
  ∀ n, P7430138881558263087.a n = A080639 (n + 1)

end A080639

/-! ## A080639.P4277173734224630790

`A079000(A028310(n))+A011620(n²)`
-/

namespace A080639.P4277173734224630790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (A028310 n).toNat + A011620 (n ^ 2)

end

end A080639.P4277173734224630790

namespace A080639

/-- `A079000(A028310(n))+A011620(n²)` -/
def P4277173734224630790.Spec : Prop :=
  ∀ n, P4277173734224630790.a n = A080639 (n + 1)

end A080639

/-!
# A080641: a(1) = 4; for n>1, a(n) is taken to be the smallest integer greater than a(n-1) which is consistent with the condition "n is a member of the sequence if and only if a(n) is divisible by 5".

The programs for A080641, there is no canonical definition to state claims against.
-/

/-! ## A080641.P15075288111073394467

`∑[A359901(A325662(n+3))]+n+3`
-/

namespace A080641.P15075288111073394467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359901 (A325662 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 3 : ℤ)

end

end A080641.P15075288111073394467

/-!
# A080643: a(0)=0; for n>0, a(n) = 4^n - 2*3^(n-1).

The programs for A080643, the canonical program `A080643.P557724698798439919` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080643 has offset 0).

The definition of A080643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080643.P557724698798439919

`4^n-Δ[floor(3^(n-1))]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080643

/-- `4^n-Δ[floor(3^(n-1))]` -/
def P557724698798439919.Spec : Prop :=
  ∀ n, P557724698798439919.a n = A080643 n

theorem P557724698798439919.correct : P557724698798439919.Spec := by
  intro n
  simp only [A080643]

end A080643

/-! ## A080643.P150813421953281219

`record[xor(2^n-(1-(-1)^n)*3^((n-1)/2), 2^n)]`
-/

namespace A080643.P150813421953281219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((2 ^ n : ℝ) - (1 - (-1) ^ n : ℝ) * (3 : ℝ) ^ (((n : ℤ) - 1 : ℚ) / 2 : ℝ))) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080643.P150813421953281219

namespace A080643

/-- `record[xor(2^n-(1-(-1)^n)*3^((n-1)/2), 2^n)]` -/
def P150813421953281219.Spec : Prop :=
  ∀ n, P150813421953281219.a n = A080643 n

end A080643

/-! ## A080643.P916874766891483377

`A366131(2*n)`
-/

namespace A080643.P916874766891483377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366131 (2 * n)

end

end A080643.P916874766891483377

namespace A080643

/-- `A366131(2*n)` -/
def P916874766891483377.Spec : Prop :=
  ∀ n, P916874766891483377.a n = A080643 n

end A080643

/-! ## A080643.P10518059337004623792

`abs(4^n-A025192(n))`
-/

namespace A080643.P10518059337004623792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 ^ n : ℤ) - A025192 n|

end

end A080643.P10518059337004623792

namespace A080643

/-- `abs(4^n-A025192(n))` -/
def P10518059337004623792.Spec : Prop :=
  ∀ n, P10518059337004623792.a n = A080643 n

end A080643

/-! ## A080643.P8423914562530211682

`abs(A003946(n)+4^n-Δ[3^n])`
-/

namespace A080643.P8423914562530211682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003946 n + ((4 ^ n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))|

end

end A080643.P8423914562530211682

namespace A080643

/-- `abs(A003946(n)+4^n-Δ[3^n])` -/
def P8423914562530211682.Spec : Prop :=
  ∀ n, P8423914562530211682.a n = A080643 n

end A080643

/-! ## A080643.P1939908638923251115

`2*A167936(A004273(n))`
-/

namespace A080643.P1939908638923251115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167936 (A004273 n).toNat

end

end A080643.P1939908638923251115

namespace A080643

/-- `2*A167936(A004273(n))` -/
def P1939908638923251115.Spec : Prop :=
  ∀ n, P1939908638923251115.a n = A080643 n

end A080643

/-! ## A080643.P11301764407165342639

`2*(A081294(n)-A133494(n))`
-/

namespace A080643.P11301764407165342639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081294 n - A133494 n)

end

end A080643.P11301764407165342639

namespace A080643

/-- `2*(A081294(n)-A133494(n))` -/
def P11301764407165342639.Spec : Prop :=
  ∀ n, P11301764407165342639.a n = A080643 n

end A080643

/-! ## A080643.P10711588172037453521

`2*Δ[A087433(n)-A007051(n)]`
-/

namespace A080643.P10711588172037453521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087433 n - A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A080643.P10711588172037453521

namespace A080643

/-- `2*Δ[A087433(n)-A007051(n)]` -/
def P10711588172037453521.Spec : Prop :=
  ∀ n, P10711588172037453521.a n = A080643 n

end A080643

/-! ## A080643.P3584085171671344708

`floor(A255463(n)/3)`
-/

namespace A080643.P3584085171671344708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A255463 n : ℚ) / 3⌋

end

end A080643.P3584085171671344708

namespace A080643

/-- `floor(A255463(n)/3)` -/
def P3584085171671344708.Spec : Prop :=
  ∀ n, P3584085171671344708.a n = A080643 n

end A080643

/-! ## A080643.P13667715755355975682

`Δ[floor(A155609(n)/3)]`
-/

namespace A080643.P13667715755355975682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155609 n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080643.P13667715755355975682

namespace A080643

/-- `Δ[floor(A155609(n)/3)]` -/
def P13667715755355975682.Spec : Prop :=
  ∀ n, P13667715755355975682.a n = A080643 n

end A080643

/-! ## A080643.P947853056067381768

`Δ[A002450(n)-floor(3^(n-1))]`
-/

namespace A080643.P947853056067381768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n - ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080643.P947853056067381768

namespace A080643

/-- `Δ[A002450(n)-floor(3^(n-1))]` -/
def P947853056067381768.Spec : Prop :=
  ∀ n, P947853056067381768.a n = A080643 n

end A080643

/-! ## A080643.P15124588789604495235

`Δ[record[round((-2)^n/3)]-A140429(n)]`
-/

namespace A080643.P15124588789604495235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((-2) ^ n : ℚ) / 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - A140429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080643.P15124588789604495235

namespace A080643

/-- `Δ[record[round((-2)^n/3)]-A140429(n)]` -/
def P15124588789604495235.Spec : Prop :=
  ∀ n, P15124588789604495235.a n = A080643 n

end A080643

/-! ## A080643.P721068745752092841

`A085350(n)%A093834(n)`
-/

namespace A080643.P721068745752092841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085350 n) (A093834 n)

end

end A080643.P721068745752092841

namespace A080643

/-- `A085350(n)%A093834(n)` -/
def P721068745752092841.Spec : Prop :=
  ∀ n, P721068745752092841.a n = A080643 n

end A080643

/-! ## A080643.P15563045916118473461

`ceil(A255463(n)/3)%C(A000079(n+1), 2)`
-/

namespace A080643.P15563045916118473461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A255463 n : ℚ) / 3⌉ (Nat.choose (A000079 (n + 1)).toNat 2 : ℤ)

end

end A080643.P15563045916118473461

namespace A080643

/-- `ceil(A255463(n)/3)%C(A000079(n+1), 2)` -/
def P15563045916118473461.Spec : Prop :=
  ∀ n, P15563045916118473461.a n = A080643 n

end A080643

/-! ## A080643.P2771946963969565765

`record[(2-A237420(n))*A167936(n)]`
-/

namespace A080643.P2771946963969565765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A237420 n) * A167936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080643.P2771946963969565765

namespace A080643

/-- `record[(2-A237420(n))*A167936(n)]` -/
def P2771946963969565765.Spec : Prop :=
  ∀ n, P2771946963969565765.a n = A080643 n

end A080643

/-!
# A080644: a(1) = 5; for n>1, a(n) is taken to be the smallest integer greater than a(n-1) which is consistent with the condition "n is a member of the sequence if and only if a(n) is divisible by 6".

The programs for A080644, there is no canonical definition to state claims against.
-/

/-! ## A080644.P6755772595270059817

`eq[A079275(n+2), A200893(n+4)]+5`
-/

namespace A080644.P6755772595270059817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079275 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200893 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 5

end

end A080644.P6755772595270059817

/-! ## A080644.P11405424742882660429

`∑[A277744(A285806(n+1)+A285773(n))]`
-/

namespace A080644.P11405424742882660429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277744 (A285806 (n + 1) + A285773 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080644.P11405424742882660429

/-! ## A080644.P12174103681262539954

`lt[A113370(A020657(n+1)), A136400(2*n+1)]`
-/

namespace A080644.P12174103681262539954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113370 (A020657 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080644.P12174103681262539954

/-!
# A080645: a(1) = 1; for n>1, a(n) is taken to be the smallest integer greater than a(n-1) which is consistent with the condition "for n>1, if n is a member of the sequence then a(n) is even".

The programs for A080645, the canonical program `A080645.P11951130920972636846` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080645 has offset 1).

The definition of A080645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080645.P11951130920972636846

`lt[xor(lcm(2, n), xor(2, n)), 2*n]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080645

/-- `lt[xor(lcm(2, n), xor(2, n)), 2*n]` -/
def P11951130920972636846.Spec : Prop :=
  ∀ n, (P11951130920972636846.a n : ℤ) = A080645 (n + 1)

theorem P11951130920972636846.correct : P11951130920972636846.Spec := by
  intro n
  simp only [A080645, Nat.add_sub_cancel]

end A080645

/-! ## A080645.P8442374159927507978

`∑[floor(a(floor(n/2)))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=1, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A080645.P8442374159927507978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2, 1, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080645.P8442374159927507978

namespace A080645

/-- `∑[floor(a(floor(n/2)))]` -/
def P8442374159927507978.Spec : Prop :=
  ∀ n, (P8442374159927507978.a n : ℤ) = A080645 (n + 1)

end A080645

/-! ## A080645.P17830483967711843265

`∑[char[or(n, a(n-1)+1)]+1]` with `a(0)=2`
-/

namespace A080645.P17830483967711843265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  Nat.lor n (f2 (n - 1) + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080645.P17830483967711843265

namespace A080645

/-- `∑[char[or(n, a(n-1)+1)]+1]` -/
def P17830483967711843265.Spec : Prop :=
  ∀ n, (P17830483967711843265.a n : ℤ) = A080645 (n + 1)

end A080645

/-! ## A080645.P10956248140979685076

`comp[or(n, a(floor(n/2)))+n]+1` with `a(0)=2`
-/

namespace A080645.P10956248140979685076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.lor n (f1 ⌊(n : ℚ) / 2⌋.toNat) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A080645.P10956248140979685076

namespace A080645

/-- `comp[or(n, a(floor(n/2)))+n]+1` -/
def P10956248140979685076.Spec : Prop :=
  ∀ n, (P10956248140979685076.a n : ℤ) = A080645 (n + 1)

end A080645

/-! ## A080645.P9489502954196064329

`comp[2*lt[2*n, xor(n, 2*n)]]+1`
-/

namespace A080645.P9489502954196064329
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A080645.P9489502954196064329

namespace A080645

/-- `comp[2*lt[2*n, xor(n, 2*n)]]+1` -/
def P9489502954196064329.Spec : Prop :=
  ∀ n, (P9489502954196064329.a n : ℤ) = A080645 (n + 1)

end A080645

/-! ## A080645.P12680388922565961401

`lt[xor((n-1)^(n%2), floor(n/2)), n]`
-/

namespace A080645.P12680388922565961401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((n : ℤ) - 1) ^ (n % 2)) ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A080645.P12680388922565961401

namespace A080645

/-- `lt[xor((n-1)^(n%2), floor(n/2)), n]` -/
def P12680388922565961401.Spec : Prop :=
  ∀ n, (P12680388922565961401.a n : ℤ) = A080645 (n + 1)

end A080645

/-! ## A080645.P13850036219985442932

`a(n-1)+floor(or(n, a(n-1))/n)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A080645.P13850036219985442932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) + ⌊(Int.lor (n : ℤ) (a (n - 1)) : ℚ) / (n : ℚ)⌋

end

end A080645.P13850036219985442932

namespace A080645

/-- `a(n-1)+floor(or(n, a(n-1))/n)` -/
def P13850036219985442932.Spec : Prop :=
  ∀ n, P13850036219985442932.a n = A080645 (n + 1)

end A080645

/-! ## A080645.P6642170637281295082

`a(n-1)-floor(xor(1-n, a(n-1))/a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A080645.P6642170637281295082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - ⌊(Int.xor (1 - (n : ℤ)) (a (n - 1)) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A080645.P6642170637281295082

namespace A080645

/-- `a(n-1)-floor(xor(1-n, a(n-1))/a(n-1))` -/
def P6642170637281295082.Spec : Prop :=
  ∀ n, P6642170637281295082.a n = A080645 (n + 1)

end A080645

/-! ## A080645.P17204673228334032421

`comp[A171757(n+1)]+1`
-/

namespace A080645.P17204673228334032421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A080645.P17204673228334032421

namespace A080645

/-- `comp[A171757(n+1)]+1` -/
def P17204673228334032421.Spec : Prop :=
  ∀ n, (P17204673228334032421.a n : ℤ) = A080645 (n + 1)

end A080645

/-! ## A080645.P179717747525246811

`comp[A010078(2*(n+1))]+1`
-/

namespace A080645.P179717747525246811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A080645.P179717747525246811

namespace A080645

/-- `comp[A010078(2*(n+1))]+1` -/
def P179717747525246811.Spec : Prop :=
  ∀ n, (P179717747525246811.a n : ℤ) = A080645 (n + 1)

end A080645

/-!
# A080646: a(1) = 3; for n>1, a(n) is taken to be the smallest integer greater than a(n-1) which is consistent with the condition "if n is a member of the sequence then a(n) is divisible by 4".

The programs for A080646, the canonical program `A080646.P13693422437597070673` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080646 has offset 1).

The definition of A080646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080646.P2819326650551717850

`∪[A080633(n+2)-1, 4*(n+1)]`
-/

namespace A080646.P2819326650551717850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080633 (n + 2) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A080646.P2819326650551717850

namespace A080646

/-- `∪[A080633(n+2)-1, 4*(n+1)]` -/
def P2819326650551717850.Spec : Prop :=
  ∀ n, (P2819326650551717850.a n : ℤ) = A080646 (n + 1)

end A080646

/-! ## A080646.P4910304551313737887

`A080633(n+2)-1`
-/

namespace A080646.P4910304551313737887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080633 (n + 2) - 1

end

end A080646.P4910304551313737887

namespace A080646

/-- `A080633(n+2)-1` -/
def P4910304551313737887.Spec : Prop :=
  ∀ n, P4910304551313737887.a n = A080646 (n + 1)

end A080646

/-! ## A080646.P13610834806679631890

`∑[A070529(Δ[A080633(n+1)])]+2`
-/

namespace A080646.P13610834806679631890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080633 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070529 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A080646.P13610834806679631890

namespace A080646

/-- `∑[A070529(Δ[A080633(n+1)])]+2` -/
def P13610834806679631890.Spec : Prop :=
  ∀ n, P13610834806679631890.a n = A080646 (n + 1)

end A080646

/-! ## A080646.P2879742843267665480

`∑[A181926(Δ[A080633(n+1)])]+2`
-/

namespace A080646.P2879742843267665480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080633 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181926 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A080646.P2879742843267665480

namespace A080646

/-- `∑[A181926(Δ[A080633(n+1)])]+2` -/
def P2879742843267665480.Spec : Prop :=
  ∀ n, P2879742843267665480.a n = A080646 (n + 1)

end A080646

/-! ## A080646.P5866785116382883406

`A260196(n+2)+A080633(n+2)`
-/

namespace A080646.P5866785116382883406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A080633 (n + 2)

end

end A080646.P5866785116382883406

namespace A080646

/-- `A260196(n+2)+A080633(n+2)` -/
def P5866785116382883406.Spec : Prop :=
  ∀ n, P5866785116382883406.a n = A080646 (n + 1)

end A080646

/-! ## A080646.P13693422437597070673

`A080703(2*(n+1))/2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A080646

/-- `A080703(2*(n+1))/2` -/
def P13693422437597070673.Spec : Prop :=
  ∀ n, P13693422437597070673.a n = (A080646 (n + 1) : ℚ)

end A080646

/-! ## A080646.P10003405056961094704

`(A353651(2*n+5)-3)/2`
-/

namespace A080646.P10003405056961094704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353651 (2 * n + 5) - 3 : ℚ) / 2

end

end A080646.P10003405056961094704

namespace A080646

/-- `(A353651(2*n+5)-3)/2` -/
def P10003405056961094704.Spec : Prop :=
  ∀ n, P10003405056961094704.a n = (A080646 (n + 1) : ℚ)

end A080646

/-! ## A080646.P3256332421253437838

`A023443(A080633(n+2))`
-/

namespace A080646.P3256332421253437838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A080633 (n + 2)).toNat

end

end A080646.P3256332421253437838

namespace A080646

/-- `A023443(A080633(n+2))` -/
def P3256332421253437838.Spec : Prop :=
  ∀ n, P3256332421253437838.a n = A080646 (n + 1)

end A080646

/-! ## A080646.P16959270940453650948

`A140106(2*A080633(n+2))`
-/

namespace A080646.P16959270940453650948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A080633 (n + 2)).toNat

end

end A080646.P16959270940453650948

namespace A080646

/-- `A140106(2*A080633(n+2))` -/
def P16959270940453650948.Spec : Prop :=
  ∀ n, P16959270940453650948.a n = A080646 (n + 1)

end A080646

/-! ## A080646.P5959713588689354066

`A004526(A353651(2*n+5))-1`
-/

namespace A080646.P5959713588689354066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A353651 (2 * n + 5)).toNat - 1

end

end A080646.P5959713588689354066

namespace A080646

/-- `A004526(A353651(2*n+5))-1` -/
def P5959713588689354066.Spec : Prop :=
  ∀ n, P5959713588689354066.a n = A080646 (n + 1)

end A080646

/-!
# A080647: Sum of prime factors of phi(n).

The programs for A080647, the canonical program `A080647.P388224821477893215` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080647 has offset 3).

The definition of A080647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080647.P13596034716465872504

`∑{p}[A000010(n+3), #]`
-/

namespace A080647.P13596034716465872504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080647.P13596034716465872504

namespace A080647

/-- `∑{p}[A000010(n+3), #]` -/
def P13596034716465872504.Spec : Prop :=
  ∀ n, (P13596034716465872504.a n : ℤ) = A080647 (n + 3)

end A080647

/-! ## A080647.P15790742557710131168

`∑{p}[A062570(n+3), #]`
-/

namespace A080647.P15790742557710131168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080647.P15790742557710131168

namespace A080647

/-- `∑{p}[A062570(n+3), #]` -/
def P15790742557710131168.Spec : Prop :=
  ∀ n, (P15790742557710131168.a n : ℤ) = A080647 (n + 3)

end A080647

/-! ## A080647.P388224821477893215

`∑{p}[A080400(n+3), #]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A080647

/-- `∑{p}[A080400(n+3), #]` -/
def P388224821477893215.Spec : Prop :=
  ∀ n, (P388224821477893215.a n : ℤ) = A080647 (n + 3)

theorem P388224821477893215.correct : P388224821477893215.Spec := by
  intro n
  simp only [A080647, Nat.add_sub_cancel]

end A080647

/-! ## A080647.P4100949608342703822

`∑{p}[Δ[A018805(n+2)], #]`
-/

namespace A080647.P4100949608342703822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080647.P4100949608342703822

namespace A080647

/-- `∑{p}[Δ[A018805(n+2)], #]` -/
def P4100949608342703822.Spec : Prop :=
  ∀ n, (P4100949608342703822.a n : ℤ) = A080647 (n + 3)

end A080647

/-! ## A080647.P9780056877604899557

`A008472(A000010(n+3))`
-/

namespace A080647.P9780056877604899557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A000010 (n + 3)).toNat

end

end A080647.P9780056877604899557

namespace A080647

/-- `A008472(A000010(n+3))` -/
def P9780056877604899557.Spec : Prop :=
  ∀ n, P9780056877604899557.a n = A080647 (n + 3)

end A080647

/-! ## A080647.P18330401799675318653

`A100030(A002616(n+3))`
-/

namespace A080647.P18330401799675318653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100030 (A002616 (n + 3)).toNat

end

end A080647.P18330401799675318653

namespace A080647

/-- `A100030(A002616(n+3))` -/
def P18330401799675318653.Spec : Prop :=
  ∀ n, P18330401799675318653.a n = A080647 (n + 3)

end A080647

/-! ## A080647.P12477082058020869659

`A100030(A067541(n+2))`
-/

namespace A080647.P12477082058020869659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100030 (A067541 (n + 2)).toNat

end

end A080647.P12477082058020869659

namespace A080647

/-- `A100030(A067541(n+2))` -/
def P12477082058020869659.Spec : Prop :=
  ∀ n, P12477082058020869659.a n = A080647 (n + 3)

end A080647

/-! ## A080647.P1960058572964921097

`A100030(A023022(n+3))`
-/

namespace A080647.P1960058572964921097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100030 (A023022 (n + 3)).toNat

end

end A080647.P1960058572964921097

namespace A080647

/-- `A100030(A023022(n+3))` -/
def P1960058572964921097.Spec : Prop :=
  ∀ n, P1960058572964921097.a n = A080647 (n + 3)

end A080647

/-! ## A080647.P10728502245377029550

`∑{p}[A002246(n+3), #]`
-/

namespace A080647.P10728502245377029550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002246 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080647.P10728502245377029550

namespace A080647

/-- `∑{p}[A002246(n+3), #]` -/
def P10728502245377029550.Spec : Prop :=
  ∀ n, (P10728502245377029550.a n : ℤ) = A080647 (n + 3)

end A080647

/-! ## A080647.P6614845053076102632

`∑{p}[A002322(n+3), #]`
-/

namespace A080647.P6614845053076102632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080647.P6614845053076102632

namespace A080647

/-- `∑{p}[A002322(n+3), #]` -/
def P6614845053076102632.Spec : Prop :=
  ∀ n, (P6614845053076102632.a n : ℤ) = A080647 (n + 3)

end A080647

/-! ## A080647.P7183685086148107687

`∑{p}[A011773(n+3), #]`
-/

namespace A080647.P7183685086148107687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011773 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080647.P7183685086148107687

namespace A080647

/-- `∑{p}[A011773(n+3), #]` -/
def P7183685086148107687.Spec : Prop :=
  ∀ n, (P7183685086148107687.a n : ℤ) = A080647 (n + 3)

end A080647

/-! ## A080647.P5970862273420737462

`∑{p}[A140434(n+3), #]`
-/

namespace A080647.P5970862273420737462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140434 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080647.P5970862273420737462

namespace A080647

/-- `∑{p}[A140434(n+3), #]` -/
def P5970862273420737462.Spec : Prop :=
  ∀ n, (P5970862273420737462.a n : ℤ) = A080647 (n + 3)

end A080647

/-! ## A080647.P14506561289097222219

`∑{p}[A277030(n+3), #]`
-/

namespace A080647.P14506561289097222219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277030 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080647.P14506561289097222219

namespace A080647

/-- `∑{p}[A277030(n+3), #]` -/
def P14506561289097222219.Spec : Prop :=
  ∀ n, (P14506561289097222219.a n : ℤ) = A080647 (n + 3)

end A080647

/-! ## A080647.P445063892100875252

`∑{p}[A322321(n+3), #]`
-/

namespace A080647.P445063892100875252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322321 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080647.P445063892100875252

namespace A080647

/-- `∑{p}[A322321(n+3), #]` -/
def P445063892100875252.Spec : Prop :=
  ∀ n, (P445063892100875252.a n : ℤ) = A080647 (n + 3)

end A080647

/-! ## A080647.P13812971914977345824

`∑{p}[Δ[A100449(n+2)], #]`
-/

namespace A080647.P13812971914977345824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080647.P13812971914977345824

namespace A080647

/-- `∑{p}[Δ[A100449(n+2)], #]` -/
def P13812971914977345824.Spec : Prop :=
  ∀ n, (P13812971914977345824.a n : ℤ) = A080647 (n + 3)

end A080647

/-! ## A080647.P15659432320516796596

`∑{p}[A109606(n+3)+1, #]`
-/

namespace A080647.P15659432320516796596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080647.P15659432320516796596

namespace A080647

/-- `∑{p}[A109606(n+3)+1, #]` -/
def P15659432320516796596.Spec : Prop :=
  ∀ n, (P15659432320516796596.a n : ℤ) = A080647 (n + 3)

end A080647

/-! ## A080647.P8089928949026036236

`A008472(A002322(n+3))`
-/

namespace A080647.P8089928949026036236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A002322 (n + 3)).toNat

end

end A080647.P8089928949026036236

namespace A080647

/-- `A008472(A002322(n+3))` -/
def P8089928949026036236.Spec : Prop :=
  ∀ n, P8089928949026036236.a n = A080647 (n + 3)

end A080647

/-! ## A080647.P8433892696774807459

`A008472(2*(A109606(n+3)+1))`
-/

namespace A080647.P8433892696774807459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (2 * (A109606 (n + 3) + 1)).toNat

end

end A080647.P8433892696774807459

namespace A080647

/-- `A008472(2*(A109606(n+3)+1))` -/
def P8433892696774807459.Spec : Prop :=
  ∀ n, P8433892696774807459.a n = A080647 (n + 3)

end A080647

/-! ## A080647.P12087244368396463851

`A008472(n+3-A051953(n+3))`
-/

namespace A080647.P12087244368396463851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 ((n + 3 : ℤ) - A051953 (n + 3)).toNat

end

end A080647.P12087244368396463851

namespace A080647

/-- `A008472(n+3-A051953(n+3))` -/
def P12087244368396463851.Spec : Prop :=
  ∀ n, P12087244368396463851.a n = A080647 (n + 3)

end A080647

/-! ## A080647.P6832592807020865921

`∑{p}[A384710(n+3), #]`
-/

namespace A080647.P6832592807020865921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384710 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080647.P6832592807020865921

namespace A080647

/-- `∑{p}[A384710(n+3), #]` -/
def P6832592807020865921.Spec : Prop :=
  ∀ n, (P6832592807020865921.a n : ℤ) = A080647 (n + 3)

end A080647

/-!
# A080648: Sum of prime factors of Fibonacci(n).

The programs for A080648, there is no canonical definition to state claims against.
-/

/-! ## A080648.P13054347345773204432

`∑{p}[round(ϕ*a(n-1)), #]` with `a(0)=0, a(1)=1`
-/

namespace A080648.P13054347345773204432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080648.P13054347345773204432

/-! ## A080648.P6387565818728933337

`∑{p}[a(n-1)+a(n-2), #]` with `a(0)=1, a(1)=1`
-/

namespace A080648.P6387565818728933337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A080648.P6387565818728933337

/-! ## A080648.P13871274217447559413

`∑{p}[a(n-1)-floor(-a(n-2)), #]` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A080648.P13871274217447559413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) - (-f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080648.P13871274217447559413

/-! ## A080648.P1809925263055695363

`∑{p}[a(n-1)-ceil(-a(n-2)), #]` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A080648.P1809925263055695363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) - (-f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080648.P1809925263055695363

/-! ## A080648.P11797659450825457970

`∑{p}[a(n-1)-round(-a(n-2)), #]` with `a(0)=1, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A080648.P11797659450825457970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) - (-f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080648.P11797659450825457970

/-!
# A080649: Sum of prime factors of sigma(n).

The programs for A080649, the canonical program `A080649.P14861787499067145825` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080649 has offset 2).

The definition of A080649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080649.P14861787499067145825

`∑{p}[∑{d}[n+2, #], #]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080649

/-- `∑{p}[∑{d}[n+2, #], #]` -/
def P14861787499067145825.Spec : Prop :=
  ∀ n, (P14861787499067145825.a n : ℤ) = A080649 (n + 2)

theorem P14861787499067145825.correct : P14861787499067145825.Spec := by
  intro n
  simp only [A080649, Nat.add_sub_cancel]

end A080649

/-! ## A080649.P15111757236126149179

`A008472(∑{d}[n+2, #])`
-/

namespace A080649.P15111757236126149179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A080649.P15111757236126149179

namespace A080649

/-- `A008472(∑{d}[n+2, #])` -/
def P15111757236126149179.Spec : Prop :=
  ∀ n, P15111757236126149179.a n = A080649 (n + 2)

end A080649

/-! ## A080649.P13101580656551656538

`∑{p}[A000203(n+2), #]`
-/

namespace A080649.P13101580656551656538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080649.P13101580656551656538

namespace A080649

/-- `∑{p}[A000203(n+2), #]` -/
def P13101580656551656538.Spec : Prop :=
  ∀ n, (P13101580656551656538.a n : ℤ) = A080649 (n + 2)

end A080649

/-! ## A080649.P13277867272150843567

`∑{p}[A080398(n+2), #]`
-/

namespace A080649.P13277867272150843567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080398 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080649.P13277867272150843567

namespace A080649

/-- `∑{p}[A080398(n+2), #]` -/
def P13277867272150843567.Spec : Prop :=
  ∀ n, (P13277867272150843567.a n : ℤ) = A080649 (n + 2)

end A080649

/-! ## A080649.P2234344511113745127

`∑{p}[A175433(n+2), #]`
-/

namespace A080649.P2234344511113745127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175433 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080649.P2234344511113745127

namespace A080649

/-- `∑{p}[A175433(n+2), #]` -/
def P2234344511113745127.Spec : Prop :=
  ∀ n, (P2234344511113745127.a n : ℤ) = A080649 (n + 2)

end A080649

/-! ## A080649.P5081980939248516929

`A008472(A000203(n+2))`
-/

namespace A080649.P5081980939248516929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A000203 (n + 2)).toNat

end

end A080649.P5081980939248516929

namespace A080649

/-- `A008472(A000203(n+2))` -/
def P5081980939248516929.Spec : Prop :=
  ∀ n, P5081980939248516929.a n = A080649 (n + 2)

end A080649

/-! ## A080649.P12386237048622684178

`A001414(A080398(n+2))`
-/

namespace A080649.P12386237048622684178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A080398 (n + 2)).toNat

end

end A080649.P12386237048622684178

namespace A080649

/-- `A001414(A080398(n+2))` -/
def P12386237048622684178.Spec : Prop :=
  ∀ n, P12386237048622684178.a n = A080649 (n + 2)

end A080649

/-! ## A080649.P16207505031460722316

`A008472(A175433(n+2))`
-/

namespace A080649.P16207505031460722316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A175433 (n + 2)).toNat

end

end A080649.P16207505031460722316

namespace A080649

/-- `A008472(A175433(n+2))` -/
def P16207505031460722316.Spec : Prop :=
  ∀ n, P16207505031460722316.a n = A080649 (n + 2)

end A080649

/-! ## A080649.P760175373945141857

`A008472(A074400(n+2)/2)`
-/

namespace A080649.P760175373945141857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.roundAway ((A074400 (n + 2) : ℚ) / 2)).toNat

end

end A080649.P760175373945141857

namespace A080649

/-- `A008472(A074400(n+2)/2)` -/
def P760175373945141857.Spec : Prop :=
  ∀ n, P760175373945141857.a n = A080649 (n + 2)

end A080649

/-! ## A080649.P14796436368001728306

`A008472(A023890(n+2)+A008472(n+2))`
-/

namespace A080649.P14796436368001728306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A023890 (n + 2) + A008472 (n + 2)).toNat

end

end A080649.P14796436368001728306

namespace A080649

/-- `A008472(A023890(n+2)+A008472(n+2))` -/
def P14796436368001728306.Spec : Prop :=
  ∀ n, P14796436368001728306.a n = A080649 (n + 2)

end A080649

/-! ## A080649.P9946179124063503737

`A008472(A318677(n+2)+A318676(n+2))`
-/

namespace A080649.P9946179124063503737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A318677 (n + 2) + A318676 (n + 2)).toNat

end

end A080649.P9946179124063503737

namespace A080649

/-- `A008472(A318677(n+2)+A318676(n+2))` -/
def P9946179124063503737.Spec : Prop :=
  ∀ n, P9946179124063503737.a n = A080649 (n + 2)

end A080649

/-! ## A080649.P17160554398068780077

`∑{p}[A143348(n+2), #]`
-/

namespace A080649.P17160554398068780077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080649.P17160554398068780077

namespace A080649

/-- `∑{p}[A143348(n+2), #]` -/
def P17160554398068780077.Spec : Prop :=
  ∀ n, (P17160554398068780077.a n : ℤ) = A080649 (n + 2)

end A080649

/-! ## A080649.P1586095131850613523

`∑{p}[A353783(n+2), #]`
-/

namespace A080649.P1586095131850613523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353783 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080649.P1586095131850613523

namespace A080649

/-- `∑{p}[A353783(n+2), #]` -/
def P1586095131850613523.Spec : Prop :=
  ∀ n, (P1586095131850613523.a n : ℤ) = A080649 (n + 2)

end A080649

/-! ## A080649.P11531183758204884252

`∑{p}[Δ[A160664(n+1)], #]`
-/

namespace A080649.P11531183758204884252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080649.P11531183758204884252

namespace A080649

/-- `∑{p}[Δ[A160664(n+1)], #]` -/
def P11531183758204884252.Spec : Prop :=
  ∀ n, (P11531183758204884252.a n : ℤ) = A080649 (n + 2)

end A080649

/-! ## A080649.P17004158593616315980

`∑{p}[1-A088580(n+2), #]`
-/

namespace A080649.P17004158593616315980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A088580 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080649.P17004158593616315980

namespace A080649

/-- `∑{p}[1-A088580(n+2), #]` -/
def P17004158593616315980.Spec : Prop :=
  ∀ n, (P17004158593616315980.a n : ℤ) = A080649 (n + 2)

end A080649

/-! ## A080649.P12993791031256717518

`∑{p}[A245092(2*n+3), #]`
-/

namespace A080649.P12993791031256717518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080649.P12993791031256717518

namespace A080649

/-- `∑{p}[A245092(2*n+3), #]` -/
def P12993791031256717518.Spec : Prop :=
  ∀ n, (P12993791031256717518.a n : ℤ) = A080649 (n + 2)

end A080649

/-! ## A080649.P16733440510208710256

`A008472(A353783(n+2))`
-/

namespace A080649.P16733440510208710256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A353783 (n + 2)).toNat

end

end A080649.P16733440510208710256

namespace A080649

/-- `A008472(A353783(n+2))` -/
def P16733440510208710256.Spec : Prop :=
  ∀ n, P16733440510208710256.a n = A080649 (n + 2)

end A080649

/-! ## A080649.P17008183755562549188

`A008472(sqrt(A072861(n+2)))`
-/

namespace A080649.P17008183755562549188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 2) : ℝ))).toNat

end

end A080649.P17008183755562549188

namespace A080649

/-- `A008472(sqrt(A072861(n+2)))` -/
def P17008183755562549188.Spec : Prop :=
  ∀ n, P17008183755562549188.a n = A080649 (n + 2)

end A080649

/-! ## A080649.P10343677015150201342

`A008472(Δ[A160664(n+1)])`
-/

namespace A080649.P10343677015150201342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (n + 1) - f1 n).toNat

end

end A080649.P10343677015150201342

namespace A080649

/-- `A008472(Δ[A160664(n+1)])` -/
def P10343677015150201342.Spec : Prop :=
  ∀ n, P10343677015150201342.a n = A080649 (n + 2)

end A080649

/-! ## A080649.P14681358760929684890

`A008472(A001065(n+2)+n+2)`
-/

namespace A080649.P14681358760929684890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A001065 (n + 2) + (n + 2 : ℤ)).toNat

end

end A080649.P14681358760929684890

namespace A080649

/-- `A008472(A001065(n+2)+n+2)` -/
def P14681358760929684890.Spec : Prop :=
  ∀ n, P14681358760929684890.a n = A080649 (n + 2)

end A080649

/-!
# A080650: Numbers n such that phi(n) and sigma(n) have the same number of divisors.

The programs for A080650, the canonical program `A080650.P7881313728176217598` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080650 has offset 1).

The definition of A080650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080650.P7881313728176217598

`eq[A000005(∑{d}[n+1, #]), A062821(n+1)]+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A080650

/-- `eq[A000005(∑{d}[n+1, #]), A062821(n+1)]+1` -/
def P7881313728176217598.Spec : Prop :=
  ∀ n, (P7881313728176217598.a n : ℤ) = A080650 (n + 1)

theorem P7881313728176217598.correct : P7881313728176217598.Spec := by
  intro n
  simp only [A080650, Nat.add_sub_cancel]

end A080650

/-! ## A080650.P12290333004552408540

`eq[A000005(A000010(n+1)), A062068(n+1)]+1`
-/

namespace A080650.P12290333004552408540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A080650.P12290333004552408540

namespace A080650

/-- `eq[A000005(A000010(n+1)), A062068(n+1)]+1` -/
def P12290333004552408540.Spec : Prop :=
  ∀ n, (P12290333004552408540.a n : ℤ) = A080650 (n + 1)

end A080650

/-! ## A080650.P14786859567204720387

`eq[A000005(A000203(n+1)), A062821(n+1)]+1`
-/

namespace A080650.P14786859567204720387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A080650.P14786859567204720387

namespace A080650

/-- `eq[A000005(A000203(n+1)), A062821(n+1)]+1` -/
def P14786859567204720387.Spec : Prop :=
  ∀ n, (P14786859567204720387.a n : ℤ) = A080650 (n + 1)

end A080650

/-! ## A080650.P8134616455670977483

`eq[A000005(A039653(n+1)+1), A062821(n+1)]+1`
-/

namespace A080650.P8134616455670977483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A039653 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A080650.P8134616455670977483

namespace A080650

/-- `eq[A000005(A039653(n+1)+1), A062821(n+1)]+1` -/
def P8134616455670977483.Spec : Prop :=
  ∀ n, (P8134616455670977483.a n : ℤ) = A080650 (n + 1)

end A080650

/-!
# A080651: Numbers n such that n and Fibonacci(n) have the same number of divisors.

The programs for A080651, there is no canonical definition to state claims against.
-/

/-! ## A080651.P7433134845271804609

`eq[Δ[A006218(n)], A063375(n+1)]+1`
-/

namespace A080651.P7433134845271804609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A080651.P7433134845271804609

/-! ## A080651.P1352423337123469171

`eq[A000005(n+1), A063375(n+1)]+1`
-/

namespace A080651.P1352423337123469171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A080651.P1352423337123469171

/-! ## A080651.P5324364929555151477

`eq[A063375(n+1), A337454(n+1)]+1`
-/

namespace A080651.P5324364929555151477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337454 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A080651.P5324364929555151477

/-! ## A080651.P7869688824589720456

`eq[A032741(n+1)+1, (A337923(n+1)+1)*A193292(n+1)]+1`
-/

namespace A080651.P7869688824589720456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A337923 (n + 1) + 1) * A193292 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A080651.P7869688824589720456

/-! ## A080651.P10089098693966077997

`eq[A334954(n+1)-1, (A337923(n+1)+1)*A193292(n+1)]+1`
-/

namespace A080651.P10089098693966077997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A337923 (n + 1) + 1) * A193292 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A080651.P10089098693966077997

/-!
# A080652: a(1)=2; for n>1, a(n)=a(n-1)+3 if n is already in the sequence, a(n)=a(n-1)+2 otherwise.

The programs for A080652, the canonical program `A080652.P332993070091390049` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080652 has offset 1).

The definition of A080652 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086377, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A080652.P332993070091390049

`A086377(n+1)+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A080652

/-- `A086377(n+1)+1` -/
def P332993070091390049.Spec : Prop :=
  ∀ n, P332993070091390049.a n = A080652 (n + 1)

theorem P332993070091390049.correct : P332993070091390049.Spec := by
  intro n
  simp only [A080652, Nat.add_sub_cancel]

end A080652

/-! ## A080652.P11124891025636397337

`floor(2*sqrt(∑[n])+2+n)`
-/

namespace A080652.P11124891025636397337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + 2 + (n : ℝ)⌋

end

end A080652.P11124891025636397337

namespace A080652

/-- `floor(2*sqrt(∑[n])+2+n)` -/
def P11124891025636397337.Spec : Prop :=
  ∀ n, P11124891025636397337.a n = A080652 (n + 1)

end A080652

/-! ## A080652.P15431567961792997956

`-xor(comp[round(n/sqrt(2))+n], -1)`
-/

namespace A080652.P15431567961792997956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.sqrt (2 : ℝ)) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (-1)

end

end A080652.P15431567961792997956

namespace A080652

/-- `-xor(comp[round(n/sqrt(2))+n], -1)` -/
def P15431567961792997956.Spec : Prop :=
  ∀ n, P15431567961792997956.a n = A080652 (n + 1)

end A080652

/-! ## A080652.P8616755114708885861

`comp[round(n/sqrt(2))+n]+(n%2)!`
-/

namespace A080652.P8616755114708885861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.sqrt (2 : ℝ)) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + Nat.factorial (n % 2)

end

end A080652.P8616755114708885861

namespace A080652

/-- `comp[round(n/sqrt(2))+n]+(n%2)!` -/
def P8616755114708885861.Spec : Prop :=
  ∀ n, (P8616755114708885861.a n : ℤ) = A080652 (n + 1)

end A080652

/-! ## A080652.P15498596212189291550

`comp[round(n/sqrt(2))+n]+(1-and(2, n))²`
-/

namespace A080652.P15498596212189291550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.sqrt (2 : ℝ)) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (1 - (Nat.land 2 n : ℤ)) ^ 2

end

end A080652.P15498596212189291550

namespace A080652

/-- `comp[round(n/sqrt(2))+n]+(1-and(2, n))²` -/
def P15498596212189291550.Spec : Prop :=
  ∀ n, P15498596212189291550.a n = A080652 (n + 1)

end A080652

/-! ## A080652.P14653416764051796554

`comp[round(n/sqrt(2))+n]+(or(1, -n)%2)²`
-/

namespace A080652.P14653416764051796554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.sqrt (2 : ℝ)) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + Int.tmod (Int.lor 1 (-(n : ℤ))) 2 ^ 2

end

end A080652.P14653416764051796554

namespace A080652

/-- `comp[round(n/sqrt(2))+n]+(or(1, -n)%2)²` -/
def P14653416764051796554.Spec : Prop :=
  ∀ n, P14653416764051796554.a n = A080652 (n + 1)

end A080652

/-! ## A080652.P8514800099275643582

`A001953(n)+2+n`
-/

namespace A080652.P8514800099275643582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 n + 2 + (n : ℤ)

end

end A080652.P8514800099275643582

namespace A080652

/-- `A001953(n)+2+n` -/
def P8514800099275643582.Spec : Prop :=
  ∀ n, P8514800099275643582.a n = A080652 (n + 1)

end A080652

/-! ## A080652.P5708757567915201511

`A001954(n)+1-n`
-/

namespace A080652.P5708757567915201511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 n + (1 - (n : ℤ))

end

end A080652.P5708757567915201511

namespace A080652

/-- `A001954(n)+1-n` -/
def P5708757567915201511.Spec : Prop :=
  ∀ n, P5708757567915201511.a n = A080652 (n + 1)

end A080652

/-! ## A080652.P14657186492658572781

`A184119(n+1)-n`
-/

namespace A080652.P14657186492658572781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184119 (n + 1) - (n : ℤ)

end

end A080652.P14657186492658572781

namespace A080652

/-- `A184119(n+1)-n` -/
def P14657186492658572781.Spec : Prop :=
  ∀ n, P14657186492658572781.a n = A080652 (n + 1)

end A080652

/-! ## A080652.P5472675301598516644

`∑[A189572(n+1)+2]`
-/

namespace A080652.P5472675301598516644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189572 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080652.P5472675301598516644

namespace A080652

/-- `∑[A189572(n+1)+2]` -/
def P5472675301598516644.Spec : Prop :=
  ∀ n, P5472675301598516644.a n = A080652 (n + 1)

end A080652

/-! ## A080652.P4765211422630156416

`(A363406(n+1)+1)/2`
-/

namespace A080652.P4765211422630156416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363406 (n + 1) + 1 : ℚ) / 2

end

end A080652.P4765211422630156416

namespace A080652

/-- `(A363406(n+1)+1)/2` -/
def P4765211422630156416.Spec : Prop :=
  ∀ n, P4765211422630156416.a n = (A080652 (n + 1) : ℚ)

end A080652

/-! ## A080652.P10681869995912366907

`A136119(n+1)+1+n`
-/

namespace A080652.P10681869995912366907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136119 (n + 1) + 1 + (n : ℤ)

end

end A080652.P10681869995912366907

namespace A080652

/-- `A136119(n+1)+1+n` -/
def P10681869995912366907.Spec : Prop :=
  ∀ n, P10681869995912366907.a n = A080652 (n + 1)

end A080652

/-! ## A080652.P4002481657564340104

`ceil(A215247(n+1)/2)+1`
-/

namespace A080652.P4002481657564340104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A215247 (n + 1) : ℚ) / 2⌉ + 1

end

end A080652.P4002481657564340104

namespace A080652

/-- `ceil(A215247(n+1)/2)+1` -/
def P4002481657564340104.Spec : Prop :=
  ∀ n, P4002481657564340104.a n = A080652 (n + 1)

end A080652

/-! ## A080652.P15201454718476379903

`A189574(n+1)+2*(n+1)`
-/

namespace A080652.P15201454718476379903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189574 (n + 1) + (2 * (n + 1) : ℤ)

end

end A080652.P15201454718476379903

namespace A080652

/-- `A189574(n+1)+2*(n+1)` -/
def P15201454718476379903.Spec : Prop :=
  ∀ n, P15201454718476379903.a n = A080652 (n + 1)

end A080652

/-! ## A080652.P5085550903826086964

`ceil(sqrt(A046092(n)+1))+n+1`
-/

namespace A080652.P5085550903826086964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A046092 n + 1 : ℝ)⌉ + (n + 1 : ℤ)

end

end A080652.P5085550903826086964

namespace A080652

/-- `ceil(sqrt(A046092(n)+1))+n+1` -/
def P5085550903826086964.Spec : Prop :=
  ∀ n, P5085550903826086964.a n = A080652 (n + 1)

end A080652

/-! ## A080652.P12738126053428465964

`A024000(n)+A001954(n)`
-/

namespace A080652.P12738126053428465964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + A001954 n

end

end A080652.P12738126053428465964

namespace A080652

/-- `A024000(n)+A001954(n)` -/
def P12738126053428465964.Spec : Prop :=
  ∀ n, P12738126053428465964.a n = A080652 (n + 1)

end A080652

/-! ## A080652.P5887959288432131819

`A064437(n+2)-1`
-/

namespace A080652.P5887959288432131819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064437 (n + 2) - 1

end

end A080652.P5887959288432131819

namespace A080652

/-- `A064437(n+2)-1` -/
def P5887959288432131819.Spec : Prop :=
  ∀ n, P5887959288432131819.a n = A080652 (n + 1)

end A080652

/-! ## A080652.P3089044070707615736

`∑[A064419(Δ[A064437(n+1)])]`
-/

namespace A080652.P3089044070707615736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064437 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064419 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080652.P3089044070707615736

namespace A080652

/-- `∑[A064419(Δ[A064437(n+1)])]` -/
def P3089044070707615736.Spec : Prop :=
  ∀ n, P3089044070707615736.a n = A080652 (n + 1)

end A080652

/-! ## A080652.P5491398754996961601

`A189572(n+1)+A081841(n+2)`
-/

namespace A080652.P5491398754996961601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189572 (n + 1) + A081841 (n + 2)

end

end A080652.P5491398754996961601

namespace A080652

/-- `A189572(n+1)+A081841(n+2)` -/
def P5491398754996961601.Spec : Prop :=
  ∀ n, P5491398754996961601.a n = A080652 (n + 1)

end A080652

/-!
# A080653: a(1) = 2; for n>1, a(n) is taken to be the smallest integer greater than a(n-1) such that the condition "a(a(n)) is always even" is satisfied.

The programs for A080653, the canonical program `A080653.P3505317268313517772` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080653 has offset 1).

The definition of A080653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080653.P3505317268313517772

`lt[xor(or(n, n+1), a(n-1)), n]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080653

/-- `lt[xor(or(n, n+1), a(n-1)), n]` -/
def P3505317268313517772.Spec : Prop :=
  ∀ n, (P3505317268313517772.a n : ℤ) = A080653 (n + 1)

theorem P3505317268313517772.correct : P3505317268313517772.Spec := by
  intro n
  simp only [A080653, Nat.add_sub_cancel]

end A080653

/-! ## A080653.P5784925299086687232

`∑[abs(a(floor(n/2)-1))]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A080653.P5784925299086687232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1, 1, 2] fun n f1 =>
  f1 (⌊(n : ℚ) / 2⌋ - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080653.P5784925299086687232

namespace A080653

/-- `∑[abs(a(floor(n/2)-1))]` -/
def P5784925299086687232.Spec : Prop :=
  ∀ n, (P5784925299086687232.a n : ℤ) = A080653 (n + 1)

end A080653

/-! ## A080653.P106188399460684034

`comp[and(2^floor(log2(n+1))+n, (-1)^n)]`
-/

namespace A080653.P106188399460684034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 ^ Nat.log 2 (n + 1) + n : ℤ) ((-1) ^ n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080653.P106188399460684034

namespace A080653

/-- `comp[and(2^floor(log2(n+1))+n, (-1)^n)]` -/
def P106188399460684034.Spec : Prop :=
  ∀ n, (P106188399460684034.a n : ℤ) = A080653 (n + 1)

end A080653

/-! ## A080653.P17272806634025100606

`comp[(2^floor(log2(n+1))+n)*(n%2)^n]`
-/

namespace A080653.P17272806634025100606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.log 2 (n + 1) + n) * (n % 2) ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A080653.P17272806634025100606

namespace A080653

/-- `comp[(2^floor(log2(n+1))+n)*(n%2)^n]` -/
def P17272806634025100606.Spec : Prop :=
  ∀ n, (P17272806634025100606.a n : ℤ) = A080653 (n + 1)

end A080653

/-! ## A080653.P16483979572725011671

`comp[2^floor(log2(n+1))+n-2^val(n+1, 2)]`
-/

namespace A080653.P16483979572725011671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.log 2 (n + 1) + n : ℤ) - (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080653.P16483979572725011671

namespace A080653

/-- `comp[2^floor(log2(n+1))+n-2^val(n+1, 2)]` -/
def P16483979572725011671.Spec : Prop :=
  ∀ n, (P16483979572725011671.a n : ℤ) = A080653 (n + 1)

end A080653

/-! ## A080653.P5327260579674322873

`1+A079945(n)`
-/

namespace A080653.P5327260579674322873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A079945 n

end

end A080653.P5327260579674322873

namespace A080653

/-- `1+A079945(n)` -/
def P5327260579674322873.Spec : Prop :=
  ∀ n, P5327260579674322873.a n = A080653 (n + 1)

end A080653

/-! ## A080653.P15425649938557880798

`∑[A079882(n)]+1`
-/

namespace A080653.P15425649938557880798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A080653.P15425649938557880798

namespace A080653

/-- `∑[A079882(n)]+1` -/
def P15425649938557880798.Spec : Prop :=
  ∀ n, P15425649938557880798.a n = A080653 (n + 1)

end A080653

/-! ## A080653.P7421208535537068657

`∑[A079882(or(1, n))]`
-/

namespace A080653.P7421208535537068657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079882 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080653.P7421208535537068657

namespace A080653

/-- `∑[A079882(or(1, n))]` -/
def P7421208535537068657.Spec : Prop :=
  ∀ n, P7421208535537068657.a n = A080653 (n + 1)

end A080653

/-! ## A080653.P9108575941965044331

`comp[A086099(n)+n]`
-/

namespace A080653.P9108575941965044331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086099 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080653.P9108575941965044331

namespace A080653

/-- `comp[A086099(n)+n]` -/
def P9108575941965044331.Spec : Prop :=
  ∀ n, (P9108575941965044331.a n : ℤ) = A080653 (n + 1)

end A080653

/-! ## A080653.P586178740880368935

`comp[2*n-A246591(n)]`
-/

namespace A080653.P586178740880368935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A246591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080653.P586178740880368935

namespace A080653

/-- `comp[2*n-A246591(n)]` -/
def P586178740880368935.Spec : Prop :=
  ∀ n, (P586178740880368935.a n : ℤ) = A080653 (n + 1)

end A080653

/-! ## A080653.P1552305777177304318

`∑[2-A086694(n+1)]+1`
-/

namespace A080653.P1552305777177304318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A086694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A080653.P1552305777177304318

namespace A080653

/-- `∑[2-A086694(n+1)]+1` -/
def P1552305777177304318.Spec : Prop :=
  ∀ n, P1552305777177304318.a n = A080653 (n + 1)

end A080653

/-! ## A080653.P6570463413511623822

`comp[A346303(n+1)-1]+1`
-/

namespace A080653.P6570463413511623822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346303 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A080653.P6570463413511623822

namespace A080653

/-- `comp[A346303(n+1)-1]+1` -/
def P6570463413511623822.Spec : Prop :=
  ∀ n, (P6570463413511623822.a n : ℤ) = A080653 (n + 1)

end A080653

/-! ## A080653.P17892408866260249627

`comp[A171757(n+1)-2]+1`
-/

namespace A080653.P17892408866260249627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171757 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A080653.P17892408866260249627

namespace A080653

/-- `comp[A171757(n+1)-2]+1` -/
def P17892408866260249627.Spec : Prop :=
  ∀ n, (P17892408866260249627.a n : ℤ) = A080653 (n + 1)

end A080653

/-! ## A080653.P15195565870291796625

`2*(n+2)-A066997(n+2)`
-/

namespace A080653.P15195565870291796625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A066997 (n + 2)

end

end A080653.P15195565870291796625

namespace A080653

/-- `2*(n+2)-A066997(n+2)` -/
def P15195565870291796625.Spec : Prop :=
  ∀ n, P15195565870291796625.a n = A080653 (n + 1)

end A080653

/-! ## A080653.P13225403476402649150

`∑[char[A004760(n+1)-2]]+n+2`
-/

namespace A080653.P13225403476402649150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 2)

end

end A080653.P13225403476402649150

namespace A080653

/-- `∑[char[A004760(n+1)-2]]+n+2` -/
def P13225403476402649150.Spec : Prop :=
  ∀ n, (P13225403476402649150.a n : ℤ) = A080653 (n + 1)

end A080653

/-! ## A080653.P14867148877301704478

`A080637(n+1)+A079944(n)`
-/

namespace A080653.P14867148877301704478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080637 (n + 1) + A079944 n

end

end A080653.P14867148877301704478

namespace A080653

/-- `A080637(n+1)+A079944(n)` -/
def P14867148877301704478.Spec : Prop :=
  ∀ n, P14867148877301704478.a n = A080653 (n + 1)

end A080653

/-! ## A080653.P6080661850143653999

`A115836(n+1)+A079882(n)`
-/

namespace A080653.P6080661850143653999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115836 (n + 1) + A079882 n

end

end A080653.P6080661850143653999

namespace A080653

/-- `A115836(n+1)+A079882(n)` -/
def P6080661850143653999.Spec : Prop :=
  ∀ n, P6080661850143653999.a n = A080653 (n + 1)

end A080653

/-! ## A080653.P8044492191813713883

`A080637(n+1)+A079882(n)-1`
-/

namespace A080653.P8044492191813713883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080637 (n + 1) + (A079882 n - 1)

end

end A080653.P8044492191813713883

namespace A080653

/-- `A080637(n+1)+A079882(n)-1` -/
def P8044492191813713883.Spec : Prop :=
  ∀ n, P8044492191813713883.a n = A080653 (n + 1)

end A080653

/-! ## A080653.P17895307787162415200

`A007378(n+2)-A086694(n+1)`
-/

namespace A080653.P17895307787162415200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007378 (n + 2) - A086694 (n + 1)

end

end A080653.P17895307787162415200

namespace A080653

/-- `A007378(n+2)-A086694(n+1)` -/
def P17895307787162415200.Spec : Prop :=
  ∀ n, P17895307787162415200.a n = A080653 (n + 1)

end A080653

/-!
# A080655: a(1) = a(2) = 1; for n >= 2, a(n+1) = a(n) + a(j(n)) where j(m) = largest divisor of m that is < m.

The programs for A080655, there is no canonical definition to state claims against.
-/

/-! ## A080655.P12016766578924333568

`a(n-1)+a(A032742(n)-1)` with `a(0)=1, a(1)=1`
-/

namespace A080655.P12016766578924333568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (A032742 n - 1).toNat

end

end A080655.P12016766578924333568

/-! ## A080655.P18355791944891705178

`∑[A056556(A265571(A337667(n)))]`
-/

namespace A080655.P18355791944891705178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A265571 (A337667 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080655.P18355791944891705178

/-!
# A080663: a(n) = 3*n^2 - 1.

The programs for A080663, the canonical program `A080663.P16382865435079334463` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080663 has offset 1).

The definition of A080663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080663.P16382865435079334463

`3*(n+1)²-1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080663

/-- `3*(n+1)²-1` -/
def P16382865435079334463.Spec : Prop :=
  ∀ n, P16382865435079334463.a n = A080663 (n + 1)

theorem P16382865435079334463.correct : P16382865435079334463.Spec := by
  intro n
  simp only [A080663, Nat.add_sub_cancel]

end A080663

/-! ## A080663.P10783347855556573257

`∑[a(n-1)+6]` with `a(0)=2, a(1)=9`
-/

namespace A080663.P10783347855556573257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 9] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080663.P10783347855556573257

namespace A080663

/-- `∑[a(n-1)+6]` -/
def P10783347855556573257.Spec : Prop :=
  ∀ n, (P10783347855556573257.a n : ℤ) = A080663 (n + 1)

end A080663

/-! ## A080663.P12455889126871823709

`or(2, 3*n*(n+2))`
-/

namespace A080663.P12455889126871823709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (3 * (n * (n + 2)))

end

end A080663.P12455889126871823709

namespace A080663

/-- `or(2, 3*n*(n+2))` -/
def P12455889126871823709.Spec : Prop :=
  ∀ n, (P12455889126871823709.a n : ℤ) = A080663 (n + 1)

end A080663

/-! ## A080663.P3629217457872842674

`xor(2, 3*n*(n+2))`
-/

namespace A080663.P3629217457872842674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (3 * (n * (n + 2)))

end

end A080663.P3629217457872842674

namespace A080663

/-- `xor(2, 3*n*(n+2))` -/
def P3629217457872842674.Spec : Prop :=
  ∀ n, (P3629217457872842674.a n : ℤ) = A080663 (n + 1)

end A080663

/-! ## A080663.P3810113291613660545

`record[3*(1-n)²-1]`
-/

namespace A080663.P3810113291613660545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (1 - (n : ℤ)) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080663.P3810113291613660545

namespace A080663

/-- `record[3*(1-n)²-1]` -/
def P3810113291613660545.Spec : Prop :=
  ∀ n, P3810113291613660545.a n = A080663 (n + 1)

end A080663

/-! ## A080663.P1587839347135027472

`ceil(3*(cos(2)+(n+1)²))`
-/

namespace A080663.P1587839347135027472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * (Real.cos (2 : ℝ) + ((n + 1) ^ 2 : ℝ))⌉

end

end A080663.P1587839347135027472

namespace A080663

/-- `ceil(3*(cos(2)+(n+1)²))` -/
def P1587839347135027472.Spec : Prop :=
  ∀ n, P1587839347135027472.a n = A080663 (n + 1)

end A080663

/-! ## A080663.P1226420699756257715

`round(3*(cos(2)+(n+1)²))`
-/

namespace A080663.P1226420699756257715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * (Real.cos (2 : ℝ) + ((n + 1) ^ 2 : ℝ)))

end

end A080663.P1226420699756257715

namespace A080663

/-- `round(3*(cos(2)+(n+1)²))` -/
def P1226420699756257715.Spec : Prop :=
  ∀ n, P1226420699756257715.a n = A080663 (n + 1)

end A080663

/-! ## A080663.P671500531008484141

`floor(3*(tan(3)+(n+1)²))`
-/

namespace A080663.P671500531008484141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (Real.tan (3 : ℝ) + ((n + 1) ^ 2 : ℝ))⌋

end

end A080663.P671500531008484141

namespace A080663

/-- `floor(3*(tan(3)+(n+1)²))` -/
def P671500531008484141.Spec : Prop :=
  ∀ n, P671500531008484141.a n = A080663 (n + 1)

end A080663

/-! ## A080663.P13670430200526561464

`ceil(3/tan(1/(n+1))²)`
-/

namespace A080663.P13670430200526561464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / Real.tan (1 / (n + 1 : ℚ) : ℝ) ^ 2⌉

end

end A080663.P13670430200526561464

namespace A080663

/-- `ceil(3/tan(1/(n+1))²)` -/
def P13670430200526561464.Spec : Prop :=
  ∀ n, P13670430200526561464.a n = A080663 (n + 1)

end A080663

/-! ## A080663.P14450473953524252003

`ceil(3/asin(1/(n+1))²)`
-/

namespace A080663.P14450473953524252003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / Real.arcsin (1 / (n + 1 : ℚ) : ℝ) ^ 2⌉

end

end A080663.P14450473953524252003

namespace A080663

/-- `ceil(3/asin(1/(n+1))²)` -/
def P14450473953524252003.Spec : Prop :=
  ∀ n, P14450473953524252003.a n = A080663 (n + 1)

end A080663

/-! ## A080663.P5638142913648933734

`floor(3/sinh((1/(n+1))²))`
-/

namespace A080663.P5638142913648933734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / Real.sinh ((1 / (n + 1 : ℚ)) ^ 2 : ℝ)⌋

end

end A080663.P5638142913648933734

namespace A080663

/-- `floor(3/sinh((1/(n+1))²))` -/
def P5638142913648933734.Spec : Prop :=
  ∀ n, P5638142913648933734.a n = A080663 (n + 1)

end A080663

/-! ## A080663.P15137952193132781197

`ceil(3*(cot(2)+(n+1)²))`
-/

namespace A080663.P15137952193132781197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * (Real.cot (2 : ℝ) + ((n + 1) ^ 2 : ℝ))⌉

end

end A080663.P15137952193132781197

namespace A080663

/-- `ceil(3*(cot(2)+(n+1)²))` -/
def P15137952193132781197.Spec : Prop :=
  ∀ n, P15137952193132781197.a n = A080663 (n + 1)

end A080663

/-! ## A080663.P2465215121721759066

`floor(cot(1/(3*(n+1)²)))`
-/

namespace A080663.P2465215121721759066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (1 / (3 * (n + 1) ^ 2 : ℚ) : ℝ)⌋

end

end A080663.P2465215121721759066

namespace A080663

/-- `floor(cot(1/(3*(n+1)²)))` -/
def P2465215121721759066.Spec : Prop :=
  ∀ n, P2465215121721759066.a n = A080663 (n + 1)

end A080663

/-! ## A080663.P10192443833168698469

`round(3*(cot(2)+(n+1)²))`
-/

namespace A080663.P10192443833168698469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * (Real.cot (2 : ℝ) + ((n + 1) ^ 2 : ℝ)))

end

end A080663.P10192443833168698469

namespace A080663

/-- `round(3*(cot(2)+(n+1)²))` -/
def P10192443833168698469.Spec : Prop :=
  ∀ n, P10192443833168698469.a n = A080663 (n + 1)

end A080663

/-! ## A080663.P11019827822109276727

`round(3/sinh(1/(n+1))²)`
-/

namespace A080663.P11019827822109276727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / Real.sinh (1 / (n + 1 : ℚ) : ℝ) ^ 2)

end

end A080663.P11019827822109276727

namespace A080663

/-- `round(3/sinh(1/(n+1))²)` -/
def P11019827822109276727.Spec : Prop :=
  ∀ n, P11019827822109276727.a n = A080663 (n + 1)

end A080663

/-! ## A080663.P16829619609976359118

`Δ[C(n, 2)+(n+1)*n²]`
-/

namespace A080663.P16829619609976359118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + (n + 1) * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A080663.P16829619609976359118

namespace A080663

/-- `Δ[C(n, 2)+(n+1)*n²]` -/
def P16829619609976359118.Spec : Prop :=
  ∀ n, P16829619609976359118.a n = A080663 (n + 1)

end A080663

/-! ## A080663.P3993044689129825781

`floor(6*n+a(n-1)+3)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A080663.P3993044689129825781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  6 * n + (a (n - 1) + 3)

end

end A080663.P3993044689129825781

namespace A080663

/-- `floor(6*n+a(n-1)+3)` -/
def P3993044689129825781.Spec : Prop :=
  ∀ n, (P3993044689129825781.a n : ℤ) = A080663 (n + 1)

theorem P3993044689129825781.correct : P3993044689129825781.Spec := by
  intro n
  induction n with
  | zero => simp [A080663, A080663.P3993044689129825781.a, A080663.P16382865435079334463.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A080663, Nat.add_sub_cancel, A080663.P3993044689129825781.a, A080663.P16382865435079334463.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A080663

/-! ## A080663.P9890172856075282429

`Δ[lcm(n, (n+1)²)-C(n+2, 2)]`
-/

namespace A080663.P9890172856075282429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n ((n + 1) ^ 2) : ℤ) - (Nat.choose (n + 2) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080663.P9890172856075282429

namespace A080663

/-- `Δ[lcm(n, (n+1)²)-C(n+2, 2)]` -/
def P9890172856075282429.Spec : Prop :=
  ∀ n, P9890172856075282429.a n = A080663 (n + 1)

end A080663

/-!
# A080664: Numbers n such that n-th Catalan number is squarefree.

The programs for A080664, there is no canonical definition to state claims against.
-/

/-! ## A080664.P11114192194854568380

`eq[0, A081389(n+1)]+1`
-/

namespace A080664.P11114192194854568380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081389 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080664.P11114192194854568380

/-! ## A080664.P17392708129014907931

`lt[n*A081389(abs(1-n)+1), n]`
-/

namespace A080664.P17392708129014907931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A081389 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A080664.P17392708129014907931

/-! ## A080664.P13971573920753428023

`A138039(A154771(n+1))`
-/

namespace A080664.P13971573920753428023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138039 (A154771 (n + 1)).toNat

end

end A080664.P13971573920753428023

/-! ## A080664.P13528139973553358811

`A032512(A289995(n+1))`
-/

namespace A080664.P13528139973553358811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032512 (A289995 (n + 1)).toNat

end

end A080664.P13528139973553358811

/-! ## A080664.P8207954655192850190

`A382215(A193498(n+1))`
-/

namespace A080664.P8207954655192850190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382215 (A193498 (n + 1)).toNat

end

end A080664.P8207954655192850190

/-!
# A080665: Squares that are the sum of 3 consecutive primes.

The programs for A080665, there is no canonical definition to state claims against.
-/

/-! ## A080665.P12299934088103776904

`A076304(n+1)²`
-/

namespace A080665.P12299934088103776904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076304 (n + 1) ^ 2

end

end A080665.P12299934088103776904

/-! ## A080665.P195738663826221643

`A076304(2*(n+1)-(n+1))^2`
-/

namespace A080665.P195738663826221643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076304 (2 * (n + 1) - (n + 1)) ^ 2

end

end A080665.P195738663826221643

/-! ## A080665.P6237549141392453411

`A076304(or(n+1, char[2]))*A076304(n+1)`
-/

namespace A080665.P6237549141392453411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076304 (Nat.lor (n + 1) (if ∃ j, f1 j = n then 1 else 0)) * A076304 (n + 1)

end

end A080665.P6237549141392453411

/-! ## A080665.P11111500305292110799

`A076304(A000027(n+1))*A076304(n+1)`
-/

namespace A080665.P11111500305292110799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076304 (A000027 (n + 1)).toNat * A076304 (n + 1)

end

end A080665.P11111500305292110799

/-! ## A080665.P5878295573251998791

`A076304(n+1)*A076304((n+1)%A000040(n+1))`
-/

namespace A080665.P5878295573251998791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076304 (n + 1) * A076304 (Int.tmod (n + 1 : ℤ) (A000040 (n + 1))).toNat

end

end A080665.P5878295573251998791

/-! ## A080665.P15704564105406148023

`A076304(n+1)%A206279(n+1)*A076304(n+1)`
-/

namespace A080665.P15704564105406148023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076304 (n + 1)) (A206279 (n + 1)) * A076304 (n + 1)

end

end A080665.P15704564105406148023

/-!
# A080666: Numbers k such that k^2 + 1 and k^2 - 1 are not squarefree.

The programs for A080666, there is no canonical definition to state claims against.
-/

/-! ## A080666.P14695275060530639610

`sqrt(A088068(n+1))`
-/

namespace A080666.P14695275060530639610
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A088068 (n + 1) : ℝ)

end

end A080666.P14695275060530639610

/-! ## A080666.P848791318046967064

`root(A088068(2*n+1-n), 2)`
-/

namespace A080666.P848791318046967064
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A088068 (2 * n + 1 - n) : ℝ) ^ (1 / (2 : ℝ))

end

end A080666.P848791318046967064

/-! ## A080666.P727585556975016229

`∩[A049532(n+1), A173186(n+1)]`
-/

namespace A080666.P727585556975016229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080666.P727585556975016229

/-! ## A080666.P1215070725909362064

`root(∩[A235578(n+1), n²], 2)`
-/

namespace A080666.P1215070725909362064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235578 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ) ^ (1 / (2 : ℝ))

end

end A080666.P1215070725909362064

/-! ## A080666.P12178006624229380733

`∩[A049532(n+1), A183423(n+1)]`
-/

namespace A080666.P12178006624229380733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080666.P12178006624229380733

/-!
# A080667: a(1)=3; for n>1, a(n)=a(n-1)+4 if n is already in the sequence, a(n)=a(n-1)+3 otherwise.

The programs for A080667, there is no canonical definition to state claims against.
-/

/-! ## A080667.P11420592143186087304

`A184483(n+1)-n`
-/

namespace A080667.P11420592143186087304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184483 (n + 1) - (n : ℤ)

end

end A080667.P11420592143186087304

/-! ## A080667.P10435620277477851252

`A184482(n+1)+2*(n+1)`
-/

namespace A080667.P10435620277477851252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184482 (n + 1) + (2 * (n + 1) : ℤ)

end

end A080667.P10435620277477851252

/-! ## A080667.P15638697656965860911

`A081834(n+2)-1`
-/

namespace A080667.P15638697656965860911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081834 (n + 2) - 1

end

end A080667.P15638697656965860911

/-! ## A080667.P4436869505768781145

`∑[abs(Δ[A081834(n+1)])]`
-/

namespace A080667.P4436869505768781145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081834 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080667.P4436869505768781145

/-! ## A080667.P12090228021950743886

`∑[A000196(Δ[A081834(n+1)]²)]`
-/

namespace A080667.P12090228021950743886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081834 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080667.P12090228021950743886

/-! ## A080667.P3992904654677788391

`∑[A001222(Δ[A081834(n+1)])+2]`
-/

namespace A080667.P3992904654677788391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081834 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080667.P3992904654677788391

/-! ## A080667.P13351013105988691614

`∑[A008683(Δ[A081834(n+1)])+4]`
-/

namespace A080667.P13351013105988691614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081834 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f2 (n + 1) - f2 n).toNat + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080667.P13351013105988691614

/-! ## A080667.P16688852613643344803

`A023443(A081834(n+2))`
-/

namespace A080667.P16688852613643344803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A081834 (n + 2)).toNat

end

end A080667.P16688852613643344803

/-! ## A080667.P15388153460860280994

`A008619(A184479(2*n+1))-n`
-/

namespace A080667.P15388153460860280994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A184479 (2 * n + 1)).toNat - (n : ℤ)

end

end A080667.P15388153460860280994

/-! ## A080667.P1116145613195346575

`A008619(A184485(2*(n+1)))-(n+1)`
-/

namespace A080667.P1116145613195346575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A184485 (2 * (n + 1))).toNat - (n + 1 : ℤ)

end

end A080667.P1116145613195346575

/-!
# A080668: Numbers of the form n!+n^3.

The programs for A080668, there is no canonical definition to state claims against.
-/

/-! ## A080668.P11668957654838453722

`Δ[∑[n!]+∑[n]²]`
-/

namespace A080668.P11668957654838453722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A080668.P11668957654838453722

/-! ## A080668.P368436690524505127

`∏[n+1]+Δ[∑[n]²]`
-/

namespace A080668.P368436690524505127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A080668.P368436690524505127

/-! ## A080668.P14755600745181746633

`(n+1)*(n!+(n+1)²)`
-/

namespace A080668.P14755600745181746633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (Nat.factorial n + (n + 1) ^ 2)

end

end A080668.P14755600745181746633

/-! ## A080668.P13552149423322390241

`abs((n+1)!-(-(n+1))^3)`
-/

namespace A080668.P13552149423322390241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial (n + 1) : ℤ) - (-(n + 1 : ℤ)) ^ 3|

end

end A080668.P13552149423322390241

/-! ## A080668.P334309509850872789

`(∑[2*n+1]+n!)*(n+1)`
-/

namespace A080668.P334309509850872789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + Nat.factorial n) * (n + 1)

end

end A080668.P334309509850872789

/-! ## A080668.P6190845502337174712

`lcm(n+1, (n+1)!+(n+1)^3)`
-/

namespace A080668.P6190845502337174712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (Nat.factorial (n + 1) + (n + 1) ^ 3)

end

end A080668.P6190845502337174712

/-!
# A080669: a(1) = 1; a(2) = 2; a(n) = Fibonacci(a(n-1) + a(n-2)) if n > 2.

The programs for A080669, there is no canonical definition to state claims against.
-/

/-! ## A080669.P5644515430269336203

`A000045(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A080669.P5644515430269336203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000045 (a (n - 1) + a (n - 2)).toNat

end

end A080669.P5644515430269336203

/-! ## A080669.P10463331907127623340

`A238684(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A080669.P10463331907127623340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A238684 (a (n - 1) + a (n - 2)).toNat

end

end A080669.P10463331907127623340

/-!
# A080670: Literal reading of the prime factorization of n.

The programs for A080670, there is no canonical definition to state claims against.
-/

/-! ## A080670.P11702573646745318162

`A288532(n+1)-A270850(A294875(n+1))`
-/

namespace A080670.P11702573646745318162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288532 (n + 1) - A270850 (A294875 (n + 1)).toNat

end

end A080670.P11702573646745318162

/-! ## A080670.P3498669222526927451

`A288532(A187829(n+1))`
-/

namespace A080670.P3498669222526927451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288532 (A187829 (n + 1)).toNat

end

end A080670.P3498669222526927451

/-! ## A080670.P3888925040491120337

`A288532(C(A005496(n), n))`
-/

namespace A080670.P3888925040491120337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288532 (Nat.choose (A005496 n).toNat n)

end

end A080670.P3888925040491120337

/-! ## A080670.P13052824956735322136

`A288532(A288323(n)!+n)`
-/

namespace A080670.P13052824956735322136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288532 (Nat.factorial (A288323 n).toNat + n)

end

end A080670.P13052824956735322136

/-! ## A080670.P7636543425676115414

`A288532(A077168(n))`
-/

namespace A080670.P7636543425676115414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288532 (A077168 n).toNat

end

end A080670.P7636543425676115414

/-!
# A080671: Numbers having divisors 2 or 3 or 5.

The programs for A080671, the canonical program `A080671.P899898028490012440` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080671 has offset 1).

The definition of A080671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080671.P899898028490012440

`lt[lcm(30, n), 30*n]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080671

/-- `lt[lcm(30, n), 30*n]` -/
def P899898028490012440.Spec : Prop :=
  ∀ n, (P899898028490012440.a n : ℤ) = A080671 (n + 1)

theorem P899898028490012440.correct : P899898028490012440.Spec := by
  intro n
  simp only [A080671, Nat.add_sub_cancel]

end A080671

/-! ## A080671.P18409633985735862235

`lt[n, n*gcd(30, n)]`
-/

namespace A080671.P18409633985735862235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 30 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080671.P18409633985735862235

namespace A080671

/-- `lt[n, n*gcd(30, n)]` -/
def P18409633985735862235.Spec : Prop :=
  ∀ n, (P18409633985735862235.a n : ℤ) = A080671 (n + 1)

end A080671

/-! ## A080671.P3753551772020410795

`A354591(n+1)/2`
-/

namespace A080671.P3753551772020410795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354591 (n + 1) : ℚ) / 2

end

end A080671.P3753551772020410795

namespace A080671

/-- `A354591(n+1)/2` -/
def P3753551772020410795.Spec : Prop :=
  ∀ n, P3753551772020410795.a n = (A080671 (n + 1) : ℚ)

end A080671

/-! ## A080671.P5791229403004116049

`lt[A020639(n+2), 6]+2`
-/

namespace A080671.P5791229403004116049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A080671.P5791229403004116049

namespace A080671

/-- `lt[A020639(n+2), 6]+2` -/
def P5791229403004116049.Spec : Prop :=
  ∀ n, (P5791229403004116049.a n : ℤ) = A080671 (n + 1)

end A080671

/-! ## A080671.P3323577656360315335

`comp[A007775(n+1)-1]+1`
-/

namespace A080671.P3323577656360315335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A080671.P3323577656360315335

namespace A080671

/-- `comp[A007775(n+1)-1]+1` -/
def P3323577656360315335.Spec : Prop :=
  ∀ n, (P3323577656360315335.a n : ℤ) = A080671 (n + 1)

end A080671

/-! ## A080671.P5850546962700564296

`eq[1, 31%A020639(n+1)]+1`
-/

namespace A080671.P5850546962700564296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 31 (A020639 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080671.P5850546962700564296

namespace A080671

/-- `eq[1, 31%A020639(n+1)]+1` -/
def P5850546962700564296.Spec : Prop :=
  ∀ n, (P5850546962700564296.a n : ℤ) = A080671 (n + 1)

end A080671

/-! ## A080671.P17023147221624159297

`∪[A065502(n+1), A016945(n)]`
-/

namespace A080671.P17023147221624159297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080671.P17023147221624159297

namespace A080671

/-- `∪[A065502(n+1), A016945(n)]` -/
def P17023147221624159297.Spec : Prop :=
  ∀ n, (P17023147221624159297.a n : ℤ) = A080671 (n + 1)

end A080671

/-! ## A080671.P4493409058440866782

`∪[A047228(n+1), A065502(n+1)]`
-/

namespace A080671.P4493409058440866782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080671.P4493409058440866782

namespace A080671

/-- `∪[A047228(n+1), A065502(n+1)]` -/
def P4493409058440866782.Spec : Prop :=
  ∀ n, (P4493409058440866782.a n : ℤ) = A080671 (n + 1)

end A080671

/-! ## A080671.P11455638866497267384

`∪[A047230(n+1), A065502(n+1)]`
-/

namespace A080671.P11455638866497267384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080671.P11455638866497267384

namespace A080671

/-- `∪[A047230(n+1), A065502(n+1)]` -/
def P11455638866497267384.Spec : Prop :=
  ∀ n, (P11455638866497267384.a n : ℤ) = A080671 (n + 1)

end A080671

/-! ## A080671.P2889554843999781913

`∪[A047243(n+1), A065502(n+1)]`
-/

namespace A080671.P2889554843999781913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080671.P2889554843999781913

namespace A080671

/-- `∪[A047243(n+1), A065502(n+1)]` -/
def P2889554843999781913.Spec : Prop :=
  ∀ n, (P2889554843999781913.a n : ℤ) = A080671 (n + 1)

end A080671

/-! ## A080671.P7632677230804972040

`∪[A065502(n+1), A126590(n+1)]`
-/

namespace A080671.P7632677230804972040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080671.P7632677230804972040

namespace A080671

/-- `∪[A065502(n+1), A126590(n+1)]` -/
def P7632677230804972040.Spec : Prop :=
  ∀ n, (P7632677230804972040.a n : ℤ) = A080671 (n + 1)

end A080671

/-! ## A080671.P6872428680203950876

`∪[A065502(n+1), A259754(n+1)]`
-/

namespace A080671.P6872428680203950876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080671.P6872428680203950876

namespace A080671

/-- `∪[A065502(n+1), A259754(n+1)]` -/
def P6872428680203950876.Spec : Prop :=
  ∀ n, (P6872428680203950876.a n : ℤ) = A080671 (n + 1)

end A080671

/-! ## A080671.P2921592706962370082

`eq[2, A000010(A020639(n+1)+1)]+1`
-/

namespace A080671.P2921592706962370082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A020639 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080671.P2921592706962370082

namespace A080671

/-- `eq[2, A000010(A020639(n+1)+1)]+1` -/
def P2921592706962370082.Spec : Prop :=
  ∀ n, (P2921592706962370082.a n : ℤ) = A080671 (n + 1)

end A080671

/-! ## A080671.P5019364861726704675

`eq[A020639(5*(n+1)), A020639(n+1)]+1`
-/

namespace A080671.P5019364861726704675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A080671.P5019364861726704675

namespace A080671

/-- `eq[A020639(5*(n+1)), A020639(n+1)]+1` -/
def P5019364861726704675.Spec : Prop :=
  ∀ n, (P5019364861726704675.a n : ℤ) = A080671 (n + 1)

end A080671

/-! ## A080671.P12798121792845147954

`lt[A102457(n+2), 6]+1`
-/

namespace A080671.P12798121792845147954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080671.P12798121792845147954

namespace A080671

/-- `lt[A102457(n+2), 6]+1` -/
def P12798121792845147954.Spec : Prop :=
  ∀ n, (P12798121792845147954.a n : ℤ) = A080671 (n + 1)

end A080671

/-! ## A080671.P17257765420814045763

`lt[1, A355582(n+1)]+1`
-/

namespace A080671.P17257765420814045763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080671.P17257765420814045763

namespace A080671

/-- `lt[1, A355582(n+1)]+1` -/
def P17257765420814045763.Spec : Prop :=
  ∀ n, (P17257765420814045763.a n : ℤ) = A080671 (n + 1)

end A080671

/-! ## A080671.P3455689547696040575

`lt[1, A355583(n+1)]+1`
-/

namespace A080671.P3455689547696040575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355583 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080671.P3455689547696040575

namespace A080671

/-- `lt[1, A355583(n+1)]+1` -/
def P3455689547696040575.Spec : Prop :=
  ∀ n, (P3455689547696040575.a n : ℤ) = A080671 (n + 1)

end A080671

/-! ## A080671.P3890874304498823996

`lt[1, A355584(n+1)]+1`
-/

namespace A080671.P3890874304498823996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355584 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080671.P3890874304498823996

namespace A080671

/-- `lt[1, A355584(n+1)]+1` -/
def P3890874304498823996.Spec : Prop :=
  ∀ n, (P3890874304498823996.a n : ℤ) = A080671 (n + 1)

end A080671

/-!
# A080672: Numbers having divisors 2 or 3 or 5 or 7.

The programs for A080672, the canonical program `A080672.P16756542385456588835` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080672 has offset 1).

The definition of A080672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080672.P16862054580562647108

`lt[A020639(n+2), 8]+2`
-/

namespace A080672.P16862054580562647108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A080672.P16862054580562647108

namespace A080672

/-- `lt[A020639(n+2), 8]+2` -/
def P16862054580562647108.Spec : Prop :=
  ∀ n, (P16862054580562647108.a n : ℤ) = A080672 (n + 1)

end A080672

/-! ## A080672.P10735278171468096623

`comp[A008364(n+1)-1]+1`
-/

namespace A080672.P10735278171468096623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A080672.P10735278171468096623

namespace A080672

/-- `comp[A008364(n+1)-1]+1` -/
def P10735278171468096623.Spec : Prop :=
  ∀ n, (P10735278171468096623.a n : ℤ) = A080672 (n + 1)

end A080672

/-! ## A080672.P16756542385456588835

`∪[A080671(n+1), A147587(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A080672

/-- `∪[A080671(n+1), A147587(n)]` -/
def P16756542385456588835.Spec : Prop :=
  ∀ n, (P16756542385456588835.a n : ℤ) = A080672 (n + 1)

theorem P16756542385456588835.correct : P16756542385456588835.Spec := by
  intro n
  simp only [A080672, Nat.add_sub_cancel]

end A080672

/-! ## A080672.P12889065630725799694

`eq[A004883(A020639(n+2)+1), A020639(n+2)]+2`
-/

namespace A080672.P12889065630725799694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004883 (A020639 (n + 2) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A080672.P12889065630725799694

namespace A080672

/-- `eq[A004883(A020639(n+2)+1), A020639(n+2)]+2` -/
def P12889065630725799694.Spec : Prop :=
  ∀ n, (P12889065630725799694.a n : ℤ) = A080672 (n + 1)

end A080672

/-! ## A080672.P2159393811438869351

`lt[n, n*A242627(n)]`
-/

namespace A080672.P2159393811438869351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A242627 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080672.P2159393811438869351

namespace A080672

/-- `lt[n, n*A242627(n)]` -/
def P2159393811438869351.Spec : Prop :=
  ∀ n, (P2159393811438869351.a n : ℤ) = A080672 (n + 1)

end A080672

/-! ## A080672.P5048543562150263530

`record[A010879(A020639(n+2))*A032742(n+2)]`
-/

namespace A080672.P5048543562150263530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A020639 (n + 2)).toNat * A032742 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080672.P5048543562150263530

namespace A080672

/-- `record[A010879(A020639(n+2))*A032742(n+2)]` -/
def P5048543562150263530.Spec : Prop :=
  ∀ n, P5048543562150263530.a n = A080672 (n + 1)

end A080672

/-! ## A080672.P7568905512750201002

`eq[A032742(A020639(n+1)+1), A055396(n+1)]+1`
-/

namespace A080672.P7568905512750201002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A020639 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A080672.P7568905512750201002

namespace A080672

/-- `eq[A032742(A020639(n+1)+1), A055396(n+1)]+1` -/
def P7568905512750201002.Spec : Prop :=
  ∀ n, (P7568905512750201002.a n : ℤ) = A080672 (n + 1)

end A080672

/-! ## A080672.P17413168170322982787

`eq[2, A278248(A020639(n+1))]+1`
-/

namespace A080672.P17413168170322982787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278248 (A020639 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080672.P17413168170322982787

namespace A080672

/-- `eq[2, A278248(A020639(n+1))]+1` -/
def P17413168170322982787.Spec : Prop :=
  ∀ n, (P17413168170322982787.a n : ℤ) = A080672 (n + 1)

end A080672

/-! ## A080672.P1927192310409141790

`lt[1, A212256(2*n)]`
-/

namespace A080672.P1927192310409141790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212256 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080672.P1927192310409141790

namespace A080672

/-- `lt[1, A212256(2*n)]` -/
def P1927192310409141790.Spec : Prop :=
  ∀ n, (P1927192310409141790.a n : ℤ) = A080672 (n + 1)

end A080672

/-!
# A080673: Largest number with exactly n representations as sum of five positive squares (or 0 if no number with exactly n representations exists).

The programs for A080673, there is no canonical definition to state claims against.
-/

/-! ## A080673.P3987439747833636964

`lcm(A072554(A115261(n+1)), A206334(n+1))`
-/

namespace A080673.P3987439747833636964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A072554 (A115261 (n + 1)).toNat) (A206334 (n + 1))

end

end A080673.P3987439747833636964

/-!
# A080674: a(n) = (4/3)*(4^n - 1).

The programs for A080674, the canonical program `A080674.P3645424719901119155` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080674 has offset 0).

The definition of A080674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080674.P18060305790259116010

`4/3*(4^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080674.P18060305790259116010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * ((4 ^ n : ℤ) - 1 : ℚ)

end

end A080674.P18060305790259116010

namespace A080674

/-- `4/3*(4^n-1)` -/
def P18060305790259116010.Spec : Prop :=
  ∀ n, P18060305790259116010.a n = (A080674 n : ℚ)

end A080674

/-! ## A080674.P3645424719901119155

`4*a(n-1)+4` with `a(0)=0`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080674

/-- `4*a(n-1)+4` -/
def P3645424719901119155.Spec : Prop :=
  ∀ n, (P3645424719901119155.a n : ℤ) = A080674 n

theorem P3645424719901119155.correct : P3645424719901119155.Spec := by
  intro n
  simp only [A080674]

end A080674

/-! ## A080674.P16810131608942410633

`4^n+a(n-1)` with `a(0)=0`
-/

namespace A080674.P16810131608942410633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  4 ^ n + a (n - 1)

end

end A080674.P16810131608942410633

namespace A080674

/-- `4^n+a(n-1)` -/
def P16810131608942410633.Spec : Prop :=
  ∀ n, (P16810131608942410633.a n : ℤ) = A080674 n

end A080674

/-! ## A080674.P6593441679382182962

`A002450(n+1)-1`
-/

namespace A080674.P6593441679382182962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (n + 1) - 1

end

end A080674.P6593441679382182962

namespace A080674

/-- `A002450(n+1)-1` -/
def P6593441679382182962.Spec : Prop :=
  ∀ n, P6593441679382182962.a n = A080674 n

end A080674

/-! ## A080674.P13759338829983707602

`xor(1, ∑[4^n])`
-/

namespace A080674.P13759338829983707602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080674.P13759338829983707602

namespace A080674

/-- `xor(1, ∑[4^n])` -/
def P13759338829983707602.Spec : Prop :=
  ∀ n, (P13759338829983707602.a n : ℤ) = A080674 n

end A080674

/-! ## A080674.P15200476581259752690

`and(∑[4^n], -2)`
-/

namespace A080674.P15200476581259752690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-2)

end

end A080674.P15200476581259752690

namespace A080674

/-- `and(∑[4^n], -2)` -/
def P15200476581259752690.Spec : Prop :=
  ∀ n, P15200476581259752690.a n = A080674 n

end A080674

/-! ## A080674.P3694182075206884703

`lcm(4, floor(4^n/3))`
-/

namespace A080674.P3694182075206884703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 ⌊(4 ^ n : ℚ) / 3⌋

end

end A080674.P3694182075206884703

namespace A080674

/-- `lcm(4, floor(4^n/3))` -/
def P3694182075206884703.Spec : Prop :=
  ∀ n, (P3694182075206884703.a n : ℤ) = A080674 n

end A080674

/-! ## A080674.P11292207037981646722

`∑[or(1, 4^n)-1]`
-/

namespace A080674.P11292207037981646722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (4 ^ n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080674.P11292207037981646722

namespace A080674

/-- `∑[or(1, 4^n)-1]` -/
def P11292207037981646722.Spec : Prop :=
  ∀ n, P11292207037981646722.a n = A080674 n

end A080674

/-! ## A080674.P2243687421799682137

`∑[C(4^n, ceil(acot(n)))]`
-/

namespace A080674.P2243687421799682137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 ^ n) ⌈SequenceMachineLib.acot (n : ℝ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080674.P2243687421799682137

namespace A080674

/-- `∑[C(4^n, ceil(acot(n)))]` -/
def P2243687421799682137.Spec : Prop :=
  ∀ n, (P2243687421799682137.a n : ℤ) = A080674 n

end A080674

/-! ## A080674.P55209095829851750

`∑[4*a(n-1)]` with `a(0)=0, a(1)=4`
-/

namespace A080674.P55209095829851750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080674.P55209095829851750

namespace A080674

/-- `∑[4*a(n-1)]` -/
def P55209095829851750.Spec : Prop :=
  ∀ n, (P55209095829851750.a n : ℤ) = A080674 n

end A080674

/-! ## A080674.P1921818282108660526

`or(4^n, a(n-1))` with `a(0)=0`
-/

namespace A080674.P1921818282108660526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor (4 ^ n) (a (n - 1))

end

end A080674.P1921818282108660526

namespace A080674

/-- `or(4^n, a(n-1))` -/
def P1921818282108660526.Spec : Prop :=
  ∀ n, (P1921818282108660526.a n : ℤ) = A080674 n

end A080674

/-! ## A080674.P9352946509362732402

`∑[((2^n)%(3^n))²]`
-/

namespace A080674.P9352946509362732402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ n % 3 ^ n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080674.P9352946509362732402

namespace A080674

/-- `∑[((2^n)%(3^n))²]` -/
def P9352946509362732402.Spec : Prop :=
  ∀ n, (P9352946509362732402.a n : ℤ) = A080674 n

end A080674

/-! ## A080674.P17422602058939914228

`∑[4^n-C(2, n+2)]`
-/

namespace A080674.P17422602058939914228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080674.P17422602058939914228

namespace A080674

/-- `∑[4^n-C(2, n+2)]` -/
def P17422602058939914228.Spec : Prop :=
  ∀ n, P17422602058939914228.a n = A080674 n

end A080674

/-! ## A080674.P12944293379787446094

`(a(n-1)+1)/(1/2)²` with `a(0)=0`
-/

namespace A080674.P12944293379787446094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) / ((1 : ℚ) / 2) ^ 2

end

end A080674.P12944293379787446094

namespace A080674

/-- `(a(n-1)+1)/(1/2)²` -/
def P12944293379787446094.Spec : Prop :=
  ∀ n, P12944293379787446094.a n = (A080674 n : ℚ)

end A080674

/-! ## A080674.P3222110966084308245

`∑[a(n-1)/(1/2)²]` with `a(0)=0, a(1)=4`
-/

namespace A080674.P3222110966084308245
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080674.P3222110966084308245

namespace A080674

/-- `∑[a(n-1)/(1/2)²]` -/
def P3222110966084308245.Spec : Prop :=
  ∀ n, P3222110966084308245.a n = (A080674 n : ℚ)

end A080674

/-! ## A080674.P15012146248417424150

`∑[a(floor((n+1)/n))^n]` with `a(0)=0, a(1)=4`
-/

namespace A080674.P15012146248417424150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  f1 ⌊(n + 1 : ℚ) / (n : ℚ)⌋.toNat ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080674.P15012146248417424150

namespace A080674

/-- `∑[a(floor((n+1)/n))^n]` -/
def P15012146248417424150.Spec : Prop :=
  ∀ n, (P15012146248417424150.a n : ℤ) = A080674 n

end A080674

/-! ## A080674.P7156886279754175459

`-Δ[4*(a(n-1)-(n-1))]` with `a(0)=0`
-/

namespace A080674.P7156886279754175459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  4 * (f1 (n - 1) - ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A080674.P7156886279754175459

namespace A080674

/-- `-Δ[4*(a(n-1)-(n-1))]` -/
def P7156886279754175459.Spec : Prop :=
  ∀ n, P7156886279754175459.a n = A080674 n

end A080674

/-! ## A080674.P742000836081727733

`floor((a(n-1)+1)/(1-3/4))` with `a(0)=0`
-/

namespace A080674.P742000836081727733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) + 1 : ℚ) / (1 - (3 : ℚ) / 4)⌋

end

end A080674.P742000836081727733

namespace A080674

/-- `floor((a(n-1)+1)/(1-3/4))` -/
def P742000836081727733.Spec : Prop :=
  ∀ n, P742000836081727733.a n = A080674 n

end A080674

/-! ## A080674.P8714495718658324559

`A020988(n)+A020988(n)`
-/

namespace A080674.P8714495718658324559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 n + A020988 n

end

end A080674.P8714495718658324559

namespace A080674

/-- `A020988(n)+A020988(n)` -/
def P8714495718658324559.Spec : Prop :=
  ∀ n, P8714495718658324559.a n = A080674 n

end A080674

/-!
# A080675: a(n) = (5*4^n - 8)/6.

The programs for A080675, the canonical program `A080675.P6386494954079407473` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080675 has offset 1).

The definition of A080675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080675.P6386494954079407473

`5*a(n-1)-4*a(n-2)` with `a(0)=2, a(1)=12`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080675

/-- `5*a(n-1)-4*a(n-2)` -/
def P6386494954079407473.Spec : Prop :=
  ∀ n, P6386494954079407473.a n = A080675 (n + 1)

theorem P6386494954079407473.correct : P6386494954079407473.Spec := by
  intro n
  simp only [A080675, Nat.add_sub_cancel]

end A080675

/-! ## A080675.P18289241121285237644

`2*A020989(n)`
-/

namespace A080675.P18289241121285237644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020989 n

end

end A080675.P18289241121285237644

namespace A080675

/-- `2*A020989(n)` -/
def P18289241121285237644.Spec : Prop :=
  ∀ n, P18289241121285237644.a n = A080675 (n + 1)

end A080675

/-! ## A080675.P9893084322437739556

`4*(a(n-1)+1)` with `a(0)=2`
-/

namespace A080675.P9893084322437739556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  4 * (a (n - 1) + 1)

end

end A080675.P9893084322437739556

namespace A080675

/-- `4*(a(n-1)+1)` -/
def P9893084322437739556.Spec : Prop :=
  ∀ n, (P9893084322437739556.a n : ℤ) = A080675 (n + 1)

end A080675

/-! ## A080675.P15538689499008474799

`lcm(4, a(n-1)+1)` with `a(0)=2`
-/

namespace A080675.P15538689499008474799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lcm 4 (a (n - 1) + 1)

end

end A080675.P15538689499008474799

namespace A080675

/-- `lcm(4, a(n-1)+1)` -/
def P15538689499008474799.Spec : Prop :=
  ∀ n, (P15538689499008474799.a n : ℤ) = A080675 (n + 1)

end A080675

/-! ## A080675.P17118969106406184698

`4*or(1, a(n-1))` with `a(0)=2`
-/

namespace A080675.P17118969106406184698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  4 * Nat.lor 1 (a (n - 1))

end

end A080675.P17118969106406184698

namespace A080675

/-- `4*or(1, a(n-1))` -/
def P17118969106406184698.Spec : Prop :=
  ∀ n, (P17118969106406184698.a n : ℤ) = A080675 (n + 1)

end A080675

/-! ## A080675.P15175100038781168544

`4*xor(1, a(n-1))` with `a(0)=2`
-/

namespace A080675.P15175100038781168544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  4 * Nat.xor 1 (a (n - 1))

end

end A080675.P15175100038781168544

namespace A080675

/-- `4*xor(1, a(n-1))` -/
def P15175100038781168544.Spec : Prop :=
  ∀ n, (P15175100038781168544.a n : ℤ) = A080675 (n + 1)

end A080675

/-! ## A080675.P17575125404863301873

`∑[4*a(n-1)]` with `a(0)=2, a(1)=10`
-/

namespace A080675.P17575125404863301873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 10] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080675.P17575125404863301873

namespace A080675

/-- `∑[4*a(n-1)]` -/
def P17575125404863301873.Spec : Prop :=
  ∀ n, (P17575125404863301873.a n : ℤ) = A080675 (n + 1)

end A080675

/-! ## A080675.P250447132264358770

`∑[floor(5/2*4^n)]`
-/

namespace A080675.P250447132264358770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℚ) / 2 * (4 ^ n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080675.P250447132264358770

namespace A080675

/-- `∑[floor(5/2*4^n)]` -/
def P250447132264358770.Spec : Prop :=
  ∀ n, P250447132264358770.a n = A080675 (n + 1)

end A080675

/-! ## A080675.P16700322129969708639

`8-4*(1-a(n-1))` with `a(0)=2`
-/

namespace A080675.P16700322129969708639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  8 - 4 * (1 - a (n - 1))

end

end A080675.P16700322129969708639

namespace A080675

/-- `8-4*(1-a(n-1))` -/
def P16700322129969708639.Spec : Prop :=
  ∀ n, P16700322129969708639.a n = A080675 (n + 1)

end A080675

/-! ## A080675.P2794937580050463916

`(a(n-1)+1)/(1/2)²` with `a(0)=2`
-/

namespace A080675.P2794937580050463916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (a (n - 1) + 1) / ((1 : ℚ) / 2) ^ 2

end

end A080675.P2794937580050463916

namespace A080675

/-- `(a(n-1)+1)/(1/2)²` -/
def P2794937580050463916.Spec : Prop :=
  ∀ n, P2794937580050463916.a n = (A080675 (n + 1) : ℚ)

end A080675

/-! ## A080675.P3111960879105749837

`a(n-1)/(1-3/4)+4` with `a(0)=2`
-/

namespace A080675.P3111960879105749837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) / (1 - (3 : ℚ) / 4) + 4

end

end A080675.P3111960879105749837

namespace A080675

/-- `a(n-1)/(1-3/4)+4` -/
def P3111960879105749837.Spec : Prop :=
  ∀ n, P3111960879105749837.a n = (A080675 (n + 1) : ℚ)

end A080675

/-! ## A080675.P14159175432173442914

`4-a(n-1)/(3/4-1)` with `a(0)=2`
-/

namespace A080675.P14159175432173442914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  4 - a (n - 1) / ((3 : ℚ) / 4 - 1)

end

end A080675.P14159175432173442914

namespace A080675

/-- `4-a(n-1)/(3/4-1)` -/
def P14159175432173442914.Spec : Prop :=
  ∀ n, P14159175432173442914.a n = (A080675 (n + 1) : ℚ)

end A080675

/-! ## A080675.P17067010019869614438

`4-(a(n-1)-lcm(5, a(n-1)))` with `a(0)=2`
-/

namespace A080675.P17067010019869614438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  4 - (a (n - 1) - (Int.lcm 5 (a (n - 1)) : ℤ))

end

end A080675.P17067010019869614438

namespace A080675

/-- `4-(a(n-1)-lcm(5, a(n-1)))` -/
def P17067010019869614438.Spec : Prop :=
  ∀ n, P17067010019869614438.a n = A080675 (n + 1)

end A080675

/-! ## A080675.P10201018684949628295

`a(n-1)+a(n-1)+a(n-1)+a(n-1)+4` with `a(0)=2`
-/

namespace A080675.P10201018684949628295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + 4)))

end

end A080675.P10201018684949628295

namespace A080675

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)+4` -/
def P10201018684949628295.Spec : Prop :=
  ∀ n, (P10201018684949628295.a n : ℤ) = A080675 (n + 1)

end A080675

/-! ## A080675.P8439153386860984581

`A321421(n)+1`
-/

namespace A080675.P8439153386860984581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321421 n + 1

end

end A080675.P8439153386860984581

namespace A080675

/-- `A321421(n)+1` -/
def P8439153386860984581.Spec : Prop :=
  ∀ n, P8439153386860984581.a n = A080675 (n + 1)

end A080675

/-! ## A080675.P12430065064797835126

`A072197(n)-1`
-/

namespace A080675.P12430065064797835126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072197 n - 1

end

end A080675.P12430065064797835126

namespace A080675

/-- `A072197(n)-1` -/
def P12430065064797835126.Spec : Prop :=
  ∀ n, P12430065064797835126.a n = A080675 (n + 1)

end A080675

/-! ## A080675.P3171860015224930383

`A115102(2*n)`
-/

namespace A080675.P3171860015224930383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115102 (2 * n)

end

end A080675.P3171860015224930383

namespace A080675

/-- `A115102(2*n)` -/
def P3171860015224930383.Spec : Prop :=
  ∀ n, P3171860015224930383.a n = A080675 (n + 1)

end A080675

/-! ## A080675.P7562453006522521414

`A084170(Δ[n²])`
-/

namespace A080675.P7562453006522521414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084170 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A080675.P7562453006522521414

namespace A080675

/-- `A084170(Δ[n²])` -/
def P7562453006522521414.Spec : Prop :=
  ∀ n, P7562453006522521414.a n = A080675 (n + 1)

end A080675

/-! ## A080675.P9295115467086651357

`record[Δ[A060590(n)]]`
-/

namespace A080675.P9295115467086651357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060590 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080675.P9295115467086651357

namespace A080675

/-- `record[Δ[A060590(n)]]` -/
def P9295115467086651357.Spec : Prop :=
  ∀ n, P9295115467086651357.a n = A080675 (n + 1)

end A080675

/-!
# A080676: a(1) = 1; for n>1, a(n) is the smallest number > a(n-1) such that the first n terms of the sequence contain a total of a(n) digits.

The programs for A080676, there is no canonical definition to state claims against.
-/

/-! ## A080676.P12068806501524092910

`A064223(n+2)-1`
-/

namespace A080676.P12068806501524092910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064223 (n + 2) - 1

end

end A080676.P12068806501524092910

/-! ## A080676.P7960966749710372549

`A088235(n+2)-1`
-/

namespace A080676.P7960966749710372549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088235 (n + 2) - 1

end

end A080676.P7960966749710372549

/-! ## A080676.P9229113463352035210

`record[abs(1-A088235(n))]`
-/

namespace A080676.P9229113463352035210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A088235 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080676.P9229113463352035210

/-! ## A080676.P18015259555779833303

`A057717(a(n-1))` with `a(0)=1`
-/

namespace A080676.P18015259555779833303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057717 (a (n - 1)).toNat

end

end A080676.P18015259555779833303

/-! ## A080676.P17956536584250207694

`a(n-1)+A004216(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A080676.P17956536584250207694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A004216 (a (n - 1) + 1).toNat + 1)

end

end A080676.P17956536584250207694

/-!
# A080677: a(n) = n + 1 - A004001(n).

The programs for A080677, the canonical program `A080677.P12276108341450152952` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080677 has offset 1).

The definition of A080677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080677.P12276108341450152952

`a(a(n-1)-1)+a(n-a(n-1))-1` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080677

/-- `a(a(n-1)-1)+a(n-a(n-1))-1` -/
def P12276108341450152952.Spec : Prop :=
  ∀ n, P12276108341450152952.a n = A080677 (n + 1)

theorem P12276108341450152952.correct : P12276108341450152952.Spec := by
  intro n
  simp only [A080677, Nat.add_sub_cancel]

end A080677

/-! ## A080677.P2250676888911280748

`a(a(n-1)-1)-(1-a(n-a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A080677.P2250676888911280748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (a (n - 1) - 1).toNat - (1 - a ((n : ℤ) - a (n - 1)).toNat)

end

end A080677.P2250676888911280748

namespace A080677

/-- `a(a(n-1)-1)-(1-a(n-a(n-1)))` -/
def P2250676888911280748.Spec : Prop :=
  ∀ n, P2250676888911280748.a n = A080677 (n + 1)

theorem P2250676888911280748.correct : P2250676888911280748.Spec := by
  intro n
  simp only [A080677, Nat.add_sub_cancel, A080677.P2250676888911280748.a, A080677.P12276108341450152952.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A080677

/-! ## A080677.P11211212785202402974

`∑[floor(atan(A051135(n+1)))]`
-/

namespace A080677.P11211212785202402974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A051135 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080677.P11211212785202402974

namespace A080677

/-- `∑[floor(atan(A051135(n+1)))]` -/
def P11211212785202402974.Spec : Prop :=
  ∀ n, P11211212785202402974.a n = A080677 (n + 1)

end A080677

/-! ## A080677.P2653959693805698955

`2-A004001(n+1)+n`
-/

namespace A080677.P2653959693805698955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A004001 (n + 1) + (n : ℤ)

end

end A080677.P2653959693805698955

namespace A080677

/-- `2-A004001(n+1)+n` -/
def P2653959693805698955.Spec : Prop :=
  ∀ n, P2653959693805698955.a n = A080677 (n + 1)

end A080677

/-! ## A080677.P15720623872241704232

`∑[char[A087686(n+1)-1]]`
-/

namespace A080677.P15720623872241704232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080677.P15720623872241704232

namespace A080677

/-- `∑[char[A087686(n+1)-1]]` -/
def P15720623872241704232.Spec : Prop :=
  ∀ n, (P15720623872241704232.a n : ℤ) = A080677 (n + 1)

end A080677

/-! ## A080677.P1312807522626821678

`(n+3-A004074(n+1))/2`
-/

namespace A080677.P1312807522626821678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) - A004074 (n + 1) : ℚ) / 2

end

end A080677.P1312807522626821678

namespace A080677

/-- `(n+3-A004074(n+1))/2` -/
def P1312807522626821678.Spec : Prop :=
  ∀ n, P1312807522626821678.a n = (A080677 (n + 1) : ℚ)

end A080677

/-! ## A080677.P15737389591859611881

`a(n-1)+1-A093879(n)` with `a(0)=1`
-/

namespace A080677.P15737389591859611881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (1 - A093879 n)

end

end A080677.P15737389591859611881

namespace A080677

/-- `a(n-1)+1-A093879(n)` -/
def P15737389591859611881.Spec : Prop :=
  ∀ n, P15737389591859611881.a n = A080677 (n + 1)

end A080677

/-! ## A080677.P7122758590697152640

`∑[A157928(A265332(n+1))]+1`
-/

namespace A080677.P7122758590697152640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A265332 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A080677.P7122758590697152640

namespace A080677

/-- `∑[A157928(A265332(n+1))]+1` -/
def P7122758590697152640.Spec : Prop :=
  ∀ n, P7122758590697152640.a n = A080677 (n + 1)

end A080677

/-! ## A080677.P15755422293120164439

`A093879(n+1)+A087816(n+1)`
-/

namespace A080677.P15755422293120164439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093879 (n + 1) + A087816 (n + 1)

end

end A080677.P15755422293120164439

namespace A080677

/-- `A093879(n+1)+A087816(n+1)` -/
def P15755422293120164439.Spec : Prop :=
  ∀ n, P15755422293120164439.a n = A080677 (n + 1)

end A080677

/-! ## A080677.P1710170881606463452

`A008619(1-A004074(n+1)+n)`
-/

namespace A080677.P1710170881606463452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (1 - A004074 (n + 1) + (n : ℤ)).toNat

end

end A080677.P1710170881606463452

namespace A080677

/-- `A008619(1-A004074(n+1)+n)` -/
def P1710170881606463452.Spec : Prop :=
  ∀ n, P1710170881606463452.a n = A080677 (n + 1)

end A080677

/-! ## A080677.P535796842328802297

`A028242(1-A004074(n+1)+n)`
-/

namespace A080677.P535796842328802297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (1 - A004074 (n + 1) + (n : ℤ)).toNat

end

end A080677.P535796842328802297

namespace A080677

/-- `A028242(1-A004074(n+1)+n)` -/
def P535796842328802297.Spec : Prop :=
  ∀ n, P535796842328802297.a n = A080677 (n + 1)

end A080677

/-! ## A080677.P15697575521237454455

`A080513(1-A004074(n+1)+n)`
-/

namespace A080677.P15697575521237454455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (1 - A004074 (n + 1) + (n : ℤ)).toNat

end

end A080677.P15697575521237454455

namespace A080677

/-- `A080513(1-A004074(n+1)+n)` -/
def P15697575521237454455.Spec : Prop :=
  ∀ n, P15697575521237454455.a n = A080677 (n + 1)

end A080677

/-! ## A080677.P6315985658168712411

`A162598(A088359(n+1)-(n+1))`
-/

namespace A080677.P6315985658168712411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162598 (A088359 (n + 1) - (n + 1 : ℤ)).toNat

end

end A080677.P6315985658168712411

namespace A080677

/-- `A162598(A088359(n+1)-(n+1))` -/
def P6315985658168712411.Spec : Prop :=
  ∀ n, P6315985658168712411.a n = A080677 (n + 1)

end A080677

/-! ## A080677.P2440985833805500294

`A038459(2-A004074(n+1)+n)`
-/

namespace A080677.P2440985833805500294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (2 - A004074 (n + 1) + (n : ℤ)).toNat

end

end A080677.P2440985833805500294

namespace A080677

/-- `A038459(2-A004074(n+1)+n)` -/
def P2440985833805500294.Spec : Prop :=
  ∀ n, P2440985833805500294.a n = A080677 (n + 1)

end A080677

/-! ## A080677.P1953869266128196794

`A109168(2-A004074(n+1)+n)`
-/

namespace A080677.P1953869266128196794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (2 - A004074 (n + 1) + (n : ℤ)).toNat

end

end A080677.P1953869266128196794

namespace A080677

/-- `A109168(2-A004074(n+1)+n)` -/
def P1953869266128196794.Spec : Prop :=
  ∀ n, P1953869266128196794.a n = A080677 (n + 1)

end A080677

/-! ## A080677.P3558072202630789480

`A110654(2-A004074(n+1)+n)`
-/

namespace A080677.P3558072202630789480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 - A004074 (n + 1) + (n : ℤ)).toNat

end

end A080677.P3558072202630789480

namespace A080677

/-- `A110654(2-A004074(n+1)+n)` -/
def P3558072202630789480.Spec : Prop :=
  ∀ n, P3558072202630789480.a n = A080677 (n + 1)

end A080677

/-! ## A080677.P16083383152626055573

`A140472(2-A004074(n+1)+n)`
-/

namespace A080677.P16083383152626055573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (2 - A004074 (n + 1) + (n : ℤ)).toNat

end

end A080677.P16083383152626055573

namespace A080677

/-- `A140472(2-A004074(n+1)+n)` -/
def P16083383152626055573.Spec : Prop :=
  ∀ n, P16083383152626055573.a n = A080677 (n + 1)

end A080677

/-! ## A080677.P1789597217474905479

`A084964(2*A084964(n)-A004074(n+1))`
-/

namespace A080677.P1789597217474905479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (2 * A084964 n - A004074 (n + 1)).toNat

end

end A080677.P1789597217474905479

namespace A080677

/-- `A084964(2*A084964(n)-A004074(n+1))` -/
def P1789597217474905479.Spec : Prop :=
  ∀ n, P1789597217474905479.a n = A080677 (n + 1)

end A080677

/-! ## A080677.P16947423600582984191

`A084964(A084964(n)+A084964(n)-A004074(n+1))`
-/

namespace A080677.P16947423600582984191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (A084964 n + (A084964 n - A004074 (n + 1))).toNat

end

end A080677.P16947423600582984191

namespace A080677

/-- `A084964(A084964(n)+A084964(n)-A004074(n+1))` -/
def P16947423600582984191.Spec : Prop :=
  ∀ n, P16947423600582984191.a n = A080677 (n + 1)

end A080677

/-! ## A080677.P11722831111642967184

`A030451(A004074(n+1))+A030451(n)-A004074(n+1)`
-/

namespace A080677.P11722831111642967184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (A004074 (n + 1)).toNat + (A030451 n - A004074 (n + 1))

end

end A080677.P11722831111642967184

namespace A080677

/-- `A030451(A004074(n+1))+A030451(n)-A004074(n+1)` -/
def P11722831111642967184.Spec : Prop :=
  ∀ n, P11722831111642967184.a n = A080677 (n + 1)

end A080677

/-!
# A080678: Rooted at a(0)=0 and a(1)=a(2)=a(3)=1, 4 cases of index mod 4: a(4n)=4*a(n), a(4n+1)= 3*a(n)+a(n+1), a(4n+2) = 2*a(n)+2*a(n+1), and a(4n+3) = a(n)+3*a(n+1).

The programs for A080678, the canonical program `A080678.P16778620546240237426` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080678 has offset 0).

The definition of A080678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080678.P16778620546240237426

`∪[4*n, A053754(n+1)]-n`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A080678

/-- `∪[4*n, A053754(n+1)]-n` -/
def P16778620546240237426.Spec : Prop :=
  ∀ n, P16778620546240237426.a n = A080678 n

theorem P16778620546240237426.correct : P16778620546240237426.Spec := by
  intro n
  simp only [A080678]

end A080678

/-! ## A080678.P1932371605296958671

`∪[A053754(n+1), A008574(n+1)]-n`
-/

namespace A080678.P1932371605296958671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A080678.P1932371605296958671

namespace A080678

/-- `∪[A053754(n+1), A008574(n+1)]-n` -/
def P1932371605296958671.Spec : Prop :=
  ∀ n, P1932371605296958671.a n = A080678 n

end A080678

/-!
# A080679: Lexicographically earliest de Bruijn cycle of length 16 (repeated indefinitely).

The programs for A080679, the canonical program `A080679.P4055038829256022261` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080679 has offset 0).

The definition of A080679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080679.P4055038829256022261

`A000007(and(A236185(n+3), A317301(2*(n+1))))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A080679

/-- `A000007(and(A236185(n+3), A317301(2*(n+1))))` -/
def P4055038829256022261.Spec : Prop :=
  ∀ n, P4055038829256022261.a n = A080679 n

theorem P4055038829256022261.correct : P4055038829256022261.Spec := by
  intro n
  simp only [A080679]

end A080679

/-!
# A080680: Integer part of the square root of the n-th prime of the form 4k+1.

The programs for A080680, the canonical program `A080680.P11142591042951162786` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080680 has offset 1).

The definition of A080680 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A080680.P11142591042951162786

`A000196(A002144(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A080680

/-- `A000196(A002144(n+1))` -/
def P11142591042951162786.Spec : Prop :=
  ∀ n, P11142591042951162786.a n = A080680 (n + 1)

theorem P11142591042951162786.correct : P11142591042951162786.Spec := by
  intro n
  simp only [A080680, Nat.add_sub_cancel]

end A080680

/-! ## A080680.P14492801553525757403

`floor(sqrt(p?[4*n+1]))`
-/

namespace A080680.P14492801553525757403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A080680.P14492801553525757403

namespace A080680

/-- `floor(sqrt(p?[4*n+1]))` -/
def P14492801553525757403.Spec : Prop :=
  ∀ n, (P14492801553525757403.a n : ℤ) = A080680 (n + 1)

end A080680

/-! ## A080680.P17488092154710690800

`floor(root(p?[4*n+1], 2))`
-/

namespace A080680.P17488092154710690800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A080680.P17488092154710690800

namespace A080680

/-- `floor(root(p?[4*n+1], 2))` -/
def P17488092154710690800.Spec : Prop :=
  ∀ n, P17488092154710690800.a n = A080680 (n + 1)

end A080680

/-! ## A080680.P5578109093979432980

`ceil(sqrt(p?[2*n+1+n+n]))-1`
-/

namespace A080680.P5578109093979432980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1 + n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ)⌉ - 1

end

end A080680.P5578109093979432980

namespace A080680

/-- `ceil(sqrt(p?[2*n+1+n+n]))-1` -/
def P5578109093979432980.Spec : Prop :=
  ∀ n, P5578109093979432980.a n = A080680 (n + 1)

end A080680

/-! ## A080680.P9474241768976152846

`floor(sqrt(A152680(n+1)))`
-/

namespace A080680.P9474241768976152846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A152680 (n + 1))

end

end A080680.P9474241768976152846

namespace A080680

/-- `floor(sqrt(A152680(n+1)))` -/
def P9474241768976152846.Spec : Prop :=
  ∀ n, P9474241768976152846.a n = A080680 (n + 1)

end A080680

/-! ## A080680.P10728201114142719533

`floor(2*sqrt(A005098(n+1)))`
-/

namespace A080680.P10728201114142719533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A005098 (n + 1) : ℝ)⌋

end

end A080680.P10728201114142719533

namespace A080680

/-- `floor(2*sqrt(A005098(n+1)))` -/
def P10728201114142719533.Spec : Prop :=
  ∀ n, P10728201114142719533.a n = A080680 (n + 1)

end A080680

/-! ## A080680.P7068759814741055466

`floor(sqrt(2*sqrt(A171555(n+1))))`
-/

namespace A080680.P7068759814741055466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 * Real.sqrt (A171555 (n + 1) : ℝ))⌋

end

end A080680.P7068759814741055466

namespace A080680

/-- `floor(sqrt(2*sqrt(A171555(n+1))))` -/
def P7068759814741055466.Spec : Prop :=
  ∀ n, P7068759814741055466.a n = A080680 (n + 1)

end A080680

/-! ## A080680.P6925049184364362133

`floor(sqrt(A002313(n+2)))`
-/

namespace A080680.P6925049184364362133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002313 (n + 2))

end

end A080680.P6925049184364362133

namespace A080680

/-- `floor(sqrt(A002313(n+2)))` -/
def P6925049184364362133.Spec : Prop :=
  ∀ n, P6925049184364362133.a n = A080680 (n + 1)

end A080680

/-! ## A080680.P10496845076127814118

`floor(sqrt(A280084(n+2)))`
-/

namespace A080680.P10496845076127814118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A280084 (n + 2))

end

end A080680.P10496845076127814118

namespace A080680

/-- `floor(sqrt(A280084(n+2)))` -/
def P10496845076127814118.Spec : Prop :=
  ∀ n, P10496845076127814118.a n = A080680 (n + 1)

end A080680

/-! ## A080680.P11912861828218749987

`floor(sqrt(A111744(2*n+1)))`
-/

namespace A080680.P11912861828218749987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A111744 (2 * n + 1))

end

end A080680.P11912861828218749987

namespace A080680

/-- `floor(sqrt(A111744(2*n+1)))` -/
def P11912861828218749987.Spec : Prop :=
  ∀ n, P11912861828218749987.a n = A080680 (n + 1)

end A080680

/-! ## A080680.P11977910678878676137

`A000006(A080147(n+1))`
-/

namespace A080680.P11977910678878676137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A080147 (n + 1)).toNat

end

end A080680.P11977910678878676137

namespace A080680

/-- `A000006(A080147(n+1))` -/
def P11977910678878676137.Spec : Prop :=
  ∀ n, P11977910678878676137.a n = A080680 (n + 1)

end A080680

/-! ## A080680.P9638414692285479563

`floor(sqrt(p?[A016777(n)+n]+1))`
-/

namespace A080680.P9638414692285479563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1)

end

end A080680.P9638414692285479563

namespace A080680

/-- `floor(sqrt(p?[A016777(n)+n]+1))` -/
def P9638414692285479563.Spec : Prop :=
  ∀ n, P9638414692285479563.a n = A080680 (n + 1)

end A080680

/-! ## A080680.P18285000968676997991

`floor(sqrt(p?[A016873(n)-(n+1)]+1))`
-/

namespace A080680.P18285000968676997991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1)

end

end A080680.P18285000968676997991

namespace A080680

/-- `floor(sqrt(p?[A016873(n)-(n+1)]+1))` -/
def P18285000968676997991.Spec : Prop :=
  ∀ n, P18285000968676997991.a n = A080680 (n + 1)

end A080680

/-! ## A080680.P775161475883407271

`A000267(A005098(n+1))`
-/

namespace A080680.P775161475883407271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A005098 (n + 1)).toNat

end

end A080680.P775161475883407271

namespace A080680

/-- `A000267(A005098(n+1))` -/
def P775161475883407271.Spec : Prop :=
  ∀ n, P775161475883407271.a n = A080680 (n + 1)

end A080680

/-! ## A080680.P15598440812821946735

`A103128(A119681(n+1))`
-/

namespace A080680.P15598440812821946735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A119681 (n + 1)).toNat

end

end A080680.P15598440812821946735

namespace A080680

/-- `A103128(A119681(n+1))` -/
def P15598440812821946735.Spec : Prop :=
  ∀ n, P15598440812821946735.a n = A080680 (n + 1)

end A080680

/-! ## A080680.P5178574484686161110

`A172471(A104636(n+1))`
-/

namespace A080680.P5178574484686161110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A104636 (n + 1)).toNat

end

end A080680.P5178574484686161110

namespace A080680

/-- `A172471(A104636(n+1))` -/
def P5178574484686161110.Spec : Prop :=
  ∀ n, P5178574484686161110.a n = A080680 (n + 1)

end A080680

/-! ## A080680.P13464172993158807273

`floor(sqrt(record[A014963(4*n+5)]))`
-/

namespace A080680.P13464172993158807273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A080680.P13464172993158807273

namespace A080680

/-- `floor(sqrt(record[A014963(4*n+5)]))` -/
def P13464172993158807273.Spec : Prop :=
  ∀ n, P13464172993158807273.a n = A080680 (n + 1)

end A080680

/-! ## A080680.P11069609640671336099

`A000196(A152680(n+1))`
-/

namespace A080680.P11069609640671336099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A152680 (n + 1)).toNat

end

end A080680.P11069609640671336099

namespace A080680

/-- `A000196(A152680(n+1))` -/
def P11069609640671336099.Spec : Prop :=
  ∀ n, P11069609640671336099.a n = A080680 (n + 1)

end A080680

/-! ## A080680.P9325615891318933631

`A000196(A002313(n+2))`
-/

namespace A080680.P9325615891318933631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A002313 (n + 2)).toNat

end

end A080680.P9325615891318933631

namespace A080680

/-- `A000196(A002313(n+2))` -/
def P9325615891318933631.Spec : Prop :=
  ∀ n, P9325615891318933631.a n = A080680 (n + 1)

end A080680

/-! ## A080680.P7105915517809366487

`A000196(A280084(n+2))`
-/

namespace A080680.P7105915517809366487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A280084 (n + 2)).toNat

end

end A080680.P7105915517809366487

namespace A080680

/-- `A000196(A280084(n+2))` -/
def P7105915517809366487.Spec : Prop :=
  ∀ n, P7105915517809366487.a n = A080680 (n + 1)

end A080680

/-!
# A080681: 17-smooth numbers: numbers whose prime divisors are all <= 17.

The programs for A080681, the canonical program `A080681.P3534374354548157970` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080681 has offset 1).

The definition of A080681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1937 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080681.P3534374354548157970

`lt[A061395(n+1), 8]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A080681

/-- `lt[A061395(n+1), 8]+1` -/
def P3534374354548157970.Spec : Prop :=
  ∀ n, (P3534374354548157970.a n : ℤ) = A080681 (n + 1)

theorem P3534374354548157970.correct : P3534374354548157970.Spec := by
  intro n
  simp only [A080681, Nat.add_sub_cancel]

end A080681

/-! ## A080681.P207206163494541065

`lt[A006530(n+1), 19]+1`
-/

namespace A080681.P207206163494541065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080681.P207206163494541065

namespace A080681

/-- `lt[A006530(n+1), 19]+1` -/
def P207206163494541065.Spec : Prop :=
  ∀ n, (P207206163494541065.a n : ℤ) = A080681 (n + 1)

end A080681

/-! ## A080681.P10236217368120555332

`lt[A332899(n+1)+1, 9]+1`
-/

namespace A080681.P10236217368120555332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080681.P10236217368120555332

namespace A080681

/-- `lt[A332899(n+1)+1, 9]+1` -/
def P10236217368120555332.Spec : Prop :=
  ∀ n, (P10236217368120555332.a n : ℤ) = A080681 (n + 1)

end A080681

/-! ## A080681.P3819104926338014792

`∩[A080682(n+1), A160544(n+1)]`
-/

namespace A080681.P3819104926338014792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080681.P3819104926338014792

namespace A080681

/-- `∩[A080682(n+1), A160544(n+1)]` -/
def P3819104926338014792.Spec : Prop :=
  ∀ n, (P3819104926338014792.a n : ℤ) = A080681 (n + 1)

end A080681

/-! ## A080681.P9099581588066053679

`eq[17, A006530(17*(n+1))]+1`
-/

namespace A080681.P9099581588066053679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (17 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080681.P9099581588066053679

namespace A080681

/-- `eq[17, A006530(17*(n+1))]+1` -/
def P9099581588066053679.Spec : Prop :=
  ∀ n, (P9099581588066053679.a n : ℤ) = A080681 (n + 1)

end A080681

/-! ## A080681.P7050125618811129460

`record[A048843(n)/A006530(A048843(n))]`
-/

namespace A080681.P7050125618811129460
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048843 n : ℚ) / (A006530 (A048843 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080681.P7050125618811129460

namespace A080681

/-- `record[A048843(n)/A006530(A048843(n))]` -/
def P7050125618811129460.Spec : Prop :=
  ∀ n, P7050125618811129460.a n = (A080681 (n + 1) : ℚ)

end A080681

/-! ## A080681.P15754897496618403744

`record[A317317(n+1)/A006530(A317317(n+1))]`
-/

namespace A080681.P15754897496618403744
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317317 (n + 1) : ℚ) / (A006530 (A317317 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080681.P15754897496618403744

namespace A080681

/-- `record[A317317(n+1)/A006530(A317317(n+1))]` -/
def P15754897496618403744.Spec : Prop :=
  ∀ n, P15754897496618403744.a n = (A080681 (n + 1) : ℚ)

end A080681

/-! ## A080681.P16009677903463136788

`record[A052126(A008599(n+1))]`
-/

namespace A080681.P16009677903463136788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A008599 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080681.P16009677903463136788

namespace A080681

/-- `record[A052126(A008599(n+1))]` -/
def P16009677903463136788.Spec : Prop :=
  ∀ n, P16009677903463136788.a n = A080681 (n + 1)

end A080681

/-! ## A080681.P11826864327695955330

`∩[A080682(n+1), A368728(n+1)]`
-/

namespace A080681.P11826864327695955330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080681.P11826864327695955330

namespace A080681

/-- `∩[A080682(n+1), A368728(n+1)]` -/
def P11826864327695955330.Spec : Prop :=
  ∀ n, (P11826864327695955330.a n : ℤ) = A080681 (n + 1)

end A080681

/-!
# A080682: 19-smooth numbers: numbers whose prime divisors are all <= 19.

The programs for A080682, there is no canonical definition to state claims against.
-/

/-! ## A080682.P6957258673025167387

`A147575(n+1)/A147575(gcd(n, A020639(n+1)))`
-/

namespace A080682.P6957258673025167387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147575 (n + 1) : ℚ) / (A147575 (Int.gcd (n : ℤ) (A020639 (n + 1))) : ℚ)

end

end A080682.P6957258673025167387

/-! ## A080682.P3447754935804975855

`lt[A061395(n+1), 9]+1`
-/

namespace A080682.P3447754935804975855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080682.P3447754935804975855

/-! ## A080682.P14195276693844708834

`lt[A006530(n+1), 21]+1`
-/

namespace A080682.P14195276693844708834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080682.P14195276693844708834

/-! ## A080682.P6923976501788513179

`lt[A006530(n*A000005(a(n-1))), 23]` with `a(0)=23`
-/

namespace A080682.P6923976501788513179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [23] fun n f1 =>
  A006530 ((n : ℤ) * A000005 (f1 (n - 1)).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A080682.P6923976501788513179

/-! ## A080682.P7756462331216099434

`lt[sqrt(A332899(n+1)), 3]+1`
-/

namespace A080682.P7756462331216099434
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A332899 (n + 1) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A080682.P7756462331216099434

/-! ## A080682.P5927146563157369631

`lt[n/20, A052126(n+1)]+1`
-/

namespace A080682.P5927146563157369631
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A080682.P5927146563157369631

/-! ## A080682.P16236319775333425522

`eq[19, A006530(19*(n+1))]+1`
-/

namespace A080682.P16236319775333425522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (19 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080682.P16236319775333425522

/-! ## A080682.P8125852222424223686

`record[A048844(n)/A006530(A048844(n))]`
-/

namespace A080682.P8125852222424223686
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048844 n : ℚ) / (A006530 (A048844 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080682.P8125852222424223686

/-! ## A080682.P5696027976535329668

`record[A008601(n+1)/A006530(A008601(n+1))]`
-/

namespace A080682.P5696027976535329668
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008601 (n + 1) : ℚ) / (A006530 (A008601 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080682.P5696027976535329668

/-! ## A080682.P5904351106140353363

`record[A317319(n+1)/A006530(A317319(n+1))]`
-/

namespace A080682.P5904351106140353363
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317319 (n + 1) : ℚ) / (A006530 (A317319 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080682.P5904351106140353363

/-!
# A080683: 23-smooth numbers: numbers whose prime divisors are all <= 23.

The programs for A080683, the canonical program `A080683.P4164783436571968620` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080683 has offset 1).

The definition of A080683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080683.P4164783436571968620

`lt[A061395(n+1), 10]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A080683

/-- `lt[A061395(n+1), 10]+1` -/
def P4164783436571968620.Spec : Prop :=
  ∀ n, (P4164783436571968620.a n : ℤ) = A080683 (n + 1)

theorem P4164783436571968620.correct : P4164783436571968620.Spec := by
  intro n
  simp only [A080683, Nat.add_sub_cancel]

end A080683

/-! ## A080683.P5715986010370350059

`lt[A006530(n+1), 27]+1`
-/

namespace A080683.P5715986010370350059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080683.P5715986010370350059

namespace A080683

/-- `lt[A006530(n+1), 27]+1` -/
def P5715986010370350059.Spec : Prop :=
  ∀ n, (P5715986010370350059.a n : ℤ) = A080683 (n + 1)

end A080683

/-! ## A080683.P14128209868592172789

`lt[A253560(n+1), A226944(n+2)]+1`
-/

namespace A080683.P14128209868592172789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226944 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A080683.P14128209868592172789

namespace A080683

/-- `lt[A253560(n+1), A226944(n+2)]+1` -/
def P14128209868592172789.Spec : Prop :=
  ∀ n, (P14128209868592172789.a n : ℤ) = A080683 (n + 1)

end A080683

/-! ## A080683.P17209882123598927973

`eq[23, A006530(23*(n+1))]+1`
-/

namespace A080683.P17209882123598927973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (23 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080683.P17209882123598927973

namespace A080683

/-- `eq[23, A006530(23*(n+1))]+1` -/
def P17209882123598927973.Spec : Prop :=
  ∀ n, (P17209882123598927973.a n : ℤ) = A080683 (n + 1)

end A080683

/-! ## A080683.P11234443890693361576

`record[A048845(n)/A006530(A048845(n))]`
-/

namespace A080683.P11234443890693361576
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048845 n : ℚ) / (A006530 (A048845 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080683.P11234443890693361576

namespace A080683

/-- `record[A048845(n)/A006530(A048845(n))]` -/
def P11234443890693361576.Spec : Prop :=
  ∀ n, P11234443890693361576.a n = (A080683 (n + 1) : ℚ)

end A080683

/-! ## A080683.P5739412199851405348

`record[A317323(n+1)/A006530(A317323(n+1))]`
-/

namespace A080683.P5739412199851405348
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317323 (n + 1) : ℚ) / (A006530 (A317323 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080683.P5739412199851405348

namespace A080683

/-- `record[A317323(n+1)/A006530(A317323(n+1))]` -/
def P5739412199851405348.Spec : Prop :=
  ∀ n, P5739412199851405348.a n = (A080683 (n + 1) : ℚ)

end A080683

/-! ## A080683.P9281206858458803510

`A174228(n+1)%A109379(A301291(n))`
-/

namespace A080683.P9281206858458803510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174228 (n + 1)) (A109379 (A301291 n).toNat)

end

end A080683.P9281206858458803510

namespace A080683

/-- `A174228(n+1)%A109379(A301291(n))` -/
def P9281206858458803510.Spec : Prop :=
  ∀ n, P9281206858458803510.a n = A080683 (n + 1)

end A080683

/-! ## A080683.P977442838305957422

`A174228(n+1)+A101676(A175791(n+1))`
-/

namespace A080683.P977442838305957422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174228 (n + 1) + A101676 (A175791 (n + 1)).toNat

end

end A080683.P977442838305957422

namespace A080683

/-- `A174228(n+1)+A101676(A175791(n+1))` -/
def P977442838305957422.Spec : Prop :=
  ∀ n, P977442838305957422.a n = A080683 (n + 1)

end A080683

/-! ## A080683.P10308803225002150685

`lt[A279339(n+1), A016957(n)]+1`
-/

namespace A080683.P10308803225002150685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A080683.P10308803225002150685

namespace A080683

/-- `lt[A279339(n+1), A016957(n)]+1` -/
def P10308803225002150685.Spec : Prop :=
  ∀ n, (P10308803225002150685.a n : ℤ) = A080683 (n + 1)

end A080683

/-! ## A080683.P18429256373779680543

`A174228(n+1)+A101637(A331695(n+1))`
-/

namespace A080683.P18429256373779680543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174228 (n + 1) + A101637 (A331695 (n + 1)).toNat

end

end A080683.P18429256373779680543

namespace A080683

/-- `A174228(n+1)+A101637(A331695(n+1))` -/
def P18429256373779680543.Spec : Prop :=
  ∀ n, P18429256373779680543.a n = A080683 (n + 1)

end A080683

/-!
# A080684: Number of 13-smooth numbers <= n.

The programs for A080684, the canonical program `A080684.P2899133188120263658` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080684 has offset 1).

The definition of A080684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080684.P13192427980870099379

`∑[∏{p}[n+1, round(2/sqrt(#))]]`
-/

namespace A080684.P13192427980870099379
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.roundAway (2 / Real.sqrt (p : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080684.P13192427980870099379

namespace A080684

/-- `∑[∏{p}[n+1, round(2/sqrt(#))]]` -/
def P13192427980870099379.Spec : Prop :=
  ∀ n, P13192427980870099379.a n = A080684 (n + 1)

end A080684

/-! ## A080684.P10699314391147789657

`∑[char[A080197(n+1)-1]]`
-/

namespace A080684.P10699314391147789657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080684.P10699314391147789657

namespace A080684

/-- `∑[char[A080197(n+1)-1]]` -/
def P10699314391147789657.Spec : Prop :=
  ∀ n, (P10699314391147789657.a n : ℤ) = A080684 (n + 1)

end A080684

/-! ## A080684.P16046360652625572234

`∑[char[lt[A006530(n+1), 14]]]`
-/

namespace A080684.P16046360652625572234
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080684.P16046360652625572234

namespace A080684

/-- `∑[char[lt[A006530(n+1), 14]]]` -/
def P16046360652625572234.Spec : Prop :=
  ∀ n, (P16046360652625572234.a n : ℤ) = A080684 (n + 1)

end A080684

/-! ## A080684.P2899133188120263658

`∑[round(7/A006530(7*(n+1)))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A080684

/-- `∑[round(7/A006530(7*(n+1)))]` -/
def P2899133188120263658.Spec : Prop :=
  ∀ n, P2899133188120263658.a n = A080684 (n + 1)

theorem P2899133188120263658.correct : P2899133188120263658.Spec := by
  intro n
  simp only [A080684, Nat.add_sub_cancel]

end A080684

/-! ## A080684.P8904834110496086061

`∑[floor(14/A006530(11*(n+1)))]`
-/

namespace A080684.P8904834110496086061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊14 / (A006530 (11 * (n + 1)) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080684.P8904834110496086061

namespace A080684

/-- `∑[floor(14/A006530(11*(n+1)))]` -/
def P8904834110496086061.Spec : Prop :=
  ∀ n, P8904834110496086061.a n = A080684 (n + 1)

end A080684

/-! ## A080684.P17427682533226838046

`∑[C(13, A006530(13*(n+1)))]`
-/

namespace A080684.P17427682533226838046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 13 (A006530 (13 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080684.P17427682533226838046

namespace A080684

/-- `∑[C(13, A006530(13*(n+1)))]` -/
def P17427682533226838046.Spec : Prop :=
  ∀ n, (P17427682533226838046.a n : ℤ) = A080684 (n + 1)

end A080684

/-! ## A080684.P5010344390796292813

`∑[A016168(A025492((n+1)²))]`
-/

namespace A080684.P5010344390796292813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016168 (A025492 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080684.P5010344390796292813

namespace A080684

/-- `∑[A016168(A025492((n+1)²))]` -/
def P5010344390796292813.Spec : Prop :=
  ∀ n, P5010344390796292813.a n = A080684 (n + 1)

end A080684

/-!
# A080685: Number of 17-smooth numbers <= n.

The programs for A080685, the canonical program `A080685.P10681213933144538552` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080685 has offset 1).

The definition of A080685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080685.P10681213933144538552

`∑[char[A080681(n+1)-1]]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A080685

/-- `∑[char[A080681(n+1)-1]]` -/
def P10681213933144538552.Spec : Prop :=
  ∀ n, (P10681213933144538552.a n : ℤ) = A080685 (n + 1)

theorem P10681213933144538552.correct : P10681213933144538552.Spec := by
  intro n
  simp only [A080685, Nat.add_sub_cancel]

end A080685

/-! ## A080685.P7556286568869125819

`∑[round(tanh(2)^A006530(n+1))]`
-/

namespace A080685.P7556286568869125819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (2 : ℝ) ^ (A006530 (n + 1) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080685.P7556286568869125819

namespace A080685

/-- `∑[round(tanh(2)^A006530(n+1))]` -/
def P7556286568869125819.Spec : Prop :=
  ∀ n, P7556286568869125819.a n = A080685 (n + 1)

end A080685

/-! ## A080685.P3779328137980190399

`∑[A016168(3*A334202(n+1))]`
-/

namespace A080685.P3779328137980190399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016168 (3 * A334202 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080685.P3779328137980190399

namespace A080685

/-- `∑[A016168(3*A334202(n+1))]` -/
def P3779328137980190399.Spec : Prop :=
  ∀ n, P3779328137980190399.a n = A080685 (n + 1)

end A080685

/-! ## A080685.P17573733870902840563

`∑[A016168((1-A334202(n+1))²)]`
-/

namespace A080685.P17573733870902840563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016168 ((1 - A334202 (n + 1)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080685.P17573733870902840563

namespace A080685

/-- `∑[A016168((1-A334202(n+1))²)]` -/
def P17573733870902840563.Spec : Prop :=
  ∀ n, P17573733870902840563.a n = A080685 (n + 1)

end A080685

/-! ## A080685.P17035574385470490231

`∑[floor(18/A006530(11*(n+1)))]`
-/

namespace A080685.P17035574385470490231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊18 / (A006530 (11 * (n + 1)) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080685.P17035574385470490231

namespace A080685

/-- `∑[floor(18/A006530(11*(n+1)))]` -/
def P17035574385470490231.Spec : Prop :=
  ∀ n, P17035574385470490231.a n = A080685 (n + 1)

end A080685

/-! ## A080685.P3206283684100215004

`∑[val(A006530(17*(n+1)), 17)]`
-/

namespace A080685.P3206283684100215004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006530 (17 * (n + 1))).toNat 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080685.P3206283684100215004

namespace A080685

/-- `∑[val(A006530(17*(n+1)), 17)]` -/
def P3206283684100215004.Spec : Prop :=
  ∀ n, (P3206283684100215004.a n : ℤ) = A080685 (n + 1)

end A080685

/-! ## A080685.P12474516985324704118

`∑[A346483(n+1)^A292256(A292255(n+1))]`
-/

namespace A080685.P12474516985324704118
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346483 (n + 1) : ℚ) ^ (A292256 (A292255 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080685.P12474516985324704118

namespace A080685

/-- `∑[A346483(n+1)^A292256(A292255(n+1))]` -/
def P12474516985324704118.Spec : Prop :=
  ∀ n, P12474516985324704118.a n = (A080685 (n + 1) : ℚ)

end A080685

/-!
# A080686: Number of 19-smooth numbers <= n.

The programs for A080686, the canonical program `A080686.P6386177365322924705` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080686 has offset 1).

The definition of A080686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080686.P6386177365322924705

`∑[∏{p}[n+1, val(#%21, #)]]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080686

/-- `∑[∏{p}[n+1, val(#%21, #)]]` -/
def P6386177365322924705.Spec : Prop :=
  ∀ n, (P6386177365322924705.a n : ℤ) = A080686 (n + 1)

theorem P6386177365322924705.correct : P6386177365322924705.Spec := by
  intro n
  simp only [A080686, Nat.add_sub_cancel]

end A080686

/-! ## A080686.P2196391420104702844

`∑[round(10/A006530(7*(n+1)))]`
-/

namespace A080686.P2196391420104702844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (10 / (A006530 (7 * (n + 1)) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080686.P2196391420104702844

namespace A080686

/-- `∑[round(10/A006530(7*(n+1)))]` -/
def P2196391420104702844.Spec : Prop :=
  ∀ n, P2196391420104702844.a n = A080686 (n + 1)

end A080686

/-! ## A080686.P5073810531595442616

`∑[ceil(1/(20-A006530(n+1)))]`
-/

namespace A080686.P5073810531595442616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (20 - A006530 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080686.P5073810531595442616

namespace A080686

/-- `∑[ceil(1/(20-A006530(n+1)))]` -/
def P5073810531595442616.Spec : Prop :=
  ∀ n, P5073810531595442616.a n = A080686 (n + 1)

end A080686

/-! ## A080686.P6839925543213343150

`∑[A016168((2-A334202(n+1))²)]`
-/

namespace A080686.P6839925543213343150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016168 ((2 - A334202 (n + 1)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080686.P6839925543213343150

namespace A080686

/-- `∑[A016168((2-A334202(n+1))²)]` -/
def P6839925543213343150.Spec : Prop :=
  ∀ n, P6839925543213343150.a n = A080686 (n + 1)

end A080686

/-! ## A080686.P1639167974837698399

`∑[floor(20/A006530(11*(n+1)))]`
-/

namespace A080686.P1639167974837698399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊20 / (A006530 (11 * (n + 1)) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080686.P1639167974837698399

namespace A080686

/-- `∑[floor(20/A006530(11*(n+1)))]` -/
def P1639167974837698399.Spec : Prop :=
  ∀ n, P1639167974837698399.a n = A080686 (n + 1)

end A080686

/-! ## A080686.P12705942503219209002

`∑[val(A006530(19*(n+1)), 19)]`
-/

namespace A080686.P12705942503219209002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006530 (19 * (n + 1))).toNat 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080686.P12705942503219209002

namespace A080686

/-- `∑[val(A006530(19*(n+1)), 19)]` -/
def P12705942503219209002.Spec : Prop :=
  ∀ n, (P12705942503219209002.a n : ℤ) = A080686 (n + 1)

end A080686

/-! ## A080686.P4574300451401018820

`∑[A242718(A006530(n+1))]`
-/

namespace A080686.P4574300451401018820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242718 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080686.P4574300451401018820

namespace A080686

/-- `∑[A242718(A006530(n+1))]` -/
def P4574300451401018820.Spec : Prop :=
  ∀ n, P4574300451401018820.a n = A080686 (n + 1)

end A080686

/-!
# A080687: Number of labeled n-element posets with no 3-element antichain.

The programs for A080687, there is no canonical definition to state claims against.
-/

/-! ## A080687.P6999578712050647263

`A385057(n)+A269242(A007788(n))`
-/

namespace A080687.P6999578712050647263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385057 n + A269242 (A007788 n).toNat

end

end A080687.P6999578712050647263

/-! ## A080687.P5216144947549413926

`A000312(n)-A059995(A015455(n))`
-/

namespace A080687.P5216144947549413926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n - A059995 (A015455 n).toNat

end

end A080687.P5216144947549413926

/-!
# A080688: Resort the index of A064553 using A080444 and maintaining ascending order within each grouping: seen as a triangle read by rows, the n-th row contains the A001055(n) numbers m with A064553(m)=n.

The programs for A080688, there is no canonical definition to state claims against.
-/

/-! ## A080688.P10205108154546620868

`∏{e}[A122819(n+1), A000040(#)]`
-/

namespace A080688.P10205108154546620868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A080688.P10205108154546620868

/-! ## A080688.P13730328687777629419

`∏{e}[A122819(n+1), A052085(#)]`
-/

namespace A080688.P13730328687777629419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A052085 (Nat.factorization (f1 n).natAbs p)

end

end A080688.P13730328687777629419

/-! ## A080688.P4619553416102573308

`∏{e}[A122819(n+1), A054403(#)]`
-/

namespace A080688.P4619553416102573308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A054403 (Nat.factorization (f1 n).natAbs p)

end

end A080688.P4619553416102573308

/-! ## A080688.P3104351846392770014

`∏{e}[A122819(n+1), A069684(#)]`
-/

namespace A080688.P3104351846392770014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A069684 (Nat.factorization (f1 n).natAbs p)

end

end A080688.P3104351846392770014

/-! ## A080688.P14178126686131705764

`A181819(A071364(A122819(n+1)))`
-/

namespace A080688.P14178126686131705764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A071364 (A122819 (n + 1)).toNat).toNat

end

end A080688.P14178126686131705764

/-!
# A080689: Powers of 10 that reach ...,7,8,4,2,1 under the mapping: if n is even divide by 2 else add 1.

The programs for A080689, there is no canonical definition to state claims against.
-/

/-! ## A080689.P11685148474413412497

`∑[p?[A072226(A077805(n+1))]]`
-/

namespace A080689.P11685148474413412497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072226 (A077805 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080689.P11685148474413412497

/-! ## A080689.P8900304771203490587

`∑[p?[A002033(A288068(n+1))]]`
-/

namespace A080689.P8900304771203490587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A288068 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080689.P8900304771203490587

/-! ## A080689.P9436432725238617191

`∑[p?[A002033(A151510(n))]]`
-/

namespace A080689.P9436432725238617191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A151510 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080689.P9436432725238617191

/-! ## A080689.P5114824650070995365

`∑[p?[A002033(A047967(n))]]`
-/

namespace A080689.P5114824650070995365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A047967 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080689.P5114824650070995365

/-! ## A080689.P6236986637972534082

`∑[p?[A074206(A062445(n))]]`
-/

namespace A080689.P6236986637972534082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A062445 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080689.P6236986637972534082

/-!
# A080690: Number of acyclic orientations of n X n grid graph.

The programs for A080690, there is no canonical definition to state claims against.
-/

/-! ## A080690.P125075485808877974

`A360922((n+1)²+n²)`
-/

namespace A080690.P125075485808877974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360922 ((n + 1) ^ 2 + n ^ 2)

end

end A080690.P125075485808877974

/-!
# A080691: Number of spanning forests of the n X n grid graph.

The programs for A080691, there is no canonical definition to state claims against.
-/

/-! ## A080691.P8857405975216979412

`A360194((n+1)²+n²)`
-/

namespace A080691.P8857405975216979412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360194 ((n + 1) ^ 2 + n ^ 2)

end

end A080691.P8857405975216979412

/-!
# A080692: a(n)=(-1)^(n+1)*det(M(n)) where M(n) is the n X n matrix M(i,j)=min(abs(i-j),i).

The programs for A080692, the canonical program `A080692.P2810118921936423499` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080692 has offset 1).

The definition of A080692 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080692.P2810118921936423499

`2*a(n-1)+A054243(n)` with `a(0)=0`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A080692

/-- `2*a(n-1)+A054243(n)` -/
def P2810118921936423499.Spec : Prop :=
  ∀ n, P2810118921936423499.a n = A080692 (n + 1)

theorem P2810118921936423499.correct : P2810118921936423499.Spec := by
  intro n
  simp only [A080692, Nat.add_sub_cancel]

end A080692

/-! ## A080692.P4420170394749537459

`A275862(n+1)-A005865(A005865(n+3))`
-/

namespace A080692.P4420170394749537459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275862 (n + 1) - A005865 (A005865 (n + 3)).toNat

end

end A080692.P4420170394749537459

namespace A080692

/-- `A275862(n+1)-A005865(A005865(n+3))` -/
def P4420170394749537459.Spec : Prop :=
  ∀ n, P4420170394749537459.a n = A080692 (n + 1)

end A080692

/-! ## A080692.P4032771363502237838

`A331535(A150190(n))`
-/

namespace A080692.P4032771363502237838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331535 (A150190 n).toNat

end

end A080692.P4032771363502237838

namespace A080692

/-- `A331535(A150190(n))` -/
def P4032771363502237838.Spec : Prop :=
  ∀ n, P4032771363502237838.a n = A080692 (n + 1)

end A080692

/-! ## A080692.P3177382750626899874

`A172471(A151128(n))-1`
-/

namespace A080692.P3177382750626899874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A151128 n).toNat - 1

end

end A080692.P3177382750626899874

namespace A080692

/-- `A172471(A151128(n))-1` -/
def P3177382750626899874.Spec : Prop :=
  ∀ n, P3177382750626899874.a n = A080692 (n + 1)

end A080692

/-!
# A080693: Numbers of the form p^2*q + r*s where p,q,r,s are (not necessarily distinct) primes.

The programs for A080693, there is no canonical definition to state claims against.
-/

/-! ## A080693.P16205974985041346458

`lt[A343917(n+2), A343995(n+5)]`
-/

namespace A080693.P16205974985041346458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343917 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343995 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080693.P16205974985041346458

/-!
# A080695: Concatenation of the prime power factors (with maximal exponent) of n; a(1) = 1 by convention.

The programs for A080695, there is no canonical definition to state claims against.
-/

/-! ## A080695.P6726700703497992981

`A017666(A239448(n+1)%A269201(n+1))`
-/

namespace A080695.P6726700703497992981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (Int.tmod (A239448 (n + 1)) (A269201 (n + 1))).toNat

end

end A080695.P6726700703497992981

/-! ## A080695.P426245556291346907

`A239448(A043317(n+1))`
-/

namespace A080695.P426245556291346907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239448 (A043317 (n + 1)).toNat

end

end A080695.P426245556291346907

/-! ## A080695.P14018375305311636773

`A239448(A044914(n+1))`
-/

namespace A080695.P14018375305311636773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239448 (A044914 (n + 1)).toNat

end

end A080695.P14018375305311636773

/-! ## A080695.P2352452493221879889

`A239448(A055648(n+1))`
-/

namespace A080695.P2352452493221879889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239448 (A055648 (n + 1)).toNat

end

end A080695.P2352452493221879889

/-! ## A080695.P11522998228289108008

`A239448(A132378(n+1))`
-/

namespace A080695.P11522998228289108008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239448 (A132378 (n + 1)).toNat

end

end A080695.P11522998228289108008

/-!
# A080696: Piptorial numbers = product of first n pips or prime-indexed primes.

The programs for A080696, there is no canonical definition to state claims against.
-/

/-! ## A080696.P3209188192314054326

`∏[A006450(n+1)]`
-/

namespace A080696.P3209188192314054326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A080696.P3209188192314054326

/-! ## A080696.P8514515007698752474

`∏[A175247(n+2)]`
-/

namespace A080696.P8514515007698752474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A080696.P8514515007698752474

/-! ## A080696.P11698533126343999406

`∏[sqrt(A092769(n+1))]`
-/

namespace A080696.P11698533126343999406
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A092769 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A080696.P11698533126343999406

/-! ## A080696.P4988924670524365860

`∏[p?[A048989(n+1)]]`
-/

namespace A080696.P4988924670524365860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048989 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A080696.P4988924670524365860

/-! ## A080696.P4501778795655249639

`∏[p?[A064988(n+1)]]`
-/

namespace A080696.P4501778795655249639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A080696.P4501778795655249639

/-!
# A080697: a(n) = n * prime(prime(n)).

The programs for A080697, the canonical program `A080697.P5728652288469415747` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080697 has offset 1).

The definition of A080697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080697.P5728652288469415747

`(n+1)*A006450(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A080697

/-- `(n+1)*A006450(n+1)` -/
def P5728652288469415747.Spec : Prop :=
  ∀ n, P5728652288469415747.a n = A080697 (n + 1)

theorem P5728652288469415747.correct : P5728652288469415747.Spec := by
  intro n
  simp only [A080697, Nat.add_sub_cancel]

end A080697

/-! ## A080697.P9176501155683339523

`(n+1)*sqrt(A092769(n+1))`
-/

namespace A080697.P9176501155683339523
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A092769 (n + 1) : ℝ)

end

end A080697.P9176501155683339523

namespace A080697

/-- `(n+1)*sqrt(A092769(n+1))` -/
def P9176501155683339523.Spec : Prop :=
  ∀ n, P9176501155683339523.a n = (A080697 (n + 1) : ℝ)

end A080697

/-! ## A080697.P13663253040971172410

`(n+1)*(A141138(n+1)+1)`
-/

namespace A080697.P13663253040971172410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A141138 (n + 1) + 1)

end

end A080697.P13663253040971172410

namespace A080697

/-- `(n+1)*(A141138(n+1)+1)` -/
def P13663253040971172410.Spec : Prop :=
  ∀ n, P13663253040971172410.a n = A080697 (n + 1)

end A080697

/-! ## A080697.P9300858013919613725

`(n+1)*(A262021(n+1)+n+1)`
-/

namespace A080697.P9300858013919613725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A262021 (n + 1) + (n + 1 : ℤ))

end

end A080697.P9300858013919613725

namespace A080697

/-- `(n+1)*(A262021(n+1)+n+1)` -/
def P9300858013919613725.Spec : Prop :=
  ∀ n, P9300858013919613725.a n = A080697 (n + 1)

end A080697

/-! ## A080697.P12945394583217655230

`A230285(n+1)+Δ[A007504(n)]`
-/

namespace A080697.P12945394583217655230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230285 (n + 1) + (f1 (n + 1) - f1 n)

end

end A080697.P12945394583217655230

namespace A080697

/-- `A230285(n+1)+Δ[A007504(n)]` -/
def P12945394583217655230.Spec : Prop :=
  ∀ n, P12945394583217655230.a n = A080697 (n + 1)

end A080697

/-! ## A080697.P641844134843845105

`A230285(n+1)+A000040(n+1)`
-/

namespace A080697.P641844134843845105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230285 (n + 1) + A000040 (n + 1)

end

end A080697.P641844134843845105

namespace A080697

/-- `A230285(n+1)+A000040(n+1)` -/
def P641844134843845105.Spec : Prop :=
  ∀ n, P641844134843845105.a n = A080697 (n + 1)

end A080697

/-! ## A080697.P2516071852699332070

`A230098(n+1)+A001248(n+1)`
-/

namespace A080697.P2516071852699332070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230098 (n + 1) + A001248 (n + 1)

end

end A080697.P2516071852699332070

namespace A080697

/-- `A230098(n+1)+A001248(n+1)` -/
def P2516071852699332070.Spec : Prop :=
  ∀ n, P2516071852699332070.a n = A080697 (n + 1)

end A080697

/-! ## A080697.P12413918052468848107

`lcm(A000027(n+1), A006450(n+1))`
-/

namespace A080697.P12413918052468848107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A006450 (n + 1))

end

end A080697.P12413918052468848107

namespace A080697

/-- `lcm(A000027(n+1), A006450(n+1))` -/
def P12413918052468848107.Spec : Prop :=
  ∀ n, (P12413918052468848107.a n : ℤ) = A080697 (n + 1)

end A080697

/-! ## A080697.P2250217852222946848

`A230098(n+1)+A000040(n+1)²`
-/

namespace A080697.P2250217852222946848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230098 (n + 1) + A000040 (n + 1) ^ 2

end

end A080697.P2250217852222946848

namespace A080697

/-- `A230098(n+1)+A000040(n+1)²` -/
def P2250217852222946848.Spec : Prop :=
  ∀ n, P2250217852222946848.a n = A080697 (n + 1)

end A080697

/-! ## A080697.P6467759270556974291

`(n+1)*A175247(n+2)`
-/

namespace A080697.P6467759270556974291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A175247 (n + 2)

end

end A080697.P6467759270556974291

namespace A080697

/-- `(n+1)*A175247(n+2)` -/
def P6467759270556974291.Spec : Prop :=
  ∀ n, P6467759270556974291.a n = A080697 (n + 1)

end A080697

/-! ## A080697.P9751925994257687216

`A280076(n+2)+A230098(n+1)`
-/

namespace A080697.P9751925994257687216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 2) + A230098 (n + 1)

end

end A080697.P9751925994257687216

namespace A080697

/-- `A280076(n+2)+A230098(n+1)` -/
def P9751925994257687216.Spec : Prop :=
  ∀ n, P9751925994257687216.a n = A080697 (n + 1)

end A080697

/-! ## A080697.P15199458795437925812

`record[A006450(A133310(n))*A133310(n)]`
-/

namespace A080697.P15199458795437925812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A133310 n).toNat * A133310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080697.P15199458795437925812

namespace A080697

/-- `record[A006450(A133310(n))*A133310(n)]` -/
def P15199458795437925812.Spec : Prop :=
  ∀ n, P15199458795437925812.a n = A080697 (n + 1)

end A080697

/-! ## A080697.P13340529584428170403

`record[A006450(A341440(n))*A341440(n)]`
-/

namespace A080697.P13340529584428170403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A341440 n).toNat * A341440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080697.P13340529584428170403

namespace A080697

/-- `record[A006450(A341440(n))*A341440(n)]` -/
def P13340529584428170403.Spec : Prop :=
  ∀ n, P13340529584428170403.a n = A080697 (n + 1)

end A080697

/-! ## A080697.P11052558140887639790

`record[A006450(A154958(n))*A154958(n)]`
-/

namespace A080697.P11052558140887639790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A154958 n).toNat * A154958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080697.P11052558140887639790

namespace A080697

/-- `record[A006450(A154958(n))*A154958(n)]` -/
def P11052558140887639790.Spec : Prop :=
  ∀ n, P11052558140887639790.a n = A080697 (n + 1)

end A080697

/-! ## A080697.P4791016188284936157

`record[A006450(A117910(n))*A117910(n)]`
-/

namespace A080697.P4791016188284936157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A117910 n).toNat * A117910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080697.P4791016188284936157

namespace A080697

/-- `record[A006450(A117910(n))*A117910(n)]` -/
def P4791016188284936157.Spec : Prop :=
  ∀ n, P4791016188284936157.a n = A080697 (n + 1)

end A080697

/-! ## A080697.P2208480383255088006

`(n+1)*p?[A076610(n+1)]`
-/

namespace A080697.P2208480383255088006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080697.P2208480383255088006

namespace A080697

/-- `(n+1)*p?[A076610(n+1)]` -/
def P2208480383255088006.Spec : Prop :=
  ∀ n, P2208480383255088006.a n = A080697 (n + 1)

end A080697

/-! ## A080697.P7925226739121939953

`(n+1)*A120426(A008578(n+2))`
-/

namespace A080697.P7925226739121939953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A120426 (A008578 (n + 2)).toNat

end

end A080697.P7925226739121939953

namespace A080697

/-- `(n+1)*A120426(A008578(n+2))` -/
def P7925226739121939953.Spec : Prop :=
  ∀ n, P7925226739121939953.a n = A080697 (n + 1)

end A080697

/-! ## A080697.P3857122777284313644

`(n+1)*p?[A141436(n+1)]`
-/

namespace A080697.P3857122777284313644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080697.P3857122777284313644

namespace A080697

/-- `(n+1)*p?[A141436(n+1)]` -/
def P3857122777284313644.Spec : Prop :=
  ∀ n, P3857122777284313644.a n = A080697 (n + 1)

end A080697

/-! ## A080697.P17750830077893197181

`A128930(A000040(n+1))`
-/

namespace A080697.P17750830077893197181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128930 (A000040 (n + 1)).toNat

end

end A080697.P17750830077893197181

namespace A080697

/-- `A128930(A000040(n+1))` -/
def P17750830077893197181.Spec : Prop :=
  ∀ n, P17750830077893197181.a n = A080697 (n + 1)

end A080697

/-! ## A080697.P2701151631029614071

`A128930(A008578(n+2))`
-/

namespace A080697.P2701151631029614071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128930 (A008578 (n + 2)).toNat

end

end A080697.P2701151631029614071

namespace A080697

/-- `A128930(A008578(n+2))` -/
def P2701151631029614071.Spec : Prop :=
  ∀ n, P2701151631029614071.a n = A080697 (n + 1)

end A080697

/-!
# A080698: Product of twin-prime-indexed primes and their lower bound twin prime.

The programs for A080698, the canonical program `A080698.P8871704117380904120` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080698 has offset 1).

The definition of A080698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080698.P8871704117380904120

`A001359(n+1)*A057470(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A080698

/-- `A001359(n+1)*A057470(n+1)` -/
def P8871704117380904120.Spec : Prop :=
  ∀ n, P8871704117380904120.a n = A080698 (n + 1)

theorem P8871704117380904120.correct : P8871704117380904120.Spec := by
  intro n
  simp only [A080698, Nat.add_sub_cancel]

end A080698

/-! ## A080698.P16149568434457378729

`(A014574(n+1)-1)*A057470(n+1)`
-/

namespace A080698.P16149568434457378729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014574 (n + 1) - 1) * A057470 (n + 1)

end

end A080698.P16149568434457378729

namespace A080698

/-- `(A014574(n+1)-1)*A057470(n+1)` -/
def P16149568434457378729.Spec : Prop :=
  ∀ n, P16149568434457378729.a n = A080698 (n + 1)

end A080698

/-! ## A080698.P14523654410225876650

`(A006512(n+1)-2)*A057470(n+1)`
-/

namespace A080698.P14523654410225876650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006512 (n + 1) - 2) * A057470 (n + 1)

end

end A080698.P14523654410225876650

namespace A080698

/-- `(A006512(n+1)-2)*A057470(n+1)` -/
def P14523654410225876650.Spec : Prop :=
  ∀ n, P14523654410225876650.a n = A080698 (n + 1)

end A080698

/-! ## A080698.P15157757135471785792

`(A006512(n+1)-2)*A006450(A029707(n+1))`
-/

namespace A080698.P15157757135471785792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006512 (n + 1) - 2) * A006450 (A029707 (n + 1)).toNat

end

end A080698.P15157757135471785792

namespace A080698

/-- `(A006512(n+1)-2)*A006450(A029707(n+1))` -/
def P15157757135471785792.Spec : Prop :=
  ∀ n, P15157757135471785792.a n = A080698 (n + 1)

end A080698

/-! ## A080698.P13662586799614898666

`A080699(n+1)-A057470(n+1)-A057470(n+1)`
-/

namespace A080698.P13662586799614898666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080699 (n + 1) - A057470 (n + 1) - A057470 (n + 1)

end

end A080698.P13662586799614898666

namespace A080698

/-- `A080699(n+1)-A057470(n+1)-A057470(n+1)` -/
def P13662586799614898666.Spec : Prop :=
  ∀ n, P13662586799614898666.a n = A080698 (n + 1)

end A080698

/-! ## A080698.P16096345762090371637

`(A057473(n+1)-A096474(n+1))*A001359(n+1)`
-/

namespace A080698.P16096345762090371637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057473 (n + 1) - A096474 (n + 1)) * A001359 (n + 1)

end

end A080698.P16096345762090371637

namespace A080698

/-- `(A057473(n+1)-A096474(n+1))*A001359(n+1)` -/
def P16096345762090371637.Spec : Prop :=
  ∀ n, P16096345762090371637.a n = A080698 (n + 1)

end A080698

/-! ## A080698.P16496623431342955197

`A057470(n+1)/A057473(n+1)*A080700(n+1)`
-/

namespace A080698.P16496623431342955197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057470 (n + 1) : ℚ) / (A057473 (n + 1) : ℚ) * (A080700 (n + 1) : ℚ)

end

end A080698.P16496623431342955197

namespace A080698

/-- `A057470(n+1)/A057473(n+1)*A080700(n+1)` -/
def P16496623431342955197.Spec : Prop :=
  ∀ n, P16496623431342955197.a n = (A080698 (n + 1) : ℚ)

end A080698

/-! ## A080698.P17643454179263236187

`A080699(n+1)*A080700(n+1)/A080701(n+1)`
-/

namespace A080698.P17643454179263236187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080699 (n + 1) * A080700 (n + 1) : ℚ) / (A080701 (n + 1) : ℚ)

end

end A080698.P17643454179263236187

namespace A080698

/-- `A080699(n+1)*A080700(n+1)/A080701(n+1)` -/
def P17643454179263236187.Spec : Prop :=
  ∀ n, P17643454179263236187.a n = (A080698 (n + 1) : ℚ)

end A080698

/-! ## A080698.P2181328408113231714

`A073065(A029707(n+1))`
-/

namespace A080698.P2181328408113231714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073065 (A029707 (n + 1)).toNat

end

end A080698.P2181328408113231714

namespace A080698

/-- `A073065(A029707(n+1))` -/
def P2181328408113231714.Spec : Prop :=
  ∀ n, P2181328408113231714.a n = A080698 (n + 1)

end A080698

/-! ## A080698.P18095677479871296752

`A073065(A107770(n+1)-1)`
-/

namespace A080698.P18095677479871296752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073065 (A107770 (n + 1) - 1).toNat

end

end A080698.P18095677479871296752

namespace A080698

/-- `A073065(A107770(n+1)-1)` -/
def P18095677479871296752.Spec : Prop :=
  ∀ n, P18095677479871296752.a n = A080698 (n + 1)

end A080698

/-! ## A080698.P6252458720898781912

`p?[A000040(n+1)-2]*A057470(n+1)`
-/

namespace A080698.P6252458720898781912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A057470 (n + 1)

end

end A080698.P6252458720898781912

namespace A080698

/-- `p?[A000040(n+1)-2]*A057470(n+1)` -/
def P6252458720898781912.Spec : Prop :=
  ∀ n, P6252458720898781912.a n = A080698 (n + 1)

end A080698

/-! ## A080698.P969109643938052966

`A120426(A124588(n+2))*A124588(n+2)`
-/

namespace A080698.P969109643938052966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (A124588 (n + 2)).toNat * A124588 (n + 2)

end

end A080698.P969109643938052966

namespace A080698

/-- `A120426(A124588(n+2))*A124588(n+2)` -/
def P969109643938052966.Spec : Prop :=
  ∀ n, P969109643938052966.a n = A080698 (n + 1)

end A080698

/-! ## A080698.P5737003172504855494

`A120426(A181747(n+2))*A181747(n+2)`
-/

namespace A080698.P5737003172504855494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (A181747 (n + 2)).toNat * A181747 (n + 2)

end

end A080698.P5737003172504855494

namespace A080698

/-- `A120426(A181747(n+2))*A181747(n+2)` -/
def P5737003172504855494.Spec : Prop :=
  ∀ n, P5737003172504855494.a n = A080698 (n + 1)

end A080698

/-! ## A080698.P6760385296572834292

`A001359(n+1)*A064988(p?[A001359(n+1)])`
-/

namespace A080698.P6760385296572834292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) * A064988 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A080698.P6760385296572834292

namespace A080698

/-- `A001359(n+1)*A064988(p?[A001359(n+1)])` -/
def P6760385296572834292.Spec : Prop :=
  ∀ n, P6760385296572834292.a n = A080698 (n + 1)

end A080698

/-! ## A080698.P3558523764913453211

`A033286(A001359(n+1))`
-/

namespace A080698.P3558523764913453211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (A001359 (n + 1)).toNat

end

end A080698.P3558523764913453211

namespace A080698

/-- `A033286(A001359(n+1))` -/
def P3558523764913453211.Spec : Prop :=
  ∀ n, P3558523764913453211.a n = A080698 (n + 1)

end A080698

/-! ## A080698.P14299646465631814588

`A033286(A124588(n+2))`
-/

namespace A080698.P14299646465631814588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (A124588 (n + 2)).toNat

end

end A080698.P14299646465631814588

namespace A080698

/-- `A033286(A124588(n+2))` -/
def P14299646465631814588.Spec : Prop :=
  ∀ n, P14299646465631814588.a n = A080698 (n + 1)

end A080698

/-! ## A080698.P5673947697065953962

`A033286(A181747(n+2))`
-/

namespace A080698.P5673947697065953962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (A181747 (n + 2)).toNat

end

end A080698.P5673947697065953962

namespace A080698

/-- `A033286(A181747(n+2))` -/
def P5673947697065953962.Spec : Prop :=
  ∀ n, P5673947697065953962.a n = A080698 (n + 1)

end A080698

/-! ## A080698.P3651779274255862281

`A033286(A006512(n+1)-2)`
-/

namespace A080698.P3651779274255862281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (A006512 (n + 1) - 2).toNat

end

end A080698.P3651779274255862281

namespace A080698

/-- `A033286(A006512(n+1)-2)` -/
def P3651779274255862281.Spec : Prop :=
  ∀ n, P3651779274255862281.a n = A080698 (n + 1)

end A080698

/-! ## A080698.P1296276276583103529

`A033286(A067829(n+2)-2)`
-/

namespace A080698.P1296276276583103529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (A067829 (n + 2) - 2).toNat

end

end A080698.P1296276276583103529

namespace A080698

/-- `A033286(A067829(n+2)-2)` -/
def P1296276276583103529.Spec : Prop :=
  ∀ n, P1296276276583103529.a n = A080698 (n + 1)

end A080698

/-! ## A080698.P17218583160400112980

`A033286(A094743(n+2)-2)`
-/

namespace A080698.P17218583160400112980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (A094743 (n + 2) - 2).toNat

end

end A080698.P17218583160400112980

namespace A080698

/-- `A033286(A094743(n+2)-2)` -/
def P17218583160400112980.Spec : Prop :=
  ∀ n, P17218583160400112980.a n = A080698 (n + 1)

end A080698

/-!
# A080699: Product of twin-prime-indexed primes and their upper bound twin prime.

The programs for A080699, the canonical program `A080699.P120578734032110107` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080699 has offset 1).

The definition of A080699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080699.P120578734032110107

`A006512(n+1)*A057470(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A080699

/-- `A006512(n+1)*A057470(n+1)` -/
def P120578734032110107.Spec : Prop :=
  ∀ n, P120578734032110107.a n = A080699 (n + 1)

theorem P120578734032110107.correct : P120578734032110107.Spec := by
  intro n
  simp only [A080699, Nat.add_sub_cancel]

end A080699

/-! ## A080699.P1117734658802475463

`(A014574(n+1)+1)*A057470(n+1)`
-/

namespace A080699.P1117734658802475463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014574 (n + 1) + 1) * A057470 (n + 1)

end

end A080699.P1117734658802475463

namespace A080699

/-- `(A014574(n+1)+1)*A057470(n+1)` -/
def P1117734658802475463.Spec : Prop :=
  ∀ n, P1117734658802475463.a n = A080699 (n + 1)

end A080699

/-! ## A080699.P14008660627968337160

`(A001359(n+1)+2)*A057470(n+1)`
-/

namespace A080699.P14008660627968337160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 1) + 2) * A057470 (n + 1)

end

end A080699.P14008660627968337160

namespace A080699

/-- `(A001359(n+1)+2)*A057470(n+1)` -/
def P14008660627968337160.Spec : Prop :=
  ∀ n, P14008660627968337160.a n = A080699 (n + 1)

end A080699

/-! ## A080699.P7891909537571941025

`A080698(n+1)+2*A057470(n+1)`
-/

namespace A080699.P7891909537571941025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080698 (n + 1) + 2 * A057470 (n + 1)

end

end A080699.P7891909537571941025

namespace A080699

/-- `A080698(n+1)+2*A057470(n+1)` -/
def P7891909537571941025.Spec : Prop :=
  ∀ n, P7891909537571941025.a n = A080699 (n + 1)

end A080699

/-! ## A080699.P4311705353667250257

`(A057473(n+1)-A096474(n+1))*A006512(n+1)`
-/

namespace A080699.P4311705353667250257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057473 (n + 1) - A096474 (n + 1)) * A006512 (n + 1)

end

end A080699.P4311705353667250257

namespace A080699

/-- `(A057473(n+1)-A096474(n+1))*A006512(n+1)` -/
def P4311705353667250257.Spec : Prop :=
  ∀ n, P4311705353667250257.a n = A080699 (n + 1)

end A080699

/-! ## A080699.P8304212297426525286

`A080701(n+1)-A006512(n+1)*A096474(n+1)`
-/

namespace A080699.P8304212297426525286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080701 (n + 1) - A006512 (n + 1) * A096474 (n + 1)

end

end A080699.P8304212297426525286

namespace A080699

/-- `A080701(n+1)-A006512(n+1)*A096474(n+1)` -/
def P8304212297426525286.Spec : Prop :=
  ∀ n, P8304212297426525286.a n = A080699 (n + 1)

end A080699

/-! ## A080699.P10994168180269411329

`A057470(n+1)/A057473(n+1)*A080701(n+1)`
-/

namespace A080699.P10994168180269411329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057470 (n + 1) : ℚ) / (A057473 (n + 1) : ℚ) * (A080701 (n + 1) : ℚ)

end

end A080699.P10994168180269411329

namespace A080699

/-- `A057470(n+1)/A057473(n+1)*A080701(n+1)` -/
def P10994168180269411329.Spec : Prop :=
  ∀ n, P10994168180269411329.a n = (A080699 (n + 1) : ℚ)

end A080699

/-! ## A080699.P1964906432084409574

`p?[A000040(n+1)+2]*A057470(n+1)`
-/

namespace A080699.P1964906432084409574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A057470 (n + 1)

end

end A080699.P1964906432084409574

namespace A080699

/-- `p?[A000040(n+1)+2]*A057470(n+1)` -/
def P1964906432084409574.Spec : Prop :=
  ∀ n, P1964906432084409574.a n = A080699 (n + 1)

end A080699

/-! ## A080699.P6571575138265506913

`A000040(A001359(n+1))*A006512(n+1)`
-/

namespace A080699.P6571575138265506913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A001359 (n + 1)).toNat * A006512 (n + 1)

end

end A080699.P6571575138265506913

namespace A080699

/-- `A000040(A001359(n+1))*A006512(n+1)` -/
def P6571575138265506913.Spec : Prop :=
  ∀ n, P6571575138265506913.a n = A080699 (n + 1)

end A080699

