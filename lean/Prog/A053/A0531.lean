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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A053100: a(n) = ((6*n+7)(!^6))/7, related to A008542 ((6*n+1)(!^6) sextic, or 6-factorials).

The programs for A053100, there is no canonical definition to state claims against.
-/

/-! ## A053100.P1162588778811989405

`A008542(n+2)/7`
-/

namespace A053100.P1162588778811989405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008542 (n + 2) : ℚ) / 7

end

end A053100.P1162588778811989405

/-! ## A053100.P1620691577442157719

`∏[6*n+7]/7`
-/

namespace A053100.P1620691577442157719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 7

end

end A053100.P1620691577442157719

/-! ## A053100.P9226911848846905007

`∏[a(n-1)+6]` with `a(0)=1, a(1)=13`
-/

namespace A053100.P9226911848846905007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 13] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A053100.P9226911848846905007

/-! ## A053100.P13794537602760928958

`(6*n+7)*a(n-1)` with `a(0)=1`
-/

namespace A053100.P13794537602760928958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (6 * n + 7) * a (n - 1)

end

end A053100.P13794537602760928958

/-! ## A053100.P11522211199170746644

`∏[A086272(∑[n+3])]`
-/

namespace A053100.P11522211199170746644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086272 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A053100.P11522211199170746644

/-!
# A053101: a(n) = ((6*n+8)(!^6))/8(!^6), related to A034689 (((6*n+2)(!^6))/2 sextic, or 6-factorials).

The programs for A053101, the canonical program `A053101.P11379254700982069094` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053101 has offset 0).

The definition of A053101 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053101.P11379254700982069094

`A034689(n+2)/8`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053101

/-- `A034689(n+2)/8` -/
def P11379254700982069094.Spec : Prop :=
  ∀ n, P11379254700982069094.a n = (A053101 n : ℚ)

end A053101

/-! ## A053101.P1317580934863476574

`∏[6*n+8]/8`
-/

namespace A053101.P1317580934863476574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 8

end

end A053101.P1317580934863476574

namespace A053101

/-- `∏[6*n+8]/8` -/
def P1317580934863476574.Spec : Prop :=
  ∀ n, P1317580934863476574.a n = (A053101 n : ℚ)

end A053101

/-! ## A053101.P9651187969859195941

`∏[a(n-1)+6]` with `a(0)=1, a(1)=14`
-/

namespace A053101.P9651187969859195941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A053101.P9651187969859195941

namespace A053101

/-- `∏[a(n-1)+6]` -/
def P9651187969859195941.Spec : Prop :=
  ∀ n, (P9651187969859195941.a n : ℤ) = A053101 n

end A053101

/-! ## A053101.P4224654740112610173

`(6*n+8)*a(n-1)` with `a(0)=1`
-/

namespace A053101.P4224654740112610173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (6 * n + 8) * a (n - 1)

end

end A053101.P4224654740112610173

namespace A053101

/-- `(6*n+8)*a(n-1)` -/
def P4224654740112610173.Spec : Prop :=
  ∀ n, (P4224654740112610173.a n : ℤ) = A053101 n

end A053101

/-! ## A053101.P2880715182805163349

`2^n*A051604(n)`
-/

namespace A053101.P2880715182805163349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A051604 n

end

end A053101.P2880715182805163349

namespace A053101

/-- `2^n*A051604(n)` -/
def P2880715182805163349.Spec : Prop :=
  ∀ n, P2880715182805163349.a n = A053101 n

end A053101

/-!
# A053102: a(n) = ((6*n+9)(!^6))/9(!^6), related to A034723 (((6*n+3)(!^6))/3 sextic, or 6-factorials).

The programs for A053102, the canonical program `A053102.P1238159986520893648` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053102 has offset 0).

The definition of A053102 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053102.P1238159986520893648

`A034723(n+2)/9`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053102

/-- `A034723(n+2)/9` -/
def P1238159986520893648.Spec : Prop :=
  ∀ n, P1238159986520893648.a n = (A053102 n : ℚ)

end A053102

/-! ## A053102.P11568918353073347719

`∏[6*n+9]/9`
-/

namespace A053102.P11568918353073347719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 9

end

end A053102.P11568918353073347719

namespace A053102

/-- `∏[6*n+9]/9` -/
def P11568918353073347719.Spec : Prop :=
  ∀ n, P11568918353073347719.a n = (A053102 n : ℚ)

end A053102

/-! ## A053102.P3867244890989656338

`∏[a(n-1)+6]` with `a(0)=1, a(1)=15`
-/

namespace A053102.P3867244890989656338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A053102.P3867244890989656338

namespace A053102

/-- `∏[a(n-1)+6]` -/
def P3867244890989656338.Spec : Prop :=
  ∀ n, (P3867244890989656338.a n : ℤ) = A053102 n

end A053102

/-! ## A053102.P15711887190979361737

`(6*n+9)*a(n-1)` with `a(0)=1`
-/

namespace A053102.P15711887190979361737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (6 * n + 9) * a (n - 1)

end

end A053102.P15711887190979361737

namespace A053102

/-- `(6*n+9)*a(n-1)` -/
def P15711887190979361737.Spec : Prop :=
  ∀ n, (P15711887190979361737.a n : ℤ) = A053102 n

end A053102

/-! ## A053102.P11458007707598031900

`∏[5*n+dr(9^dr(n))+n]`
-/

namespace A053102.P11458007707598031900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + (SequenceMachineLib.digitalRoot (9 ^ SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A053102.P11458007707598031900

namespace A053102

/-- `∏[5*n+dr(9^dr(n))+n]` -/
def P11458007707598031900.Spec : Prop :=
  ∀ n, (P11458007707598031900.a n : ℤ) = A053102 n

end A053102

/-!
# A053103: a(n) = ((6*n+10)(!^6))/10(!^6), related to A034724 (((6*n+4)(!^6))/4 sextic, or 6-factorials).

The programs for A053103, there is no canonical definition to state claims against.
-/

/-! ## A053103.P3240042814813479477

`A034724(n+2)/10`
-/

namespace A053103.P3240042814813479477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034724 (n + 2) : ℚ) / 10

end

end A053103.P3240042814813479477

/-! ## A053103.P17428783043508813468

`∏[6*n+10]/10`
-/

namespace A053103.P17428783043508813468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 10

end

end A053103.P17428783043508813468

/-! ## A053103.P10068505901004924293

`∏[a(n-1)+6]` with `a(0)=1, a(1)=16`
-/

namespace A053103.P10068505901004924293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A053103.P10068505901004924293

/-! ## A053103.P10050629683662203394

`(6*n+10)*a(n-1)` with `a(0)=1`
-/

namespace A053103.P10050629683662203394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (6 * n + 10) * a (n - 1)

end

end A053103.P10050629683662203394

/-! ## A053103.P9539335815405145328

`2^n*A051605(n)`
-/

namespace A053103.P9539335815405145328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A051605 n

end

end A053103.P9539335815405145328

/-!
# A053104: a(n) = ((7*n+8)(!^7))/8, related to A045754 ((7*n+1)(!^7) sept-, or 7-factorials).

The programs for A053104, there is no canonical definition to state claims against.
-/

/-! ## A053104.P14473486026490874241

`A045754(n+2)/8`
-/

namespace A053104.P14473486026490874241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045754 (n + 2) : ℚ) / 8

end

end A053104.P14473486026490874241

/-! ## A053104.P13809627001153471421

`∏[7*n+8]/8`
-/

namespace A053104.P13809627001153471421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 8

end

end A053104.P13809627001153471421

/-! ## A053104.P1970838712447480282

`(7*n+8)*a(n-1)` with `a(0)=1`
-/

namespace A053104.P1970838712447480282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (7 * n + 8) * a (n - 1)

end

end A053104.P1970838712447480282

/-! ## A053104.P16137053178187481266

`record[abs(6-7*n)*a(n-1)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A053104.P16137053178187481266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  |6 - (7 * n : ℤ)| * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053104.P16137053178187481266

/-! ## A053104.P4907759778942773099

`∏[record[A158893(n+3)]]`
-/

namespace A053104.P4907759778942773099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158893 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A053104.P4907759778942773099

/-!
# A053105: a(n) = ((7*n+9)(!^7))/9(!^7), related to A034829 (((7*n+2)(!^7))/2 sept-, or 7-factorials).

The programs for A053105, the canonical program `A053105.P6373947143947019943` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053105 has offset 0).

The definition of A053105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053105.P6373947143947019943

`A034829(n+2)/9`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053105

/-- `A034829(n+2)/9` -/
def P6373947143947019943.Spec : Prop :=
  ∀ n, P6373947143947019943.a n = (A053105 n : ℚ)

end A053105

/-! ## A053105.P1366118821027442148

`∏[7*n+9]/9`
-/

namespace A053105.P1366118821027442148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 9

end

end A053105.P1366118821027442148

namespace A053105

/-- `∏[7*n+9]/9` -/
def P1366118821027442148.Spec : Prop :=
  ∀ n, P1366118821027442148.a n = (A053105 n : ℚ)

end A053105

/-! ## A053105.P18149427121626869407

`∏[a(n-1)+7]` with `a(0)=1, a(1)=16`
-/

namespace A053105.P18149427121626869407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A053105.P18149427121626869407

namespace A053105

/-- `∏[a(n-1)+7]` -/
def P18149427121626869407.Spec : Prop :=
  ∀ n, (P18149427121626869407.a n : ℤ) = A053105 n

end A053105

/-! ## A053105.P11632267223351487250

`(7*n+9)*a(n-1)` with `a(0)=1`
-/

namespace A053105.P11632267223351487250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (7 * n + 9) * a (n - 1)

end

end A053105.P11632267223351487250

namespace A053105

/-- `(7*n+9)*a(n-1)` -/
def P11632267223351487250.Spec : Prop :=
  ∀ n, (P11632267223351487250.a n : ℤ) = A053105 n

end A053105

/-! ## A053105.P10084207374331912496

`∏[gcd(8*n+9, floor(acot(n)))-n]`
-/

namespace A053105.P10084207374331912496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (8 * n + 9 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋ : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A053105.P10084207374331912496

namespace A053105

/-- `∏[gcd(8*n+9, floor(acot(n)))-n]` -/
def P10084207374331912496.Spec : Prop :=
  ∀ n, P10084207374331912496.a n = A053105 n

end A053105

/-!
# A053106: a(n) = ((7*n+10)(!^7))/10(1^7), related to A034830 (((7*n+3)(!^7))/3 sept-, or 7-factorials).

The programs for A053106, there is no canonical definition to state claims against.
-/

/-! ## A053106.P11488454185844579728

`A034830(n+2)/10`
-/

namespace A053106.P11488454185844579728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034830 (n + 2) : ℚ) / 10

end

end A053106.P11488454185844579728

/-! ## A053106.P17454222611415732333

`∏[7*n+10]/10`
-/

namespace A053106.P17454222611415732333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 10

end

end A053106.P17454222611415732333

/-! ## A053106.P10917573083556414911

`∏[a(n-1)+7]` with `a(0)=1, a(1)=17`
-/

namespace A053106.P10917573083556414911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 17] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A053106.P10917573083556414911

/-! ## A053106.P5995060456214192506

`(7*n+10)*a(n-1)` with `a(0)=1`
-/

namespace A053106.P5995060456214192506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (7 * n + 10) * a (n - 1)

end

end A053106.P5995060456214192506

/-! ## A053106.P10752874614922919097

`a(n-1)*A017017(n+1)` with `a(0)=1`
-/

namespace A053106.P10752874614922919097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A017017 (n + 1)

end

end A053106.P10752874614922919097

/-!
# A053107: Expansion of 1/(1-8*x)^8.

The programs for A053107, the canonical program `A053107.P1960963899360336947` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053107 has offset 0).

The definition of A053107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053107.P1960963899360336947

`8^n*C(n+7, 7)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053107

/-- `8^n*C(n+7, 7)` -/
def P1960963899360336947.Spec : Prop :=
  ∀ n, (P1960963899360336947.a n : ℤ) = A053107 n

theorem P1960963899360336947.correct : P1960963899360336947.Spec := by
  intro n
  simp only [A053107]

end A053107

/-! ## A053107.P12813551025432783668

`8*(7/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A053107.P12813551025432783668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  8 * ((7 / (n : ℚ) + 1) * a (n - 1))

end

end A053107.P12813551025432783668

namespace A053107

/-- `8*(7/n+1)*a(n-1)` -/
def P12813551025432783668.Spec : Prop :=
  ∀ n, P12813551025432783668.a n = (A053107 n : ℚ)

end A053107

/-! ## A053107.P148773720443473129

`2^n*A054338(n)`
-/

namespace A053107.P148773720443473129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A054338 n

end

end A053107.P148773720443473129

namespace A053107

/-- `2^n*A054338(n)` -/
def P148773720443473129.Spec : Prop :=
  ∀ n, P148773720443473129.a n = A053107 n

end A053107

/-! ## A053107.P3500244375564602851

`8^n*A000580(n+7)`
-/

namespace A053107.P3500244375564602851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * A000580 (n + 7)

end

end A053107.P3500244375564602851

namespace A053107

/-- `8^n*A000580(n+7)` -/
def P3500244375564602851.Spec : Prop :=
  ∀ n, P3500244375564602851.a n = A053107 n

theorem P3500244375564602851.correct : P3500244375564602851.Spec := by
  intro n
  simp only [A053107, Nat.add_sub_cancel, A053107.P3500244375564602851.a, A053107.P1960963899360336947.a, A000580, A000580.P16667415707980948191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053107

/-! ## A053107.P9228349479327017074

`A081654(n)*A082141(n)`
-/

namespace A053107.P9228349479327017074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081654 n * A082141 n

end

end A053107.P9228349479327017074

namespace A053107

/-- `A081654(n)*A082141(n)` -/
def P9228349479327017074.Spec : Prop :=
  ∀ n, P9228349479327017074.a n = A053107 n

end A053107

/-! ## A053107.P10380096739222869903

`A000302(n)*A054851(n+7)`
-/

namespace A053107.P10380096739222869903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A054851 (n + 7)

end

end A053107.P10380096739222869903

namespace A053107

/-- `A000302(n)*A054851(n+7)` -/
def P10380096739222869903.Spec : Prop :=
  ∀ n, P10380096739222869903.a n = A053107 n

end A053107

/-! ## A053107.P13689468204572625408

`A000079(n)²*A054851(n+7)`
-/

namespace A053107.P13689468204572625408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A054851 (n + 7)

end

end A053107.P13689468204572625408

namespace A053107

/-- `A000079(n)²*A054851(n+7)` -/
def P13689468204572625408.Spec : Prop :=
  ∀ n, P13689468204572625408.a n = A053107 n

end A053107

/-! ## A053107.P16040588735675714327

`Δ[A002450(n)]*A054851(n+7)`
-/

namespace A053107.P16040588735675714327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A054851 (n + 7)

end

end A053107.P16040588735675714327

namespace A053107

/-- `Δ[A002450(n)]*A054851(n+7)` -/
def P16040588735675714327.Spec : Prop :=
  ∀ n, P16040588735675714327.a n = A053107 n

end A053107

/-! ## A053107.P18147201491450892117

`A000580(n+7)*A017929(2*n)`
-/

namespace A053107.P18147201491450892117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A017929 (2 * n)

end

end A053107.P18147201491450892117

namespace A053107

/-- `A000580(n+7)*A017929(2*n)` -/
def P18147201491450892117.Spec : Prop :=
  ∀ n, P18147201491450892117.a n = A053107 n

end A053107

/-! ## A053107.P11445463175608074219

`A000079(2*n)*A054851(n+7)`
-/

namespace A053107.P11445463175608074219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A054851 (n + 7)

end

end A053107.P11445463175608074219

namespace A053107

/-- `A000079(2*n)*A054851(n+7)` -/
def P11445463175608074219.Spec : Prop :=
  ∀ n, P11445463175608074219.a n = A053107 n

end A053107

/-! ## A053107.P6672122529948267771

`A011782(n+1)²*A054851(n+7)`
-/

namespace A053107.P6672122529948267771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) ^ 2 * A054851 (n + 7)

end

end A053107.P6672122529948267771

namespace A053107

/-- `A011782(n+1)²*A054851(n+7)` -/
def P6672122529948267771.Spec : Prop :=
  ∀ n, P6672122529948267771.a n = A053107 n

end A053107

/-! ## A053107.P728240973062840839

`A011782(2*n+1)*A054851(n+7)`
-/

namespace A053107.P728240973062840839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n + 1) * A054851 (n + 7)

end

end A053107.P728240973062840839

namespace A053107

/-- `A011782(2*n+1)*A054851(n+7)` -/
def P728240973062840839.Spec : Prop :=
  ∀ n, P728240973062840839.a n = A053107 n

end A053107

/-! ## A053107.P14210207745038506308

`A000580(n+7)*A034008(A016789(n))`
-/

namespace A053107.P14210207745038506308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A034008 (A016789 n).toNat

end

end A053107.P14210207745038506308

namespace A053107

/-- `A000580(n+7)*A034008(A016789(n))` -/
def P14210207745038506308.Spec : Prop :=
  ∀ n, P14210207745038506308.a n = A053107 n

end A053107

/-! ## A053107.P4548424643337428365

`A000079(n)*A000580(n+7)*A000079(n)²`
-/

namespace A053107.P4548424643337428365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A000580 (n + 7) * A000079 n ^ 2

end

end A053107.P4548424643337428365

namespace A053107

/-- `A000079(n)*A000580(n+7)*A000079(n)²` -/
def P4548424643337428365.Spec : Prop :=
  ∀ n, P4548424643337428365.a n = A053107 n

end A053107

/-! ## A053107.P4110824440123838506

`(A082141(n+1)-A082140(n+1))*A000079(n)²`
-/

namespace A053107.P4110824440123838506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082141 (n + 1) - A082140 (n + 1)) * A000079 n ^ 2

end

end A053107.P4110824440123838506

namespace A053107

/-- `(A082141(n+1)-A082140(n+1))*A000079(n)²` -/
def P4110824440123838506.Spec : Prop :=
  ∀ n, P4110824440123838506.a n = A053107 n

end A053107

/-! ## A053107.P10380559304261943932

`(A082141(n+1)-A082140(n+1))*A000079(2*n)`
-/

namespace A053107.P10380559304261943932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082141 (n + 1) - A082140 (n + 1)) * A000079 (2 * n)

end

end A053107.P10380559304261943932

namespace A053107

/-- `(A082141(n+1)-A082140(n+1))*A000079(2*n)` -/
def P10380559304261943932.Spec : Prop :=
  ∀ n, P10380559304261943932.a n = A053107 n

end A053107

/-!
# A053108: Expansion of 1/(1 - 9*x)^9.

The programs for A053108, the canonical program `A053108.P13178856905024117614` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053108 has offset 0).

The definition of A053108 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053108.P13178856905024117614

`9^n*C(n+8, 8)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053108

/-- `9^n*C(n+8, 8)` -/
def P13178856905024117614.Spec : Prop :=
  ∀ n, (P13178856905024117614.a n : ℤ) = A053108 n

theorem P13178856905024117614.correct : P13178856905024117614.Spec := by
  intro n
  simp only [A053108]

end A053108

/-! ## A053108.P3287870788558265430

`3*(24/n+3)*a(n-1)` with `a(0)=1`
-/

namespace A053108.P3287870788558265430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((24 / (n : ℚ) + 3) * a (n - 1))

end

end A053108.P3287870788558265430

namespace A053108

/-- `3*(24/n+3)*a(n-1)` -/
def P3287870788558265430.Spec : Prop :=
  ∀ n, P3287870788558265430.a n = (A053108 n : ℚ)

end A053108

/-! ## A053108.P16281314536955888198

`9^n*A000581(n+8)`
-/

namespace A053108.P16281314536955888198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) * A000581 (n + 8)

end

end A053108.P16281314536955888198

namespace A053108

/-- `9^n*A000581(n+8)` -/
def P16281314536955888198.Spec : Prop :=
  ∀ n, P16281314536955888198.a n = A053108 n

theorem P16281314536955888198.correct : P16281314536955888198.Spec := by
  intro n
  simp only [A053108, Nat.add_sub_cancel, A053108.P16281314536955888198.a, A053108.P13178856905024117614.a, A000581, A000581.P12083568850536544774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053108

/-! ## A053108.P12825128182581988125

`C(n+8, 8)*A001019(n)`
-/

namespace A053108.P12825128182581988125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 8) 8 : ℤ) * A001019 n

end

end A053108.P12825128182581988125

namespace A053108

/-- `C(n+8, 8)*A001019(n)` -/
def P12825128182581988125.Spec : Prop :=
  ∀ n, P12825128182581988125.a n = A053108 n

theorem P12825128182581988125.correct : P12825128182581988125.Spec := by
  intro n
  simp only [A053108, Nat.add_sub_cancel, A053108.P12825128182581988125.a, A053108.P13178856905024117614.a, A001019, A001019.P4632907595368420400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053108

/-! ## A053108.P7346590552867270406

`C(n+8, 8)*A000244(n)²`
-/

namespace A053108.P7346590552867270406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 8) 8 : ℤ) * A000244 n ^ 2

end

end A053108.P7346590552867270406

namespace A053108

/-- `C(n+8, 8)*A000244(n)²` -/
def P7346590552867270406.Spec : Prop :=
  ∀ n, P7346590552867270406.a n = A053108 n

end A053108

/-! ## A053108.P3595028397464073177

`∑[C(n+7, 7)]*A000244(2*n)`
-/

namespace A053108.P3595028397464073177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 7) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000244 (2 * n)

end

end A053108.P3595028397464073177

namespace A053108

/-- `∑[C(n+7, 7)]*A000244(2*n)` -/
def P3595028397464073177.Spec : Prop :=
  ∀ n, P3595028397464073177.a n = A053108 n

end A053108

/-! ## A053108.P10899787658495344178

`A000244(n)*A036222(n)`
-/

namespace A053108.P10899787658495344178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A036222 n

end

end A053108.P10899787658495344178

namespace A053108

/-- `A000244(n)*A036222(n)` -/
def P10899787658495344178.Spec : Prop :=
  ∀ n, P10899787658495344178.a n = A053108 n

end A053108

/-! ## A053108.P8934473145413063062

`A027465(∑[n])*A036222(n)`
-/

namespace A053108.P8934473145413063062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 (∑ j ∈ Finset.range (n + 1), f1 j) * A036222 n

end

end A053108.P8934473145413063062

namespace A053108

/-- `A027465(∑[n])*A036222(n)` -/
def P8934473145413063062.Spec : Prop :=
  ∀ n, P8934473145413063062.a n = A053108 n

end A053108

/-! ## A053108.P11325697880773837800

`Δ[A003462(n)]*A036222(n)`
-/

namespace A053108.P11325697880773837800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A036222 n

end

end A053108.P11325697880773837800

namespace A053108

/-- `Δ[A003462(n)]*A036222(n)` -/
def P11325697880773837800.Spec : Prop :=
  ∀ n, P11325697880773837800.a n = A053108 n

end A053108

/-! ## A053108.P1890587767309782395

`Δ[A007051(n)]*A036222(n)`
-/

namespace A053108.P1890587767309782395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A036222 n

end

end A053108.P1890587767309782395

namespace A053108

/-- `Δ[A007051(n)]*A036222(n)` -/
def P1890587767309782395.Spec : Prop :=
  ∀ n, P1890587767309782395.a n = A053108 n

end A053108

/-!
# A053109: Expansion of 1/(1-10*x)^10.

The programs for A053109, the canonical program `A053109.P11604334433477205406` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053109 has offset 0).

The definition of A053109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053109.P11604334433477205406

`10^n*C(n+9, 9)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053109

/-- `10^n*C(n+9, 9)` -/
def P11604334433477205406.Spec : Prop :=
  ∀ n, (P11604334433477205406.a n : ℤ) = A053109 n

theorem P11604334433477205406.correct : P11604334433477205406.Spec := by
  intro n
  simp only [A053109]

end A053109

/-! ## A053109.P9920133330779111978

`5*(18/n+2)*a(n-1)` with `a(0)=1`
-/

namespace A053109.P9920133330779111978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  5 * ((18 / (n : ℚ) + 2) * a (n - 1))

end

end A053109.P9920133330779111978

namespace A053109

/-- `5*(18/n+2)*a(n-1)` -/
def P9920133330779111978.Spec : Prop :=
  ∀ n, P9920133330779111978.a n = (A053109 n : ℚ)

end A053109

/-! ## A053109.P10809353896183746422

`5^n*A140354(n)`
-/

namespace A053109.P10809353896183746422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A140354 n

end

end A053109.P10809353896183746422

namespace A053109

/-- `5^n*A140354(n)` -/
def P10809353896183746422.Spec : Prop :=
  ∀ n, P10809353896183746422.a n = A053109 n

end A053109

/-! ## A053109.P12426234544325494762

`10^n*A000582(n+9)`
-/

namespace A053109.P12426234544325494762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A000582 (n + 9)

end

end A053109.P12426234544325494762

namespace A053109

/-- `10^n*A000582(n+9)` -/
def P12426234544325494762.Spec : Prop :=
  ∀ n, P12426234544325494762.a n = A053109 n

theorem P12426234544325494762.correct : P12426234544325494762.Spec := by
  intro n
  simp only [A053109, Nat.add_sub_cancel, A053109.P12426234544325494762.a, A053109.P11604334433477205406.a, A000582, A000582.P5339973766427948568.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053109

/-! ## A053109.P15521502346513354367

`10^n*∑[A000581(n+8)]`
-/

namespace A053109.P15521502346513354367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053109.P15521502346513354367

namespace A053109

/-- `10^n*∑[A000581(n+8)]` -/
def P15521502346513354367.Spec : Prop :=
  ∀ n, P15521502346513354367.a n = A053109 n

end A053109

/-! ## A053109.P1188186809893369100

`10^n*∑[∑[A000580(n+7)]]`
-/

namespace A053109.P1188186809893369100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053109.P1188186809893369100

namespace A053109

/-- `10^n*∑[∑[A000580(n+7)]]` -/
def P1188186809893369100.Spec : Prop :=
  ∀ n, P1188186809893369100.a n = A053109 n

end A053109

/-! ## A053109.P12097632308360332354

`Δ[A140504(n)]*A140520(n)`
-/

namespace A053109.P12097632308360332354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A140520 n

end

end A053109.P12097632308360332354

namespace A053109

/-- `Δ[A140504(n)]*A140520(n)` -/
def P12097632308360332354.Spec : Prop :=
  ∀ n, P12097632308360332354.a n = A053109 n

end A053109

/-! ## A053109.P8943679934378036820

`A000582(n+9)*A011557(n)`
-/

namespace A053109.P8943679934378036820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) * A011557 n

end

end A053109.P8943679934378036820

namespace A053109

/-- `A000582(n+9)*A011557(n)` -/
def P8943679934378036820.Spec : Prop :=
  ∀ n, P8943679934378036820.a n = A053109 n

theorem P8943679934378036820.correct : P8943679934378036820.Spec := by
  intro n
  simp only [A053109, Nat.add_sub_cancel, A053109.P8943679934378036820.a, A053109.P11604334433477205406.a, A000582, A000582.P5339973766427948568.a, A011557, A011557.P11220211478167790856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053109

/-! ## A053109.P7874027371453302314

`∑[A000581(n+8)]*A011557(n)`
-/

namespace A053109.P7874027371453302314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A011557 n

end

end A053109.P7874027371453302314

namespace A053109

/-- `∑[A000581(n+8)]*A011557(n)` -/
def P7874027371453302314.Spec : Prop :=
  ∀ n, P7874027371453302314.a n = A053109 n

end A053109

/-! ## A053109.P14805104841931803486

`A007318(A051936(n+10)-1)*A011557(n)`
-/

namespace A053109.P14805104841931803486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A051936 (n + 10) - 1).toNat * A011557 n

end

end A053109.P14805104841931803486

namespace A053109

/-- `A007318(A051936(n+10)-1)*A011557(n)` -/
def P14805104841931803486.Spec : Prop :=
  ∀ n, P14805104841931803486.a n = A053109 n

end A053109

/-!
# A053110: Expansion of (-1 + 1/(1-7*x)^7)/(49*x); related to A036226.

The programs for A053110, the canonical program `A053110.P11730042616001333652` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053110 has offset 0).

The definition of A053110 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053110.P11730042616001333652

`7^(n-1)*C(n+7, 6)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053110

/-- `7^(n-1)*C(n+7, 6)` -/
def P11730042616001333652.Spec : Prop :=
  ∀ n, P11730042616001333652.a n = (A053110 n : ℚ)

end A053110

/-! ## A053110.P9997510075457046911

`C(n+7, 7)/(n+1)*7^n`
-/

namespace A053110.P9997510075457046911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℚ) / (n + 1 : ℚ) * (7 ^ n : ℚ)

end

end A053110.P9997510075457046911

namespace A053110

/-- `C(n+7, 7)/(n+1)*7^n` -/
def P9997510075457046911.Spec : Prop :=
  ∀ n, P9997510075457046911.a n = (A053110 n : ℚ)

end A053110

/-! ## A053110.P7752855320328554035

`7*a(n-1)*(n+7)/(n+1)` with `a(0)=1`
-/

namespace A053110.P7752855320328554035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) * ((n + 7 : ℚ) / (n + 1 : ℚ))

end

end A053110.P7752855320328554035

namespace A053110

/-- `7*a(n-1)*(n+7)/(n+1)` -/
def P7752855320328554035.Spec : Prop :=
  ∀ n, P7752855320328554035.a n = (A053110 n : ℚ)

end A053110

/-! ## A053110.P8175529903192294724

`7^(n-1)*A000579(n+7)`
-/

namespace A053110.P8175529903192294724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000579 (n + 7) : ℚ)

end

end A053110.P8175529903192294724

namespace A053110

/-- `7^(n-1)*A000579(n+7)` -/
def P8175529903192294724.Spec : Prop :=
  ∀ n, P8175529903192294724.a n = (A053110 n : ℚ)

end A053110

/-! ## A053110.P15166321377211064324

`A000580(n+7)/(n+1)*A000420(n)`
-/

namespace A053110.P15166321377211064324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000580 (n + 7) : ℚ) / (n + 1 : ℚ) * (A000420 n : ℚ)

end

end A053110.P15166321377211064324

namespace A053110

/-- `A000580(n+7)/(n+1)*A000420(n)` -/
def P15166321377211064324.Spec : Prop :=
  ∀ n, P15166321377211064324.a n = (A053110 n : ℚ)

end A053110

/-! ## A053110.P18305949604616030930

`A050989(n+7)/(n+1)`
-/

namespace A053110.P18305949604616030930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050989 (n + 7) : ℚ) / (n + 1 : ℚ)

end

end A053110.P18305949604616030930

namespace A053110

/-- `A050989(n+7)/(n+1)` -/
def P18305949604616030930.Spec : Prop :=
  ∀ n, P18305949604616030930.a n = (A053110 n : ℚ)

end A053110

/-!
# A053111: Expansion of (-1 + 1/(1-8*x)^8)/(64*x); related to A053107.

The programs for A053111, the canonical program `A053111.P16750545580018973219` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053111 has offset 0).

The definition of A053111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053111.P16750545580018973219

`8^(n-1)*C(n+8, 7)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053111

/-- `8^(n-1)*C(n+8, 7)` -/
def P16750545580018973219.Spec : Prop :=
  ∀ n, P16750545580018973219.a n = (A053111 n : ℚ)

end A053111

/-! ## A053111.P2045123324095816510

`A000580(n+8)/8*A017929(A005843(n))`
-/

namespace A053111.P2045123324095816510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000580 (n + 8) : ℚ) / 8 * (A017929 (A005843 n).toNat : ℚ)

end

end A053111.P2045123324095816510

namespace A053111

/-- `A000580(n+8)/8*A017929(A005843(n))` -/
def P2045123324095816510.Spec : Prop :=
  ∀ n, P2045123324095816510.a n = (A053111 n : ℚ)

end A053111

/-! ## A053111.P3508687627875056662

`A141054(n)/(n+1)`
-/

namespace A053111.P3508687627875056662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141054 n : ℚ) / (n + 1 : ℚ)

end

end A053111.P3508687627875056662

namespace A053111

/-- `A141054(n)/(n+1)` -/
def P3508687627875056662.Spec : Prop :=
  ∀ n, P3508687627875056662.a n = (A053111 n : ℚ)

end A053111

/-! ## A053111.P5738251348684146625

`4^n*A140325(n)/(n+1)`
-/

namespace A053111.P5738251348684146625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) * A140325 n : ℚ) / (n + 1 : ℚ)

end

end A053111.P5738251348684146625

namespace A053111

/-- `4^n*A140325(n)/(n+1)` -/
def P5738251348684146625.Spec : Prop :=
  ∀ n, P5738251348684146625.a n = (A053111 n : ℚ)

end A053111

/-! ## A053111.P15744481639094850652

`A000079(n)*A054339(n)/(n+1)`
-/

namespace A053111.P15744481639094850652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n * A054339 n : ℚ) / (n + 1 : ℚ)

end

end A053111.P15744481639094850652

namespace A053111

/-- `A000079(n)*A054339(n)/(n+1)` -/
def P15744481639094850652.Spec : Prop :=
  ∀ n, P15744481639094850652.a n = (A053111 n : ℚ)

end A053111

/-! ## A053111.P6452717212062551142

`floor(A141054(n)/A059298(A000217(n)))`
-/

namespace A053111.P6452717212062551142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141054 n : ℚ) / (A059298 (A000217 n).toNat : ℚ)⌋

end

end A053111.P6452717212062551142

namespace A053111

/-- `floor(A141054(n)/A059298(A000217(n)))` -/
def P6452717212062551142.Spec : Prop :=
  ∀ n, P6452717212062551142.a n = A053111 n

end A053111

/-! ## A053111.P14450007705025470937

`A141054(n)/A059298(A000217(n))*A033999(n)²`
-/

namespace A053111.P14450007705025470937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141054 n : ℚ) / (A059298 (A000217 n).toNat : ℚ) * (A033999 n ^ 2 : ℚ)

end

end A053111.P14450007705025470937

namespace A053111

/-- `A141054(n)/A059298(A000217(n))*A033999(n)²` -/
def P14450007705025470937.Spec : Prop :=
  ∀ n, P14450007705025470937.a n = (A053111 n : ℚ)

end A053111

/-! ## A053111.P10366146469192843371

`A141054(n)/A059298(A000217(n))*A057077(n)²`
-/

namespace A053111.P10366146469192843371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141054 n : ℚ) / (A059298 (A000217 n).toNat : ℚ) * (A057077 n ^ 2 : ℚ)

end

end A053111.P10366146469192843371

namespace A053111

/-- `A141054(n)/A059298(A000217(n))*A057077(n)²` -/
def P10366146469192843371.Spec : Prop :=
  ∀ n, P10366146469192843371.a n = (A053111 n : ℚ)

end A053111

/-!
# A053112: Expansion of (-1 + 1/(1-9*x)^9)/(81*x); related to A053108.

The programs for A053112, the canonical program `A053112.P11155593544062379690` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053112 has offset 0).

The definition of A053112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053112.P11155593544062379690

`9^(n-1)*C(n+9, 8)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053112

/-- `9^(n-1)*C(n+9, 8)` -/
def P11155593544062379690.Spec : Prop :=
  ∀ n, P11155593544062379690.a n = (A053112 n : ℚ)

end A053112

/-! ## A053112.P14493266441296185022

`9*a(n-1)*(n+9)/(n+1)` with `a(0)=1`
-/

namespace A053112.P14493266441296185022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (n - 1) * ((n + 9 : ℚ) / (n + 1 : ℚ))

end

end A053112.P14493266441296185022

namespace A053112

/-- `9*a(n-1)*(n+9)/(n+1)` -/
def P14493266441296185022.Spec : Prop :=
  ∀ n, P14493266441296185022.a n = (A053112 n : ℚ)

end A053112

/-! ## A053112.P1207774919183312700

`9^n/(n+1)*A000582(n+9)`
-/

namespace A053112.P1207774919183312700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℚ) / (n + 1 : ℚ) * (A000582 (n + 9) : ℚ)

end

end A053112.P1207774919183312700

namespace A053112

/-- `9^n/(n+1)*A000582(n+9)` -/
def P1207774919183312700.Spec : Prop :=
  ∀ n, P1207774919183312700.a n = (A053112 n : ℚ)

end A053112

/-! ## A053112.P10327898099464838399

`9^n*C(n+9, 9)/(n+1)`
-/

namespace A053112.P10327898099464838399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 ^ n * Nat.choose (n + 9) 9 : ℚ) / (n + 1 : ℚ)

end

end A053112.P10327898099464838399

namespace A053112

/-- `9^n*C(n+9, 9)/(n+1)` -/
def P10327898099464838399.Spec : Prop :=
  ∀ n, P10327898099464838399.a n = (A053112 n : ℚ)

end A053112

/-! ## A053112.P5251090972490719607

`A197194(n)/(n+1)`
-/

namespace A053112.P5251090972490719607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197194 n : ℚ) / (n + 1 : ℚ)

end

end A053112.P5251090972490719607

namespace A053112

/-- `A197194(n)/(n+1)` -/
def P5251090972490719607.Spec : Prop :=
  ∀ n, P5251090972490719607.a n = (A053112 n : ℚ)

end A053112

/-! ## A053112.P10148810625075519318

`a(n-1)*ratio[A053108(n)]` with `a(0)=1`
-/

namespace A053112.P10148810625075519318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053108 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A053112.P10148810625075519318

namespace A053112

/-- `a(n-1)*ratio[A053108(n)]` -/
def P10148810625075519318.Spec : Prop :=
  ∀ n, P10148810625075519318.a n = (A053112 n : ℚ)

end A053112

/-! ## A053112.P11139309964013187000

`A000244(n)*A036223(n)/(n+1)`
-/

namespace A053112.P11139309964013187000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n * A036223 n : ℚ) / (n + 1 : ℚ)

end

end A053112.P11139309964013187000

namespace A053112

/-- `A000244(n)*A036223(n)/(n+1)` -/
def P11139309964013187000.Spec : Prop :=
  ∀ n, P11139309964013187000.a n = (A053112 n : ℚ)

end A053112

/-!
# A053113: Expansion of (-1 + 1/(1-10*x)^10)/(100*x); related to A053109.

The programs for A053113, the canonical program `A053113.P9945893468655865744` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053113 has offset 0).

The definition of A053113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053113.P9945893468655865744

`10^(n-1)*C(n+10, 9)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053113

/-- `10^(n-1)*C(n+10, 9)` -/
def P9945893468655865744.Spec : Prop :=
  ∀ n, P9945893468655865744.a n = (A053113 n : ℚ)

end A053113

/-! ## A053113.P536085329328588436

`10*a(n-1)*(n+10)/(n+1)` with `a(0)=1`
-/

namespace A053113.P536085329328588436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) * ((n + 10 : ℚ) / (n + 1 : ℚ))

end

end A053113.P536085329328588436

namespace A053113

/-- `10*a(n-1)*(n+10)/(n+1)` -/
def P536085329328588436.Spec : Prop :=
  ∀ n, P536085329328588436.a n = (A053113 n : ℚ)

end A053113

/-! ## A053113.P195373655036175736

`10^(n-1)*Δ[A001287(n)]`
-/

namespace A053113.P195373655036175736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (f1 (n + 1) - f1 n : ℚ)

end

end A053113.P195373655036175736

namespace A053113

/-- `10^(n-1)*Δ[A001287(n)]` -/
def P195373655036175736.Spec : Prop :=
  ∀ n, P195373655036175736.a n = (A053113 n : ℚ)

end A053113

/-! ## A053113.P3299558863084293594

`10^n/(n+1)*∑[∑[A000581(n+8)]]`
-/

namespace A053113.P3299558863084293594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℚ) / (n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A053113.P3299558863084293594

namespace A053113

/-- `10^n/(n+1)*∑[∑[A000581(n+8)]]` -/
def P3299558863084293594.Spec : Prop :=
  ∀ n, P3299558863084293594.a n = (A053113 n : ℚ)

end A053113

/-! ## A053113.P1566549462358046355

`10^(n-1)*A007318(A056000(n+7))`
-/

namespace A053113.P1566549462358046355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A007318 (A056000 (n + 7)).toNat : ℚ)

end

end A053113.P1566549462358046355

namespace A053113

/-- `10^(n-1)*A007318(A056000(n+7))` -/
def P1566549462358046355.Spec : Prop :=
  ∀ n, P1566549462358046355.a n = (A053113 n : ℚ)

end A053113

/-! ## A053113.P8264198432670043883

`record[ratio[A053109(A057058(n+1))]]`
-/

namespace A053113.P8264198432670043883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053109 (A057058 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053113.P8264198432670043883

namespace A053113

/-- `record[ratio[A053109(A057058(n+1))]]` -/
def P8264198432670043883.Spec : Prop :=
  ∀ n, P8264198432670043883.a n = (A053113 n : ℚ)

end A053113

/-! ## A053113.P15919576033839244228

`A011557(n)²/A011557(n+1)*A000582(n+10)`
-/

namespace A053113.P15919576033839244228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 n ^ 2 : ℚ) / (A011557 (n + 1) : ℚ) * (A000582 (n + 10) : ℚ)

end

end A053113.P15919576033839244228

namespace A053113

/-- `A011557(n)²/A011557(n+1)*A000582(n+10)` -/
def P15919576033839244228.Spec : Prop :=
  ∀ n, P15919576033839244228.a n = (A053113 n : ℚ)

end A053113

/-! ## A053113.P16961518932482779209

`A011557(2*n)/A011557(n+1)*A000582(n+10)`
-/

namespace A053113.P16961518932482779209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 (2 * n) : ℚ) / (A011557 (n + 1) : ℚ) * (A000582 (n + 10) : ℚ)

end

end A053113.P16961518932482779209

namespace A053113

/-- `A011557(2*n)/A011557(n+1)*A000582(n+10)` -/
def P16961518932482779209.Spec : Prop :=
  ∀ n, P16961518932482779209.a n = (A053113 n : ℚ)

end A053113

/-!
# A053114: a(n) = ((8*n+9)(!^8))/9, related to A045755 ((8*n+1)(!^8) octo- or 8-factorials).

The programs for A053114, there is no canonical definition to state claims against.
-/

/-! ## A053114.P11850368687937132245

`A045755(n+2)/9`
-/

namespace A053114.P11850368687937132245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045755 (n + 2) : ℚ) / 9

end

end A053114.P11850368687937132245

/-! ## A053114.P409511086639177602

`∏[8*n+9]/9`
-/

namespace A053114.P409511086639177602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 9

end

end A053114.P409511086639177602

/-! ## A053114.P1600943519828320669

`∏[a(n-1)+8]` with `a(0)=1, a(1)=17`
-/

namespace A053114.P1600943519828320669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 17] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A053114.P1600943519828320669

/-! ## A053114.P8508893763032110749

`∏[gcd(8*n+9, floor(acot(n)))]`
-/

namespace A053114.P8508893763032110749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (8 * n + 9 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A053114.P8508893763032110749

/-! ## A053114.P3162916701508750686

`(8*n+9)*a(n-1)` with `a(0)=1`
-/

namespace A053114.P3162916701508750686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (8 * n + 9) * a (n - 1)

end

end A053114.P3162916701508750686

/-!
# A053115: a(n) = ((8*n+10)(!^8))/20, related to A034908 ((8*n+2)(!^8) octo- or 8-factorials).

The programs for A053115, the canonical program `A053115.P17177388115893748889` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053115 has offset 0).

The definition of A053115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053115.P17177388115893748889

`A034908(n+2)/10`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053115

/-- `A034908(n+2)/10` -/
def P17177388115893748889.Spec : Prop :=
  ∀ n, P17177388115893748889.a n = (A053115 n : ℚ)

end A053115

/-! ## A053115.P6254219552716589135

`∏[8*n+10]/10`
-/

namespace A053115.P6254219552716589135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 10

end

end A053115.P6254219552716589135

namespace A053115

/-- `∏[8*n+10]/10` -/
def P6254219552716589135.Spec : Prop :=
  ∀ n, P6254219552716589135.a n = (A053115 n : ℚ)

end A053115

/-! ## A053115.P6737812606977949234

`∏[lcm(2, a(n-1)+8)]` with `a(0)=1`
-/

namespace A053115.P6737812606977949234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm 2 (f1 (n - 1) + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A053115.P6737812606977949234

namespace A053115

/-- `∏[lcm(2, a(n-1)+8)]` -/
def P6737812606977949234.Spec : Prop :=
  ∀ n, (P6737812606977949234.a n : ℤ) = A053115 n

end A053115

/-! ## A053115.P3445947722539947269

`(8*n+10)*a(n-1)` with `a(0)=1`
-/

namespace A053115.P3445947722539947269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (8 * n + 10) * a (n - 1)

end

end A053115.P3445947722539947269

namespace A053115

/-- `(8*n+10)*a(n-1)` -/
def P3445947722539947269.Spec : Prop :=
  ∀ n, (P3445947722539947269.a n : ℤ) = A053115 n

end A053115

/-! ## A053115.P14840658581324456241

`2^n*A051617(n)`
-/

namespace A053115.P14840658581324456241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A051617 n

end

end A053115.P14840658581324456241

namespace A053115

/-- `2^n*A051617(n)` -/
def P14840658581324456241.Spec : Prop :=
  ∀ n, P14840658581324456241.a n = A053115 n

end A053115

/-!
# A053116: a(n) = ((9*n+10)(!^9))/10, related to A045756 ((9*n+1)(!^9) 9-factorials).

The programs for A053116, there is no canonical definition to state claims against.
-/

/-! ## A053116.P16293378634969647539

`A045756(n+2)/10`
-/

namespace A053116.P16293378634969647539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045756 (n + 2) : ℚ) / 10

end

end A053116.P16293378634969647539

/-! ## A053116.P2014193281836300314

`∏[9*n+10]/10`
-/

namespace A053116.P2014193281836300314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 10

end

end A053116.P2014193281836300314

/-! ## A053116.P2581382078528163001

`∏[a(n-1)+9]` with `a(0)=1, a(1)=19`
-/

namespace A053116.P2581382078528163001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 19] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A053116.P2581382078528163001

/-! ## A053116.P14504200777185829083

`(9*n+10)*a(n-1)` with `a(0)=1`
-/

namespace A053116.P14504200777185829083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (9 * n + 10) * a (n - 1)

end

end A053116.P14504200777185829083

/-! ## A053116.P17807606705955475636

`∏[record[A059920(n+2)]-n]`
-/

namespace A053116.P17807606705955475636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059920 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A053116.P17807606705955475636

/-!
# A053117: Triangle read by rows of coefficients of Chebyshev's U(n,x) polynomials (exponents in increasing order).

The programs for A053117, the canonical program `A053117.P11887934115580671576` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053117 has offset 0).

The definition of A053117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053117.P11072204477104252773

`2*T(n-1,k-1)-T(n-2,k)` with `a(0)=1`
-/

namespace A053117.P11072204477104252773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2 a n

end

end A053117.P11072204477104252773

namespace A053117

/-- `2*T(n-1,k-1)-T(n-2,k)` -/
def P11072204477104252773.Spec : Prop :=
  ∀ n, P11072204477104252773.a n = A053117 n

end A053117

/-! ## A053117.P11887934115580671576

`A049310(n)*A059268(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A053117

/-- `A049310(n)*A059268(n)` -/
def P11887934115580671576.Spec : Prop :=
  ∀ n, P11887934115580671576.a n = A053117 n

theorem P11887934115580671576.correct : P11887934115580671576.Spec := by
  intro n
  simp only [A053117]

end A053117

/-! ## A053117.P5604039832213011109

`A049310(n)*A130125(n)`
-/

namespace A053117.P5604039832213011109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n * A130125 n

end

end A053117.P5604039832213011109

namespace A053117

/-- `A049310(n)*A130125(n)` -/
def P5604039832213011109.Spec : Prop :=
  ∀ n, P5604039832213011109.a n = A053117 n

end A053117

/-! ## A053117.P876003625566530856

`A130125(n)*A130777(n)`
-/

namespace A053117.P876003625566530856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130125 n * A130777 n

end

end A053117.P876003625566530856

namespace A053117

/-- `A130125(n)*A130777(n)` -/
def P876003625566530856.Spec : Prop :=
  ∀ n, P876003625566530856.a n = A053117 n

end A053117

/-! ## A053117.P4898682773343103414

`A115322(n+1)*A117568(n)`
-/

namespace A053117.P4898682773343103414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115322 (n + 1) * A117568 n

end

end A053117.P4898682773343103414

namespace A053117

/-- `A115322(n+1)*A117568(n)` -/
def P4898682773343103414.Spec : Prop :=
  ∀ n, P4898682773343103414.a n = A053117 n

end A053117

/-! ## A053117.P17051702801305846144

`A115322(n+1)*A369736(n)`
-/

namespace A053117.P17051702801305846144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115322 (n + 1) * A369736 n

end

end A053117.P17051702801305846144

namespace A053117

/-- `A115322(n+1)*A369736(n)` -/
def P17051702801305846144.Spec : Prop :=
  ∀ n, P17051702801305846144.a n = A053117 n

end A053117

/-! ## A053117.P17220528482535107392

`A115322(n+1)*A130194(n+1)`
-/

namespace A053117.P17220528482535107392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115322 (n + 1) * A130194 (n + 1)

end

end A053117.P17220528482535107392

namespace A053117

/-- `A115322(n+1)*A130194(n+1)` -/
def P17220528482535107392.Spec : Prop :=
  ∀ n, P17220528482535107392.a n = A053117 n

end A053117

/-! ## A053117.P15132182980160900185

`A136160(n+1)/A002024(n+1)`
-/

namespace A053117.P15132182980160900185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136160 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A053117.P15132182980160900185

namespace A053117

/-- `A136160(n+1)/A002024(n+1)` -/
def P15132182980160900185.Spec : Prop :=
  ∀ n, P15132182980160900185.a n = (A053117 n : ℚ)

end A053117

/-! ## A053117.P6999668395527555326

`A053118(A061579(n))`
-/

namespace A053117.P6999668395527555326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053118 (A061579 n).toNat

end

end A053117.P6999668395527555326

namespace A053117

/-- `A053118(A061579(n))` -/
def P6999668395527555326.Spec : Prop :=
  ∀ n, P6999668395527555326.a n = A053117 n

end A053117

/-! ## A053117.P13920545965151161826

`A053118(A002024(n+1)*A002024(n+1)-(n+1))`
-/

namespace A053117.P13920545965151161826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053118 (A002024 (n + 1) * A002024 (n + 1) - (n + 1 : ℤ)).toNat

end

end A053117.P13920545965151161826

namespace A053117

/-- `A053118(A002024(n+1)*A002024(n+1)-(n+1))` -/
def P13920545965151161826.Spec : Prop :=
  ∀ n, P13920545965151161826.a n = A053117 n

end A053117

/-! ## A053117.P5585311276169002328

`A157751(n)*A369736(n)`
-/

namespace A053117.P5585311276169002328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157751 n * A369736 n

end

end A053117.P5585311276169002328

namespace A053117

/-- `A157751(n)*A369736(n)` -/
def P5585311276169002328.Spec : Prop :=
  ∀ n, P5585311276169002328.a n = A053117 n

end A053117

/-! ## A053117.P4303206379717073940

`A124038(n)*A130125(n)`
-/

namespace A053117.P4303206379717073940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124038 n * A130125 n

end

end A053117.P4303206379717073940

namespace A053117

/-- `A124038(n)*A130125(n)` -/
def P4303206379717073940.Spec : Prop :=
  ∀ n, P4303206379717073940.a n = A053117 n

end A053117

/-! ## A053117.P2271477307973743798

`A130125(n)*A267482(n)`
-/

namespace A053117.P2271477307973743798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130125 n * A267482 n

end

end A053117.P2271477307973743798

namespace A053117

/-- `A130125(n)*A267482(n)` -/
def P2271477307973743798.Spec : Prop :=
  ∀ n, P2271477307973743798.a n = A053117 n

end A053117

/-!
# A053118: Triangle of coefficients of Chebyshev's U(n,x) polynomials (exponents in decreasing order).

The programs for A053118, the canonical program `A053118.P15405571042866260593` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053118 has offset 0).

The definition of A053118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053118.P17072124429279839590

`A053119(n)*A130321(n)`
-/

namespace A053118.P17072124429279839590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 n * A130321 n

end

end A053118.P17072124429279839590

namespace A053118

/-- `A053119(n)*A130321(n)` -/
def P17072124429279839590.Spec : Prop :=
  ∀ n, P17072124429279839590.a n = A053118 n

end A053118

/-! ## A053118.P15405571042866260593

`A053117(A061579(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A053118

/-- `A053117(A061579(n))` -/
def P15405571042866260593.Spec : Prop :=
  ∀ n, P15405571042866260593.a n = A053118 n

theorem P15405571042866260593.correct : P15405571042866260593.Spec := by
  intro n
  simp only [A053118]

end A053118

/-! ## A053118.P17184034965556086096

`A053117(A114327(n)+n)`
-/

namespace A053118.P17184034965556086096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053117 (A114327 n + (n : ℤ)).toNat

end

end A053118.P17184034965556086096

namespace A053118

/-- `A053117(A114327(n)+n)` -/
def P17184034965556086096.Spec : Prop :=
  ∀ n, P17184034965556086096.a n = A053118 n

end A053118

/-! ## A053118.P10708082385416238054

`A053117(A038722(n+1)-1)`
-/

namespace A053118.P10708082385416238054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053117 (A038722 (n + 1) - 1).toNat

end

end A053118.P10708082385416238054

namespace A053118

/-- `A053117(A038722(n+1)-1)` -/
def P10708082385416238054.Spec : Prop :=
  ∀ n, P10708082385416238054.a n = A053118 n

end A053118

/-! ## A053118.P3617880574647724341

`A053117(A002024(n+1)²-(n+1))`
-/

namespace A053118.P3617880574647724341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053117 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A053118.P3617880574647724341

namespace A053118

/-- `A053117(A002024(n+1)²-(n+1))` -/
def P3617880574647724341.Spec : Prop :=
  ∀ n, P3617880574647724341.a n = A053118 n

end A053118

/-! ## A053118.P18401398629845920648

`A228565(n)*A376583(n+1)`
-/

namespace A053118.P18401398629845920648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228565 n * A376583 (n + 1)

end

end A053118.P18401398629845920648

namespace A053118

/-- `A228565(n)*A376583(n+1)` -/
def P18401398629845920648.Spec : Prop :=
  ∀ n, P18401398629845920648.a n = A053118 n

end A053118

/-! ## A053118.P11832263570058098469

`A180870(n)*A376583(n+1)`
-/

namespace A053118.P11832263570058098469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180870 n * A376583 (n + 1)

end

end A053118.P11832263570058098469

namespace A053118

/-- `A180870(n)*A376583(n+1)` -/
def P11832263570058098469.Spec : Prop :=
  ∀ n, P11832263570058098469.a n = A053118 n

end A053118

/-! ## A053118.P737097789263087847

`(A228565(n)+A180870(n))/2`
-/

namespace A053118.P737097789263087847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228565 n + A180870 n : ℚ) / 2

end

end A053118.P737097789263087847

namespace A053118

/-- `(A228565(n)+A180870(n))/2` -/
def P737097789263087847.Spec : Prop :=
  ∀ n, P737097789263087847.a n = (A053118 n : ℚ)

end A053118

/-!
# A053119: Triangle of coefficients of Chebyshev's S(n,x) polynomials (exponents in decreasing order).

The programs for A053119, the canonical program `A053119.P3722732888324487798` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053119 has offset 0).

The definition of A053119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053119.P3722732888324487798

`A053118(n)/A130321(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A053119

/-- `A053118(n)/A130321(n)` -/
def P3722732888324487798.Spec : Prop :=
  ∀ n, P3722732888324487798.a n = (A053119 n : ℚ)

end A053119

/-! ## A053119.P10267881597583080255

`A108299(n)*A376583(n+1)`
-/

namespace A053119.P10267881597583080255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108299 n * A376583 (n + 1)

end

end A053119.P10267881597583080255

namespace A053119

/-- `A108299(n)*A376583(n+1)` -/
def P10267881597583080255.Spec : Prop :=
  ∀ n, P10267881597583080255.a n = A053119 n

end A053119

/-! ## A053119.P2254670377025642914

`A049310(A061579(n))`
-/

namespace A053119.P2254670377025642914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A061579 n).toNat

end

end A053119.P2254670377025642914

namespace A053119

/-- `A049310(A061579(n))` -/
def P2254670377025642914.Spec : Prop :=
  ∀ n, P2254670377025642914.a n = A053119 n

end A053119

/-! ## A053119.P13322256666043751299

`A049310(A114327(n)+n)`
-/

namespace A053119.P13322256666043751299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A114327 n + (n : ℤ)).toNat

end

end A053119.P13322256666043751299

namespace A053119

/-- `A049310(A114327(n)+n)` -/
def P13322256666043751299.Spec : Prop :=
  ∀ n, P13322256666043751299.a n = A053119 n

end A053119

/-! ## A053119.P6790155143587486593

`A049310(A038722(n+1)-1)`
-/

namespace A053119.P6790155143587486593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A038722 (n + 1) - 1).toNat

end

end A053119.P6790155143587486593

namespace A053119

/-- `A049310(A038722(n+1)-1)` -/
def P6790155143587486593.Spec : Prop :=
  ∀ n, P6790155143587486593.a n = A053119 n

end A053119

/-! ## A053119.P10956973301752767974

`A049310(A093995(n+1)-(n+1))`
-/

namespace A053119.P10956973301752767974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A053119.P10956973301752767974

namespace A053119

/-- `A049310(A093995(n+1)-(n+1))` -/
def P10956973301752767974.Spec : Prop :=
  ∀ n, P10956973301752767974.a n = A053119 n

end A053119

/-! ## A053119.P13607183004970198659

`A049310(A002024(n+1)²-(n+1))`
-/

namespace A053119.P13607183004970198659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A053119.P13607183004970198659

namespace A053119

/-- `A049310(A002024(n+1)²-(n+1))` -/
def P13607183004970198659.Spec : Prop :=
  ∀ n, P13607183004970198659.a n = A053119 n

end A053119

/-! ## A053119.P10571487227091352595

`A049310(A004736(n+1)-A002260(n+1)+n)`
-/

namespace A053119.P10571487227091352595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A004736 (n + 1) - A002260 (n + 1) + (n : ℤ)).toNat

end

end A053119.P10571487227091352595

namespace A053119

/-- `A049310(A004736(n+1)-A002260(n+1)+n)` -/
def P10571487227091352595.Spec : Prop :=
  ∀ n, P10571487227091352595.a n = A053119 n

end A053119

/-! ## A053119.P693914414797089960

`A162515(n+1)²/A039961(n+2)`
-/

namespace A053119.P693914414797089960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162515 (n + 1) ^ 2 : ℚ) / (A039961 (n + 2) : ℚ)

end

end A053119.P693914414797089960

namespace A053119

/-- `A162515(n+1)²/A039961(n+2)` -/
def P693914414797089960.Spec : Prop :=
  ∀ n, P693914414797089960.a n = (A053119 n : ℚ)

end A053119

/-! ## A053119.P9724663801449291688

`A162515(n+1)/A039961(n+2)*A374439(n)`
-/

namespace A053119.P9724663801449291688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162515 (n + 1) : ℚ) / (A039961 (n + 2) : ℚ) * (A374439 n : ℚ)

end

end A053119.P9724663801449291688

namespace A053119

/-- `A162515(n+1)/A039961(n+2)*A374439(n)` -/
def P9724663801449291688.Spec : Prop :=
  ∀ n, P9724663801449291688.a n = (A053119 n : ℚ)

end A053119

/-! ## A053119.P14092915404277399851

`A259875(A004202(n+1))`
-/

namespace A053119.P14092915404277399851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259875 (A004202 (n + 1)).toNat

end

end A053119.P14092915404277399851

namespace A053119

/-- `A259875(A004202(n+1))` -/
def P14092915404277399851.Spec : Prop :=
  ∀ n, P14092915404277399851.a n = A053119 n

end A053119

/-! ## A053119.P18373818669307890026

`A259875(A093995(n+1)+A002262(n)+1)`
-/

namespace A053119.P18373818669307890026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259875 (A093995 (n + 1) + (A002262 n + 1)).toNat

end

end A053119.P18373818669307890026

namespace A053119

/-- `A259875(A093995(n+1)+A002262(n)+1)` -/
def P18373818669307890026.Spec : Prop :=
  ∀ n, P18373818669307890026.a n = A053119 n

end A053119

/-! ## A053119.P8803346543623049637

`A191897(n)/A330617(n)`
-/

namespace A053119.P8803346543623049637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191897 n : ℚ) / (A330617 n : ℚ)

end

end A053119.P8803346543623049637

namespace A053119

/-- `A191897(n)/A330617(n)` -/
def P8803346543623049637.Spec : Prop :=
  ∀ n, P8803346543623049637.a n = (A053119 n : ℚ)

end A053119

/-!
# A053120: Triangle of coefficients of Chebyshev's T(n,x) polynomials (powers of x in increasing order).

The programs for A053120, the canonical program `A053120.P2213477912584561574` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053120 has offset 0).

The definition of A053120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053120.P2213477912584561574

`2*T(n-1,k-1)-T(n-2,k)` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053120

/-- `2*T(n-1,k-1)-T(n-2,k)` -/
def P2213477912584561574.Spec : Prop :=
  ∀ n, P2213477912584561574.a n = A053120 n

theorem P2213477912584561574.correct : P2213477912584561574.Spec := by
  intro n
  simp only [A053120]

end A053120

/-! ## A053120.P10306137423188451640

`A137423(n)-A007318(n)`
-/

namespace A053120.P10306137423188451640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137423 n - A007318 n

end

end A053120.P10306137423188451640

namespace A053120

/-- `A137423(n)-A007318(n)` -/
def P10306137423188451640.Spec : Prop :=
  ∀ n, P10306137423188451640.a n = A053120 n

theorem P10306137423188451640.correct : P10306137423188451640.Spec := by
  intro n
  simp only [A053120, Nat.add_sub_cancel, A053120.P10306137423188451640.a, A053120.P2213477912584561574.a, A007318, A007318.P11755526479805562006.a, A137423, A137423.P11527174726418758611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053120

/-! ## A053120.P5657169003595531959

`A140883(n)-A039991(n)`
-/

namespace A053120.P5657169003595531959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140883 n - A039991 n

end

end A053120.P5657169003595531959

namespace A053120

/-- `A140883(n)-A039991(n)` -/
def P5657169003595531959.Spec : Prop :=
  ∀ n, P5657169003595531959.a n = A053120 n

theorem P5657169003595531959.correct : P5657169003595531959.Spec := by
  intro n
  simp only [A053120, Nat.add_sub_cancel, A053120.P5657169003595531959.a, A053120.P2213477912584561574.a, A039991, A039991.P3632847028178845373.a, A140883, A140883.P11216059136269672096.a, A061579, A061579.P7462537595056690109.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A053120

/-! ## A053120.P3803659093407689683

`A128174(n+1)*A136523(n)`
-/

namespace A053120.P3803659093407689683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A136523 n

end

end A053120.P3803659093407689683

namespace A053120

/-- `A128174(n+1)*A136523(n)` -/
def P3803659093407689683.Spec : Prop :=
  ∀ n, P3803659093407689683.a n = A053120 n

end A053120

/-! ## A053120.P13394183785728574066

`A059268(n)/2*A127672(n)`
-/

namespace A053120.P13394183785728574066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n : ℚ) / 2 * (A127672 n : ℚ)

end

end A053120.P13394183785728574066

namespace A053120

/-- `A059268(n)/2*A127672(n)` -/
def P13394183785728574066.Spec : Prop :=
  ∀ n, P13394183785728574066.a n = (A053120 n : ℚ)

end A053120

/-! ## A053120.P3746719402617315306

`A039991(A061579(n))`
-/

namespace A053120.P3746719402617315306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 (A061579 n).toNat

end

end A053120.P3746719402617315306

namespace A053120

/-- `A039991(A061579(n))` -/
def P3746719402617315306.Spec : Prop :=
  ∀ n, P3746719402617315306.a n = A053120 n

end A053120

/-! ## A053120.P1376947372731470627

`A039991(A114327(n)+n)`
-/

namespace A053120.P1376947372731470627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 (A114327 n + (n : ℤ)).toNat

end

end A053120.P1376947372731470627

namespace A053120

/-- `A039991(A114327(n)+n)` -/
def P1376947372731470627.Spec : Prop :=
  ∀ n, P1376947372731470627.a n = A053120 n

end A053120

/-! ## A053120.P4584167346958686886

`A039991(A038722(n+1)-1)`
-/

namespace A053120.P4584167346958686886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 (A038722 (n + 1) - 1).toNat

end

end A053120.P4584167346958686886

namespace A053120

/-- `A039991(A038722(n+1)-1)` -/
def P4584167346958686886.Spec : Prop :=
  ∀ n, P4584167346958686886.a n = A053120 n

end A053120

/-! ## A053120.P17754363486231306676

`A039991(A002024(n+1)²-(n+1))`
-/

namespace A053120.P17754363486231306676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A053120.P17754363486231306676

namespace A053120

/-- `A039991(A002024(n+1)²-(n+1))` -/
def P17754363486231306676.Spec : Prop :=
  ∀ n, P17754363486231306676.a n = A053120 n

end A053120

/-! ## A053120.P6349050674002666712

`A039991(A057944(n)+A025581(n))`
-/

namespace A053120.P6349050674002666712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 (A057944 n + A025581 n).toNat

end

end A053120.P6349050674002666712

namespace A053120

/-- `A039991(A057944(n)+A025581(n))` -/
def P6349050674002666712.Spec : Prop :=
  ∀ n, P6349050674002666712.a n = A053120 n

end A053120

/-! ## A053120.P9376700814856345681

`A039991(A057428(n)+A038722(n+1))`
-/

namespace A053120.P9376700814856345681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 (A057428 n + A038722 (n + 1)).toNat

end

end A053120.P9376700814856345681

namespace A053120

/-- `A039991(A057428(n)+A038722(n+1))` -/
def P9376700814856345681.Spec : Prop :=
  ∀ n, P9376700814856345681.a n = A053120 n

end A053120

/-! ## A053120.P9850955580307215204

`A136523(n)%A225750(n)`
-/

namespace A053120.P9850955580307215204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136523 n) (A225750 n)

end

end A053120.P9850955580307215204

namespace A053120

/-- `A136523(n)%A225750(n)` -/
def P9850955580307215204.Spec : Prop :=
  ∀ n, P9850955580307215204.a n = A053120 n

end A053120

/-!
# A053121: Catalan triangle (with 0's) read by rows.

The programs for A053121, the canonical program `A053121.P3577361133264383159` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053121 has offset 0).

The definition of A053121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053121.P3577361133264383159

`T(n-1,k-1)+T(n-1,k+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053121

/-- `T(n-1,k-1)+T(n-1,k+1)` -/
def P3577361133264383159.Spec : Prop :=
  ∀ n, (P3577361133264383159.a n : ℤ) = A053121 n

theorem P3577361133264383159.correct : P3577361133264383159.Spec := by
  intro n
  simp only [A053121]

end A053121

/-! ## A053121.P4385451175235733201

`(4*(row(n)-1)*T(n-2,k)+2*(col(n)+1)*T(n-1,k-1))/(row(n)+col(n)+2)` with `a(0)=1`
-/

namespace A053121.P4385451175235733201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((4 * ((SequenceMachineLib.triRow n : ℤ) - 1) : ℚ) * SequenceMachineLib.triUp2 a n + (2 * (SequenceMachineLib.triCol n + 1) : ℚ) * SequenceMachineLib.triUpLeft a n) / (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n + 2 : ℚ)

end

end A053121.P4385451175235733201

namespace A053121

/-- `(4*(row(n)-1)*T(n-2,k)+2*(col(n)+1)*T(n-1,k-1))/(row(n)+col(n)+2)` -/
def P4385451175235733201.Spec : Prop :=
  ∀ n, P4385451175235733201.a n = (A053121 n : ℚ)

end A053121

/-! ## A053121.P4811223132637139833

`sqrt(A213600(n))`
-/

namespace A053121.P4811223132637139833
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A213600 n : ℝ)

end

end A053121.P4811223132637139833

namespace A053121

/-- `sqrt(A213600(n))` -/
def P4811223132637139833.Spec : Prop :=
  ∀ n, P4811223132637139833.a n = (A053121 n : ℝ)

end A053121

/-! ## A053121.P7676082831735976070

`A213600(n)/A165621(n)`
-/

namespace A053121.P7676082831735976070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213600 n : ℚ) / (A165621 n : ℚ)

end

end A053121.P7676082831735976070

namespace A053121

/-- `A213600(n)/A165621(n)` -/
def P7676082831735976070.Spec : Prop :=
  ∀ n, P7676082831735976070.a n = (A053121 n : ℚ)

end A053121

/-! ## A053121.P10596287014634708780

`lcm(A165621(n), A369736(n))`
-/

namespace A053121.P10596287014634708780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165621 n) (A369736 n)

end

end A053121.P10596287014634708780

namespace A053121

/-- `lcm(A165621(n), A369736(n))` -/
def P10596287014634708780.Spec : Prop :=
  ∀ n, (P10596287014634708780.a n : ℤ) = A053121 n

end A053121

/-! ## A053121.P18219810815756161398

`A128174(n+1)*A165621(n)`
-/

namespace A053121.P18219810815756161398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A165621 n

end

end A053121.P18219810815756161398

namespace A053121

/-- `A128174(n+1)*A165621(n)` -/
def P18219810815756161398.Spec : Prop :=
  ∀ n, P18219810815756161398.a n = A053121 n

end A053121

/-! ## A053121.P7951213662665558434

`A109187(n)/A030111(n+1)`
-/

namespace A053121.P7951213662665558434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109187 n : ℚ) / (A030111 (n + 1) : ℚ)

end

end A053121.P7951213662665558434

namespace A053121

/-- `A109187(n)/A030111(n+1)` -/
def P7951213662665558434.Spec : Prop :=
  ∀ n, P7951213662665558434.a n = (A053121 n : ℚ)

end A053121

/-! ## A053121.P16936477925534522462

`A061554(n)-A061554(n+1)%A038622(n)`
-/

namespace A053121.P16936477925534522462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 n - Int.tmod (A061554 (n + 1)) (A038622 n)

end

end A053121.P16936477925534522462

namespace A053121

/-- `A061554(n)-A061554(n+1)%A038622(n)` -/
def P16936477925534522462.Spec : Prop :=
  ∀ n, P16936477925534522462.a n = A053121 n

end A053121

/-! ## A053121.P17777383035449132092

`A052173(A061579(n))`
-/

namespace A053121.P17777383035449132092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052173 (A061579 n).toNat

end

end A053121.P17777383035449132092

namespace A053121

/-- `A052173(A061579(n))` -/
def P17777383035449132092.Spec : Prop :=
  ∀ n, P17777383035449132092.a n = A053121 n

end A053121

/-! ## A053121.P16563538928799865727

`A052173(A038722(n+1)-1)`
-/

namespace A053121.P16563538928799865727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052173 (A038722 (n + 1) - 1).toNat

end

end A053121.P16563538928799865727

namespace A053121

/-- `A052173(A038722(n+1)-1)` -/
def P16563538928799865727.Spec : Prop :=
  ∀ n, P16563538928799865727.a n = A053121 n

end A053121

/-! ## A053121.P14794411952011756334

`A052173(A038722(n+2))`
-/

namespace A053121.P14794411952011756334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052173 (A038722 (n + 2)).toNat

end

end A053121.P14794411952011756334

namespace A053121

/-- `A052173(A038722(n+2))` -/
def P14794411952011756334.Spec : Prop :=
  ∀ n, P14794411952011756334.a n = A053121 n

end A053121

/-! ## A053121.P17047685529928043372

`2*A108044(n)-A108044(A014132(n+1))`
-/

namespace A053121.P17047685529928043372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108044 n - A108044 (A014132 (n + 1)).toNat

end

end A053121.P17047685529928043372

namespace A053121

/-- `2*A108044(n)-A108044(A014132(n+1))` -/
def P17047685529928043372.Spec : Prop :=
  ∀ n, P17047685529928043372.a n = A053121 n

end A053121

/-! ## A053121.P12829241055124625455

`A155761(n)/sqrt(A130321(n))`
-/

namespace A053121.P12829241055124625455
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A155761 n : ℝ) / Real.sqrt (A130321 n : ℝ)

end

end A053121.P12829241055124625455

namespace A053121

/-- `A155761(n)/sqrt(A130321(n))` -/
def P12829241055124625455.Spec : Prop :=
  ∀ n, P12829241055124625455.a n = (A053121 n : ℝ)

end A053121

/-! ## A053121.P10326817863987851452

`A155761(n)/A016116(A004736(n+1))`
-/

namespace A053121.P10326817863987851452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155761 n : ℚ) / (A016116 (A004736 (n + 1)).toNat : ℚ)

end

end A053121.P10326817863987851452

namespace A053121

/-- `A155761(n)/A016116(A004736(n+1))` -/
def P10326817863987851452.Spec : Prop :=
  ∀ n, P10326817863987851452.a n = (A053121 n : ℚ)

end A053121

/-! ## A053121.P12000498937791803039

`gcd(Δ[A061554(n)], A282252(n))`
-/

namespace A053121.P12000498937791803039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A282252 n)

end

end A053121.P12000498937791803039

namespace A053121

/-- `gcd(Δ[A061554(n)], A282252(n))` -/
def P12000498937791803039.Spec : Prop :=
  ∀ n, (P12000498937791803039.a n : ℤ) = A053121 n

end A053121

/-!
# A053122: Triangle of coefficients of Chebyshev's S(n,x-2) = U(n,x/2-1) polynomials (exponents of x in increasing order).

The programs for A053122, the canonical program `A053122.P8539817546190829993` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053122 has offset 0).

The definition of A053122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053122.P16369053690171564137

`T(n-1,k-1)-2*T(n-1,k)-T(n-2,k)` with `a(0)=1`
-/

namespace A053122.P16369053690171564137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - 2 * SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2 a n

end

end A053122.P16369053690171564137

namespace A053122

/-- `T(n-1,k-1)-2*T(n-1,k)-T(n-2,k)` -/
def P16369053690171564137.Spec : Prop :=
  ∀ n, P16369053690171564137.a n = A053122 n

end A053122

/-! ## A053122.P896150173821826148

`(-1)^(row(n)-col(n))*C(row(n)+col(n)+1, 2*col(n)+1)`
-/

namespace A053122.P896150173821826148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (Nat.choose (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n + 1) (2 * SequenceMachineLib.triCol n + 1) : ℚ)

end

end A053122.P896150173821826148

namespace A053122

/-- `(-1)^(row(n)-col(n))*C(row(n)+col(n)+1, 2*col(n)+1)` -/
def P896150173821826148.Spec : Prop :=
  ∀ n, P896150173821826148.a n = (A053122 n : ℚ)

end A053122

/-! ## A053122.P8539817546190829993

`A078812(n)*A097807(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053122

/-- `A078812(n)*A097807(n)` -/
def P8539817546190829993.Spec : Prop :=
  ∀ n, P8539817546190829993.a n = A053122 n

theorem P8539817546190829993.correct : P8539817546190829993.Spec := by
  intro n
  simp only [A053122]

end A053122

/-! ## A053122.P4895501386537444765

`A078812(n)/A125662(n)*A207815(n)`
-/

namespace A053122.P4895501386537444765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078812 n : ℚ) / (A125662 n : ℚ) * (A207815 n : ℚ)

end

end A053122.P4895501386537444765

namespace A053122

/-- `A078812(n)/A125662(n)*A207815(n)` -/
def P4895501386537444765.Spec : Prop :=
  ∀ n, P4895501386537444765.a n = (A053122 n : ℚ)

end A053122

/-! ## A053122.P3399556536698828491

`A078812(n)/A159764(n)*A207823(n)`
-/

namespace A053122.P3399556536698828491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078812 n : ℚ) / (A159764 n : ℚ) * (A207823 n : ℚ)

end

end A053122.P3399556536698828491

namespace A053122

/-- `A078812(n)/A159764(n)*A207823(n)` -/
def P3399556536698828491.Spec : Prop :=
  ∀ n, P3399556536698828491.a n = (A053122 n : ℚ)

end A053122

/-! ## A053122.P4712374930797762748

`A053123(A061579(n))`
-/

namespace A053122.P4712374930797762748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053123 (A061579 n).toNat

end

end A053122.P4712374930797762748

namespace A053122

/-- `A053123(A061579(n))` -/
def P4712374930797762748.Spec : Prop :=
  ∀ n, P4712374930797762748.a n = A053122 n

end A053122

/-! ## A053122.P13349004206131219191

`A053123(A038722(n+1)-1)`
-/

namespace A053122.P13349004206131219191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053123 (A038722 (n + 1) - 1).toNat

end

end A053122.P13349004206131219191

namespace A053122

/-- `A053123(A038722(n+1)-1)` -/
def P13349004206131219191.Spec : Prop :=
  ∀ n, P13349004206131219191.a n = A053122 n

end A053122

/-! ## A053122.P13027021701060050486

`A053123(A038722(n+2))`
-/

namespace A053122.P13027021701060050486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053123 (A038722 (n + 2)).toNat

end

end A053122.P13027021701060050486

namespace A053122

/-- `A053123(A038722(n+2))` -/
def P13027021701060050486.Spec : Prop :=
  ∀ n, P13027021701060050486.a n = A053122 n

end A053122

/-! ## A053122.P622159008087522094

`A049310(A185869(n+1))`
-/

namespace A053122.P622159008087522094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A185869 (n + 1)).toNat

end

end A053122.P622159008087522094

namespace A053122

/-- `A049310(A185869(n+1))` -/
def P622159008087522094.Spec : Prop :=
  ∀ n, P622159008087522094.a n = A053122 n

end A053122

/-! ## A053122.P15914872327269388557

`A049310(Δ[n²]+A002024(n+1)²)`
-/

namespace A053122.P15914872327269388557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + A002024 (n + 1) ^ 2).toNat

end

end A053122.P15914872327269388557

namespace A053122

/-- `A049310(Δ[n²]+A002024(n+1)²)` -/
def P15914872327269388557.Spec : Prop :=
  ∀ n, P15914872327269388557.a n = A053122 n

end A053122

/-! ## A053122.P612589006328936691

`A185331(A185871(n+1))`
-/

namespace A053122.P612589006328936691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185331 (A185871 (n + 1)).toNat

end

end A053122.P612589006328936691

namespace A053122

/-- `A185331(A185871(n+1))` -/
def P612589006328936691.Spec : Prop :=
  ∀ n, P612589006328936691.a n = A053122 n

end A053122

/-! ## A053122.P15308287801059128171

`2*A267483(2*n+1)-A267483(2*n)`
-/

namespace A053122.P15308287801059128171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A267483 (2 * n + 1) - A267483 (2 * n)

end

end A053122.P15308287801059128171

namespace A053122

/-- `2*A267483(2*n+1)-A267483(2*n)` -/
def P15308287801059128171.Spec : Prop :=
  ∀ n, P15308287801059128171.a n = A053122 n

end A053122

/-!
# A053123: Triangle of coefficients of shifted Chebyshev's S(n,x-2) = U(n,x/2-1) polynomials (exponents of x in decreasing order).

The programs for A053123, the canonical program `A053123.P11549836046725381131` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053123 has offset 0).

The definition of A053123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053123.P13590642036871483537

`(-1)^col(n)*C(2*row(n)+1-col(n), col(n))`
-/

namespace A053123.P13590642036871483537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.triCol n * (Nat.choose ((2 * SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat (SequenceMachineLib.triCol n) : ℤ)

end

end A053123.P13590642036871483537

namespace A053123

/-- `(-1)^col(n)*C(2*row(n)+1-col(n), col(n))` -/
def P13590642036871483537.Spec : Prop :=
  ∀ n, P13590642036871483537.a n = A053123 n

end A053123

/-! ## A053123.P11549836046725381131

`A062157(A002260(n+1))*A172431(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053123

/-- `A062157(A002260(n+1))*A172431(n+1)` -/
def P11549836046725381131.Spec : Prop :=
  ∀ n, P11549836046725381131.a n = A053123 n

theorem P11549836046725381131.correct : P11549836046725381131.Spec := by
  intro n
  simp only [A053123]

end A053123

/-! ## A053123.P18131184464263112082

`A053122(∑[char[∑[n]]]²-(n+1))`
-/

namespace A053123.P18131184464263112082
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053122 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A053123.P18131184464263112082

namespace A053123

/-- `A053122(∑[char[∑[n]]]²-(n+1))` -/
def P18131184464263112082.Spec : Prop :=
  ∀ n, P18131184464263112082.a n = A053123 n

end A053123

/-! ## A053123.P12210334366323067183

`A053125(n)/A262616(n)`
-/

namespace A053123.P12210334366323067183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053125 n : ℚ) / (A262616 n : ℚ)

end

end A053123.P12210334366323067183

namespace A053123

/-- `A053125(n)/A262616(n)` -/
def P12210334366323067183.Spec : Prop :=
  ∀ n, P12210334366323067183.a n = (A053123 n : ℚ)

end A053123

/-! ## A053123.P4217941715122812622

`A115139(A004202(n+1))`
-/

namespace A053123.P4217941715122812622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115139 (A004202 (n + 1)).toNat

end

end A053123.P4217941715122812622

namespace A053123

/-- `A115139(A004202(n+1))` -/
def P4217941715122812622.Spec : Prop :=
  ∀ n, P4217941715122812622.a n = A053123 n

end A053123

/-! ## A053123.P16025493910780518503

`A115139(A127739(n+1)+1+n)`
-/

namespace A053123.P16025493910780518503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115139 (A127739 (n + 1) + 1 + (n : ℤ)).toNat

end

end A053123.P16025493910780518503

namespace A053123

/-- `A115139(A127739(n+1)+1+n)` -/
def P16025493910780518503.Spec : Prop :=
  ∀ n, P16025493910780518503.a n = A053123 n

end A053123

/-! ## A053123.P15201538929035273482

`A108299(∑[char[∑[n]]]²+2*n)`
-/

namespace A053123.P15201538929035273482
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108299 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2 * n)

end

end A053123.P15201538929035273482

namespace A053123

/-- `A108299(∑[char[∑[n]]]²+2*n)` -/
def P15201538929035273482.Spec : Prop :=
  ∀ n, P15201538929035273482.a n = A053123 n

end A053123

/-! ## A053123.P13380400273116444557

`A039961(A185870(n+1))`
-/

namespace A053123.P13380400273116444557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039961 (A185870 (n + 1)).toNat

end

end A053123.P13380400273116444557

namespace A053123

/-- `A039961(A185870(n+1))` -/
def P13380400273116444557.Spec : Prop :=
  ∀ n, P13380400273116444557.a n = A053123 n

end A053123

/-! ## A053123.P14931687513141615046

`A053119(eq[3*A053119(n+1), A049310(n)])`
-/

namespace A053123.P14931687513141615046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A053119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A053123.P14931687513141615046

namespace A053123

/-- `A053119(eq[3*A053119(n+1), A049310(n)])` -/
def P14931687513141615046.Spec : Prop :=
  ∀ n, P14931687513141615046.a n = A053123 n

end A053123

/-! ## A053123.P12867490405004914578

`A115139(A136272(n+1))`
-/

namespace A053123.P12867490405004914578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115139 (A136272 (n + 1)).toNat

end

end A053123.P12867490405004914578

namespace A053123

/-- `A115139(A136272(n+1))` -/
def P12867490405004914578.Spec : Prop :=
  ∀ n, P12867490405004914578.a n = A053123 n

end A053123

/-!
# A053124: Triangle of coefficients of Chebyshev's U(n,2*x-1) polynomials (exponents of x in increasing order).

The programs for A053124, the canonical program `A053124.P5499710438770500786` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053124 has offset 0).

The definition of A053124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8735 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053124.P3056088141378194191

`(-1)^(row(n)-col(n))*2^(2*col(n))*C(row(n)+1+col(n), 2*col(n)+1)`
-/

namespace A053124.P3056088141378194191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (2 ^ (2 * SequenceMachineLib.triCol n) : ℚ) * (Nat.choose (SequenceMachineLib.triRow n + 1 + SequenceMachineLib.triCol n) (2 * SequenceMachineLib.triCol n + 1) : ℚ)

end

end A053124.P3056088141378194191

namespace A053124

/-- `(-1)^(row(n)-col(n))*2^(2*col(n))*C(row(n)+1+col(n), 2*col(n)+1)` -/
def P3056088141378194191.Spec : Prop :=
  ∀ n, P3056088141378194191.a n = (A053124 n : ℚ)

end A053124

/-! ## A053124.P5499710438770500786

`A059268(n)²*A053122(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A053124

/-- `A059268(n)²*A053122(n)` -/
def P5499710438770500786.Spec : Prop :=
  ∀ n, P5499710438770500786.a n = A053124 n

theorem P5499710438770500786.correct : P5499710438770500786.Spec := by
  intro n
  simp only [A053124]

end A053124

/-! ## A053124.P1864460718364101241

`A000302(A002262(n))*A053122(n)`
-/

namespace A053124.P1864460718364101241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A002262 n).toNat * A053122 n

end

end A053124.P1864460718364101241

namespace A053124

/-- `A000302(A002262(n))*A053122(n)` -/
def P1864460718364101241.Spec : Prop :=
  ∀ n, P1864460718364101241.a n = A053124 n

end A053124

/-! ## A053124.P15973378344646407720

`A053125(A061579(n))`
-/

namespace A053124.P15973378344646407720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053125 (A061579 n).toNat

end

end A053124.P15973378344646407720

namespace A053124

/-- `A053125(A061579(n))` -/
def P15973378344646407720.Spec : Prop :=
  ∀ n, P15973378344646407720.a n = A053124 n

end A053124

/-! ## A053124.P1823319136376583270

`A053125(A038722(n+1)-1)`
-/

namespace A053124.P1823319136376583270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053125 (A038722 (n + 1) - 1).toNat

end

end A053124.P1823319136376583270

namespace A053124

/-- `A053125(A038722(n+1)-1)` -/
def P1823319136376583270.Spec : Prop :=
  ∀ n, P1823319136376583270.a n = A053124 n

end A053124

/-! ## A053124.P13507777020132890753

`A053117(A185869(n+1))/2`
-/

namespace A053124.P13507777020132890753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053117 (A185869 (n + 1)).toNat : ℚ) / 2

end

end A053124.P13507777020132890753

namespace A053124

/-- `A053117(A185869(n+1))/2` -/
def P13507777020132890753.Spec : Prop :=
  ∀ n, P13507777020132890753.a n = (A053124 n : ℚ)

end A053124

/-!
# A053125: Triangle of coefficients of Chebyshev's U(n,2*x-1) polynomials (exponents of x in decreasing order).

The programs for A053125, the canonical program `A053125.P9675330196426846568` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053125 has offset 0).

The definition of A053125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053125.P9675330196426846568

`4^(row(n)-col(n))*(-1)^col(n)*C(2*row(n)+1-col(n), col(n))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053125

/-- `4^(row(n)-col(n))*(-1)^col(n)*C(2*row(n)+1-col(n), col(n))` -/
def P9675330196426846568.Spec : Prop :=
  ∀ n, P9675330196426846568.a n = (A053125 n : ℚ)

end A053125

/-! ## A053125.P16228153998582547730

`A053123(n)*A262616(n)`
-/

namespace A053125.P16228153998582547730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053123 n * A262616 n

end

end A053125.P16228153998582547730

namespace A053125

/-- `A053123(n)*A262616(n)` -/
def P16228153998582547730.Spec : Prop :=
  ∀ n, P16228153998582547730.a n = A053125 n

end A053125

/-! ## A053125.P17991822994261904580

`A130321(n)²*A053123(n)`
-/

namespace A053125.P17991822994261904580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A053123 n

end

end A053125.P17991822994261904580

namespace A053125

/-- `A130321(n)²*A053123(n)` -/
def P17991822994261904580.Spec : Prop :=
  ∀ n, P17991822994261904580.a n = A053125 n

end A053125

/-! ## A053125.P15498242588515854946

`A053123(n)*A282453(A099375(n))`
-/

namespace A053125.P15498242588515854946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053123 n * A282453 (A099375 n).toNat

end

end A053125.P15498242588515854946

namespace A053125

/-- `A053123(n)*A282453(A099375(n))` -/
def P15498242588515854946.Spec : Prop :=
  ∀ n, P15498242588515854946.a n = A053125 n

end A053125

/-! ## A053125.P4093412307170577312

`A053124(A061579(n))`
-/

namespace A053125.P4093412307170577312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053124 (A061579 n).toNat

end

end A053125.P4093412307170577312

namespace A053125

/-- `A053124(A061579(n))` -/
def P4093412307170577312.Spec : Prop :=
  ∀ n, P4093412307170577312.a n = A053125 n

end A053125

/-! ## A053125.P17789547065335406635

`A053124(A114327(n)+n)`
-/

namespace A053125.P17789547065335406635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053124 (A114327 n + (n : ℤ)).toNat

end

end A053125.P17789547065335406635

namespace A053125

/-- `A053124(A114327(n)+n)` -/
def P17789547065335406635.Spec : Prop :=
  ∀ n, P17789547065335406635.a n = A053125 n

end A053125

/-! ## A053125.P16629005211482004324

`A053124(A038722(n+1)-1)`
-/

namespace A053125.P16629005211482004324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053124 (A038722 (n + 1) - 1).toNat

end

end A053125.P16629005211482004324

namespace A053125

/-- `A053124(A038722(n+1)-1)` -/
def P16629005211482004324.Spec : Prop :=
  ∀ n, P16629005211482004324.a n = A053125 n

end A053125

/-!
# A053126: Binomial coefficients binomial(2*n-3,4).

The programs for A053126, the canonical program `A053126.P6185349873871692043` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053126 has offset 4).

The definition of A053126 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*(n+4)-3, 4)` (program `A053126.P6185349873871692043`, by `A053126.P6185349873871692043.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053126.P6185349873871692043

`C(2*(n+4)-3, 4)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053126

/-- `C(2*(n+4)-3, 4)` -/
def P6185349873871692043.Spec : Prop :=
  ∀ n, (P6185349873871692043.a n : ℤ) = A053126 (n + 4)

theorem P6185349873871692043.correct : P6185349873871692043.Spec := by
  intro n
  simp only [A053126, Nat.add_sub_cancel]

end A053126

/-! ## A053126.P10968192498227196046

`A006561(2*(n+4)-3)`
-/

namespace A053126.P10968192498227196046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006561 (2 * (n + 4) - 3)

end

end A053126.P10968192498227196046

namespace A053126

/-- `A006561(2*(n+4)-3)` -/
def P10968192498227196046.Spec : Prop :=
  ∀ n, P10968192498227196046.a n = A053126 (n + 4)

end A053126

/-! ## A053126.P16961552422681148124

`A000447(n+2)*(n+1)/2`
-/

namespace A053126.P16961552422681148124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000447 (n + 2) * (n + 1 : ℤ) : ℚ) / 2

end

end A053126.P16961552422681148124

namespace A053126

/-- `A000447(n+2)*(n+1)/2` -/
def P16961552422681148124.Spec : Prop :=
  ∀ n, P16961552422681148124.a n = (A053126 (n + 4) : ℚ)

end A053126

/-! ## A053126.P15180551632905560777

`∑[∑[∑[16*n+4]+1]]`
-/

namespace A053126.P15180551632905560777
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053126.P15180551632905560777

namespace A053126

/-- `∑[∑[∑[16*n+4]+1]]` -/
def P15180551632905560777.Spec : Prop :=
  ∀ n, (P15180551632905560777.a n : ℤ) = A053126 (n + 4)

end A053126

/-! ## A053126.P6245569476085249116

`record[C(n+5, 4)/(-1)^n]`
-/

namespace A053126.P6245569476085249116
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 4 : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053126.P6245569476085249116

namespace A053126

/-- `record[C(n+5, 4)/(-1)^n]` -/
def P6245569476085249116.Spec : Prop :=
  ∀ n, P6245569476085249116.a n = (A053126 (n + 4) : ℚ)

end A053126

/-! ## A053126.P2703158034699823601

`record[C(n+5, 4)^(-1)^n]`
-/

namespace A053126.P2703158034699823601
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 4 : ℚ) ^ ((-1) ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053126.P2703158034699823601

namespace A053126

/-- `record[C(n+5, 4)^(-1)^n]` -/
def P2703158034699823601.Spec : Prop :=
  ∀ n, P2703158034699823601.a n = (A053126 (n + 4) : ℚ)

end A053126

/-! ## A053126.P1237106219399997854

`∑[∑[record[xor(3, n)²+1]]]/2`
-/

namespace A053126.P1237106219399997854
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n ^ 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A053126.P1237106219399997854

namespace A053126

/-- `∑[∑[record[xor(3, n)²+1]]]/2` -/
def P1237106219399997854.Spec : Prop :=
  ∀ n, P1237106219399997854.a n = (A053126 (n + 4) : ℚ)

end A053126

/-! ## A053126.P13393593631581497503

`(2*n+5)*A000330(n+1)`
-/

namespace A053126.P13393593631581497503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 5 : ℤ) * A000330 (n + 1)

end

end A053126.P13393593631581497503

namespace A053126

/-- `(2*n+5)*A000330(n+1)` -/
def P13393593631581497503.Spec : Prop :=
  ∀ n, P13393593631581497503.a n = A053126 (n + 4)

end A053126

/-! ## A053126.P11488952923988316981

`A330805(n)+A048395(n+1)`
-/

namespace A053126.P11488952923988316981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330805 n + A048395 (n + 1)

end

end A053126.P11488952923988316981

namespace A053126

/-- `A330805(n)+A048395(n+1)` -/
def P11488952923988316981.Spec : Prop :=
  ∀ n, P11488952923988316981.a n = A053126 (n + 4)

end A053126

/-! ## A053126.P1261588987169945851

`A267233(n+1)-A051797(n)`
-/

namespace A053126.P1261588987169945851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267233 (n + 1) - A051797 n

end

end A053126.P1261588987169945851

namespace A053126

/-- `A267233(n+1)-A051797(n)` -/
def P1261588987169945851.Spec : Prop :=
  ∀ n, P1261588987169945851.a n = A053126 (n + 4)

end A053126

/-! ## A053126.P8607516694306166783

`A100431(n)-A062346(n+2)`
-/

namespace A053126.P8607516694306166783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100431 n - A062346 (n + 2)

end

end A053126.P8607516694306166783

namespace A053126

/-- `A100431(n)-A062346(n+2)` -/
def P8607516694306166783.Spec : Prop :=
  ∀ n, P8607516694306166783.a n = A053126 (n + 4)

end A053126

/-! ## A053126.P3617805196516405232

`A053127(n+5)-A002299(n)`
-/

namespace A053126.P3617805196516405232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053127 (n + 5) - A002299 n

end

end A053126.P3617805196516405232

namespace A053126

/-- `A053127(n+5)-A002299(n)` -/
def P3617805196516405232.Spec : Prop :=
  ∀ n, P3617805196516405232.a n = A053126 (n + 4)

end A053126

/-! ## A053126.P17197678974946563831

`A228463(n+1)-A225008(n+1)`
-/

namespace A053126.P17197678974946563831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228463 (n + 1) - A225008 (n + 1)

end

end A053126.P17197678974946563831

namespace A053126

/-- `A228463(n+1)-A225008(n+1)` -/
def P17197678974946563831.Spec : Prop :=
  ∀ n, P17197678974946563831.a n = A053126 (n + 4)

theorem P17197678974946563831.correct : P17197678974946563831.Spec := by
  intro n
  simp only [A053126, Nat.add_sub_cancel, A053126.P17197678974946563831.a, A053126.P6185349873871692043.a, A225008, A225008.P12263902440367340153.f1, A225008.P12263902440367340153.a, A228463, A228463.P17573629568626594097.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053126

/-! ## A053126.P10589563691128741286

`A053134(n)+A002492(n+1)`
-/

namespace A053126.P10589563691128741286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053134 n + A002492 (n + 1)

end

end A053126.P10589563691128741286

namespace A053126

/-- `A053134(n)+A002492(n+1)` -/
def P10589563691128741286.Spec : Prop :=
  ∀ n, P10589563691128741286.a n = A053126 (n + 4)

end A053126

/-! ## A053126.P13109623295102078999

`Δ[A002299(n)-∑[A053134(n)]]`
-/

namespace A053126.P13109623295102078999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053134 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002299 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053126.P13109623295102078999

namespace A053126

/-- `Δ[A002299(n)-∑[A053134(n)]]` -/
def P13109623295102078999.Spec : Prop :=
  ∀ n, P13109623295102078999.a n = A053126 (n + 4)

end A053126

/-! ## A053126.P15018487067668204118

`A258582(n+1)+∑[A258582(n)]`
-/

namespace A053126.P15018487067668204118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258582 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053126.P15018487067668204118

namespace A053126

/-- `A258582(n+1)+∑[A258582(n)]` -/
def P15018487067668204118.Spec : Prop :=
  ∀ n, P15018487067668204118.a n = A053126 (n + 4)

end A053126

/-! ## A053126.P12989541437073787758

`A098077(n+1)+A059270(n+1)`
-/

namespace A053126.P12989541437073787758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098077 (n + 1) + A059270 (n + 1)

end

end A053126.P12989541437073787758

namespace A053126

/-- `A098077(n+1)+A059270(n+1)` -/
def P12989541437073787758.Spec : Prop :=
  ∀ n, P12989541437073787758.a n = A053126 (n + 4)

end A053126

/-! ## A053126.P15457754494369452878

`A000330(n+1)*A144396(n+2)`
-/

namespace A053126.P15457754494369452878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) * A144396 (n + 2)

end

end A053126.P15457754494369452878

namespace A053126

/-- `A000330(n+1)*A144396(n+2)` -/
def P15457754494369452878.Spec : Prop :=
  ∀ n, P15457754494369452878.a n = A053126 (n + 4)

end A053126

/-! ## A053126.P14186557564750434670

`A002299(n+1)-(A053134(n+1)+A002299(n))`
-/

namespace A053126.P14186557564750434670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002299 (n + 1) - (A053134 (n + 1) + A002299 n)

end

end A053126.P14186557564750434670

namespace A053126

/-- `A002299(n+1)-(A053134(n+1)+A002299(n))` -/
def P14186557564750434670.Spec : Prop :=
  ∀ n, P14186557564750434670.a n = A053126 (n + 4)

end A053126

/-! ## A053126.P1290468366536008320

`A008911(n+1)+A083374(n+2)-A000217(n+1)`
-/

namespace A053126.P1290468366536008320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 (n + 1) + (A083374 (n + 2) - A000217 (n + 1))

end

end A053126.P1290468366536008320

namespace A053126

/-- `A008911(n+1)+A083374(n+2)-A000217(n+1)` -/
def P1290468366536008320.Spec : Prop :=
  ∀ n, P1290468366536008320.a n = A053126 (n + 4)

end A053126

/-!
# A053127: Binomial coefficients C(2*n-4,5).

The programs for A053127, the canonical program `A053127.P4399153676989616851` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053127 has offset 5).

The definition of A053127 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*(n+5)-4, 5)` (program `A053127.P4399153676989616851`, by `A053127.P4399153676989616851.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053127.P4399153676989616851

`C(2*(n+5)-4, 5)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053127

/-- `C(2*(n+5)-4, 5)` -/
def P4399153676989616851.Spec : Prop :=
  ∀ n, (P4399153676989616851.a n : ℤ) = A053127 (n + 5)

theorem P4399153676989616851.correct : P4399153676989616851.Spec := by
  intro n
  simp only [A053127, Nat.add_sub_cancel]

end A053127

/-! ## A053127.P1756156183471671586

`(2*(n+5)-8)*(2*(n+5)-7)*(2*(n+5)-6)*(2*(n+5)-5)*(2*(n+5)-4)/120`
-/

namespace A053127.P1756156183471671586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * (n + 5) : ℤ) - 8) * ((2 * (n + 5) : ℤ) - 7) * ((2 * (n + 5) : ℤ) - 6) * ((2 * (n + 5) : ℤ) - 5) * ((2 * (n + 5) : ℤ) - 4) : ℚ) / 120

end

end A053127.P1756156183471671586

namespace A053127

/-- `(2*(n+5)-8)*(2*(n+5)-7)*(2*(n+5)-6)*(2*(n+5)-5)*(2*(n+5)-4)/120` -/
def P1756156183471671586.Spec : Prop :=
  ∀ n, P1756156183471671586.a n = (A053127 (n + 5) : ℚ)

end A053127

/-! ## A053127.P12855168049378732987

`record[C(n+6, 5)/(-1)^n]`
-/

namespace A053127.P12855168049378732987
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 5 : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053127.P12855168049378732987

namespace A053127

/-- `record[C(n+6, 5)/(-1)^n]` -/
def P12855168049378732987.Spec : Prop :=
  ∀ n, P12855168049378732987.a n = (A053127 (n + 5) : ℚ)

end A053127

/-! ## A053127.P15274182615614519019

`record[C(n+6, 5)^(-1)^n]`
-/

namespace A053127.P15274182615614519019
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 5 : ℚ) ^ ((-1) ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053127.P15274182615614519019

namespace A053127

/-- `record[C(n+6, 5)^(-1)^n]` -/
def P15274182615614519019.Spec : Prop :=
  ∀ n, P15274182615614519019.a n = (A053127 (n + 5) : ℚ)

end A053127

/-! ## A053127.P2619494303585327279

`record[gcd(val(n+1, 2), C(n+6, 5))]`
-/

namespace A053127.P2619494303585327279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (SequenceMachineLib.valuation (n + 1) 2) (Nat.choose (n + 6) 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053127.P2619494303585327279

namespace A053127

/-- `record[gcd(val(n+1, 2), C(n+6, 5))]` -/
def P2619494303585327279.Spec : Prop :=
  ∀ n, (P2619494303585327279.a n : ℤ) = A053127 (n + 5)

end A053127

/-! ## A053127.P8696664084621569526

`A053132(n+5)*2`
-/

namespace A053127.P8696664084621569526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053132 (n + 5) * 2

end

end A053127.P8696664084621569526

namespace A053127

/-- `A053132(n+5)*2` -/
def P8696664084621569526.Spec : Prop :=
  ∀ n, P8696664084621569526.a n = A053127 (n + 5)

end A053127

/-! ## A053127.P10529012878590515682

`A157706(n+2)-A108673(n)`
-/

namespace A053127.P10529012878590515682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157706 (n + 2) - A108673 n

end

end A053127.P10529012878590515682

namespace A053127

/-- `A157706(n+2)-A108673(n)` -/
def P10529012878590515682.Spec : Prop :=
  ∀ n, P10529012878590515682.a n = A053127 (n + 5)

theorem P10529012878590515682.correct : P10529012878590515682.Spec := by
  intro n
  simp only [A053127, Nat.add_sub_cancel, A053127.P10529012878590515682.a, A053127.P4399153676989616851.a, A108673, A108673.P15211813064449303530.a, A157706, A157706.P9262348439420365523.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053127

/-! ## A053127.P937505263233382623

`A053126(n+4)+A002299(n)`
-/

namespace A053127.P937505263233382623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053126 (n + 4) + A002299 n

end

end A053127.P937505263233382623

namespace A053127

/-- `A053126(n+4)+A002299(n)` -/
def P937505263233382623.Spec : Prop :=
  ∀ n, P937505263233382623.a n = A053127 (n + 5)

end A053127

/-! ## A053127.P5691312476187680272

`A053128(n+6)-A053135(n)`
-/

namespace A053127.P5691312476187680272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053128 (n + 6) - A053135 n

end

end A053127.P5691312476187680272

namespace A053127

/-- `A053128(n+6)-A053135(n)` -/
def P5691312476187680272.Spec : Prop :=
  ∀ n, P5691312476187680272.a n = A053127 (n + 5)

end A053127

/-! ## A053127.P6330945096968416534

`A053129(n+7)-(A053136(n)+A053135(n))`
-/

namespace A053127.P6330945096968416534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053129 (n + 7) - (A053136 n + A053135 n)

end

end A053127.P6330945096968416534

namespace A053127

/-- `A053129(n+7)-(A053136(n)+A053135(n))` -/
def P6330945096968416534.Spec : Prop :=
  ∀ n, P6330945096968416534.a n = A053127 (n + 5)

end A053127

/-! ## A053127.P4568089726123820119

`∑[2*A180324(n+1)]`
-/

namespace A053127.P4568089726123820119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053127.P4568089726123820119

namespace A053127

/-- `∑[2*A180324(n+1)]` -/
def P4568089726123820119.Spec : Prop :=
  ∀ n, P4568089726123820119.a n = A053127 (n + 5)

end A053127

/-! ## A053127.P3634494286619765830

`A002299(n+1)-A053134(n+1)`
-/

namespace A053127.P3634494286619765830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002299 (n + 1) - A053134 (n + 1)

end

end A053127.P3634494286619765830

namespace A053127

/-- `A002299(n+1)-A053134(n+1)` -/
def P3634494286619765830.Spec : Prop :=
  ∀ n, P3634494286619765830.a n = A053127 (n + 5)

end A053127

/-! ## A053127.P18318420826735883571

`A213562(n+2)-A213549(n+2)`
-/

namespace A053127.P18318420826735883571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213562 (n + 2) - A213549 (n + 2)

end

end A053127.P18318420826735883571

namespace A053127

/-- `A213562(n+2)-A213549(n+2)` -/
def P18318420826735883571.Spec : Prop :=
  ∀ n, P18318420826735883571.a n = A053127 (n + 5)

end A053127

/-! ## A053127.P10084511486494147205

`A053135(n+1)-(A053135(n)+A002299(n+1))`
-/

namespace A053127.P10084511486494147205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053135 (n + 1) - (A053135 n + A002299 (n + 1))

end

end A053127.P10084511486494147205

namespace A053127

/-- `A053135(n+1)-(A053135(n)+A002299(n+1))` -/
def P10084511486494147205.Spec : Prop :=
  ∀ n, P10084511486494147205.a n = A053127 (n + 5)

end A053127

/-! ## A053127.P17403387798758177081

`A002299(n+1)+A225007(n)-A225007(n+1)`
-/

namespace A053127.P17403387798758177081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002299 (n + 1) + (A225007 n - A225007 (n + 1))

end

end A053127.P17403387798758177081

namespace A053127

/-- `A002299(n+1)+A225007(n)-A225007(n+1)` -/
def P17403387798758177081.Spec : Prop :=
  ∀ n, P17403387798758177081.a n = A053127 (n + 5)

end A053127

/-! ## A053127.P8096725228966817746

`A062988(2*n)+1`
-/

namespace A053127.P8096725228966817746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062988 (2 * n) + 1

end

end A053127.P8096725228966817746

namespace A053127

/-- `A062988(2*n)+1` -/
def P8096725228966817746.Spec : Prop :=
  ∀ n, P8096725228966817746.a n = A053127 (n + 5)

end A053127

/-! ## A053127.P10231591125136862924

`A166808(Δ[n²])+2`
-/

namespace A053127.P10231591125136862924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166808 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A053127.P10231591125136862924

namespace A053127

/-- `A166808(Δ[n²])+2` -/
def P10231591125136862924.Spec : Prop :=
  ∀ n, P10231591125136862924.a n = A053127 (n + 5)

end A053127

/-! ## A053127.P14815207896580178817

`2*A005995(Δ[n²])`
-/

namespace A053127.P14815207896580178817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005995 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053127.P14815207896580178817

namespace A053127

/-- `2*A005995(Δ[n²])` -/
def P14815207896580178817.Spec : Prop :=
  ∀ n, P14815207896580178817.a n = A053127 (n + 5)

end A053127

/-! ## A053127.P6488059589935299851

`2*A282081(Δ[n²])`
-/

namespace A053127.P6488059589935299851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282081 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053127.P6488059589935299851

namespace A053127

/-- `2*A282081(Δ[n²])` -/
def P6488059589935299851.Spec : Prop :=
  ∀ n, P6488059589935299851.a n = A053127 (n + 5)

end A053127

/-! ## A053127.P17717859255496184661

`∑[∑[A352115(2*n+1)]]`
-/

namespace A053127.P17717859255496184661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352115 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053127.P17717859255496184661

namespace A053127

/-- `∑[∑[A352115(2*n+1)]]` -/
def P17717859255496184661.Spec : Prop :=
  ∀ n, P17717859255496184661.a n = A053127 (n + 5)

end A053127

/-!
# A053128: Binomial coefficients C(2*n-5,6).

The programs for A053128, the canonical program `A053128.P9594675517092600567` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053128 has offset 6).

The definition of A053128 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*(n+6)-5, 6)` (program `A053128.P9594675517092600567`, by `A053128.P9594675517092600567.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053128.P9594675517092600567

`C(2*(n+6)-5, 6)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053128

/-- `C(2*(n+6)-5, 6)` -/
def P9594675517092600567.Spec : Prop :=
  ∀ n, (P9594675517092600567.a n : ℤ) = A053128 (n + 6)

theorem P9594675517092600567.correct : P9594675517092600567.Spec := by
  intro n
  simp only [A053128, Nat.add_sub_cancel]

end A053128

/-! ## A053128.P11564775447504437402

`(n+1)*(n+2)*(n+3)*(2*(n+6)-9)*(2*(n+6)-7)*(2*(n+6)-5)/90`
-/

namespace A053128.P11564775447504437402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 2) * (n + 3) : ℤ) * ((2 * (n + 6) : ℤ) - 9) * ((2 * (n + 6) : ℤ) - 7) * ((2 * (n + 6) : ℤ) - 5) : ℚ) / 90

end

end A053128.P11564775447504437402

namespace A053128

/-- `(n+1)*(n+2)*(n+3)*(2*(n+6)-9)*(2*(n+6)-7)*(2*(n+6)-5)/90` -/
def P11564775447504437402.Spec : Prop :=
  ∀ n, P11564775447504437402.a n = (A053128 (n + 6) : ℚ)

end A053128

/-! ## A053128.P7568646497570387207

`record[C(n+7, 6)/(-1)^n]`
-/

namespace A053128.P7568646497570387207
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 6 : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053128.P7568646497570387207

namespace A053128

/-- `record[C(n+7, 6)/(-1)^n]` -/
def P7568646497570387207.Spec : Prop :=
  ∀ n, P7568646497570387207.a n = (A053128 (n + 6) : ℚ)

end A053128

/-! ## A053128.P11737544406493353794

`record[C(n+7, 6)^(-1)^n]`
-/

namespace A053128.P11737544406493353794
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 6 : ℚ) ^ ((-1) ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053128.P11737544406493353794

namespace A053128

/-- `record[C(n+7, 6)^(-1)^n]` -/
def P11737544406493353794.Spec : Prop :=
  ∀ n, P11737544406493353794.a n = (A053128 (n + 6) : ℚ)

end A053128

/-! ## A053128.P13365270962514664290

`record[lcm(C(n+7, 6), and(1, n+1))]`
-/

namespace A053128.P13365270962514664290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.choose (n + 7) 6) (Nat.land 1 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053128.P13365270962514664290

namespace A053128

/-- `record[lcm(C(n+7, 6), and(1, n+1))]` -/
def P13365270962514664290.Spec : Prop :=
  ∀ n, (P13365270962514664290.a n : ℤ) = A053128 (n + 6)

end A053128

/-! ## A053128.P13109222007061555074

`A053135(n)+A053127(n+5)`
-/

namespace A053128.P13109222007061555074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053135 n + A053127 (n + 5)

end

end A053128.P13109222007061555074

namespace A053128

/-- `A053135(n)+A053127(n+5)` -/
def P13109222007061555074.Spec : Prop :=
  ∀ n, P13109222007061555074.a n = A053128 (n + 6)

end A053128

/-! ## A053128.P7252218619265746366

`A053129(n+7)-A053136(n)`
-/

namespace A053128.P7252218619265746366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053129 (n + 7) - A053136 n

end

end A053128.P7252218619265746366

namespace A053128

/-- `A053129(n+7)-A053136(n)` -/
def P7252218619265746366.Spec : Prop :=
  ∀ n, P7252218619265746366.a n = A053128 (n + 6)

end A053128

/-! ## A053128.P17321257980267175978

`∑[A053126(n+4)+2*A002299(n)]`
-/

namespace A053128.P17321257980267175978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053126 (n + 4) + 2 * A002299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053128.P17321257980267175978

namespace A053128

/-- `∑[A053126(n+4)+2*A002299(n)]` -/
def P17321257980267175978.Spec : Prop :=
  ∀ n, P17321257980267175978.a n = A053128 (n + 6)

end A053128

/-! ## A053128.P3494299843244542397

`A053130(n+8)-(A053137(n)+A053136(n))`
-/

namespace A053128.P3494299843244542397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053130 (n + 8) - (A053137 n + A053136 n)

end

end A053128.P3494299843244542397

namespace A053128

/-- `A053130(n+8)-(A053137(n)+A053136(n))` -/
def P3494299843244542397.Spec : Prop :=
  ∀ n, P3494299843244542397.a n = A053128 (n + 6)

end A053128

/-! ## A053128.P9094777718774877550

`(n+1)/3*A002299(n+1)`
-/

namespace A053128.P9094777718774877550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A002299 (n + 1) : ℚ)

end

end A053128.P9094777718774877550

namespace A053128

/-- `(n+1)/3*A002299(n+1)` -/
def P9094777718774877550.Spec : Prop :=
  ∀ n, P9094777718774877550.a n = (A053128 (n + 6) : ℚ)

end A053128

/-! ## A053128.P2271847268238350448

`A053135(n+1)-A002299(n+1)`
-/

namespace A053128.P2271847268238350448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053135 (n + 1) - A002299 (n + 1)

end

end A053128.P2271847268238350448

namespace A053128

/-- `A053135(n+1)-A002299(n+1)` -/
def P2271847268238350448.Spec : Prop :=
  ∀ n, P2271847268238350448.a n = A053128 (n + 6)

end A053128

/-! ## A053128.P12409664202397976483

`A053136(n+1)-(A053136(n)+A053135(n+1))`
-/

namespace A053128.P12409664202397976483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053136 (n + 1) - (A053136 n + A053135 (n + 1))

end

end A053128.P12409664202397976483

namespace A053128

/-- `A053136(n+1)-(A053136(n)+A053135(n+1))` -/
def P12409664202397976483.Spec : Prop :=
  ∀ n, P12409664202397976483.a n = A053128 (n + 6)

end A053128

/-! ## A053128.P10086835206650438845

`A166810(Δ[n²])+2`
-/

namespace A053128.P10086835206650438845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166810 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A053128.P10086835206650438845

namespace A053128

/-- `A166810(Δ[n²])+2` -/
def P10086835206650438845.Spec : Prop :=
  ∀ n, P10086835206650438845.a n = A053128 (n + 6)

end A053128

/-! ## A053128.P11825104618303559069

`∑[A005585(2*(n+1))]`
-/

namespace A053128.P11825104618303559069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053128.P11825104618303559069

namespace A053128

/-- `∑[A005585(2*(n+1))]` -/
def P11825104618303559069.Spec : Prop :=
  ∀ n, P11825104618303559069.a n = A053128 (n + 6)

end A053128

/-! ## A053128.P4885162537555469286

`A124089(2*n+7)+1`
-/

namespace A053128.P4885162537555469286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124089 (2 * n + 7) + 1

end

end A053128.P4885162537555469286

namespace A053128

/-- `A124089(2*n+7)+1` -/
def P4885162537555469286.Spec : Prop :=
  ∀ n, P4885162537555469286.a n = A053128 (n + 6)

end A053128

/-! ## A053128.P15049332915226609545

`∑[∑[∑[A001845(2*n+1)]]]`
-/

namespace A053128.P15049332915226609545
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053128.P15049332915226609545

namespace A053128

/-- `∑[∑[∑[A001845(2*n+1)]]]` -/
def P15049332915226609545.Spec : Prop :=
  ∀ n, P15049332915226609545.a n = A053128 (n + 6)

end A053128

/-! ## A053128.P12175822615713549785

`A000580(2*(n+4))-A053136(n)`
-/

namespace A053128.P12175822615713549785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (2 * (n + 4)) - A053136 n

end

end A053128.P12175822615713549785

namespace A053128

/-- `A000580(2*(n+4))-A053136(n)` -/
def P12175822615713549785.Spec : Prop :=
  ∀ n, P12175822615713549785.a n = A053128 (n + 6)

end A053128

/-! ## A053128.P13627322508188542156

`A001769(2*n+1)+A001769(2*n)`
-/

namespace A053128.P13627322508188542156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001769 (2 * n + 1) + A001769 (2 * n)

end

end A053128.P13627322508188542156

namespace A053128

/-- `A001769(2*n+1)+A001769(2*n)` -/
def P13627322508188542156.Spec : Prop :=
  ∀ n, P13627322508188542156.a n = A053128 (n + 6)

end A053128

/-! ## A053128.P7807995186600506063

`A062966(2*n)+A000217(2*(n+1))`
-/

namespace A053128.P7807995186600506063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062966 (2 * n) + A000217 (2 * (n + 1))

end

end A053128.P7807995186600506063

namespace A053128

/-- `A062966(2*n)+A000217(2*(n+1))` -/
def P7807995186600506063.Spec : Prop :=
  ∀ n, P7807995186600506063.a n = A053128 (n + 6)

end A053128

/-! ## A053128.P8317846186641701123

`A257890(2*n)+A223659(2*n+1)`
-/

namespace A053128.P8317846186641701123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257890 (2 * n) + A223659 (2 * n + 1)

end

end A053128.P8317846186641701123

namespace A053128

/-- `A257890(2*n)+A223659(2*n+1)` -/
def P8317846186641701123.Spec : Prop :=
  ∀ n, P8317846186641701123.a n = A053128 (n + 6)

end A053128

/-!
# A053129: Binomial coefficients C(2*n-6,7).

The programs for A053129, the canonical program `A053129.P17955855341501439655` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053129 has offset 7).

The definition of A053129 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*(n+7)-6, 7)` (program `A053129.P17955855341501439655`, by `A053129.P17955855341501439655.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053129.P17955855341501439655

`C(2*(n+7)-6, 7)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053129

/-- `C(2*(n+7)-6, 7)` -/
def P17955855341501439655.Spec : Prop :=
  ∀ n, (P17955855341501439655.a n : ℤ) = A053129 (n + 7)

theorem P17955855341501439655.correct : P17955855341501439655.Spec := by
  intro n
  simp only [A053129, Nat.add_sub_cancel]

end A053129

/-! ## A053129.P7919124711474588781

`8*A000973(n+8)`
-/

namespace A053129.P7919124711474588781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000973 (n + 8)

end

end A053129.P7919124711474588781

namespace A053129

/-- `8*A000973(n+8)` -/
def P7919124711474588781.Spec : Prop :=
  ∀ n, P7919124711474588781.a n = A053129 (n + 7)

end A053129

/-! ## A053129.P5520600051012544189

`record[C(n+8, 7)^((n+1)%2)]`
-/

namespace A053129.P5520600051012544189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 8) 7 ^ ((n + 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053129.P5520600051012544189

namespace A053129

/-- `record[C(n+8, 7)^((n+1)%2)]` -/
def P5520600051012544189.Spec : Prop :=
  ∀ n, (P5520600051012544189.a n : ℤ) = A053129 (n + 7)

end A053129

/-! ## A053129.P6411028050543994934

`record[and((-1)^A020639(n+1), C(n+8, 7))]`
-/

namespace A053129.P6411028050543994934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A020639 (n + 1) : ℤ))) (Nat.choose (n + 8) 7 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053129.P6411028050543994934

namespace A053129

/-- `record[and((-1)^A020639(n+1), C(n+8, 7))]` -/
def P6411028050543994934.Spec : Prop :=
  ∀ n, P6411028050543994934.a n = A053129 (n + 7)

end A053129

/-! ## A053129.P10256966148029096250

`A053136(n)+A053128(n+6)`
-/

namespace A053129.P10256966148029096250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053136 n + A053128 (n + 6)

end

end A053129.P10256966148029096250

namespace A053129

/-- `A053136(n)+A053128(n+6)` -/
def P10256966148029096250.Spec : Prop :=
  ∀ n, P10256966148029096250.a n = A053129 (n + 7)

end A053129

/-! ## A053129.P7621314974662075038

`A053130(n+8)-A053137(n)`
-/

namespace A053129.P7621314974662075038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053130 (n + 8) - A053137 n

end

end A053129.P7621314974662075038

namespace A053129

/-- `A053130(n+8)-A053137(n)` -/
def P7621314974662075038.Spec : Prop :=
  ∀ n, P7621314974662075038.a n = A053129 (n + 7)

end A053129

/-! ## A053129.P8219736132579690703

`A053131(n+9)-(A053138(n)+A053137(n))`
-/

namespace A053129.P8219736132579690703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053131 (n + 9) - (A053138 n + A053137 n)

end

end A053129.P8219736132579690703

namespace A053129

/-- `A053131(n+9)-(A053138(n)+A053137(n))` -/
def P8219736132579690703.Spec : Prop :=
  ∀ n, P8219736132579690703.a n = A053129 (n + 7)

end A053129

/-! ## A053129.P6697320636475762697

`∑[4*A006332(n+1)]`
-/

namespace A053129.P6697320636475762697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053129.P6697320636475762697

namespace A053129

/-- `∑[4*A006332(n+1)]` -/
def P6697320636475762697.Spec : Prop :=
  ∀ n, P6697320636475762697.a n = A053129 (n + 7)

end A053129

/-! ## A053129.P2026588496156806103

`A053136(n+1)-A053135(n+1)`
-/

namespace A053129.P2026588496156806103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053136 (n + 1) - A053135 (n + 1)

end

end A053129.P2026588496156806103

namespace A053129

/-- `A053136(n+1)-A053135(n+1)` -/
def P2026588496156806103.Spec : Prop :=
  ∀ n, P2026588496156806103.a n = A053129 (n + 7)

end A053129

/-! ## A053129.P9682524858288972005

`A053137(n+1)-(A053137(n)+A053136(n+1))`
-/

namespace A053129.P9682524858288972005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053137 (n + 1) - (A053137 n + A053136 (n + 1))

end

end A053129.P9682524858288972005

namespace A053129

/-- `A053137(n+1)-(A053137(n)+A053136(n+1))` -/
def P9682524858288972005.Spec : Prop :=
  ∀ n, P9682524858288972005.a n = A053129 (n + 7)

end A053129

/-! ## A053129.P17799497272171235118

`∑[A040977(Δ[n²])]`
-/

namespace A053129.P17799497272171235118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040977 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053129.P17799497272171235118

namespace A053129

/-- `∑[A040977(Δ[n²])]` -/
def P17799497272171235118.Spec : Prop :=
  ∀ n, P17799497272171235118.a n = A053129 (n + 7)

end A053129

/-! ## A053129.P15064106983911969174

`A000580(2*(n+4))`
-/

namespace A053129.P15064106983911969174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (2 * (n + 4))

end

end A053129.P15064106983911969174

namespace A053129

/-- `A000580(2*(n+4))` -/
def P15064106983911969174.Spec : Prop :=
  ∀ n, P15064106983911969174.a n = A053129 (n + 7)

end A053129

/-! ## A053129.P10117624982693891532

`8*A031164(2*n)`
-/

namespace A053129.P10117624982693891532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A031164 (2 * n)

end

end A053129.P10117624982693891532

namespace A053129

/-- `8*A031164(2*n)` -/
def P10117624982693891532.Spec : Prop :=
  ∀ n, P10117624982693891532.a n = A053129 (n + 7)

end A053129

/-! ## A053129.P7530482082086775888

`A166812(Δ[n²])+2`
-/

namespace A053129.P7530482082086775888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166812 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A053129.P7530482082086775888

namespace A053129

/-- `A166812(Δ[n²])+2` -/
def P7530482082086775888.Spec : Prop :=
  ∀ n, P7530482082086775888.a n = A053129 (n + 7)

end A053129

/-! ## A053129.P18116722342167167123

`2*A018211(Δ[n²])`
-/

namespace A053129.P18116722342167167123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018211 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053129.P18116722342167167123

namespace A053129

/-- `2*A018211(Δ[n²])` -/
def P18116722342167167123.Spec : Prop :=
  ∀ n, P18116722342167167123.a n = A053129 (n + 7)

end A053129

/-! ## A053129.P9218741485431749328

`2*A282083(Δ[n²])`
-/

namespace A053129.P9218741485431749328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282083 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053129.P9218741485431749328

namespace A053129

/-- `2*A282083(Δ[n²])` -/
def P9218741485431749328.Spec : Prop :=
  ∀ n, P9218741485431749328.a n = A053129 (n + 7)

end A053129

/-! ## A053129.P987205479939499107

`A124090(2*(n+4))+1`
-/

namespace A053129.P987205479939499107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124090 (2 * (n + 4)) + 1

end

end A053129.P987205479939499107

namespace A053129

/-- `A124090(2*(n+4))+1` -/
def P987205479939499107.Spec : Prop :=
  ∀ n, P987205479939499107.a n = A053129 (n + 7)

end A053129

/-! ## A053129.P15965582284627593477

`8*A362906(2*n+1)`
-/

namespace A053129.P15965582284627593477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A362906 (2 * n + 1)

end

end A053129.P15965582284627593477

namespace A053129

/-- `8*A362906(2*n+1)` -/
def P15965582284627593477.Spec : Prop :=
  ∀ n, P15965582284627593477.a n = A053129 (n + 7)

end A053129

/-! ## A053129.P2884531078216068612

`2*A032094(2*n+9)`
-/

namespace A053129.P2884531078216068612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032094 (2 * n + 9)

end

end A053129.P2884531078216068612

namespace A053129

/-- `2*A032094(2*n+9)` -/
def P2884531078216068612.Spec : Prop :=
  ∀ n, P2884531078216068612.a n = A053129 (n + 7)

end A053129

/-! ## A053129.P9533010415911862745

`A253944(2*n+7)/3`
-/

namespace A053129.P9533010415911862745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253944 (2 * n + 7) : ℚ) / 3

end

end A053129.P9533010415911862745

namespace A053129

/-- `A253944(2*n+7)/3` -/
def P9533010415911862745.Spec : Prop :=
  ∀ n, P9533010415911862745.a n = (A053129 (n + 7) : ℚ)

end A053129

/-!
# A053130: Binomial coefficients C(2*n-7,8).

The programs for A053130, the canonical program `A053130.P997293963147622231` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053130 has offset 8).

The definition of A053130 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*(n+8)-7, 8)` (program `A053130.P997293963147622231`, by `A053130.P997293963147622231.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053130.P997293963147622231

`C(2*(n+8)-7, 8)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053130

/-- `C(2*(n+8)-7, 8)` -/
def P997293963147622231.Spec : Prop :=
  ∀ n, (P997293963147622231.a n : ℤ) = A053130 (n + 8)

theorem P997293963147622231.correct : P997293963147622231.Spec := by
  intro n
  simp only [A053130, Nat.add_sub_cancel]

end A053130

/-! ## A053130.P6904351573390969996

`A053137(n)+A053129(n+7)`
-/

namespace A053130.P6904351573390969996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053137 n + A053129 (n + 7)

end

end A053130.P6904351573390969996

namespace A053130

/-- `A053137(n)+A053129(n+7)` -/
def P6904351573390969996.Spec : Prop :=
  ∀ n, P6904351573390969996.a n = A053130 (n + 8)

end A053130

/-! ## A053130.P2537769024885534038

`A053131(n+9)-A053138(n)`
-/

namespace A053130.P2537769024885534038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053131 (n + 9) - A053138 n

end

end A053130.P2537769024885534038

namespace A053130

/-- `A053131(n+9)-A053138(n)` -/
def P2537769024885534038.Spec : Prop :=
  ∀ n, P2537769024885534038.a n = A053130 (n + 8)

end A053130

/-! ## A053130.P7824394794353901075

`2*A053133(n+9)-A053138(n)`
-/

namespace A053130.P7824394794353901075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053133 (n + 9) - A053138 n

end

end A053130.P7824394794353901075

namespace A053130

/-- `2*A053133(n+9)-A053138(n)` -/
def P7824394794353901075.Spec : Prop :=
  ∀ n, P7824394794353901075.a n = A053130 (n + 8)

end A053130

/-! ## A053130.P12648339680876079040

`A053137(n+1)-A053136(n+1)`
-/

namespace A053130.P12648339680876079040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053137 (n + 1) - A053136 (n + 1)

end

end A053130.P12648339680876079040

namespace A053130

/-- `A053137(n+1)-A053136(n+1)` -/
def P12648339680876079040.Spec : Prop :=
  ∀ n, P12648339680876079040.a n = A053130 (n + 8)

end A053130

/-! ## A053130.P3993790576561776102

`A053138(n+1)-(A053138(n)+A053137(n+1))`
-/

namespace A053130.P3993790576561776102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053138 (n + 1) - (A053138 n + A053137 (n + 1))

end

end A053130.P3993790576561776102

namespace A053130

/-- `A053138(n+1)-(A053138(n)+A053137(n+1))` -/
def P3993790576561776102.Spec : Prop :=
  ∀ n, P3993790576561776102.a n = A053130 (n + 8)

end A053130

/-! ## A053130.P8127855974327706896

`∑[A050486(Δ[n²])]`
-/

namespace A053130.P8127855974327706896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050486 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053130.P8127855974327706896

namespace A053130

/-- `∑[A050486(Δ[n²])]` -/
def P8127855974327706896.Spec : Prop :=
  ∀ n, P8127855974327706896.a n = A053130 (n + 8)

end A053130

/-! ## A053130.P6023513027302604485

`A000581(2*n+9)`
-/

namespace A053130.P6023513027302604485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (2 * n + 9)

end

end A053130.P6023513027302604485

namespace A053130

/-- `A000581(2*n+9)` -/
def P6023513027302604485.Spec : Prop :=
  ∀ n, P6023513027302604485.a n = A053130 (n + 8)

end A053130

/-! ## A053130.P2033765253460393281

`A165618(Δ[n²])+1`
-/

namespace A053130.P2033765253460393281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165618 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A053130.P2033765253460393281

namespace A053130

/-- `A165618(Δ[n²])+1` -/
def P2033765253460393281.Spec : Prop :=
  ∀ n, P2033765253460393281.a n = A053130 (n + 8)

end A053130

/-! ## A053130.P10135265864459691385

`A166813(Δ[n²])+2`
-/

namespace A053130.P10135265864459691385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166813 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A053130.P10135265864459691385

namespace A053130

/-- `A166813(Δ[n²])+2` -/
def P10135265864459691385.Spec : Prop :=
  ∀ n, P10135265864459691385.a n = A053130 (n + 8)

end A053130

/-! ## A053130.P2471155904775893004

`A027768(2*(n+4))/(2*n+9)`
-/

namespace A053130.P2471155904775893004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027768 (2 * (n + 4)) : ℚ) / (2 * n + 9 : ℚ)

end

end A053130.P2471155904775893004

namespace A053130

/-- `A027768(2*(n+4))/(2*n+9)` -/
def P2471155904775893004.Spec : Prop :=
  ∀ n, P2471155904775893004.a n = (A053130 (n + 8) : ℚ)

end A053130

/-! ## A053130.P22822919127264861

`A053347(2*n+1)-A053137(n)`
-/

namespace A053130.P22822919127264861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053347 (2 * n + 1) - A053137 n

end

end A053130.P22822919127264861

namespace A053130

/-- `A053347(2*n+1)-A053137(n)` -/
def P22822919127264861.Spec : Prop :=
  ∀ n, P22822919127264861.a n = A053130 (n + 8)

end A053130

/-! ## A053130.P17310643932660735555

`A053137(n)+A000580(2*(n+4))`
-/

namespace A053130.P17310643932660735555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053137 n + A000580 (2 * (n + 4))

end

end A053130.P17310643932660735555

namespace A053130

/-- `A053137(n)+A000580(2*(n+4))` -/
def P17310643932660735555.Spec : Prop :=
  ∀ n, P17310643932660735555.a n = A053130 (n + 8)

end A053130

/-! ## A053130.P6483279456444352766

`A000582(2*(n+5))-A053138(n)`
-/

namespace A053130.P6483279456444352766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (2 * (n + 5)) - A053138 n

end

end A053130.P6483279456444352766

namespace A053130

/-- `A000582(2*(n+5))-A053138(n)` -/
def P6483279456444352766.Spec : Prop :=
  ∀ n, P6483279456444352766.a n = A053130 (n + 8)

end A053130

/-! ## A053130.P13621708049593676469

`A001780(2*n+1)+A001780(2*n)`
-/

namespace A053130.P13621708049593676469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001780 (2 * n + 1) + A001780 (2 * n)

end

end A053130.P13621708049593676469

namespace A053130

/-- `A001780(2*n+1)+A001780(2*n)` -/
def P13621708049593676469.Spec : Prop :=
  ∀ n, P13621708049593676469.a n = A053130 (n + 8)

end A053130

/-! ## A053130.P15635628717055025808

`A064058(2*n)+A002417(2*(n+1))`
-/

namespace A053130.P15635628717055025808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064058 (2 * n) + A002417 (2 * (n + 1))

end

end A053130.P15635628717055025808

namespace A053130

/-- `A064058(2*n)+A002417(2*(n+1))` -/
def P15635628717055025808.Spec : Prop :=
  ∀ n, P15635628717055025808.a n = A053130 (n + 8)

end A053130

/-! ## A053130.P928073937615893884

`A008492(2*n+1)-A008502(2*n)`
-/

namespace A053130.P928073937615893884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008492 (2 * n + 1) - A008502 (2 * n)

end

end A053130.P928073937615893884

namespace A053130

/-- `A008492(2*n+1)-A008502(2*n)` -/
def P928073937615893884.Spec : Prop :=
  ∀ n, P928073937615893884.a n = A053130 (n + 8)

end A053130

/-! ## A053130.P2018941882900854054

`A035927(2*n+1)-A035927(2*n)`
-/

namespace A053130.P2018941882900854054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035927 (2 * n + 1) - A035927 (2 * n)

end

end A053130.P2018941882900854054

namespace A053130

/-- `A035927(2*n+1)-A035927(2*n)` -/
def P2018941882900854054.Spec : Prop :=
  ∀ n, P2018941882900854054.a n = A053130 (n + 8)

end A053130

/-! ## A053130.P3967348948722956948

`A053131(n+9)-A000582(2*n+9)`
-/

namespace A053130.P3967348948722956948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053131 (n + 9) - A000582 (2 * n + 9)

end

end A053130.P3967348948722956948

namespace A053130

/-- `A053131(n+9)-A000582(2*n+9)` -/
def P3967348948722956948.Spec : Prop :=
  ∀ n, P3967348948722956948.a n = A053130 (n + 8)

end A053130

/-! ## A053130.P3692483236628975566

`∑[A053347(2*n+1)-A053347(2*n)]`
-/

namespace A053130.P3692483236628975566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053347 (2 * n + 1) - A053347 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053130.P3692483236628975566

namespace A053130

/-- `∑[A053347(2*n+1)-A053347(2*n)]` -/
def P3692483236628975566.Spec : Prop :=
  ∀ n, P3692483236628975566.a n = A053130 (n + 8)

end A053130

/-!
# A053131: Binomial coefficients C(2*n-8,9).

The programs for A053131, the canonical program `A053131.P9212215145901179382` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053131 has offset 9).

The definition of A053131 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*(n+9)-8, 9)` (program `A053131.P9212215145901179382`, by `A053131.P9212215145901179382.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053131.P9212215145901179382

`C(2*(n+9)-8, 9)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053131

/-- `C(2*(n+9)-8, 9)` -/
def P9212215145901179382.Spec : Prop :=
  ∀ n, (P9212215145901179382.a n : ℤ) = A053131 (n + 9)

theorem P9212215145901179382.correct : P9212215145901179382.Spec := by
  intro n
  simp only [A053131, Nat.add_sub_cancel]

end A053131

/-! ## A053131.P13338360233429558195

`2*A053133(n+9)`
-/

namespace A053131.P13338360233429558195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053133 (n + 9)

end

end A053131.P13338360233429558195

namespace A053131

/-- `2*A053133(n+9)` -/
def P13338360233429558195.Spec : Prop :=
  ∀ n, P13338360233429558195.a n = A053131 (n + 9)

end A053131

/-! ## A053131.P1749143007479992290

`A196790(n)-A196789(n)`
-/

namespace A053131.P1749143007479992290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196790 (n + 10) - A196789 n

end

end A053131.P1749143007479992290

namespace A053131

/-- `A196790(n)-A196789(n)` -/
def P1749143007479992290.Spec : Prop :=
  ∀ n, P1749143007479992290.a n = A053131 (n + 9)

end A053131

/-! ## A053131.P2616260006748584531

`A053138(n)+A053130(n+8)`
-/

namespace A053131.P2616260006748584531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053138 n + A053130 (n + 8)

end

end A053131.P2616260006748584531

namespace A053131

/-- `A053138(n)+A053130(n+8)` -/
def P2616260006748584531.Spec : Prop :=
  ∀ n, P2616260006748584531.a n = A053131 (n + 9)

end A053131

/-! ## A053131.P1134844082298900163

`A053138(n+1)-A053137(n+1)`
-/

namespace A053131.P1134844082298900163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053138 (n + 1) - A053137 (n + 1)

end

end A053131.P1134844082298900163

namespace A053131

/-- `A053138(n+1)-A053137(n+1)` -/
def P1134844082298900163.Spec : Prop :=
  ∀ n, P1134844082298900163.a n = A053131 (n + 9)

end A053131

/-! ## A053131.P3232163452279149127

`A196789(n+1)-(A196789(n)+A053138(n+1))`
-/

namespace A053131.P3232163452279149127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196789 (n + 1) - (A196789 n + A053138 (n + 1))

end

end A053131.P3232163452279149127

namespace A053131

/-- `A196789(n+1)-(A196789(n)+A053138(n+1))` -/
def P3232163452279149127.Spec : Prop :=
  ∀ n, P3232163452279149127.a n = A053131 (n + 9)

end A053131

/-! ## A053131.P10997987809034317242

`∑[A053347(Δ[n²])]`
-/

namespace A053131.P10997987809034317242
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053347 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053131.P10997987809034317242

namespace A053131

/-- `∑[A053347(Δ[n²])]` -/
def P10997987809034317242.Spec : Prop :=
  ∀ n, P10997987809034317242.a n = A053131 (n + 9)

end A053131

/-! ## A053131.P3371076644628470836

`A000582(2*(n+5))`
-/

namespace A053131.P3371076644628470836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (2 * (n + 5))

end

end A053131.P3371076644628470836

namespace A053131

/-- `A000582(2*(n+5))` -/
def P3371076644628470836.Spec : Prop :=
  ∀ n, P3371076644628470836.a n = A053131 (n + 9)

end A053131

/-! ## A053131.P9664110059775794570

`A035927(Δ[n²])+1`
-/

namespace A053131.P9664110059775794570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035927 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A053131.P9664110059775794570

namespace A053131

/-- `A035927(Δ[n²])+1` -/
def P9664110059775794570.Spec : Prop :=
  ∀ n, P9664110059775794570.a n = A053131 (n + 9)

end A053131

/-! ## A053131.P1017987725602730911

`2*A018213(Δ[n²])`
-/

namespace A053131.P1017987725602730911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018213 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053131.P1017987725602730911

namespace A053131

/-- `2*A018213(Δ[n²])` -/
def P1017987725602730911.Spec : Prop :=
  ∀ n, P1017987725602730911.a n = A053131 (n + 9)

end A053131

/-! ## A053131.P2011272209496411906

`2*A282077(Δ[n²])`
-/

namespace A053131.P2011272209496411906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282077 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053131.P2011272209496411906

namespace A053131

/-- `2*A282077(Δ[n²])` -/
def P2011272209496411906.Spec : Prop :=
  ∀ n, P2011272209496411906.a n = A053131 (n + 9)

end A053131

/-! ## A053131.P17523120319798445589

`2*A282085(Δ[n²])`
-/

namespace A053131.P17523120319798445589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282085 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053131.P17523120319798445589

namespace A053131

/-- `2*A282085(Δ[n²])` -/
def P17523120319798445589.Spec : Prop :=
  ∀ n, P17523120319798445589.a n = A053131 (n + 9)

end A053131

/-! ## A053131.P12874051893955452341

`∑[∑[A216938(Δ[n²])]]`
-/

namespace A053131.P12874051893955452341
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216938 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053131.P12874051893955452341

namespace A053131

/-- `∑[∑[A216938(Δ[n²])]]` -/
def P12874051893955452341.Spec : Prop :=
  ∀ n, P12874051893955452341.a n = A053131 (n + 9)

end A053131

/-! ## A053131.P14052169421535333210

`record[A000582(xor(1, n)+9)]`
-/

namespace A053131.P14052169421535333210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (Nat.xor 1 n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053131.P14052169421535333210

namespace A053131

/-- `record[A000582(xor(1, n)+9)]` -/
def P14052169421535333210.Spec : Prop :=
  ∀ n, P14052169421535333210.a n = A053131 (n + 9)

end A053131

/-! ## A053131.P15694139833157037982

`A027769(2*n+9)/(2*(n+5))`
-/

namespace A053131.P15694139833157037982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027769 (2 * n + 9) : ℚ) / (2 * (n + 5) : ℚ)

end

end A053131.P15694139833157037982

namespace A053131

/-- `A027769(2*n+9)/(2*(n+5))` -/
def P15694139833157037982.Spec : Prop :=
  ∀ n, P15694139833157037982.a n = (A053131 (n + 9) : ℚ)

end A053131

/-! ## A053131.P7638041160761387839

`2*∩[A018213(n), A282077(n)]`
-/

namespace A053131.P7638041160761387839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018213 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282077 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053131.P7638041160761387839

namespace A053131

/-- `2*∩[A018213(n), A282077(n)]` -/
def P7638041160761387839.Spec : Prop :=
  ∀ n, (P7638041160761387839.a n : ℤ) = A053131 (n + 9)

end A053131

/-! ## A053131.P4059136074256627958

`A053138(n)+A000581(2*n+9)`
-/

namespace A053131.P4059136074256627958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053138 n + A000581 (2 * n + 9)

end

end A053131.P4059136074256627958

namespace A053131

/-- `A053138(n)+A000581(2*n+9)` -/
def P4059136074256627958.Spec : Prop :=
  ∀ n, P4059136074256627958.a n = A053131 (n + 9)

end A053131

/-! ## A053131.P15008551592564302212

`A001781(2*n+1)+A001781(2*n)`
-/

namespace A053131.P15008551592564302212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001781 (2 * n + 1) + A001781 (2 * n)

end

end A053131.P15008551592564302212

namespace A053131

/-- `A001781(2*n+1)+A001781(2*n)` -/
def P15008551592564302212.Spec : Prop :=
  ∀ n, P15008551592564302212.a n = A053131 (n + 9)

end A053131

/-! ## A053131.P14006532170932262476

`A001287(2*n+1)-A001287(2*n)`
-/

namespace A053131.P14006532170932262476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (2 * n + 1 + 10) - A001287 (2 * n + 10)

end

end A053131.P14006532170932262476

namespace A053131

/-- `A001287(2*n+1)-A001287(2*n)` -/
def P14006532170932262476.Spec : Prop :=
  ∀ n, P14006532170932262476.a n = A053131 (n + 9)

end A053131

/-! ## A053131.P10424003338965128419

`A008493(2*n+1)-A008503(2*n)`
-/

namespace A053131.P10424003338965128419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008493 (2 * n + 1) - A008503 (2 * n)

end

end A053131.P10424003338965128419

namespace A053131

/-- `A008493(2*n+1)-A008503(2*n)` -/
def P10424003338965128419.Spec : Prop :=
  ∀ n, P10424003338965128419.a n = A053131 (n + 9)

end A053131

/-!
# A053132: One half of binomial coefficients C(2*n-4,5).

The programs for A053132, the canonical program `A053132.P14268853653109633787` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053132 has offset 5).

The definition of A053132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053132.P11769629544043781159

`C(2*(n+5)-4, 5)/2`
-/

namespace A053132.P11769629544043781159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((2 * (n + 5) : ℤ) - 4).toNat 5 : ℚ) / 2

end

end A053132.P11769629544043781159

namespace A053132

/-- `C(2*(n+5)-4, 5)/2` -/
def P11769629544043781159.Spec : Prop :=
  ∀ n, P11769629544043781159.a n = (A053132 (n + 5) : ℚ)

end A053132

/-! ## A053132.P14268853653109633787

`A053127(n+5)/2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053132

/-- `A053127(n+5)/2` -/
def P14268853653109633787.Spec : Prop :=
  ∀ n, P14268853653109633787.a n = (A053132 (n + 5) : ℚ)

end A053132

/-! ## A053132.P9861453400884471468

`∑[∑[∑[∑[16*n]+3]]]`
-/

namespace A053132.P9861453400884471468
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053132.P9861453400884471468

namespace A053132

/-- `∑[∑[∑[∑[16*n]+3]]]` -/
def P9861453400884471468.Spec : Prop :=
  ∀ n, (P9861453400884471468.a n : ℤ) = A053132 (n + 5)

end A053132

/-! ## A053132.P10901251189299587000

`A086755(n)+A033455(n+1)`
-/

namespace A053132.P10901251189299587000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086755 n + A033455 (n + 1)

end

end A053132.P10901251189299587000

namespace A053132

/-- `A086755(n)+A033455(n+1)` -/
def P10901251189299587000.Spec : Prop :=
  ∀ n, P10901251189299587000.a n = A053132 (n + 5)

end A053132

/-! ## A053132.P7335084572092165926

`A271870(n)+2*A002417(n+1)`
-/

namespace A053132.P7335084572092165926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271870 n + 2 * A002417 (n + 1)

end

end A053132.P7335084572092165926

namespace A053132

/-- `A271870(n)+2*A002417(n+1)` -/
def P7335084572092165926.Spec : Prop :=
  ∀ n, P7335084572092165926.a n = A053132 (n + 5)

end A053132

/-! ## A053132.P2180053479365635510

`(A157706(n+2)-A108673(n))/2`
-/

namespace A053132.P2180053479365635510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157706 (n + 2) - A108673 n : ℚ) / 2

end

end A053132.P2180053479365635510

namespace A053132

/-- `(A157706(n+2)-A108673(n))/2` -/
def P2180053479365635510.Spec : Prop :=
  ∀ n, P2180053479365635510.a n = (A053132 (n + 5) : ℚ)

end A053132

/-! ## A053132.P11784516394950164125

`(A053126(n+4)+A002299(n))/2`
-/

namespace A053132.P11784516394950164125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053126 (n + 4) + A002299 n : ℚ) / 2

end

end A053132.P11784516394950164125

namespace A053132

/-- `(A053126(n+4)+A002299(n))/2` -/
def P11784516394950164125.Spec : Prop :=
  ∀ n, P11784516394950164125.a n = (A053132 (n + 5) : ℚ)

end A053132

/-! ## A053132.P6972811396746980075

`(A053128(n+6)-A053135(n))/2`
-/

namespace A053132.P6972811396746980075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053128 (n + 6) - A053135 n : ℚ) / 2

end

end A053132.P6972811396746980075

namespace A053132

/-- `(A053128(n+6)-A053135(n))/2` -/
def P6972811396746980075.Spec : Prop :=
  ∀ n, P6972811396746980075.a n = (A053132 (n + 5) : ℚ)

end A053132

/-! ## A053132.P16920444566315320299

`A059599(n)+A271567(n)-A002417(n+1)`
-/

namespace A053132.P16920444566315320299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059599 n + (A271567 n - A002417 (n + 1))

end

end A053132.P16920444566315320299

namespace A053132

/-- `A059599(n)+A271567(n)-A002417(n+1)` -/
def P16920444566315320299.Spec : Prop :=
  ∀ n, P16920444566315320299.a n = A053132 (n + 5)

end A053132

/-! ## A053132.P6181487891384924414

`3*A006332(n+1)/(n+2)`
-/

namespace A053132.P6181487891384924414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A006332 (n + 1) : ℚ) / (n + 2 : ℚ))

end

end A053132.P6181487891384924414

namespace A053132

/-- `3*A006332(n+1)/(n+2)` -/
def P6181487891384924414.Spec : Prop :=
  ∀ n, P6181487891384924414.a n = (A053132 (n + 5) : ℚ)

end A053132

/-! ## A053132.P16844338541693286871

`(n+1)*A053134(n+1)/5`
-/

namespace A053132.P16844338541693286871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A053134 (n + 1) : ℚ) / 5

end

end A053132.P16844338541693286871

namespace A053132

/-- `(n+1)*A053134(n+1)/5` -/
def P16844338541693286871.Spec : Prop :=
  ∀ n, P16844338541693286871.a n = (A053132 (n + 5) : ℚ)

end A053132

/-! ## A053132.P5790333892673143331

`A213562(n+2)-A213552(n+2)`
-/

namespace A053132.P5790333892673143331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213562 (n + 2) - A213552 (n + 2)

end

end A053132.P5790333892673143331

namespace A053132

/-- `A213562(n+2)-A213552(n+2)` -/
def P5790333892673143331.Spec : Prop :=
  ∀ n, P5790333892673143331.a n = A053132 (n + 5)

end A053132

/-! ## A053132.P5610659387099230137

`(A002299(n+1)-A053134(n+1))/2`
-/

namespace A053132.P5610659387099230137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002299 (n + 1) - A053134 (n + 1) : ℚ) / 2

end

end A053132.P5610659387099230137

namespace A053132

/-- `(A002299(n+1)-A053134(n+1))/2` -/
def P5610659387099230137.Spec : Prop :=
  ∀ n, P5610659387099230137.a n = (A053132 (n + 5) : ℚ)

end A053132

/-! ## A053132.P6957630948826664175

`A277229(n+1)+A277229(n+1)+A002417(n+1)`
-/

namespace A053132.P6957630948826664175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277229 (n + 1) + (A277229 (n + 1) + A002417 (n + 1))

end

end A053132.P6957630948826664175

namespace A053132

/-- `A277229(n+1)+A277229(n+1)+A002417(n+1)` -/
def P6957630948826664175.Spec : Prop :=
  ∀ n, P6957630948826664175.a n = A053132 (n + 5)

end A053132

/-! ## A053132.P9020588112762665887

`A005995(Δ[n²])`
-/

namespace A053132.P9020588112762665887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005995 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053132.P9020588112762665887

namespace A053132

/-- `A005995(Δ[n²])` -/
def P9020588112762665887.Spec : Prop :=
  ∀ n, P9020588112762665887.a n = A053132 (n + 5)

end A053132

/-! ## A053132.P9760944372950026076

`A282081(Δ[n²])`
-/

namespace A053132.P9760944372950026076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282081 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053132.P9760944372950026076

namespace A053132

/-- `A282081(Δ[n²])` -/
def P9760944372950026076.Spec : Prop :=
  ∀ n, P9760944372950026076.a n = A053132 (n + 5)

end A053132

/-! ## A053132.P5582459025315849418

`A032092(2*n+7)`
-/

namespace A053132.P5582459025315849418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032092 (2 * n + 7)

end

end A053132.P5582459025315849418

namespace A053132

/-- `A032092(2*n+7)` -/
def P5582459025315849418.Spec : Prop :=
  ∀ n, P5582459025315849418.a n = A053132 (n + 5)

end A053132

/-! ## A053132.P15435327917578849536

`(A062988(2*n)+1)/2`
-/

namespace A053132.P15435327917578849536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062988 (2 * n) + 1 : ℚ) / 2

end

end A053132.P15435327917578849536

namespace A053132

/-- `(A062988(2*n)+1)/2` -/
def P15435327917578849536.Spec : Prop :=
  ∀ n, P15435327917578849536.a n = (A053132 (n + 5) : ℚ)

end A053132

/-! ## A053132.P15798805891662674087

`A166808(2*n+1)/2+1`
-/

namespace A053132.P15798805891662674087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166808 (2 * n + 1) : ℚ) / 2 + 1

end

end A053132.P15798805891662674087

namespace A053132

/-- `A166808(2*n+1)/2+1` -/
def P15798805891662674087.Spec : Prop :=
  ∀ n, P15798805891662674087.a n = (A053132 (n + 5) : ℚ)

end A053132

/-! ## A053132.P10043704884821078594

`lcm((-1)^n, A005995(2*n+1))`
-/

namespace A053132.P10043704884821078594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A005995 (2 * n + 1))

end

end A053132.P10043704884821078594

namespace A053132

/-- `lcm((-1)^n, A005995(2*n+1))` -/
def P10043704884821078594.Spec : Prop :=
  ∀ n, (P10043704884821078594.a n : ℤ) = A053132 (n + 5)

end A053132

/-!
# A053133: One half of binomial coefficients binomial(2*n-8,9).

The programs for A053133, the canonical program `A053133.P7108646943737555374` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053133 has offset 9).

The definition of A053133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053133.P10511368774610981512

`C(2*(n+9)-8, 9)/2`
-/

namespace A053133.P10511368774610981512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((2 * (n + 9) : ℤ) - 8).toNat 9 : ℚ) / 2

end

end A053133.P10511368774610981512

namespace A053133

/-- `C(2*(n+9)-8, 9)/2` -/
def P10511368774610981512.Spec : Prop :=
  ∀ n, P10511368774610981512.a n = (A053133 (n + 9) : ℚ)

end A053133

/-! ## A053133.P7108646943737555374

`A053131(n+9)/2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053133

/-- `A053131(n+9)/2` -/
def P7108646943737555374.Spec : Prop :=
  ∀ n, P7108646943737555374.a n = (A053133 (n + 9) : ℚ)

end A053133

/-! ## A053133.P16108465466501472441

`(A196790(n)-A196789(n))/2`
-/

namespace A053133.P16108465466501472441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196790 (n + 10) - A196789 n : ℚ) / 2

end

end A053133.P16108465466501472441

namespace A053133

/-- `(A196790(n)-A196789(n))/2` -/
def P16108465466501472441.Spec : Prop :=
  ∀ n, P16108465466501472441.a n = (A053133 (n + 9) : ℚ)

end A053133

/-! ## A053133.P7216054958881159209

`(A053138(n)+A053130(n+8))/2`
-/

namespace A053133.P7216054958881159209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053138 n + A053130 (n + 8) : ℚ) / 2

end

end A053133.P7216054958881159209

namespace A053133

/-- `(A053138(n)+A053130(n+8))/2` -/
def P7216054958881159209.Spec : Prop :=
  ∀ n, P7216054958881159209.a n = (A053133 (n + 9) : ℚ)

end A053133

/-! ## A053133.P2458259842860591091

`A053126(n+4)/A002299(n)*A196789(n)`
-/

namespace A053133.P2458259842860591091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053126 (n + 4) : ℚ) / (A002299 n : ℚ) * (A196789 n : ℚ)

end

end A053133.P2458259842860591091

namespace A053133

/-- `A053126(n+4)/A002299(n)*A196789(n)` -/
def P2458259842860591091.Spec : Prop :=
  ∀ n, P2458259842860591091.a n = (A053133 (n + 9) : ℚ)

end A053133

/-! ## A053133.P3743676341993314102

`(A053138(n+1)-A053137(n+1))/2`
-/

namespace A053133.P3743676341993314102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053138 (n + 1) - A053137 (n + 1) : ℚ) / 2

end

end A053133.P3743676341993314102

namespace A053133

/-- `(A053138(n+1)-A053137(n+1))/2` -/
def P3743676341993314102.Spec : Prop :=
  ∀ n, P3743676341993314102.a n = (A053133 (n + 9) : ℚ)

end A053133

/-! ## A053133.P3340925189012987252

`A053137(n+1)/A000581(n+9)*A000582(n+9)`
-/

namespace A053133.P3340925189012987252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053137 (n + 1) : ℚ) / (A000581 (n + 9) : ℚ) * (A000582 (n + 9) : ℚ)

end

end A053133.P3340925189012987252

namespace A053133

/-- `A053137(n+1)/A000581(n+9)*A000582(n+9)` -/
def P3340925189012987252.Spec : Prop :=
  ∀ n, P3340925189012987252.a n = (A053133 (n + 9) : ℚ)

end A053133

/-! ## A053133.P1394422338510020714

`A018213(Δ[n²])`
-/

namespace A053133.P1394422338510020714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018213 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053133.P1394422338510020714

namespace A053133

/-- `A018213(Δ[n²])` -/
def P1394422338510020714.Spec : Prop :=
  ∀ n, P1394422338510020714.a n = A053133 (n + 9)

end A053133

/-! ## A053133.P9028808061506722931

`A282077(Δ[n²])`
-/

namespace A053133.P9028808061506722931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282077 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053133.P9028808061506722931

namespace A053133

/-- `A282077(Δ[n²])` -/
def P9028808061506722931.Spec : Prop :=
  ∀ n, P9028808061506722931.a n = A053133 (n + 9)

end A053133

/-! ## A053133.P10321490457177921857

`A282085(Δ[n²])`
-/

namespace A053133.P10321490457177921857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282085 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053133.P10321490457177921857

namespace A053133

/-- `A282085(Δ[n²])` -/
def P10321490457177921857.Spec : Prop :=
  ∀ n, P10321490457177921857.a n = A053133 (n + 9)

end A053133

/-! ## A053133.P5997987587855552150

`∑[A053347(Δ[n²])/2]`
-/

namespace A053133.P5997987587855552150
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053347 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053133.P5997987587855552150

namespace A053133

/-- `∑[A053347(Δ[n²])/2]` -/
def P5997987587855552150.Spec : Prop :=
  ∀ n, P5997987587855552150.a n = (A053133 (n + 9) : ℚ)

end A053133

/-! ## A053133.P17115722800349334288

`A000582(2*(n+5))/2`
-/

namespace A053133.P17115722800349334288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000582 (2 * (n + 5)) : ℚ) / 2

end

end A053133.P17115722800349334288

namespace A053133

/-- `A000582(2*(n+5))/2` -/
def P17115722800349334288.Spec : Prop :=
  ∀ n, P17115722800349334288.a n = (A053133 (n + 9) : ℚ)

end A053133

/-! ## A053133.P12733212523069499012

`(A035927(2*n+1)+1)/2`
-/

namespace A053133.P12733212523069499012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035927 (2 * n + 1) + 1 : ℚ) / 2

end

end A053133.P12733212523069499012

namespace A053133

/-- `(A035927(2*n+1)+1)/2` -/
def P12733212523069499012.Spec : Prop :=
  ∀ n, P12733212523069499012.a n = (A053133 (n + 9) : ℚ)

end A053133

/-! ## A053133.P4153405165317777979

`∑[∑[A216938(2*n+1)/2]]`
-/

namespace A053133.P4153405165317777979
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216938 (2 * n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053133.P4153405165317777979

namespace A053133

/-- `∑[∑[A216938(2*n+1)/2]]` -/
def P4153405165317777979.Spec : Prop :=
  ∀ n, P4153405165317777979.a n = (A053133 (n + 9) : ℚ)

end A053133

/-! ## A053133.P17335407311613656058

`A027769(2*n+9)/(2*2*(n+5))`
-/

namespace A053133.P17335407311613656058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027769 (2 * n + 9) : ℚ) / (2 * (2 * (n + 5)) : ℚ)

end

end A053133.P17335407311613656058

namespace A053133

/-- `A027769(2*n+9)/(2*2*(n+5))` -/
def P17335407311613656058.Spec : Prop :=
  ∀ n, P17335407311613656058.a n = (A053133 (n + 9) : ℚ)

end A053133

/-! ## A053133.P1027222473592059800

`∩[A018213(n), A282077(n)]`
-/

namespace A053133.P1027222473592059800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018213 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282077 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053133.P1027222473592059800

namespace A053133

/-- `∩[A018213(n), A282077(n)]` -/
def P1027222473592059800.Spec : Prop :=
  ∀ n, (P1027222473592059800.a n : ℤ) = A053133 (n + 9)

end A053133

/-! ## A053133.P17474675912058534074

`A018213(2*n+1)+A000007(n+1)`
-/

namespace A053133.P17474675912058534074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018213 (2 * n + 1) + A000007 (n + 1)

end

end A053133.P17474675912058534074

namespace A053133

/-- `A018213(2*n+1)+A000007(n+1)` -/
def P17474675912058534074.Spec : Prop :=
  ∀ n, P17474675912058534074.a n = A053133 (n + 9)

end A053133

/-! ## A053133.P8841910153892814941

`A282085(2*n)+A282084(2*n+1)`
-/

namespace A053133.P8841910153892814941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282085 (2 * n) + A282084 (2 * n + 1)

end

end A053133.P8841910153892814941

namespace A053133

/-- `A282085(2*n)+A282084(2*n+1)` -/
def P8841910153892814941.Spec : Prop :=
  ∀ n, P8841910153892814941.a n = A053133 (n + 9)

end A053133

/-! ## A053133.P15262123592611395153

`A018214(2*n+1)-A018214(2*n)`
-/

namespace A053133.P15262123592611395153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018214 (2 * n + 1) - A018214 (2 * n)

end

end A053133.P15262123592611395153

namespace A053133

/-- `A018214(2*n+1)-A018214(2*n)` -/
def P15262123592611395153.Spec : Prop :=
  ∀ n, P15262123592611395153.a n = A053133 (n + 9)

end A053133

/-! ## A053133.P5386811170456100040

`A282078(2*n+1)-A282078(2*n)`
-/

namespace A053133.P5386811170456100040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282078 (2 * n + 1) - A282078 (2 * n)

end

end A053133.P5386811170456100040

namespace A053133

/-- `A282078(2*n+1)-A282078(2*n)` -/
def P5386811170456100040.Spec : Prop :=
  ∀ n, P5386811170456100040.a n = A053133 (n + 9)

end A053133

/-!
# A053134: Binomial coefficients C(2*n+4,4).

The programs for A053134, the canonical program `A053134.P2509470964205377793` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053134 has offset 0).

The definition of A053134 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n+4, 4)` (program `A053134.P2509470964205377793`, by `A053134.P2509470964205377793.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053134.P2509470964205377793

`C(2*n+4, 4)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053134

/-- `C(2*n+4, 4)` -/
def P2509470964205377793.Spec : Prop :=
  ∀ n, (P2509470964205377793.a n : ℤ) = A053134 n

theorem P2509470964205377793.correct : P2509470964205377793.Spec := by
  intro n
  simp only [A053134]

end A053134

/-! ## A053134.P8036082128890554023

`1/6*(n+1)*(n+2)*(2*n+1)*(2*n+3)`
-/

namespace A053134.P8036082128890554023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * (n + 1 : ℚ) * (n + 2 : ℚ) * (2 * n + 1 : ℚ) * (2 * n + 3 : ℚ)

end

end A053134.P8036082128890554023

namespace A053134

/-- `1/6*(n+1)*(n+2)*(2*n+1)*(2*n+3)` -/
def P8036082128890554023.Spec : Prop :=
  ∀ n, P8036082128890554023.a n = (A053134 n : ℚ)

theorem P8036082128890554023.correct : P8036082128890554023.Spec := by
  intro n
  simp only [A053134, Nat.add_sub_cancel, A053134.P8036082128890554023.a, A053134.P2509470964205377793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053134

/-! ## A053134.P12440825079663511612

`A000332(2*n+4)`
-/

namespace A053134.P12440825079663511612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (2 * n + 4)

end

end A053134.P12440825079663511612

namespace A053134

/-- `A000332(2*n+4)` -/
def P12440825079663511612.Spec : Prop :=
  ∀ n, P12440825079663511612.a n = A053134 n

end A053134

/-! ## A053134.P6516552091262906369

`record[C(n+1, 4)^(n%2)]`
-/

namespace A053134.P6516552091262906369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 4 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053134.P6516552091262906369

namespace A053134

/-- `record[C(n+1, 4)^(n%2)]` -/
def P6516552091262906369.Spec : Prop :=
  ∀ n, (P6516552091262906369.a n : ℤ) = A053134 n

end A053134

/-! ## A053134.P12823731473084828028

`record[C(n+1, 4)^and(1, n)]`
-/

namespace A053134.P12823731473084828028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 4 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053134.P12823731473084828028

namespace A053134

/-- `record[C(n+1, 4)^and(1, n)]` -/
def P12823731473084828028.Spec : Prop :=
  ∀ n, (P12823731473084828028.a n : ℤ) = A053134 n

end A053134

/-! ## A053134.P2773223700074778146

`record[gcd(and(1, n)^n, C(n, 4))]`
-/

namespace A053134.P2773223700074778146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.land 1 n ^ n) (Nat.choose n 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053134.P2773223700074778146

namespace A053134

/-- `record[gcd(and(1, n)^n, C(n, 4))]` -/
def P2773223700074778146.Spec : Prop :=
  ∀ n, (P2773223700074778146.a n : ℤ) = A053134 n

end A053134

/-! ## A053134.P11864645977667365373

`C(C(n+3+n, 2), 2)/3`
-/

namespace A053134.P11864645977667365373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.choose (n + 3 + n) 2) 2 : ℚ) / 3

end

end A053134.P11864645977667365373

namespace A053134

/-- `C(C(n+3+n, 2), 2)/3` -/
def P11864645977667365373.Spec : Prop :=
  ∀ n, P11864645977667365373.a n = (A053134 n : ℚ)

theorem P11864645977667365373.correct : P11864645977667365373.Spec := by
  intro n
  simp only [A053134, Nat.add_sub_cancel, A053134.P11864645977667365373.a, A053134.P2509470964205377793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053134

/-! ## A053134.P17830901131731804656

`∑[∑[∑[a(n-1)+16]]]` with `a(0)=1, a(1)=12`
-/

namespace A053134.P17830901131731804656
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f3 =>
  f3 (n - 1) + 16

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053134.P17830901131731804656

namespace A053134

/-- `∑[∑[∑[a(n-1)+16]]]` -/
def P17830901131731804656.Spec : Prop :=
  ∀ n, (P17830901131731804656.a n : ℤ) = A053134 n

end A053134

/-! ## A053134.P13981395314172225634

`∑[∑[∑[ogf((1+10x+5x^2)/(1-2x+x^2))]]]`
-/

namespace A053134.P13981395314172225634
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, 5] [1, -2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053134.P13981395314172225634

namespace A053134

/-- `∑[∑[∑[ogf((1+10x+5x^2)/(1-2x+x^2))]]]` -/
def P13981395314172225634.Spec : Prop :=
  ∀ n, P13981395314172225634.a n = A053134 n

end A053134

/-! ## A053134.P2075562472448176584

`∑[∑[lcm(2*n+1, 4*n)+1]]`
-/

namespace A053134.P2075562472448176584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (4 * n) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053134.P2075562472448176584

namespace A053134

/-- `∑[∑[lcm(2*n+1, 4*n)+1]]` -/
def P2075562472448176584.Spec : Prop :=
  ∀ n, (P2075562472448176584.a n : ℤ) = A053134 n

end A053134

/-! ## A053134.P5624048691604271824

`and(1, 2*n)+(2*n+1)*∑[(n+1)²]`
-/

namespace A053134.P5624048691604271824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (2 * n) + (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053134.P5624048691604271824

namespace A053134

/-- `and(1, 2*n)+(2*n+1)*∑[(n+1)²]` -/
def P5624048691604271824.Spec : Prop :=
  ∀ n, (P5624048691604271824.a n : ℤ) = A053134 n

end A053134

/-! ## A053134.P5395943471425235912

`(n+2)*∑[(2*n+1)²]/gcd(2, 2*n)`
-/

namespace A053134.P5395943471425235912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / (Nat.gcd 2 (2 * n) : ℚ)

end

end A053134.P5395943471425235912

namespace A053134

/-- `(n+2)*∑[(2*n+1)²]/gcd(2, 2*n)` -/
def P5395943471425235912.Spec : Prop :=
  ∀ n, P5395943471425235912.a n = (A053134 n : ℚ)

end A053134

/-! ## A053134.P5580267954847903568

`(2*n+1)*∑[∑[2*n+1]]-and(1, 2*n)`
-/

namespace A053134.P5580267954847903568
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (Nat.land 1 (2 * n) : ℤ)

end

end A053134.P5580267954847903568

namespace A053134

/-- `(2*n+1)*∑[∑[2*n+1]]-and(1, 2*n)` -/
def P5580267954847903568.Spec : Prop :=
  ∀ n, P5580267954847903568.a n = A053134 n

end A053134

/-! ## A053134.P11009078869636980881

`(2*n+1)*∑[∑[2*n+1]]/and(1, 2*n+1)`
-/

namespace A053134.P11009078869636980881
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / (Nat.land 1 (2 * n + 1) : ℚ)

end

end A053134.P11009078869636980881

namespace A053134

/-- `(2*n+1)*∑[∑[2*n+1]]/and(1, 2*n+1)` -/
def P11009078869636980881.Spec : Prop :=
  ∀ n, P11009078869636980881.a n = (A053134 n : ℚ)

end A053134

/-! ## A053134.P1645968591333774583

`∑[∑[A102083(n)]]`
-/

namespace A053134.P1645968591333774583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102083 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053134.P1645968591333774583

namespace A053134

/-- `∑[∑[A102083(n)]]` -/
def P1645968591333774583.Spec : Prop :=
  ∀ n, P1645968591333774583.a n = A053134 n

end A053134

/-! ## A053134.P11928506911984219482

`∑[A100157(n+1)]`
-/

namespace A053134.P11928506911984219482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053134.P11928506911984219482

namespace A053134

/-- `∑[A100157(n+1)]` -/
def P11928506911984219482.Spec : Prop :=
  ∀ n, P11928506911984219482.a n = A053134 n

end A053134

/-! ## A053134.P609067358944214043

`A062346(n+2)/3`
-/

namespace A053134.P609067358944214043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062346 (n + 2) : ℚ) / 3

end

end A053134.P609067358944214043

namespace A053134

/-- `A062346(n+2)/3` -/
def P609067358944214043.Spec : Prop :=
  ∀ n, P609067358944214043.a n = (A053134 n : ℚ)

end A053134

/-! ## A053134.P16346997559316824516

`∑[∑[A033586(n)+1]]`
-/

namespace A053134.P16346997559316824516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033586 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053134.P16346997559316824516

namespace A053134

/-- `∑[∑[A033586(n)+1]]` -/
def P16346997559316824516.Spec : Prop :=
  ∀ n, P16346997559316824516.a n = A053134 n

end A053134

/-! ## A053134.P16493351459037082040

`∑[∑[A236267(n)+n]]`
-/

namespace A053134.P16493351459037082040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236267 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053134.P16493351459037082040

namespace A053134

/-- `∑[∑[A236267(n)+n]]` -/
def P16493351459037082040.Spec : Prop :=
  ∀ n, P16493351459037082040.a n = A053134 n

end A053134

/-! ## A053134.P15779749155858175918

`A302709(n)+Δ[n²]²`
-/

namespace A053134.P15779749155858175918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302709 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A053134.P15779749155858175918

namespace A053134

/-- `A302709(n)+Δ[n²]²` -/
def P15779749155858175918.Spec : Prop :=
  ∀ n, P15779749155858175918.a n = A053134 n

theorem P15779749155858175918.correct : P15779749155858175918.Spec := by
  intro n
  simp only [A053134, Nat.add_sub_cancel, A053134.P15779749155858175918.f1, A053134.P15779749155858175918.a, A053134.P2509470964205377793.a, A302709, A302709.P12282604246750244940.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053134

/-!
# A053135: Binomial coefficients C(2*n+6,6).

The programs for A053135, the canonical program `A053135.P5923564777890141982` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053135 has offset 0).

The definition of A053135 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n+6, 6)` (program `A053135.P5923564777890141982`, by `A053135.P5923564777890141982.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053135.P5923564777890141982

`C(2*n+6, 6)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053135

/-- `C(2*n+6, 6)` -/
def P5923564777890141982.Spec : Prop :=
  ∀ n, (P5923564777890141982.a n : ℤ) = A053135 n

theorem P5923564777890141982.correct : P5923564777890141982.Spec := by
  intro n
  simp only [A053135]

end A053135

/-! ## A053135.P2249821922466327751

`A000384(n+1)*A000384(n+2)*A000384(n+3)/90`
-/

namespace A053135.P2249821922466327751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000384 (n + 1) * A000384 (n + 2) * A000384 (n + 3) : ℚ) / 90

end

end A053135.P2249821922466327751

namespace A053135

/-- `A000384(n+1)*A000384(n+2)*A000384(n+3)/90` -/
def P2249821922466327751.Spec : Prop :=
  ∀ n, P2249821922466327751.a n = (A053135 n : ℚ)

theorem P2249821922466327751.correct : P2249821922466327751.Spec := by
  intro n
  simp only [A053135, Nat.add_sub_cancel, A053135.P2249821922466327751.a, A053135.P5923564777890141982.a, A000384, A000384.P5392390561999168282.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053135

/-! ## A053135.P3881569636335512270

`A000579(2*n+6)`
-/

namespace A053135.P3881569636335512270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (2 * n + 6)

end

end A053135.P3881569636335512270

namespace A053135

/-- `A000579(2*n+6)` -/
def P3881569636335512270.Spec : Prop :=
  ∀ n, P3881569636335512270.a n = A053135 n

end A053135

/-! ## A053135.P11411442046146135380

`(n+3)/3*A002299(n)`
-/

namespace A053135.P11411442046146135380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 3 * (A002299 n : ℚ)

end

end A053135.P11411442046146135380

namespace A053135

/-- `(n+3)/3*A002299(n)` -/
def P11411442046146135380.Spec : Prop :=
  ∀ n, P11411442046146135380.a n = (A053135 n : ℚ)

theorem P11411442046146135380.correct : P11411442046146135380.Spec := by
  intro n
  simp only [A053135, Nat.add_sub_cancel, A053135.P11411442046146135380.a, A053135.P5923564777890141982.a, A002299, A002299.P11477607172706309717.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053135

/-! ## A053135.P11419450859126870216

`∑[2*A002299(n)-A053134(n)]`
-/

namespace A053135.P11419450859126870216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002299 n - A053134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053135.P11419450859126870216

namespace A053135

/-- `∑[2*A002299(n)-A053134(n)]` -/
def P11419450859126870216.Spec : Prop :=
  ∀ n, P11419450859126870216.a n = A053135 n

end A053135

/-! ## A053135.P9087316638204676622

`A053128(n+6)-A053127(n+5)`
-/

namespace A053135.P9087316638204676622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053128 (n + 6) - A053127 (n + 5)

end

end A053135.P9087316638204676622

namespace A053135

/-- `A053128(n+6)-A053127(n+5)` -/
def P9087316638204676622.Spec : Prop :=
  ∀ n, P9087316638204676622.a n = A053135 n

end A053135

/-! ## A053135.P7868543044067460360

`A053128(n+6)-2*A053132(n+5)`
-/

namespace A053135.P7868543044067460360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053128 (n + 6) - 2 * A053132 (n + 5)

end

end A053135.P7868543044067460360

namespace A053135

/-- `A053128(n+6)-2*A053132(n+5)` -/
def P7868543044067460360.Spec : Prop :=
  ∀ n, P7868543044067460360.a n = A053135 n

end A053135

/-! ## A053135.P4206554742565756613

`A053128(n+6)-(A053126(n+4)+A002299(n))`
-/

namespace A053135.P4206554742565756613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053128 (n + 6) - (A053126 (n + 4) + A002299 n)

end

end A053135.P4206554742565756613

namespace A053135

/-- `A053128(n+6)-(A053126(n+4)+A002299(n))` -/
def P4206554742565756613.Spec : Prop :=
  ∀ n, P4206554742565756613.a n = A053135 n

end A053135

/-! ## A053135.P15191288017265802216

`A053134(n+1)+A053128(n+6)-A002299(n+1)`
-/

namespace A053135.P15191288017265802216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053134 (n + 1) + (A053128 (n + 6) - A002299 (n + 1))

end

end A053135.P15191288017265802216

namespace A053135

/-- `A053134(n+1)+A053128(n+6)-A002299(n+1)` -/
def P15191288017265802216.Spec : Prop :=
  ∀ n, P15191288017265802216.a n = A053135 n

end A053135

/-! ## A053135.P17197702477991648783

`A027818(2*n)/(2*n+1)`
-/

namespace A053135.P17197702477991648783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027818 (2 * n) : ℚ) / (2 * n + 1 : ℚ)

end

end A053135.P17197702477991648783

namespace A053135

/-- `A027818(2*n)/(2*n+1)` -/
def P17197702477991648783.Spec : Prop :=
  ∀ n, P17197702477991648783.a n = (A053135 n : ℚ)

end A053135

/-! ## A053135.P12211126133230328094

`2*A001769(2*n)-A001753(2*n)`
-/

namespace A053135.P12211126133230328094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001769 (2 * n) - A001753 (2 * n)

end

end A053135.P12211126133230328094

namespace A053135

/-- `2*A001769(2*n)-A001753(2*n)` -/
def P12211126133230328094.Spec : Prop :=
  ∀ n, P12211126133230328094.a n = A053135 n

end A053135

/-! ## A053135.P2264203414832273844

`∑[A005585(Δ[n²])]`
-/

namespace A053135.P2264203414832273844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053135.P2264203414832273844

namespace A053135

/-- `∑[A005585(Δ[n²])]` -/
def P2264203414832273844.Spec : Prop :=
  ∀ n, P2264203414832273844.a n = A053135 n

end A053135

/-! ## A053135.P2910216392295335821

`∑[∑[∑[A001845(2*n)]]]`
-/

namespace A053135.P2910216392295335821
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053135.P2910216392295335821

namespace A053135

/-- `∑[∑[∑[A001845(2*n)]]]` -/
def P2910216392295335821.Spec : Prop :=
  ∀ n, P2910216392295335821.a n = A053135 n

end A053135

/-! ## A053135.P13436310472141015924

`A124089(2*(n+3))+1`
-/

namespace A053135.P13436310472141015924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124089 (2 * (n + 3)) + 1

end

end A053135.P13436310472141015924

namespace A053135

/-- `A124089(2*(n+3))+1` -/
def P13436310472141015924.Spec : Prop :=
  ∀ n, P13436310472141015924.a n = A053135 n

end A053135

/-! ## A053135.P2020613043238594490

`A253943(2*n+5)/3`
-/

namespace A053135.P2020613043238594490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253943 (2 * n + 5) : ℚ) / 3

end

end A053135.P2020613043238594490

namespace A053135

/-- `A253943(2*n+5)/3` -/
def P2020613043238594490.Spec : Prop :=
  ∀ n, P2020613043238594490.a n = (A053135 n : ℚ)

theorem P2020613043238594490.correct : P2020613043238594490.Spec := by
  intro n
  simp only [A053135, Nat.add_sub_cancel, A053135.P2020613043238594490.a, A053135.P5923564777890141982.a, A253943, A253943.P13811631243431024580.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053135

/-! ## A053135.P9202618465722756454

`A062989(2*n)+Δ[n²]`
-/

namespace A053135.P9202618465722756454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062989 (2 * n) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A053135.P9202618465722756454

namespace A053135

/-- `A062989(2*n)+Δ[n²]` -/
def P9202618465722756454.Spec : Prop :=
  ∀ n, P9202618465722756454.a n = A053135 n

theorem P9202618465722756454.correct : P9202618465722756454.Spec := by
  intro n
  simp only [A053135, Nat.add_sub_cancel, A053135.P9202618465722756454.f1, A053135.P9202618465722756454.a, A053135.P5923564777890141982.a, A062989, A062989.P942204784021349880.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053135

/-! ## A053135.P15586276319201939125

`∑[A108683(2*n)]/(2*n+1)`
-/

namespace A053135.P15586276319201939125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108683 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (2 * n + 1 : ℚ)

end

end A053135.P15586276319201939125

namespace A053135

/-- `∑[A108683(2*n)]/(2*n+1)` -/
def P15586276319201939125.Spec : Prop :=
  ∀ n, P15586276319201939125.a n = (A053135 n : ℚ)

end A053135

/-! ## A053135.P11670990597638897450

`A095670(2*n)-A095663(2*n)`
-/

namespace A053135.P11670990597638897450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095670 (2 * n) - A095663 (2 * n)

end

end A053135.P11670990597638897450

namespace A053135

/-- `A095670(2*n)-A095663(2*n)` -/
def P11670990597638897450.Spec : Prop :=
  ∀ n, P11670990597638897450.a n = A053135 n

end A053135

/-! ## A053135.P9372180813486984265

`A096945(2*n)-A095670(2*n)`
-/

namespace A053135.P9372180813486984265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096945 (2 * n) - A095670 (2 * n)

end

end A053135.P9372180813486984265

namespace A053135

/-- `A096945(2*n)-A095670(2*n)` -/
def P9372180813486984265.Spec : Prop :=
  ∀ n, P9372180813486984265.a n = A053135 n

end A053135

/-! ## A053135.P11813806401827944910

`A107418(2*n)/A000292(2*n+1)`
-/

namespace A053135.P11813806401827944910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107418 (2 * n) : ℚ) / (A000292 (2 * n + 1) : ℚ)

end

end A053135.P11813806401827944910

namespace A053135

/-- `A107418(2*n)/A000292(2*n+1)` -/
def P11813806401827944910.Spec : Prop :=
  ∀ n, P11813806401827944910.a n = (A053135 n : ℚ)

end A053135

/-!
# A053136: Binomial coefficients C(2*n+7,7).

The programs for A053136, the canonical program `A053136.P9289564675379329087` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053136 has offset 0).

The definition of A053136 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n+7, 7)` (program `A053136.P9289564675379329087`, by `A053136.P9289564675379329087.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053136.P9289564675379329087

`C(2*n+7, 7)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053136

/-- `C(2*n+7, 7)` -/
def P9289564675379329087.Spec : Prop :=
  ∀ n, (P9289564675379329087.a n : ℤ) = A053136 n

theorem P9289564675379329087.correct : P9289564675379329087.Spec := by
  intro n
  simp only [A053136]

end A053136

/-! ## A053136.P3962570685619180111

`A000580(2*n+7)`
-/

namespace A053136.P3962570685619180111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (2 * n + 7)

end

end A053136.P3962570685619180111

namespace A053136

/-- `A000580(2*n+7)` -/
def P3962570685619180111.Spec : Prop :=
  ∀ n, P3962570685619180111.a n = A053136 n

end A053136

/-! ## A053136.P2786790095892988674

`record[C(n, 7)^(n%2)]`
-/

namespace A053136.P2786790095892988674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 7 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053136.P2786790095892988674

namespace A053136

/-- `record[C(n, 7)^(n%2)]` -/
def P2786790095892988674.Spec : Prop :=
  ∀ n, (P2786790095892988674.a n : ℤ) = A053136 n

end A053136

/-! ## A053136.P14129436471530425824

`record[C(n, 7)^and(1, n)]`
-/

namespace A053136.P14129436471530425824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 7 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053136.P14129436471530425824

namespace A053136

/-- `record[C(n, 7)^and(1, n)]` -/
def P14129436471530425824.Spec : Prop :=
  ∀ n, (P14129436471530425824.a n : ℤ) = A053136 n

end A053136

/-! ## A053136.P7716463649452426020

`record[C(n+7, 7)/(-1)^n]`
-/

namespace A053136.P7716463649452426020
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053136.P7716463649452426020

namespace A053136

/-- `record[C(n+7, 7)/(-1)^n]` -/
def P7716463649452426020.Spec : Prop :=
  ∀ n, P7716463649452426020.a n = (A053136 n : ℚ)

end A053136

/-! ## A053136.P11860610104471047764

`record[C(n, 7)^val(n²+1, 2)]`
-/

namespace A053136.P11860610104471047764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 7 ^ SequenceMachineLib.valuation (n ^ 2 + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053136.P11860610104471047764

namespace A053136

/-- `record[C(n, 7)^val(n²+1, 2)]` -/
def P11860610104471047764.Spec : Prop :=
  ∀ n, (P11860610104471047764.a n : ℤ) = A053136 n

end A053136

/-! ## A053136.P2174811976636433786

`record[lcm((n+1)%2, C(n+7, 7))]`
-/

namespace A053136.P2174811976636433786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((n + 1) % 2) (Nat.choose (n + 7) 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053136.P2174811976636433786

namespace A053136

/-- `record[lcm((n+1)%2, C(n+7, 7))]` -/
def P2174811976636433786.Spec : Prop :=
  ∀ n, (P2174811976636433786.a n : ℤ) = A053136 n

end A053136

/-! ## A053136.P15844756487641589616

`record[or((-1)^n-1, C(n+7, 7))]`
-/

namespace A053136.P15844756487641589616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((-1) ^ n - 1) (Nat.choose (n + 7) 7 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053136.P15844756487641589616

namespace A053136

/-- `record[or((-1)^n-1, C(n+7, 7))]` -/
def P15844756487641589616.Spec : Prop :=
  ∀ n, P15844756487641589616.a n = A053136 n

end A053136

/-! ## A053136.P2575581556769368614

`∑[∑[∑[A142993(n)]]]`
-/

namespace A053136.P2575581556769368614
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142993 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053136.P2575581556769368614

namespace A053136

/-- `∑[∑[∑[A142993(n)]]]` -/
def P2575581556769368614.Spec : Prop :=
  ∀ n, P2575581556769368614.a n = A053136 n

end A053136

/-! ## A053136.P7855567399840320980

`∑[∑[A081219(n+1)]]`
-/

namespace A053136.P7855567399840320980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081219 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053136.P7855567399840320980

namespace A053136

/-- `∑[∑[A081219(n+1)]]` -/
def P7855567399840320980.Spec : Prop :=
  ∀ n, P7855567399840320980.a n = A053136 n

end A053136

/-! ## A053136.P11963692852889856877

`A053129(n+7)-A053128(n+6)`
-/

namespace A053136.P11963692852889856877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053129 (n + 7) - A053128 (n + 6)

end

end A053136.P11963692852889856877

namespace A053136

/-- `A053129(n+7)-A053128(n+6)` -/
def P11963692852889856877.Spec : Prop :=
  ∀ n, P11963692852889856877.a n = A053136 n

end A053136

/-! ## A053136.P5356768051611089218

`∑[A259317(n+1)/2]`
-/

namespace A053136.P5356768051611089218
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259317 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053136.P5356768051611089218

namespace A053136

/-- `∑[A259317(n+1)/2]` -/
def P5356768051611089218.Spec : Prop :=
  ∀ n, P5356768051611089218.a n = (A053136 n : ℚ)

end A053136

/-! ## A053136.P931122091485613821

`A052181(2*n)/(n+1)`
-/

namespace A053136.P931122091485613821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052181 (2 * n) : ℚ) / (n + 1 : ℚ)

end

end A053136.P931122091485613821

namespace A053136

/-- `A052181(2*n)/(n+1)` -/
def P931122091485613821.Spec : Prop :=
  ∀ n, P931122091485613821.a n = (A053136 n : ℚ)

end A053136

/-! ## A053136.P14196508347720911305

`∑[∑[∑[∑[A008412(2*n)]]]]`
-/

namespace A053136.P14196508347720911305
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008412 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053136.P14196508347720911305

namespace A053136

/-- `∑[∑[∑[∑[A008412(2*n)]]]]` -/
def P14196508347720911305.Spec : Prop :=
  ∀ n, P14196508347720911305.a n = A053136 n

end A053136

/-! ## A053136.P17119172338466711193

`A056001(2*n)/(2*n+1)`
-/

namespace A053136.P17119172338466711193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056001 (2 * n) : ℚ) / (2 * n + 1 : ℚ)

end

end A053136.P17119172338466711193

namespace A053136

/-- `A056001(2*n)/(2*n+1)` -/
def P17119172338466711193.Spec : Prop :=
  ∀ n, P17119172338466711193.a n = (A053136 n : ℚ)

end A053136

/-! ## A053136.P5180784651306897394

`2*A001779(2*n)-A001769(2*n)`
-/

namespace A053136.P5180784651306897394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001779 (2 * n) - A001769 (2 * n)

end

end A053136.P5180784651306897394

namespace A053136

/-- `2*A001779(2*n)-A001769(2*n)` -/
def P5180784651306897394.Spec : Prop :=
  ∀ n, P5180784651306897394.a n = A053136 n

end A053136

/-! ## A053136.P15875910023144017097

`∑[A040977(2*n)]`
-/

namespace A053136.P15875910023144017097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040977 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053136.P15875910023144017097

namespace A053136

/-- `∑[A040977(2*n)]` -/
def P15875910023144017097.Spec : Prop :=
  ∀ n, P15875910023144017097.a n = A053136 n

end A053136

/-! ## A053136.P14847858787645487826

`∑[∑[∑[A014820(2*n)]]]`
-/

namespace A053136.P14847858787645487826
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014820 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053136.P14847858787645487826

namespace A053136

/-- `∑[∑[∑[A014820(2*n)]]]` -/
def P14847858787645487826.Spec : Prop :=
  ∀ n, P14847858787645487826.a n = A053136 n

end A053136

/-! ## A053136.P6497403350209791838

`A124090(2*n+7)+1`
-/

namespace A053136.P6497403350209791838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124090 (2 * n + 7) + 1

end

end A053136.P6497403350209791838

namespace A053136

/-- `A124090(2*n+7)+1` -/
def P6497403350209791838.Spec : Prop :=
  ∀ n, P6497403350209791838.a n = A053136 n

theorem P6497403350209791838.correct : P6497403350209791838.Spec := by
  intro n
  simp only [A053136, Nat.add_sub_cancel, A053136.P6497403350209791838.a, A053136.P9289564675379329087.a, A124090, A124090.P5259538866810562984.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053136

/-! ## A053136.P13293050816439681857

`A253944(2*(n+3))/3`
-/

namespace A053136.P13293050816439681857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253944 (2 * (n + 3)) : ℚ) / 3

end

end A053136.P13293050816439681857

namespace A053136

/-- `A253944(2*(n+3))/3` -/
def P13293050816439681857.Spec : Prop :=
  ∀ n, P13293050816439681857.a n = (A053136 n : ℚ)

end A053136

/-!
# A053137: Binomial coefficients C(2*n+8,8).

The programs for A053137, the canonical program `A053137.P9356228252361435726` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053137 has offset 0).

The definition of A053137 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n+8, 8)` (program `A053137.P9356228252361435726`, by `A053137.P9356228252361435726.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053137.P9356228252361435726

`C(2*n+8, 8)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053137

/-- `C(2*n+8, 8)` -/
def P9356228252361435726.Spec : Prop :=
  ∀ n, (P9356228252361435726.a n : ℤ) = A053137 n

theorem P9356228252361435726.correct : P9356228252361435726.Spec := by
  intro n
  simp only [A053137]

end A053137

/-! ## A053137.P6825107720318296444

`A000581(2*(n+4))`
-/

namespace A053137.P6825107720318296444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (2 * (n + 4))

end

end A053137.P6825107720318296444

namespace A053137

/-- `A000581(2*(n+4))` -/
def P6825107720318296444.Spec : Prop :=
  ∀ n, P6825107720318296444.a n = A053137 n

end A053137

/-! ## A053137.P2609396892122861856

`record[C(n+8, 8)/(-1)^n]`
-/

namespace A053137.P2609396892122861856
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 8) 8 : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053137.P2609396892122861856

namespace A053137

/-- `record[C(n+8, 8)/(-1)^n]` -/
def P2609396892122861856.Spec : Prop :=
  ∀ n, P2609396892122861856.a n = (A053137 n : ℚ)

end A053137

/-! ## A053137.P1418392591849382816

`record[C(n+8, 8)^(-1)^n]`
-/

namespace A053137.P1418392591849382816
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 8) 8 : ℚ) ^ ((-1) ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053137.P1418392591849382816

namespace A053137

/-- `record[C(n+8, 8)^(-1)^n]` -/
def P1418392591849382816.Spec : Prop :=
  ∀ n, P1418392591849382816.a n = (A053137 n : ℚ)

end A053137

/-! ## A053137.P10473625554262288746

`A053130(n+8)-A053129(n+7)`
-/

namespace A053137.P10473625554262288746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053130 (n + 8) - A053129 (n + 7)

end

end A053137.P10473625554262288746

namespace A053137

/-- `A053130(n+8)-A053129(n+7)` -/
def P10473625554262288746.Spec : Prop :=
  ∀ n, P10473625554262288746.a n = A053137 n

end A053137

/-! ## A053137.P8928588382057058854

`A053130(n+8)-(A053136(n)+A053128(n+6))`
-/

namespace A053137.P8928588382057058854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053130 (n + 8) - (A053136 n + A053128 (n + 6))

end

end A053137.P8928588382057058854

namespace A053137

/-- `A053130(n+8)-(A053136(n)+A053128(n+6))` -/
def P8928588382057058854.Spec : Prop :=
  ∀ n, P8928588382057058854.a n = A053137 n

end A053137

/-! ## A053137.P18405980572033855508

`(2*n+1)*∑[A006858(n+1)]`
-/

namespace A053137.P18405980572033855508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053137.P18405980572033855508

namespace A053137

/-- `(2*n+1)*∑[A006858(n+1)]` -/
def P18405980572033855508.Spec : Prop :=
  ∀ n, P18405980572033855508.a n = A053137 n

end A053137

/-! ## A053137.P10656336260765164062

`A056003(2*n)/(2*n+1)`
-/

namespace A053137.P10656336260765164062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056003 (2 * n) : ℚ) / (2 * n + 1 : ℚ)

end

end A053137.P10656336260765164062

namespace A053137

/-- `A056003(2*n)/(2*n+1)` -/
def P10656336260765164062.Spec : Prop :=
  ∀ n, P10656336260765164062.a n = (A053137 n : ℚ)

end A053137

/-! ## A053137.P10402048188658407638

`∑[A050486(2*n)]`
-/

namespace A053137.P10402048188658407638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050486 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053137.P10402048188658407638

namespace A053137

/-- `∑[A050486(2*n)]` -/
def P10402048188658407638.Spec : Prop :=
  ∀ n, P10402048188658407638.a n = A053137 n

end A053137

/-! ## A053137.P15163877446233353352

`A165618(2*n)+1`
-/

namespace A053137.P15163877446233353352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165618 (2 * n) + 1

end

end A053137.P15163877446233353352

namespace A053137

/-- `A165618(2*n)+1` -/
def P15163877446233353352.Spec : Prop :=
  ∀ n, P15163877446233353352.a n = A053137 n

theorem P15163877446233353352.correct : P15163877446233353352.Spec := by
  intro n
  simp only [A053137, Nat.add_sub_cancel, A053137.P15163877446233353352.a, A053137.P9356228252361435726.a, A165618, A165618.P15483055962896292448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053137

/-! ## A053137.P990198135823322022

`∑[∑[A259181(2*n+1)]]`
-/

namespace A053137.P990198135823322022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259181 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053137.P990198135823322022

namespace A053137

/-- `∑[∑[A259181(2*n+1)]]` -/
def P990198135823322022.Spec : Prop :=
  ∀ n, P990198135823322022.a n = A053137 n

end A053137

/-! ## A053137.P272115761257896310

`∑[∑[∑[A061927(2*n+1)]]]`
-/

namespace A053137.P272115761257896310
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061927 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053137.P272115761257896310

namespace A053137

/-- `∑[∑[∑[A061927(2*n+1)]]]` -/
def P272115761257896310.Spec : Prop :=
  ∀ n, P272115761257896310.a n = A053137 n

end A053137

/-! ## A053137.P11404949909211231840

`(2*n+1)*A031164(2*n)`
-/

namespace A053137.P11404949909211231840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A031164 (2 * n)

end

end A053137.P11404949909211231840

namespace A053137

/-- `(2*n+1)*A031164(2*n)` -/
def P11404949909211231840.Spec : Prop :=
  ∀ n, P11404949909211231840.a n = A053137 n

end A053137

/-! ## A053137.P7004243845653945839

`A050486(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A053137.P7004243845653945839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050486 (n + n) + a (n - 1)

end

end A053137.P7004243845653945839

namespace A053137

/-- `A050486(n+n)+a(n-1)` -/
def P7004243845653945839.Spec : Prop :=
  ∀ n, P7004243845653945839.a n = A053137 n

end A053137

/-! ## A053137.P13257876011753457074

`record[A000581(n+8)/(-1)^n]`
-/

namespace A053137.P13257876011753457074
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000581 (n + 8) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053137.P13257876011753457074

namespace A053137

/-- `record[A000581(n+8)/(-1)^n]` -/
def P13257876011753457074.Spec : Prop :=
  ∀ n, P13257876011753457074.a n = (A053137 n : ℚ)

end A053137

/-! ## A053137.P8991874060958586136

`(2*n+1)*A362906(2*n+1)`
-/

namespace A053137.P8991874060958586136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A362906 (2 * n + 1)

end

end A053137.P8991874060958586136

namespace A053137

/-- `(2*n+1)*A362906(2*n+1)` -/
def P8991874060958586136.Spec : Prop :=
  ∀ n, P8991874060958586136.a n = A053137 n

end A053137

/-! ## A053137.P8362677325881523117

`A063417(2*n)-A063262(2*n)`
-/

namespace A053137.P8362677325881523117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063417 (2 * n) - A063262 (2 * n)

end

end A053137.P8362677325881523117

namespace A053137

/-- `A063417(2*n)-A063262(2*n)` -/
def P8362677325881523117.Spec : Prop :=
  ∀ n, P8362677325881523117.a n = A053137 n

end A053137

/-! ## A053137.P10360150221420945393

`A063263(2*n)-A064057(2*n)`
-/

namespace A053137.P10360150221420945393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063263 (2 * n) - A064057 (2 * n)

end

end A053137.P10360150221420945393

namespace A053137

/-- `A063263(2*n)-A064057(2*n)` -/
def P10360150221420945393.Spec : Prop :=
  ∀ n, P10360150221420945393.a n = A053137 n

end A053137

/-! ## A053137.P14359091290908446690

`A095819(2*n)-A095665(2*n)`
-/

namespace A053137.P14359091290908446690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095819 (2 * n) - A095665 (2 * n)

end

end A053137.P14359091290908446690

namespace A053137

/-- `A095819(2*n)-A095665(2*n)` -/
def P14359091290908446690.Spec : Prop :=
  ∀ n, P14359091290908446690.a n = A053137 n

end A053137

/-!
# A053138: Binomial coefficients C(2*n+9,9).

The programs for A053138, the canonical program `A053138.P6866851815484592390` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053138 has offset 0).

The definition of A053138 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n+9, 9)` (program `A053138.P6866851815484592390`, by `A053138.P6866851815484592390.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053138.P6866851815484592390

`C(2*n+9, 9)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053138

/-- `C(2*n+9, 9)` -/
def P6866851815484592390.Spec : Prop :=
  ∀ n, (P6866851815484592390.a n : ℤ) = A053138 n

theorem P6866851815484592390.correct : P6866851815484592390.Spec := by
  intro n
  simp only [A053138]

end A053138

/-! ## A053138.P4060267663846439734

`A000582(2*n+9)`
-/

namespace A053138.P4060267663846439734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (2 * n + 9)

end

end A053138.P4060267663846439734

namespace A053138

/-- `A000582(2*n+9)` -/
def P4060267663846439734.Spec : Prop :=
  ∀ n, P4060267663846439734.a n = A053138 n

end A053138

/-! ## A053138.P16423038801106575273

`record[C(or(1, n), dr(9*n))]`
-/

namespace A053138.P16423038801106575273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) (SequenceMachineLib.digitalRoot (9 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053138.P16423038801106575273

namespace A053138

/-- `record[C(or(1, n), dr(9*n))]` -/
def P16423038801106575273.Spec : Prop :=
  ∀ n, (P16423038801106575273.a n : ℤ) = A053138 n

end A053138

/-! ## A053138.P9488226239116502268

`record[C(n+9, 9)^(-1)^n]`
-/

namespace A053138.P9488226239116502268
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 9) 9 : ℚ) ^ ((-1) ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053138.P9488226239116502268

namespace A053138

/-- `record[C(n+9, 9)^(-1)^n]` -/
def P9488226239116502268.Spec : Prop :=
  ∀ n, P9488226239116502268.a n = (A053138 n : ℚ)

end A053138

/-! ## A053138.P6500582132687776143

`record[-((n+9)*a(n-1)/n)]` with `a(0)=1`
-/

namespace A053138.P6500582132687776143
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  -((n + 9 : ℚ) * f1 (n - 1) / (n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053138.P6500582132687776143

namespace A053138

/-- `record[-((n+9)*a(n-1)/n)]` -/
def P6500582132687776143.Spec : Prop :=
  ∀ n, P6500582132687776143.a n = (A053138 n : ℚ)

end A053138

/-! ## A053138.P7481758148456448291

`A053131(n+9)-A053130(n+8)`
-/

namespace A053138.P7481758148456448291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053131 (n + 9) - A053130 (n + 8)

end

end A053138.P7481758148456448291

namespace A053138

/-- `A053131(n+9)-A053130(n+8)` -/
def P7481758148456448291.Spec : Prop :=
  ∀ n, P7481758148456448291.a n = A053138 n

end A053138

/-! ## A053138.P12469946524088909156

`2*A053133(n+9)-A053130(n+8)`
-/

namespace A053138.P12469946524088909156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053133 (n + 9) - A053130 (n + 8)

end

end A053138.P12469946524088909156

namespace A053138

/-- `2*A053133(n+9)-A053130(n+8)` -/
def P12469946524088909156.Spec : Prop :=
  ∀ n, P12469946524088909156.a n = A053138 n

end A053138

/-! ## A053138.P15809404505945643314

`∑[A053347(2*n)]`
-/

namespace A053138.P15809404505945643314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053347 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053138.P15809404505945643314

namespace A053138

/-- `∑[A053347(2*n)]` -/
def P15809404505945643314.Spec : Prop :=
  ∀ n, P15809404505945643314.a n = A053138 n

end A053138

/-! ## A053138.P12030078831861509864

`A035927(2*n)+1`
-/

namespace A053138.P12030078831861509864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035927 (2 * n) + 1

end

end A053138.P12030078831861509864

namespace A053138

/-- `A035927(2*n)+1` -/
def P12030078831861509864.Spec : Prop :=
  ∀ n, P12030078831861509864.a n = A053138 n

theorem P12030078831861509864.correct : P12030078831861509864.Spec := by
  intro n
  simp only [A053138, Nat.add_sub_cancel, A053138.P12030078831861509864.a, A053138.P6866851815484592390.a, A035927, A035927.P5963660235913258710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053138

/-! ## A053138.P1863549469618697353

`A056114(2*n)/Δ[n²]`
-/

namespace A053138.P1863549469618697353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056114 (2 * n) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A053138.P1863549469618697353

namespace A053138

/-- `A056114(2*n)/Δ[n²]` -/
def P1863549469618697353.Spec : Prop :=
  ∀ n, P1863549469618697353.a n = (A053138 n : ℚ)

end A053138

/-! ## A053138.P17672566377730281718

`A053347(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A053138.P17672566377730281718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053347 (n + n) + a (n - 1)

end

end A053138.P17672566377730281718

namespace A053138

/-- `A053347(n+n)+a(n-1)` -/
def P17672566377730281718.Spec : Prop :=
  ∀ n, P17672566377730281718.a n = A053138 n

end A053138

/-! ## A053138.P16319537187960970552

`record[A000582(n+9)/(-1)^n]`
-/

namespace A053138.P16319537187960970552
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000582 (n + 9) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053138.P16319537187960970552

namespace A053138

/-- `record[A000582(n+9)/(-1)^n]` -/
def P16319537187960970552.Spec : Prop :=
  ∀ n, P16319537187960970552.a n = (A053138 n : ℚ)

end A053138

/-! ## A053138.P15932381115262265998

`A282077(2*n)+A018213(2*n)`
-/

namespace A053138.P15932381115262265998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282077 (2 * n) + A018213 (2 * n)

end

end A053138.P15932381115262265998

namespace A053138

/-- `A282077(2*n)+A018213(2*n)` -/
def P15932381115262265998.Spec : Prop :=
  ∀ n, P15932381115262265998.a n = A053138 n

end A053138

/-! ## A053138.P16108909858965686852

`A063418(2*n)-A063263(2*n)`
-/

namespace A053138.P16108909858965686852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063418 (2 * n) - A063263 (2 * n)

end

end A053138.P16108909858965686852

namespace A053138

/-- `A063418(2*n)-A063263(2*n)` -/
def P16108909858965686852.Spec : Prop :=
  ∀ n, P16108909858965686852.a n = A053138 n

end A053138

/-! ## A053138.P12614253616343622601

`A063264(2*n)-A064058(2*n)`
-/

namespace A053138.P12614253616343622601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063264 (2 * n) - A064058 (2 * n)

end

end A053138.P12614253616343622601

namespace A053138

/-- `A063264(2*n)-A064058(2*n)` -/
def P12614253616343622601.Spec : Prop :=
  ∀ n, P12614253616343622601.a n = A053138 n

end A053138

/-! ## A053138.P2136530491174625566

`2*A001781(2*n)-A001780(2*n)`
-/

namespace A053138.P2136530491174625566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001781 (2 * n) - A001780 (2 * n)

end

end A053138.P2136530491174625566

namespace A053138

/-- `2*A001781(2*n)-A001780(2*n)` -/
def P2136530491174625566.Spec : Prop :=
  ∀ n, P2136530491174625566.a n = A053138 n

end A053138

/-! ## A053138.P4960751001593735196

`2*A054333(2*n)-A053310(2*n)`
-/

namespace A053138.P4960751001593735196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054333 (2 * n) - A053310 (2 * n)

end

end A053138.P4960751001593735196

namespace A053138

/-- `2*A054333(2*n)-A053310(2*n)` -/
def P4960751001593735196.Spec : Prop :=
  ∀ n, P4960751001593735196.a n = A053138 n

theorem P4960751001593735196.correct : P4960751001593735196.Spec := by
  intro n
  simp only [A053138, Nat.add_sub_cancel, A053138.P4960751001593735196.a, A053138.P6866851815484592390.a, A053310, A053310.P18227198859901366220.a, A054333, A054333.P12017629139080086520.a, A055843, A055843.P13673213389990630587.a, A055844, A055844.P3977546084257467032.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053138

/-! ## A053138.P17396581798949848343

`A027769(2*(n+4))/A020723(2*n)`
-/

namespace A053138.P17396581798949848343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027769 (2 * (n + 4)) : ℚ) / (A020723 (2 * n) : ℚ)

end

end A053138.P17396581798949848343

namespace A053138

/-- `A027769(2*(n+4))/A020723(2*n)` -/
def P17396581798949848343.Spec : Prop :=
  ∀ n, P17396581798949848343.a n = (A053138 n : ℚ)

end A053138

/-! ## A053138.P18437306101433670892

`A053131(n+9)-A000581(2*n+9)`
-/

namespace A053138.P18437306101433670892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053131 (n + 9) - A000581 (2 * n + 9)

end

end A053138.P18437306101433670892

namespace A053138

/-- `A053131(n+9)-A000581(2*n+9)` -/
def P18437306101433670892.Spec : Prop :=
  ∀ n, P18437306101433670892.a n = A053138 n

end A053138

/-! ## A053138.P4629882103401416505

`A055843(2*n+1)-A053310(2*n+1)`
-/

namespace A053138.P4629882103401416505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055843 (2 * n + 1) - A053310 (2 * n + 1)

end

end A053138.P4629882103401416505

namespace A053138

/-- `A055843(2*n+1)-A053310(2*n+1)` -/
def P4629882103401416505.Spec : Prop :=
  ∀ n, P4629882103401416505.a n = A053138 n

theorem P4629882103401416505.correct : P4629882103401416505.Spec := by
  intro n
  simp only [A053138, Nat.add_sub_cancel, A053138.P4629882103401416505.a, A053138.P6866851815484592390.a, A053310, A053310.P18227198859901366220.a, A055843, A055843.P13673213389990630587.a, A055844, A055844.P3977546084257467032.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053138

/-!
# A053139: a(n) = phi(n) - mu(n).

The programs for A053139, the canonical program `A053139.P14434493847918876096` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053139 has offset 1).

The definition of A053139 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A008683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053139.P14434493847918876096

`A000010(n+1)-A008683(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053139

/-- `A000010(n+1)-A008683(n+1)` -/
def P14434493847918876096.Spec : Prop :=
  ∀ n, P14434493847918876096.a n = A053139 (n + 1)

theorem P14434493847918876096.correct : P14434493847918876096.Spec := by
  intro n
  simp only [A053139, Nat.add_sub_cancel]

end A053139

/-! ## A053139.P17826796047146536516

`1-A228620(n+1)+n`
-/

namespace A053139.P17826796047146536516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A228620 (n + 1) + (n : ℤ)

end

end A053139.P17826796047146536516

namespace A053139

/-- `1-A228620(n+1)+n` -/
def P17826796047146536516.Spec : Prop :=
  ∀ n, P17826796047146536516.a n = A053139 (n + 1)

end A053139

/-! ## A053139.P10706108705553515303

`A127705(n+1)%(2*n+1)`
-/

namespace A053139.P10706108705553515303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127705 (n + 1)) (2 * n + 1 : ℤ)

end

end A053139.P10706108705553515303

namespace A053139

/-- `A127705(n+1)%(2*n+1)` -/
def P10706108705553515303.Spec : Prop :=
  ∀ n, P10706108705553515303.a n = A053139 (n + 1)

end A053139

/-! ## A053139.P16288889451953852109

`A127705(n+1)-A000007(n)`
-/

namespace A053139.P16288889451953852109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127705 (n + 1) - A000007 n

end

end A053139.P16288889451953852109

namespace A053139

/-- `A127705(n+1)-A000007(n)` -/
def P16288889451953852109.Spec : Prop :=
  ∀ n, P16288889451953852109.a n = A053139 (n + 1)

end A053139

/-! ## A053139.P1810439864646113627

`A057427(n)*A127705(n+1)`
-/

namespace A053139.P1810439864646113627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A127705 (n + 1)

end

end A053139.P1810439864646113627

namespace A053139

/-- `A057427(n)*A127705(n+1)` -/
def P1810439864646113627.Spec : Prop :=
  ∀ n, P1810439864646113627.a n = A053139 (n + 1)

end A053139

/-! ## A053139.P5459073181306384219

`and(A057428(n), A127705(n+1))`
-/

namespace A053139.P5459073181306384219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A127705 (n + 1))

end

end A053139.P5459073181306384219

namespace A053139

/-- `and(A057428(n), A127705(n+1))` -/
def P5459073181306384219.Spec : Prop :=
  ∀ n, P5459073181306384219.a n = A053139 (n + 1)

end A053139

/-! ## A053139.P16945951283340937866

`Δ[A002088(n)]-A008683(n+1)`
-/

namespace A053139.P16945951283340937866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008683 (n + 1)

end

end A053139.P16945951283340937866

namespace A053139

/-- `Δ[A002088(n)]-A008683(n+1)` -/
def P16945951283340937866.Spec : Prop :=
  ∀ n, P16945951283340937866.a n = A053139 (n + 1)

end A053139

/-! ## A053139.P387821301682762697

`Δ[A005728(n)]-A008683(n+1)`
-/

namespace A053139.P387821301682762697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008683 (n + 1)

end

end A053139.P387821301682762697

namespace A053139

/-- `Δ[A005728(n)]-A008683(n+1)` -/
def P387821301682762697.Spec : Prop :=
  ∀ n, P387821301682762697.a n = A053139 (n + 1)

end A053139

/-! ## A053139.P14870571136091142261

`A039649(n+1)-A007423(n+1)`
-/

namespace A053139.P14870571136091142261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - A007423 (n + 1)

end

end A053139.P14870571136091142261

namespace A053139

/-- `A039649(n+1)-A007423(n+1)` -/
def P14870571136091142261.Spec : Prop :=
  ∀ n, P14870571136091142261.a n = A053139 (n + 1)

end A053139

/-! ## A053139.P9879279636921539996

`A121048(n+1)-A076369(n+1)`
-/

namespace A053139.P9879279636921539996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) - A076369 (n + 1)

end

end A053139.P9879279636921539996

namespace A053139

/-- `A121048(n+1)-A076369(n+1)` -/
def P9879279636921539996.Spec : Prop :=
  ∀ n, P9879279636921539996.a n = A053139 (n + 1)

end A053139

/-! ## A053139.P6921090391480869073

`A279914(n+1)-A000203(n+1)`
-/

namespace A053139.P6921090391480869073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279914 (n + 1) - A000203 (n + 1)

end

end A053139.P6921090391480869073

namespace A053139

/-- `A279914(n+1)-A000203(n+1)` -/
def P6921090391480869073.Spec : Prop :=
  ∀ n, P6921090391480869073.a n = A053139 (n + 1)

end A053139

/-! ## A053139.P3780219003612157301

`A057859(n+1)-A249767(n+1)`
-/

namespace A053139.P3780219003612157301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057859 (n + 1) - A249767 (n + 1)

end

end A053139.P3780219003612157301

namespace A053139

/-- `A057859(n+1)-A249767(n+1)` -/
def P3780219003612157301.Spec : Prop :=
  ∀ n, P3780219003612157301.a n = A053139 (n + 1)

end A053139

/-! ## A053139.P14619803274866534079

`sqrt(A127473(n+1))-A008683(n+1)`
-/

namespace A053139.P14619803274866534079
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) - (A008683 (n + 1) : ℝ)

end

end A053139.P14619803274866534079

namespace A053139

/-- `sqrt(A127473(n+1))-A008683(n+1)` -/
def P14619803274866534079.Spec : Prop :=
  ∀ n, P14619803274866534079.a n = (A053139 (n + 1) : ℝ)

end A053139

/-! ## A053139.P395580191001129460

`A000010(n+1)+1-A007423(n+1)`
-/

namespace A053139.P395580191001129460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (1 - A007423 (n + 1))

end

end A053139.P395580191001129460

namespace A053139

/-- `A000010(n+1)+1-A007423(n+1)` -/
def P395580191001129460.Spec : Prop :=
  ∀ n, P395580191001129460.a n = A053139 (n + 1)

end A053139

/-! ## A053139.P12225888273200921890

`A039649(n+1)-(A008683(n+1)+1)`
-/

namespace A053139.P12225888273200921890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A008683 (n + 1) + 1)

end

end A053139.P12225888273200921890

namespace A053139

/-- `A039649(n+1)-(A008683(n+1)+1)` -/
def P12225888273200921890.Spec : Prop :=
  ∀ n, P12225888273200921890.a n = A053139 (n + 1)

end A053139

/-! ## A053139.P16341786753465000853

`A109606(n+1)+1-A008683(n+1)`
-/

namespace A053139.P16341786753465000853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (1 - A008683 (n + 1))

end

end A053139.P16341786753465000853

namespace A053139

/-- `A109606(n+1)+1-A008683(n+1)` -/
def P16341786753465000853.Spec : Prop :=
  ∀ n, P16341786753465000853.a n = A053139 (n + 1)

end A053139

/-! ## A053139.P16025335432115779229

`A109606(n+1)+2-A007423(n+1)`
-/

namespace A053139.P16025335432115779229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (2 - A007423 (n + 1))

end

end A053139.P16025335432115779229

namespace A053139

/-- `A109606(n+1)+2-A007423(n+1)` -/
def P16025335432115779229.Spec : Prop :=
  ∀ n, P16025335432115779229.a n = A053139 (n + 1)

end A053139

/-! ## A053139.P1994767311520939302

`A349137(2*n+1)-A008683(n+1)`
-/

namespace A053139.P1994767311520939302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1) - A008683 (n + 1)

end

end A053139.P1994767311520939302

namespace A053139

/-- `A349137(2*n+1)-A008683(n+1)` -/
def P1994767311520939302.Spec : Prop :=
  ∀ n, P1994767311520939302.a n = A053139 (n + 1)

end A053139

/-! ## A053139.P14172789666598088265

`n-(A219428(n+1)+A008683(n+1))`
-/

namespace A053139.P14172789666598088265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A219428 (n + 1) + A008683 (n + 1))

end

end A053139.P14172789666598088265

namespace A053139

/-- `n-(A219428(n+1)+A008683(n+1))` -/
def P14172789666598088265.Spec : Prop :=
  ∀ n, P14172789666598088265.a n = A053139 (n + 1)

end A053139

/-! ## A053139.P4934949374188517627

`∑{d}[n+1, A008683(#)*A087156((n+1)/#)]`
-/

namespace A053139.P4934949374188517627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A087156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053139.P4934949374188517627

namespace A053139

/-- `∑{d}[n+1, A008683(#)*A087156((n+1)/#)]` -/
def P4934949374188517627.Spec : Prop :=
  ∀ n, P4934949374188517627.a n = A053139 (n + 1)

end A053139

/-!
# A053141: a(0)=0, a(1)=2 then a(n) = a(n-2) + 2*sqrt(8*a(n-1)^2 + 8*a(n-1) + 1).

The programs for A053141, the canonical program `A053141.P8046980471257932056` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053141 has offset 0).

The definition of A053141 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053141.P8046980471257932056

`6*a(n-1)-a(n-2)+2` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053141

/-- `6*a(n-1)-a(n-2)+2` -/
def P8046980471257932056.Spec : Prop :=
  ∀ n, P8046980471257932056.a n = A053141 n

theorem P8046980471257932056.correct : P8046980471257932056.Spec := by
  intro n
  simp only [A053141]

end A053141

/-! ## A053141.P4225722984095832220

`A011900(n)-1`
-/

namespace A053141.P4225722984095832220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011900 n - 1

end

end A053141.P4225722984095832220

namespace A053141

/-- `A011900(n)-1` -/
def P4225722984095832220.Spec : Prop :=
  ∀ n, P4225722984095832220.a n = A053141 n

end A053141

/-! ## A053141.P7743039267974506587

`2*A053142(n)`
-/

namespace A053141.P7743039267974506587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053142 n

end

end A053141.P7743039267974506587

namespace A053141

/-- `2*A053142(n)` -/
def P7743039267974506587.Spec : Prop :=
  ∀ n, P7743039267974506587.a n = A053141 n

end A053141

/-! ## A053141.P1927996065279368861

`(A001653(n+1)-1)/2`
-/

namespace A053141.P1927996065279368861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001653 (n + 1) - 1 : ℚ) / 2

end

end A053141.P1927996065279368861

namespace A053141

/-- `(A001653(n+1)-1)/2` -/
def P1927996065279368861.Spec : Prop :=
  ∀ n, P1927996065279368861.a n = (A053141 n : ℚ)

end A053141

/-! ## A053141.P13233337111825533054

`(A000129(2*n+1)-1)/2`
-/

namespace A053141.P13233337111825533054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (2 * n + 1) - 1 : ℚ) / 2

end

end A053141.P13233337111825533054

namespace A053141

/-- `(A000129(2*n+1)-1)/2` -/
def P13233337111825533054.Spec : Prop :=
  ∀ n, P13233337111825533054.a n = (A053141 n : ℚ)

end A053141

/-! ## A053141.P7010888541097739946

`A001108(n+1)-A001109(n+1)`
-/

namespace A053141.P7010888541097739946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 (n + 1) - A001109 (n + 1)

end

end A053141.P7010888541097739946

namespace A053141

/-- `A001108(n+1)-A001109(n+1)` -/
def P7010888541097739946.Spec : Prop :=
  ∀ n, P7010888541097739946.a n = A053141 n

end A053141

/-! ## A053141.P6657932455289157769

`sqrt(2)*cosh((2*n+1)*log(1+sqrt(2)))/4-1/2`
-/

namespace A053141.P6657932455289157769
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 : ℝ) * Real.cosh ((2 * n + 1 : ℝ) * Real.log (1 + Real.sqrt (2 : ℝ))) / 4 - ((1 : ℚ) / 2 : ℝ)

end

end A053141.P6657932455289157769

namespace A053141

/-- `sqrt(2)*cosh((2*n+1)*log(1+sqrt(2)))/4-1/2` -/
def P6657932455289157769.Spec : Prop :=
  ∀ n, P6657932455289157769.a n = (A053141 n : ℝ)

end A053141

/-! ## A053141.P4515446006452249714

`a(n-1)*(a(n-1)-2)/a(n-2)` with `a(0)=0, a(1)=2, a(2)=14`
-/

namespace A053141.P4515446006452249714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2, 14] fun n a =>
  a (n - 1) * (a (n - 1) - 2) / a (n - 2)

end

end A053141.P4515446006452249714

namespace A053141

/-- `a(n-1)*(a(n-1)-2)/a(n-2)` -/
def P4515446006452249714.Spec : Prop :=
  ∀ n, P4515446006452249714.a n = (A053141 n : ℚ)

end A053141

/-! ## A053141.P5730432297022918428

`a(n-2)+2*sqrt(8*a(n-1)²+8*a(n-1)+1)` with `a(0)=0, a(1)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053141.P5730432297022918428
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + 2 * Real.sqrt (8 * a (n - 1) ^ 2 + 8 * a (n - 1) + 1)

end

end A053141.P5730432297022918428

namespace A053141

/-- `a(n-2)+2*sqrt(8*a(n-1)²+8*a(n-1)+1)` -/
def P5730432297022918428.Spec : Prop :=
  ∀ n, P5730432297022918428.a n = (A053141 n : ℝ)

end A053141

/-! ## A053141.P6784219562290688746

`∑[ogf(2x/(1-6x+x^2))]`
-/

namespace A053141.P6784219562290688746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053141.P6784219562290688746

namespace A053141

/-- `∑[ogf(2x/(1-6x+x^2))]` -/
def P6784219562290688746.Spec : Prop :=
  ∀ n, P6784219562290688746.a n = A053141 n

end A053141

/-! ## A053141.P7426370118678530836

`ogf(2x/(1-7x+7x^2-x^3))`
-/

namespace A053141.P7426370118678530836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -7, 7, -1] n

end

end A053141.P7426370118678530836

namespace A053141

/-- `ogf(2x/(1-7x+7x^2-x^3))` -/
def P7426370118678530836.Spec : Prop :=
  ∀ n, P7426370118678530836.a n = A053141 n

end A053141

/-! ## A053141.P9185373990476121853

`round(a(n-1)/(3-sqrt(8)))+2` with `a(0)=0`
-/

namespace A053141.P9185373990476121853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))) + 2

end

end A053141.P9185373990476121853

namespace A053141

/-- `round(a(n-1)/(3-sqrt(8)))+2` -/
def P9185373990476121853.Spec : Prop :=
  ∀ n, P9185373990476121853.a n = A053141 n

end A053141

/-! ## A053141.P1829078704747824318

`∑[round(a(n-1)/(3-sqrt(8)))]` with `a(0)=0, a(1)=2`
-/

namespace A053141.P1829078704747824318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053141.P1829078704747824318

namespace A053141

/-- `∑[round(a(n-1)/(3-sqrt(8)))]` -/
def P1829078704747824318.Spec : Prop :=
  ∀ n, P1829078704747824318.a n = A053141 n

end A053141

/-! ## A053141.P8190867832359411598

`floor(a(n-1)/(3-sqrt(8)))+3` with `a(0)=0, a(1)=2`
-/

namespace A053141.P8190867832359411598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋ + 3

end

end A053141.P8190867832359411598

namespace A053141

/-- `floor(a(n-1)/(3-sqrt(8)))+3` -/
def P8190867832359411598.Spec : Prop :=
  ∀ n, P8190867832359411598.a n = A053141 n

end A053141

/-! ## A053141.P11038813488787987956

`∑[6*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=2`
-/

namespace A053141.P11038813488787987956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  6 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053141.P11038813488787987956

namespace A053141

/-- `∑[6*a(n-1)-a(n-2)]` -/
def P11038813488787987956.Spec : Prop :=
  ∀ n, P11038813488787987956.a n = A053141 n

end A053141

/-! ## A053141.P1301286110270221495

`2-(a(n-2)-6*a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A053141.P1301286110270221495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 - (a (n - 2) - 6 * a (n - 1))

end

end A053141.P1301286110270221495

namespace A053141

/-- `2-(a(n-2)-6*a(n-1))` -/
def P1301286110270221495.Spec : Prop :=
  ∀ n, P1301286110270221495.a n = A053141 n

end A053141

/-! ## A053141.P7705277129184299643

`∑[A001542(n)]`
-/

namespace A053141.P7705277129184299643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053141.P7705277129184299643

namespace A053141

/-- `∑[A001542(n)]` -/
def P7705277129184299643.Spec : Prop :=
  ∀ n, P7705277129184299643.a n = A053141 n

end A053141

/-! ## A053141.P7461501600733503199

`A105635(2*n)`
-/

namespace A053141.P7461501600733503199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105635 (2 * n)

end

end A053141.P7461501600733503199

namespace A053141

/-- `A105635(2*n)` -/
def P7461501600733503199.Spec : Prop :=
  ∀ n, P7461501600733503199.a n = A053141 n

end A053141

/-! ## A053141.P4648889657402368792

`∑[1-A182188(n)]`
-/

namespace A053141.P4648889657402368792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A182188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053141.P4648889657402368792

namespace A053141

/-- `∑[1-A182188(n)]` -/
def P4648889657402368792.Spec : Prop :=
  ∀ n, P4648889657402368792.a n = A053141 n

end A053141

/-! ## A053141.P11912919258829312766

`∑[A182189(n)-1]`
-/

namespace A053141.P11912919258829312766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182189 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053141.P11912919258829312766

namespace A053141

/-- `∑[A182189(n)-1]` -/
def P11912919258829312766.Spec : Prop :=
  ∀ n, P11912919258829312766.a n = A053141 n

end A053141

/-!
# A053142: a(n) = A053141(n)/2.

The programs for A053142, the canonical program `A053142.P4190400071879757955` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053142 has offset 0).

The definition of A053142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053142.P4190400071879757955

`6*a(n-1)-a(n-2)+1` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053142

/-- `6*a(n-1)-a(n-2)+1` -/
def P4190400071879757955.Spec : Prop :=
  ∀ n, P4190400071879757955.a n = A053142 n

theorem P4190400071879757955.correct : P4190400071879757955.Spec := by
  intro n
  simp only [A053142]

end A053142

/-! ## A053142.P9443941114100751056

`A053141(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053142.P9443941114100751056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053141 n : ℚ) / 2

end

end A053142.P9443941114100751056

namespace A053142

/-- `A053141(n)/2` -/
def P9443941114100751056.Spec : Prop :=
  ∀ n, P9443941114100751056.a n = (A053142 n : ℚ)

end A053142

/-! ## A053142.P10906561095644248953

`(A001653(n+1)-1)/4`
-/

namespace A053142.P10906561095644248953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001653 (n + 1) - 1 : ℚ) / 4

end

end A053142.P10906561095644248953

namespace A053142

/-- `(A001653(n+1)-1)/4` -/
def P10906561095644248953.Spec : Prop :=
  ∀ n, P10906561095644248953.a n = (A053142 n : ℚ)

end A053142

/-! ## A053142.P6330207393587466554

`∑[ogf(x/(1-6x+x^2))]`
-/

namespace A053142.P6330207393587466554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053142.P6330207393587466554

namespace A053142

/-- `∑[ogf(x/(1-6x+x^2))]` -/
def P6330207393587466554.Spec : Prop :=
  ∀ n, P6330207393587466554.a n = A053142 n

end A053142

/-! ## A053142.P6984407873353166710

`ogf(x/(1-7x+7x^2-x^3))`
-/

namespace A053142.P6984407873353166710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -7, 7, -1] n

end

end A053142.P6984407873353166710

namespace A053142

/-- `ogf(x/(1-7x+7x^2-x^3))` -/
def P6984407873353166710.Spec : Prop :=
  ∀ n, P6984407873353166710.a n = A053142 n

end A053142

/-! ## A053142.P10830467028967570539

`round(a(n-1)/(3-sqrt(8)))+1` with `a(0)=0`
-/

namespace A053142.P10830467028967570539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))) + 1

end

end A053142.P10830467028967570539

namespace A053142

/-- `round(a(n-1)/(3-sqrt(8)))+1` -/
def P10830467028967570539.Spec : Prop :=
  ∀ n, P10830467028967570539.a n = A053142 n

end A053142

/-! ## A053142.P9134858731641261395

`∑[round(a(n-1)/(3-sqrt(8)))]` with `a(0)=0, a(1)=1`
-/

namespace A053142.P9134858731641261395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053142.P9134858731641261395

namespace A053142

/-- `∑[round(a(n-1)/(3-sqrt(8)))]` -/
def P9134858731641261395.Spec : Prop :=
  ∀ n, P9134858731641261395.a n = A053142 n

end A053142

/-! ## A053142.P16603530022505758705

`floor(a(n-1)/(3-sqrt(8)))+2` with `a(0)=0, a(1)=1`
-/

namespace A053142.P16603530022505758705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋ + 2

end

end A053142.P16603530022505758705

namespace A053142

/-- `floor(a(n-1)/(3-sqrt(8)))+2` -/
def P16603530022505758705.Spec : Prop :=
  ∀ n, P16603530022505758705.a n = A053142 n

end A053142

/-! ## A053142.P12149435586446115426

`∑[6*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A053142.P12149435586446115426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  6 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053142.P12149435586446115426

namespace A053142

/-- `∑[6*a(n-1)-a(n-2)]` -/
def P12149435586446115426.Spec : Prop :=
  ∀ n, P12149435586446115426.a n = A053142 n

end A053142

/-! ## A053142.P3217072532585101703

`1-(a(n-2)-6*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A053142.P3217072532585101703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - (a (n - 2) - 6 * a (n - 1))

end

end A053142.P3217072532585101703

namespace A053142

/-- `1-(a(n-2)-6*a(n-1))` -/
def P3217072532585101703.Spec : Prop :=
  ∀ n, P3217072532585101703.a n = A053142 n

end A053142

/-! ## A053142.P1832221431696557984

`∑[A001109(n)]`
-/

namespace A053142.P1832221431696557984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053142.P1832221431696557984

namespace A053142

/-- `∑[A001109(n)]` -/
def P1832221431696557984.Spec : Prop :=
  ∀ n, P1832221431696557984.a n = A053142 n

end A053142

/-! ## A053142.P2120707735341675328

`floor(A011900(n)/2)`
-/

namespace A053142.P2120707735341675328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011900 n : ℚ) / 2⌋

end

end A053142.P2120707735341675328

namespace A053142

/-- `floor(A011900(n)/2)` -/
def P2120707735341675328.Spec : Prop :=
  ∀ n, P2120707735341675328.a n = A053142 n

end A053142

/-! ## A053142.P12244981636780817738

`∑[A001542(n)/2]`
-/

namespace A053142.P12244981636780817738
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001542 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053142.P12244981636780817738

namespace A053142

/-- `∑[A001542(n)/2]` -/
def P12244981636780817738.Spec : Prop :=
  ∀ n, P12244981636780817738.a n = (A053142 n : ℚ)

end A053142

/-! ## A053142.P659644466229947273

`A105635(2*n)/2`
-/

namespace A053142.P659644466229947273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105635 (2 * n) : ℚ) / 2

end

end A053142.P659644466229947273

namespace A053142

/-- `A105635(2*n)/2` -/
def P659644466229947273.Spec : Prop :=
  ∀ n, P659644466229947273.a n = (A053142 n : ℚ)

end A053142

/-! ## A053142.P21318932512731882

`∑[floor(A182189(n)/2)]`
-/

namespace A053142.P21318932512731882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182189 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053142.P21318932512731882

namespace A053142

/-- `∑[floor(A182189(n)/2)]` -/
def P21318932512731882.Spec : Prop :=
  ∀ n, P21318932512731882.a n = A053142 n

end A053142

/-! ## A053142.P8092779659490341225

`floor(A116404(2*n)/2)`
-/

namespace A053142.P8092779659490341225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A116404 (2 * n) : ℚ) / 2⌋

end

end A053142.P8092779659490341225

namespace A053142

/-- `floor(A116404(2*n)/2)` -/
def P8092779659490341225.Spec : Prop :=
  ∀ n, P8092779659490341225.a n = A053142 n

end A053142

/-! ## A053142.P16293273041491320442

`∑[A204512(2*(n+1))]`
-/

namespace A053142.P16293273041491320442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204512 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053142.P16293273041491320442

namespace A053142

/-- `∑[A204512(2*(n+1))]` -/
def P16293273041491320442.Spec : Prop :=
  ∀ n, P16293273041491320442.a n = A053142 n

end A053142

/-! ## A053142.P5280605541146402146

`∑[A152118(2*n)]-1`
-/

namespace A053142.P5280605541146402146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152118 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A053142.P5280605541146402146

namespace A053142

/-- `∑[A152118(2*n)]-1` -/
def P5280605541146402146.Spec : Prop :=
  ∀ n, P5280605541146402146.a n = A053142 n

end A053142

/-! ## A053142.P13000052359216348059

`∑[(1-A182188(n))/2]`
-/

namespace A053142.P13000052359216348059
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A182188 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053142.P13000052359216348059

namespace A053142

/-- `∑[(1-A182188(n))/2]` -/
def P13000052359216348059.Spec : Prop :=
  ∀ n, P13000052359216348059.a n = (A053142 n : ℚ)

end A053142

/-! ## A053142.P14600416417024953874

`∑[A000129(2*n)/2]`
-/

namespace A053142.P14600416417024953874
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053142.P14600416417024953874

namespace A053142

/-- `∑[A000129(2*n)/2]` -/
def P14600416417024953874.Spec : Prop :=
  ∀ n, P14600416417024953874.a n = (A053142 n : ℚ)

end A053142

/-!
# A053143: Smallest square divisible by n.

The programs for A053143, the canonical program `A053143.P2973590149006615306` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053143 has offset 1).

The definition of A053143 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053143.P2973590149006615306

`A019554(n+1)²`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053143

/-- `A019554(n+1)²` -/
def P2973590149006615306.Spec : Prop :=
  ∀ n, P2973590149006615306.a n = A053143 (n + 1)

theorem P2973590149006615306.correct : P2973590149006615306.Spec := by
  intro n
  simp only [A053143, Nat.add_sub_cancel]

end A053143

/-! ## A053143.P16150279758496967784

`(n+1)*A007913(n+1)`
-/

namespace A053143.P16150279758496967784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007913 (n + 1)

end

end A053143.P16150279758496967784

namespace A053143

/-- `(n+1)*A007913(n+1)` -/
def P16150279758496967784.Spec : Prop :=
  ∀ n, P16150279758496967784.a n = A053143 (n + 1)

end A053143

/-! ## A053143.P12309142235002994839

`((n+1)/A000188(n+1))²`
-/

namespace A053143.P12309142235002994839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (A000188 (n + 1) : ℚ)) ^ 2

end

end A053143.P12309142235002994839

namespace A053143

/-- `((n+1)/A000188(n+1))²` -/
def P12309142235002994839.Spec : Prop :=
  ∀ n, P12309142235002994839.a n = (A053143 (n + 1) : ℚ)

end A053143

/-! ## A053143.P6840023909304308159

`(n+1)²/A008833(n+1)`
-/

namespace A053143.P6840023909304308159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A008833 (n + 1) : ℚ)

end

end A053143.P6840023909304308159

namespace A053143

/-- `(n+1)²/A008833(n+1)` -/
def P6840023909304308159.Spec : Prop :=
  ∀ n, P6840023909304308159.a n = (A053143 (n + 1) : ℚ)

end A053143

/-! ## A053143.P18371444974502508788

`(n+1)*Δ[A069891(n)]`
-/

namespace A053143.P18371444974502508788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A053143.P18371444974502508788

namespace A053143

/-- `(n+1)*Δ[A069891(n)]` -/
def P18371444974502508788.Spec : Prop :=
  ∀ n, P18371444974502508788.a n = A053143 (n + 1)

end A053143

/-! ## A053143.P17739674528291157420

`∑{d}[n+1, A346612(#)]²`
-/

namespace A053143.P17739674528291157420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A346612 d) ^ 2

end

end A053143.P17739674528291157420

namespace A053143

/-- `∑{d}[n+1, A346612(#)]²` -/
def P17739674528291157420.Spec : Prop :=
  ∀ n, P17739674528291157420.a n = A053143 (n + 1)

end A053143

/-! ## A053143.P11074506797041320916

`lcm(n+1, A011262(n+1))`
-/

namespace A053143.P11074506797041320916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A011262 (n + 1))

end

end A053143.P11074506797041320916

namespace A053143

/-- `lcm(n+1, A011262(n+1))` -/
def P11074506797041320916.Spec : Prop :=
  ∀ n, (P11074506797041320916.a n : ℤ) = A053143 (n + 1)

end A053143

/-! ## A053143.P18321985784840616404

`(1-A254732(n+1)+n)²`
-/

namespace A053143.P18321985784840616404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A254732 (n + 1) + (n : ℤ)) ^ 2

end

end A053143.P18321985784840616404

namespace A053143

/-- `(1-A254732(n+1)+n)²` -/
def P18321985784840616404.Spec : Prop :=
  ∀ n, P18321985784840616404.a n = A053143 (n + 1)

end A053143

/-! ## A053143.P2349568133868636655

`(n+1)*sqrt(A055491(n+1))`
-/

namespace A053143.P2349568133868636655
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A055491 (n + 1) : ℝ)

end

end A053143.P2349568133868636655

namespace A053143

/-- `(n+1)*sqrt(A055491(n+1))` -/
def P2349568133868636655.Spec : Prop :=
  ∀ n, P2349568133868636655.a n = (A053143 (n + 1) : ℝ)

end A053143

/-! ## A053143.P7816124892721122473

`gcd(n+1, A056134(n+1))²`
-/

namespace A053143.P7816124892721122473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A056134 (n + 1)) ^ 2

end

end A053143.P7816124892721122473

namespace A053143

/-- `gcd(n+1, A056134(n+1))²` -/
def P7816124892721122473.Spec : Prop :=
  ∀ n, (P7816124892721122473.a n : ℤ) = A053143 (n + 1)

end A053143

/-! ## A053143.P8310504119315123977

`A083482(n)²/a(n-1)` with `a(0)=1`
-/

namespace A053143.P8310504119315123977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A083482 n ^ 2 : ℚ) / a (n - 1)

end

end A053143.P8310504119315123977

namespace A053143

/-- `A083482(n)²/a(n-1)` -/
def P8310504119315123977.Spec : Prop :=
  ∀ n, P8310504119315123977.a n = (A053143 (n + 1) : ℚ)

end A053143

/-! ## A053143.P5032979776569578940

`(n+1)²²/A059479(n+1)`
-/

namespace A053143.P5032979776569578940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℚ) / (A059479 (n + 1) : ℚ)

end

end A053143.P5032979776569578940

namespace A053143

/-- `(n+1)²²/A059479(n+1)` -/
def P5032979776569578940.Spec : Prop :=
  ∀ n, P5032979776569578940.a n = (A053143 (n + 1) : ℚ)

end A053143

/-! ## A053143.P6514908355575507541

`((n+1)²/A355264(n+1))²`
-/

namespace A053143.P6514908355575507541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℚ) / (A355264 (n + 1) : ℚ)) ^ 2

end

end A053143.P6514908355575507541

namespace A053143

/-- `((n+1)²/A355264(n+1))²` -/
def P6514908355575507541.Spec : Prop :=
  ∀ n, P6514908355575507541.a n = (A053143 (n + 1) : ℚ)

end A053143

/-! ## A053143.P10604918015817952519

`(n+1)²/(A336642(n+1)+1)`
-/

namespace A053143.P10604918015817952519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A336642 (n + 1) + 1 : ℚ)

end

end A053143.P10604918015817952519

namespace A053143

/-- `(n+1)²/(A336642(n+1)+1)` -/
def P10604918015817952519.Spec : Prop :=
  ∀ n, P10604918015817952519.a n = (A053143 (n + 1) : ℚ)

end A053143

/-! ## A053143.P6712030988678327824

`(n+1)*(n+1-A326128(n+1))`
-/

namespace A053143.P6712030988678327824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - A326128 (n + 1))

end

end A053143.P6712030988678327824

namespace A053143

/-- `(n+1)*(n+1-A326128(n+1))` -/
def P6712030988678327824.Spec : Prop :=
  ∀ n, P6712030988678327824.a n = A053143 (n + 1)

end A053143

/-! ## A053143.P10470253705673570597

`A011262(A350390(n+1))`
-/

namespace A053143.P10470253705673570597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (A350390 (n + 1)).toNat

end

end A053143.P10470253705673570597

namespace A053143

/-- `A011262(A350390(n+1))` -/
def P10470253705673570597.Spec : Prop :=
  ∀ n, P10470253705673570597.a n = A053143 (n + 1)

end A053143

/-! ## A053143.P13932002450307328391

`A038388(A186646(n+1))²`
-/

namespace A053143.P13932002450307328391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038388 (A186646 (n + 1)).toNat ^ 2

end

end A053143.P13932002450307328391

namespace A053143

/-- `A038388(A186646(n+1))²` -/
def P13932002450307328391.Spec : Prop :=
  ∀ n, P13932002450307328391.a n = A053143 (n + 1)

end A053143

/-! ## A053143.P8036713028163627406

`A008833(n+1)*A055491(n+1)`
-/

namespace A053143.P8036713028163627406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) * A055491 (n + 1)

end

end A053143.P8036713028163627406

namespace A053143

/-- `A008833(n+1)*A055491(n+1)` -/
def P8036713028163627406.Spec : Prop :=
  ∀ n, P8036713028163627406.a n = A053143 (n + 1)

end A053143

/-! ## A053143.P3090038669113702200

`A055229(n+1)*A197863(n+1)`
-/

namespace A053143.P3090038669113702200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (n + 1) * A197863 (n + 1)

end

end A053143.P3090038669113702200

namespace A053143

/-- `A055229(n+1)*A197863(n+1)` -/
def P3090038669113702200.Spec : Prop :=
  ∀ n, P3090038669113702200.a n = A053143 (n + 1)

end A053143

/-! ## A053143.P3741893460339576787

`A007947(n+1)*A350390(n+1)`
-/

namespace A053143.P3741893460339576787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A350390 (n + 1)

end

end A053143.P3741893460339576787

namespace A053143

/-- `A007947(n+1)*A350390(n+1)` -/
def P3741893460339576787.Spec : Prop :=
  ∀ n, P3741893460339576787.a n = A053143 (n + 1)

end A053143

/-!
# A053144: Cototient of the n-th primorial number.

The programs for A053144, the canonical program `A053144.P18068775638831871522` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053144 has offset 1).

The definition of A053144 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053144.P18068775638831871522

`A002110(n+1)-A005867(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053144

/-- `A002110(n+1)-A005867(n+1)` -/
def P18068775638831871522.Spec : Prop :=
  ∀ n, P18068775638831871522.a n = A053144 (n + 1)

theorem P18068775638831871522.correct : P18068775638831871522.Spec := by
  intro n
  simp only [A053144, Nat.add_sub_cancel]

end A053144

/-! ## A053144.P5639288483032117860

`a(n-1)*A000040(n+1)+A005867(n)` with `a(0)=1`
-/

namespace A053144.P5639288483032117860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000040 (n + 1) + A005867 n

end

end A053144.P5639288483032117860

namespace A053144

/-- `a(n-1)*A000040(n+1)+A005867(n)` -/
def P5639288483032117860.Spec : Prop :=
  ∀ n, P5639288483032117860.a n = A053144 (n + 1)

end A053144

/-! ## A053144.P13442022300465952222

`(1/A000040(n+2)-A038110(n+2)/A038111(n+2))*A002110(n+2)`
-/

namespace A053144.P13442022300465952222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 / (A000040 (n + 2) : ℚ) - (A038110 (n + 2) : ℚ) / (A038111 (n + 2) : ℚ)) * (A002110 (n + 2) : ℚ)

end

end A053144.P13442022300465952222

namespace A053144

/-- `(1/A000040(n+2)-A038110(n+2)/A038111(n+2))*A002110(n+2)` -/
def P13442022300465952222.Spec : Prop :=
  ∀ n, P13442022300465952222.a n = (A053144 (n + 1) : ℚ)

end A053144

/-! ## A053144.P16891800567120860360

`A161527(n+1)*A002110(n+1)/A060753(n+2)`
-/

namespace A053144.P16891800567120860360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161527 (n + 1) * A002110 (n + 1) : ℚ) / (A060753 (n + 2) : ℚ)

end

end A053144.P16891800567120860360

namespace A053144

/-- `A161527(n+1)*A002110(n+1)/A060753(n+2)` -/
def P16891800567120860360.Spec : Prop :=
  ∀ n, P16891800567120860360.a n = (A053144 (n + 1) : ℚ)

end A053144

/-! ## A053144.P4522957029788170810

`A057858(n+1)+n+1`
-/

namespace A053144.P4522957029788170810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057858 (n + 1) + (n + 1 : ℤ)

end

end A053144.P4522957029788170810

namespace A053144

/-- `A057858(n+1)+n+1` -/
def P4522957029788170810.Spec : Prop :=
  ∀ n, P4522957029788170810.a n = A053144 (n + 1)

theorem P4522957029788170810.correct : P4522957029788170810.Spec := by
  intro n
  simp only [A053144, Nat.add_sub_cancel, A053144.P4522957029788170810.a, A053144.P18068775638831871522.a, A002110, A002110.P13704446489392701398.a, A005867, A005867.P647413364839099534.a, A057858, A057858.P5036399590073208024.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A057857, A057857.P7925582756686219733.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053144

/-! ## A053144.P18177293535660839882

`A058250(n+1)*A161527(n+1)`
-/

namespace A053144.P18177293535660839882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058250 (n + 1) * A161527 (n + 1)

end

end A053144.P18177293535660839882

namespace A053144

/-- `A058250(n+1)*A161527(n+1)` -/
def P18177293535660839882.Spec : Prop :=
  ∀ n, P18177293535660839882.a n = A053144 (n + 1)

end A053144

/-! ## A053144.P14130160515521096724

`A143293(n+1)-(A143293(n)+A005867(n+1))`
-/

namespace A053144.P14130160515521096724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143293 (n + 1) - (A143293 n + A005867 (n + 1))

end

end A053144.P14130160515521096724

namespace A053144

/-- `A143293(n+1)-(A143293(n)+A005867(n+1))` -/
def P14130160515521096724.Spec : Prop :=
  ∀ n, P14130160515521096724.a n = A053144 (n + 1)

end A053144

/-! ## A053144.P6323007708997107144

`A038111(n+1)*A058250(n)-A005867(n+1)`
-/

namespace A053144.P6323007708997107144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038111 (n + 1) * A058250 n - A005867 (n + 1)

end

end A053144.P6323007708997107144

namespace A053144

/-- `A038111(n+1)*A058250(n)-A005867(n+1)` -/
def P6323007708997107144.Spec : Prop :=
  ∀ n, P6323007708997107144.a n = A053144 (n + 1)

end A053144

/-! ## A053144.P18157656211696771288

`A070826(n+1)+A070826(n+1)-A005867(n+1)`
-/

namespace A053144.P18157656211696771288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070826 (n + 1) + (A070826 (n + 1) - A005867 (n + 1))

end

end A053144.P18157656211696771288

namespace A053144

/-- `A070826(n+1)+A070826(n+1)-A005867(n+1)` -/
def P18157656211696771288.Spec : Prop :=
  ∀ n, P18157656211696771288.a n = A053144 (n + 1)

end A053144

/-! ## A053144.P14129712529582501495

`A002110(n+1)-A078558(n+1)*A078560(n+1)`
-/

namespace A053144.P14129712529582501495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - A078558 (n + 1) * A078560 (n + 1)

end

end A053144.P14129712529582501495

namespace A053144

/-- `A002110(n+1)-A078558(n+1)*A078560(n+1)` -/
def P14129712529582501495.Spec : Prop :=
  ∀ n, P14129712529582501495.a n = A053144 (n + 1)

end A053144

/-!
# A053145: When cototient function (A051953) is iterated with initial value A002110(n), a(n) = number of iterations required to reach the stationary value=0.

The programs for A053145, there is no canonical definition to state claims against.
-/

/-! ## A053145.P9083030026909404097

`A098202(n+1)-1`
-/

namespace A053145.P9083030026909404097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098202 (n + 1) - 1

end

end A053145.P9083030026909404097

/-! ## A053145.P10382149946532242424

`A023443(A098202(n+1))`
-/

namespace A053145.P10382149946532242424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A098202 (n + 1)).toNat

end

end A053145.P10382149946532242424

/-! ## A053145.P17246812205720466968

`A023444(A098202(n+1)+1)`
-/

namespace A053145.P17246812205720466968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A098202 (n + 1) + 1).toNat

end

end A053145.P17246812205720466968

/-! ## A053145.P8038805920396028256

`A188510(A004771(n))+A098202(n+1)`
-/

namespace A053145.P8038805920396028256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (A004771 n).toNat + A098202 (n + 1)

end

end A053145.P8038805920396028256

/-! ## A053145.P1491173183886345657

`A362927(A304042(n))+A098202(n+1)`
-/

namespace A053145.P1491173183886345657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362927 (A304042 n).toNat + A098202 (n + 1)

end

end A053145.P1491173183886345657

/-! ## A053145.P5612649056660919831

`A365428(A002476(n+1))+A098202(n+1)`
-/

namespace A053145.P5612649056660919831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365428 (A002476 (n + 1)).toNat + A098202 (n + 1)

end

end A053145.P5612649056660919831

/-! ## A053145.P5018500288146411567

`A352871(A066099(n+1))+A098202(n+1)`
-/

namespace A053145.P5018500288146411567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352871 (A066099 (n + 1)).toNat + A098202 (n + 1)

end

end A053145.P5018500288146411567

/-! ## A053145.P16356602450072010543

`A352871(A070077(n+1))+A098202(n+1)`
-/

namespace A053145.P16356602450072010543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352871 (A070077 (n + 1)).toNat + A098202 (n + 1)

end

end A053145.P16356602450072010543

/-! ## A053145.P6533623068608265412

`A352871(A112798(n+2))+A098202(n+1)`
-/

namespace A053145.P6533623068608265412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352871 (A112798 (n + 2)).toNat + A098202 (n + 1)

end

end A053145.P6533623068608265412

/-!
# A053146: When cototient function (A051953) is iterated with initial value A002110(n), a(n) = number of iterates that are not powers of 2.

The programs for A053146, there is no canonical definition to state claims against.
-/

/-! ## A053146.P737009368884417458

`A053145(n+1)-A053148(n+1)`
-/

namespace A053146.P737009368884417458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053145 (n + 1) - A053148 (n + 1)

end

end A053146.P737009368884417458

/-! ## A053146.P11541954273538100668

`A053145(n+1)-log2(A053147(n+1))`
-/

namespace A053146.P11541954273538100668
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053145 (n + 1) : ℝ) - Real.logb 2 (A053147 (n + 1) : ℝ)

end

end A053146.P11541954273538100668

/-! ## A053146.P1413907918050991552

`A053145(n+1)+A001478(A053148(n+1)+1)+1`
-/

namespace A053146.P1413907918050991552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053145 (n + 1) + A001478 (A053148 (n + 1) + 1).toNat + 1

end

end A053146.P1413907918050991552

/-! ## A053146.P14772879199546984941

`A053145(n+1)-val(A053147(n+1), A020639(2*(n+1)))`
-/

namespace A053146.P14772879199546984941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053145 (n + 1) - (SequenceMachineLib.valuation (A053147 (n + 1)).toNat (A020639 (2 * (n + 1))).toNat : ℤ)

end

end A053146.P14772879199546984941

/-! ## A053146.P9062567577572941979

`A053145(n+1)-val(A053147(n+1), 2)%A000040(n+1)`
-/

namespace A053146.P9062567577572941979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053145 (n + 1) - Int.tmod (SequenceMachineLib.valuation (A053147 (n + 1)).toNat 2 : ℤ) (A000040 (n + 1))

end

end A053146.P9062567577572941979

/-!
# A053147: When cototient function (A051953) is iterated with initial value A002110(n), a(n) is the value of first (largest) power of 2 which appears in the iteration.

The programs for A053147, there is no canonical definition to state claims against.
-/

/-! ## A053147.P11563464806945763084

`2^A053148(n+1)`
-/

namespace A053147.P11563464806945763084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A053148 (n + 1) : ℤ)

end

end A053147.P11563464806945763084

/-! ## A053147.P2935372002339716286

`A000079(A053148(n+1))`
-/

namespace A053147.P2935372002339716286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A053148 (n + 1)).toNat

end

end A053147.P2935372002339716286

/-! ## A053147.P2679886501901121087

`A011782(A053148(n+1)+1)`
-/

namespace A053147.P2679886501901121087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A053148 (n + 1) + 1).toNat

end

end A053147.P2679886501901121087

/-! ## A053147.P4337604293074469530

`A131577(A053148(n+1)+1)`
-/

namespace A053147.P4337604293074469530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A053148 (n + 1) + 1).toNat

end

end A053147.P4337604293074469530

/-! ## A053147.P9896112462697932591

`A166444(A053148(n+1)+2)`
-/

namespace A053147.P9896112462697932591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A053148 (n + 1) + 2).toNat

end

end A053147.P9896112462697932591

/-!
# A053148: When cototient function (A051953) is iterated with initial value A002110(n), a(n) = exponent of the largest power of 2 which appears in the iteration.

The programs for A053148, there is no canonical definition to state claims against.
-/

/-! ## A053148.P3440706904335592179

`log2(A053147(n+1))`
-/

namespace A053148.P3440706904335592179
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A053147 (n + 1) : ℝ)

end

end A053148.P3440706904335592179

/-! ## A053148.P4430922731478164847

`val(A053147(A000027(n+1)), 2)`
-/

namespace A053148.P4430922731478164847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A053147 (A000027 (n + 1)).toNat).toNat 2

end

end A053148.P4430922731478164847

/-! ## A053148.P3730478064469465139

`val(A053147(A110654(2*(n+1))), 2)`
-/

namespace A053148.P3730478064469465139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A053147 (A110654 (2 * (n + 1))).toNat).toNat 2

end

end A053148.P3730478064469465139

/-! ## A053148.P17527257760937408080

`A053145(n+1)-A053146(n+1)`
-/

namespace A053148.P17527257760937408080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053145 (n + 1) - A053146 (n + 1)

end

end A053148.P17527257760937408080

/-!
# A053149: Smallest cube divisible by n.

The programs for A053149, the canonical program `A053149.P4125189005957149122` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053149 has offset 1).

The definition of A053149 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048798, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053149.P4125189005957149122

`(n+1)*A048798(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A053149

/-- `(n+1)*A048798(n+1)` -/
def P4125189005957149122.Spec : Prop :=
  ∀ n, P4125189005957149122.a n = A053149 (n + 1)

theorem P4125189005957149122.correct : P4125189005957149122.Spec := by
  intro n
  simp only [A053149, Nat.add_sub_cancel]

end A053149

/-! ## A053149.P3503301553888103436

`((n+1)/A000189(n+1))^3`
-/

namespace A053149.P3503301553888103436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (A000189 (n + 1) : ℚ)) ^ 3

end

end A053149.P3503301553888103436

namespace A053149

/-- `((n+1)/A000189(n+1))^3` -/
def P3503301553888103436.Spec : Prop :=
  ∀ n, P3503301553888103436.a n = (A053149 (n + 1) : ℚ)

end A053149

/-! ## A053149.P7049006152123554297

`A008834(n+1)*A019554(A050985(n+1))^3`
-/

namespace A053149.P7049006152123554297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008834 (n + 1) * A019554 (A050985 (n + 1)).toNat ^ 3

end

end A053149.P7049006152123554297

namespace A053149

/-- `A008834(n+1)*A019554(A050985(n+1))^3` -/
def P7049006152123554297.Spec : Prop :=
  ∀ n, P7049006152123554297.a n = A053149 (n + 1)

end A053149

/-! ## A053149.P7860473794816617705

`A019555(n+1)^3`
-/

namespace A053149.P7860473794816617705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (n + 1) ^ 3

end

end A053149.P7860473794816617705

namespace A053149

/-- `A019555(n+1)^3` -/
def P7860473794816617705.Spec : Prop :=
  ∀ n, P7860473794816617705.a n = A053149 (n + 1)

end A053149

/-! ## A053149.P11635234984959411394

`(A254733(n+1)-(n+1))^3`
-/

namespace A053149.P11635234984959411394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254733 (n + 1) - (n + 1 : ℤ)) ^ 3

end

end A053149.P11635234984959411394

namespace A053149

/-- `(A254733(n+1)-(n+1))^3` -/
def P11635234984959411394.Spec : Prop :=
  ∀ n, P11635234984959411394.a n = A053149 (n + 1)

end A053149

/-! ## A053149.P2063465311465699953

`A000578(A019555(n+1))`
-/

namespace A053149.P2063465311465699953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A019555 (n + 1)).toNat

end

end A053149.P2063465311465699953

namespace A053149

/-- `A000578(A019555(n+1))` -/
def P2063465311465699953.Spec : Prop :=
  ∀ n, P2063465311465699953.a n = A053149 (n + 1)

end A053149

/-! ## A053149.P4015472712986008237

`(n+1)*A011262(A050985(n+1))`
-/

namespace A053149.P4015472712986008237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A011262 (A050985 (n + 1)).toNat

end

end A053149.P4015472712986008237

namespace A053149

/-- `(n+1)*A011262(A050985(n+1))` -/
def P4015472712986008237.Spec : Prop :=
  ∀ n, P4015472712986008237.a n = A053149 (n + 1)

end A053149

/-! ## A053149.P15872918379602355746

`A008834(n+1)*A056551(n+1)`
-/

namespace A053149.P15872918379602355746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008834 (n + 1) * A056551 (n + 1)

end

end A053149.P15872918379602355746

namespace A053149

/-- `A008834(n+1)*A056551(n+1)` -/
def P15872918379602355746.Spec : Prop :=
  ∀ n, P15872918379602355746.a n = A053149 (n + 1)

end A053149

/-! ## A053149.P2960250393915961534

`A050985(n+1)*A159253(n+1)`
-/

namespace A053149.P2960250393915961534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1) * A159253 (n + 1)

end

end A053149.P2960250393915961534

namespace A053149

/-- `A050985(n+1)*A159253(n+1)` -/
def P2960250393915961534.Spec : Prop :=
  ∀ n, P2960250393915961534.a n = A053149 (n + 1)

end A053149

/-! ## A053149.P1447761131969240409

`A000578((n+1)/A000189(n+1))`
-/

namespace A053149.P1447761131969240409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000189 (n + 1) : ℚ))).toNat

end

end A053149.P1447761131969240409

namespace A053149

/-- `A000578((n+1)/A000189(n+1))` -/
def P1447761131969240409.Spec : Prop :=
  ∀ n, P1447761131969240409.a n = A053149 (n + 1)

end A053149

/-! ## A053149.P16687692624874834845

`A159253(n+1)/A008834(n+1)*(n+1)`
-/

namespace A053149.P16687692624874834845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159253 (n + 1) : ℚ) / (A008834 (n + 1) : ℚ) * (n + 1 : ℚ)

end

end A053149.P16687692624874834845

namespace A053149

/-- `A159253(n+1)/A008834(n+1)*(n+1)` -/
def P16687692624874834845.Spec : Prop :=
  ∀ n, P16687692624874834845.a n = (A053149 (n + 1) : ℚ)

end A053149

/-! ## A053149.P7786410703218510577

`A000578(A056552(n+1))*A008834(n+1)`
-/

namespace A053149.P7786410703218510577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A056552 (n + 1)).toNat * A008834 (n + 1)

end

end A053149.P7786410703218510577

namespace A053149

/-- `A000578(A056552(n+1))*A008834(n+1)` -/
def P7786410703218510577.Spec : Prop :=
  ∀ n, P7786410703218510577.a n = A053149 (n + 1)

end A053149

/-! ## A053149.P4909300489666864867

`A000578(A053150(n+1)*A056552(n+1))`
-/

namespace A053149.P4909300489666864867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A053150 (n + 1) * A056552 (n + 1)).toNat

end

end A053149.P4909300489666864867

namespace A053149

/-- `A000578(A053150(n+1)*A056552(n+1))` -/
def P4909300489666864867.Spec : Prop :=
  ∀ n, P4909300489666864867.a n = A053149 (n + 1)

end A053149

/-! ## A053149.P14671986667913011473

`A000578(A053150(n+1))*A056551(n+1)`
-/

namespace A053149.P14671986667913011473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A053150 (n + 1)).toNat * A056551 (n + 1)

end

end A053149.P14671986667913011473

namespace A053149

/-- `A000578(A053150(n+1))*A056551(n+1)` -/
def P14671986667913011473.Spec : Prop :=
  ∀ n, P14671986667913011473.a n = A053149 (n + 1)

end A053149

/-! ## A053149.P2981936291286933351

`A008834(n+1)*A356192(A050985(n+1))`
-/

namespace A053149.P2981936291286933351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008834 (n + 1) * A356192 (A050985 (n + 1)).toNat

end

end A053149.P2981936291286933351

namespace A053149

/-- `A008834(n+1)*A356192(A050985(n+1))` -/
def P2981936291286933351.Spec : Prop :=
  ∀ n, P2981936291286933351.a n = A053149 (n + 1)

end A053149

/-! ## A053149.P10005927787684566537

`A048798(A000027(n+1))+lcm(n, A048798(n+1))`
-/

namespace A053149.P10005927787684566537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (A000027 (n + 1)).toNat + (Int.lcm (n : ℤ) (A048798 (n + 1)) : ℤ)

end

end A053149.P10005927787684566537

namespace A053149

/-- `A048798(A000027(n+1))+lcm(n, A048798(n+1))` -/
def P10005927787684566537.Spec : Prop :=
  ∀ n, P10005927787684566537.a n = A053149 (n + 1)

end A053149

/-! ## A053149.P5426242104521114187

`A008833(A019555(n+1)²)*A019555(n+1)`
-/

namespace A053149.P5426242104521114187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A019555 (n + 1) ^ 2).toNat * A019555 (n + 1)

end

end A053149.P5426242104521114187

namespace A053149

/-- `A008833(A019555(n+1)²)*A019555(n+1)` -/
def P5426242104521114187.Spec : Prop :=
  ∀ n, P5426242104521114187.a n = A053149 (n + 1)

end A053149

/-! ## A053149.P894784994090573446

`A008833(A019554(n+1)*A019555(n+1))*A019555(n+1)`
-/

namespace A053149.P894784994090573446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A019554 (n + 1) * A019555 (n + 1)).toNat * A019555 (n + 1)

end

end A053149.P894784994090573446

namespace A053149

/-- `A008833(A019554(n+1)*A019555(n+1))*A019555(n+1)` -/
def P894784994090573446.Spec : Prop :=
  ∀ n, P894784994090573446.a n = A053149 (n + 1)

end A053149

/-! ## A053149.P14983582380456935937

`A019555(n+1)*A056623(A019555(n+1)²)`
-/

namespace A053149.P14983582380456935937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (n + 1) * A056623 (A019555 (n + 1) ^ 2).toNat

end

end A053149.P14983582380456935937

namespace A053149

/-- `A019555(n+1)*A056623(A019555(n+1)²)` -/
def P14983582380456935937.Spec : Prop :=
  ∀ n, P14983582380456935937.a n = A053149 (n + 1)

end A053149

/-! ## A053149.P8593685303148979663

`A019555(n+1)*A057521(A019555(n+1)²)`
-/

namespace A053149.P8593685303148979663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (n + 1) * A057521 (A019555 (n + 1) ^ 2).toNat

end

end A053149.P8593685303148979663

namespace A053149

/-- `A019555(n+1)*A057521(A019555(n+1)²)` -/
def P8593685303148979663.Spec : Prop :=
  ∀ n, P8593685303148979663.a n = A053149 (n + 1)

end A053149

/-!
# A053150: Cube root of largest cube dividing n.

The programs for A053150, the canonical program `A053150.P12506958821739849534` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053150 has offset 1).

The definition of A053150 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A000189, A050985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053150.P7176680855978458723

`A008834(n+1)^(1/3)`
-/

namespace A053150.P7176680855978458723
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008834 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A053150.P7176680855978458723

namespace A053150

/-- `A008834(n+1)^(1/3)` -/
def P7176680855978458723.Spec : Prop :=
  ∀ n, P7176680855978458723.a n = (A053150 (n + 1) : ℝ)

end A053150

/-! ## A053150.P12506958821739849534

`sqrt(A000189(n+1)/A000188(A050985(n+1)))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A053150

/-- `sqrt(A000189(n+1)/A000188(A050985(n+1)))` -/
def P12506958821739849534.Spec : Prop :=
  ∀ n, P12506958821739849534.a n = (A053150 (n + 1) : ℝ)

end A053150

/-! ## A053150.P874904857392353919

`floor(root(A113061(n+1), 3))`
-/

namespace A053150.P874904857392353919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A113061 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A053150.P874904857392353919

namespace A053150

/-- `floor(root(A113061(n+1), 3))` -/
def P874904857392353919.Spec : Prop :=
  ∀ n, P874904857392353919.a n = A053150 (n + 1)

end A053150

/-! ## A053150.P9508955896708102003

`A000188(A000189(n+1))`
-/

namespace A053150.P9508955896708102003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000189 (n + 1)).toNat

end

end A053150.P9508955896708102003

namespace A053150

/-- `A000188(A000189(n+1))` -/
def P9508955896708102003.Spec : Prop :=
  ∀ n, P9508955896708102003.a n = A053150 (n + 1)

end A053150

/-! ## A053150.P8031310145384932808

`A019555(A008834(n+1))`
-/

namespace A053150.P8031310145384932808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A008834 (n + 1)).toNat

end

end A053150.P8031310145384932808

namespace A053150

/-- `A019555(A008834(n+1))` -/
def P8031310145384932808.Spec : Prop :=
  ∀ n, P8031310145384932808.a n = A053150 (n + 1)

end A053150

/-! ## A053150.P12301494069484336646

`A019555(A062378(n+1))`
-/

namespace A053150.P12301494069484336646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A062378 (n + 1)).toNat

end

end A053150.P12301494069484336646

namespace A053150

/-- `A019555(A062378(n+1))` -/
def P12301494069484336646.Spec : Prop :=
  ∀ n, P12301494069484336646.a n = A053150 (n + 1)

end A053150

/-! ## A053150.P6537973486361150857

`A048766(A113061(n+1))`
-/

namespace A053150.P6537973486361150857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A113061 (n + 1)).toNat

end

end A053150.P6537973486361150857

namespace A053150

/-- `A048766(A113061(n+1))` -/
def P6537973486361150857.Spec : Prop :=
  ∀ n, P6537973486361150857.a n = A053150 (n + 1)

end A053150

/-! ## A053150.P6755790414067594704

`A003557(A355263(n+1))`
-/

namespace A053150.P6755790414067594704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A355263 (n + 1)).toNat

end

end A053150.P6755790414067594704

namespace A053150

/-- `A003557(A355263(n+1))` -/
def P6755790414067594704.Spec : Prop :=
  ∀ n, P6755790414067594704.a n = A053150 (n + 1)

end A053150

/-! ## A053150.P13592942718483919417

`A000027(root(A008834(n+1), 3))`
-/

namespace A053150.P13592942718483919417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A008834 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A053150.P13592942718483919417

namespace A053150

/-- `A000027(root(A008834(n+1), 3))` -/
def P13592942718483919417.Spec : Prop :=
  ∀ n, P13592942718483919417.a n = A053150 (n + 1)

end A053150

/-! ## A053150.P13606810413338853706

`A019555((n+1)/A007948(n+1))`
-/

namespace A053150.P13606810413338853706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007948 (n + 1) : ℚ))).toNat

end

end A053150.P13606810413338853706

namespace A053150

/-- `A019555((n+1)/A007948(n+1))` -/
def P13606810413338853706.Spec : Prop :=
  ∀ n, P13606810413338853706.a n = A053150 (n + 1)

end A053150

/-! ## A053150.P9296544270991019096

`A019555(n+1)/A056552(n+1)`
-/

namespace A053150.P9296544270991019096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019555 (n + 1) : ℚ) / (A056552 (n + 1) : ℚ)

end

end A053150.P9296544270991019096

namespace A053150

/-- `A019555(n+1)/A056552(n+1)` -/
def P9296544270991019096.Spec : Prop :=
  ∀ n, P9296544270991019096.a n = (A053150 (n + 1) : ℚ)

end A053150

/-! ## A053150.P10485338725062036681

`A048766((n+1)/A050985(n+1))`
-/

namespace A053150.P10485338725062036681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A050985 (n + 1) : ℚ))).toNat

end

end A053150.P10485338725062036681

namespace A053150

/-- `A048766((n+1)/A050985(n+1))` -/
def P10485338725062036681.Spec : Prop :=
  ∀ n, P10485338725062036681.a n = A053150 (n + 1)

end A053150

/-! ## A053150.P13203810062161920654

`A355263(n+1)/A007947(n+1)`
-/

namespace A053150.P13203810062161920654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355263 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A053150.P13203810062161920654

namespace A053150

/-- `A355263(n+1)/A007947(n+1)` -/
def P13203810062161920654.Spec : Prop :=
  ∀ n, P13203810062161920654.a n = (A053150 (n + 1) : ℚ)

end A053150

/-! ## A053150.P8034959239779748754

`root(A008834(n+1), 3)%A109358(n+1)`
-/

namespace A053150.P8034959239779748754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A008834 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))) (A109358 (n + 1))

end

end A053150.P8034959239779748754

namespace A053150

/-- `root(A008834(n+1), 3)%A109358(n+1)` -/
def P8034959239779748754.Spec : Prop :=
  ∀ n, P8034959239779748754.a n = A053150 (n + 1)

end A053150

/-! ## A053150.P7350660003596255184

`A053164(A000189(n+1)²)`
-/

namespace A053150.P7350660003596255184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (A000189 (n + 1) ^ 2).toNat

end

end A053150.P7350660003596255184

namespace A053150

/-- `A053164(A000189(n+1)²)` -/
def P7350660003596255184.Spec : Prop :=
  ∀ n, P7350660003596255184.a n = A053150 (n + 1)

end A053150

/-! ## A053150.P10134404437913133531

`A053164(A003557(n+1)*A056134(n+1))`
-/

namespace A053150.P10134404437913133531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (A003557 (n + 1) * A056134 (n + 1)).toNat

end

end A053150.P10134404437913133531

namespace A053150

/-- `A053164(A003557(n+1)*A056134(n+1))` -/
def P10134404437913133531.Spec : Prop :=
  ∀ n, P10134404437913133531.a n = A053150 (n + 1)

end A053150

/-! ## A053150.P5346091852451781986

`A015053(A062378(n+1)²)`
-/

namespace A053150.P5346091852451781986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A062378 (n + 1) ^ 2).toNat

end

end A053150.P5346091852451781986

namespace A053150

/-- `A015053(A062378(n+1)²)` -/
def P5346091852451781986.Spec : Prop :=
  ∀ n, P5346091852451781986.a n = A053150 (n + 1)

end A053150

/-! ## A053150.P1776527031805861987

`A015053(A008834(n+1)²)`
-/

namespace A053150.P1776527031805861987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A008834 (n + 1) ^ 2).toNat

end

end A053150.P1776527031805861987

namespace A053150

/-- `A015053(A008834(n+1)²)` -/
def P1776527031805861987.Spec : Prop :=
  ∀ n, P1776527031805861987.a n = A053150 (n + 1)

end A053150

/-! ## A053150.P2745888220330345019

`A000189((n+1)²)/(n+1)`
-/

namespace A053150.P2745888220330345019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000189 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A053150.P2745888220330345019

namespace A053150

/-- `A000189((n+1)²)/(n+1)` -/
def P2745888220330345019.Spec : Prop :=
  ∀ n, P2745888220330345019.a n = (A053150 (n + 1) : ℚ)

end A053150

/-! ## A053150.P10186934301110732110

`(n+1)/A019555((n+1)²)`
-/

namespace A053150.P10186934301110732110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A019555 ((n + 1) ^ 2) : ℚ)

end

end A053150.P10186934301110732110

namespace A053150

/-- `(n+1)/A019555((n+1)²)` -/
def P10186934301110732110.Spec : Prop :=
  ∀ n, P10186934301110732110.a n = (A053150 (n + 1) : ℚ)

end A053150

/-!
# A053151: Number of directed EG-convex polyominoes on the honeycomb lattice with given semiperimeter.

The programs for A053151, there is no canonical definition to state claims against.
-/

/-! ## A053151.P2866475039151191070

`A074290(A025192(n))+A053088(n)`
-/

namespace A053151.P2866475039151191070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (A025192 n).toNat + A053088 n

end

end A053151.P2866475039151191070

/-! ## A053151.P11663278425174609485

`A053088(n)-A086008(A001790(n))`
-/

namespace A053151.P11663278425174609485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053088 n - A086008 (A001790 n).toNat

end

end A053151.P11663278425174609485

/-! ## A053151.P3344061667649030208

`A053088(n)-A107846(A000110(n))`
-/

namespace A053151.P3344061667649030208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053088 n - A107846 (A000110 n).toNat

end

end A053151.P3344061667649030208

/-! ## A053151.P7573700859655903311

`A053088(n)-A107846(A033973(n))`
-/

namespace A053151.P7573700859655903311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053088 n - A107846 (A033973 n).toNat

end

end A053151.P7573700859655903311

/-! ## A053151.P8456927326622273465

`A053088(n)-A056976(A087983(n))`
-/

namespace A053151.P8456927326622273465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053088 n - A056976 (A087983 n).toNat

end

end A053151.P8456927326622273465

/-!
# A053152: Number of 2-element intersecting families whose union is an n-element set.

The programs for A053152, the canonical program `A053152.P15751708979987250567` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053152 has offset 1).

The definition of A053152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053152.P15751708979987250567

`(3^(n+1)-1)/2-2^n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053152

/-- `(3^(n+1)-1)/2-2^n` -/
def P15751708979987250567.Spec : Prop :=
  ∀ n, P15751708979987250567.a n = (A053152 (n + 1) : ℚ)

end A053152

/-! ## A053152.P6821887395872275050

`∑[ogf((2x-3x^2)/(1-5x+6x^2))]`
-/

namespace A053152.P6821887395872275050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -3] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053152.P6821887395872275050

namespace A053152

/-- `∑[ogf((2x-3x^2)/(1-5x+6x^2))]` -/
def P6821887395872275050.Spec : Prop :=
  ∀ n, P6821887395872275050.a n = A053152 (n + 1)

end A053152

/-! ## A053152.P3734470854820846706

`∑[A064686(n+1)]`
-/

namespace A053152.P3734470854820846706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053152.P3734470854820846706

namespace A053152

/-- `∑[A064686(n+1)]` -/
def P3734470854820846706.Spec : Prop :=
  ∀ n, P3734470854820846706.a n = A053152 (n + 1)

end A053152

/-! ## A053152.P9952620520779130618

`abs(1-A053156(n+1))`
-/

namespace A053152.P9952620520779130618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A053156 (n + 1)|

end

end A053152.P9952620520779130618

namespace A053152

/-- `abs(1-A053156(n+1))` -/
def P9952620520779130618.Spec : Prop :=
  ∀ n, P9952620520779130618.a n = A053152 (n + 1)

end A053152

/-! ## A053152.P452707812710660187

`∑[3^n-A011782(n)]`
-/

namespace A053152.P452707812710660187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053152.P452707812710660187

namespace A053152

/-- `∑[3^n-A011782(n)]` -/
def P452707812710660187.Spec : Prop :=
  ∀ n, P452707812710660187.a n = A053152 (n + 1)

end A053152

/-! ## A053152.P3313454432179300251

`∑[A083313(n)-floor(acot(n))]`
-/

namespace A053152.P3313454432179300251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083313 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053152.P3313454432179300251

namespace A053152

/-- `∑[A083313(n)-floor(acot(n))]` -/
def P3313454432179300251.Spec : Prop :=
  ∀ n, P3313454432179300251.a n = A053152 (n + 1)

end A053152

/-! ## A053152.P1321820930750133998

`abs(A003462(n)+3^n-2^n)`
-/

namespace A053152.P1321820930750133998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003462 n + ((3 ^ n : ℤ) - (2 ^ n : ℤ))|

end

end A053152.P1321820930750133998

namespace A053152

/-- `abs(A003462(n)+3^n-2^n)` -/
def P1321820930750133998.Spec : Prop :=
  ∀ n, P1321820930750133998.a n = A053152 (n + 1)

end A053152

/-! ## A053152.P16017413734523202544

`abs(A067771(n)-A052548(n))`
-/

namespace A053152.P16017413734523202544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A067771 n - A052548 n|

end

end A053152.P16017413734523202544

namespace A053152

/-- `abs(A067771(n)-A052548(n))` -/
def P16017413734523202544.Spec : Prop :=
  ∀ n, P16017413734523202544.a n = A053152 (n + 1)

end A053152

/-! ## A053152.P13931876149845521185

`abs(A094374(n)+A003063(n+1))`
-/

namespace A053152.P13931876149845521185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094374 n + A003063 (n + 1)|

end

end A053152.P13931876149845521185

namespace A053152

/-- `abs(A094374(n)+A003063(n+1))` -/
def P13931876149845521185.Spec : Prop :=
  ∀ n, P13931876149845521185.a n = A053152 (n + 1)

end A053152

/-! ## A053152.P12527588636891379565

`∑[A003945(n)+A003063(n+1)]`
-/

namespace A053152.P12527588636891379565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n + A003063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053152.P12527588636891379565

namespace A053152

/-- `∑[A003945(n)+A003063(n+1)]` -/
def P12527588636891379565.Spec : Prop :=
  ∀ n, P12527588636891379565.a n = A053152 (n + 1)

end A053152

/-! ## A053152.P16397702171138620560

`xor(A053156(n+1), A153284(n+1))`
-/

namespace A053152.P16397702171138620560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A053156 (n + 1)) (A153284 (n + 1))

end

end A053152.P16397702171138620560

namespace A053152

/-- `xor(A053156(n+1), A153284(n+1))` -/
def P16397702171138620560.Spec : Prop :=
  ∀ n, P16397702171138620560.a n = A053152 (n + 1)

end A053152

/-! ## A053152.P13657411504878695062

`A362316(n+1)/2`
-/

namespace A053152.P13657411504878695062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362316 (n + 1) : ℚ) / 2

end

end A053152.P13657411504878695062

namespace A053152

/-- `A362316(n+1)/2` -/
def P13657411504878695062.Spec : Prop :=
  ∀ n, P13657411504878695062.a n = (A053152 (n + 1) : ℚ)

end A053152

/-! ## A053152.P13930997825601705548

`abs(A083321(n+1)/2)`
-/

namespace A053152.P13930997825601705548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A083321 (n + 1) : ℚ) / 2|

end

end A053152.P13930997825601705548

namespace A053152

/-- `abs(A083321(n+1)/2)` -/
def P13930997825601705548.Spec : Prop :=
  ∀ n, P13930997825601705548.a n = (A053152 (n + 1) : ℚ)

end A053152

/-! ## A053152.P13186148030001500205

`floor(A001047(n+1)/2)`
-/

namespace A053152.P13186148030001500205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001047 (n + 1) : ℚ) / 2⌋

end

end A053152.P13186148030001500205

namespace A053152

/-- `floor(A001047(n+1)/2)` -/
def P13186148030001500205.Spec : Prop :=
  ∀ n, P13186148030001500205.a n = A053152 (n + 1)

end A053152

/-! ## A053152.P10147591315821022306

`(∑[A027649(n)]-1)/2`
-/

namespace A053152.P10147591315821022306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A053152.P10147591315821022306

namespace A053152

/-- `(∑[A027649(n)]-1)/2` -/
def P10147591315821022306.Spec : Prop :=
  ∀ n, P10147591315821022306.a n = (A053152 (n + 1) : ℚ)

end A053152

/-! ## A053152.P13023094317395734295

`(A240506(n+1)-3)/2`
-/

namespace A053152.P13023094317395734295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240506 (n + 1) - 3 : ℚ) / 2

end

end A053152.P13023094317395734295

namespace A053152

/-- `(A240506(n+1)-3)/2` -/
def P13023094317395734295.Spec : Prop :=
  ∀ n, P13023094317395734295.a n = (A053152 (n + 1) : ℚ)

end A053152

/-! ## A053152.P4390140316635585287

`(A094618(n)-(n+2))/2`
-/

namespace A053152.P4390140316635585287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094618 n - (n + 2 : ℤ) : ℚ) / 2

end

end A053152.P4390140316635585287

namespace A053152

/-- `(A094618(n)-(n+2))/2` -/
def P4390140316635585287.Spec : Prop :=
  ∀ n, P4390140316635585287.a n = (A053152 (n + 1) : ℚ)

end A053152

/-! ## A053152.P18302328704383654685

`(A210448(n)+A000225(n))/2`
-/

namespace A053152.P18302328704383654685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210448 n + A000225 n : ℚ) / 2

end

end A053152.P18302328704383654685

namespace A053152

/-- `(A210448(n)+A000225(n))/2` -/
def P18302328704383654685.Spec : Prop :=
  ∀ n, P18302328704383654685.a n = (A053152 (n + 1) : ℚ)

end A053152

/-! ## A053152.P17522382124313516645

`A304167(n+1)%A289521(n+1)`
-/

namespace A053152.P17522382124313516645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304167 (n + 1)) (A289521 (n + 1))

end

end A053152.P17522382124313516645

namespace A053152

/-- `A304167(n+1)%A289521(n+1)` -/
def P17522382124313516645.Spec : Prop :=
  ∀ n, P17522382124313516645.a n = A053152 (n + 1)

end A053152

/-!
# A053153: Number of 3-element intersecting families whose union is an n-element set.

The programs for A053153, the canonical program `A053153.P13409675587160796104` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053153 has offset 1).

The definition of A053153 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053153.P13409675587160796104

`(7^(n+1)-3*5^(n+1)+3*4^(n+1)-4*3^(n+1)+3*2^(n+1)+2)/6`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053153

/-- `(7^(n+1)-3*5^(n+1)+3*4^(n+1)-4*3^(n+1)+3*2^(n+1)+2)/6` -/
def P13409675587160796104.Spec : Prop :=
  ∀ n, P13409675587160796104.a n = (A053153 (n + 1) : ℚ)

end A053153

/-! ## A053153.P5298700598361137303

`A053157(n+1)-∑[A027649(n)]`
-/

namespace A053153.P5298700598361137303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053157 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053153.P5298700598361137303

namespace A053153

/-- `A053157(n+1)-∑[A027649(n)]` -/
def P5298700598361137303.Spec : Prop :=
  ∀ n, P5298700598361137303.a n = A053153 (n + 1)

end A053153

/-! ## A053153.P15191118286906333065

`A053157(n+1)-A001047(n+1)`
-/

namespace A053153.P15191118286906333065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053157 (n + 1) - A001047 (n + 1)

end

end A053153.P15191118286906333065

namespace A053153

/-- `A053157(n+1)-A001047(n+1)` -/
def P15191118286906333065.Spec : Prop :=
  ∀ n, P15191118286906333065.a n = A053153 (n + 1)

end A053153

/-! ## A053153.P13690169029748355640

`A053157(n+1)-(A053156(n+1)+A053152(n+1))`
-/

namespace A053153.P13690169029748355640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053157 (n + 1) - (A053156 (n + 1) + A053152 (n + 1))

end

end A053153.P13690169029748355640

namespace A053153

/-- `A053157(n+1)-(A053156(n+1)+A053152(n+1))` -/
def P13690169029748355640.Spec : Prop :=
  ∀ n, P13690169029748355640.a n = A053153 (n + 1)

end A053153

/-! ## A053153.P15041771418330277465

`A053157(n+1)-A005408(∑[3^n]-2^n)`
-/

namespace A053153.P15041771418330277465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053157 (n + 1) - A005408 (∑ j ∈ Finset.range (n + 1), f1 j - 2 ^ n)

end

end A053153.P15041771418330277465

namespace A053153

/-- `A053157(n+1)-A005408(∑[3^n]-2^n)` -/
def P15041771418330277465.Spec : Prop :=
  ∀ n, P15041771418330277465.a n = A053153 (n + 1)

end A053153

/-!
# A053154: Number of 2-element intersecting families (with not necessarily distinct sets) of an n-element set.

The programs for A053154, the canonical program `A053154.P16252728033413519256` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053154 has offset 0).

The definition of A053154 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053154.P16252728033413519256

`(4^n-3^n+2^n-1)/2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053154

/-- `(4^n-3^n+2^n-1)/2` -/
def P16252728033413519256.Spec : Prop :=
  ∀ n, P16252728033413519256.a n = (A053154 n : ℚ)

end A053154

/-! ## A053154.P15650032428136360042

`A134064(n)-1`
-/

namespace A053154.P15650032428136360042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134064 n - 1

end

end A053154.P15650032428136360042

namespace A053154

/-- `A134064(n)-1` -/
def P15650032428136360042.Spec : Prop :=
  ∀ n, P15650032428136360042.a n = A053154 n

end A053154

/-! ## A053154.P11304490676923402757

`A134168(n)-2^n`
-/

namespace A053154.P11304490676923402757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134168 n - (2 ^ n : ℤ)

end

end A053154.P11304490676923402757

namespace A053154

/-- `A134168(n)-2^n` -/
def P11304490676923402757.Spec : Prop :=
  ∀ n, P11304490676923402757.a n = A053154 n

end A053154

/-! ## A053154.P8348984593120028764

`A007582(n)-∑[ceil(3^(n-1))]`
-/

namespace A053154.P8348984593120028764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053154.P8348984593120028764

namespace A053154

/-- `A007582(n)-∑[ceil(3^(n-1))]` -/
def P8348984593120028764.Spec : Prop :=
  ∀ n, P8348984593120028764.a n = A053154 n

end A053154

/-! ## A053154.P10262023290960399534

`A032263(n+1)+3^n-2^n`
-/

namespace A053154.P10262023290960399534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032263 (n + 1) + ((3 ^ n : ℤ) - (2 ^ n : ℤ))

end

end A053154.P10262023290960399534

namespace A053154

/-- `A032263(n+1)+3^n-2^n` -/
def P10262023290960399534.Spec : Prop :=
  ∀ n, P10262023290960399534.a n = A053154 n

end A053154

/-! ## A053154.P11008644489426649617

`(and(-2, 2^n)+1)*ceil(2^(n-1))-abs(A341463(n))`
-/

namespace A053154.P11008644489426649617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (2 ^ n : ℤ) + 1) * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - |A341463 n|

end

end A053154.P11008644489426649617

namespace A053154

/-- `(and(-2, 2^n)+1)*ceil(2^(n-1))-abs(A341463(n))` -/
def P11008644489426649617.Spec : Prop :=
  ∀ n, P11008644489426649617.a n = A053154 n

end A053154

/-! ## A053154.P12432065517800128623

`A003063(n+1)+abs(∑[3^n]+1-2^n-(2^n+3)*2^(n-1))`
-/

namespace A053154.P12432065517800128623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003063 (n + 1) : ℚ) + |(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - (2 ^ n : ℤ)) : ℚ) - (2 ^ n + 3 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)|

end

end A053154.P12432065517800128623

namespace A053154

/-- `A003063(n+1)+abs(∑[3^n]+1-2^n-(2^n+3)*2^(n-1))` -/
def P12432065517800128623.Spec : Prop :=
  ∀ n, P12432065517800128623.a n = (A053154 n : ℚ)

end A053154

/-! ## A053154.P17113249799158226584

`A081674(n)-A006095(n)`
-/

namespace A053154.P17113249799158226584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081674 n - A006095 n

end

end A053154.P17113249799158226584

namespace A053154

/-- `A081674(n)-A006095(n)` -/
def P17113249799158226584.Spec : Prop :=
  ∀ n, P17113249799158226584.a n = A053154 n

end A053154

/-! ## A053154.P10865605015746556360

`A083314(n)-A134169(n)`
-/

namespace A053154.P10865605015746556360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083314 n - A134169 n

end

end A053154.P10865605015746556360

namespace A053154

/-- `A083314(n)-A134169(n)` -/
def P10865605015746556360.Spec : Prop :=
  ∀ n, P10865605015746556360.a n = A053154 n

end A053154

/-! ## A053154.P14741718219829984028

`A196836(n)-A034472(n)`
-/

namespace A053154.P14741718219829984028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196836 n - A034472 n

end

end A053154.P14741718219829984028

namespace A053154

/-- `A196836(n)-A034472(n)` -/
def P14741718219829984028.Spec : Prop :=
  ∀ n, P14741718219829984028.a n = A053154 n

end A053154

/-! ## A053154.P18414126260202316039

`A257273(n)-A099754(n)`
-/

namespace A053154.P18414126260202316039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257273 n - A099754 n

end

end A053154.P18414126260202316039

namespace A053154

/-- `A257273(n)-A099754(n)` -/
def P18414126260202316039.Spec : Prop :=
  ∀ n, P18414126260202316039.a n = A053154 n

end A053154

/-! ## A053154.P356874828409250040

`A161168(n)-A196836(n)`
-/

namespace A053154.P356874828409250040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161168 n - A196836 n

end

end A053154.P356874828409250040

namespace A053154

/-- `A161168(n)-A196836(n)` -/
def P356874828409250040.Spec : Prop :=
  ∀ n, P356874828409250040.a n = A053154 n

end A053154

/-! ## A053154.P12870409225059576724

`A281481(n)-A115098(n)`
-/

namespace A053154.P12870409225059576724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281481 n - A115098 n

end

end A053154.P12870409225059576724

namespace A053154

/-- `A281481(n)-A115098(n)` -/
def P12870409225059576724.Spec : Prop :=
  ∀ n, P12870409225059576724.a n = A053154 n

end A053154

/-! ## A053154.P15572837522255212529

`A083324(n)%A134064(n)`
-/

namespace A053154.P15572837522255212529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083324 n) (A134064 n)

end

end A053154.P15572837522255212529

namespace A053154

/-- `A083324(n)%A134064(n)` -/
def P15572837522255212529.Spec : Prop :=
  ∀ n, P15572837522255212529.a n = A053154 n

end A053154

/-! ## A053154.P15552003509871595657

`Δ[A007581(n)]-A007051(n)`
-/

namespace A053154.P15552003509871595657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007051 n

end

end A053154.P15552003509871595657

namespace A053154

/-- `Δ[A007581(n)]-A007051(n)` -/
def P15552003509871595657.Spec : Prop :=
  ∀ n, P15552003509871595657.a n = A053154 n

end A053154

/-! ## A053154.P11888152379384551408

`A133789(n)+A000392(n+1)`
-/

namespace A053154.P11888152379384551408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133789 n + A000392 (n + 1)

end

end A053154.P11888152379384551408

namespace A053154

/-- `A133789(n)+A000392(n+1)` -/
def P11888152379384551408.Spec : Prop :=
  ∀ n, P11888152379384551408.a n = A053154 n

end A053154

/-! ## A053154.P4109880343183551246

`A134019(n)+A003063(n+1)`
-/

namespace A053154.P4109880343183551246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134019 n + A003063 (n + 1)

end

end A053154.P4109880343183551246

namespace A053154

/-- `A134019(n)+A003063(n+1)` -/
def P4109880343183551246.Spec : Prop :=
  ∀ n, P4109880343183551246.a n = A053154 n

end A053154

/-! ## A053154.P17868309157344364108

`A134018(n)+A028243(n+1)`
-/

namespace A053154.P17868309157344364108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134018 n + A028243 (n + 1)

end

end A053154.P17868309157344364108

namespace A053154

/-- `A134018(n)+A028243(n+1)` -/
def P17868309157344364108.Spec : Prop :=
  ∀ n, P17868309157344364108.a n = A053154 n

end A053154

/-! ## A053154.P4588941106018292655

`A006516(n)-A000392(n+1)`
-/

namespace A053154.P4588941106018292655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n - A000392 (n + 1)

end

end A053154.P4588941106018292655

namespace A053154

/-- `A006516(n)-A000392(n+1)` -/
def P4588941106018292655.Spec : Prop :=
  ∀ n, P4588941106018292655.a n = A053154 n

end A053154

/-! ## A053154.P16825763371677858424

`A094375(n)-A053156(n+1)`
-/

namespace A053154.P16825763371677858424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094375 n - A053156 (n + 1)

end

end A053154.P16825763371677858424

namespace A053154

/-- `A094375(n)-A053156(n+1)` -/
def P16825763371677858424.Spec : Prop :=
  ∀ n, P16825763371677858424.a n = A053154 n

end A053154

/-!
# A053155: Number of 3-element intersecting families (with not necessarily distinct sets) of an n-element set.

The programs for A053155, there is no canonical definition to state claims against.
-/

/-! ## A053155.P14679762956644355671

`A051180(n)+4^n-3^n`
-/

namespace A053155.P14679762956644355671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051180 n + ((4 ^ n : ℤ) - (3 ^ n : ℤ))

end

end A053155.P14679762956644355671

/-! ## A053155.P9177303736644635760

`A083324(n)+A051180(n)-A000079(n)`
-/

namespace A053155.P9177303736644635760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083324 n + (A051180 n - A000079 n)

end

end A053155.P9177303736644635760

/-! ## A053155.P5066276591124552604

`A147975(n+1)+A051180(n)+A000051(n)`
-/

namespace A053155.P5066276591124552604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147975 (n + 1) + (A051180 n + A000051 n)

end

end A053155.P5066276591124552604

/-!
# A053156: Number of 2-element intersecting families (with not necessarily distinct sets) whose union is an n-element set.

The programs for A053156, the canonical program `A053156.P18088028875847038235` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053156 has offset 1).

The definition of A053156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053156.P7959652621577084447

`(3^(n+1)-2^(n+1)+1)/2`
-/

namespace A053156.P7959652621577084447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 1) : ℤ) - (2 ^ (n + 1) : ℤ) + 1 : ℚ) / 2

end

end A053156.P7959652621577084447

namespace A053156

/-- `(3^(n+1)-2^(n+1)+1)/2` -/
def P7959652621577084447.Spec : Prop :=
  ∀ n, P7959652621577084447.a n = (A053156 (n + 1) : ℚ)

theorem P7959652621577084447.correct : P7959652621577084447.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A053156, Nat.add_sub_cancel, A053156.P7959652621577084447.a, A053156.P18088028875847038235.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A053156, Nat.add_sub_cancel, A053156.P7959652621577084447.a, A053156.P18088028875847038235.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A053156

/-! ## A053156.P18088028875847038235

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=1, a(1)=3, a(2)=10`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053156

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P18088028875847038235.Spec : Prop :=
  ∀ n, P18088028875847038235.a n = A053156 (n + 1)

theorem P18088028875847038235.correct : P18088028875847038235.Spec := by
  intro n
  simp only [A053156, Nat.add_sub_cancel]

end A053156

/-! ## A053156.P6002079150062896680

`∑[ogf((1-3x+3x^2)/(1-5x+6x^2))]`
-/

namespace A053156.P6002079150062896680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053156.P6002079150062896680

namespace A053156

/-- `∑[ogf((1-3x+3x^2)/(1-5x+6x^2))]` -/
def P6002079150062896680.Spec : Prop :=
  ∀ n, P6002079150062896680.a n = A053156 (n + 1)

end A053156

/-! ## A053156.P18435552884381408560

`abs(∑[3*a(n-1)]-2^n)` with `a(0)=2, a(1)=3`
-/

namespace A053156.P18435552884381408560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ)|

end

end A053156.P18435552884381408560

namespace A053156

/-- `abs(∑[3*a(n-1)]-2^n)` -/
def P18435552884381408560.Spec : Prop :=
  ∀ n, P18435552884381408560.a n = A053156 (n + 1)

end A053156

/-! ## A053156.P12268002337018566019

`floor(∑[3*a(n-1)]-2^n)` with `a(0)=2, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A053156.P12268002337018566019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ)

end

end A053156.P12268002337018566019

namespace A053156

/-- `floor(∑[3*a(n-1)]-2^n)` -/
def P12268002337018566019.Spec : Prop :=
  ∀ n, P12268002337018566019.a n = A053156 (n + 1)

end A053156

/-! ## A053156.P5525815675091737881

`ceil(∑[3*a(n-1)]-2^n)` with `a(0)=2, a(1)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A053156.P5525815675091737881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ)

end

end A053156.P5525815675091737881

namespace A053156

/-- `ceil(∑[3*a(n-1)]-2^n)` -/
def P5525815675091737881.Spec : Prop :=
  ∀ n, P5525815675091737881.a n = A053156 (n + 1)

end A053156

/-! ## A053156.P10703749899292401568

`round(∑[3*a(n-1)]-2^n)` with `a(0)=2, a(1)=3`

`round` is left out, it is the identity on integers.
-/

namespace A053156.P10703749899292401568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ)

end

end A053156.P10703749899292401568

namespace A053156

/-- `round(∑[3*a(n-1)]-2^n)` -/
def P10703749899292401568.Spec : Prop :=
  ∀ n, P10703749899292401568.a n = A053156 (n + 1)

end A053156

/-! ## A053156.P2628824376771283931

`∑[(3^n-floor(2^(n-1)))^ceil(sin(n)²)]`
-/

namespace A053156.P2628824376771283931
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053156.P2628824376771283931

namespace A053156

/-- `∑[(3^n-floor(2^(n-1)))^ceil(sin(n)²)]` -/
def P2628824376771283931.Spec : Prop :=
  ∀ n, P2628824376771283931.a n = (A053156 (n + 1) : ℚ)

end A053156

/-! ## A053156.P697266068836006208

`∑[A083313(n)]`
-/

namespace A053156.P697266068836006208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053156.P697266068836006208

namespace A053156

/-- `∑[A083313(n)]` -/
def P697266068836006208.Spec : Prop :=
  ∀ n, P697266068836006208.a n = A053156 (n + 1)

end A053156

/-! ## A053156.P18145966402176299591

`A053152(n+1)+1`
-/

namespace A053156.P18145966402176299591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053152 (n + 1) + 1

end

end A053156.P18145966402176299591

namespace A053156

/-- `A053152(n+1)+1` -/
def P18145966402176299591.Spec : Prop :=
  ∀ n, P18145966402176299591.a n = A053156 (n + 1)

end A053156

/-! ## A053156.P2389330466993998197

`∑[A064686(n+1)]+1`
-/

namespace A053156.P2389330466993998197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A053156.P2389330466993998197

namespace A053156

/-- `∑[A064686(n+1)]+1` -/
def P2389330466993998197.Spec : Prop :=
  ∀ n, P2389330466993998197.a n = A053156 (n + 1)

end A053156

/-! ## A053156.P9231088552726469018

`∑[3^n-A131577(n)]`
-/

namespace A053156.P9231088552726469018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053156.P9231088552726469018

namespace A053156

/-- `∑[3^n-A131577(n)]` -/
def P9231088552726469018.Spec : Prop :=
  ∀ n, P9231088552726469018.a n = A053156 (n + 1)

end A053156

/-! ## A053156.P18336600978931637411

`A000392(n+1)+3^n`
-/

namespace A053156.P18336600978931637411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1) + (3 ^ n : ℤ)

end

end A053156.P18336600978931637411

namespace A053156

/-- `A000392(n+1)+3^n` -/
def P18336600978931637411.Spec : Prop :=
  ∀ n, P18336600978931637411.a n = A053156 (n + 1)

end A053156

/-! ## A053156.P15289099506595811450

`A007051(n+1)-2^n`
-/

namespace A053156.P15289099506595811450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (n + 1) - (2 ^ n : ℤ)

end

end A053156.P15289099506595811450

namespace A053156

/-- `A007051(n+1)-2^n` -/
def P15289099506595811450.Spec : Prop :=
  ∀ n, P15289099506595811450.a n = A053156 (n + 1)

end A053156

/-! ## A053156.P6177815135704265851

`abs(∑[3^n]-A000225(n))`
-/

namespace A053156.P6177815135704265851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000225 n|

end

end A053156.P6177815135704265851

namespace A053156

/-- `abs(∑[3^n]-A000225(n))` -/
def P6177815135704265851.Spec : Prop :=
  ∀ n, P6177815135704265851.a n = A053156 (n + 1)

end A053156

/-! ## A053156.P4094065234030759296

`A267799(n+1)-2^(n+1)`
-/

namespace A053156.P4094065234030759296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267799 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A053156.P4094065234030759296

namespace A053156

/-- `A267799(n+1)-2^(n+1)` -/
def P4094065234030759296.Spec : Prop :=
  ∀ n, P4094065234030759296.a n = A053156 (n + 1)

end A053156

/-! ## A053156.P7649523735510469021

`∑[A000244(n)-floor(2^(n-1))]`
-/

namespace A053156.P7649523735510469021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053156.P7649523735510469021

namespace A053156

/-- `∑[A000244(n)-floor(2^(n-1))]` -/
def P7649523735510469021.Spec : Prop :=
  ∀ n, P7649523735510469021.a n = A053156 (n + 1)

end A053156

/-! ## A053156.P11800989717987090884

`∑[A017914(2*n)-floor(2^(n-1))]`
-/

namespace A053156.P11800989717987090884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017914 (2 * n) - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053156.P11800989717987090884

namespace A053156

/-- `∑[A017914(2*n)-floor(2^(n-1))]` -/
def P11800989717987090884.Spec : Prop :=
  ∀ n, P11800989717987090884.a n = A053156 (n + 1)

end A053156

/-! ## A053156.P11641850751680115550

`A036550(n)+A000295(n)`
-/

namespace A053156.P11641850751680115550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036550 n + A000295 n

end

end A053156.P11641850751680115550

namespace A053156

/-- `A036550(n)+A000295(n)` -/
def P11641850751680115550.Spec : Prop :=
  ∀ n, P11641850751680115550.a n = A053156 (n + 1)

end A053156

/-! ## A053156.P16651859995536405065

`A053581(n)+A000392(n)`
-/

namespace A053156.P16651859995536405065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053581 n + A000392 n

end

end A053156.P16651859995536405065

namespace A053156

/-- `A053581(n)+A000392(n)` -/
def P16651859995536405065.Spec : Prop :=
  ∀ n, P16651859995536405065.a n = A053156 (n + 1)

end A053156

/-!
# A053157: Number of 3-element intersecting families (with not necessarily distinct sets) whose union is an n-element set.

The programs for A053157, the canonical program `A053157.P12111343269336378566` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053157 has offset 1).

The definition of A053157 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053157.P12111343269336378566

`(7^(n+1)-3*5^(n+1)+3*4^(n+1)+2*3^(n+1)-3*2^(n+1)+2)/6`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053157

/-- `(7^(n+1)-3*5^(n+1)+3*4^(n+1)+2*3^(n+1)-3*2^(n+1)+2)/6` -/
def P12111343269336378566.Spec : Prop :=
  ∀ n, P12111343269336378566.a n = (A053157 (n + 1) : ℚ)

end A053157

/-! ## A053157.P16914263802259077219

`A053153(n+1)+A001047(n+1)`
-/

namespace A053157.P16914263802259077219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053153 (n + 1) + A001047 (n + 1)

end

end A053157.P16914263802259077219

namespace A053157

/-- `A053153(n+1)+A001047(n+1)` -/
def P16914263802259077219.Spec : Prop :=
  ∀ n, P16914263802259077219.a n = A053157 (n + 1)

end A053157

/-! ## A053157.P5093022317088448394

`A053152(n+1)+A053156(n+1)+A053153(n+1)`
-/

namespace A053157.P5093022317088448394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053152 (n + 1) + (A053156 (n + 1) + A053153 (n + 1))

end

end A053157.P5093022317088448394

namespace A053157

/-- `A053152(n+1)+A053156(n+1)+A053153(n+1)` -/
def P5093022317088448394.Spec : Prop :=
  ∀ n, P5093022317088448394.a n = A053157 (n + 1)

end A053157

/-! ## A053157.P13964028925819361417

`A163985(∑[3^n]+1-2^n)+A053153(n+1)`
-/

namespace A053157.P13964028925819361417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - (2 ^ n : ℤ))).toNat + A053153 (n + 1)

end

end A053157.P13964028925819361417

namespace A053157

/-- `A163985(∑[3^n]+1-2^n)+A053153(n+1)` -/
def P13964028925819361417.Spec : Prop :=
  ∀ n, P13964028925819361417.a n = A053157 (n + 1)

end A053157

/-! ## A053157.P11461156580212079626

`A053153(n+1)+A005408(A053152(n+1))`
-/

namespace A053157.P11461156580212079626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053153 (n + 1) + A005408 (A053152 (n + 1)).toNat

end

end A053157.P11461156580212079626

namespace A053157

/-- `A053153(n+1)+A005408(A053152(n+1))` -/
def P11461156580212079626.Spec : Prop :=
  ∀ n, P11461156580212079626.a n = A053157 (n + 1)

end A053157

/-!
# A053158: Sum of n and its cototient function value (A051953): a(n) = 2*n - phi(n), where phi is Euler phi.

The programs for A053158, the canonical program `A053158.P11533641159092355549` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053158 has offset 1).

The definition of A053158 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053158.P12394903761097819487

`n+1+A051953(n+1)`
-/

namespace A053158.P12394903761097819487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A051953 (n + 1)

end

end A053158.P12394903761097819487

namespace A053158

/-- `n+1+A051953(n+1)` -/
def P12394903761097819487.Spec : Prop :=
  ∀ n, P12394903761097819487.a n = A053158 (n + 1)

end A053158

/-! ## A053158.P11533641159092355549

`2*(n+1)-A000010(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053158

/-- `2*(n+1)-A000010(n+1)` -/
def P11533641159092355549.Spec : Prop :=
  ∀ n, P11533641159092355549.a n = A053158 (n + 1)

theorem P11533641159092355549.correct : P11533641159092355549.Spec := by
  intro n
  simp only [A053158, Nat.add_sub_cancel]

end A053158

/-! ## A053158.P5853200795772804046

`1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n-xor(n, -1)`
-/

namespace A053158.P5853200795772804046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ) - (Int.xor (n : ℤ) (-1) : ℚ)

end

end A053158.P5853200795772804046

namespace A053158

/-- `1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n-xor(n, -1)` -/
def P5853200795772804046.Spec : Prop :=
  ∀ n, P5853200795772804046.a n = (A053158 (n + 1) : ℚ)

end A053158

/-! ## A053158.P1096209143985751987

`Δ[n²]-(n-floor(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n))`
-/

namespace A053158.P1096209143985751987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n : ℤ) - ⌊1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ)⌋)

end

end A053158.P1096209143985751987

namespace A053158

/-- `Δ[n²]-(n-floor(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n))` -/
def P1096209143985751987.Spec : Prop :=
  ∀ n, P1096209143985751987.a n = A053158 (n + 1)

end A053158

/-! ## A053158.P15595352373691483462

`A219428(n+1)+2+n`
-/

namespace A053158.P15595352373691483462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1) + 2 + (n : ℤ)

end

end A053158.P15595352373691483462

namespace A053158

/-- `A219428(n+1)+2+n` -/
def P15595352373691483462.Spec : Prop :=
  ∀ n, P15595352373691483462.a n = A053158 (n + 1)

end A053158

/-! ## A053158.P11029979316402708974

`Δ[n²]-A109606(n+1)`
-/

namespace A053158.P11029979316402708974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A109606 (n + 1)

end

end A053158.P11029979316402708974

namespace A053158

/-- `Δ[n²]-A109606(n+1)` -/
def P11029979316402708974.Spec : Prop :=
  ∀ n, P11029979316402708974.a n = A053158 (n + 1)

end A053158

/-! ## A053158.P731075734073332458

`Δ[n²+n-A002088(n)]`
-/

namespace A053158.P731075734073332458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℤ) - A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053158.P731075734073332458

namespace A053158

/-- `Δ[n²+n-A002088(n)]` -/
def P731075734073332458.Spec : Prop :=
  ∀ n, P731075734073332458.a n = A053158 (n + 1)

end A053158

/-! ## A053158.P13934906406645729570

`3*(n+1)-A121048(n+1)`
-/

namespace A053158.P13934906406645729570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A121048 (n + 1)

end

end A053158.P13934906406645729570

namespace A053158

/-- `3*(n+1)-A121048(n+1)` -/
def P13934906406645729570.Spec : Prop :=
  ∀ n, P13934906406645729570.a n = A053158 (n + 1)

end A053158

/-! ## A053158.P5657632562826053356

`2*n+3-A039649(n+1)`
-/

namespace A053158.P5657632562826053356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A039649 (n + 1)

end

end A053158.P5657632562826053356

namespace A053158

/-- `2*n+3-A039649(n+1)` -/
def P5657632562826053356.Spec : Prop :=
  ∀ n, P5657632562826053356.a n = A053158 (n + 1)

end A053158

/-! ## A053158.P7801580229572295120

`a(n-1)+2-A057000(n)` with `a(0)=1`
-/

namespace A053158.P7801580229572295120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 - A057000 n)

end

end A053158.P7801580229572295120

namespace A053158

/-- `a(n-1)+2-A057000(n)` -/
def P7801580229572295120.Spec : Prop :=
  ∀ n, P7801580229572295120.a n = A053158 (n + 1)

end A053158

/-! ## A053158.P17406671911339407505

`A053650(n+1)/(n+1)+n+1`
-/

namespace A053158.P17406671911339407505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053650 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A053158.P17406671911339407505

namespace A053158

/-- `A053650(n+1)/(n+1)+n+1` -/
def P17406671911339407505.Spec : Prop :=
  ∀ n, P17406671911339407505.a n = (A053158 (n + 1) : ℚ)

end A053158

/-! ## A053158.P6978493809206143876

`n-A000010(lcm(2, n+1))+n+2`
-/

namespace A053158.P6978493809206143876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000010 (Nat.lcm 2 (n + 1)) + (n + 2 : ℤ)

end

end A053158.P6978493809206143876

namespace A053158

/-- `n-A000010(lcm(2, n+1))+n+2` -/
def P6978493809206143876.Spec : Prop :=
  ∀ n, P6978493809206143876.a n = A053158 (n + 1)

end A053158

/-! ## A053158.P17289986420038301756

`n+2-A000010(C(n+1, n))+n`
-/

namespace A053158.P17289986420038301756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A000010 (Nat.choose (n + 1) n) + (n : ℤ)

end

end A053158.P17289986420038301756

namespace A053158

/-- `n+2-A000010(C(n+1, n))+n` -/
def P17289986420038301756.Spec : Prop :=
  ∀ n, P17289986420038301756.a n = A053158 (n + 1)

theorem P17289986420038301756.correct : P17289986420038301756.Spec := by
  intro n
  simp only [A053158, Nat.add_sub_cancel, A053158.P17289986420038301756.a, A053158.P11533641159092355549.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A053158

/-! ## A053158.P1117131751507247325

`∑{d}[n+1, #*A157657((n+1)/#)]`
-/

namespace A053158.P1117131751507247325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A157657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053158.P1117131751507247325

namespace A053158

/-- `∑{d}[n+1, #*A157657((n+1)/#)]` -/
def P1117131751507247325.Spec : Prop :=
  ∀ n, P1117131751507247325.a n = A053158 (n + 1)

end A053158

/-! ## A053158.P8878020447355471117

`Δ[2*n-(A000010(n)-a(n-1))]` with `a(0)=0`
-/

namespace A053158.P8878020447355471117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (2 * n : ℤ) - (A000010 n - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053158.P8878020447355471117

namespace A053158

/-- `Δ[2*n-(A000010(n)-a(n-1))]` -/
def P8878020447355471117.Spec : Prop :=
  ∀ n, P8878020447355471117.a n = A053158 (n + 1)

end A053158

/-! ## A053158.P16604712233082951288

`2-(A000010(2*n-(n-1))-2*n)`
-/

namespace A053158.P16604712233082951288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (2 * n : ℤ))

end

end A053158.P16604712233082951288

namespace A053158

/-- `2-(A000010(2*n-(n-1))-2*n)` -/
def P16604712233082951288.Spec : Prop :=
  ∀ n, P16604712233082951288.a n = A053158 (n + 1)

end A053158

/-! ## A053158.P12774251630743311152

`A180444(n)+A057000(n+1)`
-/

namespace A053158.P12774251630743311152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180444 n + A057000 (n + 1)

end

end A053158.P12774251630743311152

namespace A053158

/-- `A180444(n)+A057000(n+1)` -/
def P12774251630743311152.Spec : Prop :=
  ∀ n, P12774251630743311152.a n = A053158 (n + 1)

end A053158

/-! ## A053158.P3321367108791697001

`A258837(n)+A258434(n+1)`
-/

namespace A053158.P3321367108791697001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258837 n + A258434 (n + 1)

end

end A053158.P3321367108791697001

namespace A053158

/-- `A258837(n)+A258434(n+1)` -/
def P3321367108791697001.Spec : Prop :=
  ∀ n, P3321367108791697001.a n = A053158 (n + 1)

end A053158

/-! ## A053158.P16651249917973617643

`A075328(n)-A280577(n+1)`
-/

namespace A053158.P16651249917973617643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075328 n - A280577 (n + 1)

end

end A053158.P16651249917973617643

namespace A053158

/-- `A075328(n)-A280577(n+1)` -/
def P16651249917973617643.Spec : Prop :=
  ∀ n, P16651249917973617643.a n = A053158 (n + 1)

end A053158

/-! ## A053158.P2464045754731403699

`A065475(n+1)+A016035(n+1)`
-/

namespace A053158.P2464045754731403699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) + A016035 (n + 1)

end

end A053158.P2464045754731403699

namespace A053158

/-- `A065475(n+1)+A016035(n+1)` -/
def P2464045754731403699.Spec : Prop :=
  ∀ n, P2464045754731403699.a n = A053158 (n + 1)

end A053158

/-!
# A053159: Numbers n such that n+cototient(n) is a power of 2.

The programs for A053159, there is no canonical definition to state claims against.
-/

/-! ## A053159.P10360113150634565073

`record[(n+1)*A209229(A053158(n+1))]`
-/

namespace A053159.P10360113150634565073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A209229 (A053158 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053159.P10360113150634565073

/-! ## A053159.P13264775228524517984

`eq[A053158(n+1), A062383(n)]+1`
-/

namespace A053159.P13264775228524517984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053159.P13264775228524517984

/-! ## A053159.P8437096238778526798

`eq[A006257(n), A109606(n+1)]+1`
-/

namespace A053159.P8437096238778526798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053159.P8437096238778526798

/-! ## A053159.P3016035046477725281

`lt[A006530(2*n+1-A109606(n+1)), 3]+1`
-/

namespace A053159.P3016035046477725281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((2 * n + 1 : ℤ) - A109606 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A053159.P3016035046477725281

/-! ## A053159.P3835956010483389361

`eq[A016035(A028310(n)), A035327(n)]`
-/

namespace A053159.P3835956010483389361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053159.P3835956010483389361

/-!
# A053160: Smallest prime associated with A053095(n), or zero if no such prime exists.

The programs for A053160, there is no canonical definition to state claims against.
-/

/-! ## A053160.P16531296998638029977

`A167416(n+1)%A167375(A167375(n))`
-/

namespace A053160.P16531296998638029977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167416 (n + 1)) (A167375 (A167375 n).toNat)

end

end A053160.P16531296998638029977

/-! ## A053160.P8291730574755474071

`lcm(A167407(A167418(n)), A167416(n+1))`
-/

namespace A053160.P8291730574755474071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A167407 (A167418 n).toNat) (A167416 (n + 1))

end

end A053160.P8291730574755474071

/-!
# A053162: Nonprimes n such that n+cototient(n) is a power of 2.

The programs for A053162, there is no canonical definition to state claims against.
-/

/-! ## A053162.P1828010537318441207

`∩[A053159(n+1), A115793(n+1)]`
-/

namespace A053162.P1828010537318441207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053162.P1828010537318441207

/-! ## A053162.P11378731887108823362

`∩[A003714(n), A053159(n+1)]`
-/

namespace A053162.P11378731887108823362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053162.P11378731887108823362

/-! ## A053162.P11149224347262557484

`∩[A053159(n+1), A105425(n)]`
-/

namespace A053162.P11149224347262557484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105425 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053162.P11149224347262557484

/-! ## A053162.P6567553333092359558

`∩[A053159(n+1), A190809(n+1)]`
-/

namespace A053162.P6567553333092359558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053162.P6567553333092359558

/-! ## A053162.P17017662721183327031

`filter[A053159(n+1), A373252(#)]`
-/

namespace A053162.P17017662721183327031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A053162.P17017662721183327031

/-!
# A053163: n+cototient(n) produces these powers of 2 in order of magnitude.

The programs for A053163, there is no canonical definition to state claims against.
-/

/-! ## A053163.P8154634955116113741

`2^ceil(log2(A053159(n+1)))`
-/

namespace A053163.P8154634955116113741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (A053159 (n + 1) : ℝ)⌉ : ℤ)

end

end A053163.P8154634955116113741

/-! ## A053163.P6358274331789338779

`A000079(ceil(log2(A053159(n+1))))`
-/

namespace A053163.P6358274331789338779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ⌈Real.logb 2 (A053159 (n + 1) : ℝ)⌉.toNat

end

end A053163.P6358274331789338779

/-! ## A053163.P61839798658198366

`A000225(ceil(log2(A053159(n+1))))+1`
-/

namespace A053163.P61839798658198366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 ⌈Real.logb 2 (A053159 (n + 1) : ℝ)⌉.toNat + 1

end

end A053163.P61839798658198366

/-! ## A053163.P11385236830844329371

`A011782(ceil(log2(A053159(n+1)))+1)`
-/

namespace A053163.P11385236830844329371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (⌈Real.logb 2 (A053159 (n + 1) : ℝ)⌉ + 1).toNat

end

end A053163.P11385236830844329371

/-! ## A053163.P7019837079490884478

`A000051(ceil(log2(A053159(n+1))))-1`
-/

namespace A053163.P7019837079490884478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 ⌈Real.logb 2 (A053159 (n + 1) : ℝ)⌉.toNat - 1

end

end A053163.P7019837079490884478

/-! ## A053163.P10211055419110980737

`A000918(ceil(log2(A053159(n+1))))+2`
-/

namespace A053163.P10211055419110980737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 ⌈Real.logb 2 (A053159 (n + 1) : ℝ)⌉.toNat + 2

end

end A053163.P10211055419110980737

/-! ## A053163.P10221136632463869874

`A016116(2*ceil(log2(A053159(n+1))))`
-/

namespace A053163.P10221136632463869874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * ⌈Real.logb 2 (A053159 (n + 1) : ℝ)⌉).toNat

end

end A053163.P10221136632463869874

/-!
# A053164: 4th root of largest 4th power dividing n.

The programs for A053164, the canonical program `A053164.P6072530198200345480` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053164 has offset 1).

The definition of A053164 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008835, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053164.P6072530198200345480

`A008835(n+1)^(1/4)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053164

/-- `A008835(n+1)^(1/4)` -/
def P6072530198200345480.Spec : Prop :=
  ∀ n, P6072530198200345480.a n = (A053164 (n + 1) : ℝ)

end A053164

/-! ## A053164.P16331944083715066881

`A000188(A000188(n+1))`
-/

namespace A053164.P16331944083715066881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000188 (n + 1)).toNat

end

end A053164.P16331944083715066881

namespace A053164

/-- `A000188(A000188(n+1))` -/
def P16331944083715066881.Spec : Prop :=
  ∀ n, P16331944083715066881.a n = A053164 (n + 1)

end A053164

/-! ## A053164.P8586854962871517906

`root(A008835(n+1), 4)`
-/

namespace A053164.P8586854962871517906
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008835 (n + 1) : ℝ) ^ (1 / (4 : ℝ))

end

end A053164.P8586854962871517906

namespace A053164

/-- `root(A008835(n+1), 4)` -/
def P8586854962871517906.Spec : Prop :=
  ∀ n, P8586854962871517906.a n = (A053164 (n + 1) : ℝ)

end A053164

/-! ## A053164.P1638829383859092915

`A015052(A008835(n+1))`
-/

namespace A053164.P1638829383859092915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A008835 (n + 1)).toNat

end

end A053164.P1638829383859092915

namespace A053164

/-- `A015052(A008835(n+1))` -/
def P1638829383859092915.Spec : Prop :=
  ∀ n, P1638829383859092915.a n = A053164 (n + 1)

end A053164

/-! ## A053164.P17861911302650965171

`A053150(A000190(n+1))`
-/

namespace A053164.P17861911302650965171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (A000190 (n + 1)).toNat

end

end A053164.P17861911302650965171

namespace A053164

/-- `A053150(A000190(n+1))` -/
def P17861911302650965171.Spec : Prop :=
  ∀ n, P17861911302650965171.a n = A053164 (n + 1)

end A053164

/-! ## A053164.P2211448376123166842

`A000188(Δ[A211422(n)/8])`
-/

namespace A053164.P2211448376123166842
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211422 n : ℚ) / 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A053164.P2211448376123166842

namespace A053164

/-- `A000188(Δ[A211422(n)/8])` -/
def P2211448376123166842.Spec : Prop :=
  ∀ n, P2211448376123166842.a n = A053164 (n + 1)

end A053164

/-! ## A053164.P2773511888709152956

`sqrt(A008833(sqrt(A008833(n+1))))`
-/

namespace A053164.P2773511888709152956
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat : ℝ)

end

end A053164.P2773511888709152956

namespace A053164

/-- `sqrt(A008833(sqrt(A008833(n+1))))` -/
def P2773511888709152956.Spec : Prop :=
  ∀ n, P2773511888709152956.a n = (A053164 (n + 1) : ℝ)

end A053164

/-! ## A053164.P13515093832926640500

`A028310(sqrt(sqrt(A008835(n+1))))`
-/

namespace A053164.P13515093832926640500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A008835 (n + 1) : ℝ)))).toNat

end

end A053164.P13515093832926640500

namespace A053164

/-- `A028310(sqrt(sqrt(A008835(n+1))))` -/
def P13515093832926640500.Spec : Prop :=
  ∀ n, P13515093832926640500.a n = A053164 (n + 1)

end A053164

/-! ## A053164.P16489714854959179708

`A209861(sqrt(sqrt(A008835(n+1))))`
-/

namespace A053164.P16489714854959179708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209861 (SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A008835 (n + 1) : ℝ)))).toNat

end

end A053164.P16489714854959179708

namespace A053164

/-- `A209861(sqrt(sqrt(A008835(n+1))))` -/
def P16489714854959179708.Spec : Prop :=
  ∀ n, P16489714854959179708.a n = A053164 (n + 1)

end A053164

/-! ## A053164.P6161310122946685727

`A321291(sqrt(sqrt(A008835(n+1))))`
-/

namespace A053164.P6161310122946685727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321291 (SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A008835 (n + 1) : ℝ)))).toNat

end

end A053164.P6161310122946685727

namespace A053164

/-- `A321291(sqrt(sqrt(A008835(n+1))))` -/
def P6161310122946685727.Spec : Prop :=
  ∀ n, P6161310122946685727.a n = A053164 (n + 1)

end A053164

/-! ## A053164.P8993222512698156435

`A057918(A057918(n+1)+1)+1`
-/

namespace A053164.P8993222512698156435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A057918 (n + 1) + 1).toNat + 1

end

end A053164.P8993222512698156435

namespace A053164

/-- `A057918(A057918(n+1)+1)+1` -/
def P8993222512698156435.Spec : Prop :=
  ∀ n, P8993222512698156435.a n = A053164 (n + 1)

end A053164

/-! ## A053164.P8311190107331507873

`A295657((n+1)/A295657(n+1))`
-/

namespace A053164.P8311190107331507873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A295657 (n + 1) : ℚ))).toNat

end

end A053164.P8311190107331507873

namespace A053164

/-- `A295657((n+1)/A295657(n+1))` -/
def P8311190107331507873.Spec : Prop :=
  ∀ n, P8311190107331507873.a n = A053164 (n + 1)

end A053164

/-! ## A053164.P18394763327792942675

`A019554(A019554(n+1))/A056554(n+1)`
-/

namespace A053164.P18394763327792942675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (A019554 (n + 1)).toNat : ℚ) / (A056554 (n + 1) : ℚ)

end

end A053164.P18394763327792942675

namespace A053164

/-- `A019554(A019554(n+1))/A056554(n+1)` -/
def P18394763327792942675.Spec : Prop :=
  ∀ n, P18394763327792942675.a n = (A053164 (n + 1) : ℚ)

end A053164

/-! ## A053164.P3827451754672219818

`A053166(n+1)/A053166(A053165(n+1))`
-/

namespace A053164.P3827451754672219818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053166 (n + 1) : ℚ) / (A053166 (A053165 (n + 1)).toNat : ℚ)

end

end A053164.P3827451754672219818

namespace A053164

/-- `A053166(n+1)/A053166(A053165(n+1))` -/
def P3827451754672219818.Spec : Prop :=
  ∀ n, P3827451754672219818.a n = (A053164 (n + 1) : ℚ)

end A053164

/-! ## A053164.P3009974644529014279

`A020639(A008835(A008835(n+1)²))`
-/

namespace A053164.P3009974644529014279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008835 (A008835 (n + 1) ^ 2).toNat).toNat

end

end A053164.P3009974644529014279

namespace A053164

/-- `A020639(A008835(A008835(n+1)²))` -/
def P3009974644529014279.Spec : Prop :=
  ∀ n, P3009974644529014279.a n = A053164 (n + 1)

end A053164

/-! ## A053164.P16211021005237431257

`gcd(A034386(n), A062379(n+1))`
-/

namespace A053164.P16211021005237431257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 n) (A062379 (n + 1))

end

end A053164.P16211021005237431257

namespace A053164

/-- `gcd(A034386(n), A062379(n+1))` -/
def P16211021005237431257.Spec : Prop :=
  ∀ n, (P16211021005237431257.a n : ℤ) = A053164 (n + 1)

end A053164

/-! ## A053164.P1163129895860805291

`gcd(A026585(n), A295658(n+1))`
-/

namespace A053164.P1163129895860805291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026585 n) (A295658 (n + 1))

end

end A053164.P1163129895860805291

namespace A053164

/-- `gcd(A026585(n), A295658(n+1))` -/
def P1163129895860805291.Spec : Prop :=
  ∀ n, (P1163129895860805291.a n : ℤ) = A053164 (n + 1)

end A053164

/-! ## A053164.P2262762710575796722

`gcd(A062379(n+1)², A007207(n))`
-/

namespace A053164.P2262762710575796722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062379 (n + 1) ^ 2) (A007207 n)

end

end A053164.P2262762710575796722

namespace A053164

/-- `gcd(A062379(n+1)², A007207(n))` -/
def P2262762710575796722.Spec : Prop :=
  ∀ n, (P2262762710575796722.a n : ℤ) = A053164 (n + 1)

end A053164

/-!
# A053165: 4th-power-free part of n.

The programs for A053165, the canonical program `A053165.P13091499758417546177` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053165 has offset 1).

The definition of A053165 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008835, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053165.P13091499758417546177

`(n+1)/A008835(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053165

/-- `(n+1)/A008835(n+1)` -/
def P13091499758417546177.Spec : Prop :=
  ∀ n, P13091499758417546177.a n = (A053165 (n + 1) : ℚ)

end A053165

/-! ## A053165.P8890270290240547309

`(n+1)/A053164(n+1)²²`
-/

namespace A053165.P8890270290240547309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((A053164 (n + 1) ^ 2) ^ 2 : ℚ)

end

end A053165.P8890270290240547309

namespace A053165

/-- `(n+1)/A053164(n+1)²²` -/
def P8890270290240547309.Spec : Prop :=
  ∀ n, P8890270290240547309.a n = (A053165 (n + 1) : ℚ)

end A053165

/-! ## A053165.P4313623861237592784

`A007913(n+1)*A335324(n+1)`
-/

namespace A053165.P4313623861237592784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A335324 (n + 1)

end

end A053165.P4313623861237592784

namespace A053165

/-- `A007913(n+1)*A335324(n+1)` -/
def P4313623861237592784.Spec : Prop :=
  ∀ n, P4313623861237592784.a n = A053165 (n + 1)

end A053165

/-! ## A053165.P11850502594034222485

`A056553(n+1)/A056555(n+1)`
-/

namespace A053165.P11850502594034222485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056553 (n + 1) : ℚ) / (A056555 (n + 1) : ℚ)

end

end A053165.P11850502594034222485

namespace A053165

/-- `A056553(n+1)/A056555(n+1)` -/
def P11850502594034222485.Spec : Prop :=
  ∀ n, P11850502594034222485.a n = (A053165 (n + 1) : ℚ)

end A053165

/-! ## A053165.P16788451927807676587

`(n+1)/A053167(A062379(n+1))`
-/

namespace A053165.P16788451927807676587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053167 (A062379 (n + 1)).toNat : ℚ)

end

end A053165.P16788451927807676587

namespace A053165

/-- `(n+1)/A053167(A062379(n+1))` -/
def P16788451927807676587.Spec : Prop :=
  ∀ n, P16788451927807676587.a n = (A053165 (n + 1) : ℚ)

end A053165

/-! ## A053165.P4948367097455542869

`(n+1)/A000188(A000188(n+1))²²`
-/

namespace A053165.P4948367097455542869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((A000188 (A000188 (n + 1)).toNat ^ 2) ^ 2 : ℚ)

end

end A053165.P4948367097455542869

namespace A053165

/-- `(n+1)/A000188(A000188(n+1))²²` -/
def P4948367097455542869.Spec : Prop :=
  ∀ n, P4948367097455542869.a n = (A053165 (n + 1) : ℚ)

end A053165

/-! ## A053165.P14792563083043832555

`A056554(n+1)²²/A056555(n+1)`
-/

namespace A053165.P14792563083043832555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A056554 (n + 1) ^ 2) ^ 2 : ℚ) / (A056555 (n + 1) : ℚ)

end

end A053165.P14792563083043832555

namespace A053165

/-- `A056554(n+1)²²/A056555(n+1)` -/
def P14792563083043832555.Spec : Prop :=
  ∀ n, P14792563083043832555.a n = (A053165 (n + 1) : ℚ)

end A053165

/-! ## A053165.P14012928255864923022

`∑{d}[n+1, A219009(#)*A385006((n+1)/#)]`
-/

namespace A053165.P14012928255864923022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A219009 d * A385006 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053165.P14012928255864923022

namespace A053165

/-- `∑{d}[n+1, A219009(#)*A385006((n+1)/#)]` -/
def P14012928255864923022.Spec : Prop :=
  ∀ n, P14012928255864923022.a n = A053165 (n + 1)

end A053165

/-! ## A053165.P10900469587415664352

`Δ[A069891(n)]*A055491(A000188(n+1))`
-/

namespace A053165.P10900469587415664352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A055491 (A000188 (n + 1)).toNat

end

end A053165.P10900469587415664352

namespace A053165

/-- `Δ[A069891(n)]*A055491(A000188(n+1))` -/
def P10900469587415664352.Spec : Prop :=
  ∀ n, P10900469587415664352.a n = A053165 (n + 1)

end A053165

/-! ## A053165.P9633584208265804621

`A007913(n+1)*A055491(A000188(n+1))`
-/

namespace A053165.P9633584208265804621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A055491 (A000188 (n + 1)).toNat

end

end A053165.P9633584208265804621

namespace A053165

/-- `A007913(n+1)*A055491(A000188(n+1))` -/
def P9633584208265804621.Spec : Prop :=
  ∀ n, P9633584208265804621.a n = A053165 (n + 1)

end A053165

/-! ## A053165.P3661660006422664442

`(n+1)/A053167(A062378(A003557(n+1)))`
-/

namespace A053165.P3661660006422664442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053167 (A062378 (A003557 (n + 1)).toNat).toNat : ℚ)

end

end A053165.P3661660006422664442

namespace A053165

/-- `(n+1)/A053167(A062378(A003557(n+1)))` -/
def P3661660006422664442.Spec : Prop :=
  ∀ n, P3661660006422664442.a n = (A053165 (n + 1) : ℚ)

end A053165

/-! ## A053165.P4033924431722315659

`A053167(A056554(n+1))/A056555(n+1)`
-/

namespace A053165.P4033924431722315659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053167 (A056554 (n + 1)).toNat : ℚ) / (A056555 (n + 1) : ℚ)

end

end A053165.P4033924431722315659

namespace A053165

/-- `A053167(A056554(n+1))/A056555(n+1)` -/
def P4033924431722315659.Spec : Prop :=
  ∀ n, P4033924431722315659.a n = (A053165 (n + 1) : ℚ)

end A053165

/-! ## A053165.P5669368686233863117

`A058035(n+1)/A056555(A062379(n+1))`
-/

namespace A053165.P5669368686233863117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058035 (n + 1) : ℚ) / (A056555 (A062379 (n + 1)).toNat : ℚ)

end

end A053165.P5669368686233863117

namespace A053165

/-- `A058035(n+1)/A056555(A062379(n+1))` -/
def P5669368686233863117.Spec : Prop :=
  ∀ n, P5669368686233863117.a n = (A053165 (n + 1) : ℚ)

end A053165

/-! ## A053165.P16591381425025859019

`sqrt(A055491(n+1))*A055491(A000188(n+1))`
-/

namespace A053165.P16591381425025859019
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055491 (n + 1) : ℝ) * (A055491 (A000188 (n + 1)).toNat : ℝ)

end

end A053165.P16591381425025859019

namespace A053165

/-- `sqrt(A055491(n+1))*A055491(A000188(n+1))` -/
def P16591381425025859019.Spec : Prop :=
  ∀ n, P16591381425025859019.a n = (A053165 (n + 1) : ℝ)

end A053165

/-! ## A053165.P7394299424322990134

`A007913(sqrt(A008833(n+1)))²*A007913(n+1)`
-/

namespace A053165.P7394299424322990134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat ^ 2 * A007913 (n + 1)

end

end A053165.P7394299424322990134

namespace A053165

/-- `A007913(sqrt(A008833(n+1)))²*A007913(n+1)` -/
def P7394299424322990134.Spec : Prop :=
  ∀ n, P7394299424322990134.a n = A053165 (n + 1)

end A053165

/-! ## A053165.P2774043965411347419

`(n+1-A326128(n+1))*A055491(A000188(n+1))`
-/

namespace A053165.P2774043965411347419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A326128 (n + 1)) * A055491 (A000188 (n + 1)).toNat

end

end A053165.P2774043965411347419

namespace A053165

/-- `(n+1-A326128(n+1))*A055491(A000188(n+1))` -/
def P2774043965411347419.Spec : Prop :=
  ∀ n, P2774043965411347419.a n = A053165 (n + 1)

end A053165

/-! ## A053165.P4497620979993929315

`A007913(n+1)*A055491(sqrt((n+1)/A007913(n+1)))`
-/

namespace A053165.P4497620979993929315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A055491 (SequenceMachineLib.roundAway (Real.sqrt ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ) : ℝ))).toNat

end

end A053165.P4497620979993929315

namespace A053165

/-- `A007913(n+1)*A055491(sqrt((n+1)/A007913(n+1)))` -/
def P4497620979993929315.Spec : Prop :=
  ∀ n, P4497620979993929315.a n = A053165 (n + 1)

end A053165

/-! ## A053165.P14377627295434715611

`(A000203(n+1)-A326126(n+1))*A055491(A000188(n+1))`
-/

namespace A053165.P14377627295434715611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A326126 (n + 1)) * A055491 (A000188 (n + 1)).toNat

end

end A053165.P14377627295434715611

namespace A053165

/-- `(A000203(n+1)-A326126(n+1))*A055491(A000188(n+1))` -/
def P14377627295434715611.Spec : Prop :=
  ∀ n, P14377627295434715611.a n = A053165 (n + 1)

end A053165

/-! ## A053165.P17669472505878840962

`(A001065(n+1)-A326127(n+1))*A055491(A000188(n+1))`
-/

namespace A053165.P17669472505878840962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) - A326127 (n + 1)) * A055491 (A000188 (n + 1)).toNat

end

end A053165.P17669472505878840962

namespace A053165

/-- `(A001065(n+1)-A326127(n+1))*A055491(A000188(n+1))` -/
def P17669472505878840962.Spec : Prop :=
  ∀ n, P17669472505878840962.a n = A053165 (n + 1)

end A053165

/-! ## A053165.P2420342002648050333

`A007913(n+1)*A055491(A019554(n+1)/A007913(n+1))`
-/

namespace A053165.P2420342002648050333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A055491 (SequenceMachineLib.roundAway ((A019554 (n + 1) : ℚ) / (A007913 (n + 1) : ℚ))).toNat

end

end A053165.P2420342002648050333

namespace A053165

/-- `A007913(n+1)*A055491(A019554(n+1)/A007913(n+1))` -/
def P2420342002648050333.Spec : Prop :=
  ∀ n, P2420342002648050333.a n = A053165 (n + 1)

end A053165

/-!
# A053166: Smallest positive integer for which n divides a(n)^4.

The programs for A053166, the canonical program `A053166.P13162475752144618048` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053166 has offset 1).

The definition of A053166 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008835, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053166.P2865477939215295942

`(n+1)/A000190(n+1)`
-/

namespace A053166.P2865477939215295942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000190 (n + 1) : ℚ)

end

end A053166.P2865477939215295942

namespace A053166

/-- `(n+1)/A000190(n+1)` -/
def P2865477939215295942.Spec : Prop :=
  ∀ n, P2865477939215295942.a n = (A053166 (n + 1) : ℚ)

end A053166

/-! ## A053166.P13162475752144618048

`A019554(n+1)/A008835(A019554(n+1)²)^(1/4)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053166

/-- `A019554(n+1)/A008835(A019554(n+1)²)^(1/4)` -/
def P13162475752144618048.Spec : Prop :=
  ∀ n, P13162475752144618048.a n = (A053166 (n + 1) : ℝ)

end A053166

/-! ## A053166.P17844885187539766752

`sqrt(sqrt(A053167(n+1)))`
-/

namespace A053166.P17844885187539766752
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A053167 (n + 1) : ℝ))

end

end A053166.P17844885187539766752

namespace A053166

/-- `sqrt(sqrt(A053167(n+1)))` -/
def P17844885187539766752.Spec : Prop :=
  ∀ n, P17844885187539766752.a n = (A053166 (n + 1) : ℝ)

end A053166

/-! ## A053166.P7320813953373113302

`sqrt(sqrt((n+1)*A056555(n+1)))`
-/

namespace A053166.P7320813953373113302
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt ((n + 1 : ℤ) * A056555 (n + 1) : ℝ))

end

end A053166.P7320813953373113302

namespace A053166

/-- `sqrt(sqrt((n+1)*A056555(n+1)))` -/
def P7320813953373113302.Spec : Prop :=
  ∀ n, P7320813953373113302.a n = (A053166 (n + 1) : ℝ)

end A053166

/-! ## A053166.P9108180265558169777

`A019554(A019554(n+1))`
-/

namespace A053166.P9108180265558169777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A019554 (n + 1)).toNat

end

end A053166.P9108180265558169777

namespace A053166

/-- `A019554(A019554(n+1))` -/
def P9108180265558169777.Spec : Prop :=
  ∀ n, P9108180265558169777.a n = A053166 (n + 1)

end A053166

/-! ## A053166.P15864932526766119944

`sqrt(A053143(sqrt(A053143(n+1))))`
-/

namespace A053166.P15864932526766119944
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053143 (SequenceMachineLib.roundAway (Real.sqrt (A053143 (n + 1) : ℝ))).toNat : ℝ)

end

end A053166.P15864932526766119944

namespace A053166

/-- `sqrt(A053143(sqrt(A053143(n+1))))` -/
def P15864932526766119944.Spec : Prop :=
  ∀ n, P15864932526766119944.a n = (A053166 (n + 1) : ℝ)

end A053166

/-! ## A053166.P6150673612615196958

`A053164(n+1)*A056554(n+1)`
-/

namespace A053166.P6150673612615196958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (n + 1) * A056554 (n + 1)

end

end A053166.P6150673612615196958

namespace A053166

/-- `A053164(n+1)*A056554(n+1)` -/
def P6150673612615196958.Spec : Prop :=
  ∀ n, P6150673612615196958.a n = A053166 (n + 1)

end A053166

/-! ## A053166.P11113571416921386669

`A019555((n+1)/A053164(n+1))`
-/

namespace A053166.P11113571416921386669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A053164 (n + 1) : ℚ))).toNat

end

end A053166.P11113571416921386669

namespace A053166

/-- `A019555((n+1)/A053164(n+1))` -/
def P11113571416921386669.Spec : Prop :=
  ∀ n, P11113571416921386669.a n = A053166 (n + 1)

end A053166

/-! ## A053166.P527521560644146576

`A000188(A000188(n+1))*A056554(n+1)`
-/

namespace A053166.P527521560644146576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000188 (n + 1)).toNat * A056554 (n + 1)

end

end A053166.P527521560644146576

namespace A053166

/-- `A000188(A000188(n+1))*A056554(n+1)` -/
def P527521560644146576.Spec : Prop :=
  ∀ n, P527521560644146576.a n = A053166 (n + 1)

end A053166

/-! ## A053166.P17952654793583109259

`A019555(A019555(n+1)*A295657(n+1))`
-/

namespace A053166.P17952654793583109259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A019555 (n + 1) * A295657 (n + 1)).toNat

end

end A053166.P17952654793583109259

namespace A053166

/-- `A019555(A019555(n+1)*A295657(n+1))` -/
def P17952654793583109259.Spec : Prop :=
  ∀ n, P17952654793583109259.a n = A053166 (n + 1)

end A053166

/-! ## A053166.P7120030297408798378

`A019555((n+1)/A000188(A000188(n+1)))`
-/

namespace A053166.P7120030297408798378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (A000188 (n + 1)).toNat : ℚ))).toNat

end

end A053166.P7120030297408798378

namespace A053166

/-- `A019555((n+1)/A000188(A000188(n+1)))` -/
def P7120030297408798378.Spec : Prop :=
  ∀ n, P7120030297408798378.a n = A053166 (n + 1)

end A053166

/-! ## A053166.P11901078224215752876

`A254734(n+1)-(n+1)`
-/

namespace A053166.P11901078224215752876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254734 (n + 1) - (n + 1 : ℤ)

end

end A053166.P11901078224215752876

namespace A053166

/-- `A254734(n+1)-(n+1)` -/
def P11901078224215752876.Spec : Prop :=
  ∀ n, P11901078224215752876.a n = A053166 (n + 1)

end A053166

/-! ## A053166.P8898274961664257319

`A038388(A038388(2*(n+1)))/2`
-/

namespace A053166.P8898274961664257319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038388 (A038388 (2 * (n + 1))).toNat : ℚ) / 2

end

end A053166.P8898274961664257319

namespace A053166

/-- `A038388(A038388(2*(n+1)))/2` -/
def P8898274961664257319.Spec : Prop :=
  ∀ n, P8898274961664257319.a n = (A053166 (n + 1) : ℚ)

end A053166

/-! ## A053166.P578050890211596013

`gcd(A000027(n+1), A254734(n+1))`
-/

namespace A053166.P578050890211596013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A254734 (n + 1))

end

end A053166.P578050890211596013

namespace A053166

/-- `gcd(A000027(n+1), A254734(n+1))` -/
def P578050890211596013.Spec : Prop :=
  ∀ n, (P578050890211596013.a n : ℤ) = A053166 (n + 1)

end A053166

/-! ## A053166.P16608694843031009468

`A015052((n+1)*A053150(n+1))`
-/

namespace A053166.P16608694843031009468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 ((n + 1 : ℤ) * A053150 (n + 1)).toNat

end

end A053166.P16608694843031009468

namespace A053166

/-- `A015052((n+1)*A053150(n+1))` -/
def P16608694843031009468.Spec : Prop :=
  ∀ n, P16608694843031009468.a n = A053166 (n + 1)

end A053166

/-! ## A053166.P9849662393010702942

`A015053((n+1)*A295657(n+1))`
-/

namespace A053166.P9849662393010702942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 ((n + 1 : ℤ) * A295657 (n + 1)).toNat

end

end A053166.P9849662393010702942

namespace A053166

/-- `A015053((n+1)*A295657(n+1))` -/
def P9849662393010702942.Spec : Prop :=
  ∀ n, P9849662393010702942.a n = A053166 (n + 1)

end A053166

/-! ## A053166.P5571773252789688489

`A015053((n+1)*A000190(A000190(n+1)))`
-/

namespace A053166.P5571773252789688489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 ((n + 1 : ℤ) * A000190 (A000190 (n + 1)).toNat).toNat

end

end A053166.P5571773252789688489

namespace A053166

/-- `A015053((n+1)*A000190(A000190(n+1)))` -/
def P5571773252789688489.Spec : Prop :=
  ∀ n, P5571773252789688489.a n = A053166 (n + 1)

end A053166

/-! ## A053166.P3641090978809251655

`A015052(A356194(n+1))`
-/

namespace A053166.P3641090978809251655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A356194 (n + 1)).toNat

end

end A053166.P3641090978809251655

namespace A053166

/-- `A015052(A356194(n+1))` -/
def P3641090978809251655.Spec : Prop :=
  ∀ n, P3641090978809251655.a n = A053166 (n + 1)

end A053166

/-! ## A053166.P14597321499351210747

`A015053((n+1)*A000188(n+1))`
-/

namespace A053166.P14597321499351210747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 ((n + 1 : ℤ) * A000188 (n + 1)).toNat

end

end A053166.P14597321499351210747

namespace A053166

/-- `A015053((n+1)*A000188(n+1))` -/
def P14597321499351210747.Spec : Prop :=
  ∀ n, P14597321499351210747.a n = A053166 (n + 1)

end A053166

/-! ## A053166.P2385814677715992220

`A015053((n+1)*A329888(n+1))`
-/

namespace A053166.P2385814677715992220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 ((n + 1 : ℤ) * A329888 (n + 1)).toNat

end

end A053166.P2385814677715992220

namespace A053166

/-- `A015053((n+1)*A329888(n+1))` -/
def P2385814677715992220.Spec : Prop :=
  ∀ n, P2385814677715992220.a n = A053166 (n + 1)

end A053166

/-!
# A053167: Smallest 4th power divisible by n.

The programs for A053167, the canonical program `A053167.P8322437054193827478` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053167 has offset 1).

The definition of A053167 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008835, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053167.P17562730239957484586

`((n+1)/A000190(n+1))^4`
-/

namespace A053167.P17562730239957484586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (A000190 (n + 1) : ℚ)) ^ 4

end

end A053167.P17562730239957484586

namespace A053167

/-- `((n+1)/A000190(n+1))^4` -/
def P17562730239957484586.Spec : Prop :=
  ∀ n, P17562730239957484586.a n = (A053167 (n + 1) : ℚ)

end A053167

/-! ## A053167.P8322437054193827478

`((n+1)*A007913(n+1))²/A008835((n+1)*A007913(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053167

/-- `((n+1)*A007913(n+1))²/A008835((n+1)*A007913(n+1))` -/
def P8322437054193827478.Spec : Prop :=
  ∀ n, P8322437054193827478.a n = (A053167 (n + 1) : ℚ)

end A053167

/-! ## A053167.P16403547677195952861

`A053166(n+1)^4`
-/

namespace A053167.P16403547677195952861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (n + 1) ^ 4

end

end A053167.P16403547677195952861

namespace A053167

/-- `A053166(n+1)^4` -/
def P16403547677195952861.Spec : Prop :=
  ∀ n, P16403547677195952861.a n = A053167 (n + 1)

end A053167

/-! ## A053167.P18189249409812296702

`(n+1)*A056555(n+1)`
-/

namespace A053167.P18189249409812296702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A056555 (n + 1)

end

end A053167.P18189249409812296702

namespace A053167

/-- `(n+1)*A056555(n+1)` -/
def P18189249409812296702.Spec : Prop :=
  ∀ n, P18189249409812296702.a n = A053167 (n + 1)

end A053167

/-! ## A053167.P11985345441143646323

`A000583(A053166(n+1))`
-/

namespace A053167.P11985345441143646323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A053166 (n + 1)).toNat

end

end A053167.P11985345441143646323

namespace A053167

/-- `A000583(A053166(n+1))` -/
def P11985345441143646323.Spec : Prop :=
  ∀ n, P11985345441143646323.a n = A053167 (n + 1)

end A053167

/-! ## A053167.P9219029635992168280

`A053143(A019554(n+1))²`
-/

namespace A053167.P9219029635992168280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (A019554 (n + 1)).toNat ^ 2

end

end A053167.P9219029635992168280

namespace A053167

/-- `A053143(A019554(n+1))²` -/
def P9219029635992168280.Spec : Prop :=
  ∀ n, P9219029635992168280.a n = A053167 (n + 1)

end A053167

/-! ## A053167.P16219458080939509808

`A053166(A000027(n+1))²²`
-/

namespace A053167.P16219458080939509808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053166 (A000027 (n + 1)).toNat ^ 2) ^ 2

end

end A053167.P16219458080939509808

namespace A053167

/-- `A053166(A000027(n+1))²²` -/
def P16219458080939509808.Spec : Prop :=
  ∀ n, P16219458080939509808.a n = A053167 (n + 1)

end A053167

/-! ## A053167.P9961660694669361003

`A053143(sqrt(A053143(n+1)))²`
-/

namespace A053167.P9961660694669361003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (SequenceMachineLib.roundAway (Real.sqrt (A053143 (n + 1) : ℝ))).toNat ^ 2

end

end A053167.P9961660694669361003

namespace A053167

/-- `A053143(sqrt(A053143(n+1)))²` -/
def P9961660694669361003.Spec : Prop :=
  ∀ n, P9961660694669361003.a n = A053167 (n + 1)

end A053167

/-! ## A053167.P7253424787334986954

`A008835(n+1)*A056553(n+1)`
-/

namespace A053167.P7253424787334986954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (n + 1) * A056553 (n + 1)

end

end A053167.P7253424787334986954

namespace A053167

/-- `A008835(n+1)*A056553(n+1)` -/
def P7253424787334986954.Spec : Prop :=
  ∀ n, P7253424787334986954.a n = A053167 (n + 1)

end A053167

/-! ## A053167.P8372888177674783071

`A000583((n+1)/A000190(n+1))`
-/

namespace A053167.P8372888177674783071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000190 (n + 1) : ℚ))).toNat

end

end A053167.P8372888177674783071

namespace A053167

/-- `A000583((n+1)/A000190(n+1))` -/
def P8372888177674783071.Spec : Prop :=
  ∀ n, P8372888177674783071.a n = A053167 (n + 1)

end A053167

/-! ## A053167.P6445483600803280476

`(A053164(n+1)*A056554(n+1))²²`
-/

namespace A053167.P6445483600803280476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A053164 (n + 1) * A056554 (n + 1)) ^ 2) ^ 2

end

end A053167.P6445483600803280476

namespace A053167

/-- `(A053164(n+1)*A056554(n+1))²²` -/
def P6445483600803280476.Spec : Prop :=
  ∀ n, P6445483600803280476.a n = A053167 (n + 1)

end A053167

/-! ## A053167.P3152612412437490044

`A053143(n+1)*A055491(A019554(n+1))`
-/

namespace A053167.P3152612412437490044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (n + 1) * A055491 (A019554 (n + 1)).toNat

end

end A053167.P3152612412437490044

namespace A053167

/-- `A053143(n+1)*A055491(A019554(n+1))` -/
def P3152612412437490044.Spec : Prop :=
  ∀ n, P3152612412437490044.a n = A053167 (n + 1)

end A053167

/-! ## A053167.P1757770557124140928

`A053143(A000188(n+1)*A007913(n+1))²`
-/

namespace A053167.P1757770557124140928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (A000188 (n + 1) * A007913 (n + 1)).toNat ^ 2

end

end A053167.P1757770557124140928

namespace A053167

/-- `A053143(A000188(n+1)*A007913(n+1))²` -/
def P1757770557124140928.Spec : Prop :=
  ∀ n, P1757770557124140928.a n = A053167 (n + 1)

end A053167

/-! ## A053167.P8143808187313737539

`A053143(sqrt(A053143(n+1)))^(2%A276934(n))`
-/

namespace A053167.P8143808187313737539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053143 (SequenceMachineLib.roundAway (Real.sqrt (A053143 (n + 1) : ℝ))).toNat : ℚ) ^ (Int.tmod 2 (A276934 n) : ℤ)

end

end A053167.P8143808187313737539

namespace A053167

/-- `A053143(sqrt(A053143(n+1)))^(2%A276934(n))` -/
def P8143808187313737539.Spec : Prop :=
  ∀ n, P8143808187313737539.a n = (A053167 (n + 1) : ℚ)

end A053167

/-! ## A053167.P14025388955171520599

`(A000188(A000188(n+1))*A056554(n+1))²²`
-/

namespace A053167.P14025388955171520599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A000188 (A000188 (n + 1)).toNat * A056554 (n + 1)) ^ 2) ^ 2

end

end A053167.P14025388955171520599

namespace A053167

/-- `(A000188(A000188(n+1))*A056554(n+1))²²` -/
def P14025388955171520599.Spec : Prop :=
  ∀ n, P14025388955171520599.a n = A053167 (n + 1)

end A053167

/-! ## A053167.P5737216110761781905

`A000188(A000188(n+1))²²*A056553(n+1)`
-/

namespace A053167.P5737216110761781905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000188 (A000188 (n + 1)).toNat ^ 2) ^ 2 * A056553 (n + 1)

end

end A053167.P5737216110761781905

namespace A053167

/-- `A000188(A000188(n+1))²²*A056553(n+1)` -/
def P5737216110761781905.Spec : Prop :=
  ∀ n, P5737216110761781905.a n = A053167 (n + 1)

end A053167

/-! ## A053167.P7178231570417847800

`(n+1-A254734(n+1))²²`
-/

namespace A053167.P7178231570417847800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℤ) - A254734 (n + 1)) ^ 2) ^ 2

end

end A053167.P7178231570417847800

namespace A053167

/-- `(n+1-A254734(n+1))²²` -/
def P7178231570417847800.Spec : Prop :=
  ∀ n, P7178231570417847800.a n = A053167 (n + 1)

end A053167

/-! ## A053167.P17145095530184804541

`A008833(A053166(n+1)²)²`
-/

namespace A053167.P17145095530184804541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A053166 (n + 1) ^ 2).toNat ^ 2

end

end A053167.P17145095530184804541

namespace A053167

/-- `A008833(A053166(n+1)²)²` -/
def P17145095530184804541.Spec : Prop :=
  ∀ n, P17145095530184804541.a n = A053167 (n + 1)

end A053167

/-! ## A053167.P14463037641784141225

`A015052(A114562(n+1))²²`
-/

namespace A053167.P14463037641784141225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A015052 (A114562 (n + 1)).toNat ^ 2) ^ 2

end

end A053167.P14463037641784141225

namespace A053167

/-- `A015052(A114562(n+1))²²` -/
def P14463037641784141225.Spec : Prop :=
  ∀ n, P14463037641784141225.a n = A053167 (n + 1)

end A053167

/-! ## A053167.P4446508101522439637

`A053143(A327172(A327171(n+1)))²`
-/

namespace A053167.P4446508101522439637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (A327172 (A327171 (n + 1)).toNat).toNat ^ 2

end

end A053167.P4446508101522439637

namespace A053167

/-- `A053143(A327172(A327171(n+1)))²` -/
def P4446508101522439637.Spec : Prop :=
  ∀ n, P4446508101522439637.a n = A053167 (n + 1)

end A053167

/-!
# A053168: Hamming weights (or nonlinearity) of degree 4 rotation-symmetric functions.

The programs for A053168, there is no canonical definition to state claims against.
-/

/-! ## A053168.P12188723359133149023

`A147562(n)+A099375(A299380(n+1))`
-/

namespace A053168.P12188723359133149023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 n + A099375 (A299380 (n + 1)).toNat

end

end A053168.P12188723359133149023

/-!
# A053169: A paradoxical sequence: a positive integer n is in this sequence if and only if n is not in sequence A_n in the database.

The programs for A053169, there is no canonical definition to state claims against.
-/

/-! ## A053169.P7337975980204806342

`comp[A053873(n+1)-1]+1`
-/

namespace A053169.P7337975980204806342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053873 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A053169.P7337975980204806342

/-!
# A053170: Number of 3 X 3 integer matrices with elements in the range [ -n,n ] which generate a group of finite order under matrix multiplication.

The programs for A053170, there is no canonical definition to state claims against.
-/

/-! ## A053170.P16517943268938195597

`2*(1+A053171(n+1)+A053172(n+1)+A053173(n+1)+A053174(n+1))`
-/

namespace A053170.P16517943268938195597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 + A053171 (n + 1) + A053172 (n + 1) + A053173 (n + 1) + A053174 (n + 1))

end

end A053170.P16517943268938195597

/-!
# A053171: Number of 3 X 3 integer matrices with elements in the range [ -n,n ] which represent a rotation of order 2.

The programs for A053171, there is no canonical definition to state claims against.
-/

/-! ## A053171.P10632707995319434

`floor(A054466(n+1)/2)`
-/

namespace A053171.P10632707995319434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054466 (n + 1) : ℚ) / 2⌋

end

end A053171.P10632707995319434

/-! ## A053171.P7950676139866803731

`A000265(A054466(n+1)-1)`
-/

namespace A053171.P7950676139866803731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A054466 (n + 1) - 1).toNat

end

end A053171.P7950676139866803731

/-! ## A053171.P15382436089656528577

`A014682(A054466(n+1)-1)`
-/

namespace A053171.P15382436089656528577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A054466 (n + 1) - 1).toNat

end

end A053171.P15382436089656528577

/-! ## A053171.P8967786769343692812

`A103391(A054466(n+1)-3)`
-/

namespace A053171.P8967786769343692812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A054466 (n + 1) - 3).toNat

end

end A053171.P8967786769343692812

/-! ## A053171.P6927080383345723997

`A339913(A054466(n+1)-3)`
-/

namespace A053171.P6927080383345723997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 (A054466 (n + 1) - 3).toNat

end

end A053171.P6927080383345723997

/-!
# A053172: Number of 3 X 3 integer matrices with elements in the range [ -n,n ] which represent a three-fold rotation.

The programs for A053172, there is no canonical definition to state claims against.
-/

/-! ## A053172.P3949548805076849067

`A054468(n+1)-2*A053174(n+1)`
-/

namespace A053172.P3949548805076849067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054468 (n + 1) - 2 * A053174 (n + 1)

end

end A053172.P3949548805076849067

/-!
# A053173: Number of 3 X 3 integer matrices with elements in the range [ -n,n ] which represent a four-fold rotation. Also the sequence for the corresponding four-fold rotoinversions.

The programs for A053173, there is no canonical definition to state claims against.
-/

/-! ## A053173.P940253828106722059

`A054467(n+1)/2`
-/

namespace A053173.P940253828106722059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054467 (n + 1) : ℚ) / 2

end

end A053173.P940253828106722059

/-!
# A053174: Number of 3 X 3 integer matrices with elements in the range [ -n,n ] which represent a six-fold rotation. Also the sequence for the corresponding six-fold rotoinversions.

The programs for A053174, there is no canonical definition to state claims against.
-/

/-! ## A053174.P12757168630734566294

`(A054468(n+1)-A053172(n+1))/2`
-/

namespace A053174.P12757168630734566294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054468 (n + 1) - A053172 (n + 1) : ℚ) / 2

end

end A053174.P12757168630734566294

/-!
# A053176: Primes p such that 2p+1 is composite.

The programs for A053176, the canonical program `A053176.P7503796743926850121` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053176 has offset 1).

The definition of A053176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8778 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053176.P13752934734328923309

`A079702(n+1)/2`
-/

namespace A053176.P13752934734328923309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079702 (n + 1) : ℚ) / 2

end

end A053176.P13752934734328923309

namespace A053176

/-- `A079702(n+1)/2` -/
def P13752934734328923309.Spec : Prop :=
  ∀ n, P13752934734328923309.a n = (A053176 (n + 1) : ℚ)

theorem P13752934734328923309.correct : P13752934734328923309.Spec := by
  intro n
  simp only [A053176, Nat.add_sub_cancel, A053176.P13752934734328923309.a, A053176.P7503796743926850121.f1, A053176.P7503796743926850121.f2, A053176.P7503796743926850121.a, A023595, A023595.P11716259585214489517.f1, A023595.P11716259585214489517.a, A065091, A065091.P6971844946592549357.a, A079702, A079702.P8447432609584050613.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A053177, A053177.P14888561992425814603.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053176

/-! ## A053176.P9373440131407901440

`floor(A053177(n+1)/2)`
-/

namespace A053176.P9373440131407901440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053177 (n + 1) : ℚ) / 2⌋

end

end A053176.P9373440131407901440

namespace A053176

/-- `floor(A053177(n+1)/2)` -/
def P9373440131407901440.Spec : Prop :=
  ∀ n, P9373440131407901440.a n = A053176 (n + 1)

end A053176

/-! ## A053176.P8721960405041142561

`A065091(eq[1, A181697(n+1)])`
-/

namespace A053176.P8721960405041142561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053176.P8721960405041142561

namespace A053176

/-- `A065091(eq[1, A181697(n+1)])` -/
def P8721960405041142561.Spec : Prop :=
  ∀ n, P8721960405041142561.a n = A053176 (n + 1)

end A053176

/-! ## A053176.P7503796743926850121

`A065091(lt[1, A023595(n+1)])`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053176

/-- `A065091(lt[1, A023595(n+1)])` -/
def P7503796743926850121.Spec : Prop :=
  ∀ n, P7503796743926850121.a n = A053176 (n + 1)

theorem P7503796743926850121.correct : P7503796743926850121.Spec := by
  intro n
  simp only [A053176, Nat.add_sub_cancel]

end A053176

/-! ## A053176.P1978821201644038926

`A065091(lt[A181697(n+1), 2])`
-/

namespace A053176.P1978821201644038926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181697 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A053176.P1978821201644038926

namespace A053176

/-- `A065091(lt[A181697(n+1), 2])` -/
def P1978821201644038926.Spec : Prop :=
  ∀ n, P1978821201644038926.a n = A053176 (n + 1)

end A053176

/-! ## A053176.P17723461039414092687

`p?[A156543(n+1)]`
-/

namespace A053176.P17723461039414092687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053176.P17723461039414092687

namespace A053176

/-- `p?[A156543(n+1)]` -/
def P17723461039414092687.Spec : Prop :=
  ∀ n, P17723461039414092687.a n = A053176 (n + 1)

end A053176

/-! ## A053176.P15111291222399808558

`filter[A156543(n+1), A010051(#)]`
-/

namespace A053176.P15111291222399808558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A053176.P15111291222399808558

namespace A053176

/-- `filter[A156543(n+1), A010051(#)]` -/
def P15111291222399808558.Spec : Prop :=
  ∀ n, P15111291222399808558.a n = A053176 (n + 1)

end A053176

/-! ## A053176.P2648221584354416850

`filter[A156543(n+1), A323153(#)]`
-/

namespace A053176.P2648221584354416850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A053176.P2648221584354416850

namespace A053176

/-- `filter[A156543(n+1), A323153(#)]` -/
def P2648221584354416850.Spec : Prop :=
  ∀ n, P2648221584354416850.a n = A053176 (n + 1)

end A053176

/-! ## A053176.P17936132810289993375

`filter[A156543(n+1), A327861(#)]`
-/

namespace A053176.P17936132810289993375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A053176.P17936132810289993375

namespace A053176

/-- `filter[A156543(n+1), A327861(#)]` -/
def P17936132810289993375.Spec : Prop :=
  ∀ n, P17936132810289993375.a n = A053176 (n + 1)

end A053176

/-! ## A053176.P441448132150560306

`filter[A156543(n+1), A353670(#)]`
-/

namespace A053176.P441448132150560306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A053176.P441448132150560306

namespace A053176

/-- `filter[A156543(n+1), A353670(#)]` -/
def P441448132150560306.Spec : Prop :=
  ∀ n, P441448132150560306.a n = A053176 (n + 1)

end A053176

/-! ## A053176.P7306837993181181954

`filter[A156543(n+2), A323152(#)]`
-/

namespace A053176.P7306837993181181954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A053176.P7306837993181181954

namespace A053176

/-- `filter[A156543(n+2), A323152(#)]` -/
def P7306837993181181954.Spec : Prop :=
  ∀ n, P7306837993181181954.a n = A053176 (n + 1)

end A053176

/-! ## A053176.P15454398648419679726

`filter[A156543(n+2), A340371(#)]`
-/

namespace A053176.P15454398648419679726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A053176.P15454398648419679726

namespace A053176

/-- `filter[A156543(n+2), A340371(#)]` -/
def P15454398648419679726.Spec : Prop :=
  ∀ n, P15454398648419679726.a n = A053176 (n + 1)

end A053176

/-! ## A053176.P8886570641503570984

`eq[1, A339579(n+1)]`
-/

namespace A053176.P8886570641503570984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053176.P8886570641503570984

namespace A053176

/-- `eq[1, A339579(n+1)]` -/
def P8886570641503570984.Spec : Prop :=
  ∀ n, (P8886570641503570984.a n : ℤ) = A053176 (n + 1)

end A053176

/-! ## A053176.P16482399033608269333

`p?[n*(1-A101264(n))]`
-/

namespace A053176.P16482399033608269333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A101264 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053176.P16482399033608269333

namespace A053176

/-- `p?[n*(1-A101264(n))]` -/
def P16482399033608269333.Spec : Prop :=
  ∀ n, P16482399033608269333.a n = A053176 (n + 1)

end A053176

/-! ## A053176.P9255742882162570200

`A000265(A079702(n+1))`
-/

namespace A053176.P9255742882162570200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A079702 (n + 1)).toNat

end

end A053176.P9255742882162570200

namespace A053176

/-- `A000265(A079702(n+1))` -/
def P9255742882162570200.Spec : Prop :=
  ∀ n, P9255742882162570200.a n = A053176 (n + 1)

end A053176

/-! ## A053176.P4540564979664093826

`record[A006530(A005277(n+1))]`
-/

namespace A053176.P4540564979664093826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005277 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053176.P4540564979664093826

namespace A053176

/-- `record[A006530(A005277(n+1))]` -/
def P4540564979664093826.Spec : Prop :=
  ∀ n, P4540564979664093826.a n = A053176 (n + 1)

end A053176

/-! ## A053176.P6448590156545878048

`eq[A099801(A020639(n+1)), A099801(n)]+1`
-/

namespace A053176.P6448590156545878048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A020639 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053176.P6448590156545878048

namespace A053176

/-- `eq[A099801(A020639(n+1)), A099801(n)]+1` -/
def P6448590156545878048.Spec : Prop :=
  ∀ n, (P6448590156545878048.a n : ℤ) = A053176 (n + 1)

end A053176

/-! ## A053176.P16454717905731976054

`p?[record[A340089(2*n+1)]]`
-/

namespace A053176.P16454717905731976054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340089 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053176.P16454717905731976054

namespace A053176

/-- `p?[record[A340089(2*n+1)]]` -/
def P16454717905731976054.Spec : Prop :=
  ∀ n, P16454717905731976054.a n = A053176 (n + 1)

end A053176

/-! ## A053176.P12019784719507143883

`p?[A322809(2*n+1)-2]`
-/

namespace A053176.P12019784719507143883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322809 (2 * n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053176.P12019784719507143883

namespace A053176

/-- `p?[A322809(2*n+1)-2]` -/
def P12019784719507143883.Spec : Prop :=
  ∀ n, P12019784719507143883.a n = A053176 (n + 1)

end A053176

/-! ## A053176.P6143910242502263242

`p?[n*A005171(2*n+1)]`
-/

namespace A053176.P6143910242502263242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005171 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053176.P6143910242502263242

namespace A053176

/-- `p?[n*A005171(2*n+1)]` -/
def P6143910242502263242.Spec : Prop :=
  ∀ n, P6143910242502263242.a n = A053176 (n + 1)

end A053176

/-!
# A053177: Odd composite k such that (k-1)/2 is prime.

The programs for A053177, the canonical program `A053177.P14888561992425814603` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053177 has offset 1).

The definition of A053177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053177.P11327416534176273409

`A079702(n+1)+1`
-/

namespace A053177.P11327416534176273409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079702 (n + 1) + 1

end

end A053177.P11327416534176273409

namespace A053177

/-- `A079702(n+1)+1` -/
def P11327416534176273409.Spec : Prop :=
  ∀ n, P11327416534176273409.a n = A053177 (n + 1)

theorem P11327416534176273409.correct : P11327416534176273409.Spec := by
  intro n
  simp only [A053177, Nat.add_sub_cancel, A053177.P11327416534176273409.a, A053177.P14888561992425814603.a, A053176, A053176.P7503796743926850121.f1, A053176.P7503796743926850121.f2, A053176.P7503796743926850121.a, A079702, A079702.P8447432609584050613.a, A023595, A023595.P11716259585214489517.f1, A023595.P11716259585214489517.a, A065091, A065091.P6971844946592549357.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053177

/-! ## A053177.P14888561992425814603

`2*A053176(n+1)+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A053177

/-- `2*A053176(n+1)+1` -/
def P14888561992425814603.Spec : Prop :=
  ∀ n, P14888561992425814603.a n = A053177 (n + 1)

theorem P14888561992425814603.correct : P14888561992425814603.Spec := by
  intro n
  simp only [A053177, Nat.add_sub_cancel]

end A053177

/-! ## A053177.P10107797686115418624

`2*eq[1, A339579(n+1)]+1`
-/

namespace A053177.P10107797686115418624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053177.P10107797686115418624

namespace A053177

/-- `2*eq[1, A339579(n+1)]+1` -/
def P10107797686115418624.Spec : Prop :=
  ∀ n, (P10107797686115418624.a n : ℤ) = A053177 (n + 1)

end A053177

/-! ## A053177.P3470369283788927759

`filter[A072055(n+1), A373979(#)]`
-/

namespace A053177.P3470369283788927759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373979 (f1 j).toNat = 1) n)

end

end A053177.P3470369283788927759

namespace A053177

/-- `filter[A072055(n+1), A373979(#)]` -/
def P3470369283788927759.Spec : Prop :=
  ∀ n, P3470369283788927759.a n = A053177 (n + 1)

end A053177

/-! ## A053177.P17166959370874583569

`filter[A166496(n+1), A373979(#)]`
-/

namespace A053177.P17166959370874583569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373979 (f1 j).toNat = 1) n)

end

end A053177.P17166959370874583569

namespace A053177

/-- `filter[A166496(n+1), A373979(#)]` -/
def P17166959370874583569.Spec : Prop :=
  ∀ n, P17166959370874583569.a n = A053177 (n + 1)

end A053177

/-! ## A053177.P8161562365166175657

`2*record[A006530(A005277(n+1))]+1`
-/

namespace A053177.P8161562365166175657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005277 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A053177.P8161562365166175657

namespace A053177

/-- `2*record[A006530(A005277(n+1))]+1` -/
def P8161562365166175657.Spec : Prop :=
  ∀ n, P8161562365166175657.a n = A053177 (n + 1)

end A053177

/-! ## A053177.P2724702023723466036

`∩[A005277(n+1), A054395(n+1)]+1`
-/

namespace A053177.P2724702023723466036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A053177.P2724702023723466036

namespace A053177

/-- `∩[A005277(n+1), A054395(n+1)]+1` -/
def P2724702023723466036.Spec : Prop :=
  ∀ n, (P2724702023723466036.a n : ℤ) = A053177 (n + 1)

end A053177

/-! ## A053177.P7200727518819284885

`filter[A108144(n+1), A373979(#)]`
-/

namespace A053177.P7200727518819284885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373979 (f1 j).toNat = 1) n)

end

end A053177.P7200727518819284885

namespace A053177

/-- `filter[A108144(n+1), A373979(#)]` -/
def P7200727518819284885.Spec : Prop :=
  ∀ n, P7200727518819284885.a n = A053177 (n + 1)

end A053177

/-! ## A053177.P15736574901096364312

`∩[A001358(n+1), A005277(n+1)]+1`
-/

namespace A053177.P15736574901096364312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A053177.P15736574901096364312

namespace A053177

/-- `∩[A001358(n+1), A005277(n+1)]+1` -/
def P15736574901096364312.Spec : Prop :=
  ∀ n, (P15736574901096364312.a n : ℤ) = A053177 (n + 1)

end A053177

/-! ## A053177.P9883508069994166571

`filter[A072055(n+1), A005171(#)]`
-/

namespace A053177.P9883508069994166571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053177.P9883508069994166571

namespace A053177

/-- `filter[A072055(n+1), A005171(#)]` -/
def P9883508069994166571.Spec : Prop :=
  ∀ n, P9883508069994166571.a n = A053177 (n + 1)

end A053177

/-! ## A053177.P13758714907786901706

`filter[A072055(n+1), A066247(#)]`
-/

namespace A053177.P13758714907786901706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A053177.P13758714907786901706

namespace A053177

/-- `filter[A072055(n+1), A066247(#)]` -/
def P13758714907786901706.Spec : Prop :=
  ∀ n, P13758714907786901706.a n = A053177 (n + 1)

end A053177

/-! ## A053177.P16035181655355227110

`filter[A072055(n+1), A202238(#)]`
-/

namespace A053177.P16035181655355227110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A053177.P16035181655355227110

namespace A053177

/-- `filter[A072055(n+1), A202238(#)]` -/
def P16035181655355227110.Spec : Prop :=
  ∀ n, P16035181655355227110.a n = A053177 (n + 1)

end A053177

/-! ## A053177.P5877937943249041050

`filter[A072055(n+1), A292438(#)]`
-/

namespace A053177.P5877937943249041050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A053177.P5877937943249041050

namespace A053177

/-- `filter[A072055(n+1), A292438(#)]` -/
def P5877937943249041050.Spec : Prop :=
  ∀ n, P5877937943249041050.a n = A053177 (n + 1)

end A053177

/-! ## A053177.P5571980003858853928

`filter[A072055(n+1), A323162(#)]`
-/

namespace A053177.P5571980003858853928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A053177.P5571980003858853928

namespace A053177

/-- `filter[A072055(n+1), A323162(#)]` -/
def P5571980003858853928.Spec : Prop :=
  ∀ n, P5571980003858853928.a n = A053177 (n + 1)

end A053177

/-! ## A053177.P2367490216370504993

`filter[A166496(n+1), A292438(#)]`
-/

namespace A053177.P2367490216370504993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A053177.P2367490216370504993

namespace A053177

/-- `filter[A166496(n+1), A292438(#)]` -/
def P2367490216370504993.Spec : Prop :=
  ∀ n, P2367490216370504993.a n = A053177 (n + 1)

end A053177

/-! ## A053177.P4742355754802955172

`filter[A166496(n+1), A323162(#)]`
-/

namespace A053177.P4742355754802955172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A053177.P4742355754802955172

namespace A053177

/-- `filter[A166496(n+1), A323162(#)]` -/
def P4742355754802955172.Spec : Prop :=
  ∀ n, P4742355754802955172.a n = A053177 (n + 1)

end A053177

/-! ## A053177.P12729730864793110878

`filter[A166496(n+2), A005171(#)]`
-/

namespace A053177.P12729730864793110878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053177.P12729730864793110878

namespace A053177

/-- `filter[A166496(n+2), A005171(#)]` -/
def P12729730864793110878.Spec : Prop :=
  ∀ n, P12729730864793110878.a n = A053177 (n + 1)

end A053177

/-! ## A053177.P2772400485109876778

`filter[A166496(n+2), A066247(#)]`
-/

namespace A053177.P2772400485109876778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A053177.P2772400485109876778

namespace A053177

/-- `filter[A166496(n+2), A066247(#)]` -/
def P2772400485109876778.Spec : Prop :=
  ∀ n, P2772400485109876778.a n = A053177 (n + 1)

end A053177

/-! ## A053177.P11552365247048728675

`filter[A166496(n+2), A202238(#)]`
-/

namespace A053177.P11552365247048728675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A053177.P11552365247048728675

namespace A053177

/-- `filter[A166496(n+2), A202238(#)]` -/
def P11552365247048728675.Spec : Prop :=
  ∀ n, P11552365247048728675.a n = A053177 (n + 1)

end A053177

/-! ## A053177.P2943406439575001685

`∩[A100368(n+1), A337609(n+1)]+1`
-/

namespace A053177.P2943406439575001685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A053177.P2943406439575001685

namespace A053177

/-- `∩[A100368(n+1), A337609(n+1)]+1` -/
def P2943406439575001685.Spec : Prop :=
  ∀ n, (P2943406439575001685.a n : ℤ) = A053177 (n + 1)

end A053177

/-!
# A053178: Numbers ending in 1 which are not prime.

The programs for A053178, the canonical program `A053178.P15316804422992662611` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053178 has offset 1).

The definition of A053178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7613 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053178.P15316804422992662611

`record[A171435(10*n+11)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A053178

/-- `record[A171435(10*n+11)]` -/
def P15316804422992662611.Spec : Prop :=
  ∀ n, P15316804422992662611.a n = A053178 (n + 1)

theorem P15316804422992662611.correct : P15316804422992662611.Spec := by
  intro n
  simp only [A053178, Nat.add_sub_cancel]

end A053178

/-! ## A053178.P6185534635182571873

`A017281(A153275(n+1))`
-/

namespace A053178.P6185534635182571873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A153275 (n + 1)).toNat

end

end A053178.P6185534635182571873

namespace A053178

/-- `A017281(A153275(n+1))` -/
def P6185534635182571873.Spec : Prop :=
  ∀ n, P6185534635182571873.a n = A053178 (n + 1)

end A053178

/-! ## A053178.P12807284036452825532

`A008592(lt[1, A091088(n)])+1`
-/

namespace A053178.P12807284036452825532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 1

end

end A053178.P12807284036452825532

namespace A053178

/-- `A008592(lt[1, A091088(n)])+1` -/
def P12807284036452825532.Spec : Prop :=
  ∀ n, P12807284036452825532.a n = A053178 (n + 1)

end A053178

/-! ## A053178.P6460624524337406689

`filter[A017281(n), A005171(#)]`
-/

namespace A053178.P6460624524337406689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053178.P6460624524337406689

namespace A053178

/-- `filter[A017281(n), A005171(#)]` -/
def P6460624524337406689.Spec : Prop :=
  ∀ n, P6460624524337406689.a n = A053178 (n + 1)

end A053178

/-! ## A053178.P10425871527923701135

`filter[A017281(n), A292438(#)]`
-/

namespace A053178.P10425871527923701135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A053178.P10425871527923701135

namespace A053178

/-- `filter[A017281(n), A292438(#)]` -/
def P10425871527923701135.Spec : Prop :=
  ∀ n, P10425871527923701135.a n = A053178 (n + 1)

end A053178

/-! ## A053178.P9333470512194696482

`A016861(2*A153275(n+1))`
-/

namespace A053178.P9333470512194696482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (2 * A153275 (n + 1)).toNat

end

end A053178.P9333470512194696482

namespace A053178

/-- `A016861(2*A153275(n+1))` -/
def P9333470512194696482.Spec : Prop :=
  ∀ n, P9333470512194696482.a n = A053178 (n + 1)

end A053178

/-! ## A053178.P17272396683047475386

`filter[A016861(2*n), A005171(#)]`
-/

namespace A053178.P17272396683047475386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053178.P17272396683047475386

namespace A053178

/-- `filter[A016861(2*n), A005171(#)]` -/
def P17272396683047475386.Spec : Prop :=
  ∀ n, P17272396683047475386.a n = A053178 (n + 1)

end A053178

/-! ## A053178.P18208134803801298198

`filter[A016861(2*n), A292438(#)]`
-/

namespace A053178.P18208134803801298198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A053178.P18208134803801298198

namespace A053178

/-- `filter[A016861(2*n), A292438(#)]` -/
def P18208134803801298198.Spec : Prop :=
  ∀ n, P18208134803801298198.a n = A053178 (n + 1)

end A053178

/-! ## A053178.P2851724024548407393

`filter[A090771(2*n+1), A005171(#)]`
-/

namespace A053178.P2851724024548407393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053178.P2851724024548407393

namespace A053178

/-- `filter[A090771(2*n+1), A005171(#)]` -/
def P2851724024548407393.Spec : Prop :=
  ∀ n, P2851724024548407393.a n = A053178 (n + 1)

end A053178

/-! ## A053178.P15616692137040476605

`filter[A131229(2*n+1), A005171(#)]`
-/

namespace A053178.P15616692137040476605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131229 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053178.P15616692137040476605

namespace A053178

/-- `filter[A131229(2*n+1), A005171(#)]` -/
def P15616692137040476605.Spec : Prop :=
  ∀ n, P15616692137040476605.a n = A053178 (n + 1)

end A053178

/-! ## A053178.P3064545553630272221

`filter[A166525(2*n+1), A005171(#)]`
-/

namespace A053178.P3064545553630272221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166525 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053178.P3064545553630272221

namespace A053178

/-- `filter[A166525(2*n+1), A005171(#)]` -/
def P3064545553630272221.Spec : Prop :=
  ∀ n, P3064545553630272221.a n = A053178 (n + 1)

end A053178

/-! ## A053178.P4374112338731090147

`filter[A168459(2*n+1), A005171(#)]`
-/

namespace A053178.P4374112338731090147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168459 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053178.P4374112338731090147

namespace A053178

/-- `filter[A168459(2*n+1), A005171(#)]` -/
def P4374112338731090147.Spec : Prop :=
  ∀ n, P4374112338731090147.a n = A053178 (n + 1)

end A053178

/-! ## A053178.P18131571300746437854

`filter[A187715(2*n+1), A005171(#)]`
-/

namespace A053178.P18131571300746437854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187715 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053178.P18131571300746437854

namespace A053178

/-- `filter[A187715(2*n+1), A005171(#)]` -/
def P18131571300746437854.Spec : Prop :=
  ∀ n, P18131571300746437854.a n = A053178 (n + 1)

end A053178

/-! ## A053178.P15560894722385708765

`filter[A271508(2*n+1), A005171(#)]`
-/

namespace A053178.P15560894722385708765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271508 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053178.P15560894722385708765

namespace A053178

/-- `filter[A271508(2*n+1), A005171(#)]` -/
def P15560894722385708765.Spec : Prop :=
  ∀ n, P15560894722385708765.a n = A053178 (n + 1)

end A053178

/-! ## A053178.P4482969354531372811

`filter[A306277(2*n+1), A005171(#)]`
-/

namespace A053178.P4482969354531372811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306277 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053178.P4482969354531372811

namespace A053178

/-- `filter[A306277(2*n+1), A005171(#)]` -/
def P4482969354531372811.Spec : Prop :=
  ∀ n, P4482969354531372811.a n = A053178 (n + 1)

end A053178

/-! ## A053178.P10077927963122149967

`filter[A090771(2*n+1), A292438(#)]`
-/

namespace A053178.P10077927963122149967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A053178.P10077927963122149967

namespace A053178

/-- `filter[A090771(2*n+1), A292438(#)]` -/
def P10077927963122149967.Spec : Prop :=
  ∀ n, P10077927963122149967.a n = A053178 (n + 1)

end A053178

/-! ## A053178.P11918735085222076424

`filter[A131229(2*n+1), A292438(#)]`
-/

namespace A053178.P11918735085222076424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131229 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A053178.P11918735085222076424

namespace A053178

/-- `filter[A131229(2*n+1), A292438(#)]` -/
def P11918735085222076424.Spec : Prop :=
  ∀ n, P11918735085222076424.a n = A053178 (n + 1)

end A053178

/-! ## A053178.P2669593490269232222

`filter[A166525(2*n+1), A292438(#)]`
-/

namespace A053178.P2669593490269232222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166525 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A053178.P2669593490269232222

namespace A053178

/-- `filter[A166525(2*n+1), A292438(#)]` -/
def P2669593490269232222.Spec : Prop :=
  ∀ n, P2669593490269232222.a n = A053178 (n + 1)

end A053178

/-! ## A053178.P5561064705488399301

`filter[A168459(2*n+1), A292438(#)]`
-/

namespace A053178.P5561064705488399301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168459 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A053178.P5561064705488399301

namespace A053178

/-- `filter[A168459(2*n+1), A292438(#)]` -/
def P5561064705488399301.Spec : Prop :=
  ∀ n, P5561064705488399301.a n = A053178 (n + 1)

end A053178

/-! ## A053178.P6147185021569085218

`filter[A187715(2*n+1), A292438(#)]`
-/

namespace A053178.P6147185021569085218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187715 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A053178.P6147185021569085218

namespace A053178

/-- `filter[A187715(2*n+1), A292438(#)]` -/
def P6147185021569085218.Spec : Prop :=
  ∀ n, P6147185021569085218.a n = A053178 (n + 1)

end A053178

/-!
# A053179: Numbers ending in 3 which are not prime.

The programs for A053179, the canonical program `A053179.P11829121929846558222` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053179 has offset 1).

The definition of A053179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7598 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053179.P11829121929846558222

`A017305(A153403(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A053179

/-- `A017305(A153403(n+1))` -/
def P11829121929846558222.Spec : Prop :=
  ∀ n, P11829121929846558222.a n = A053179 (n + 1)

theorem P11829121929846558222.correct : P11829121929846558222.Spec := by
  intro n
  simp only [A053179, Nat.add_sub_cancel]

end A053179

/-! ## A053179.P13380364794627495246

`filter[A017305(n), A005171(#)]`
-/

namespace A053179.P13380364794627495246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053179.P13380364794627495246

namespace A053179

/-- `filter[A017305(n), A005171(#)]` -/
def P13380364794627495246.Spec : Prop :=
  ∀ n, P13380364794627495246.a n = A053179 (n + 1)

end A053179

/-! ## A053179.P9870305255148687643

`filter[A017305(n), A066247(#)]`
-/

namespace A053179.P9870305255148687643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A053179.P9870305255148687643

namespace A053179

/-- `filter[A017305(n), A066247(#)]` -/
def P9870305255148687643.Spec : Prop :=
  ∀ n, P9870305255148687643.a n = A053179 (n + 1)

end A053179

/-! ## A053179.P15267134658149252822

`filter[A017305(n), A202238(#)]`
-/

namespace A053179.P15267134658149252822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A053179.P15267134658149252822

namespace A053179

/-- `filter[A017305(n), A202238(#)]` -/
def P15267134658149252822.Spec : Prop :=
  ∀ n, P15267134658149252822.a n = A053179 (n + 1)

end A053179

/-! ## A053179.P17276615302927450465

`filter[A017305(n), A292438(#)]`
-/

namespace A053179.P17276615302927450465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A053179.P17276615302927450465

namespace A053179

/-- `filter[A017305(n), A292438(#)]` -/
def P17276615302927450465.Spec : Prop :=
  ∀ n, P17276615302927450465.a n = A053179 (n + 1)

end A053179

/-! ## A053179.P13330053655832498685

`filter[A017305(n), A323162(#)]`
-/

namespace A053179.P13330053655832498685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A053179.P13330053655832498685

namespace A053179

/-- `filter[A017305(n), A323162(#)]` -/
def P13330053655832498685.Spec : Prop :=
  ∀ n, P13330053655832498685.a n = A053179 (n + 1)

end A053179

/-! ## A053179.P11808619697085845482

`filter[A019428(n+2), A066247(#)]`
-/

namespace A053179.P11808619697085845482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A053179.P11808619697085845482

namespace A053179

/-- `filter[A019428(n+2), A066247(#)]` -/
def P11808619697085845482.Spec : Prop :=
  ∀ n, P11808619697085845482.a n = A053179 (n + 1)

end A053179

/-! ## A053179.P18169654723197034166

`filter[A019428(n+2), A202238(#)]`
-/

namespace A053179.P18169654723197034166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A053179.P18169654723197034166

namespace A053179

/-- `filter[A019428(n+2), A202238(#)]` -/
def P18169654723197034166.Spec : Prop :=
  ∀ n, P18169654723197034166.a n = A053179 (n + 1)

end A053179

/-! ## A053179.P3387452298241732263

`filter[A019428(n+2), A323162(#)]`
-/

namespace A053179.P3387452298241732263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A053179.P3387452298241732263

namespace A053179

/-- `filter[A019428(n+2), A323162(#)]` -/
def P3387452298241732263.Spec : Prop :=
  ∀ n, P3387452298241732263.a n = A053179 (n + 1)

end A053179

/-! ## A053179.P11469504766988091088

`filter[A016885(2*n), A005171(#)]`
-/

namespace A053179.P11469504766988091088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053179.P11469504766988091088

namespace A053179

/-- `filter[A016885(2*n), A005171(#)]` -/
def P11469504766988091088.Spec : Prop :=
  ∀ n, P11469504766988091088.a n = A053179 (n + 1)

end A053179

/-! ## A053179.P1901498933223537701

`filter[A016885(2*n), A066247(#)]`
-/

namespace A053179.P1901498933223537701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A053179.P1901498933223537701

namespace A053179

/-- `filter[A016885(2*n), A066247(#)]` -/
def P1901498933223537701.Spec : Prop :=
  ∀ n, P1901498933223537701.a n = A053179 (n + 1)

end A053179

/-! ## A053179.P5076702716709815712

`filter[A016885(2*n), A202238(#)]`
-/

namespace A053179.P5076702716709815712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A053179.P5076702716709815712

namespace A053179

/-- `filter[A016885(2*n), A202238(#)]` -/
def P5076702716709815712.Spec : Prop :=
  ∀ n, P5076702716709815712.a n = A053179 (n + 1)

end A053179

/-! ## A053179.P10108888343523693354

`filter[A016885(2*n), A292438(#)]`
-/

namespace A053179.P10108888343523693354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A053179.P10108888343523693354

namespace A053179

/-- `filter[A016885(2*n), A292438(#)]` -/
def P10108888343523693354.Spec : Prop :=
  ∀ n, P10108888343523693354.a n = A053179 (n + 1)

end A053179

/-! ## A053179.P12583968364306576927

`filter[A016885(2*n), A323162(#)]`
-/

namespace A053179.P12583968364306576927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A053179.P12583968364306576927

namespace A053179

/-- `filter[A016885(2*n), A323162(#)]` -/
def P12583968364306576927.Spec : Prop :=
  ∀ n, P12583968364306576927.a n = A053179 (n + 1)

end A053179

/-! ## A053179.P15650035547612009453

`filter[A063206(2*n+1), A005171(#)]`
-/

namespace A053179.P15650035547612009453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063206 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053179.P15650035547612009453

namespace A053179

/-- `filter[A063206(2*n+1), A005171(#)]` -/
def P15650035547612009453.Spec : Prop :=
  ∀ n, P15650035547612009453.a n = A053179 (n + 1)

end A053179

/-! ## A053179.P220302983492999110

`filter[A063226(2*n+1), A005171(#)]`
-/

namespace A053179.P220302983492999110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053179.P220302983492999110

namespace A053179

/-- `filter[A063226(2*n+1), A005171(#)]` -/
def P220302983492999110.Spec : Prop :=
  ∀ n, P220302983492999110.a n = A053179 (n + 1)

end A053179

/-! ## A053179.P13231910543396110625

`filter[A075326(2*n+1), A005171(#)]`
-/

namespace A053179.P13231910543396110625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053179.P13231910543396110625

namespace A053179

/-- `filter[A075326(2*n+1), A005171(#)]` -/
def P13231910543396110625.Spec : Prop :=
  ∀ n, P13231910543396110625.a n = A053179 (n + 1)

end A053179

/-! ## A053179.P3910352021659352308

`filter[A100531(2*n+1), A005171(#)]`
-/

namespace A053179.P3910352021659352308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100531 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053179.P3910352021659352308

namespace A053179

/-- `filter[A100531(2*n+1), A005171(#)]` -/
def P3910352021659352308.Spec : Prop :=
  ∀ n, P3910352021659352308.a n = A053179 (n + 1)

end A053179

/-! ## A053179.P9606541437415333080

`filter[A063206(2*n+1), A066247(#)]`
-/

namespace A053179.P9606541437415333080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063206 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A053179.P9606541437415333080

namespace A053179

/-- `filter[A063206(2*n+1), A066247(#)]` -/
def P9606541437415333080.Spec : Prop :=
  ∀ n, P9606541437415333080.a n = A053179 (n + 1)

end A053179

/-! ## A053179.P2848259820639683196

`∩[A016885(n), A100490(n)]`
-/

namespace A053179.P2848259820639683196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053179.P2848259820639683196

namespace A053179

/-- `∩[A016885(n), A100490(n)]` -/
def P2848259820639683196.Spec : Prop :=
  ∀ n, (P2848259820639683196.a n : ℤ) = A053179 (n + 1)

end A053179

/-!
# A053180: Numbers ending in 7 which are not prime.

The programs for A053180, the canonical program `A053180.P8562561734746904798` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053180 has offset 1).

The definition of A053180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7589 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053180.P5887187775765157483

`A017353(A153308(n+1))`
-/

namespace A053180.P5887187775765157483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 (A153308 (n + 1)).toNat

end

end A053180.P5887187775765157483

namespace A053180

/-- `A017353(A153308(n+1))` -/
def P5887187775765157483.Spec : Prop :=
  ∀ n, P5887187775765157483.a n = A053180 (n + 1)

end A053180

/-! ## A053180.P8562561734746904798

`A017353(comp[A102342(n+1)])`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053180

/-- `A017353(comp[A102342(n+1)])` -/
def P8562561734746904798.Spec : Prop :=
  ∀ n, P8562561734746904798.a n = A053180 (n + 1)

theorem P8562561734746904798.correct : P8562561734746904798.Spec := by
  intro n
  simp only [A053180, Nat.add_sub_cancel]

end A053180

/-! ## A053180.P2234991506162132348

`filter[A017353(n), A005171(#)]`
-/

namespace A053180.P2234991506162132348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053180.P2234991506162132348

namespace A053180

/-- `filter[A017353(n), A005171(#)]` -/
def P2234991506162132348.Spec : Prop :=
  ∀ n, P2234991506162132348.a n = A053180 (n + 1)

end A053180

/-! ## A053180.P11945741974005185400

`filter[A017353(n), A066247(#)]`
-/

namespace A053180.P11945741974005185400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A053180.P11945741974005185400

namespace A053180

/-- `filter[A017353(n), A066247(#)]` -/
def P11945741974005185400.Spec : Prop :=
  ∀ n, P11945741974005185400.a n = A053180 (n + 1)

end A053180

/-! ## A053180.P3080923364398722907

`filter[A017353(n), A202238(#)]`
-/

namespace A053180.P3080923364398722907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A053180.P3080923364398722907

namespace A053180

/-- `filter[A017353(n), A202238(#)]` -/
def P3080923364398722907.Spec : Prop :=
  ∀ n, P3080923364398722907.a n = A053180 (n + 1)

end A053180

/-! ## A053180.P2585045699683498485

`filter[A017353(n), A292438(#)]`
-/

namespace A053180.P2585045699683498485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A053180.P2585045699683498485

namespace A053180

/-- `filter[A017353(n), A292438(#)]` -/
def P2585045699683498485.Spec : Prop :=
  ∀ n, P2585045699683498485.a n = A053180 (n + 1)

end A053180

/-! ## A053180.P17314185630746282433

`filter[A017353(n), A323162(#)]`
-/

namespace A053180.P17314185630746282433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A053180.P17314185630746282433

namespace A053180

/-- `filter[A017353(n), A323162(#)]` -/
def P17314185630746282433.Spec : Prop :=
  ∀ n, P17314185630746282433.a n = A053180 (n + 1)

end A053180

/-! ## A053180.P2879964299264708739

`filter[A160912(n+1), A066247(#)]`
-/

namespace A053180.P2879964299264708739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A053180.P2879964299264708739

namespace A053180

/-- `filter[A160912(n+1), A066247(#)]` -/
def P2879964299264708739.Spec : Prop :=
  ∀ n, P2879964299264708739.a n = A053180 (n + 1)

end A053180

/-! ## A053180.P12459386374855953214

`filter[A160912(n+1), A202238(#)]`
-/

namespace A053180.P12459386374855953214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A053180.P12459386374855953214

namespace A053180

/-- `filter[A160912(n+1), A202238(#)]` -/
def P12459386374855953214.Spec : Prop :=
  ∀ n, P12459386374855953214.a n = A053180 (n + 1)

end A053180

/-! ## A053180.P15719694439722541984

`filter[A160912(n+1), A323162(#)]`
-/

namespace A053180.P15719694439722541984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A053180.P15719694439722541984

namespace A053180

/-- `filter[A160912(n+1), A323162(#)]` -/
def P15719694439722541984.Spec : Prop :=
  ∀ n, P15719694439722541984.a n = A053180 (n + 1)

end A053180

/-! ## A053180.P7380588947722930111

`filter[A160912(n+2), A005171(#)]`
-/

namespace A053180.P7380588947722930111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053180.P7380588947722930111

namespace A053180

/-- `filter[A160912(n+2), A005171(#)]` -/
def P7380588947722930111.Spec : Prop :=
  ∀ n, P7380588947722930111.a n = A053180 (n + 1)

end A053180

/-! ## A053180.P3795503534373897737

`filter[A160912(n+2), A292438(#)]`
-/

namespace A053180.P3795503534373897737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A053180.P3795503534373897737

namespace A053180

/-- `filter[A160912(n+2), A292438(#)]` -/
def P3795503534373897737.Spec : Prop :=
  ∀ n, P3795503534373897737.a n = A053180 (n + 1)

end A053180

/-! ## A053180.P8429959526095673357

`filter[A016873(2*n+1), A005171(#)]`
-/

namespace A053180.P8429959526095673357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053180.P8429959526095673357

namespace A053180

/-- `filter[A016873(2*n+1), A005171(#)]` -/
def P8429959526095673357.Spec : Prop :=
  ∀ n, P8429959526095673357.a n = A053180 (n + 1)

end A053180

/-! ## A053180.P16009699989212547826

`filter[A016873(2*n+1), A066247(#)]`
-/

namespace A053180.P16009699989212547826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A053180.P16009699989212547826

namespace A053180

/-- `filter[A016873(2*n+1), A066247(#)]` -/
def P16009699989212547826.Spec : Prop :=
  ∀ n, P16009699989212547826.a n = A053180 (n + 1)

end A053180

/-! ## A053180.P13769766380086522743

`filter[A168458(2*n+1), A005171(#)]`
-/

namespace A053180.P13769766380086522743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168458 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053180.P13769766380086522743

namespace A053180

/-- `filter[A168458(2*n+1), A005171(#)]` -/
def P13769766380086522743.Spec : Prop :=
  ∀ n, P13769766380086522743.a n = A053180 (n + 1)

end A053180

/-! ## A053180.P13112425740681693679

`filter[A016873(2*n+1), A202238(#)]`
-/

namespace A053180.P13112425740681693679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A053180.P13112425740681693679

namespace A053180

/-- `filter[A016873(2*n+1), A202238(#)]` -/
def P13112425740681693679.Spec : Prop :=
  ∀ n, P13112425740681693679.a n = A053180 (n + 1)

end A053180

/-! ## A053180.P15888054661182504447

`filter[A168458(2*n+1), A066247(#)]`
-/

namespace A053180.P15888054661182504447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168458 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A053180.P15888054661182504447

namespace A053180

/-- `filter[A168458(2*n+1), A066247(#)]` -/
def P15888054661182504447.Spec : Prop :=
  ∀ n, P15888054661182504447.a n = A053180 (n + 1)

end A053180

/-! ## A053180.P11510347019646058991

`filter[A385869(2*n+7), A066247(#)]`
-/

namespace A053180.P11510347019646058991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385869 (2 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A053180.P11510347019646058991

namespace A053180

/-- `filter[A385869(2*n+7), A066247(#)]` -/
def P11510347019646058991.Spec : Prop :=
  ∀ n, P11510347019646058991.a n = A053180 (n + 1)

end A053180

/-! ## A053180.P13336494863498939235

`filter[A385869(2*n+7), A202238(#)]`
-/

namespace A053180.P13336494863498939235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385869 (2 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A053180.P13336494863498939235

namespace A053180

/-- `filter[A385869(2*n+7), A202238(#)]` -/
def P13336494863498939235.Spec : Prop :=
  ∀ n, P13336494863498939235.a n = A053180 (n + 1)

end A053180

/-! ## A053180.P5802569945205785805

`filter[A385869(2*n+7), A323162(#)]`
-/

namespace A053180.P5802569945205785805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385869 (2 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A053180.P5802569945205785805

namespace A053180

/-- `filter[A385869(2*n+7), A323162(#)]` -/
def P5802569945205785805.Spec : Prop :=
  ∀ n, P5802569945205785805.a n = A053180 (n + 1)

end A053180

/-!
# A053181: Composite numbers ending in 9.

The programs for A053181, the canonical program `A053181.P9598775767197643253` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053181 has offset 1).

The definition of A053181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7610 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053181.P9598775767197643253

`record[A171435(10*n+9)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A053181

/-- `record[A171435(10*n+9)]` -/
def P9598775767197643253.Spec : Prop :=
  ∀ n, P9598775767197643253.a n = A053181 (n + 1)

theorem P9598775767197643253.correct : P9598775767197643253.Spec := by
  intro n
  simp only [A053181, Nat.add_sub_cancel]

end A053181

/-! ## A053181.P12604391282872889888

`A017377(A153380(n+1))`
-/

namespace A053181.P12604391282872889888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (A153380 (n + 1)).toNat

end

end A053181.P12604391282872889888

namespace A053181

/-- `A017377(A153380(n+1))` -/
def P12604391282872889888.Spec : Prop :=
  ∀ n, P12604391282872889888.a n = A053181 (n + 1)

end A053181

/-! ## A053181.P5970276765459656973

`filter[A017377(n), A005171(#)]`
-/

namespace A053181.P5970276765459656973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053181.P5970276765459656973

namespace A053181

/-- `filter[A017377(n), A005171(#)]` -/
def P5970276765459656973.Spec : Prop :=
  ∀ n, P5970276765459656973.a n = A053181 (n + 1)

end A053181

/-! ## A053181.P1226096673984229574

`filter[A017377(n), A066247(#)]`
-/

namespace A053181.P1226096673984229574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A053181.P1226096673984229574

namespace A053181

/-- `filter[A017377(n), A066247(#)]` -/
def P1226096673984229574.Spec : Prop :=
  ∀ n, P1226096673984229574.a n = A053181 (n + 1)

end A053181

/-! ## A053181.P11394034902790454522

`filter[A017377(n), A202238(#)]`
-/

namespace A053181.P11394034902790454522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A053181.P11394034902790454522

namespace A053181

/-- `filter[A017377(n), A202238(#)]` -/
def P11394034902790454522.Spec : Prop :=
  ∀ n, P11394034902790454522.a n = A053181 (n + 1)

end A053181

/-! ## A053181.P764361565348873697

`filter[A017377(n), A292438(#)]`
-/

namespace A053181.P764361565348873697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A053181.P764361565348873697

namespace A053181

/-- `filter[A017377(n), A292438(#)]` -/
def P764361565348873697.Spec : Prop :=
  ∀ n, P764361565348873697.a n = A053181 (n + 1)

end A053181

/-! ## A053181.P17691942634741544119

`filter[A017377(n), A323162(#)]`
-/

namespace A053181.P17691942634741544119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A053181.P17691942634741544119

namespace A053181

/-- `filter[A017377(n), A323162(#)]` -/
def P17691942634741544119.Spec : Prop :=
  ∀ n, P17691942634741544119.a n = A053181 (n + 1)

end A053181

/-! ## A053181.P1881639101747722841

`filter[A190876(n+1), A323162(#)]`
-/

namespace A053181.P1881639101747722841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A053181.P1881639101747722841

namespace A053181

/-- `filter[A190876(n+1), A323162(#)]` -/
def P1881639101747722841.Spec : Prop :=
  ∀ n, P1881639101747722841.a n = A053181 (n + 1)

end A053181

/-! ## A053181.P4934592792855369581

`filter[A016897(2*n+1), A005171(#)]`
-/

namespace A053181.P4934592792855369581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053181.P4934592792855369581

namespace A053181

/-- `filter[A016897(2*n+1), A005171(#)]` -/
def P4934592792855369581.Spec : Prop :=
  ∀ n, P4934592792855369581.a n = A053181 (n + 1)

end A053181

/-! ## A053181.P15392994197050910567

`filter[A016897(2*n+1), A066247(#)]`
-/

namespace A053181.P15392994197050910567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A053181.P15392994197050910567

namespace A053181

/-- `filter[A016897(2*n+1), A066247(#)]` -/
def P15392994197050910567.Spec : Prop :=
  ∀ n, P15392994197050910567.a n = A053181 (n + 1)

end A053181

/-! ## A053181.P14502110757751273093

`filter[A161365(2*n+1), A005171(#)]`
-/

namespace A053181.P14502110757751273093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161365 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A053181.P14502110757751273093

namespace A053181

/-- `filter[A161365(2*n+1), A005171(#)]` -/
def P14502110757751273093.Spec : Prop :=
  ∀ n, P14502110757751273093.a n = A053181 (n + 1)

end A053181

/-! ## A053181.P14921805909232193626

`filter[A016897(2*n+1), A202238(#)]`
-/

namespace A053181.P14921805909232193626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A053181.P14921805909232193626

namespace A053181

/-- `filter[A016897(2*n+1), A202238(#)]` -/
def P14921805909232193626.Spec : Prop :=
  ∀ n, P14921805909232193626.a n = A053181 (n + 1)

end A053181

/-! ## A053181.P1710690721441730666

`filter[A161365(2*n+1), A066247(#)]`
-/

namespace A053181.P1710690721441730666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161365 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A053181.P1710690721441730666

namespace A053181

/-- `filter[A161365(2*n+1), A066247(#)]` -/
def P1710690721441730666.Spec : Prop :=
  ∀ n, P1710690721441730666.a n = A053181 (n + 1)

end A053181

/-! ## A053181.P13105657057103423031

`∩[A154389(n+1), A017377(n)]`
-/

namespace A053181.P13105657057103423031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053181.P13105657057103423031

namespace A053181

/-- `∩[A154389(n+1), A017377(n)]` -/
def P13105657057103423031.Spec : Prop :=
  ∀ n, (P13105657057103423031.a n : ℤ) = A053181 (n + 1)

end A053181

/-! ## A053181.P3429770935952273640

`∩[A016897(n), A100490(n)]`
-/

namespace A053181.P3429770935952273640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053181.P3429770935952273640

namespace A053181

/-- `∩[A016897(n), A100490(n)]` -/
def P3429770935952273640.Spec : Prop :=
  ∀ n, (P3429770935952273640.a n : ℤ) = A053181 (n + 1)

end A053181

/-! ## A053181.P16206489559062809792

`∩[A017377(n), A100490(n)]`
-/

namespace A053181.P16206489559062809792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053181.P16206489559062809792

namespace A053181

/-- `∩[A017377(n), A100490(n)]` -/
def P16206489559062809792.Spec : Prop :=
  ∀ n, (P16206489559062809792.a n : ℤ) = A053181 (n + 1)

end A053181

/-! ## A053181.P11502288069743646231

`∩[A053795(n+1), A016897(n)]`
-/

namespace A053181.P11502288069743646231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053181.P11502288069743646231

namespace A053181

/-- `∩[A053795(n+1), A016897(n)]` -/
def P11502288069743646231.Spec : Prop :=
  ∀ n, (P11502288069743646231.a n : ℤ) = A053181 (n + 1)

end A053181

/-! ## A053181.P8944568423010242873

`∩[A053795(n+1), A017377(n)]`
-/

namespace A053181.P8944568423010242873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053181.P8944568423010242873

namespace A053181

/-- `∩[A053795(n+1), A017377(n)]` -/
def P8944568423010242873.Spec : Prop :=
  ∀ n, (P8944568423010242873.a n : ℤ) = A053181 (n + 1)

end A053181

/-! ## A053181.P15083632557087849776

`∩[A016885(n)+1, A100490(n)]`
-/

namespace A053181.P15083632557087849776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053181.P15083632557087849776

namespace A053181

/-- `∩[A016885(n)+1, A100490(n)]` -/
def P15083632557087849776.Spec : Prop :=
  ∀ n, (P15083632557087849776.a n : ℤ) = A053181 (n + 1)

end A053181

/-! ## A053181.P14346071913233650722

`∩[A063093(n+1), A100490(n)]`
-/

namespace A053181.P14346071913233650722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053181.P14346071913233650722

namespace A053181

/-- `∩[A063093(n+1), A100490(n)]` -/
def P14346071913233650722.Spec : Prop :=
  ∀ n, (P14346071913233650722.a n : ℤ) = A053181 (n + 1)

end A053181

/-!
# A053182: Primes p such that p^2 + p + 1 is prime.

The programs for A053182, there is no canonical definition to state claims against.
-/

/-! ## A053182.P15553460613514321553

`A136242(n+1)-1`
-/

namespace A053182.P15553460613514321553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136242 (n + 1) - 1

end

end A053182.P15553460613514321553

/-! ## A053182.P13178075814055255583

`floor(sqrt(A053183(n+1)))`
-/

namespace A053182.P13178075814055255583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A053183 (n + 1))

end

end A053182.P13178075814055255583

/-! ## A053182.P16574208653902515699

`A355689(A040980(n+1))+A136242(n+1)`
-/

namespace A053182.P16574208653902515699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (A040980 (n + 1)).toNat + A136242 (n + 1)

end

end A053182.P16574208653902515699

/-! ## A053182.P4519247099188160110

`A355689(A040171(n+1))+A136242(n+1)`
-/

namespace A053182.P4519247099188160110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (A040171 (n + 1)).toNat + A136242 (n + 1)

end

end A053182.P4519247099188160110

/-! ## A053182.P1580009196286686256

`A355689(A040179(n+1))+A136242(n+1)`
-/

namespace A053182.P1580009196286686256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (A040179 (n + 1)).toNat + A136242 (n + 1)

end

end A053182.P1580009196286686256

/-! ## A053182.P1263597759199749914

`A355689(A093868(n+1))+A136242(n+1)`
-/

namespace A053182.P1263597759199749914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (A093868 (n + 1)).toNat + A136242 (n + 1)

end

end A053182.P1263597759199749914

/-! ## A053182.P16291729971750359442

`record[A330833(n+1)]`
-/

namespace A053182.P16291729971750359442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053182.P16291729971750359442

/-! ## A053182.P3568715541690894913

`p?[A055638(n+1)]`
-/

namespace A053182.P3568715541690894913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053182.P3568715541690894913

/-! ## A053182.P3015453434705226404

`p?[A342690(n+1)]`
-/

namespace A053182.P3015453434705226404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053182.P3015453434705226404

/-! ## A053182.P18155968897721149585

`p?[floor(sqrt(A342691(n+1)))]`
-/

namespace A053182.P18155968897721149585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A342691 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053182.P18155968897721149585

/-! ## A053182.P18410853686452158649

`record[A330832(n+1)/A330835(n+1)]`
-/

namespace A053182.P18410853686452158649
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330832 (n + 1) : ℚ) / (A330835 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053182.P18410853686452158649

/-! ## A053182.P1623182618495352395

`record[floor(root(A330832(n+1), A330834(n+1)))]`
-/

namespace A053182.P1623182618495352395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A330832 (n + 1) : ℝ) ^ (1 / (A330834 (n + 1) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053182.P1623182618495352395

/-! ## A053182.P8999122266521046515

`∩[A045309(n+1), A055638(n+1)]`
-/

namespace A053182.P8999122266521046515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053182.P8999122266521046515

/-! ## A053182.P15490302719656484197

`∩[A045309(n+1), A342690(n+1)]`
-/

namespace A053182.P15490302719656484197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053182.P15490302719656484197

/-! ## A053182.P7793814386284958412

`∩[A015919(n+1), A055638(n+1)]`
-/

namespace A053182.P7793814386284958412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053182.P7793814386284958412

/-! ## A053182.P17590873907070580736

`∩[A055638(n+1), A073485(n+1)]`
-/

namespace A053182.P17590873907070580736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053182.P17590873907070580736

/-! ## A053182.P5121101557208008237

`∩[A015919(n+1), A342690(n+1)]`
-/

namespace A053182.P5121101557208008237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053182.P5121101557208008237

/-! ## A053182.P16105640036884197105

`∩[A073485(n+1), A342690(n+1)]`
-/

namespace A053182.P16105640036884197105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053182.P16105640036884197105

/-! ## A053182.P10454948552341337690

`∩[A049596(n+1), A055638(n+1)]`
-/

namespace A053182.P10454948552341337690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053182.P10454948552341337690

/-!
# A053183: Primes of the form p^2 + p + 1 when p is prime.

The programs for A053183, there is no canonical definition to state claims against.
-/

/-! ## A053183.P1046193825146040146

`A053182(n+1)²+A053182(n+1)+1`
-/

namespace A053183.P1046193825146040146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053182 (n + 1) ^ 2 + A053182 (n + 1) + 1

end

end A053183.P1046193825146040146

/-! ## A053183.P16756361477329254895

`A136242(n+1)+A053182(n+1)²`
-/

namespace A053183.P16756361477329254895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136242 (n + 1) + A053182 (n + 1) ^ 2

end

end A053183.P16756361477329254895

/-! ## A053183.P17320552365706056763

`∩[A023195(n+1), A342691(n+1)]`
-/

namespace A053183.P17320552365706056763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053183.P17320552365706056763

/-! ## A053183.P6296577583839518178

`∩[A023195(n+1), A084444(n+1)]`
-/

namespace A053183.P6296577583839518178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053183.P6296577583839518178

/-! ## A053183.P14567584553078312690

`∩[A084444(n+1), A342691(n+1)]`
-/

namespace A053183.P14567584553078312690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053183.P14567584553078312690

/-! ## A053183.P3765058856317271598

`∩[A003424(n+1), A084444(n+1)]`
-/

namespace A053183.P3765058856317271598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053183.P3765058856317271598

/-! ## A053183.P6885414353696883148

`∩[A290817(n+1), A342691(n+1)]`
-/

namespace A053183.P6885414353696883148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053183.P6885414353696883148

/-! ## A053183.P4770988714298001438

`∩[A003424(n+1), A060800(n+1)]`
-/

namespace A053183.P4770988714298001438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053183.P4770988714298001438

/-! ## A053183.P12824372978854118599

`∩[A023195(n+1), A060800(n+1)]`
-/

namespace A053183.P12824372978854118599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053183.P12824372978854118599

/-! ## A053183.P1746025305793230408

`∩[A060800(n+1), A084444(n+1)]`
-/

namespace A053183.P1746025305793230408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053183.P1746025305793230408

/-! ## A053183.P6808138046388718543

`∩[A060800(n+1), A290817(n+1)]`
-/

namespace A053183.P6808138046388718543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053183.P6808138046388718543

/-! ## A053183.P456032546086235983

`∩[A060800(n+1), A342691(n+1)]`
-/

namespace A053183.P456032546086235983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053183.P456032546086235983

/-! ## A053183.P5870746397094048049

`∩[A290817(n+1), A319597(n+1)+2]`
-/

namespace A053183.P5870746397094048049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319597 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053183.P5870746397094048049

/-! ## A053183.P1830498211477821071

`∩[A002383(n+1), A060800(n+1)]`
-/

namespace A053183.P1830498211477821071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053183.P1830498211477821071

/-! ## A053183.P13802687423050926240

`∩[A002383(n+1), A084444(n+1)]`
-/

namespace A053183.P13802687423050926240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053183.P13802687423050926240

/-! ## A053183.P6016375553873083559

`∩[A060800(n+1), A085104(n+1)]`
-/

namespace A053183.P6016375553873083559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053183.P6016375553873083559

/-! ## A053183.P6505250969629854587

`∩[A084444(n+1), A085104(n+1)]`
-/

namespace A053183.P6505250969629854587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053183.P6505250969629854587

/-! ## A053183.P2225679727471458882

`∑{d}[A053182(n+1), #*A000203(#)]`
-/

namespace A053183.P2225679727471458882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A000203 d

end

end A053183.P2225679727471458882

/-! ## A053183.P11031959353168000218

`record[A342691(n+1)/A001222(A342690(n+1))]`
-/

namespace A053183.P11031959353168000218
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342691 (n + 1) : ℚ) / (A001222 (A342690 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053183.P11031959353168000218

/-! ## A053183.P2393945885762396422

`record[A000203(A330833(n+1))+A330833(n+1)²]`
-/

namespace A053183.P2393945885762396422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A330833 (n + 1)).toNat + A330833 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053183.P2393945885762396422

/-!
# A053184: Primes p such that p^2+p-1 is prime.

The programs for A053184, there is no canonical definition to state claims against.
-/

/-! ## A053184.P1583531850921040183

`A136243(n+1)-1`
-/

namespace A053184.P1583531850921040183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136243 (n + 1) - 1

end

end A053184.P1583531850921040183

/-! ## A053184.P13812788266563004827

`floor(sqrt(A053185(n+1)))`
-/

namespace A053184.P13812788266563004827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A053185 (n + 1))

end

end A053184.P13812788266563004827

/-! ## A053184.P18262056923675244001

`A053185(n+1)%A136243(n+1)`
-/

namespace A053184.P18262056923675244001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053185 (n + 1)) (A136243 (n + 1))

end

end A053184.P18262056923675244001

/-! ## A053184.P1428647992015772561

`p?[A002328(n+1)-1]`
-/

namespace A053184.P1428647992015772561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053184.P1428647992015772561

/-! ## A053184.P13517367371468269891

`p?[A275059(n+1)]`
-/

namespace A053184.P13517367371468269891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053184.P13517367371468269891

/-! ## A053184.P5144547728744534925

`∩[A009087(n+1), A275059(n+1)]`
-/

namespace A053184.P5144547728744534925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053184.P5144547728744534925

/-! ## A053184.P10352316877110950037

`∩[A000040(n+1), A275059(n+1)]`
-/

namespace A053184.P10352316877110950037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053184.P10352316877110950037

/-! ## A053184.P2016351256150004365

`∩[A051948(n+1), A275059(n+1)]`
-/

namespace A053184.P2016351256150004365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053184.P2016351256150004365

/-! ## A053184.P16541126991919475258

`∩[A093515(n+1), A275059(n+1)]`
-/

namespace A053184.P16541126991919475258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053184.P16541126991919475258

/-! ## A053184.P8781862824486963391

`∩[A116974(n+1), A275059(n+1)]`
-/

namespace A053184.P8781862824486963391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053184.P8781862824486963391

/-! ## A053184.P15304920751378799895

`∩[A053813(n+1), A275059(n+1)]`
-/

namespace A053184.P15304920751378799895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053184.P15304920751378799895

/-! ## A053184.P7895563126668592573

`∩[A268391(n+1), A275059(n+1)]`
-/

namespace A053184.P7895563126668592573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053184.P7895563126668592573

/-! ## A053184.P14219080821741946930

`∩[A301987(n+1), A275059(n+1)]`
-/

namespace A053184.P14219080821741946930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053184.P14219080821741946930

/-! ## A053184.P3340906646923245240

`∩[A000430(n+1), A275059(n+1)]`
-/

namespace A053184.P3340906646923245240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053184.P3340906646923245240

/-! ## A053184.P9480943445706244833

`∩[A053577(n+1), A275059(n+1)]`
-/

namespace A053184.P9480943445706244833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053184.P9480943445706244833

/-! ## A053184.P16495768576901917555

`∩[A050376(n+1), A275059(n+1)]`
-/

namespace A053184.P16495768576901917555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053184.P16495768576901917555

/-! ## A053184.P9579659559553686338

`∩[A115919(n+1), A275059(n+1)]`
-/

namespace A053184.P9579659559553686338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053184.P9579659559553686338

/-! ## A053184.P3373259857656668022

`∩[A128603(n+1), A275059(n+1)]`
-/

namespace A053184.P3373259857656668022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053184.P3373259857656668022

/-! ## A053184.P16577918449324761822

`∩[A066191(n+1), A275059(n+1)]`
-/

namespace A053184.P16577918449324761822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053184.P16577918449324761822

/-! ## A053184.P6892975079563657532

`∩[A079603(n+1), A275059(n+1)]`
-/

namespace A053184.P6892975079563657532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053184.P6892975079563657532

/-!
# A053185: Primes of the form p^2 + p - 1 when p is prime.

The programs for A053185, there is no canonical definition to state claims against.
-/

/-! ## A053185.P3420183284277237476

`A053184(n+1)+A053184(n+1)²-1`
-/

namespace A053185.P3420183284277237476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053184 (n + 1) + (A053184 (n + 1) ^ 2 - 1)

end

end A053185.P3420183284277237476

/-! ## A053185.P4040549747348764962

`∩[A290817(n+1), A319597(n+1)]`
-/

namespace A053185.P4040549747348764962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053185.P4040549747348764962

/-! ## A053185.P13458200565921955132

`∩[A060800(n+1)-2, A290817(n+1)]`
-/

namespace A053185.P13458200565921955132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060800 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053185.P13458200565921955132

/-! ## A053185.P578459338245839197

`A000010(A053184(n+1))+A053184(n+1)²`
-/

namespace A053185.P578459338245839197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A053184 (n + 1)).toNat + A053184 (n + 1) ^ 2

end

end A053185.P578459338245839197

/-! ## A053185.P5709904827791270125

`∩[A002327(n+1), A319597(n+1)]`
-/

namespace A053185.P5709904827791270125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053185.P5709904827791270125

/-! ## A053185.P16249613250216944761

`∩[A084720(n+1), A319597(n+1)]`
-/

namespace A053185.P16249613250216944761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053185.P16249613250216944761

/-! ## A053185.P10295602862998813290

`∩[A239709(n+1), A319597(n+1)]`
-/

namespace A053185.P10295602862998813290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053185.P10295602862998813290

/-! ## A053185.P14754269696411117526

`∩[A179273(n+1), A319597(n+1)]`
-/

namespace A053185.P14754269696411117526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053185.P14754269696411117526

/-! ## A053185.P3964606371686930688

`2*A000217(p?[A045546(n+1)])-1`
-/

namespace A053185.P3964606371686930688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A053185.P3964606371686930688

/-! ## A053185.P9150361414209854100

`record[A209188(A151800(n))]`
-/

namespace A053185.P9150361414209854100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209188 (A151800 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053185.P9150361414209854100

/-! ## A053185.P10046215895117120258

`A069097(A053184(n+1))`
-/

namespace A053185.P10046215895117120258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069097 (A053184 (n + 1)).toNat

end

end A053185.P10046215895117120258

/-! ## A053185.P12635430716583918208

`A165900(A136243(n+1))`
-/

namespace A053185.P12635430716583918208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (A136243 (n + 1)).toNat

end

end A053185.P12635430716583918208

/-! ## A053185.P6706551383829741358

`A161550(p?[A045546(n+1)])`
-/

namespace A053185.P6706551383829741358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161550 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A053185.P6706551383829741358

/-! ## A053185.P9596952432891749256

`A165900(A053184(n+1)+1)`
-/

namespace A053185.P9596952432891749256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (A053184 (n + 1) + 1).toNat

end

end A053185.P9596952432891749256

/-! ## A053185.P16225971482476405984

`A028387(A053184(n+1)-1)`
-/

namespace A053185.P16225971482476405984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (A053184 (n + 1) - 1).toNat

end

end A053185.P16225971482476405984

/-! ## A053185.P14018084774044101303

`record[A356247(A000040(n+1)+1)]`
-/

namespace A053185.P14018084774044101303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356247 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053185.P14018084774044101303

/-! ## A053185.P6723430983636095340

`record[A108151(A000040(n+1)-1)]`
-/

namespace A053185.P6723430983636095340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108151 (A000040 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053185.P6723430983636095340

/-! ## A053185.P9201944190274234807

`A161550(p?[A094210(n+1)+1])`
-/

namespace A053185.P9201944190274234807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161550 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A053185.P9201944190274234807

/-! ## A053185.P2517086803051523460

`record[A356247(A006530(n+2)+1)]`
-/

namespace A053185.P2517086803051523460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356247 (A006530 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053185.P2517086803051523460

/-!
# A053186: Square excess of n: difference between n and largest square <= n.

The programs for A053186, the canonical program `A053186.P11336721340617541042` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053186 has offset 0).

The definition of A053186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053186.P11336721340617541042

`n-floor(sqrt(n))²`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053186

/-- `n-floor(sqrt(n))²` -/
def P11336721340617541042.Spec : Prop :=
  ∀ n, P11336721340617541042.a n = A053186 n

theorem P11336721340617541042.correct : P11336721340617541042.Spec := by
  intro n
  simp only [A053186]

end A053186

/-! ## A053186.P3445993442399315115

`abs(n-A094761(n))`
-/

namespace A053186.P3445993442399315115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A094761 n|

end

end A053186.P3445993442399315115

namespace A053186

/-- `abs(n-A094761(n))` -/
def P3445993442399315115.Spec : Prop :=
  ∀ n, P3445993442399315115.a n = A053186 n

end A053186

/-! ## A053186.P15899817666572552389

`(A094765(n)-n)/2`
-/

namespace A053186.P15899817666572552389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094765 n - (n : ℤ) : ℚ) / 2

end

end A053186.P15899817666572552389

namespace A053186

/-- `(A094765(n)-n)/2` -/
def P15899817666572552389.Spec : Prop :=
  ∀ n, P15899817666572552389.a n = (A053186 n : ℚ)

theorem P15899817666572552389.correct : P15899817666572552389.Spec := by
  intro n
  simp only [A053186, Nat.add_sub_cancel, A053186.P15899817666572552389.a, A053186.P11336721340617541042.a, A094765, A094765.P13286102005147657890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053186

/-! ## A053186.P256867945583522007

`abs(A000196(n)²-n)`
-/

namespace A053186.P256867945583522007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000196 n ^ 2 - (n : ℤ)|

end

end A053186.P256867945583522007

namespace A053186

/-- `abs(A000196(n)²-n)` -/
def P256867945583522007.Spec : Prop :=
  ∀ n, P256867945583522007.a n = A053186 n

end A053186

/-! ## A053186.P9831329874364788711

`floor(A196199(n)+sqrt(n))`
-/

namespace A053186.P9831329874364788711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A196199 n : ℝ) + Real.sqrt (n : ℝ)⌋

end

end A053186.P9831329874364788711

namespace A053186

/-- `floor(A196199(n)+sqrt(n))` -/
def P9831329874364788711.Spec : Prop :=
  ∀ n, P9831329874364788711.a n = A053186 n

end A053186

/-! ## A053186.P4272353999567837382

`abs(∑[char[A007318(n)²]]²-n)`
-/

namespace A053186.P4272353999567837382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ)|

end

end A053186.P4272353999567837382

namespace A053186

/-- `abs(∑[char[A007318(n)²]]²-n)` -/
def P4272353999567837382.Spec : Prop :=
  ∀ n, P4272353999567837382.a n = A053186 n

end A053186

/-! ## A053186.P10476077161178599520

`(a(n-1)+1)*A049240(n)` with `a(0)=0`
-/

namespace A053186.P10476077161178599520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) * A049240 n

end

end A053186.P10476077161178599520

namespace A053186

/-- `(a(n-1)+1)*A049240(n)` -/
def P10476077161178599520.Spec : Prop :=
  ∀ n, P10476077161178599520.a n = A053186 n

end A053186

/-! ## A053186.P10104510280627923776

`(a(n-1)+1)*A267635(n)` with `a(0)=0`
-/

namespace A053186.P10104510280627923776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) * A267635 n

end

end A053186.P10104510280627923776

namespace A053186

/-- `(a(n-1)+1)*A267635(n)` -/
def P10104510280627923776.Spec : Prop :=
  ∀ n, P10104510280627923776.a n = A053186 n

end A053186

/-! ## A053186.P9571177260157864918

`abs(∑[char[A002260(n+1)²]]²-n)`
-/

namespace A053186.P9571177260157864918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ)|

end

end A053186.P9571177260157864918

namespace A053186

/-- `abs(∑[char[A002260(n+1)²]]²-n)` -/
def P9571177260157864918.Spec : Prop :=
  ∀ n, P9571177260157864918.a n = A053186 n

end A053186

/-! ## A053186.P12283151055056386189

`A023443(A071797(n+1))`
-/

namespace A053186.P12283151055056386189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A071797 (n + 1)).toNat

end

end A053186.P12283151055056386189

namespace A053186

/-- `A023443(A071797(n+1))` -/
def P12283151055056386189.Spec : Prop :=
  ∀ n, P12283151055056386189.a n = A053186 n

end A053186

/-! ## A053186.P6474325154686963590

`A094761(n)%A028310(n)`
-/

namespace A053186.P6474325154686963590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094761 n) (A028310 n)

end

end A053186.P6474325154686963590

namespace A053186

/-- `A094761(n)%A028310(n)` -/
def P6474325154686963590.Spec : Prop :=
  ∀ n, P6474325154686963590.a n = A053186 n

end A053186

/-! ## A053186.P5899623141809575629

`A161983(n)%A001650(n+1)`
-/

namespace A053186.P5899623141809575629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161983 n) (A001650 (n + 1))

end

end A053186.P5899623141809575629

namespace A053186

/-- `A161983(n)%A001650(n+1)` -/
def P5899623141809575629.Spec : Prop :=
  ∀ n, P5899623141809575629.a n = A053186 n

end A053186

/-! ## A053186.P6112924533504764691

`A068527(A068527(n)+A048760(n))`
-/

namespace A053186.P6112924533504764691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A068527 n + A048760 n).toNat

end

end A053186.P6112924533504764691

namespace A053186

/-- `A068527(A068527(n)+A048760(n))` -/
def P6112924533504764691.Spec : Prop :=
  ∀ n, P6112924533504764691.a n = A053186 n

end A053186

/-! ## A053186.P774380740010084724

`A060511(A094761(n)-A060511(n))`
-/

namespace A053186.P774380740010084724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060511 (A094761 n - A060511 n).toNat

end

end A053186.P774380740010084724

namespace A053186

/-- `A060511(A094761(n)-A060511(n))` -/
def P774380740010084724.Spec : Prop :=
  ∀ n, P774380740010084724.a n = A053186 n

end A053186

/-! ## A053186.P17398653992221193015

`A061601(A061601(n)+A000196(n)²)`
-/

namespace A053186.P17398653992221193015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A061601 n + A000196 n ^ 2).toNat

end

end A053186.P17398653992221193015

namespace A053186

/-- `A061601(A061601(n)+A000196(n)²)` -/
def P17398653992221193015.Spec : Prop :=
  ∀ n, P17398653992221193015.a n = A053186 n

end A053186

/-! ## A053186.P17073669057463457333

`A068527(A068527(n)+A000196(n)²)`
-/

namespace A053186.P17073669057463457333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A068527 n + A000196 n ^ 2).toNat

end

end A053186.P17073669057463457333

namespace A053186

/-- `A068527(A068527(n)+A000196(n)²)` -/
def P17073669057463457333.Spec : Prop :=
  ∀ n, P17073669057463457333.a n = A053186 n

end A053186

/-! ## A053186.P13851353245905214075

`A068527(A068527(A094761(n))+n)`
-/

namespace A053186.P13851353245905214075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A068527 (A094761 n).toNat + (n : ℤ)).toNat

end

end A053186.P13851353245905214075

namespace A053186

/-- `A068527(A068527(A094761(n))+n)` -/
def P13851353245905214075.Spec : Prop :=
  ∀ n, P13851353245905214075.a n = A053186 n

end A053186

/-! ## A053186.P10032520024413585994

`A068527(A020703(n+1))`
-/

namespace A053186.P10032520024413585994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A020703 (n + 1)).toNat

end

end A053186.P10032520024413585994

namespace A053186

/-- `A068527(A020703(n+1))` -/
def P10032520024413585994.Spec : Prop :=
  ∀ n, P10032520024413585994.a n = A053186 n

end A053186

/-! ## A053186.P3050926226617668801

`abs(∑[char[A026105(n)²]]²-n)`
-/

namespace A053186.P3050926226617668801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026105 n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ)|

end

end A053186.P3050926226617668801

namespace A053186

/-- `abs(∑[char[A026105(n)²]]²-n)` -/
def P3050926226617668801.Spec : Prop :=
  ∀ n, P3050926226617668801.a n = A053186 n

end A053186

/-! ## A053186.P16228299938549605049

`A002262(A161983(n))`
-/

namespace A053186.P16228299938549605049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A161983 n).toNat

end

end A053186.P16228299938549605049

namespace A053186

/-- `A002262(A161983(n))` -/
def P16228299938549605049.Spec : Prop :=
  ∀ n, P16228299938549605049.a n = A053186 n

end A053186

/-!
# A053187: Square nearest to n.

The programs for A053187, the canonical program `A053187.P5980113714214141663` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053187 has offset 0).

The definition of A053187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053187.P5980113714214141663

`floor(sqrt(n)+1/2)²`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053187

/-- `floor(sqrt(n)+1/2)²` -/
def P5980113714214141663.Spec : Prop :=
  ∀ n, P5980113714214141663.a n = A053187 n

theorem P5980113714214141663.correct : P5980113714214141663.Spec := by
  intro n
  simp only [A053187]

end A053187

/-! ## A053187.P10520626112123625336

`round(sqrt(n))^(2%(n+3))`
-/

namespace A053187.P10520626112123625336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ (2 % (n + 3))

end

end A053187.P10520626112123625336

namespace A053187

/-- `round(sqrt(n))^(2%(n+3))` -/
def P10520626112123625336.Spec : Prop :=
  ∀ n, P10520626112123625336.a n = A053187 n

end A053187

/-! ## A053187.P13119378761645509542

`round(sqrt(n))^gcd(2, 4*n)`
-/

namespace A053187.P13119378761645509542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ Nat.gcd 2 (4 * n)

end

end A053187.P13119378761645509542

namespace A053187

/-- `round(sqrt(n))^gcd(2, 4*n)` -/
def P13119378761645509542.Spec : Prop :=
  ∀ n, P13119378761645509542.a n = A053187 n

end A053187

/-! ## A053187.P13080664175956643213

`(n+1)²%(comp[(n+1)²]+1)`
-/

namespace A053187.P13080664175956643213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A053187.P13080664175956643213

namespace A053187

/-- `(n+1)²%(comp[(n+1)²]+1)` -/
def P13080664175956643213.Spec : Prop :=
  ∀ n, (P13080664175956643213.a n : ℤ) = A053187 n

end A053187

/-! ## A053187.P9782690992347361045

`∑[A245552(n)]`
-/

namespace A053187.P9782690992347361045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053187.P9782690992347361045

namespace A053187

/-- `∑[A245552(n)]` -/
def P9782690992347361045.Spec : Prop :=
  ∀ n, P9782690992347361045.a n = A053187 n

end A053187

/-! ## A053187.P1476299855836757493

`A000290(round(sqrt(n)))`
-/

namespace A053187.P1476299855836757493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat

end

end A053187.P1476299855836757493

namespace A053187

/-- `A000290(round(sqrt(n)))` -/
def P1476299855836757493.Spec : Prop :=
  ∀ n, P1476299855836757493.a n = A053187 n

end A053187

/-! ## A053187.P16267964045130341100

`A002522(round(sqrt(n)))-1`
-/

namespace A053187.P16267964045130341100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat - 1

end

end A053187.P16267964045130341100

namespace A053187

/-- `A002522(round(sqrt(n)))-1` -/
def P16267964045130341100.Spec : Prop :=
  ∀ n, P16267964045130341100.a n = A053187 n

end A053187

/-! ## A053187.P3443915793095996138

`A002620(2*round(sqrt(n)))`
-/

namespace A053187.P3443915793095996138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat

end

end A053187.P3443915793095996138

namespace A053187

/-- `A002620(2*round(sqrt(n)))` -/
def P3443915793095996138.Spec : Prop :=
  ∀ n, P3443915793095996138.a n = A053187 n

end A053187

/-! ## A053187.P10984009566305054724

`∑[char[∑[A004277(n)]]]^2`
-/

namespace A053187.P10984009566305054724
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A053187.P10984009566305054724

namespace A053187

/-- `∑[char[∑[A004277(n)]]]^2` -/
def P10984009566305054724.Spec : Prop :=
  ∀ n, (P10984009566305054724.a n : ℤ) = A053187 n

end A053187

/-! ## A053187.P17610111628549199974

`A008217(A027709(n))`
-/

namespace A053187.P17610111628549199974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (A027709 n).toNat

end

end A053187.P17610111628549199974

namespace A053187

/-- `A008217(A027709(n))` -/
def P17610111628549199974.Spec : Prop :=
  ∀ n, P17610111628549199974.a n = A053187 n

end A053187

/-! ## A053187.P13337935004261717721

`A168038(A110654(n))`
-/

namespace A053187.P13337935004261717721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168038 (A110654 n).toNat

end

end A053187.P13337935004261717721

namespace A053187

/-- `A168038(A110654(n))` -/
def P13337935004261717721.Spec : Prop :=
  ∀ n, P13337935004261717721.a n = A053187 n

end A053187

/-! ## A053187.P2817637683871576669

`A048760(A232091(n))`
-/

namespace A053187.P2817637683871576669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A232091 n).toNat

end

end A053187.P2817637683871576669

namespace A053187

/-- `A048760(A232091(n))` -/
def P2817637683871576669.Spec : Prop :=
  ∀ n, P2817637683871576669.a n = A053187 n

end A053187

/-! ## A053187.P14234230807669964773

`A008794(A284359(n))`
-/

namespace A053187.P14234230807669964773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A284359 n).toNat

end

end A053187.P14234230807669964773

namespace A053187

/-- `A008794(A284359(n))` -/
def P14234230807669964773.Spec : Prop :=
  ∀ n, P14234230807669964773.a n = A053187 n

end A053187

/-! ## A053187.P7380372117925806753

`A168038(A300076(n))`
-/

namespace A053187.P7380372117925806753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168038 (A300076 n).toNat

end

end A053187.P7380372117925806753

namespace A053187

/-- `A168038(A300076(n))` -/
def P7380372117925806753.Spec : Prop :=
  ∀ n, P7380372117925806753.a n = A053187 n

end A053187

/-! ## A053187.P3567438812983997915

`A048761(A000194(n)²)`
-/

namespace A053187.P3567438812983997915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 (A000194 n ^ 2).toNat

end

end A053187.P3567438812983997915

namespace A053187

/-- `A048761(A000194(n)²)` -/
def P3567438812983997915.Spec : Prop :=
  ∀ n, P3567438812983997915.a n = A053187 n

end A053187

/-! ## A053187.P3275845004288748418

`A232091(A000194(n)²)`
-/

namespace A053187.P3275845004288748418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232091 (A000194 n ^ 2).toNat

end

end A053187.P3275845004288748418

namespace A053187

/-- `A232091(A000194(n)²)` -/
def P3275845004288748418.Spec : Prop :=
  ∀ n, P3275845004288748418.a n = A053187 n

end A053187

/-! ## A053187.P2416577947954361619

`A048761(A056847(n+1))`
-/

namespace A053187.P2416577947954361619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 (A056847 (n + 1)).toNat

end

end A053187.P2416577947954361619

namespace A053187

/-- `A048761(A056847(n+1))` -/
def P2416577947954361619.Spec : Prop :=
  ∀ n, P2416577947954361619.a n = A053187 n

end A053187

/-! ## A053187.P4016373848738256907

`A048760(A053188(n)+n)`
-/

namespace A053187.P4016373848738256907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A053188 n + (n : ℤ)).toNat

end

end A053187.P4016373848738256907

namespace A053187

/-- `A048760(A053188(n)+n)` -/
def P4016373848738256907.Spec : Prop :=
  ∀ n, P4016373848738256907.a n = A053187 n

end A053187

/-! ## A053187.P2386258230996776017

`A168038(A004526(n+1))`
-/

namespace A053187.P2386258230996776017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168038 (A004526 (n + 1)).toNat

end

end A053187.P2386258230996776017

namespace A053187

/-- `A168038(A004526(n+1))` -/
def P2386258230996776017.Spec : Prop :=
  ∀ n, P2386258230996776017.a n = A053187 n

end A053187

/-!
# A053188: Distance from n to nearest square.

The programs for A053188, the canonical program `A053188.P18303623970101524975` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053188 has offset 0).

The definition of A053188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053188.P2469518331339230766

`abs(n-round(sqrt(n))²)`
-/

namespace A053188.P2469518331339230766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2|

end

end A053188.P2469518331339230766

namespace A053188

/-- `abs(n-round(sqrt(n))²)` -/
def P2469518331339230766.Spec : Prop :=
  ∀ n, P2469518331339230766.a n = A053188 n

end A053188

/-! ## A053188.P7448216414268079405

`A000196((round(sqrt(n))²-n)²)`
-/

namespace A053188.P7448216414268079405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2 - (n : ℤ)) ^ 2).toNat

end

end A053188.P7448216414268079405

namespace A053188

/-- `A000196((round(sqrt(n))²-n)²)` -/
def P7448216414268079405.Spec : Prop :=
  ∀ n, P7448216414268079405.a n = A053188 n

end A053188

/-! ## A053188.P18303623970101524975

`A053615(A056847(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053188

/-- `A053615(A056847(n))` -/
def P18303623970101524975.Spec : Prop :=
  ∀ n, P18303623970101524975.a n = A053188 n

theorem P18303623970101524975.correct : P18303623970101524975.Spec := by
  intro n
  simp only [A053188]

end A053188

/-! ## A053188.P14451120389985666438

`A053615(n-A000194(n))`
-/

namespace A053188.P14451120389985666438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 ((n : ℤ) - A000194 n).toNat

end

end A053188.P14451120389985666438

namespace A053188

/-- `A053615(n-A000194(n))` -/
def P14451120389985666438.Spec : Prop :=
  ∀ n, P14451120389985666438.a n = A053188 n

end A053188

/-! ## A053188.P4929326526689995850

`A000194((n-A053187(n))²)`
-/

namespace A053188.P4929326526689995850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (((n : ℤ) - A053187 n) ^ 2).toNat

end

end A053188.P4929326526689995850

namespace A053188

/-- `A000194((n-A053187(n))²)` -/
def P4929326526689995850.Spec : Prop :=
  ∀ n, P4929326526689995850.a n = A053188 n

end A053188

/-! ## A053188.P16899253114805548327

`A053615((n-A053187(n))²)`
-/

namespace A053188.P16899253114805548327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (((n : ℤ) - A053187 n) ^ 2).toNat

end

end A053188.P16899253114805548327

namespace A053188

/-- `A053615((n-A053187(n))²)` -/
def P16899253114805548327.Spec : Prop :=
  ∀ n, P16899253114805548327.a n = A053188 n

end A053188

/-! ## A053188.P13617381531287955233

`A135034((n-A053187(n))²)`
-/

namespace A053188.P13617381531287955233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (((n : ℤ) - A053187 n) ^ 2).toNat

end

end A053188.P13617381531287955233

namespace A053188

/-- `A135034((n-A053187(n))²)` -/
def P13617381531287955233.Spec : Prop :=
  ∀ n, P13617381531287955233.a n = A053188 n

end A053188

/-! ## A053188.P11553022072952496128

`A004737(n+1)-A267708(n)`
-/

namespace A053188.P11553022072952496128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) - A267708 n

end

end A053188.P11553022072952496128

namespace A053188

/-- `A004737(n+1)-A267708(n)` -/
def P11553022072952496128.Spec : Prop :=
  ∀ n, P11553022072952496128.a n = A053188 n

end A053188

/-! ## A053188.P14182973747862425626

`A368941(n)-A004738(n+1)`
-/

namespace A053188.P14182973747862425626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368941 n - A004738 (n + 1)

end

end A053188.P14182973747862425626

namespace A053188

/-- `A368941(n)-A004738(n+1)` -/
def P14182973747862425626.Spec : Prop :=
  ∀ n, P14182973747862425626.a n = A053188 n

end A053188

/-! ## A053188.P13404513580851277442

`A000194((n-A000194(n)²)²)`
-/

namespace A053188.P13404513580851277442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (((n : ℤ) - A000194 n ^ 2) ^ 2).toNat

end

end A053188.P13404513580851277442

namespace A053188

/-- `A000194((n-A000194(n)²)²)` -/
def P13404513580851277442.Spec : Prop :=
  ∀ n, P13404513580851277442.a n = A053188 n

end A053188

/-! ## A053188.P8032983400646819816

`sqrt(A053187((n-A053187(n))²))`
-/

namespace A053188.P8032983400646819816
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053187 (((n : ℤ) - A053187 n) ^ 2).toNat : ℝ)

end

end A053188.P8032983400646819816

namespace A053188

/-- `sqrt(A053187((n-A053187(n))²))` -/
def P8032983400646819816.Spec : Prop :=
  ∀ n, P8032983400646819816.a n = (A053188 n : ℝ)

end A053188

/-! ## A053188.P18132766207419659267

`A000194(n)+1-A004738(n+1)`
-/

namespace A053188.P18132766207419659267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 n + (1 - A004738 (n + 1))

end

end A053188.P18132766207419659267

namespace A053188

/-- `A000194(n)+1-A004738(n+1)` -/
def P18132766207419659267.Spec : Prop :=
  ∀ n, P18132766207419659267.a n = A053188 n

end A053188

/-! ## A053188.P9010355887951997652

`A196199(A196199(n)²)+A000194(n)`
-/

namespace A053188.P9010355887951997652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A196199 n ^ 2).toNat + A000194 n

end

end A053188.P9010355887951997652

namespace A053188

/-- `A196199(A196199(n)²)+A000194(n)` -/
def P9010355887951997652.Spec : Prop :=
  ∀ n, P9010355887951997652.a n = A053188 n

end A053188

/-! ## A053188.P1627745484095143062

`A259361(n)-A259361(A053615(n)²)`
-/

namespace A053188.P1627745484095143062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 n - A259361 (A053615 n ^ 2).toNat

end

end A053188.P1627745484095143062

namespace A053188

/-- `A259361(n)-A259361(A053615(n)²)` -/
def P1627745484095143062.Spec : Prop :=
  ∀ n, P1627745484095143062.a n = A053188 n

end A053188

/-! ## A053188.P17151880072021242267

`A000194(n)+A118175(n)-A004739(n+1)`
-/

namespace A053188.P17151880072021242267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 n + (A118175 n - A004739 (n + 1))

end

end A053188.P17151880072021242267

namespace A053188

/-- `A000194(n)+A118175(n)-A004739(n+1)` -/
def P17151880072021242267.Spec : Prop :=
  ∀ n, P17151880072021242267.a n = A053188 n

end A053188

/-! ## A053188.P7890107478626657220

`A053615(n-A000196(A028392(n)))`
-/

namespace A053188.P7890107478626657220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 ((n : ℤ) - A000196 (A028392 n).toNat).toNat

end

end A053188.P7890107478626657220

namespace A053188

/-- `A053615(n-A000196(A028392(n)))` -/
def P7890107478626657220.Spec : Prop :=
  ∀ n, P7890107478626657220.a n = A053188 n

end A053188

/-! ## A053188.P8044379339772977832

`A000196(A000196(n)+n)-A053615(n)`
-/

namespace A053188.P8044379339772977832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000196 n + (n : ℤ)).toNat - A053615 n

end

end A053188.P8044379339772977832

namespace A053188

/-- `A000196(A000196(n)+n)-A053615(n)` -/
def P8044379339772977832.Spec : Prop :=
  ∀ n, P8044379339772977832.a n = A053188 n

end A053188

/-! ## A053188.P12135705131378033488

`A053615(A028391(A028391(A028392(n))))`
-/

namespace A053188.P12135705131378033488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A028391 (A028391 (A028392 n).toNat).toNat).toNat

end

end A053188.P12135705131378033488

namespace A053188

/-- `A053615(A028391(A028391(A028392(n))))` -/
def P12135705131378033488.Spec : Prop :=
  ∀ n, P12135705131378033488.a n = A053188 n

end A053188

/-! ## A053188.P12509338510112790483

`A053615(comp[(n+1)²])`
-/

namespace A053188.P12509338510112790483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A053188.P12509338510112790483

namespace A053188

/-- `A053615(comp[(n+1)²])` -/
def P12509338510112790483.Spec : Prop :=
  ∀ n, P12509338510112790483.a n = A053188 n

end A053188

/-! ## A053188.P13731211022858534763

`A004738(comp[(n+1)²]+1)-1`
-/

namespace A053188.P13731211022858534763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - 1

end

end A053188.P13731211022858534763

namespace A053188

/-- `A004738(comp[(n+1)²]+1)-1` -/
def P13731211022858534763.Spec : Prop :=
  ∀ n, P13731211022858534763.a n = A053188 n

end A053188

/-!
# A053189: Hamming weights (or nonlinearity) of degree 5 rotation-symmetric functions.

The programs for A053189, there is no canonical definition to state claims against.
-/

/-! ## A053189.P10387634320198736333

`A204004(Δ[Δ[A323683(n)]])`
-/

namespace A053189.P10387634320198736333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323683 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204004 (f1 (n + 1) - f1 n).toNat

end

end A053189.P10387634320198736333

/-! ## A053189.P3206246975705107237

`record[A257977(∑[A001452(n)])]`
-/

namespace A053189.P3206246975705107237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001452 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257977 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053189.P3206246975705107237

/-!
# A053191: a(n) = n^2 * phi(n).

The programs for A053191, the canonical program `A053191.P11924660880443654901` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053191 has offset 1).

The definition of A053191 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053191.P11924660880443654901

`(n+1)²*A000010(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053191

/-- `(n+1)²*A000010(n+1)` -/
def P11924660880443654901.Spec : Prop :=
  ∀ n, P11924660880443654901.a n = A053191 (n + 1)

theorem P11924660880443654901.correct : P11924660880443654901.Spec := by
  intro n
  simp only [A053191, Nat.add_sub_cancel]

end A053191

/-! ## A053191.P16359264019256189161

`A000010((n+1)^3)`
-/

namespace A053191.P16359264019256189161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1) ^ 3)

end

end A053191.P16359264019256189161

namespace A053191

/-- `A000010((n+1)^3)` -/
def P16359264019256189161.Spec : Prop :=
  ∀ n, P16359264019256189161.a n = A053191 (n + 1)

end A053191

/-! ## A053191.P9704462812939374933

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*((n+1)*(-1)^∑{e}[n+1, #])²`
-/

namespace A053191.P9704462812939374933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (((n + 1 : ℤ) * (-1) ^ (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)) ^ 2 : ℚ)

end

end A053191.P9704462812939374933

namespace A053191

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*((n+1)*(-1)^∑{e}[n+1, #])²` -/
def P9704462812939374933.Spec : Prop :=
  ∀ n, P9704462812939374933.a n = (A053191 (n + 1) : ℚ)

end A053191

/-! ## A053191.P11984386570381401451

`(n+1)*Δ[A240877(n)]`
-/

namespace A053191.P11984386570381401451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A053191.P11984386570381401451

namespace A053191

/-- `(n+1)*Δ[A240877(n)]` -/
def P11984386570381401451.Spec : Prop :=
  ∀ n, P11984386570381401451.a n = A053191 (n + 1)

end A053191

/-! ## A053191.P8966612200638969335

`(n+1)*A002618(n+1)`
-/

namespace A053191.P8966612200638969335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002618 (n + 1)

end

end A053191.P8966612200638969335

namespace A053191

/-- `(n+1)*A002618(n+1)` -/
def P8966612200638969335.Spec : Prop :=
  ∀ n, P8966612200638969335.a n = A053191 (n + 1)

end A053191

/-! ## A053191.P6154582571370695290

`A189393(n+1)/(n+1)`
-/

namespace A053191.P6154582571370695290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189393 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A053191.P6154582571370695290

namespace A053191

/-- `A189393(n+1)/(n+1)` -/
def P6154582571370695290.Spec : Prop :=
  ∀ n, P6154582571370695290.a n = (A053191 (n + 1) : ℚ)

end A053191

/-! ## A053191.P14938965989327585776

`(n+1)²*Δ[A002088(n)]`
-/

namespace A053191.P14938965989327585776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A053191.P14938965989327585776

namespace A053191

/-- `(n+1)²*Δ[A002088(n)]` -/
def P14938965989327585776.Spec : Prop :=
  ∀ n, P14938965989327585776.a n = A053191 (n + 1)

end A053191

/-! ## A053191.P808713617655568363

`(n+1)²*Δ[A005728(n)]`
-/

namespace A053191.P808713617655568363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A053191.P808713617655568363

namespace A053191

/-- `(n+1)²*Δ[A005728(n)]` -/
def P808713617655568363.Spec : Prop :=
  ∀ n, P808713617655568363.a n = A053191 (n + 1)

end A053191

/-! ## A053191.P14293011300305630942

`A238533(n+1)/(n+1)²`
-/

namespace A053191.P14293011300305630942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238533 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A053191.P14293011300305630942

namespace A053191

/-- `A238533(n+1)/(n+1)²` -/
def P14293011300305630942.Spec : Prop :=
  ∀ n, P14293011300305630942.a n = (A053191 (n + 1) : ℚ)

end A053191

/-! ## A053191.P10442108087819918516

`(n+1)*(A046151(n+1)+1)`
-/

namespace A053191.P10442108087819918516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A046151 (n + 1) + 1)

end

end A053191.P10442108087819918516

namespace A053191

/-- `(n+1)*(A046151(n+1)+1)` -/
def P10442108087819918516.Spec : Prop :=
  ∀ n, P10442108087819918516.a n = A053191 (n + 1)

end A053191

/-! ## A053191.P5967562833666759857

`(n+1)*(A046152(n+1)-1)`
-/

namespace A053191.P5967562833666759857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A046152 (n + 1) - 1)

end

end A053191.P5967562833666759857

namespace A053191

/-- `(n+1)*(A046152(n+1)-1)` -/
def P5967562833666759857.Spec : Prop :=
  ∀ n, P5967562833666759857.a n = A053191 (n + 1)

end A053191

/-! ## A053191.P6026343859532028662

`(n+1)/2*A071118(n+1)`
-/

namespace A053191.P6026343859532028662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A071118 (n + 1) : ℚ)

end

end A053191.P6026343859532028662

namespace A053191

/-- `(n+1)/2*A071118(n+1)` -/
def P6026343859532028662.Spec : Prop :=
  ∀ n, P6026343859532028662.a n = (A053191 (n + 1) : ℚ)

end A053191

/-! ## A053191.P7830098613202349134

`(n+1)/3*A064400(n+1)`
-/

namespace A053191.P7830098613202349134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A064400 (n + 1) : ℚ)

end

end A053191.P7830098613202349134

namespace A053191

/-- `(n+1)/3*A064400(n+1)` -/
def P7830098613202349134.Spec : Prop :=
  ∀ n, P7830098613202349134.a n = (A053191 (n + 1) : ℚ)

end A053191

/-! ## A053191.P13286457285530889828

`(n+1)^3-A053192(n+1)`
-/

namespace A053191.P13286457285530889828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A053192 (n + 1)

end

end A053191.P13286457285530889828

namespace A053191

/-- `(n+1)^3-A053192(n+1)` -/
def P13286457285530889828.Spec : Prop :=
  ∀ n, P13286457285530889828.a n = A053191 (n + 1)

end A053191

/-! ## A053191.P3727735237494410489

`(A109606(n+1)+1)*(n+1)²`
-/

namespace A053191.P3727735237494410489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * ((n + 1) ^ 2 : ℤ)

end

end A053191.P3727735237494410489

namespace A053191

/-- `(A109606(n+1)+1)*(n+1)²` -/
def P3727735237494410489.Spec : Prop :=
  ∀ n, P3727735237494410489.a n = A053191 (n + 1)

end A053191

/-! ## A053191.P14375306042213728621

`(n+1)*(n+1)*A000010(lcm(2, n+1))`
-/

namespace A053191.P14375306042213728621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) * A000010 (Nat.lcm 2 (n + 1)))

end

end A053191.P14375306042213728621

namespace A053191

/-- `(n+1)*(n+1)*A000010(lcm(2, n+1))` -/
def P14375306042213728621.Spec : Prop :=
  ∀ n, P14375306042213728621.a n = A053191 (n + 1)

end A053191

/-! ## A053191.P7413808878472875598

`(n+1)*(n+1)*A000010(C(n+1, n))`
-/

namespace A053191.P7413808878472875598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) * A000010 (Nat.choose (n + 1) n))

end

end A053191.P7413808878472875598

namespace A053191

/-- `(n+1)*(n+1)*A000010(C(n+1, n))` -/
def P7413808878472875598.Spec : Prop :=
  ∀ n, P7413808878472875598.a n = A053191 (n + 1)

theorem P7413808878472875598.correct : P7413808878472875598.Spec := by
  intro n
  simp only [A053191, Nat.add_sub_cancel, A053191.P7413808878472875598.a, A053191.P11924660880443654901.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A053191

/-! ## A053191.P2000960544204976500

`A000010(2*n-(n-1))*record[(n-1)²]`
-/

namespace A053191.P2000960544204976500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053191.P2000960544204976500

namespace A053191

/-- `A000010(2*n-(n-1))*record[(n-1)²]` -/
def P2000960544204976500.Spec : Prop :=
  ∀ n, P2000960544204976500.a n = A053191 (n + 1)

end A053191

/-! ## A053191.P1261531918150408899

`A000010(2*n+1-n)*∑[2*n+1]`
-/

namespace A053191.P1261531918150408899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1 - n) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A053191.P1261531918150408899

namespace A053191

/-- `A000010(2*n+1-n)*∑[2*n+1]` -/
def P1261531918150408899.Spec : Prop :=
  ∀ n, P1261531918150408899.a n = A053191 (n + 1)

end A053191

/-! ## A053191.P9323121037310556507

`A023896(n+1)*A103517(n)`
-/

namespace A053191.P9323121037310556507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1) * A103517 n

end

end A053191.P9323121037310556507

namespace A053191

/-- `A023896(n+1)*A103517(n)` -/
def P9323121037310556507.Spec : Prop :=
  ∀ n, P9323121037310556507.a n = A053191 (n + 1)

end A053191

/-!
# A053192: a(n) is the cototient of n^3.

The programs for A053192, the canonical program `A053192.P15920408309209119138` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053192 has offset 1).

The definition of A053192 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053192.P4399766371090330934

`(n+1)^3-A000010((n+1)^3)`
-/

namespace A053192.P4399766371090330934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A000010 ((n + 1) ^ 3)

end

end A053192.P4399766371090330934

namespace A053192

/-- `(n+1)^3-A000010((n+1)^3)` -/
def P4399766371090330934.Spec : Prop :=
  ∀ n, P4399766371090330934.a n = A053192 (n + 1)

end A053192

/-! ## A053192.P15920408309209119138

`A051953((n+1)^3)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A053192

/-- `A051953((n+1)^3)` -/
def P15920408309209119138.Spec : Prop :=
  ∀ n, P15920408309209119138.a n = A053192 (n + 1)

theorem P15920408309209119138.correct : P15920408309209119138.Spec := by
  intro n
  simp only [A053192, Nat.add_sub_cancel]

end A053192

/-! ## A053192.P8652547341202660369

`(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)*(n+1)²`
-/

namespace A053192.P8652547341202660369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ)) * ((n + 1) ^ 2 : ℚ)

end

end A053192.P8652547341202660369

namespace A053192

/-- `(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)*(n+1)²` -/
def P8652547341202660369.Spec : Prop :=
  ∀ n, P8652547341202660369.a n = (A053192 (n + 1) : ℚ)

end A053192

/-! ## A053192.P2555619429155900812

`(n+1)*(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)*(n+1)`
-/

namespace A053192.P2555619429155900812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ)) * (n + 1 : ℚ))

end

end A053192.P2555619429155900812

namespace A053192

/-- `(n+1)*(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)*(n+1)` -/
def P2555619429155900812.Spec : Prop :=
  ∀ n, P2555619429155900812.a n = (A053192 (n + 1) : ℚ)

end A053192

/-! ## A053192.P4104613547390903105

`(n+1)*A053650(n+1)`
-/

namespace A053192.P4104613547390903105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A053650 (n + 1)

end

end A053192.P4104613547390903105

namespace A053192

/-- `(n+1)*A053650(n+1)` -/
def P4104613547390903105.Spec : Prop :=
  ∀ n, P4104613547390903105.a n = A053192 (n + 1)

end A053192

/-! ## A053192.P9041640709742250772

`(n+1)²*A051953(n+1)`
-/

namespace A053192.P9041640709742250772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A051953 (n + 1)

end

end A053192.P9041640709742250772

namespace A053192

/-- `(n+1)²*A051953(n+1)` -/
def P9041640709742250772.Spec : Prop :=
  ∀ n, P9041640709742250772.a n = A053192 (n + 1)

end A053192

/-! ## A053192.P5933089044224272292

`(n+1)^3-A053191(n+1)`
-/

namespace A053192.P5933089044224272292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A053191 (n + 1)

end

end A053192.P5933089044224272292

namespace A053192

/-- `(n+1)^3-A053191(n+1)` -/
def P5933089044224272292.Spec : Prop :=
  ∀ n, P5933089044224272292.a n = A053192 (n + 1)

end A053192

/-! ## A053192.P9665211711615959009

`(A219428(n+1)+1)*(n+1)²`
-/

namespace A053192.P9665211711615959009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A219428 (n + 1) + 1) * ((n + 1) ^ 2 : ℤ)

end

end A053192.P9665211711615959009

namespace A053192

/-- `(A219428(n+1)+1)*(n+1)²` -/
def P9665211711615959009.Spec : Prop :=
  ∀ n, P9665211711615959009.a n = A053192 (n + 1)

end A053192

/-! ## A053192.P14316298001230930264

`(n-A109606(n+1))*(n+1)²`
-/

namespace A053192.P14316298001230930264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A109606 (n + 1)) * ((n + 1) ^ 2 : ℤ)

end

end A053192.P14316298001230930264

namespace A053192

/-- `(n-A109606(n+1))*(n+1)²` -/
def P14316298001230930264.Spec : Prop :=
  ∀ n, P14316298001230930264.a n = A053192 (n + 1)

end A053192

/-! ## A053192.P3304008448966296479

`(1-A000010(n+1)+n)*(n+1)²`
-/

namespace A053192.P3304008448966296479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000010 (n + 1) + (n : ℤ)) * ((n + 1) ^ 2 : ℤ)

end

end A053192.P3304008448966296479

namespace A053192

/-- `(1-A000010(n+1)+n)*(n+1)²` -/
def P3304008448966296479.Spec : Prop :=
  ∀ n, P3304008448966296479.a n = A053192 (n + 1)

end A053192

/-! ## A053192.P445863017342416381

`abs(A039649(n+1)-(n+2))*(n+1)²`
-/

namespace A053192.P445863017342416381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A039649 (n + 1) - (n + 2 : ℤ)| * ((n + 1) ^ 2 : ℤ)

end

end A053192.P445863017342416381

namespace A053192

/-- `abs(A039649(n+1)-(n+2))*(n+1)²` -/
def P445863017342416381.Spec : Prop :=
  ∀ n, P445863017342416381.a n = A053192 (n + 1)

end A053192

/-! ## A053192.P17361973336225812580

`(n+1-A000010(lcm(2, n+1)))*∑[2*n+1]`
-/

namespace A053192.P17361973336225812580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A000010 (Nat.lcm 2 (n + 1))) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A053192.P17361973336225812580

namespace A053192

/-- `(n+1-A000010(lcm(2, n+1)))*∑[2*n+1]` -/
def P17361973336225812580.Spec : Prop :=
  ∀ n, P17361973336225812580.a n = A053192 (n + 1)

end A053192

/-! ## A053192.P15756338709782813044

`(n+1-A000010(C(n+1, n)))*∑[2*n+1]`
-/

namespace A053192.P15756338709782813044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A000010 (Nat.choose (n + 1) n)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A053192.P15756338709782813044

namespace A053192

/-- `(n+1-A000010(C(n+1, n)))*∑[2*n+1]` -/
def P15756338709782813044.Spec : Prop :=
  ∀ n, P15756338709782813044.a n = A053192 (n + 1)

end A053192

/-! ## A053192.P12356676209541714107

`A067392(n+1)²-A308473(n+1)²`
-/

namespace A053192.P12356676209541714107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067392 (n + 1) ^ 2 - A308473 (n + 1) ^ 2

end

end A053192.P12356676209541714107

namespace A053192

/-- `A067392(n+1)²-A308473(n+1)²` -/
def P12356676209541714107.Spec : Prop :=
  ∀ n, P12356676209541714107.a n = A053192 (n + 1)

end A053192

/-! ## A053192.P16770380740741761836

`A051953(n+1)/(1/A000027(n+1))²`
-/

namespace A053192.P16770380740741761836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 1) : ℚ) / (1 / (A000027 (n + 1) : ℚ)) ^ 2

end

end A053192.P16770380740741761836

namespace A053192

/-- `A051953(n+1)/(1/A000027(n+1))²` -/
def P16770380740741761836.Spec : Prop :=
  ∀ n, P16770380740741761836.a n = (A053192 (n + 1) : ℚ)

end A053192

/-! ## A053192.P3978838468079801451

`A051953(n+1)*A131738(n)*A131738(n)`
-/

namespace A053192.P3978838468079801451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) * A131738 n * A131738 n

end

end A053192.P3978838468079801451

namespace A053192

/-- `A051953(n+1)*A131738(n)*A131738(n)` -/
def P3978838468079801451.Spec : Prop :=
  ∀ n, P3978838468079801451.a n = A053192 (n + 1)

end A053192

/-! ## A053192.P9539543769446505115

`A000578(n+1)-A000010(n+1)*A000290(n+1)`
-/

namespace A053192.P9539543769446505115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) - A000010 (n + 1) * A000290 (n + 1)

end

end A053192.P9539543769446505115

namespace A053192

/-- `A000578(n+1)-A000010(n+1)*A000290(n+1)` -/
def P9539543769446505115.Spec : Prop :=
  ∀ n, P9539543769446505115.a n = A053192 (n + 1)

end A053192

/-! ## A053192.P7884034002661892534

`A051953(n+1)/A000010(n+1)*A053191(n+1)`
-/

namespace A053192.P7884034002661892534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A053191 (n + 1) : ℚ)

end

end A053192.P7884034002661892534

namespace A053192

/-- `A051953(n+1)/A000010(n+1)*A053191(n+1)` -/
def P7884034002661892534.Spec : Prop :=
  ∀ n, P7884034002661892534.a n = (A053192 (n + 1) : ℚ)

end A053192

/-! ## A053192.P3118044381790592884

`A051953(n+1)/(A109395(n+1)/A050399(n+1))²`
-/

namespace A053192.P3118044381790592884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 1) : ℚ) / ((A109395 (n + 1) : ℚ) / (A050399 (n + 1) : ℚ)) ^ 2

end

end A053192.P3118044381790592884

namespace A053192

/-- `A051953(n+1)/(A109395(n+1)/A050399(n+1))²` -/
def P3118044381790592884.Spec : Prop :=
  ∀ n, P3118044381790592884.a n = (A053192 (n + 1) : ℚ)

end A053192

/-!
# A053193: Cototient of odd numbers.

The programs for A053193, the canonical program `A053193.P16427996787971388584` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053193 has offset 1).

The definition of A053193 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053193.P18380262154986875697

`2*(n+1)+1-A000010(2*(n+1)+1)`
-/

namespace A053193.P18380262154986875697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) + 1 : ℤ) - A000010 (2 * (n + 1) + 1)

end

end A053193.P18380262154986875697

namespace A053193

/-- `2*(n+1)+1-A000010(2*(n+1)+1)` -/
def P18380262154986875697.Spec : Prop :=
  ∀ n, P18380262154986875697.a n = A053193 (n + 1)

end A053193

/-! ## A053193.P16427996787971388584

`A051953(2*(n+1)+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A053193

/-- `A051953(2*(n+1)+1)` -/
def P16427996787971388584.Spec : Prop :=
  ∀ n, P16427996787971388584.a n = A053193 (n + 1)

theorem P16427996787971388584.correct : P16427996787971388584.Spec := by
  intro n
  simp only [A053193, Nat.add_sub_cancel]

end A053193

/-! ## A053193.P9610580631430516279

`∑[2-Δ[A037225(n)]]`
-/

namespace A053193.P9610580631430516279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053193.P9610580631430516279

namespace A053193

/-- `∑[2-Δ[A037225(n)]]` -/
def P9610580631430516279.Spec : Prop :=
  ∀ n, P9610580631430516279.a n = A053193 (n + 1)

end A053193

/-! ## A053193.P13145764735609511089

`2*n+3-A037225(n+1)`
-/

namespace A053193.P13145764735609511089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A037225 (n + 1)

end

end A053193.P13145764735609511089

namespace A053193

/-- `2*n+3-A037225(n+1)` -/
def P13145764735609511089.Spec : Prop :=
  ∀ n, P13145764735609511089.a n = A053193 (n + 1)

end A053193

/-! ## A053193.P7116443255734112485

`∑[2-Δ[A000010(2*n+1)]]`
-/

namespace A053193.P7116443255734112485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053193.P7116443255734112485

namespace A053193

/-- `∑[2-Δ[A000010(2*n+1)]]` -/
def P7116443255734112485.Spec : Prop :=
  ∀ n, P7116443255734112485.a n = A053193 (n + 1)

end A053193

/-! ## A053193.P16648087783905250118

`2*n-A000010(2*n+3)+3`
-/

namespace A053193.P16648087783905250118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A000010 (2 * n + 3) + 3

end

end A053193.P16648087783905250118

namespace A053193

/-- `2*n-A000010(2*n+3)+3` -/
def P16648087783905250118.Spec : Prop :=
  ∀ n, P16648087783905250118.a n = A053193 (n + 1)

end A053193

/-! ## A053193.P13047017992446536203

`2*n+3-A062570(2*n+3)`
-/

namespace A053193.P13047017992446536203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A062570 (2 * n + 3)

end

end A053193.P13047017992446536203

namespace A053193

/-- `2*n+3-A062570(2*n+3)` -/
def P13047017992446536203.Spec : Prop :=
  ∀ n, P13047017992446536203.a n = A053193 (n + 1)

end A053193

/-! ## A053193.P5970759268861292742

`Δ[(n+1)²-A099957(n+1)]`
-/

namespace A053193.P5970759268861292742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A099957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053193.P5970759268861292742

namespace A053193

/-- `Δ[(n+1)²-A099957(n+1)]` -/
def P5970759268861292742.Spec : Prop :=
  ∀ n, P5970759268861292742.a n = A053193 (n + 1)

end A053193

/-! ## A053193.P11390790624175064379

`A176095(2*n+3)`
-/

namespace A053193.P11390790624175064379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176095 (2 * n + 3)

end

end A053193.P11390790624175064379

namespace A053193

/-- `A176095(2*n+3)` -/
def P11390790624175064379.Spec : Prop :=
  ∀ n, P11390790624175064379.a n = A053193 (n + 1)

end A053193

/-! ## A053193.P14749016992666963816

`filter[A176095(n+2), A000035(#)]`
-/

namespace A053193.P14749016992666963816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176095 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A053193.P14749016992666963816

namespace A053193

/-- `filter[A176095(n+2), A000035(#)]` -/
def P14749016992666963816.Spec : Prop :=
  ∀ n, P14749016992666963816.a n = A053193 (n + 1)

end A053193

/-! ## A053193.P14786510361972287072

`A180444(2*n+1)-(2*n+1)`
-/

namespace A053193.P14786510361972287072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180444 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A053193.P14786510361972287072

namespace A053193

/-- `A180444(2*n+1)-(2*n+1)` -/
def P14786510361972287072.Spec : Prop :=
  ∀ n, P14786510361972287072.a n = A053193 (n + 1)

end A053193

/-! ## A053193.P3785733500427976260

`A016035(2*n+3)+1`
-/

namespace A053193.P3785733500427976260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (2 * n + 3) + 1

end

end A053193.P3785733500427976260

namespace A053193

/-- `A016035(2*n+3)+1` -/
def P3785733500427976260.Spec : Prop :=
  ∀ n, P3785733500427976260.a n = A053193 (n + 1)

end A053193

/-! ## A053193.P3631543599303965630

`A219428(2*n+3)+1`
-/

namespace A053193.P3631543599303965630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (2 * n + 3) + 1

end

end A053193.P3631543599303965630

namespace A053193

/-- `A219428(2*n+3)+1` -/
def P3631543599303965630.Spec : Prop :=
  ∀ n, P3631543599303965630.a n = A053193 (n + 1)

end A053193

/-! ## A053193.P17094943598154552391

`A062830(2*n+3)-1`
-/

namespace A053193.P17094943598154552391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 (2 * n + 3) - 1

end

end A053193.P17094943598154552391

namespace A053193

/-- `A062830(2*n+3)-1` -/
def P17094943598154552391.Spec : Prop :=
  ∀ n, P17094943598154552391.a n = A053193 (n + 1)

end A053193

/-! ## A053193.P18070800367979594873

`∑[2-Δ[A039649(2*n+1)]]`
-/

namespace A053193.P18070800367979594873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053193.P18070800367979594873

namespace A053193

/-- `∑[2-Δ[A039649(2*n+1)]]` -/
def P18070800367979594873.Spec : Prop :=
  ∀ n, P18070800367979594873.a n = A053193 (n + 1)

end A053193

/-! ## A053193.P4987172592885548974

`∑[2-Δ[A109606(2*n+1)]]`
-/

namespace A053193.P4987172592885548974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053193.P4987172592885548974

namespace A053193

/-- `∑[2-Δ[A109606(2*n+1)]]` -/
def P4987172592885548974.Spec : Prop :=
  ∀ n, P4987172592885548974.a n = A053193 (n + 1)

end A053193

/-! ## A053193.P18161517457761036206

`2*(n+1)-A109606(2*(n+1)+1)`
-/

namespace A053193.P18161517457761036206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A109606 (2 * (n + 1) + 1)

end

end A053193.P18161517457761036206

namespace A053193

/-- `2*(n+1)-A109606(2*(n+1)+1)` -/
def P18161517457761036206.Spec : Prop :=
  ∀ n, P18161517457761036206.a n = A053193 (n + 1)

end A053193

/-! ## A053193.P16892503606334197666

`2*(n+2)-A039649(2*(n+1)+1)`
-/

namespace A053193.P16892503606334197666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A039649 (2 * (n + 1) + 1)

end

end A053193.P16892503606334197666

namespace A053193

/-- `2*(n+2)-A039649(2*(n+1)+1)` -/
def P16892503606334197666.Spec : Prop :=
  ∀ n, P16892503606334197666.a n = A053193 (n + 1)

end A053193

/-! ## A053193.P10578133986942557947

`A014681(A062830(2*n+3))`
-/

namespace A053193.P10578133986942557947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A062830 (2 * n + 3)).toNat

end

end A053193.P10578133986942557947

namespace A053193

/-- `A014681(A062830(2*n+3))` -/
def P10578133986942557947.Spec : Prop :=
  ∀ n, P10578133986942557947.a n = A053193 (n + 1)

end A053193

/-! ## A053193.P16679972338331762032

`filter[A051953(n+3), A000035(#)]`
-/

namespace A053193.P16679972338331762032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A053193.P16679972338331762032

namespace A053193

/-- `filter[A051953(n+3), A000035(#)]` -/
def P16679972338331762032.Spec : Prop :=
  ∀ n, P16679972338331762032.a n = A053193 (n + 1)

end A053193

/-!
# A053194: a(n) is the smallest number k such that cototient(k) = 2n - 1.

The programs for A053194, there is no canonical definition to state claims against.
-/

/-! ## A053194.P9746447856552385918

`A063507(Δ[n²])`
-/

namespace A053194.P9746447856552385918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053194.P9746447856552385918

/-! ## A053194.P6450315793047309316

`or(char[1], A063507(2*n+1))`
-/

namespace A053194.P6450315793047309316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A063507 (2 * n + 1))

end

end A053194.P6450315793047309316

/-! ## A053194.P13503693792232365687

`xor(1, xor(1, A063507(n+n+1)))`
-/

namespace A053194.P13503693792232365687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A063507 (n + n + 1)))

end

end A053194.P13503693792232365687

/-! ## A053194.P3771315087714114663

`gcd(A000038(n), A063507(2*n+1))`
-/

namespace A053194.P3771315087714114663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A063507 (2 * n + 1))

end

end A053194.P3771315087714114663

/-! ## A053194.P5721019021776344552

`A063507(n+1+n)+A000007(n+1)`
-/

namespace A053194.P5721019021776344552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (n + 1 + n) + A000007 (n + 1)

end

end A053194.P5721019021776344552

/-! ## A053194.P9715653087295677843

`A063507(2*n+1)%(A000124(n+8)-8)`
-/

namespace A053194.P9715653087295677843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063507 (2 * n + 1)) (A000124 (n + 8) - 8)

end

end A053194.P9715653087295677843

/-! ## A053194.P2365985301876977639

`A063507(2*n+1)%A332981(n+1)`
-/

namespace A053194.P2365985301876977639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063507 (2 * n + 1)) (A332981 (n + 1))

end

end A053194.P2365985301876977639

/-! ## A053194.P1135714739405103968

`filter[A063507(n+1), A272664(#)]`
-/

namespace A053194.P1135714739405103968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A272664 (f1 j).toNat = 1) n)

end

end A053194.P1135714739405103968

/-!
# A053195: Number of level permutations of degree n.

The programs for A053195, there is no canonical definition to state claims against.
-/

/-! ## A053195.P17974196253143005821

`A175334(A290277(n+1))`
-/

namespace A053195.P17974196253143005821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175334 (A290277 (n + 1)).toNat

end

end A053195.P17974196253143005821

/-! ## A053195.P12646684794630551700

`A052126((n+2)*A000246(n))`
-/

namespace A053195.P12646684794630551700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 ((n + 2 : ℤ) * A000246 n).toNat

end

end A053195.P12646684794630551700

/-! ## A053195.P15237251141543694295

`A052126(∏[(1-n)%2+n]*A163501(n+1))`
-/

namespace A053195.P15237251141543694295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - (n : ℤ)) 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 ((∏ j ∈ Finset.range (n + 1), f1 j) * A163501 (n + 1)).toNat

end

end A053195.P15237251141543694295

/-!
# A053196: Cototients of even numbers.

The programs for A053196, the canonical program `A053196.P5984243781687677578` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053196 has offset 1).

The definition of A053196 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053196.P9101554278326804141

`2*(n+1)-A000010(2*(n+1))`
-/

namespace A053196.P9101554278326804141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A000010 (2 * (n + 1))

end

end A053196.P9101554278326804141

namespace A053196

/-- `2*(n+1)-A000010(2*(n+1))` -/
def P9101554278326804141.Spec : Prop :=
  ∀ n, P9101554278326804141.a n = A053196 (n + 1)

end A053196

/-! ## A053196.P5984243781687677578

`A051953(2*(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A053196

/-- `A051953(2*(n+1))` -/
def P5984243781687677578.Spec : Prop :=
  ∀ n, P5984243781687677578.a n = A053196 (n + 1)

theorem P5984243781687677578.correct : P5984243781687677578.Spec := by
  intro n
  simp only [A053196, Nat.add_sub_cancel]

end A053196

/-! ## A053196.P8843196404017865942

`A300239(4*(n+1))`
-/

namespace A053196.P8843196404017865942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300239 (4 * (n + 1))

end

end A053196.P8843196404017865942

namespace A053196

/-- `A300239(4*(n+1))` -/
def P8843196404017865942.Spec : Prop :=
  ∀ n, P8843196404017865942.a n = A053196 (n + 1)

end A053196

/-! ## A053196.P1123254324474558389

`A300722(4*(n+1))`
-/

namespace A053196.P1123254324474558389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300722 (4 * (n + 1))

end

end A053196.P1123254324474558389

namespace A053196

/-- `A300722(4*(n+1))` -/
def P1123254324474558389.Spec : Prop :=
  ∀ n, P1123254324474558389.a n = A053196 (n + 1)

end A053196

/-! ## A053196.P8133929664765102711

`A176095(n+1)+1+n`
-/

namespace A053196.P8133929664765102711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176095 (n + 1) + 1 + (n : ℤ)

end

end A053196.P8133929664765102711

namespace A053196

/-- `A176095(n+1)+1+n` -/
def P8133929664765102711.Spec : Prop :=
  ∀ n, P8133929664765102711.a n = A053196 (n + 1)

end A053196

/-! ## A053196.P2182776412429165385

`Δ[n²-A049690(n)]+1`
-/

namespace A053196.P2182776412429165385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A049690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A053196.P2182776412429165385

namespace A053196

/-- `Δ[n²-A049690(n)]+1` -/
def P2182776412429165385.Spec : Prop :=
  ∀ n, P2182776412429165385.a n = A053196 (n + 1)

end A053196

/-! ## A053196.P18086520571388832686

`2*(n+1)-A062570(n+1)`
-/

namespace A053196.P18086520571388832686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A062570 (n + 1)

end

end A053196.P18086520571388832686

namespace A053196

/-- `2*(n+1)-A062570(n+1)` -/
def P18086520571388832686.Spec : Prop :=
  ∀ n, P18086520571388832686.a n = A053196 (n + 1)

end A053196

/-! ## A053196.P17235429814379376141

`n+1-A378986(n+1)/2`
-/

namespace A053196.P17235429814379376141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A378986 (n + 1) : ℚ) / 2

end

end A053196.P17235429814379376141

namespace A053196

/-- `n+1-A378986(n+1)/2` -/
def P17235429814379376141.Spec : Prop :=
  ∀ n, P17235429814379376141.a n = (A053196 (n + 1) : ℚ)

end A053196

/-! ## A053196.P14288864927341643213

`n+2-A000010(n+2+n)+n`
-/

namespace A053196.P14288864927341643213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A000010 (n + 2 + n) + (n : ℤ)

end

end A053196.P14288864927341643213

namespace A053196

/-- `n+2-A000010(n+2+n)+n` -/
def P14288864927341643213.Spec : Prop :=
  ∀ n, P14288864927341643213.a n = A053196 (n + 1)

end A053196

/-! ## A053196.P3860000632265119264

`Δ[2*n-(A000010(2*n)-a(n-1))]` with `a(0)=0`
-/

namespace A053196.P3860000632265119264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (2 * n : ℤ) - (A000010 (2 * n) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053196.P3860000632265119264

namespace A053196

/-- `Δ[2*n-(A000010(2*n)-a(n-1))]` -/
def P3860000632265119264.Spec : Prop :=
  ∀ n, P3860000632265119264.a n = A053196 (n + 1)

end A053196

/-! ## A053196.P5747301009103736160

`A005408(n)+1-A062570(n+1)`
-/

namespace A053196.P5747301009103736160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (1 - A062570 (n + 1))

end

end A053196.P5747301009103736160

namespace A053196

/-- `A005408(n)+1-A062570(n+1)` -/
def P5747301009103736160.Spec : Prop :=
  ∀ n, P5747301009103736160.a n = A053196 (n + 1)

end A053196

/-! ## A053196.P10055799354062184219

`A062570(n+1)-A378986(n+1)`
-/

namespace A053196.P10055799354062184219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1) - A378986 (n + 1)

end

end A053196.P10055799354062184219

namespace A053196

/-- `A062570(n+1)-A378986(n+1)` -/
def P10055799354062184219.Spec : Prop :=
  ∀ n, P10055799354062184219.a n = A053196 (n + 1)

end A053196

/-! ## A053196.P5836034111318240008

`A000010(2*(n+1))-A378986(n+1)`
-/

namespace A053196.P5836034111318240008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1)) - A378986 (n + 1)

end

end A053196.P5836034111318240008

namespace A053196

/-- `A000010(2*(n+1))-A378986(n+1)` -/
def P5836034111318240008.Spec : Prop :=
  ∀ n, P5836034111318240008.a n = A053196 (n + 1)

end A053196

/-! ## A053196.P17498792337434445459

`A297159(2*(n+1))+A051709(2*(n+1))`
-/

namespace A053196.P17498792337434445459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297159 (2 * (n + 1)) + A051709 (2 * (n + 1))

end

end A053196.P17498792337434445459

namespace A053196

/-- `A297159(2*(n+1))+A051709(2*(n+1))` -/
def P17498792337434445459.Spec : Prop :=
  ∀ n, P17498792337434445459.a n = A053196 (n + 1)

end A053196

/-! ## A053196.P17365583029313769139

`A300720(2*(n+1))+A300719(2*(n+1))`
-/

namespace A053196.P17365583029313769139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300720 (2 * (n + 1)) + A300719 (2 * (n + 1))

end

end A053196.P17365583029313769139

namespace A053196

/-- `A300720(2*(n+1))+A300719(2*(n+1))` -/
def P17365583029313769139.Spec : Prop :=
  ∀ n, P17365583029313769139.a n = A053196 (n + 1)

end A053196

/-! ## A053196.P5727856619405355857

`A300824(2*(n+1))+A300823(2*(n+1))`
-/

namespace A053196.P5727856619405355857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300824 (2 * (n + 1)) + A300823 (2 * (n + 1))

end

end A053196.P5727856619405355857

namespace A053196

/-- `A300824(2*(n+1))+A300823(2*(n+1))` -/
def P5727856619405355857.Spec : Prop :=
  ∀ n, P5727856619405355857.a n = A053196 (n + 1)

end A053196

/-! ## A053196.P11238204695936933933

`A351561(2*(n+1))-A000005(2*(n+1))`
-/

namespace A053196.P11238204695936933933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351561 (2 * (n + 1)) - A000005 (2 * (n + 1))

end

end A053196.P11238204695936933933

namespace A053196

/-- `A351561(2*(n+1))-A000005(2*(n+1))` -/
def P11238204695936933933.Spec : Prop :=
  ∀ n, P11238204695936933933.a n = A053196 (n + 1)

end A053196

/-! ## A053196.P6667705679664660706

`A318325(2*(n+1))-A318326(2*(n+1))`
-/

namespace A053196.P6667705679664660706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318325 (2 * (n + 1)) - A318326 (2 * (n + 1))

end

end A053196.P6667705679664660706

namespace A053196

/-- `A318325(2*(n+1))-A318326(2*(n+1))` -/
def P6667705679664660706.Spec : Prop :=
  ∀ n, P6667705679664660706.a n = A053196 (n + 1)

end A053196

/-! ## A053196.P15716196597890869177

`A318827(2*(n+1))-A318830(2*(n+1))`
-/

namespace A053196.P15716196597890869177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318827 (2 * (n + 1)) - A318830 (2 * (n + 1))

end

end A053196.P15716196597890869177

namespace A053196

/-- `A318827(2*(n+1))-A318830(2*(n+1))` -/
def P15716196597890869177.Spec : Prop :=
  ∀ n, P15716196597890869177.a n = A053196 (n + 1)

end A053196

/-! ## A053196.P11779397789518505258

`A016035(2*(n+1))+1`
-/

namespace A053196.P11779397789518505258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (2 * (n + 1)) + 1

end

end A053196.P11779397789518505258

namespace A053196

/-- `A016035(2*(n+1))+1` -/
def P11779397789518505258.Spec : Prop :=
  ∀ n, P11779397789518505258.a n = A053196 (n + 1)

end A053196

/-!
# A053197: Number of level partitions of n.

The programs for A053197, there is no canonical definition to state claims against.
-/

/-! ## A053197.P15748214073050893600

`A318683(n)+A007814(A215928(n))`
-/

namespace A053197.P15748214073050893600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318683 n + A007814 (A215928 n).toNat

end

end A053197.P15748214073050893600

/-! ## A053197.P884396258934302493

`A018819(n)-A269244(A121877(n+1))`
-/

namespace A053197.P884396258934302493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n - A269244 (A121877 (n + 1)).toNat

end

end A053197.P884396258934302493

/-! ## A053197.P9290642928259770940

`A023023(n+3)-A358846(A157394(3*(n+1)))`
-/

namespace A053197.P9290642928259770940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023023 (n + 3) - A358846 (A157394 (3 * (n + 1))).toNat

end

end A053197.P9290642928259770940

/-!
# A053198: Totients of consecutive pure powers of primes.

The programs for A053198, there is no canonical definition to state claims against.
-/

/-! ## A053198.P6025068770962990906

`A000010(A025475(n+2))`
-/

namespace A053198.P6025068770962990906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A025475 (n + 2)).toNat

end

end A053198.P6025068770962990906

/-! ## A053198.P18320928450504538272

`(A025476(n+1)-1)*A053211(n+1)`
-/

namespace A053198.P18320928450504538272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025476 (n + 1) - 1) * A053211 (n + 1)

end

end A053198.P18320928450504538272

/-! ## A053198.P10211739249569159853

`∑[A053707(n+1)]+1-A053211(n+1)`
-/

namespace A053198.P10211739249569159853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A053211 (n + 1)

end

end A053198.P10211739249569159853

/-! ## A053198.P10019083995598259767

`∪[A001248(n+1), A246549(n+1)]-A053211(n+1)`
-/

namespace A053198.P10019083995598259767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A053211 (n + 1)

end

end A053198.P10019083995598259767

/-! ## A053198.P14983947448385325292

`A025475(n+2)-A053211(n+1)`
-/

namespace A053198.P14983947448385325292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 2) - A053211 (n + 1)

end

end A053198.P14983947448385325292

/-! ## A053198.P17981435257958879026

`A025475(n+2)-A025475(n+2)/A025476(n+1)`
-/

namespace A053198.P17981435257958879026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025475 (n + 2) : ℚ) - (A025475 (n + 2) : ℚ) / (A025476 (n + 1) : ℚ)

end

end A053198.P17981435257958879026

/-! ## A053198.P11813407741180550328

`∩[A073540(n+1), A134611(n+1)]-A053211(n+1)`
-/

namespace A053198.P11813407741180550328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A053211 (n + 1)

end

end A053198.P11813407741180550328

/-! ## A053198.P16294302395325313096

`∩[A080062(n+1), A249125(n+1)]-A053211(n+1)`
-/

namespace A053198.P16294302395325313096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249125 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A053211 (n + 1)

end

end A053198.P16294302395325313096

/-! ## A053198.P470354820691737755

`∩[A072777(n+1), A134611(n+1)]-A053211(n+1)`
-/

namespace A053198.P470354820691737755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A053211 (n + 1)

end

end A053198.P470354820691737755

/-! ## A053198.P16021993105679330423

`A085730(A024621(n+2))`
-/

namespace A053198.P16021993105679330423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085730 (A024621 (n + 2)).toNat

end

end A053198.P16021993105679330423

/-! ## A053198.P2108375308059067467

`A000010(A134612(n+1))`
-/

namespace A053198.P2108375308059067467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A134612 (n + 1)).toNat

end

end A053198.P2108375308059067467

/-! ## A053198.P3634979416808088680

`A000010(record[A163813(n+2)])`
-/

namespace A053198.P3634979416808088680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163813 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053198.P3634979416808088680

/-! ## A053198.P7993891374207147258

`A000010(A249435(n+2)+1)`
-/

namespace A053198.P7993891374207147258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A249435 (n + 2) + 1).toNat

end

end A053198.P7993891374207147258

/-! ## A053198.P11739351760369433576

`A000010(record[-A157985(n+2)])`
-/

namespace A053198.P11739351760369433576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A157985 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053198.P11739351760369433576

/-! ## A053198.P8340393152277162653

`A000010(∑[A053707(n+1)]+1)`
-/

namespace A053198.P8340393152277162653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A053198.P8340393152277162653

/-! ## A053198.P8100879231720438855

`A000010(A163813(A024620(n+1)))`
-/

namespace A053198.P8100879231720438855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A163813 (A024620 (n + 1)).toNat).toNat

end

end A053198.P8100879231720438855

/-!
# A053199: Triangular array T: put T(n,0)=n+1 for all n >= 0 and all other T(n,k)=0; then put T(n,k)=Sum{T(i,j): 0<=j<=i-n+k, n-k<=i<=n}.

The programs for A053199, there is no canonical definition to state claims against.
-/

/-! ## A053199.P9922047167530392096

`A054144(n)+A003480(A002262(n))`
-/

namespace A053199.P9922047167530392096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054144 n + A003480 (A002262 n).toNat

end

end A053199.P9922047167530392096

/-! ## A053199.P4683304044112760

`A054144(comp[∑[n-1]])`
-/

namespace A053199.P4683304044112760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054144 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A053199.P4683304044112760

/-! ## A053199.P7995127359483620898

`A335436(n)-A054144(n)`
-/

namespace A053199.P7995127359483620898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335436 n - A054144 n

end

end A053199.P7995127359483620898

/-! ## A053199.P2650331708302642259

`A335436(n)+A054144(n)*A057428(n)`
-/

namespace A053199.P2650331708302642259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335436 n + A054144 n * A057428 n

end

end A053199.P2650331708302642259

